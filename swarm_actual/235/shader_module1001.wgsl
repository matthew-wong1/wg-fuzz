struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<bool>) -> vec3<i32> {
    let var_0 = any(vec4<bool>(!(!arg_3.x) == arg_3.x, false, arg_3.x, !arg_3.x));
    var var_1 = Struct_1(vec3<i32>(41651i, 1i, min(abs(_wgslsmith_mod_i32(arg_1.b.x, 22568i)), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(arg_2.b.zww, vec3<i32>(-2147483647i, u_input.a, u_input.a)), vec3<i32>(arg_2.a.x, arg_1.b.x, u_input.a)))), -vec4<i32>(firstLeadingBit(min(-8119i, 4377i)), ~(-arg_1.b.x), arg_1.a.x, countOneBits(~u_input.a)));
    return vec3<i32>(-(~_wgslsmith_dot_vec2_i32(arg_1.a.xx, arg_2.a.xx)) >> (40897u % 32u), ~(-2147483647i), max(_wgslsmith_add_i32(select(arg_2.b.x, countOneBits(var_1.a.x), var_0 & true), _wgslsmith_sub_i32(20064i, arg_1.b.x) & arg_1.a.x), -10900i));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(min(func_3(vec3<f32>(_wgslsmith_div_f32(882f, -1000f), _wgslsmith_f_op_f32(f32(-1f) * -530f), _wgslsmith_f_op_f32(f32(-1f) * -483f)), Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(-24675i, u_input.a, u_input.a), vec3<i32>(24243i, u_input.a, u_input.a)), firstLeadingBit(vec4<i32>(u_input.a, -14761i, 0i, 0i))), Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, u_input.a, u_input.a), vec3<i32>(u_input.a, 1i, 19833i)), vec4<i32>(0i, 29456i, -31547i, -2850i)), vec3<bool>(true, false, true)), vec3<i32>(-1i) * -func_3(vec3<f32>(534f, -219f, -259f), Struct_1(vec3<i32>(u_input.a, 15537i, u_input.a), vec4<i32>(0i, u_input.a, -11822i, -11466i)), Struct_1(vec3<i32>(u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, 0i, -1i, 1i)), vec3<bool>(true, false, true))), vec4<i32>(~abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(-70720i, u_input.a, u_input.a, u_input.a))), _wgslsmith_div_i32(u_input.a, 31704i), abs(u_input.a), (i32(-1i) * -u_input.a) ^ 2147483647i));
    let var_1 = var_0;
    var var_2 = var_0;
    var var_3 = 27645u;
    let var_4 = ~vec3<u32>(min(~reverseBits(1u), _wgslsmith_mult_u32(firstTrailingBit(1u), ~32192u)), 10313u, ~_wgslsmith_sub_u32(~0u, firstTrailingBit(1u)));
    return var_1;
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_1) -> vec3<f32> {
    var var_0 = func_2();
    var var_1 = -1i;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -293f);
    var_1 = i32(-1i) * -1855i;
    let var_3 = func_2();
    return vec3<f32>(742f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1357f)))), 1294f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(2199f, -463f, true)), -1000f, _wgslsmith_f_op_f32(select(1000f, -1478f, true))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(vec4<u32>(0u, 12889u, 0u, 0u), 48427u, Struct_1(vec3<i32>(0i, 0i, 0i), vec4<i32>(0i, 1554i, u_input.a, 0i)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1437f, 687f, 394f) + vec3<f32>(469f, -257f, -113f))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-376f, 276f, 155f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1932f, 106f, 1172f) - vec3<f32>(-1126f, 1606f, 261f)))))));
    var var_1 = select(vec3<u32>(countOneBits(29660u), 1u, ~1u), ~countOneBits(vec3<u32>(1u, 1u, 1u)), true);
    var var_2 = func_2();
    var var_3 = -var_2.a.zz;
    let var_4 = func_2();
    var var_5 = var_0;
    var_3 = ~(-(vec2<i32>(u_input.a, func_2().b.x) & firstTrailingBit(~vec2<i32>(2147483647i, var_2.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(554f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-393f + -1741f))), _wgslsmith_f_op_f32(f32(-1f) * -592f)));
}

