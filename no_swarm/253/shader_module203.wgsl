struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25>;

var<private> global1: u32 = 67904u;

var<private> global2: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(Struct_1(vec2<bool>(false, true), vec3<i32>(16453i, 0i, 10642i)), 0u), Struct_2(Struct_1(vec2<bool>(true, true), vec3<i32>(-25529i, i32(-2147483648), 2147483647i)), 0u), Struct_2(Struct_1(vec2<bool>(false, false), vec3<i32>(-1i, -19722i, -64967i)), 44096u), Struct_2(Struct_1(vec2<bool>(true, false), vec3<i32>(24494i, 9895i, i32(-2147483648))), 23611u), Struct_2(Struct_1(vec2<bool>(true, true), vec3<i32>(-1i, 0i, 2147483647i)), 2523u), Struct_2(Struct_1(vec2<bool>(true, false), vec3<i32>(2147483647i, 0i, 1i)), 71956u), Struct_2(Struct_1(vec2<bool>(false, true), vec3<i32>(-7267i, 25755i, 5022i)), 0u), Struct_2(Struct_1(vec2<bool>(true, true), vec3<i32>(-19021i, 2147483647i, 1i)), 0u), Struct_2(Struct_1(vec2<bool>(true, false), vec3<i32>(i32(-2147483648), 2147483647i, 1i)), 11444u), Struct_2(Struct_1(vec2<bool>(true, true), vec3<i32>(-16246i, 2147483647i, i32(-2147483648))), 1u), Struct_2(Struct_1(vec2<bool>(true, false), vec3<i32>(46606i, 2405i, i32(-2147483648))), 0u), Struct_2(Struct_1(vec2<bool>(false, false), vec3<i32>(2147483647i, 0i, 17336i)), 12524u), Struct_2(Struct_1(vec2<bool>(false, false), vec3<i32>(-1i, -61462i, i32(-2147483648))), 0u), Struct_2(Struct_1(vec2<bool>(true, false), vec3<i32>(-14976i, i32(-2147483648), 29421i)), 21820u), Struct_2(Struct_1(vec2<bool>(false, false), vec3<i32>(0i, -41698i, 26035i)), 467u), Struct_2(Struct_1(vec2<bool>(false, false), vec3<i32>(1i, 15811i, 21750i)), 71721u));

var<private> global3: u32 = 1u;

var<private> global4: array<u32, 11>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> bool {
    global1 = global4[_wgslsmith_index_u32(max(~select(~(global4[_wgslsmith_index_u32(u_input.c, 11u)] << (52046u % 32u)), ~0u, !any(vec2<bool>(false, true))), 4294967295u), 11u)];
    global3 = u_input.a.x;
    let var_0 = Struct_2(Struct_1(vec2<bool>(true, true), firstTrailingBit(vec3<i32>(2147483647i, 1i, ~(-1i)))), countOneBits(~u_input.c));
    let var_1 = Struct_2(Struct_1(!(!select(vec2<bool>(false, var_0.a.a.x), vec2<bool>(var_0.a.a.x, false), var_0.a.a)), -vec3<i32>(firstLeadingBit(11797i), _wgslsmith_dot_vec2_i32(u_input.d, var_0.a.b.xx), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, var_0.a.b.x, var_0.a.b.x, -2147483647i), vec4<i32>(u_input.b, var_0.a.b.x, 0i, -10410i)))), global4[_wgslsmith_index_u32(~50289u, 11u)]);
    let var_2 = vec2<u32>(23188u, 4294967295u);
    return any(select(var_1.a.a, var_0.a.a, var_0.a.a));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: u32) -> u32 {
    global0 = array<Struct_2, 25>();
    var var_0 = arg_0.a;
    var var_1 = arg_0.a;
    global2 = array<Struct_2, 16>();
    let var_2 = -(~var_1.b.xx >> (select(_wgslsmith_sub_vec2_u32(vec2<u32>(15398u, 0u) << (vec2<u32>(1u, global4[_wgslsmith_index_u32(22614u, 11u)]) % vec2<u32>(32u)), ~u_input.e.yy), abs(~u_input.e.yx), arg_0.a.a.x) % vec2<u32>(32u)));
    return ~4294967295u;
}

fn func_2(arg_0: vec4<u32>) -> Struct_2 {
    global2 = array<Struct_2, 16>();
    var var_0 = global0[_wgslsmith_index_u32(abs(func_4(Struct_2(Struct_1(vec2<bool>(false, false), vec3<i32>(u_input.b, u_input.d.x, u_input.d.x)), 1u), global0[_wgslsmith_index_u32(arg_0.x, 25u)], vec3<bool>(select(false, true, true), func_3(), all(vec4<bool>(true, false, true, true))), 7878u)) & 4294967295u, 25u)];
    global3 = ~(~1u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(28233u << (1u % 32u), 4294967295u, _wgslsmith_div_u32(0u, 4294967295u)), u_input.e));
    let var_1 = Struct_1(var_0.a.a, abs(vec3<i32>(18812i | _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.b.x, var_0.a.b.x, 5098i, var_0.a.b.x), vec4<i32>(-28874i, -1i, 27384i, var_0.a.b.x)), -var_0.a.b.x, 60199i)));
    global2 = array<Struct_2, 16>();
    return global2[_wgslsmith_index_u32(1u, 16u)];
}

