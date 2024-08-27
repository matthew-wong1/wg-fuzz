struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_1 = Struct_1(2147483647i);

var<private> global2: array<bool, 24>;

var<private> global3: array<vec4<bool>, 26>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> u32 {
    let var_0 = !(!vec3<bool>(global2[_wgslsmith_index_u32(5225u, 24u)], any(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 24u)], global2[_wgslsmith_index_u32(136338u, 24u)], false)), true & all(vec2<bool>(global2[_wgslsmith_index_u32(1u, 24u)], global2[_wgslsmith_index_u32(global0.x, 24u)]))));
    return _wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.a.x, 11196u), abs(1u) << (_wgslsmith_div_u32(_wgslsmith_mult_u32(abs(u_input.a.x), u_input.b ^ global0.x), firstTrailingBit(24641u)) % 32u), global0.x);
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: u32) -> f32 {
    global1 = Struct_1(2147483647i);
    global2 = array<bool, 24>();
    let var_0 = Struct_1(1i);
    global3 = array<vec4<bool>, 26>();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-500f, 312f, 342f, -1000f)))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1113f, -201f, -1444f, 269f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1209f, -438f, 713f, 1314f), _wgslsmith_div_vec4_f32(vec4<f32>(3137f, 359f, 545f, 188f), vec4<f32>(1000f, -1000f, -1450f, 1121f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-896f, 194f, -636f, 1666f) - vec4<f32>(454f, 2039f, -1512f, -1194f)))), global3[_wgslsmith_index_u32(u_input.b | 0u, 26u)])))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(1162f, 269f), _wgslsmith_f_op_f32(372f * 1072f), _wgslsmith_f_op_f32(-1082f + 135f), _wgslsmith_f_op_f32(-427f + -953f)))))));
    return _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(590f - _wgslsmith_f_op_f32(f32(-1f) * -572f)));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> StorageBuffer {
    let var_0 = arg_2;
    global3 = array<vec4<bool>, 26>();
    let var_1 = var_0;
    var var_2 = select(select(!vec3<bool>(u_input.a.x >= 1u, true, global2[_wgslsmith_index_u32(~0u, 24u)]), vec3<bool>(true, _wgslsmith_f_op_f32(func_3(0i, vec4<u32>(u_input.b, global0.x, 5866u, global0.x), 0u)) >= -489f, any(global3[_wgslsmith_index_u32(global0.x, 26u)])), select(!vec3<bool>(true, false, arg_1), vec3<bool>(true, true, true), select(vec3<bool>(global2[_wgslsmith_index_u32(global0.x, 24u)], global2[_wgslsmith_index_u32(13088u, 24u)], arg_1), vec3<bool>(global2[_wgslsmith_index_u32(arg_3, 24u)], arg_1, false), vec3<bool>(global2[_wgslsmith_index_u32(arg_3, 24u)], true, false)))), vec3<bool>(false, arg_1, ~(74354u & global0.x) > _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, 0u, 0u, 0u), vec4<u32>(1u, 0u, 0u, arg_3)), ~vec4<u32>(8235u, 0u, global0.x, global0.x))), vec3<bool>(false, true, true));
    global1 = var_1;
    return StorageBuffer(_wgslsmith_add_vec4_i32(-(vec4<i32>(-1972i, 2147483647i, arg_0.a, -1i) >> (firstTrailingBit(vec4<u32>(global0.x, 4107u, arg_3, 0u)) % vec4<u32>(32u))), -vec4<i32>(firstLeadingBit(global1.a), 15739i, -arg_0.a, arg_2.a)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -392f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -1397f) - 237f))), -837f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<bool>, 26>();
    global3 = array<vec4<bool>, 26>();
    global0 = ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(global0.x, ~u_input.a.x, ~u_input.a.x), max(vec3<u32>(global0.x, global0.x, u_input.a.x), vec3<u32>(1u, u_input.b, 4294967295u)) & ~vec3<u32>(99703u, global0.x, 19641u)));
    let var_0 = global2[_wgslsmith_index_u32(4294967295u, 24u)];
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_add_u32(_wgslsmith_sub_u32(0u >> (u_input.a.x % 32u), ~28717u), 5497u << (func_1() % 32u)), ~global0.x), 24u)];
    global3 = array<vec4<bool>, 26>();
    let x = u_input.a;
    s_output = func_2(Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global1.a, global1.a, -2147483647i), vec3<i32>(global1.a, 2147483647i, -50176i)), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, global1.a, -2147483647i), vec3<i32>(-3389i, -20770i, -16228i))) >> (~u_input.b % 32u)), !all(select(vec4<bool>(true, true, false, global2[_wgslsmith_index_u32(global0.x, 24u)]), select(global3[_wgslsmith_index_u32(global0.x, 26u)], vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 24u)], true, global2[_wgslsmith_index_u32(1u, 24u)]), false), select(vec4<bool>(global2[_wgslsmith_index_u32(60023u, 24u)], false, false, true), global3[_wgslsmith_index_u32(u_input.b, 26u)], global2[_wgslsmith_index_u32(0u, 24u)]))), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.a, global1.a, global1.a), vec3<i32>(-2147483647i, global1.a, global1.a) | vec3<i32>(global1.a, global1.a, global1.a)) ^ -firstTrailingBit(global1.a)), 95288u);
}

