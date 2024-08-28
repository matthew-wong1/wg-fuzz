struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<i32> = vec4<i32>(34591i, 30027i, -38115i, 0i);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: bool) -> u32 {
    let var_0 = Struct_1(u_input.e.x, firstTrailingBit(global1.zy), vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.c, ~vec4<i32>(-19877i, u_input.d.x, 1i, global1.x)), 54503i) >> (vec2<u32>(1u, 24006u << (u_input.e.x % 32u)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1304f, 904f))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) + 893f);
    let var_2 = var_0;
    var var_3 = arg_1.x;
    return firstLeadingBit(71700u);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: vec2<bool>) -> u32 {
    var var_0 = Struct_2(u_input.e.x & arg_0.x, Struct_1(~(~_wgslsmith_mult_u32(u_input.b, u_input.b)), ~u_input.a.yz, -countOneBits(vec2<i32>(15741i, u_input.c.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, u_input.b < 1u))))));
    let var_1 = var_0.b;
    let var_2 = _wgslsmith_f_op_f32(-660f - _wgslsmith_f_op_f32(min(-127f, arg_1.x)));
    global0 = ~var_1.c.x;
    let var_3 = arg_2;
    return 27028u & _wgslsmith_sub_u32(_wgslsmith_mult_u32(~(~var_1.a), var_1.a), arg_0.x);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: f32, arg_3: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1350f)) * arg_2);
    let var_1 = Struct_1(func_4(firstTrailingBit(vec2<u32>(func_3(true, vec3<u32>(80722u, arg_0.x, u_input.b), false), ~8795u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1298f, arg_2, arg_2)) * _wgslsmith_div_vec3_f32(vec3<f32>(-205f, 1000f, -1004f), vec3<f32>(159f, 840f, arg_2)))), !(!select(vec2<bool>(true, false), vec2<bool>(false, false), true))), -countOneBits(u_input.a.zw), abs(-select(vec2<i32>(u_input.a.x, arg_1.x), vec2<i32>(u_input.d.x, -1i), false) >> (u_input.e.yz % vec2<u32>(32u))), arg_3);
    var var_2 = Struct_2(0u, var_1);
    let var_3 = Struct_2(~(~(~(1u ^ u_input.b))), var_2.b);
    var var_4 = vec3<i32>(_wgslsmith_clamp_i32(max(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.x, arg_1.x, var_3.b.b.x), vec3<i32>(-1i, u_input.c.x, arg_1.x)), arg_1 ^ global1.wyw), _wgslsmith_dot_vec4_i32(u_input.a, u_input.a)), 32004i, (i32(-1i) * -var_3.b.c.x) >> (select(~30465u, 4294967295u, true) % 32u)), arg_1.x, u_input.c.x);
    return ~var_2.a;
}

fn func_1() -> u32 {
    global0 = u_input.c.x;
    var var_0 = 40260u;
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_div_f32(2143f, _wgslsmith_f_op_f32(abs(683f))))), 671f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1779f, 1142f) + vec2<f32>(1114f, -255f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(827f, 621f)))) - _wgslsmith_div_vec2_f32(vec2<f32>(1038f, -1347f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(435f, 1053f)))))));
    let var_2 = var_1.x;
    var_0 = _wgslsmith_mod_u32(u_input.b, func_2(vec3<u32>(22126u, ~u_input.e.x, u_input.e.x) | u_input.e, u_input.a.yyy ^ firstLeadingBit(~vec3<i32>(u_input.a.x, 0i, u_input.c.x)), var_1.x, 173f));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(firstLeadingBit(~(~func_1())), _wgslsmith_add_vec2_i32(reverseBits(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(global1.xy, vec2<i32>(18523i, -4333i)), u_input.d)), u_input.c.xy), (countOneBits(global1.yz ^ u_input.d) << (select(_wgslsmith_mult_vec2_u32(vec2<u32>(51699u, 82888u), u_input.e.zy), ~u_input.e.zy, true) % vec2<u32>(32u))) ^ -(~(vec2<i32>(u_input.d.x, u_input.a.x) & vec2<i32>(-3899i, u_input.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-776f))) - 1f)));
    global0 = 2689i;
    global0 = -(~(-var_0.b.x & -2147483647i));
    let var_1 = Struct_1(abs(var_0.a << (u_input.b % 32u)), select(vec2<i32>(global1.x ^ 0i, 1i), _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, reverseBits(global1.x)), vec2<i32>(2147483647i, min(18541i, global1.x))), select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), u_input.b >= 4433u), vec2<bool>(false, true))), ~vec2<i32>(u_input.a.x, -2147483647i), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1000f, 374f)), var_0.d))));
    var var_2 = vec3<i32>(_wgslsmith_mod_i32(18087i, ~_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-1i, 68131i), _wgslsmith_mod_i32(var_0.b.x, u_input.a.x), u_input.c.x)), var_1.c.x | 35029i, u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(countOneBits(max(vec4<u32>(var_0.a, 0u, 38191u, u_input.b), vec4<u32>(0u, 39660u, var_1.a, var_0.a))) & _wgslsmith_mod_vec4_u32(max(vec4<u32>(u_input.b, var_0.a, var_0.a, var_1.a), vec4<u32>(1u, 4294967295u, var_1.a, 37640u)), countOneBits(vec4<u32>(var_0.a, var_1.a, 4294967295u, 25854u))), ~firstTrailingBit(~vec4<u32>(1u, 4294967295u, var_0.a, var_1.a))));
}

