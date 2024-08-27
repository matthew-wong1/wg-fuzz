struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: bool,
    d: vec2<bool>,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: bool;

var<private> global2: array<f32, 24>;

var<private> global3: array<vec4<bool>, 23>;

var<private> global4: Struct_3 = Struct_3(Struct_1(vec2<f32>(208f, 1000f), vec2<bool>(false, false)), Struct_2(50302u, -1349f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_5) -> i32 {
    let var_0 = global4.a.b.x;
    let var_1 = ~(~(-arg_0.b));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.d.x, 24u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.b.b * 1055f) + _wgslsmith_f_op_f32(trunc(108f))), global2[_wgslsmith_index_u32(u_input.d.x, 24u)], _wgslsmith_f_op_f32(min(-111f, _wgslsmith_f_op_f32(-arg_0.a))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-global4.a.a.x), -402f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global4.b.a, 24u)] - arg_0.a), _wgslsmith_f_op_f32(global4.a.a.x + global2[_wgslsmith_index_u32(17732u, 24u)]))))));
    let var_3 = select(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~u_input.d), u_input.c), 23u)], !select(select(select(global3[_wgslsmith_index_u32(arg_0.c, 23u)], vec4<bool>(true, false, global4.a.b.x, global4.a.b.x), true), global3[_wgslsmith_index_u32(global4.b.a, 23u)], select(vec4<bool>(true, false, global4.a.b.x, true), global3[_wgslsmith_index_u32(49375u, 23u)], true)), vec4<bool>(!global4.a.b.x, true, global4.a.b.x, true), !global3[_wgslsmith_index_u32(1u, 23u)]), !select(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.c, global4.b.a), reverseBits(u_input.c.yz)), 23u)], global3[_wgslsmith_index_u32(~(~global4.b.a), 23u)], false));
    global2 = array<f32, 24>();
    return ~(2147483647i | u_input.b.x);
}

fn func_2(arg_0: Struct_2) -> Struct_4 {
    var var_0 = global4.a.b;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-385f, _wgslsmith_div_f32(303f, global4.b.b)) * global4.a.a) * _wgslsmith_f_op_vec2_f32(exp2(global4.a.a))), !select(!global4.a.b, !(!global4.a.b), u_input.b.x <= _wgslsmith_mult_i32(u_input.a.x, 26949i)));
    global0 = true;
    var_0 = !(!vec2<bool>(false, _wgslsmith_f_op_f32(global4.a.a.x - -1263f) == _wgslsmith_f_op_f32(-1314f * -932f)));
    let var_2 = arg_0;
    return Struct_4(Struct_2(arg_0.a, _wgslsmith_f_op_f32(arg_0.b + -493f)), -vec3<i32>(_wgslsmith_div_i32(func_3(Struct_5(arg_0.b, 58672i, global4.b.a)), abs(8834i)), _wgslsmith_div_i32(-u_input.a.x, -23708i), u_input.b.x), all(!(!(!vec2<bool>(global4.a.b.x, true)))), vec2<bool>(!(!(true | var_1.b.x)), false));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_4 {
    let var_0 = any(!(!select(!vec3<bool>(global4.a.b.x, arg_0.b.x, arg_0.b.x), !vec3<bool>(arg_0.b.x, true, arg_0.b.x), vec3<bool>(global4.a.b.x, true, false))));
    global0 = var_0 || select(!all(vec3<bool>(false, var_0, false)), false, var_0);
    var var_1 = arg_0.a.x;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1078f + _wgslsmith_f_op_f32(round(-481f))) + global2[_wgslsmith_index_u32(1u, 24u)]) * 1452f);
    let var_2 = var_0;
    return func_2(global4.b);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_5, arg_2: vec2<i32>, arg_3: bool) -> Struct_5 {
    var var_0 = 0u;
    return arg_1;
}

fn func_5(arg_0: u32, arg_1: Struct_5) -> Struct_4 {
    global3 = array<vec4<bool>, 23>();
    global3 = array<vec4<bool>, 23>();
    global2 = array<f32, 24>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(func_2(Struct_2(23087u, 679f)).a.b, _wgslsmith_f_op_f32(1484f + -533f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(floor(arg_1.a)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(695f, -1631f, 103f), vec3<f32>(-2548f, arg_1.a, global2[_wgslsmith_index_u32(1u, 24u)]))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(arg_1.a)), -1036f, _wgslsmith_f_op_f32(sign(-852f)))));
    global2 = array<f32, 24>();
    return func_1(global4.a, ~u_input.c.zw);
}

fn func_6(arg_0: Struct_4, arg_1: Struct_5, arg_2: i32) -> f32 {
    global2 = array<f32, 24>();
    var var_0 = _wgslsmith_mult_vec3_u32(~u_input.c.yzw, min(vec3<u32>(countOneBits(firstLeadingBit(9482u)), 1u, reverseBits(func_4(arg_0, Struct_5(950f, -2147483647i, arg_1.c), u_input.a.ww, arg_0.d.x).c)), vec3<u32>(~_wgslsmith_mod_u32(0u, 30282u), 1u, u_input.d.x)));
    let var_1 = vec4<i32>(arg_0.b.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.a, u_input.a) & vec4<i32>(arg_1.b, arg_0.b.x, 895i, arg_1.b), firstTrailingBit(u_input.a)), arg_2, func_2(global4.b).b.x) << (~u_input.d % vec4<u32>(32u));
    var var_2 = reverseBits(vec4<u32>(global4.b.a, 10337u, ~(~var_0.x) | (arg_1.c ^ ~var_0.x), countOneBits(global4.b.a) & 3214u));
    let var_3 = vec2<u32>(~global4.b.a, 1u ^ var_0.x);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1935f)))), arg_0.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global4.a.b.x;
    let var_0 = global4.b;
    let var_1 = _wgslsmith_f_op_f32(func_6(func_5(~_wgslsmith_sub_u32(firstTrailingBit(var_0.a), 8711u), func_4(func_1(Struct_1(global4.a.a, global4.a.b), select(u_input.c.yw, vec2<u32>(0u, 0u), global4.a.b.x)), Struct_5(global2[_wgslsmith_index_u32(62056u, 24u)], abs(u_input.a.x), u_input.d.x), vec2<i32>(0i, -1i), false)), Struct_5(global4.b.b, u_input.b.x, u_input.c.x), u_input.b.x));
    global2 = array<f32, 24>();
    let var_2 = Struct_1(global4.a.a, global4.a.b);
    global1 = var_2.b.x;
    var var_3 = -_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, u_input.b.x), ~u_input.a.wx), 2985i, ~u_input.a.x, u_input.a.x), vec4<i32>(i32(-1i) * -2147483647i, -u_input.a.x, ~12728i, ~max(-2147483647i, 34599i)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, var_2.a, vec2<i32>(68252i, max(_wgslsmith_mult_i32(8756i, u_input.a.x) | (-47527i >> (var_0.a % 32u)), u_input.a.x)), ((vec3<i32>(-1i) * -vec3<i32>(var_3.x, u_input.a.x, -2147483647i)) | ~u_input.a.zxy) >> (~vec3<u32>(var_0.a, ~29521u, _wgslsmith_mod_u32(global4.b.a, var_0.a)) % vec3<u32>(32u)));
}

