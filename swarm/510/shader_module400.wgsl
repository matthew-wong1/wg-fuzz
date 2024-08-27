struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<bool>,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<f32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec2<i32>(-33914i, -1i), vec3<u32>(8158u, 4294967295u, 4014u)), Struct_1(vec2<i32>(69523i, 20191i), vec3<u32>(1160u, 1u, 61901u)), Struct_1(vec2<i32>(-1i, -11656i), vec3<u32>(57759u, 4294967295u, 6976u)), Struct_1(vec2<i32>(0i, -880i), vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_1(vec2<i32>(i32(-2147483648), 1i), vec3<u32>(28363u, 0u, 22769u)), Struct_1(vec2<i32>(-10561i, 1i), vec3<u32>(35992u, 19719u, 5050u)), Struct_1(vec2<i32>(15621i, -13066i), vec3<u32>(4294967295u, 1u, 32872u)), Struct_1(vec2<i32>(2147483647i, 41522i), vec3<u32>(1u, 0u, 4294967295u)), Struct_1(vec2<i32>(2147483647i, -1i), vec3<u32>(0u, 51179u, 4294967295u)), Struct_1(vec2<i32>(0i, 51274i), vec3<u32>(1480u, 1563u, 4294967295u)), Struct_1(vec2<i32>(4247i, -1i), vec3<u32>(1u, 95766u, 7080u)), Struct_1(vec2<i32>(-26546i, -1i), vec3<u32>(44900u, 12747u, 4294967295u)), Struct_1(vec2<i32>(84415i, 0i), vec3<u32>(12246u, 4294967295u, 0u)), Struct_1(vec2<i32>(7640i, -23472i), vec3<u32>(1u, 7199u, 0u)), Struct_1(vec2<i32>(-444i, 1i), vec3<u32>(0u, 1u, 47571u)), Struct_1(vec2<i32>(24346i, 20881i), vec3<u32>(29761u, 73076u, 2159u)), Struct_1(vec2<i32>(2236i, 14760i), vec3<u32>(15526u, 1u, 17034u)), Struct_1(vec2<i32>(2147483647i, -1i), vec3<u32>(4294967295u, 0u, 42377u)));

var<private> global1: u32 = 15310u;

var<private> global2: array<f32, 3> = array<f32, 3>(-1823f, 2932f, 458f);

var<private> global3: array<vec2<i32>, 11>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec4<u32> {
    global2 = array<f32, 3>();
    let var_0 = true;
    let var_1 = Struct_1(_wgslsmith_div_vec2_i32(min(min(min(global3[_wgslsmith_index_u32(u_input.a, 11u)], vec2<i32>(u_input.b.x, u_input.b.x)), -vec2<i32>(0i, u_input.b.x)), global3[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 11u)]), vec2<i32>(~u_input.b.x, u_input.b.x) ^ vec2<i32>(~u_input.b.x, abs(u_input.b.x))), ~vec3<u32>(~(~1u), _wgslsmith_sub_u32(1u, ~u_input.a), ~1u));
    var var_2 = vec2<bool>(var_0, true);
    global1 = 1u;
    return vec4<u32>(~reverseBits(var_1.b.x), u_input.a, var_1.b.x, u_input.a) | ~vec4<u32>(u_input.a, _wgslsmith_mult_u32(u_input.a << (4294967295u % 32u), u_input.a), ~_wgslsmith_add_u32(0u, 4294967295u), u_input.a);
}

