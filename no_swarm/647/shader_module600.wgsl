struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: i32,
    d: Struct_1,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: i32,
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

var<private> global0: array<u32, 14> = array<u32, 14>(4294967295u, 3189u, 37863u, 5097u, 1u, 0u, 4294967295u, 4118u, 4294967295u, 4294967295u, 0u, 4294967295u, 70900u, 61525u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_3) -> bool {
    let var_0 = Struct_3(arg_0.a, arg_0.b, _wgslsmith_dot_vec4_i32(reverseBits(u_input.d), vec4<i32>(~_wgslsmith_sub_i32(17423i, -14643i), ~select(-1770i, u_input.e, false), -arg_0.d.a >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.e.x & 24058u, 14u)], 14u)] % 32u), -u_input.e)), Struct_1(894i, arg_0.a.x), arg_0.e);
    global0 = array<u32, 14>();
    global0 = array<u32, 14>();
    let var_1 = arg_0.e;
    return -40865i > -_wgslsmith_div_i32(i32(-1i) * -u_input.a.x, u_input.e);
}

fn func_3(arg_0: vec3<i32>) -> vec3<bool> {
    var var_0 = ~_wgslsmith_add_vec4_u32(vec4<u32>(~1u, 31902u, select(u_input.b, _wgslsmith_div_u32(u_input.c, u_input.b), true), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 14u)], 14u)]), 14u)], 14u)] << (~4294967295u % 32u)), vec4<u32>(_wgslsmith_div_u32(u_input.b, 29602u) << ((global0[_wgslsmith_index_u32(21595u, 14u)] & 4294967295u) % 32u), ~69411u, _wgslsmith_div_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(13936u, 17840u), vec2<u32>(55324u, u_input.c))), u_input.c));
    var_0 = abs(~vec4<u32>(u_input.b, 0u, 1u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.b, 100184u, var_0.x, global0[_wgslsmith_index_u32(20472u, 14u)])), ~vec4<u32>(global0[_wgslsmith_index_u32(1u, 14u)], var_0.x, u_input.b, 1u))));
    var var_1 = ~(-arg_0.x);
    var var_2 = select(vec3<bool>(true, true, true), !select(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), arg_0.x <= u_input.e)), vec3<bool>(true, true || (1i < _wgslsmith_add_i32(1i, u_input.d.x)), all(vec3<bool>(any(vec4<bool>(false, true, false, false)), true, true))));
    let var_3 = Struct_3(select(!select(select(vec3<bool>(false, true, true), vec3<bool>(false, var_2.x, true), vec3<bool>(false, false, var_2.x)), select(vec3<bool>(false, false, var_2.x), vec3<bool>(var_2.x, false, true), vec3<bool>(false, var_2.x, var_2.x)), vec3<bool>(false, true, var_2.x)), !vec3<bool>(any(vec4<bool>(false, false, true, var_2.x)), var_2.x, false), select(select(vec3<bool>(var_2.x, var_2.x, var_2.x), select(vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(var_2.x, true, var_2.x), vec3<bool>(var_2.x, var_2.x, true)), any(var_2.yy)), select(vec3<bool>(true, var_2.x, var_2.x), !vec3<bool>(var_2.x, var_2.x, var_2.x), !vec3<bool>(false, var_2.x, false)), !(!vec3<bool>(var_2.x, var_2.x, var_2.x)))), ~u_input.d, -u_input.e, Struct_1(u_input.a.x, var_2.x), var_0.xz);
    return var_3.a;
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> Struct_3 {
    var var_0 = !vec3<bool>(func_2(Struct_3(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), ~vec4<i32>(24413i, 2147483647i, u_input.a.x, u_input.e), _wgslsmith_dot_vec3_i32(vec3<i32>(-19178i, -637i, u_input.e), vec3<i32>(33390i, 0i, arg_1)), Struct_1(0i, true), ~vec2<u32>(4294967295u, 24690u))), func_2(Struct_3(vec3<bool>(true, true, false), vec4<i32>(0i, 0i, u_input.d.x, 13934i), reverseBits(-2147483647i), Struct_1(1i, false), vec2<u32>(488u, 56388u))), all(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true)));
    let var_1 = 0i;
    var var_2 = Struct_1(var_1, var_0.x);
    var var_3 = Struct_3(vec3<bool>(-36471i == var_2.a, any(vec2<bool>(any(vec4<bool>(var_0.x, var_2.b, var_0.x, var_2.b)), var_2.b)), any(func_3(~u_input.d.yxw))), vec4<i32>(_wgslsmith_dot_vec2_i32(~(-vec2<i32>(-45127i, 6096i)), -firstLeadingBit(u_input.a.zy)), -u_input.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.a, arg_1, _wgslsmith_sub_i32(var_2.a, var_2.a), 17554i), u_input.d), -var_2.a), reverseBits(-(_wgslsmith_add_i32(1i, var_1) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 70533u, u_input.b), vec3<u32>(22734u, 15790u, 0u)) % 32u))), Struct_1(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(~1i, var_2.a, -23086i >> (global0[_wgslsmith_index_u32(4294967295u, 14u)] % 32u)), arg_1), true), _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 4294967295u), select(vec2<u32>(4294967295u, 37152u), vec2<u32>(2130u, 4294967295u), var_0.x)), vec2<u32>(1u, 0u >> (u_input.b % 32u)), vec2<u32>(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 14u)], 14u)], 0u), u_input.c)) & max(_wgslsmith_mult_vec2_u32(~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 14u)], 14u)], 14u)], 14u)], u_input.b), vec2<u32>(1u, global0[_wgslsmith_index_u32(1u, 14u)])), select(min(vec2<u32>(u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 14u)], 14u)]), vec2<u32>(1u, u_input.b)), firstTrailingBit(vec2<u32>(global0[_wgslsmith_index_u32(22241u, 14u)], global0[_wgslsmith_index_u32(u_input.c, 14u)])), var_0.xx)));
    global0 = array<u32, 14>();
    return Struct_3(var_3.a, -reverseBits(_wgslsmith_sub_vec4_i32(~u_input.d, var_3.b)), firstLeadingBit(u_input.d.x) ^ 0i, var_3.d, ~vec2<u32>(var_3.e.x, var_3.e.x));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: vec4<i32>, arg_3: vec3<bool>) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1177f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1365f) + 1f)))), vec2<f32>(1f, 1f)));
    var var_1 = _wgslsmith_f_op_f32(sign(var_0.x));
    let var_2 = arg_3;
    let var_3 = i32(-1i) * -61274i;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x)));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-491f, -271f, var_0.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1879f, var_0.x, var_0.x) + vec3<f32>(330f, var_0.x, var_0.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(514f, var_0.x, -1441f), vec3<f32>(var_0.x, 440f, var_0.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1300f, var_0.x, 1000f) + vec3<f32>(var_0.x, 1000f, var_0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 14>();
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1360f))), 2253f, _wgslsmith_f_op_f32(475f * _wgslsmith_f_op_f32(f32(-1f) * -316f)), -189f), _wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(_wgslsmith_div_f32(-1389f, _wgslsmith_div_f32(-157f, -1156f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1442f, -888f)) * _wgslsmith_f_op_f32(360f + 426f)), _wgslsmith_f_op_f32(-132f * _wgslsmith_f_op_f32(f32(-1f) * -167f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(777f))))));
    global0 = array<u32, 14>();
    global0 = array<u32, 14>();
    global0 = array<u32, 14>();
    let var_1 = Struct_1(21261i, !((4518u ^ global0[_wgslsmith_index_u32(u_input.b, 14u)]) <= abs(1u)));
    global0 = array<u32, 14>();
    var var_2 = firstLeadingBit(u_input.b);
    let var_3 = _wgslsmith_f_op_vec3_f32(func_4(func_1(Struct_2(_wgslsmith_f_op_vec4_f32(floor(var_0))), ~8157i), 0u, ~vec4<i32>(-1i, var_1.a, -u_input.d.x | -1i, i32(-1i) * -2147483647i), select(func_1(Struct_2(_wgslsmith_f_op_vec4_f32(-var_0)), u_input.a.x).a, select(!func_1(Struct_2(var_0), u_input.e).a, vec3<bool>(func_3(vec3<i32>(u_input.a.x, 0i, u_input.e)).x, true, false), func_3(firstLeadingBit(u_input.d.wyw))), !select(vec3<bool>(var_1.b, true, false), vec3<bool>(true, true, true), false | var_1.b))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7260u, 14u)], 14u)], global0[_wgslsmith_index_u32(63757u, 14u)]), global0[_wgslsmith_index_u32(u_input.b, 14u)]), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, 18447u, global0[_wgslsmith_index_u32(u_input.c, 14u)]), vec4<u32>(u_input.b, 1u, u_input.b, 4294967295u)), reverseBits(vec4<u32>(global0[_wgslsmith_index_u32(u_input.c, 14u)], global0[_wgslsmith_index_u32(u_input.c, 14u)], u_input.b, global0[_wgslsmith_index_u32(2452u, 14u)])))));
}

