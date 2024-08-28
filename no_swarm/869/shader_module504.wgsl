struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: u32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<bool, 8> = array<bool, 8>(true, false, false, true, true, true, false, true);

var<private> global2: vec2<bool> = vec2<bool>(true, false);

var<private> global3: u32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> u32 {
    let var_0 = -643f;
    global3 = 30513u;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1492f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * -537f)), _wgslsmith_f_op_f32(947f - var_0))));
    let var_2 = ~u_input.d.x;
    let var_3 = _wgslsmith_add_u32(~(~var_2), 4294967295u);
    return reverseBits(9065u);
}

fn func_3(arg_0: Struct_5, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec4<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1.b * 1000f), _wgslsmith_f_op_f32(floor(580f)), -479f, arg_0.a.b) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.b, -1000f, arg_0.a.b, -600f) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.a.b, arg_1.b, 2273f, -762f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.b, -723f, arg_1.b, arg_0.a.b), vec4<f32>(arg_1.b, 415f, arg_1.b, -870f))) + vec4<f32>(567f, arg_0.a.b, 338f, -579f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(2031f, arg_1.b, arg_1.b, arg_0.a.b) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, arg_1.b, -580f, arg_0.a.b))), _wgslsmith_f_op_f32(max(-978f, arg_0.a.b)) > arg_0.a.b)), false))));
    var var_1 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a, min(_wgslsmith_add_u32(arg_0.a.a, 0u), arg_1.a), ~(1u | arg_0.a.a), 4294967295u), reverseBits(abs(_wgslsmith_add_vec4_u32(vec4<u32>(9405u, 1u, u_input.a, 4294967295u), vec4<u32>(1u, 4515u, 1u, 4294967295u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.b), var_0.x)) * arg_1.b) * _wgslsmith_f_op_f32(arg_1.b - arg_1.b)));
    var var_2 = all(vec2<bool>(global1[_wgslsmith_index_u32(~(~64660u), 8u)], true)) & global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(22299u & arg_0.a.a, ~40814u, ~u_input.a), abs(firstLeadingBit(vec3<u32>(44660u, arg_1.a, var_1.a)))), 8u)];
    global1 = array<bool, 8>();
    let var_3 = var_0.zxx;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_0.x)))), var_0.x, true)))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3) -> vec2<bool> {
    let var_0 = arg_1;
    global3 = ~45798u;
    var var_1 = _wgslsmith_f_op_f32(arg_1.d.x * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.b.x)) + _wgslsmith_f_op_f32(floor(var_0.b.x))) - _wgslsmith_f_op_f32(-1f)))));
    let var_2 = global2.x;
    global2 = select(arg_1.c.xz, var_0.c.yx, var_0.c.zy);
    return arg_0;
}

fn func_1(arg_0: bool) -> Struct_1 {
    global0 = func_4(select(!(!(!vec2<bool>(true, global0.x))), !select(select(vec2<bool>(global2.x, false), vec2<bool>(true, arg_0), vec2<bool>(arg_0, true)), !vec2<bool>(global1[_wgslsmith_index_u32(1u, 8u)], true), false), vec2<bool>(any(vec3<bool>(false, false, false)), countOneBits(2706u) < _wgslsmith_sub_u32(u_input.a, 36419u))), Struct_3(_wgslsmith_div_u32(u_input.d.x, func_2()), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(129f, 517f) - vec2<f32>(-225f, 1213f)))), select(vec3<bool>(true, any(vec4<bool>(false, false, true, true)), true), select(select(vec3<bool>(true, false, global2.x), vec3<bool>(global2.x, global0.x, arg_0), vec3<bool>(true, global2.x, true)), !vec3<bool>(arg_0, global1[_wgslsmith_index_u32(u_input.a, 8u)], global1[_wgslsmith_index_u32(u_input.d.x, 8u)]), arg_0), arg_0), vec3<f32>(615f, _wgslsmith_f_op_f32(trunc(487f)), _wgslsmith_f_op_f32(func_3(Struct_5(Struct_1(u_input.a, 1664f)), Struct_1(u_input.d.x, 897f), vec2<i32>(u_input.c.x, -1i), max(vec4<i32>(-1i, u_input.c.x, 28885i, u_input.c.x), vec4<i32>(u_input.b.x, u_input.b.x, 67i, u_input.b.x)))))));
    let var_0 = Struct_5(Struct_1(1u, -461f));
    global3 = ~_wgslsmith_add_u32(~(4294967295u >> (u_input.a % 32u)), u_input.d.x);
    global1 = array<bool, 8>();
    global1 = array<bool, 8>();
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 8>();
    var var_0 = i32(-1i) * -u_input.c.x;
    let var_1 = func_1(true);
    let var_2 = Struct_5(var_1);
    let var_3 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.b, var_1.b, var_2.a.b), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1785f, var_1.b, 2276f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.b, -1247f, var_1.b), vec3<f32>(1000f, var_2.a.b, 2272f), global0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, var_2.a.b, var_2.a.b)), vec3<f32>(129f, 1000f, 957f), !global0.x)))), global0.x));
    let var_4 = Struct_3(1u, _wgslsmith_f_op_vec2_f32(ceil(var_3.zz)), !select(vec3<bool>(var_2.a.b != var_2.a.b, true, global0.x), !(!vec3<bool>(global2.x, true, global1[_wgslsmith_index_u32(u_input.d.x, 8u)])), !(!vec3<bool>(false, global0.x, global2.x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.a.b, var_1.b)))), -168f, var_1.b));
    let var_5 = select(-(~(~(-vec4<i32>(u_input.b.x, -47636i, u_input.c.x, -2147483647i)))), _wgslsmith_div_vec4_i32(~vec4<i32>(u_input.b.x, -2147483647i, 30118i, u_input.c.x) & firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.c.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.c.x, u_input.c.x, u_input.b.x))), max(vec4<i32>(1i, u_input.b.x, u_input.c.x << (0u % 32u), u_input.c.x | u_input.c.x), min(vec4<i32>(2147483647i, u_input.b.x, u_input.c.x, 2147483647i), vec4<i32>(u_input.b.x, -9303i, u_input.c.x, u_input.c.x)) | vec4<i32>(-923i, u_input.c.x, 1i, u_input.b.x))), true);
    let var_6 = !(!(!select(vec4<bool>(var_4.c.x, global1[_wgslsmith_index_u32(6500u, 8u)], false, false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 8u)], false, false), vec4<bool>(global0.x, false, false, var_4.c.x)), false)));
    var var_7 = any(vec3<bool>(1u < max(_wgslsmith_dot_vec2_u32(u_input.d, u_input.d), var_1.a), !((-1i << (u_input.d.x % 32u)) == var_5.x), select(true, _wgslsmith_f_op_f32(-607f + var_3.x) >= _wgslsmith_f_op_f32(var_1.b + 212f), func_4(vec2<bool>(global1[_wgslsmith_index_u32(var_4.a, 8u)], true), Struct_3(var_4.a, vec2<f32>(-1557f, -1392f), var_4.c, vec3<f32>(-1004f, -726f, var_1.b))).x)));
    let x = u_input.a;
    s_output = StorageBuffer(-305f, vec2<i32>(-(~_wgslsmith_mult_i32(var_5.x, var_5.x)), -2147483647i ^ -u_input.c.x));
}

