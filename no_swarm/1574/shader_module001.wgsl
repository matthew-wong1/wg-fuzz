struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1>;

var<private> global1: array<vec2<i32>, 18> = array<vec2<i32>, 18>(vec2<i32>(2147483647i, -21839i), vec2<i32>(0i, 1i), vec2<i32>(-35114i, -29314i), vec2<i32>(-80354i, 81i), vec2<i32>(i32(-2147483648), 14756i), vec2<i32>(-27920i, 18590i), vec2<i32>(7653i, 46775i), vec2<i32>(12631i, 1i), vec2<i32>(26787i, 0i), vec2<i32>(1i, 0i), vec2<i32>(i32(-2147483648), 29459i), vec2<i32>(-74396i, 35344i), vec2<i32>(-1i, -1i), vec2<i32>(40204i, -1i), vec2<i32>(i32(-2147483648), 21118i), vec2<i32>(2877i, -8684i), vec2<i32>(1i, -39592i), vec2<i32>(2147483647i, 4082i));

var<private> global2: Struct_1 = Struct_1(false, 1i);

var<private> global3: vec3<u32> = vec3<u32>(0u, 1u, 0u);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    global2 = Struct_1(global2.a, _wgslsmith_mod_i32(66274i, ~_wgslsmith_add_i32(0i, global2.b)) ^ 28940i);
    let var_0 = ~(~(~(global3.x & 1u))) | ~u_input.c.x;
    var var_1 = ~abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(17239u, 22880u), u_input.c.x), countOneBits(vec2<u32>(23811u, var_0)), firstLeadingBit(~global3.zx)));
    let var_2 = Struct_3(Struct_1(false, i32(-1i) * -1i), Struct_2(1056f, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(2131f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 1u)]), 1f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1000f, global0[_wgslsmith_index_u32(u_input.d.x, 1u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(var_0, 1u)], global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(var_1.x, 1u)]) - vec3<f32>(global0[_wgslsmith_index_u32(48696u, 1u)], global0[_wgslsmith_index_u32(global3.x, 1u)], global0[_wgslsmith_index_u32(var_1.x, 1u)]))))), _wgslsmith_f_op_f32(1298f - _wgslsmith_f_op_f32(-994f - 1884f)), Struct_1(select(false, global0[_wgslsmith_index_u32(global3.x, 1u)] == global0[_wgslsmith_index_u32(abs(var_0), 1u)], global2.a || true), u_input.b), max(vec4<i32>(-2147483647i, global2.b, ~0i, ~u_input.b) << (vec4<u32>(_wgslsmith_mult_u32(var_1.x, var_1.x), var_0, _wgslsmith_add_u32(u_input.a.x, 1u), global3.x) % vec4<u32>(32u)), ~(-vec4<i32>(u_input.b, u_input.b, 0i, u_input.b))));
    let var_3 = var_2.d;
    return 43979u & u_input.c.x;
}

fn func_2(arg_0: Struct_3) -> vec2<i32> {
    var var_0 = ~u_input.c.zwx;
    global3 = vec3<u32>(reverseBits(func_3()), u_input.a.x, ~(firstTrailingBit(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(80817u, 0u, global3.x, u_input.c.x))) ^ 13694u));
    let var_1 = Struct_1((global3.x << (_wgslsmith_add_u32(1u, abs(var_0.x)) % 32u)) > _wgslsmith_mod_u32(var_0.x, _wgslsmith_dot_vec4_u32(~u_input.c, u_input.c)), countOneBits(-(-26570i ^ ~arg_0.e.x)));
    global2 = Struct_1(!(true | global2.a), ~(~(i32(-1i) * -41343i)));
    var_0 = _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(~u_input.c.yyy, vec3<u32>(_wgslsmith_mod_u32(4294967295u, u_input.d.x), 116202u, 16982u), vec3<u32>(~_wgslsmith_add_u32(3318u, 64380u), global3.x, global3.x)), u_input.c.xwy);
    return global1[_wgslsmith_index_u32(~(~17213u), 18u)];
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: u32, arg_3: vec2<bool>) -> vec4<bool> {
    var var_0 = 36472i;
    var_0 = 1i;
    let var_1 = -arg_0;
    var var_2 = Struct_3(Struct_1(_wgslsmith_mod_i32(countOneBits(var_1.x), u_input.b) == global2.b, u_input.b), Struct_2(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(~1u, 1u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(22430u, 1u)]), _wgslsmith_f_op_f32(-1530f - -1000f), -182f))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c.x, 1u)] * _wgslsmith_f_op_f32(ceil(1278f))), Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 43993u, 1u), vec3<u32>(53595u, u_input.a.x, arg_2)), 1u)] <= _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~0u, 1u)] + -1189f), ~4400i), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -_wgslsmith_add_i32(var_1.x, 29223i), arg_0.x, 1i), reverseBits(vec4<i32>(-var_1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(9281i, 12526i), var_1), 0i, -10360i))));
    let var_3 = !select(select(!vec3<bool>(false, arg_3.x, arg_3.x), vec3<bool>(true, arg_3.x, !var_2.d.a), vec3<bool>(global2.a, true, true | arg_3.x)), vec3<bool>(true, true, true), vec3<bool>(true, true, true));
    return select(vec4<bool>(!(-6155i > (2147483647i ^ var_1.x)), all(!vec2<bool>(global2.a, true)), global2.a, !(!any(var_3))), vec4<bool>(all(!select(var_3.xx, arg_3, arg_3)), true, true & ((42706u & global3.x) == 1u), arg_3.x), select(var_2.d.a || (-29412i >= (u_input.b ^ var_2.e.x)), true, all(vec4<bool>(arg_3.x, all(vec2<bool>(false, false)), false, true))));
}

fn func_1(arg_0: Struct_3) -> u32 {
    let var_0 = func_4(firstTrailingBit(func_2(arg_0)) & ~arg_0.e.yy, true || !(!arg_0.a.a), 24104u, vec2<bool>(true, true));
    var var_1 = global3.x;
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(567f, _wgslsmith_f_op_f32(select(-921f, global0[_wgslsmith_index_u32(1u, 1u)], var_0.x))) + -915f)))));
    var_2 = 134f;
    global3 = min(select(u_input.a, u_input.a, vec3<bool>(true, false, arg_0.d.a)) & vec3<u32>(min(abs(56172u), max(24938u, 4294967295u)), u_input.c.x, abs(0u << (u_input.a.x % 32u))), vec3<u32>(59185u, global3.x, abs(func_3()) >> (0u % 32u)));
    return 13100u;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x ^ 4294967295u, func_1(Struct_3(Struct_1(true, -11395i), Struct_2(-399f, vec3<f32>(1151f, global0[_wgslsmith_index_u32(49707u, 1u)], global0[_wgslsmith_index_u32(0u, 1u)])), global0[_wgslsmith_index_u32(global3.x, 1u)], Struct_1(false, u_input.b), vec4<i32>(u_input.b, global2.b, u_input.b, global2.b))), _wgslsmith_div_u32(global3.x, global3.x), 46541u), _wgslsmith_clamp_vec4_u32(~u_input.c, firstLeadingBit(vec4<u32>(70456u, global3.x, 52068u, 1u)), vec4<u32>(4294967295u, 41431u, 16355u, global3.x))), ~(~select(1u, 18669u, false) & u_input.d.x), select(_wgslsmith_clamp_u32(~_wgslsmith_mult_u32(18464u, global3.x), global3.x, _wgslsmith_add_u32(~1u, reverseBits(0u))), ~u_input.c.x, false), 19943u, 65902u);
}

