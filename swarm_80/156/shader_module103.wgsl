struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 18> = array<vec2<bool>, 18>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true));

var<private> global1: vec4<f32> = vec4<f32>(1350f, 1673f, 734f, -531f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_mod_vec2_i32(-(~firstTrailingBit(-vec2<i32>(arg_0.a, -2147483647i))), vec2<i32>(select(-1i, 1i, _wgslsmith_f_op_f32(step(985f, global1.x)) >= -889f), arg_0.a));
    let var_1 = Struct_1(vec2<bool>(true, true));
    return 4294967295u;
}

fn func_3() -> vec4<f32> {
    var var_0 = Struct_2(-24043i, Struct_1(vec2<bool>(all(vec4<bool>(true, true, true, false)), true)), (global1.x < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, global1.x))) || (all(!global0[_wgslsmith_index_u32(u_input.a.x, 18u)]) | false), Struct_1(select(vec2<bool>(any(vec3<bool>(true, true, true)), false), global0[_wgslsmith_index_u32(19513u, 18u)], !any(vec3<bool>(true, false, true)))));
    let var_1 = Struct_3(Struct_1(select(select(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], select(var_0.b.a, var_0.d.a, vec2<bool>(true, var_0.d.a.x)), true), !var_0.d.a, var_0.c)));
    var var_2 = Struct_3(Struct_1(global0[_wgslsmith_index_u32(select(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(17914u, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(15536u, 34246u, 0u, 64736u)), select(vec4<u32>(1u, 41025u, 14865u, 1u), vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(var_0.c, var_0.c, var_1.a.a.x, var_0.b.a.x))), _wgslsmith_div_u32(u_input.a.x, 18432u), all(!vec2<bool>(var_0.c, var_1.a.a.x))), 18u)]));
    let var_3 = min(vec4<i32>(-(~(var_0.a ^ 0i)), var_0.a, _wgslsmith_add_i32(-var_0.a, _wgslsmith_div_i32(0i, var_0.a)) << (firstTrailingBit(0u) % 32u), ~(-2147483647i)), _wgslsmith_sub_vec4_i32(-vec4<i32>(var_0.a, var_0.a, var_0.a, var_0.a), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, -1i, 1i, 14525i), vec4<i32>(var_0.a, var_0.a, 35089i, -23911i)), -2147483647i & var_0.a, var_0.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-58972i, 33215i, 2147483647i, var_0.a), vec4<i32>(var_0.a, var_0.a, 0i, 0i))), vec4<i32>(var_0.a, firstLeadingBit(52062i), i32(-1i) * -55741i, -1i))));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.x, global1.x, global1.x, global1.x), vec4<f32>(-993f, -1731f, global1.x, global1.x))))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-177f, 845f, 1598f, global1.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1110f, global1.x, global1.x, global1.x) * vec4<f32>(global1.x, global1.x, 1000f, -2171f))))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.x, 1000f, 161f, -825f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-356f, global1.x, global1.x, global1.x), vec4<f32>(1445f, global1.x, -1728f, global1.x))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.x, global1.x, 1592f, 466f))))))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_4 + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-278f, -1349f, 1831f, var_4.x))))));
}

fn func_1() -> vec4<f32> {
    global1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, -1559f, global1.x) - vec4<f32>(-329f, -1259f, 562f, global1.x)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, global1.x, global1.x, global1.x), vec4<f32>(global1.x, 298f, global1.x, -2169f), vec4<bool>(true, false, false, false)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-118f, 613f, global1.x, global1.x))))));
    let var_0 = vec2<i32>(2147483647i, abs(-(~1i)));
    var var_1 = ~_wgslsmith_div_u32(u_input.a.x, u_input.a.x | (func_2(Struct_2(var_0.x, Struct_1(vec2<bool>(false, true)), false, Struct_1(global0[_wgslsmith_index_u32(4294967295u, 18u)])), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) | ~u_input.a.x));
    let var_2 = global1.yzw;
    var_1 = u_input.a.x;
    return _wgslsmith_f_op_vec4_f32(func_3());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -460f));
    global0 = array<vec2<bool>, 18>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(280f, var_0.x, var_0.x, -810f) + vec4<f32>(var_0.x, 1170f, -1482f, var_0.x)))), _wgslsmith_f_op_vec4_f32(func_1()))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global1.x, -1040f), _wgslsmith_f_op_f32(-250f + var_0.x), 778f, -206f) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -864f, -726f, global1.x))))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), true), true))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-759f, -1886f, global1.x, global1.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -493f, global1.x, global1.x))), vec4<f32>(-494f, -622f, _wgslsmith_f_op_f32(f32(-1f) * -694f), var_0.x), false)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1256f, 638f, 1106f, global1.x), vec4<f32>(694f, 753f, -550f, global1.x))) * vec4<f32>(var_0.x, 463f, -683f, -1225f)))));
    let var_2 = Struct_3(Struct_1(global0[_wgslsmith_index_u32(~(u_input.a.x << (min(u_input.a.x, 1u) % 32u)), 18u)]));
    var var_3 = Struct_2(13958i, Struct_1(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(var_2.a.a.x, true)), var_2.a.a, global0[_wgslsmith_index_u32(~4294967295u, 18u)])), true, var_2.a);
    var var_4 = vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(min(_wgslsmith_mod_u32(70391u, u_input.a.x), u_input.a.x & u_input.a.x), 9805u), firstTrailingBit(~u_input.a.x)), _wgslsmith_mult_u32(func_2(Struct_2(~55889i, Struct_1(vec2<bool>(false, var_3.b.a.x)), global1.x >= -422f, Struct_1(var_3.b.a)), select(~vec3<u32>(u_input.a.x, u_input.a.x, 0u), vec3<u32>(u_input.a.x, 0u, u_input.a.x), any(vec4<bool>(var_2.a.a.x, true, var_3.b.a.x, true)))), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.a.x, 10011u, u_input.a.x)), ~(~vec3<u32>(0u, u_input.a.x, u_input.a.x)))), 0u, abs(~u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_3()).zw), _wgslsmith_f_op_f32(exp2(global1.x)), firstTrailingBit(-vec2<i32>(var_3.a, -2147483647i)) & select(-_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, var_3.a), vec2<i32>(36423i, 9713i)), _wgslsmith_mod_vec2_i32(vec2<i32>(-30909i, -2147483647i), vec2<i32>(31238i, var_3.a)), var_2.a.a.x));
}

