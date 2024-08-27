struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<i32>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec4<bool>,
    d: bool,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<f32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 30> = array<vec2<i32>, 30>(vec2<i32>(1i, 1i), vec2<i32>(0i, 14422i), vec2<i32>(-75675i, 0i), vec2<i32>(63493i, 30692i), vec2<i32>(2147483647i, 65737i), vec2<i32>(-37016i, 2147483647i), vec2<i32>(1i, -21808i), vec2<i32>(-18075i, 24846i), vec2<i32>(-38147i, -24216i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(41303i, 26833i), vec2<i32>(-1i, -1i), vec2<i32>(2147483647i, 0i), vec2<i32>(0i, -973i), vec2<i32>(2147483647i, -7385i), vec2<i32>(-50293i, -29036i), vec2<i32>(-6439i, -31013i), vec2<i32>(-53922i, -474i), vec2<i32>(-1617i, -1i), vec2<i32>(2928i, 2147483647i), vec2<i32>(14708i, 1i), vec2<i32>(0i, -1i), vec2<i32>(-29248i, -33233i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-10926i, 2791i), vec2<i32>(1i, -7471i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(1i, 5306i), vec2<i32>(0i, 25067i), vec2<i32>(-15784i, 2147483647i));

var<private> global1: bool;

var<private> global2: Struct_4 = Struct_4(true);

var<private> global3: Struct_3 = Struct_3(Struct_2(-1876f, Struct_1(vec2<f32>(202f, 1727f), vec2<i32>(1i, 1i), true, false), vec4<i32>(-13395i, 0i, -51668i, 22798i), 112060u, Struct_1(vec2<f32>(2235f, -172f), vec2<i32>(i32(-2147483648), -11593i), false, true)), 2147483647i, vec4<bool>(true, true, true, false), false);

var<private> global4: array<i32, 32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> i32 {
    let var_0 = vec4<u32>(4294967295u, 18784u, firstTrailingBit(~(u_input.b << (35305u % 32u))), ~1u << (_wgslsmith_mult_u32(u_input.b, u_input.b) % 32u)) >> (_wgslsmith_mod_vec4_u32(~vec4<u32>(~0u, _wgslsmith_mod_u32(82696u, global3.a.d), global3.a.d, ~1u), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 12302u, 3154u, global3.a.d), vec4<u32>(u_input.b, u_input.b, global3.a.d, u_input.b)), 0u, 4294967295u, 1u) ^ vec4<u32>(global3.a.d, select(45055u, 36004u, true), _wgslsmith_mult_u32(4294967295u, global3.a.d), 1u)) % vec4<u32>(32u));
    global3 = Struct_3(global3.a, _wgslsmith_add_i32(max(min(u_input.a, global4[_wgslsmith_index_u32(0u, 32u)]), _wgslsmith_dot_vec3_i32(global3.a.c.yxy, vec3<i32>(global3.b, u_input.a, 0i))) | -2147483647i, ~reverseBits(global4[_wgslsmith_index_u32(~u_input.b, 32u)])), vec4<bool>(true, ~(~4294967295u) == global3.a.d, true, !(!all(vec3<bool>(true, true, global3.a.b.d)))), global2.a);
    let var_1 = global3.a.b;
    let var_2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(ceil(1715f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))), global3.a.b, vec4<i32>(~(-global4[_wgslsmith_index_u32(var_0.x, 32u)]), _wgslsmith_dot_vec2_i32(var_1.b, vec2<i32>(58000i, global3.b) >> (var_0.zx % vec2<u32>(32u))), -var_1.b.x >> (~0u % 32u), 2147483647i), ~1u, global3.a.b), 41069i, !(!select(vec4<bool>(true, true, true, var_1.c), vec4<bool>(global3.a.b.c, true, global2.a, true), true)), false);
    global3 = var_2;
    return -19533i;
}

