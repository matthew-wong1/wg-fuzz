struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21>;

var<private> global1: vec2<u32> = vec2<u32>(1u, 1u);

var<private> global2: f32;

var<private> global3: array<u32, 1>;

var<private> global4: array<u32, 13>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> u32 {
    global2 = _wgslsmith_f_op_f32(-1000f * global0[_wgslsmith_index_u32(~22778u, 21u)]);
    return 1u;
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-524f + 1000f);
    global1 = ~(~_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(44166u, 4294967295u), vec2<u32>(77151u, 1u)) | _wgslsmith_div_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 13u)], 13u)], global3[_wgslsmith_index_u32(18392u, 1u)]), vec2<u32>(global1.x, 0u)), vec2<u32>(~31766u, global1.x)));
    var var_1 = Struct_2(vec3<f32>(-177f, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, _wgslsmith_add_u32(global1.x, _wgslsmith_sub_u32(global3[_wgslsmith_index_u32(u_input.b, 1u)], u_input.b))), 21u)], _wgslsmith_f_op_f32(step(365f, global0[_wgslsmith_index_u32(~u_input.b, 21u)]))));
    global2 = var_1.a.x;
    global3 = array<u32, 1>();
    return Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-var_1.a)), global1.x < func_3(), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.a.x, global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.x, 1u)], 13u)], 21u)], var_1.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1642f, global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 13u)], 1u)], 21u)], 923f) - vec4<f32>(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1.x, 13u)], 21u)], var_1.a.x, var_1.a.x, 419f))))), vec4<f32>(1203f, var_1.a.x, _wgslsmith_f_op_f32(-1015f - -604f), -118f)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec4<f32>) -> f32 {
    var var_0 = firstTrailingBit(firstLeadingBit(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x), vec3<i32>(2147483647i, 27024i, 47939i)))) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(24499u, u_input.b), _wgslsmith_mod_vec2_u32(vec2<u32>(22938u, 2763u), vec2<u32>(4294967295u, 34506u))), firstLeadingBit(global1.x), 34271u) % vec3<u32>(32u)));
    let var_1 = func_2();
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.a.x, arg_1.c.x, arg_2.a.x), _wgslsmith_f_op_vec3_f32(round(arg_0.a)), !vec3<bool>(var_1.b, var_1.b, false))))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.a.a.x, arg_2.a.x, arg_3.x)))))));
    global0 = array<f32, 21>();
    let var_3 = ~abs(firstTrailingBit(max(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 33411u, 27965u), vec3<u32>(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 1u)], 13u)], u_input.b, 37678u)), abs(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.x, 1u)], 1u)], 50656u, u_input.b)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-302f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.a.x, -1000f)))));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: Struct_1) -> f32 {
    global0 = array<f32, 21>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_2.a.x * _wgslsmith_f_op_f32(func_4(Struct_2(arg_0.c.zxy), func_2(), func_2().a, vec4<f32>(global0[_wgslsmith_index_u32(0u, 21u)], -1753f, 127f, arg_2.a.x)))), 484f, arg_2.a.x, -1260f));
    let var_1 = vec2<u32>(37966u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~(~vec2<u32>(0u, 0u)), vec2<u32>(select(global1.x, u_input.b, true), ~global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(61643u, 1u)], 13u)], 1u)])), ~(firstLeadingBit(vec2<u32>(17652u, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(54508u, 1u)], 13u)])) & ~vec2<u32>(global4[_wgslsmith_index_u32(u_input.b, 13u)], global1.x))));
    global3 = array<u32, 1>();
    let var_2 = -((u_input.a.x >> (1u % 32u)) << (4294967295u % 32u));
    return _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-638f, 1236f)) + -448f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.x - global0[_wgslsmith_index_u32(var_1.x, 21u)]) + _wgslsmith_f_op_f32(floor(arg_2.a.x))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x + arg_0.c.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1647f, global0[_wgslsmith_index_u32(35099u, 21u)])))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1454f, global0[_wgslsmith_index_u32(4294967295u, 21u)]))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_3(Struct_2(vec3<f32>(global0[_wgslsmith_index_u32(global1.x, 21u)], -1846f, 228f)), false, vec4<f32>(389f, 2196f, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.x, 1u)], 1u)], 21u)], -299f)), vec3<bool>(true, true, true), Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(0u, 21u)], -1000f, global0[_wgslsmith_index_u32(4294967295u, 21u)]), vec3<bool>(false, true, false)))), 805f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(15477u, 21u)]))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-592f, _wgslsmith_f_op_f32(1834f - -1000f)))), vec2<bool>(true, true)));
    var var_1 = global0[_wgslsmith_index_u32(abs(global3[_wgslsmith_index_u32(firstLeadingBit(1u), 1u)]), 21u)];
    global0 = array<f32, 21>();
    global0 = array<f32, 21>();
    var_0 = vec2<f32>(-1128f, _wgslsmith_f_op_f32(func_1(func_2(), select(vec3<bool>(true, var_0.x >= 907f, true), vec3<bool>(true, true, true), !select(false, true, false)), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(542f, var_0.x, 364f, var_0.x))), vec4<f32>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(5305u, 1u)], 21u)], -1559f, var_0.x, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(35416u, 1u)], 21u)]), true)), vec3<bool>(true, true, true)))));
    global0 = array<f32, 21>();
    let var_2 = true;
    global3 = array<u32, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(63014u, ~(~(~vec4<u32>(u_input.b, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1.x, 13u)], 13u)], 66962u, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 1u)], 13u)]))));
}