fn func_2(arg_0: Struct_4) -> Struct_2 {
    var var_0 = arg_0;
    var var_1 = ~(~((vec4<u32>(4294967295u, u_input.a, 1u, u_input.a) | vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) & vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) >> (~_wgslsmith_mod_vec4_u32(func_3(), vec4<u32>(4294967295u, 4294967295u, u_input.a, u_input.a)) % vec4<u32>(32u)));
    let var_2 = Struct_2(~_wgslsmith_sub_u32(8843u, var_1.x), Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.b.wyx), -u_input.b.www), 2147483647i), var_1.yzy), Struct_1(abs(vec2<i32>(-2147483647i, 11353i) << (_wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.a), var_1.wz) % vec2<u32>(32u))), var_1.zwz), select(vec2<bool>(!any(vec3<bool>(false, true, false)), ~u_input.b.x <= -48644i), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec3<bool>(true, true, true))), u_input.a <= (min(1u, u_input.a) | 4294967295u)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstLeadingBit(35260u), _wgslsmith_dot_vec2_u32(firstLeadingBit(var_1.yz), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 37878u), vec2<u32>(u_input.a, u_input.a))) | 4294967295u), 18u)]);
    var var_3 = global0[_wgslsmith_index_u32(~var_2.a, 18u)];
    var var_4 = vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(56527u, var_1.x >> (1u % 32u)), 0u, firstTrailingBit(countOneBits(_wgslsmith_dot_vec3_u32(var_2.c.b, var_1.wwz)))), 4294967295u, abs(1u), var_1.x);
    return var_2;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_2, arg_3: vec4<i32>) -> i32 {
    global0 = array<Struct_1, 18>();
    global2 = array<f32, 3>();
    global2 = array<f32, 3>();
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2[_wgslsmith_index_u32(u_input.a, 3u)], global2[_wgslsmith_index_u32(1u, 3u)], -269f, 398f)))), vec4<f32>(-422f, _wgslsmith_f_op_f32(arg_1 * 1232f), -559f, _wgslsmith_f_op_f32(abs(1069f))))) * vec4<f32>(_wgslsmith_f_op_f32(-arg_1), arg_1, -185f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1418u, 3u)] + 1079f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(409f, 254f, global2[_wgslsmith_index_u32(25899u, 3u)])) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2[_wgslsmith_index_u32(24595u, 3u)], 934f, -1942f)))) + vec3<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_2.b.b.x, 3u)] * arg_1), _wgslsmith_f_op_f32(step(arg_1, 844f)), _wgslsmith_div_f32(121f, arg_1)))));
    let var_1 = func_3().wx;
    return max(~(1i ^ func_2(Struct_4(var_0.a, vec3<f32>(var_0.a.x, var_0.a.x, -1472f))).e.a.x), 229i);
}