fn func_2() -> Struct_3 {
    global4 = array<i32, 32>();
    let var_0 = ~abs(vec4<u32>(~(0u << (1u % 32u)), 1u, 1u, u_input.b));
    var var_1 = global3.d;
    let var_2 = max(~(var_0 & _wgslsmith_clamp_vec4_u32(vec4<u32>(global3.a.d, 32607u, global3.a.d, global3.a.d), var_0, var_0)), vec4<u32>(~(~global3.a.d), 17672u, global3.a.d, global3.a.d));
    return Struct_3(global3.a, func_3(), global3.c, global3.c.x);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: Struct_3, arg_3: vec4<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(max(-155f, _wgslsmith_f_op_f32(-439f + _wgslsmith_div_f32(368f, global3.a.b.a.x))));
    let var_1 = -763f;
    global4 = array<i32, 32>();
    return func_2().a;
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: i32, arg_3: bool) -> u32 {
    global2 = Struct_4(true);
    let var_0 = global3.a.b.a;
    let var_1 = arg_1;
    global1 = !all(vec3<bool>(!any(vec3<bool>(arg_3, true, global2.a)), false, true));
    global0 = array<vec2<i32>, 30>();
    return firstTrailingBit(global3.a.d);
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-global3.a.b.a), global3.a.e.b << (~(vec2<u32>(70033u, global3.a.d) << (~vec2<u32>(u_input.b, 1u) % vec2<u32>(32u))) % vec2<u32>(32u)), true, any(!global3.c));
    let var_1 = Struct_4((global3.a.e.c || !global2.a) | any(vec3<bool>(true, !global2.a, true)));
    let var_2 = vec2<u32>(~(~(~u_input.b & u_input.b)), func_5(-1000f, func_4(global3.c.xx, Struct_4(true), func_2(), !vec4<bool>(false, true, global3.a.e.c, var_0.d)), arg_1, global3.a.a == _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(225f + var_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -268f)))));
    var var_3 = vec4<u32>(~global3.a.d, 1640u, _wgslsmith_div_u32(abs(func_5(var_0.a.x, func_2().a, -global4[_wgslsmith_index_u32(12298u, 32u)], var_1.a)), firstLeadingBit(var_2.x)), _wgslsmith_sub_u32(countOneBits(func_2().a.d), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, 4294967295u), vec2<u32>(63370u, 14455u))) ^ u_input.b);
    global3 = Struct_3(func_4(!select(!global3.c.xz, global3.c.ww, select(global3.c.wy, vec2<bool>(true, var_1.a), global2.a)), var_1, Struct_3(Struct_2(global3.a.a, func_4(global3.c.wy, var_1, Struct_3(global3.a, arg_0, vec4<bool>(false, true, true, true), global2.a), global3.c).e, -vec4<i32>(arg_1, arg_1, 2147483647i, -5965i), 1u, func_2().a.e), ~var_0.b.x, !(!vec4<bool>(true, false, global2.a, true)), true), select(!select(vec4<bool>(var_1.a, var_0.d, var_0.c, global2.a), vec4<bool>(var_1.a, global3.a.b.d, true, false), var_0.c), vec4<bool>(select(global3.d, false, var_0.c), true, !global3.c.x, any(vec2<bool>(var_1.a, var_0.d))), !var_0.d | (852f > global3.a.e.a.x))), ~_wgslsmith_mult_i32(arg_0, 1i), func_2().c, true);
    return Struct_1(vec2<f32>(global3.a.e.a.x, var_0.a.x), vec2<i32>(~1i, _wgslsmith_add_i32(-6509i, -var_0.b.x)) | global3.a.e.b, false, all(!(!select(global3.c.xzw, vec3<bool>(true, var_0.d, false), global3.c.zxx))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.a;
    global4 = array<i32, 32>();
    global4 = array<i32, 32>();
    let var_1 = func_1(-_wgslsmith_dot_vec3_i32(global3.a.c.wxx, vec3<i32>(-1i) * -global3.a.c.xyx), _wgslsmith_dot_vec3_i32(global3.a.c.ywz, ~(firstTrailingBit(global3.a.c.xzz) & min(vec3<i32>(global4[_wgslsmith_index_u32(global3.a.d, 32u)], global3.b, global3.b), vec3<i32>(global3.a.e.b.x, global4[_wgslsmith_index_u32(global3.a.d, 32u)], 0i)))));
    global3 = func_2();
    var var_2 = _wgslsmith_f_op_f32(func_2().a.e.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.a))));
    var var_3 = Struct_4(false);
    let var_4 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(global3.a.b.b.x, u_input.a, global4[_wgslsmith_index_u32(u_input.b, 32u)], var_1.b.x), global3.a.c, global3.a.c)) >> (select(_wgslsmith_add_vec4_u32(~vec4<u32>(global3.a.d, u_input.b, 81189u, u_input.b), reverseBits(vec4<u32>(68315u, 0u, 5144u, 64991u))), ~vec4<u32>(0u, 1u, 4294967295u, 63531u), vec4<bool>(true, all(vec4<bool>(true, false, var_4, false)), global3.d, true)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(~u_input.a, _wgslsmith_clamp_i32(u_input.a, global3.a.c.x, u_input.a)).a.x * _wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(global3.a.a + -816f))))), var_1.a, u_input.a, ~select(~vec4<u32>(1u, global3.a.d, 36120u, u_input.b), vec4<u32>(global3.a.d ^ global3.a.d, global3.a.d >> (4294967295u % 32u), ~33123u, global3.a.d ^ 31898u), true));
}

