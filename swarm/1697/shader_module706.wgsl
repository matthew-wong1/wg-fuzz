struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec4<bool>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: bool, arg_3: i32) -> vec4<bool> {
    let var_0 = select(!vec3<bool>(any(select(vec3<bool>(true, false, true), arg_0.a.yyy, arg_0.c.x)), any(vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x, true)), arg_0.a.x), select(select(!(!vec3<bool>(arg_0.a.x, arg_0.c.x, arg_0.a.x)), vec3<bool>(u_input.c != arg_0.d, true, any(arg_0.a)), true), arg_0.c.xww, select(vec3<bool>(true, false, !arg_0.c.x), select(select(vec3<bool>(false, arg_0.a.x, arg_0.a.x), arg_0.a.www, false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), !arg_2), false)), arg_2);
    var var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(firstLeadingBit(arg_3), u_input.d.x, reverseBits(firstTrailingBit(-40910i)), ~reverseBits(-2147483647i)), _wgslsmith_mod_vec4_i32(firstLeadingBit(reverseBits(vec4<i32>(-1i, 1i, 0i, arg_3))), vec4<i32>(0i, _wgslsmith_dot_vec2_i32(~u_input.d.zy, ~vec2<i32>(-2147483647i, -1i)), _wgslsmith_mult_i32(firstLeadingBit(u_input.d.x), -arg_3), abs(-18462i))));
    return vec4<bool>(select(select(arg_0.a.x, arg_2, var_0.x) & true, true, arg_0.c.x) & true, arg_0.c.x, !var_0.x, !(arg_2 || any(arg_0.a)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = select(-1i, 64324i, !arg_1.a.x);
    let var_1 = arg_0;
    global0 = arg_0.c.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1045f, _wgslsmith_f_op_f32(trunc(851f)), arg_1.b))));
    var var_3 = arg_0;
    return var_3.c.x | select(arg_1.c.x, !(any(vec3<bool>(false, false, true)) && false), var_1.a.x);
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = arg_2;
    let var_1 = u_input.d.x;
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b, arg_2.b, arg_2.b, var_0.b) * vec4<f32>(arg_2.b, arg_3.b, 831f, -1589f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b, 226f, arg_2.b, -407f))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.b, 1411f, arg_2.b, var_0.b)))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b, 1033f, var_0.b, 1199f) - vec4<f32>(353f, arg_2.b, 566f, 135f))))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -441f), arg_3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b)) + _wgslsmith_f_op_f32(-arg_2.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-641f + 577f))));
    global0 = false;
    return !vec3<bool>(func_4(Struct_1(!vec4<bool>(false, true, var_0.a.x, false), arg_2.b, !vec4<bool>(arg_3.c.x, arg_2.c.x, false, false), 4593u), Struct_1(func_3(Struct_1(vec4<bool>(true, var_0.c.x, true, arg_2.c.x), arg_3.b, arg_2.a, 51020u), vec3<f32>(arg_3.b, 638f, -471f), arg_2.a.x, arg_1), var_2.x, !vec4<bool>(false, true, var_0.c.x, false), ~var_0.d)), true, all(!select(arg_3.a, var_0.a, arg_2.c.x)));
}

fn func_1(arg_0: Struct_1) -> f32 {
    global0 = (~select(~u_input.b.x, u_input.b.x, !arg_0.c.x) != ~firstTrailingBit(u_input.a.x >> (arg_0.d % 32u))) | !all(!func_2(14211u, u_input.d.x, arg_0, Struct_1(arg_0.c, -1615f, vec4<bool>(arg_0.c.x, arg_0.a.x, arg_0.c.x, arg_0.c.x), arg_0.d)));
    var var_0 = vec2<i32>(-3045i, u_input.d.x);
    let var_1 = Struct_1(!(!vec4<bool>(-221f > arg_0.b, -37489i != var_0.x, arg_0.d == 4294967295u, arg_0.a.x)), -159f, !(!select(func_3(arg_0, vec3<f32>(arg_0.b, arg_0.b, 432f), arg_0.a.x, 13330i), !vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.a.x, false), !vec4<bool>(arg_0.a.x, arg_0.c.x, arg_0.c.x, false))), 1u);
    let var_2 = Struct_1(arg_0.a, _wgslsmith_f_op_f32(-var_1.b), select(!(!vec4<bool>(true, true, var_1.a.x, false)), !vec4<bool>(true, false, u_input.b.x != arg_0.d, true), arg_0.a.x), arg_0.d);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-360f))) * arg_0.b) * _wgslsmith_f_op_f32(var_1.b + var_2.b)), arg_0.b));
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> u32 {
    var var_0 = ~u_input.d.x;
    let var_1 = arg_1.c;
    let var_2 = vec2<bool>(arg_0, arg_1.c.x);
    var_0 = -(~abs(-u_input.d.x));
    let var_3 = !(!(!vec2<bool>(func_4(arg_1, Struct_1(vec4<bool>(arg_1.a.x, true, var_2.x, var_1.x), arg_1.b, arg_1.a, 82242u)), var_1.x)));
    return ~_wgslsmith_add_u32(_wgslsmith_div_u32(arg_1.d, u_input.c), _wgslsmith_mult_u32(u_input.c, 68189u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(any(vec3<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true))), _wgslsmith_f_op_f32(-2841f - 729f) >= _wgslsmith_f_op_f32(func_1(Struct_1(vec4<bool>(false, false, false, true), 292f, vec4<bool>(false, false, true, false), u_input.c))), true)), Struct_1(vec4<bool>(true, true, true, true), -121f, select(vec4<bool>(u_input.c != u_input.c, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(false, false, true)), any(vec4<bool>(true, false, false, true)), true, true)), _wgslsmith_sub_u32(u_input.a.x, ~32293u)));
    let var_1 = Struct_1(vec4<bool>(false, true, func_3(Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-1231f - 243f), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), false), firstLeadingBit(4294967295u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1839f, -1187f, 468f) * vec3<f32>(-1000f, 2205f, -296f))), !select(false, false, false), ~_wgslsmith_dot_vec2_i32(u_input.d.xx, vec2<i32>(1i, 25925i))).x, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1000f, -1464f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1477f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1441f)))), !vec4<bool>(!any(vec3<bool>(true, false, true)), true, !all(vec3<bool>(true, false, false)), _wgslsmith_f_op_f32(func_1(Struct_1(vec4<bool>(false, true, false, false), -1356f, vec4<bool>(true, false, false, true), 113852u))) <= _wgslsmith_f_op_f32(f32(-1f) * -1000f)), ~countOneBits(66083u));
    let var_2 = abs(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.d.x & -40515i, 1i), vec2<i32>(countOneBits(6925i), u_input.d.x)), u_input.d.zx));
    let var_3 = var_1;
    global0 = var_3.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(128f, reverseBits(u_input.d));
}

