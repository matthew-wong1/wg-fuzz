struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: u32, arg_3: bool) -> bool {
    global0 = Struct_2(global0.d, _wgslsmith_add_u32(_wgslsmith_clamp_u32(arg_2, _wgslsmith_sub_u32(global0.b, arg_1.x) << (_wgslsmith_mod_u32(65211u, arg_1.x) % 32u), _wgslsmith_div_u32(arg_2, 911u)), ~abs(firstLeadingBit(global0.b))), vec3<i32>(_wgslsmith_div_i32(19208i, _wgslsmith_dot_vec2_i32(u_input.c.yz, vec2<i32>(global0.c.x, arg_0.a.x) ^ vec2<i32>(0i, 2147483647i))), ~(-(~global0.c.x)), abs(0i ^ u_input.a)), global0.a);
    global0 = Struct_2(Struct_1(vec4<i32>(-2472i, -158i << ((arg_2 >> (arg_2 % 32u)) % 32u), 46643i, u_input.a)), min(22521u, ~arg_2), u_input.c.yzz, global0.d);
    var var_0 = arg_0;
    var var_1 = false;
    var var_2 = arg_3;
    return all(select(!select(vec3<bool>(arg_3, arg_3, arg_3), vec3<bool>(arg_3, arg_3, arg_3), vec3<bool>(arg_3, false, false)), !select(vec3<bool>(false, arg_3, arg_3), vec3<bool>(false, arg_3, arg_3), vec3<bool>(false, arg_3, arg_3)), !(!arg_3))) & false;
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>) -> i32 {
    let var_0 = Struct_2(global0.a, 56847u, vec3<i32>(select(-20444i, reverseBits(_wgslsmith_add_i32(-1i, u_input.b)), !(arg_0.d.a.x <= 3181i)), ~(global0.c.x & 2147483647i), _wgslsmith_mod_i32(_wgslsmith_sub_i32(1i, u_input.b), _wgslsmith_mult_i32(-1i, 1i) ^ countOneBits(u_input.a))), arg_0.d);
    global0 = var_0;
    let var_1 = !select(select(!select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, true), true), !select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, false)), vec2<bool>(false, all(select(vec2<bool>(false, false), vec2<bool>(false, true), true))));
    global0 = Struct_2(Struct_1(~(~reverseBits(global0.d.a))), _wgslsmith_mult_u32(~(~(~0u)), _wgslsmith_clamp_u32(4294967295u, arg_0.b, global0.b)), vec3<i32>(_wgslsmith_mult_i32(abs(_wgslsmith_mod_i32(u_input.a, 1i)), -1i), abs(~u_input.a), u_input.c.x), var_0.d);
    let var_2 = Struct_1(reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.a.a.x, abs(global0.a.a.x), u_input.a, u_input.a), vec4<i32>(select(-16696i, 1i, var_1.x), var_0.c.x, firstLeadingBit(-17340i), -50068i), global0.a.a)));
    return var_0.d.a.x & _wgslsmith_mult_i32(abs(~(-global0.a.a.x)), -firstTrailingBit(var_2.a.x));
}

fn func_1() -> u32 {
    var var_0 = select(all(vec4<bool>(true | all(vec3<bool>(true, true, true)), select(func_2(global0.a, vec4<u32>(global0.b, 40805u, global0.b, global0.b), 4294967295u, true), all(vec2<bool>(false, false)), all(vec4<bool>(false, false, false, false))), true, true)), false, (391f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-158f + -566f) * _wgslsmith_f_op_f32(floor(1130f)))) || any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false))));
    var var_1 = vec2<bool>(false, false);
    global0 = Struct_2(global0.d, global0.b, firstLeadingBit(global0.c), Struct_1(vec4<i32>(_wgslsmith_add_i32(~global0.c.x, u_input.b), 5338i, func_3(Struct_2(Struct_1(vec4<i32>(-17828i, global0.a.a.x, -24086i, 78629i)), 4294967295u, vec3<i32>(u_input.a, 43213i, global0.d.a.x), global0.d), vec4<f32>(1959f, -633f, -848f, 560f)), _wgslsmith_dot_vec3_i32(u_input.c.xwy, vec3<i32>(u_input.c.x, 1i, -6166i) >> (vec3<u32>(4294967295u, global0.b, global0.b) % vec3<u32>(32u))))));
    return abs((global0.b >> (~global0.b % 32u)) & min(0u, 0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = Struct_2(Struct_1(u_input.c), ~var_0, u_input.c.yzz, global0.a);
    let var_1 = Struct_2(Struct_1(_wgslsmith_mod_vec4_i32(global0.a.a, global0.d.a)), ~_wgslsmith_mod_u32(46629u, global0.b >> (44441u % 32u)) | ~10595u, vec3<i32>(1i, 2147483647i, ~(-_wgslsmith_add_i32(-1i, 49796i))), global0.d);
    var var_2 = 4294967295u;
    global0 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_add_u32(~77896u, reverseBits(global0.b)), global0.b, ~0u, _wgslsmith_add_u32(~var_1.b, _wgslsmith_div_u32(var_1.b, var_1.b))) << (_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(var_1.b, 70523u, 4294967295u, var_0), vec4<u32>(var_1.b, var_0, global0.b, 0u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(39638u, var_0, var_1.b, 16172u), vec4<u32>(var_1.b, var_1.b, var_1.b, var_0), vec4<u32>(global0.b, global0.b, var_0, var_0))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-558f, -1287f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1081f + 1049f) - _wgslsmith_f_op_f32(max(1054f, -781f)))))), ~(-1i), min(_wgslsmith_mult_vec3_i32(-(~u_input.c.xyx), -min(u_input.c.xwz, u_input.c.zwz)), -(var_1.d.a.yzy >> (vec3<u32>(var_0, var_1.b, var_1.b) % vec3<u32>(32u)))));
}

