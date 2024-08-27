struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<u32, 18> = array<u32, 18>(0u, 72303u, 0u, 0u, 1u, 16900u, 62971u, 12643u, 1u, 32992u, 28803u, 4294967295u, 25518u, 29994u, 0u, 92135u, 17515u, 4294967295u);

var<private> global2: array<vec4<bool>, 30>;

var<private> global3: Struct_1 = Struct_1(-7675i);

var<private> global4: array<bool, 24> = array<bool, 24>(true, true, false, false, false, true, false, true, true, true, true, false, true, false, true, true, true, false, false, true, true, false, false, false);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: u32) -> u32 {
    global4 = array<bool, 24>();
    return _wgslsmith_dot_vec4_u32(~u_input.d << (firstTrailingBit(vec4<u32>(_wgslsmith_add_u32(u_input.d.x, 62519u), ~15344u, u_input.d.x & arg_0, ~arg_0)) % vec4<u32>(32u)), max(_wgslsmith_div_vec4_u32(abs(_wgslsmith_mult_vec4_u32(u_input.d, vec4<u32>(u_input.b, 0u, 14241u, u_input.d.x))), vec4<u32>(u_input.d.x, global1[_wgslsmith_index_u32(33652u, 18u)] | u_input.b, ~43562u, global1[_wgslsmith_index_u32(abs(1u), 18u)])), vec4<u32>(~select(3262u, 1u, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 18u)], 24u)]), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 38965u), u_input.d.xw) >> (0u % 32u), u_input.b ^ 4933u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 0u), u_input.d.xwx) & _wgslsmith_sub_u32(4294967295u, 48781u))));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: u32, arg_3: vec4<f32>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_sub_i32(max(0i, 12820i) << ((_wgslsmith_dot_vec2_u32(u_input.d.xy, vec2<u32>(u_input.d.x, u_input.d.x)) & global1[_wgslsmith_index_u32(0u, 18u)]) % 32u), -max(u_input.a.x, ~2147483647i)));
    global2 = array<vec4<bool>, 30>();
    global3 = Struct_1(-2147483647i);
    global3 = Struct_1(u_input.e & abs(global3.a | _wgslsmith_div_i32(u_input.a.x, 1i)));
    var_0 = Struct_1(3096i);
    return global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(~global1[_wgslsmith_index_u32(1u, 18u)], _wgslsmith_mult_u32(27352u, 75979u)), 18u)];
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = ~vec2<u32>(~65487u, _wgslsmith_add_u32(~global1[_wgslsmith_index_u32(12997u >> (1u % 32u), 18u)], ~86385u));
    global1 = array<u32, 18>();
    let var_1 = 1484f;
    var var_2 = vec2<bool>(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(min(75641u, u_input.b), 18u)], func_2(60120u)), func_3(false, u_input.c.x ^ ~(-24357i), 36713u, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(419f, global0.x, 482f, 679f))))), 24u)], all(!select(select(vec3<bool>(false, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7835u, 18u)], 24u)], global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(26989u, 18u)], 24u)]), vec3<bool>(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.x, 18u)], 24u)], false, global4[_wgslsmith_index_u32(var_0.x, 24u)]), false), vec3<bool>(true, global4[_wgslsmith_index_u32(var_0.x, 24u)], true), vec3<bool>(true, true, true))));
    let var_3 = var_1;
    return any(vec3<bool>(all(!vec4<bool>(true, true, var_2.x, global4[_wgslsmith_index_u32(4294967295u, 24u)])), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, global1[_wgslsmith_index_u32(31918u, 18u)]), vec4<u32>(4294967295u, 70287u, u_input.d.x, 28465u)) >= 0u, !any(select(vec3<bool>(global4[_wgslsmith_index_u32(24296u, 24u)], var_2.x, false), vec3<bool>(global4[_wgslsmith_index_u32(52489u, 24u)], var_2.x, true), vec3<bool>(var_2.x, global4[_wgslsmith_index_u32(4294967295u, 24u)], false)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<i32>) -> i32 {
    let var_0 = _wgslsmith_clamp_u32(2271u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d.x, 18u)], 18u)], ~(~(~(~48524u))));
    var var_1 = ~4294967295u;
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<bool>, 30>();
    let var_0 = vec3<i32>(global3.a, func_4(Struct_1(u_input.e), select(!(!vec2<bool>(false, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 18u)], 24u)])), vec2<bool>(any(vec3<bool>(true, global4[_wgslsmith_index_u32(u_input.b, 24u)], true)), false), vec2<bool>(true, func_1(1i))), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, firstTrailingBit(global3.a), -2147483647i, u_input.e), select(-vec4<i32>(u_input.c.x, global3.a, 5248i, -8814i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, u_input.a.x, u_input.e, u_input.c.x), vec4<i32>(global3.a, 41556i, -46372i, -351i)), vec4<bool>(true, global4[_wgslsmith_index_u32(u_input.b, 24u)], global4[_wgslsmith_index_u32(u_input.b, 24u)], global4[_wgslsmith_index_u32(8131u, 24u)])))), func_4(Struct_1(min(9550i, global3.a) & (global3.a ^ 16033i)), !(!select(vec2<bool>(global4[_wgslsmith_index_u32(92796u, 24u)], global4[_wgslsmith_index_u32(u_input.d.x, 24u)]), vec2<bool>(global4[_wgslsmith_index_u32(4294967295u, 24u)], global4[_wgslsmith_index_u32(32064u, 24u)]), global4[_wgslsmith_index_u32(u_input.b, 24u)])), vec4<i32>(~abs(-22002i), u_input.e << ((global1[_wgslsmith_index_u32(32692u, 18u)] >> (63994u % 32u)) % 32u), -global3.a, i32(-1i) * -1i)));
    let var_1 = ~(~(~abs(~global1[_wgslsmith_index_u32(25501u, 18u)])));
    let x = u_input.a;
    s_output = StorageBuffer(global0.yx, ~select(~(~u_input.d.zww), _wgslsmith_add_vec3_u32(~vec3<u32>(0u, u_input.b, u_input.b), max(u_input.d.xxy, u_input.d.wwx)), !vec3<bool>(global4[_wgslsmith_index_u32(var_1, 24u)], false, global4[_wgslsmith_index_u32(u_input.d.x, 24u)])), 2688i, max(_wgslsmith_div_vec2_u32(vec2<u32>(~0u, u_input.d.x), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.d.yz, vec2<u32>(47215u, var_1)), select(vec2<u32>(0u, global1[_wgslsmith_index_u32(1u, 18u)]), u_input.d.yw, vec2<bool>(false, true)))), u_input.d.yw), vec3<f32>(_wgslsmith_f_op_f32(step(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x - global0.x), global0.x))), -489f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, -1990f))))));
}