fn func_1() -> Struct_4 {
    var var_0 = Struct_3(Struct_1(vec2<i32>(_wgslsmith_sub_i32(~u_input.b.x, u_input.b.x), func_4(_wgslsmith_dot_vec3_i32(u_input.b.yyw, vec3<i32>(0i, u_input.b.x, u_input.b.x)), -438f, func_2(Struct_4(vec4<f32>(global2[_wgslsmith_index_u32(u_input.a, 3u)], 188f, 516f, global2[_wgslsmith_index_u32(u_input.a, 3u)]), vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 3u)], global2[_wgslsmith_index_u32(u_input.a, 3u)], global2[_wgslsmith_index_u32(0u, 3u)]))), max(vec4<i32>(-1i, 35748i, 26387i, u_input.b.x), u_input.b))), ~select(vec3<u32>(u_input.a, 1u, 6303u), ~vec3<u32>(u_input.a, 37849u, 40344u), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)))), Struct_2(u_input.a, global0[_wgslsmith_index_u32(u_input.a & 1u, 18u)], func_2(Struct_4(_wgslsmith_div_vec4_f32(vec4<f32>(-1349f, -1099f, global2[_wgslsmith_index_u32(u_input.a, 3u)], 467f), vec4<f32>(global2[_wgslsmith_index_u32(u_input.a, 3u)], global2[_wgslsmith_index_u32(u_input.a, 3u)], global2[_wgslsmith_index_u32(25590u, 3u)], 127f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 3u)], global2[_wgslsmith_index_u32(14719u, 3u)], 827f)))).c, vec2<bool>(u_input.b.x > ~(-52379i), -1357f <= global2[_wgslsmith_index_u32(u_input.a, 3u)]), Struct_1(vec2<i32>(countOneBits(-60739i), u_input.b.x), min(vec3<u32>(u_input.a, 72494u, 61873u), vec3<u32>(13152u, u_input.a, u_input.a)))), vec4<bool>(select(func_2(Struct_4(vec4<f32>(global2[_wgslsmith_index_u32(30934u, 3u)], global2[_wgslsmith_index_u32(0u, 3u)], global2[_wgslsmith_index_u32(0u, 3u)], -1214f), vec3<f32>(-461f, -1026f, global2[_wgslsmith_index_u32(u_input.a, 3u)]))).d.x, !any(vec2<bool>(true, true)), all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), true))), func_2(Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(1u, 3u)], 301f, -225f, global2[_wgslsmith_index_u32(28096u, 3u)]) * vec4<f32>(-1000f, global2[_wgslsmith_index_u32(u_input.a, 3u)], global2[_wgslsmith_index_u32(0u, 3u)], 1162f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 3u)], 1012f, global2[_wgslsmith_index_u32(4294967295u, 3u)]), vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 3u)], global2[_wgslsmith_index_u32(u_input.a, 3u)], global2[_wgslsmith_index_u32(28769u, 3u)]))))).d.x, _wgslsmith_mod_u32(~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(70917u, 14637u), vec2<u32>(4294967295u, u_input.a))) > ~u_input.a, global2[_wgslsmith_index_u32(u_input.a, 3u)] >= _wgslsmith_f_op_f32(289f - _wgslsmith_f_op_f32(floor(-1000f)))), -200f, func_2(Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2[_wgslsmith_index_u32(10380u, 3u)], global2[_wgslsmith_index_u32(u_input.a, 3u)], global2[_wgslsmith_index_u32(u_input.a, 3u)], 301f), vec4<f32>(-996f, global2[_wgslsmith_index_u32(1u, 3u)], global2[_wgslsmith_index_u32(u_input.a, 3u)], global2[_wgslsmith_index_u32(1u, 3u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-867f, -1000f, global2[_wgslsmith_index_u32(0u, 3u)]) - vec3<f32>(global2[_wgslsmith_index_u32(1u, 3u)], 878f, global2[_wgslsmith_index_u32(u_input.a, 3u)]))))).e);
    let var_1 = Struct_4(vec4<f32>(_wgslsmith_div_f32(-880f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(0u, 3u)])))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-128f, _wgslsmith_f_op_f32(min(-326f, -491f))), -2011f)), var_0.d, _wgslsmith_f_op_f32(f32(-1f) * -341f)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 53621u), 3u)] + global2[_wgslsmith_index_u32(var_0.a.b.x, 3u)]), _wgslsmith_div_f32(var_0.d, -1013f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1668f + -264f)))), vec3<f32>(_wgslsmith_f_op_f32(floor(-120f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(4294967295u, 3u)], global2[_wgslsmith_index_u32(0u, 3u)]) * _wgslsmith_f_op_f32(-var_0.d)), global2[_wgslsmith_index_u32(56481u, 3u)])));
    let var_2 = Struct_5(!var_0.c.www, var_0.b);
    global1 = u_input.a;
    var var_3 = -1402f;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global2 = array<f32, 3>();
    global3 = array<vec2<i32>, 11>();
    var var_1 = 110f;
    var var_2 = _wgslsmith_f_op_f32(-891f - -866f);
    let x = u_input.a;
    s_output = StorageBuffer(max(vec4<i32>(u_input.b.x & u_input.b.x, 1181i, u_input.b.x, u_input.b.x), u_input.b) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(~u_input.a, ~0u, u_input.a, u_input.a), abs(vec4<u32>(24330u, 58817u, u_input.a, u_input.a) << (vec4<u32>(u_input.a, u_input.a, 9915u, 1u) % vec4<u32>(32u)))) % vec4<u32>(32u)), vec3<i32>(_wgslsmith_sub_i32(min(~2147483647i, _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_div_i32(_wgslsmith_sub_i32(-45678i, -2147483647i), u_input.b.x)), ~(-select(u_input.b.x, u_input.b.x, false)), 1i), 25108u, vec3<f32>(func_1().b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), var_0.a.x));
}

