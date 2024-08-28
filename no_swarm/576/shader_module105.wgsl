struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

var<private> global1: i32 = 2147483647i;

var<private> global2: vec2<u32> = vec2<u32>(26348u, 1u);

var<private> global3: array<vec3<f32>, 16>;

var<private> global4: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec3<f32> {
    global3 = array<vec3<f32>, 16>();
    var var_0 = arg_1.d.x;
    let var_1 = global0[_wgslsmith_index_u32(reverseBits(~global2.x) ^ ((0u | global2.x) & ~min(u_input.a, u_input.a >> (arg_1.d.x % 32u))), 5u)];
    let var_2 = select(vec4<bool>(max(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, arg_1.d.x, 1u, 1u), vec4<u32>(u_input.a, 0u, 37847u, u_input.a)), _wgslsmith_sub_u32(9315u, global2.x)) != 0u, false, !arg_0, global4.x), vec4<bool>(true, true, true, true), !(all(!vec3<bool>(arg_0, false, arg_0)) & true));
    global1 = 1i;
    return vec3<f32>(2560f, 745f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1126f - var_1.a), _wgslsmith_f_op_f32(sign(-909f))));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -728f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.b.x)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_3(global4.x, arg_1)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global3[_wgslsmith_index_u32(global2.x, 16u)], global3[_wgslsmith_index_u32(4294967295u, 16u)])), vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(step(arg_1.a, 144f)), _wgslsmith_f_op_f32(min(arg_1.b.x, 404f))), global4.x)), 1i >= _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_0, arg_1.c) >> (vec3<u32>(global2.x, 86782u, global2.x) % vec3<u32>(32u)), reverseBits(vec3<i32>(arg_0, 2147483647i, -32217i))))), reverseBits(-arg_0), ~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(abs(arg_1.d), arg_1.d), abs(vec3<u32>(47740u, global2.x, 53921u))));
    let var_1 = 10159u;
    global4 = select(!vec2<bool>((i32(-1i) * -58413i) <= arg_1.c, select(global4.x, all(vec4<bool>(false, global4.x, true, global4.x)), 33518u <= var_0.d.x)), !vec2<bool>(all(vec3<bool>(global4.x, global4.x, false)), false), !global4.x);
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.a, arg_1.a)) * _wgslsmith_f_op_f32(-284f - 747f)) - -411f)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.a))), arg_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.x, -799f)))), -26821i, ~(~_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(arg_1.d, vec3<u32>(u_input.a, u_input.a, 1u)), ~vec3<u32>(var_0.d.x, 44400u, 0u))));
    let var_2 = arg_1;
    return Struct_1(_wgslsmith_f_op_f32(var_2.a - var_0.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(409f + -235f), _wgslsmith_f_op_f32(select(580f, var_2.a, false)), var_0.a))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-352f, 1353f, var_2.a)), var_0.b)), var_0.c, _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a | ~var_0.d.x, global2.x, 4294967295u), _wgslsmith_add_vec3_u32(vec3<u32>(47851u >> (var_1 % 32u), _wgslsmith_div_u32(12942u, 4294967295u), var_0.d.x), arg_1.d)));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> i32 {
    var var_0 = -327f;
    var var_1 = global0[_wgslsmith_index_u32(u_input.a, 5u)];
    let var_2 = 1261f;
    let var_3 = vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(7191u, arg_0.d.x), ~(~(~u_input.a))), 0u | (~_wgslsmith_mod_u32(1u, arg_0.d.x) << (1u % 32u)), abs(~(~firstTrailingBit(0u))));
    global4 = !(!vec2<bool>((u_input.b > 2971i) | global4.x, all(!vec2<bool>(global4.x, global4.x))));
    return ~u_input.b;
}

fn func_1(arg_0: vec3<bool>, arg_1: bool, arg_2: bool) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global3[_wgslsmith_index_u32(93162u, 16u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1416f, 826f, -294f) + global3[_wgslsmith_index_u32(global2.x, 16u)])), vec3<bool>(true, true, all(arg_0.zx)))) * global3[_wgslsmith_index_u32(min(44205u, max(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 7177u, 1u, u_input.a), vec4<u32>(12082u, u_input.a, u_input.a, 1u)), global2.x ^ global2.x)), 16u)]) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(830f, 227f, -1214f)));
    global1 = u_input.b;
    return vec2<bool>(all(arg_0), max(u_input.b, 1i) > func_4(func_2(18901i, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global2.x, u_input.a, 54059u), vec4<u32>(u_input.a, 0u, 28802u, 4294967295u)), 5u)]), -317f));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<f32>, 16>();
    global4 = func_1(!(!(!select(vec3<bool>(false, global4.x, global4.x), vec3<bool>(global4.x, false, global4.x), true))), !global4.x, min(-firstTrailingBit(2725i), _wgslsmith_sub_i32(-5313i, min(u_input.b, -1i))) < -1i);
    var var_0 = true | all(vec2<bool>(func_1(vec3<bool>(true, false, false), true, true).x, (true || global4.x) && (global4.x == global4.x)));
    global3 = array<vec3<f32>, 16>();
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -880f);
    var var_2 = u_input.b;
    global2 = ~abs(countOneBits(vec2<u32>(33612u, u_input.a)));
    let var_3 = func_2(u_input.b, global0[_wgslsmith_index_u32(~(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a, 71646u), 1u) << (_wgslsmith_div_u32(35234u, firstTrailingBit(global2.x)) % 32u)), 5u)]);
    global0 = array<Struct_1, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(~min(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, var_3.d.x) | vec2<u32>(4294967295u, 1075u), firstLeadingBit(vec2<u32>(1u, var_3.d.x)), ~vec2<u32>(0u, global2.x)), ~var_3.d.yx), ~_wgslsmith_dot_vec3_u32(~var_3.d, vec3<u32>(1u, var_3.d.x, 7442u)) & abs(~(~2408u)), u_input.b, -9701i | var_3.c, select(u_input.a, ~36380u, true));
}

