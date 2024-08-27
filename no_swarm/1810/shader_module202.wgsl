struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: Struct_2,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<u32>,
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

var<private> global0: Struct_5;

var<private> global1: vec4<u32> = vec4<u32>(5344u, 20473u, 25519u, 10918u);

var<private> global2: Struct_2 = Struct_2(vec2<f32>(-220f, -1285f));

var<private> global3: array<vec3<f32>, 16>;

var<private> global4: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(23364u, vec3<u32>(34789u, 67018u, 41845u), vec4<i32>(1i, -40422i, 0i, 0i)), Struct_3(4294967295u, vec3<u32>(0u, 15978u, 1u), vec4<i32>(-16983i, 15988i, 2147483647i, 0i)), Struct_3(0u, vec3<u32>(4294967295u, 4294967295u, 85006u), vec4<i32>(-1621i, 2147483647i, -18028i, 30261i)), Struct_3(59446u, vec3<u32>(7087u, 19242u, 1u), vec4<i32>(i32(-2147483648), -1i, -1i, 2147483647i)), Struct_3(24129u, vec3<u32>(60654u, 0u, 4294967295u), vec4<i32>(0i, -665i, -38949i, -4377i)), Struct_3(21042u, vec3<u32>(0u, 86244u, 103791u), vec4<i32>(1i, -1i, 1i, -1i)), Struct_3(4294967295u, vec3<u32>(4294967295u, 4294967295u, 81583u), vec4<i32>(i32(-2147483648), -43548i, i32(-2147483648), -1i)), Struct_3(4294967295u, vec3<u32>(10109u, 19574u, 14581u), vec4<i32>(-36381i, -1i, 35378i, 66870i)), Struct_3(83694u, vec3<u32>(19479u, 1u, 24311u), vec4<i32>(4752i, 0i, 1i, 0i)), Struct_3(4294967295u, vec3<u32>(139557u, 2825u, 0u), vec4<i32>(13959i, 6357i, 2147483647i, -43635i)));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_mult_vec3_i32(-vec3<i32>(~u_input.a, u_input.d, select(_wgslsmith_mult_i32(u_input.a, u_input.a), ~9571i, true)), ~countOneBits(vec3<i32>(_wgslsmith_sub_i32(u_input.d, u_input.d), 38789i, ~u_input.a)));
    return 1u;
}

fn func_2() -> vec4<u32> {
    var var_0 = firstTrailingBit(global1.x);
    global2 = Struct_2(_wgslsmith_f_op_vec2_f32(-global2.a));
    let var_1 = select(u_input.a, -(~u_input.b), global0.a);
    let var_2 = vec3<f32>(-247f, global0.c.a.x, _wgslsmith_f_op_f32(select(828f, _wgslsmith_div_f32(-2130f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.a.x - 1000f))), true)));
    global4 = array<Struct_3, 10>();
    return ~(~_wgslsmith_add_vec4_u32(vec4<u32>(62558u, 36848u, u_input.c, 112955u), select(vec4<u32>(global1.x, 22629u, u_input.c, global1.x), vec4<u32>(global1.x, u_input.e.x, 1u, 4294967295u), vec4<bool>(false, global0.a, false, false)))) | vec4<u32>(_wgslsmith_div_u32(0u, countOneBits(reverseBits(global1.x))), _wgslsmith_dot_vec3_u32(u_input.e, _wgslsmith_sub_vec3_u32(vec3<u32>(41780u, 1u, global0.e.x), vec3<u32>(1u, u_input.e.x, u_input.c))), func_3(), global1.x);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_5) -> Struct_4 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1282f * global0.c.a.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x * global0.b))));
    var var_1 = Struct_1(select(~abs(vec3<u32>(1u, 42099u, global1.x)) & vec3<u32>(u_input.c, ~u_input.c, ~921u), vec3<u32>(global1.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 102532u), vec2<u32>(4294967295u, 1u)), _wgslsmith_dot_vec3_u32(firstLeadingBit(arg_2.e), abs(u_input.e))), vec3<bool>(true, false, all(!vec4<bool>(arg_2.a, false, global0.a, true)))), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(arg_0, vec4<u32>(1u, 4294967295u, 1u, global1.x)) << ((vec4<u32>(83546u, 7924u, arg_2.d.x, u_input.c) & vec4<u32>(20611u, 36218u, global0.d.x, u_input.e.x)) % vec4<u32>(32u)), select(vec4<u32>(arg_0.x, 1u, global1.x, 0u), ~arg_0, false)), ~(~arg_0) | (~vec4<u32>(12057u, u_input.c, 4294967295u, 53294u) >> (arg_0 % vec4<u32>(32u)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(global1.x, 16u)]), _wgslsmith_div_vec3_f32(global3[_wgslsmith_index_u32(~(~1u), 16u)], _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.c.a.x, -703f, global2.a.x) - vec3<f32>(arg_1.a.x, arg_2.b, -284f)), _wgslsmith_div_vec3_f32(global3[_wgslsmith_index_u32(arg_0.x, 16u)], vec3<f32>(2491f, arg_2.b, global0.c.a.x))))))), global2.a.x);
    let var_2 = ~global1.wy;
    let var_3 = (vec2<i32>(-1i) * -min(vec2<i32>(u_input.b, u_input.a), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, 1i), vec2<i32>(-13422i, 1i)))) & vec2<i32>(reverseBits(_wgslsmith_sub_i32(_wgslsmith_add_i32(-2147483647i, u_input.b), 1i)), u_input.d);
    global3 = array<vec3<f32>, 16>();
    return Struct_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(arg_1.a.x)))));
}

fn func_1() -> i32 {
    let var_0 = min(68799u << (1u % 32u), global1.x);
    let var_1 = ~(~(~(~countOneBits(vec4<u32>(39341u, global1.x, var_0, 0u)))));
    global2 = global0.c;
    var var_2 = func_4(func_2(), global0.c, Struct_5((1u != min(var_0, var_1.x)) || ((0u & global0.d.x) >= ~u_input.c), global2.a.x, Struct_2(_wgslsmith_f_op_vec2_f32(-global2.a)), _wgslsmith_add_vec2_u32(func_2().xz, (global1.yy & global1.yw) ^ global1.zy), ~global0.e));
    var var_3 = _wgslsmith_mod_u32(~(~4294967295u), ~_wgslsmith_mod_u32(_wgslsmith_div_u32(51032u >> (1u % 32u), _wgslsmith_dot_vec4_u32(var_1, var_1)), 25271u << (_wgslsmith_mult_u32(global1.x, var_0) % 32u)));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<f32>, 16>();
    var var_0 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1029f));
    let var_1 = vec2<i32>(0i, ~func_1());
    let var_2 = !(!(!select(vec2<bool>(false, global0.a), !vec2<bool>(global0.a, global0.a), !global0.a)));
    global3 = array<vec3<f32>, 16>();
    global2 = Struct_2(vec2<f32>(global0.c.a.x, _wgslsmith_f_op_f32(-global2.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global1.x);
}

