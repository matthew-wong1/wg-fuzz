struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec4<u32>(61653u, 0u, 4294967295u, 1u), 11477u, vec2<u32>(23539u, 5191u)));

var<private> global1: array<u32, 8> = array<u32, 8>(6874u, 0u, 30917u, 4294967295u, 43199u, 49048u, 68886u, 54920u);

var<private> global2: array<vec4<bool>, 18>;

var<private> global3: array<Struct_1, 25>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> u32 {
    return ~firstLeadingBit(~min(arg_0.b, 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<f32>) -> u32 {
    return arg_2.c.x;
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~39259u, func_2(Struct_1(vec4<u32>(global1[_wgslsmith_index_u32(0u, 8u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(22561u, 8u)], 8u)], 8u)], 121526u, 46306u), global1[_wgslsmith_index_u32(60251u, 8u)], vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 8u)], 8u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 8u)], 8u)])), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 8u)], 8u)], 1u)], 59026i, false)), ~(~54033u)), 8u)], 8u)], 16891u), 8u)], 25u)];
    var var_1 = vec3<u32>(global1[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~var_0.a, var_0.a), 8u)], 8u)]) ^ var_0.c.x, 8u)], ~_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_3(Struct_1(var_0.a, 1u, vec2<u32>(var_0.c.x, 22425u)), global0[_wgslsmith_index_u32(5631u, 1u)], Struct_1(var_0.a, var_0.b, vec2<u32>(global1[_wgslsmith_index_u32(4721u, 8u)], global1[_wgslsmith_index_u32(var_0.a.x, 8u)])), vec2<f32>(arg_0, arg_0)), 1u), 8u)], _wgslsmith_add_u32(max(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.a.x, 8u)], 8u)]), abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(86705u, 8u)], 8u)]))), ~global1[_wgslsmith_index_u32(0u, 8u)] & (20952u >> (select(23936u, global1[_wgslsmith_index_u32(3973u, 8u)], u_input.b.x < u_input.a.x) % 32u)));
    var var_2 = Struct_1(~(~var_0.a), var_1.x, select(vec2<u32>(firstLeadingBit(global1[_wgslsmith_index_u32(~var_1.x, 8u)]), 11587u), vec2<u32>(_wgslsmith_sub_u32(~global1[_wgslsmith_index_u32(15885u, 8u)], ~global1[_wgslsmith_index_u32(var_1.x, 8u)]), ~14409u), !(!select(vec2<bool>(false, false), vec2<bool>(false, true), true))));
    var var_3 = global3[_wgslsmith_index_u32(firstTrailingBit(var_1.x), 25u)];
    var_1 = vec3<u32>(~(var_1.x | var_2.a.x), var_3.a.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(1987u, var_3.b), 36890u, var_3.c.x ^ 1u, _wgslsmith_mod_u32(var_2.c.x, var_3.b)), vec4<u32>(14287u, firstTrailingBit(3554u), var_2.b & var_3.a.x, 13649u)));
    return global0[_wgslsmith_index_u32(~3307u, 1u)];
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: u32, arg_3: Struct_1) -> vec3<u32> {
    return arg_3.a.wxx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(_wgslsmith_add_vec3_u32(min(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(78222u, 8u)], 8u)], 1u, global1[_wgslsmith_index_u32(28167u, 8u)]), ~vec3<u32>(global1[_wgslsmith_index_u32(36199u, 8u)], 6963u, 0u)), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 8u)], 8u)], global1[_wgslsmith_index_u32(1809u, 8u)], _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(7950u, 8u)], 1u, 4294967295u))) | ~func_4(~u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, u_input.b.x), 1u, func_1(1270f)));
    var var_1 = !vec4<bool>(any(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), vec3<bool>(true, false, false), all(vec2<bool>(false, true)))), _wgslsmith_add_i32(u_input.b.x, u_input.a.x) <= u_input.b.x, true, true);
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-490f, 1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-424f)))), _wgslsmith_f_op_f32(sign(-1192f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(857f, -907f, -101f, -2057f))))))))));
    global3 = array<Struct_1, 25>();
    global3 = array<Struct_1, 25>();
    let var_3 = global0[_wgslsmith_index_u32(var_0.x | ~(global1[_wgslsmith_index_u32(var_0.x, 8u)] << (1u % 32u)), 1u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(firstTrailingBit(var_3.b), var_0.x, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~24525u, 13681u) ^ _wgslsmith_sub_u32(firstTrailingBit(439u), var_0.x), 8u)], ~func_2(global3[_wgslsmith_index_u32(func_2(Struct_1(var_3.a, 14259u, vec2<u32>(var_0.x, global1[_wgslsmith_index_u32(21069u, 8u)])), global3[_wgslsmith_index_u32(0u, 25u)], u_input.b.x, true), 25u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 8u)] | var_3.b, 25u)], max(2742i, u_input.b.x), false != var_1.x)), -622f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(1926f)), _wgslsmith_f_op_f32(var_2.x - var_2.x))) * vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1554f)), _wgslsmith_f_op_f32(-528f * -952f)), 1631f)));
}

