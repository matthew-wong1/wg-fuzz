struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 1> = array<vec3<i32>, 1>(vec3<i32>(0i, 1i, 0i));

var<private> global1: array<u32, 24> = array<u32, 24>(4957u, 2149u, 0u, 0u, 4294967295u, 4294967295u, 40790u, 17346u, 1u, 47665u, 95625u, 0u, 31060u, 0u, 75793u, 25050u, 6257u, 64314u, 20936u, 77955u, 1u, 1u, 1u, 1u);

var<private> global2: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(true, true, true, true)));

var<private> global3: array<u32, 1>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec3<f32>) -> i32 {
    let var_0 = select(true, true, !((_wgslsmith_f_op_f32(-1311f + -1194f) >= _wgslsmith_f_op_f32(floor(arg_0.x))) == (-2147483647i < (u_input.b | -2147483647i))));
    global0 = array<vec3<i32>, 1>();
    let var_1 = Struct_2(_wgslsmith_div_f32(arg_0.x, -916f), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), 1015f, arg_0.x, -784f));
    var var_2 = arg_0.xx;
    let var_3 = _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 1u, select(_wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(35966u, 1u)], 51160u, global3[_wgslsmith_index_u32(14936u, 1u)]), vec3<u32>(76144u, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 24u)], 1u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(46966u, 24u)], 24u)], 24u)], 1u)])), 21112u, all(vec3<bool>(false, var_0, var_0))), ~global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 24u)], 1u)], 1u)], 24u)], 24u)], global3[_wgslsmith_index_u32(0u, 1u)]), 24u)]), _wgslsmith_mod_vec4_u32(~(~(~vec4<u32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 24u)], 0u, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 1u)], 24u)], 0u))), min(~(~vec4<u32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 1u)], 24u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u, 4294967295u)), ~vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(51255u, 24u)], 1u)], 24u)], 1u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(54967u, 24u)], 1u)], 1u)]))));
    return ~0i;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_1) -> vec4<bool> {
    global0 = array<vec3<i32>, 1>();
    var var_0 = _wgslsmith_sub_vec3_i32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u >> (reverseBits(global3[_wgslsmith_index_u32(52227u, 1u)]) % 32u), global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(1u, 24u)], global3[_wgslsmith_index_u32(0u, 1u)]), 24u)], 1u)] & 7324u), 1u)], -vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(25854i, -43348i), vec2<i32>(u_input.b, u_input.c)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 2147483647i), vec2<i32>(0i, u_input.a)), ~u_input.a)) | -_wgslsmith_mult_vec3_i32(select(global0[_wgslsmith_index_u32(~29814u, 1u)], vec3<i32>(2147483647i, -2147483647i, u_input.a), arg_2.a.x), -(~global0[_wgslsmith_index_u32(39383u, 1u)]));
    var var_1 = global1[_wgslsmith_index_u32(0u, 24u)];
    var var_2 = func_2(vec3<f32>(-1065f, _wgslsmith_f_op_f32(-1931f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x)))), arg_1.b.x));
    return arg_2.a;
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    global3 = array<u32, 1>();
    global2 = array<Struct_1, 3>();
    global1 = array<u32, 24>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(516f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(215f, _wgslsmith_f_op_f32(step(1610f, _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + arg_0.x), _wgslsmith_f_op_f32(select(-594f, _wgslsmith_f_op_f32(f32(-1f) * -3030f), true))))));
    var var_1 = Struct_2(arg_0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-1213f, -2264f, false)), _wgslsmith_f_op_f32(floor(var_0.b.x)), 1000f, arg_0.x) + vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_div_f32(353f, 229f), -275f, var_0.a))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1445f)), 1000f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_u32(global3[_wgslsmith_index_u32(1u, 1u)], 33655u & ~(~global3[_wgslsmith_index_u32(26813u, 1u)] ^ 69245u));
    global1 = array<u32, 24>();
    var var_1 = Struct_1(!select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), false), func_1(vec3<f32>(1971f, 422f, -385f), Struct_2(307f, vec4<f32>(-521f, 699f, 2221f, 1154f)), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(19165u, 1u)], 3u)]), true), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, global3[_wgslsmith_index_u32(1u, 1u)] < 4294967295u, false)));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -318f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-309f, _wgslsmith_f_op_f32(func_3(vec3<f32>(-303f, 106f, -828f))), _wgslsmith_f_op_f32(-1289f * 440f), _wgslsmith_f_op_f32(floor(570f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(~(~var_0), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_0, 73338u, 61827u), vec4<u32>(7570u, var_0, global3[_wgslsmith_index_u32(var_0, 1u)], 45809u)), countOneBits(vec4<u32>(0u, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(49283u, 1u)], 24u)], 20081u, 4294967295u))), 1u)], ~(~global1[_wgslsmith_index_u32(var_0, 24u)]), ~(var_0 | 5953u)));
}

