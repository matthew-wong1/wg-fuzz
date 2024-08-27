struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: i32 = 19543i;

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> vec3<i32> {
    global0 = false;
    let var_0 = -1000f;
    global2 = Struct_1(global2.a);
    return firstTrailingBit(u_input.d.yzz);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> bool {
    var var_0 = arg_0;
    global0 = true;
    var var_1 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(true, true)), true, false, true), vec4<bool>(any(vec3<bool>(true, true, true)), true, true, false)), select(vec4<bool>(true, true, all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), true)), !(48211i >= u_input.d.x)), vec4<bool>(true, true, true, true), !(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false)))), all(select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), true), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), select(true, true, any(vec3<bool>(true, true, true))))));
    return !all(vec2<bool>(true, true));
}

fn func_4(arg_0: vec3<i32>, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, 1000f, -204f))));
    return Struct_1(~(~arg_3.a));
}

fn func_1(arg_0: f32, arg_1: vec3<u32>) -> Struct_1 {
    global1 = _wgslsmith_add_i32(~(select(9767i, u_input.d.x, false) | (u_input.d.x & u_input.d.x)) & -_wgslsmith_mod_i32(-2147483647i, u_input.c), min(-16517i, abs(1i)));
    global2 = func_4(_wgslsmith_sub_vec3_i32(func_2(), u_input.d.zzz), select(true, arg_0 <= _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(round(-400f)), func_3(Struct_1(4294967295u), Struct_1(0u), -1i, 30166u))), firstTrailingBit(u_input.c) < -2147483647i), u_input.c, Struct_1(25749u));
    let var_0 = firstTrailingBit(vec2<i32>(1i, 0i)) | vec2<i32>(_wgslsmith_sub_i32(-(~15245i), 0i), select(u_input.c, firstTrailingBit(u_input.d.x), select(false, all(vec2<bool>(false, true)), true)));
    global0 = all(!vec4<bool>(select(false, any(vec3<bool>(false, false, true)), any(vec4<bool>(false, false, true, false))), any(select(vec2<bool>(true, true), vec2<bool>(false, true), false)), global2.a == _wgslsmith_mult_u32(92822u, global2.a), all(vec4<bool>(true, true, true, true))));
    global1 = var_0.x;
    return func_4(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, reverseBits(var_0.x), u_input.d.x), -max(vec3<i32>(2147483647i, var_0.x, u_input.c), vec3<i32>(-2147483647i, u_input.c, var_0.x))), u_input.d.xwz), true, _wgslsmith_sub_i32(-firstLeadingBit(u_input.d.x | -1i), u_input.c), Struct_1(36621u));
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    global1 = 1i;
    global2 = arg_1;
    global1 = _wgslsmith_mult_i32(~u_input.c, abs(-(~(~(-2147483647i)))));
    let var_0 = arg_1;
    let var_1 = Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.b, _wgslsmith_div_vec3_u32(abs(vec3<u32>(arg_1.a, 1u, 88069u)), u_input.b | u_input.b)), u_input.b));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.a;
    let var_1 = true;
    global0 = true;
    var var_2 = !vec4<bool>(false, true, select(var_1, var_1, true), false);
    global2 = func_5(u_input.d.x, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) + _wgslsmith_f_op_f32(-620f * 180f))), vec3<u32>(~u_input.b.x | 13700u, _wgslsmith_add_u32(~u_input.b.x, _wgslsmith_mod_u32(1u, u_input.a.x)), 11886u)));
    var var_3 = all(!select(var_2.wyw, vec3<bool>(false, var_2.x, false), !var_2.x)) && true;
    var var_4 = select(~(~_wgslsmith_div_vec2_u32(vec2<u32>(global2.a, 4294967295u), u_input.a)) ^ ~abs(vec2<u32>(67736u, 55749u)), ~max(~(u_input.b.zx & vec2<u32>(27151u, 0u)), u_input.a), !vec2<bool>(var_1, true));
    let var_5 = firstLeadingBit(vec2<i32>(-1i) * -vec2<i32>(abs(-1i), firstLeadingBit(u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i, reverseBits(~(-1i)), 14447i));
}