fn func_1() -> bool {
    let var_0 = func_2(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(65476u, 60834u, 1u, 4294967295u), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(34278u, 1u, u_input.e.x, 4294967295u), vec4<u32>(44826u, global4[_wgslsmith_index_u32(4294967295u, 11u)], 1u, u_input.c)), ~vec4<u32>(u_input.a.x, 52877u, global4[_wgslsmith_index_u32(80323u, 11u)], u_input.a.x), _wgslsmith_div_vec4_u32(vec4<u32>(0u, global4[_wgslsmith_index_u32(u_input.e.x, 11u)], global4[_wgslsmith_index_u32(4294967295u, 11u)], 14258u), vec4<u32>(u_input.a.x, u_input.c, 70796u, 0u))), _wgslsmith_sub_vec4_u32(~vec4<u32>(global4[_wgslsmith_index_u32(1u, 11u)], 44413u, u_input.a.x, u_input.c), ~vec4<u32>(29399u, 4294967295u, u_input.a.x, 19691u))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(29591u, u_input.e.x, global4[_wgslsmith_index_u32(0u, 11u)], global4[_wgslsmith_index_u32(3594u, 11u)]), vec4<u32>(1u, 4294967295u, 4294967295u, u_input.c)) ^ vec4<u32>(~69868u, u_input.c, global4[_wgslsmith_index_u32(u_input.e.x, 11u)], _wgslsmith_mult_u32(4294967295u, global4[_wgslsmith_index_u32(1u, 11u)]))));
    let var_1 = Struct_2(Struct_1(vec2<bool>(var_0.a.a.x, true), var_0.a.b), 0u);
    global1 = _wgslsmith_clamp_u32(27911u, ~_wgslsmith_sub_u32(0u, 0u), 0u);
    global1 = _wgslsmith_clamp_u32(min(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(34144u, 11u)], 85249u, 34148u), max(vec3<u32>(10483u, 1u, u_input.e.x) ^ u_input.e, vec3<u32>(u_input.c, 0u, 34330u)))), ~85522u, ~global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(var_1.b, var_0.b) & 1u, var_0.b), 11u)]);
    global1 = ~_wgslsmith_add_u32(_wgslsmith_mod_u32(~(~57332u), 41958u), ~var_0.b);
    return any(var_1.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<u32, 11>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1970f, 1748f, 372f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(810f, -156f, -1857f) * vec3<f32>(-507f, 1000f, 1185f))))));
    global3 = global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~max(abs(u_input.a.x), _wgslsmith_add_u32(35438u, abs(~u_input.a.x))), 11u)], 11u)];
    let var_1 = Struct_2(Struct_1(!vec2<bool>(any(vec2<bool>(true, false)), u_input.d.x >= u_input.d.x), select(vec3<i32>(16095i, countOneBits(u_input.b), u_input.b), vec3<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, -55819i, u_input.b), vec4<i32>(2147483647i, u_input.d.x, u_input.d.x, 0i)), u_input.d.x), func_1())), func_2(vec4<u32>(func_4(Struct_2(Struct_1(vec2<bool>(true, false), vec3<i32>(u_input.b, 0i, u_input.d.x)), 13832u), Struct_2(Struct_1(vec2<bool>(false, true), vec3<i32>(u_input.d.x, -46279i, u_input.d.x)), global4[_wgslsmith_index_u32(u_input.e.x, 11u)]), vec3<bool>(false, true, true), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(48552u, 11u)], 11u)]), 23040u, u_input.e.x, 1u)).b | global4[_wgslsmith_index_u32(func_2(select(select(vec4<u32>(global4[_wgslsmith_index_u32(u_input.e.x, 11u)], u_input.a.x, 0u, 27520u), vec4<u32>(u_input.a.x, 23379u, 1u, 4294967295u), false), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(61181u, 11u)], 11u)], 11u)], 11u)], global4[_wgslsmith_index_u32(1u, 11u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.c, 11u)], 11u)], 11u)], 11u)]), vec4<u32>(4294967295u, 1u, 9867u, global4[_wgslsmith_index_u32(4294967295u, 11u)])), u_input.b >= u_input.d.x)).b, 11u)]);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(var_1.a.b.x, -52492i, 34143i, -30781i)), select(vec4<i32>(u_input.b, var_1.a.b.x, 1310i, var_1.a.b.x), vec4<i32>(2147483647i, 1i, 31069i, u_input.b), var_1.a.a.x)) >> ((countOneBits(~u_input.e.x) << (_wgslsmith_div_u32(12822u, abs(u_input.e.x)) % 32u)) % 32u), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_0))), var_0)), var_0, vec3<bool>(_wgslsmith_f_op_f32(ceil(696f)) == -2901f, !(false | var_1.a.a.x), var_1.a.a.x))), select(~firstTrailingBit(max(vec4<i32>(var_1.a.b.x, 0i, var_1.a.b.x, var_1.a.b.x), vec4<i32>(u_input.d.x, 53754i, var_1.a.b.x, var_1.a.b.x))), -vec4<i32>(29894i, reverseBits(1i), 1i, _wgslsmith_add_i32(var_1.a.b.x, -37901i)), !(!vec4<bool>(var_1.a.a.x, var_1.a.a.x, true, true))), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 86681u), vec2<u32>(0u, u_input.c)) << (u_input.a % vec2<u32>(32u)), u_input.a), 10763u));
}

