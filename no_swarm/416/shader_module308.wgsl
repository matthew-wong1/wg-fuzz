struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> i32 {
    var var_0 = u_input.a;
    let var_1 = arg_3.x;
    var_0 = vec4<u32>(var_0.x, u_input.a.x, 4294967295u, var_0.x);
    let var_2 = true;
    var var_3 = ~global0.x;
    return -1i;
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    var var_0 = Struct_1(arg_0.a);
    var_0 = Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(func_2(arg_0.a, Struct_1(var_0.a), arg_0, vec4<f32>(604f, 2633f, 316f, 551f)), abs(global0.x), u_input.c >> (32000u % 32u)) ^ firstLeadingBit(vec3<i32>(arg_0.a.x, var_0.a.x, global0.x)), ~(~arg_0.a) >> (~u_input.a.xww % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(arg_0.a, var_0.a >> (abs(u_input.a.zzx) % vec3<u32>(32u)))));
    global0 = vec2<i32>(-2147483647i, 2147483647i);
    var var_1 = Struct_1(reverseBits(var_0.a));
    var_0 = arg_0;
    return Struct_1(vec3<i32>(global0.x, arg_0.a.x, -10174i));
}

fn func_3() -> vec2<i32> {
    var var_0 = vec3<i32>(firstTrailingBit(2147483647i) ^ -2147483647i, 2767i << (~u_input.d.x % 32u), u_input.b ^ 12635i);
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-591f, -110f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2704f + -256f) * _wgslsmith_f_op_f32(min(-225f, 1610f))), false)))));
    global0 = _wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(41478i, _wgslsmith_dot_vec2_i32(-vec2<i32>(global0.x, 2147483647i), var_0.zy))), -_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(var_0.yx, var_0.yz), ~vec2<i32>(u_input.b, var_0.x)), vec2<i32>(~80851i, 0i)));
    var var_2 = 21173u;
    global0 = abs(vec2<i32>(~(-global0.x), _wgslsmith_clamp_i32(~_wgslsmith_mult_i32(global0.x, -1i), var_0.x, ~1i)));
    return ~(-var_0.yx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(global0.x, i32(-1i) * -1i, 77739i), countOneBits(~vec3<i32>(u_input.c, global0.x, global0.x)))), _wgslsmith_clamp_i32(-2147483647i, ~(~global0.x), max(u_input.b, ~(global0.x & u_input.b))));
    global0 = func_3();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-140f, -1308f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1361f)) - -109f)))));
    let var_2 = select(select(vec3<bool>(true, false, false), select(vec3<bool>(select(true, false, false), 36639i == var_0.a.x, select(false, false, true)), vec3<bool>(true, var_1.x <= var_1.x, -16017i <= global0.x), select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)))), vec3<bool>(all(vec2<bool>(true, true)), false, all(vec4<bool>(true, true, true, true)))), vec3<bool>(true, true, true), false);
    let var_3 = var_0;
    global0 = vec2<i32>(~1i, -40090i);
    var var_4 = vec4<u32>(76784u, 0u, countOneBits(u_input.a.x) & 4294967295u, u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.a.xw | u_input.d, reverseBits(vec2<u32>(1585u, 43891u))), ~(~49324u)), ~reverseBits(vec2<i32>(global0.x, _wgslsmith_mod_i32(-30952i, -2147483647i))), func_1(func_1(var_3, 4398i), (global0.x << (0u % 32u)) & -2147483647i).a.x, vec3<i32>(u_input.c, 26301i, select(_wgslsmith_dot_vec2_i32(vec2<i32>(-23564i, -2147483647i), var_3.a.xy), -1i, select(var_2.x, false, var_2.x))), ~u_input.a.x);
}

