struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 9>;

var<private> global1: array<vec2<f32>, 9>;

var<private> global2: array<vec2<bool>, 17>;

var<private> global3: array<vec3<bool>, 19> = array<vec3<bool>, 19>(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: i32, arg_1: vec2<u32>) -> Struct_1 {
    global2 = array<vec2<bool>, 17>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(641f, -799f)) + _wgslsmith_f_op_f32(400f - 666f)), 250f)) - -886f));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-102f - var_0), _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.x, 38927u), vec2<u32>(arg_1.x, arg_1.x)), abs(arg_1), ~arg_1)), Struct_1(-378f, vec2<u32>((8807u & arg_1.x) ^ min(arg_1.x, 4294967295u), _wgslsmith_mult_u32(~arg_1.x, 54636u))), reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(~arg_1.x, 40859u, _wgslsmith_mod_u32(26093u, 38225u)), min(countOneBits(vec3<u32>(38009u, arg_1.x, 1u)), vec3<u32>(4294967295u, 59597u, arg_1.x)))), ~arg_1.x >> ((arg_1.x ^ 1u) % 32u));
    global3 = array<vec3<bool>, 19>();
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(838f, _wgslsmith_f_op_f32(var_1.b.a * var_1.b.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1177f) - _wgslsmith_f_op_f32(abs(-1190f))));
    return var_1.a;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> i32 {
    global1 = array<vec2<f32>, 9>();
    global2 = array<vec2<bool>, 17>();
    let var_0 = func_2(_wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(5871i, u_input.b, -2147483647i, 29076i), vec4<i32>(1i, u_input.b, -33150i, 2147483647i) << (vec4<u32>(1u, arg_3.a.b.x, arg_3.a.b.x, 14910u) % vec4<u32>(32u))), ~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(u_input.b, -6631i))), select(-1882i, firstTrailingBit(u_input.b) >> (arg_1.b.x % 32u), any(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 100446u), 17u)]))), vec2<u32>(~40895u, arg_0.b.x) ^ arg_0.b);
    var var_1 = func_2(-1i, ~vec2<u32>(~select(arg_1.b.x, 4294967295u, true), ~arg_2.b.x));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(max(-589f, -659f)), ~(~firstLeadingBit(vec2<u32>(arg_2.b.x, 42867u)))), arg_0, abs(firstTrailingBit(vec3<u32>(43156u, 14539u, var_1.b.x) | select(vec3<u32>(var_0.b.x, 4294967295u, arg_0.b.x), vec3<u32>(var_0.b.x, var_1.b.x, 38784u), global3[_wgslsmith_index_u32(arg_1.b.x, 19u)]))), 41009u);
    return 26929i;
}

fn func_1() -> i32 {
    global3 = array<vec3<bool>, 19>();
    global0 = array<vec3<f32>, 9>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -188f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -256f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-177f)), _wgslsmith_f_op_f32(select(-566f, -251f, false)))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-577f + -1000f));
    let var_1 = vec3<i32>(reverseBits(func_3(func_2(-u_input.a, ~vec2<u32>(1u, 1u)), Struct_1(-2031f, vec2<u32>(68483u, 1u)), Struct_1(168f, vec2<u32>(1u, 1u)), Struct_2(Struct_1(1978f, vec2<u32>(0u, 5447u)), func_2(u_input.b, vec2<u32>(4294967295u, 36224u)), reverseBits(vec3<u32>(28420u, 4294967295u, 5651u)), ~37197u))), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.b, 0i, -2147483647i, -19067i), vec4<i32>(-1i) * -vec4<i32>(-24043i, u_input.a, u_input.b, 4338i)), -1i | u_input.a);
    return -15196i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 9>();
    var var_0 = func_1();
    let var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(~(~4294967295u), abs(_wgslsmith_mult_u32(firstTrailingBit(4294967295u), ~28254u))), vec2<u32>(4294967295u, 20750u));
    global0 = array<vec3<f32>, 9>();
    let var_2 = !global2[_wgslsmith_index_u32(~(var_1.x << (~(5366u ^ var_1.x) % 32u)), 17u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_2(u_input.b, vec2<u32>(9503u, var_1.x)).a, _wgslsmith_f_op_f32(-1655f + _wgslsmith_div_f32(-1000f, 548f)))));
}

