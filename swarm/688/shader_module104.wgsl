struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: f32, arg_1: vec2<i32>) -> f32 {
    let var_0 = vec4<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_0, -1138f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f))));
    let var_1 = 0i;
    return 285f;
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_1) -> i32 {
    global0 = arg_1.x;
    var var_0 = !(!select(select(vec3<bool>(true, true, true), !vec3<bool>(arg_0, true, arg_2.a.x), !vec3<bool>(true, true, arg_2.a.x)), vec3<bool>(false, true, all(arg_2.a.zz)), vec3<bool>(all(vec3<bool>(true, true, arg_0)), arg_0, !arg_2.a.x)));
    var_0 = arg_2.a.yxy;
    var_0 = arg_2.a.wzz;
    var_0 = arg_2.a.zzy;
    return -_wgslsmith_mod_i32(u_input.b, ~(~1i)) ^ -(~(i32(-1i) * -u_input.b));
}

fn func_2() -> bool {
    let var_0 = ~_wgslsmith_mod_vec3_u32(reverseBits(firstTrailingBit(vec3<u32>(1u, u_input.a, u_input.a))) | reverseBits(~vec3<u32>(7242u, u_input.a, u_input.a)), ~vec3<u32>(0u, ~u_input.a, u_input.a & 0u));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-278f, -1628f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-730f + -897f))))));
    var var_2 = var_1.yz;
    var var_3 = _wgslsmith_sub_i32(func_3(true, ~(reverseBits(vec2<u32>(7228u, u_input.a)) ^ var_0.xz), Struct_1(vec4<bool>(all(vec2<bool>(false, true)), 2147483647i <= u_input.b, select(true, true, true), true))), _wgslsmith_mult_i32(1i, -9829i));
    var var_4 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.x, 939f, -916f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(2051f, var_2.x, -246f))))))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a;
    global0 = 35541u;
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1302f, _wgslsmith_f_op_f32(round(1f)), -1055f, _wgslsmith_f_op_f32(f32(-1f) * -965f)) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1703f * -412f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1121f)), _wgslsmith_f_op_f32(-1000f + 597f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(374f, vec2<i32>(-832i, u_input.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1196f + 1470f) + _wgslsmith_f_op_f32(-1000f - 935f)), 1671f));
    let var_1 = all(select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true)), true), vec4<bool>(true, true, true, true), true), vec4<bool>(any(vec4<bool>(false, false, false, false)), select(true, false, true), true, all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)))), vec4<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, false), true)), func_2(), true | select(true, false, true), true)));
    let var_2 = Struct_1(select(!select(vec4<bool>(var_1, var_1, var_1, true), vec4<bool>(var_1, false, var_1, true), false), select(vec4<bool>(false, var_1 && var_1, var_1, false), select(select(vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(false, var_1, true, true), true), select(vec4<bool>(true, var_1, var_1, false), vec4<bool>(var_1, var_1, false, false), vec4<bool>(true, false, var_1, false)), true), any(select(vec2<bool>(var_1, var_1), vec2<bool>(false, var_1), vec2<bool>(var_1, var_1)))), vec4<bool>(any(vec4<bool>(false, true, false, var_1)), !var_1 & func_2(), var_1, all(select(vec3<bool>(var_1, var_1, true), vec3<bool>(var_1, var_1, false), vec3<bool>(var_1, true, var_1))))));
    global0 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u, u_input.a, _wgslsmith_clamp_u32(u_input.a, countOneBits(~32973u), ~u_input.a), 18914u), _wgslsmith_clamp_vec4_i32(max(_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), -vec4<i32>(u_input.b, 1i, u_input.b, u_input.b)), ~max(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, 1i, u_input.b))), _wgslsmith_mult_vec4_i32(abs(_wgslsmith_div_vec4_i32(vec4<i32>(0i, u_input.b, u_input.b, 2147483647i), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b))), -(vec4<i32>(22209i, 25706i, -2030i, u_input.b) ^ vec4<i32>(u_input.b, 1i, u_input.b, 1i))), firstLeadingBit(~vec4<i32>(4464i, u_input.b, -31018i, -13971i))), 30540u, _wgslsmith_f_op_vec4_f32(-var_0), firstTrailingBit(vec4<u32>(~4294967295u, u_input.a, u_input.a, _wgslsmith_clamp_u32(69291u | u_input.a, firstTrailingBit(u_input.a), _wgslsmith_add_u32(u_input.a, u_input.a)))));
}

