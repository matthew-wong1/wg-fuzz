struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 7>;

var<private> global1: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(-1311f, vec3<bool>(false, false, false), vec3<bool>(true, false, true), Struct_1(true, 1u, 0u, 74012u, vec2<f32>(-173f, 348f))), Struct_2(-961f, vec3<bool>(true, true, false), vec3<bool>(false, false, true), Struct_1(true, 12368u, 0u, 5143u, vec2<f32>(-355f, -126f))), Struct_2(-805f, vec3<bool>(false, true, true), vec3<bool>(false, true, true), Struct_1(false, 10341u, 8351u, 4294967295u, vec2<f32>(496f, 2255f))), Struct_2(-148f, vec3<bool>(true, true, true), vec3<bool>(false, false, true), Struct_1(true, 1u, 0u, 0u, vec2<f32>(1251f, 520f))), Struct_2(-1056f, vec3<bool>(false, false, false), vec3<bool>(true, false, false), Struct_1(false, 4294967295u, 43515u, 37304u, vec2<f32>(-1165f, -893f))), Struct_2(480f, vec3<bool>(false, false, true), vec3<bool>(true, false, false), Struct_1(false, 1u, 0u, 22541u, vec2<f32>(646f, 691f))), Struct_2(119f, vec3<bool>(true, true, true), vec3<bool>(false, true, true), Struct_1(false, 0u, 11026u, 14440u, vec2<f32>(-1000f, 1911f))), Struct_2(1400f, vec3<bool>(false, false, false), vec3<bool>(true, false, false), Struct_1(false, 50360u, 1u, 0u, vec2<f32>(1000f, 400f))), Struct_2(745f, vec3<bool>(false, true, false), vec3<bool>(false, false, true), Struct_1(false, 64111u, 0u, 64677u, vec2<f32>(195f, 1278f))), Struct_2(864f, vec3<bool>(false, true, true), vec3<bool>(false, false, false), Struct_1(false, 11163u, 21619u, 14644u, vec2<f32>(-155f, 1557f))), Struct_2(503f, vec3<bool>(true, true, false), vec3<bool>(true, true, false), Struct_1(true, 29326u, 4294967295u, 41202u, vec2<f32>(-1000f, -772f))), Struct_2(1325f, vec3<bool>(true, true, true), vec3<bool>(false, true, false), Struct_1(true, 4294967295u, 1u, 7238u, vec2<f32>(-2402f, -1000f))), Struct_2(1938f, vec3<bool>(true, true, true), vec3<bool>(true, false, false), Struct_1(true, 4294967295u, 48663u, 1u, vec2<f32>(-1795f, -1526f))), Struct_2(-130f, vec3<bool>(false, true, false), vec3<bool>(false, false, true), Struct_1(true, 4294967295u, 21635u, 1u, vec2<f32>(-718f, -1974f))), Struct_2(248f, vec3<bool>(true, false, false), vec3<bool>(true, false, true), Struct_1(true, 21532u, 1u, 32563u, vec2<f32>(789f, 752f))), Struct_2(-3007f, vec3<bool>(false, false, true), vec3<bool>(false, true, true), Struct_1(false, 0u, 0u, 56095u, vec2<f32>(-322f, 989f))), Struct_2(559f, vec3<bool>(false, false, true), vec3<bool>(false, true, false), Struct_1(false, 39539u, 66477u, 15855u, vec2<f32>(205f, -1326f))), Struct_2(1708f, vec3<bool>(false, true, true), vec3<bool>(false, false, true), Struct_1(false, 4294967295u, 1u, 1u, vec2<f32>(226f, 1000f))), Struct_2(-1000f, vec3<bool>(true, false, false), vec3<bool>(true, true, false), Struct_1(false, 1u, 4849u, 1649u, vec2<f32>(-1252f, -130f))), Struct_2(-232f, vec3<bool>(false, false, true), vec3<bool>(true, true, true), Struct_1(false, 0u, 1u, 4294967295u, vec2<f32>(-2370f, -1286f))), Struct_2(-1127f, vec3<bool>(true, false, true), vec3<bool>(true, false, false), Struct_1(false, 98610u, 1u, 4294967295u, vec2<f32>(-1000f, 1681f))), Struct_2(1085f, vec3<bool>(false, true, true), vec3<bool>(false, false, true), Struct_1(false, 15835u, 0u, 19231u, vec2<f32>(-884f, -1034f))));

var<private> global2: array<Struct_1, 15>;

var<private> global3: vec3<f32> = vec3<f32>(1272f, 968f, 697f);

var<private> global4: Struct_2 = Struct_2(-174f, vec3<bool>(true, false, true), vec3<bool>(true, false, true), Struct_1(false, 48925u, 71964u, 45718u, vec2<f32>(-376f, 2450f)));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> bool {
    global3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(697f, 1833f, -1194f), _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(arg_0.b, 7u)])))) * _wgslsmith_div_vec3_f32(vec3<f32>(1369f, _wgslsmith_f_op_f32(-arg_0.e.x), 685f), vec3<f32>(_wgslsmith_f_op_f32(floor(global3.x)), global3.x, _wgslsmith_f_op_f32(821f - -2737f)))), _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0.d, min(1u, 125221u)), 7u)])));
    var var_0 = u_input.d.x;
    var var_1 = Struct_1(((0u >> (arg_0.c % 32u)) >> (countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 4294967295u), u_input.a)) % 32u)) >= _wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(u_input.e, 15554u, 16312u, u_input.a.x)), vec4<u32>(4294967295u, _wgslsmith_sub_u32(4294967295u, arg_0.b), 7392u, u_input.e)), u_input.e, ~u_input.b, min(1u & global4.d.b, u_input.b >> (4294967295u % 32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0.e.x), _wgslsmith_f_op_f32(-global3.x))));
    global0 = array<vec3<f32>, 7>();
    var var_2 = -vec2<i32>(firstTrailingBit(-(~u_input.d.x)), i32(-1i) * -1i);
    return any(vec4<bool>(arg_0.a & !(!arg_0.a), !all(vec4<bool>(arg_0.a, var_1.a, global4.b.x, var_1.a)) & false, (_wgslsmith_mod_i32(u_input.c, var_2.x) << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.d, var_1.d), vec2<u32>(var_1.c, global4.d.d)) % 32u)) > -1i, false));
}

fn func_4(arg_0: bool, arg_1: vec3<u32>, arg_2: bool, arg_3: Struct_2) -> vec3<bool> {
    return select(arg_3.c, !vec3<bool>(arg_0, true, false), select(false, true, !func_3(Struct_1(global4.b.x, u_input.e, 50152u, arg_3.d.d, vec2<f32>(global3.x, -386f))) && ((global4.c.x || false) & select(arg_2, false, arg_0))));
}

fn func_2() -> Struct_1 {
    let var_0 = vec4<bool>(true, !global4.c.x, select(true, all(select(!global4.b, !global4.c, global4.d.a)), !(all(vec3<bool>(global4.c.x, global4.d.a, global4.c.x)) & global4.d.a)), all(global4.c));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(max(global4.d.e.x, 1948f)), func_4(global4.c.x, _wgslsmith_add_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 1u, 17470u), u_input.a), ~(~u_input.a)), func_3(global2[_wgslsmith_index_u32(~(39957u | u_input.b), 15u)]), global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(3609u, 1u), 22u)]), global4.c, global4.d);
    let var_2 = Struct_1(var_0.x, global4.d.c, ~1u, 44056u, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(var_1.a * _wgslsmith_div_f32(var_1.a, var_1.a))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-510f)), var_1.d.e.x))));
    global0 = array<vec3<f32>, 7>();
    let var_3 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~reverseBits(select(vec4<u32>(global4.d.c, 24383u, var_2.b, 0u), vec4<u32>(var_1.d.c, global4.d.c, 31635u, u_input.a.x), var_0)), vec4<u32>(min(var_1.d.c, _wgslsmith_dot_vec2_u32(u_input.a.yy, u_input.a.xx)), 0u, ~global4.d.c, _wgslsmith_mult_u32(1u, abs(var_2.c)))), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(countOneBits(4294967295u), u_input.b, _wgslsmith_mod_u32(0u, var_2.c), _wgslsmith_mod_u32(11927u, 137342u)), firstTrailingBit(~vec4<u32>(32894u, var_2.c, 1u, u_input.b))), (vec4<u32>(u_input.b, var_1.d.d, 29421u, 92893u) >> (~vec4<u32>(var_1.d.d, 1u, 1u, 32972u) % vec4<u32>(32u))) ^ vec4<u32>(var_1.d.c | global4.d.d, max(4294967295u, 23241u), _wgslsmith_clamp_u32(u_input.b, 36574u, global4.d.c), var_2.d)));
    return var_1.d;
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    var var_0 = u_input.d.yz;
    let var_1 = vec2<i32>(~select(u_input.c, _wgslsmith_dot_vec2_i32(u_input.d.zy, u_input.d.yz), func_3(global4.d)), ~_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, var_0.x, 32969i, -33507i), vec4<i32>(29658i, u_input.d.x, -2147483647i, -2409i)), vec4<i32>(6515i, 40083i, 2147483647i, u_input.d.x))) & select(abs(-vec2<i32>(var_0.x, u_input.c)), u_input.d.yx, !(global4.d.e.x >= global3.x) || global4.b.x);
    global2 = array<Struct_1, 15>();
    let var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.d, u_input.d, vec3<i32>(_wgslsmith_mult_i32(var_1.x, var_0.x), _wgslsmith_div_i32(-591i, var_1.x), var_1.x)), u_input.d) > _wgslsmith_mult_i32(u_input.c, _wgslsmith_mult_i32(-375i, firstTrailingBit(var_1.x)));
    var var_3 = Struct_3(global0[_wgslsmith_index_u32(0u, 7u)], _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-919f, 878f) + arg_0.e))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(327f, _wgslsmith_f_op_f32(934f + _wgslsmith_div_f32(886f, -231f)))));
    return Struct_2(_wgslsmith_f_op_f32(-arg_0.e.x), func_4(true, ~select(select(vec3<u32>(47303u, 51938u, 10506u), vec3<u32>(arg_0.c, 19293u, 4294967295u), arg_0.a), vec3<u32>(global4.d.b, 0u, arg_0.b), true), firstTrailingBit(u_input.e & 0u) > ~_wgslsmith_mult_u32(0u, 1u), global1[_wgslsmith_index_u32(0u, 22u)]), !vec3<bool>(global4.d.a, any(select(vec4<bool>(var_2, global4.d.a, arg_0.a, var_2), vec4<bool>(var_2, true, false, var_2), vec4<bool>(true, true, true, false))), min(28936u, global4.d.b) >= global4.d.b), global4.d);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<u32>) -> Struct_2 {
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(3825u, 7u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.d.e.x, -1359f, global3.x) * vec3<f32>(global4.a, -777f, -1536f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], vec3<f32>(259f, -1615f, global4.d.e.x))))) * vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, -1205f)))), _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4.d.e.x), _wgslsmith_f_op_f32(global3.x * 1768f))))));
    var var_0 = -2147483647i;
    let var_1 = _wgslsmith_f_op_f32(-global3.x);
    var var_2 = vec4<bool>(all(select(select(vec2<bool>(global4.c.x, arg_0.x), !global4.c.yx, arg_0.x | arg_0.x), arg_0, vec2<bool>(arg_0.x, true))), all(select(arg_0, select(arg_0, vec2<bool>(global4.c.x, global4.b.x), vec2<bool>(arg_0.x, arg_0.x)), arg_0)), true, true);
    let var_3 = arg_0;
    return func_5(func_2());
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 7>();
    var var_0 = _wgslsmith_add_u32(17942u, ~(~(~_wgslsmith_add_u32(global4.d.d, u_input.e))));
    global2 = array<Struct_1, 15>();
    let var_1 = global4.b.x;
    global3 = global0[_wgslsmith_index_u32(0u, 7u)];
    let var_2 = func_1(select(!vec2<bool>(global4.c.x, any(vec4<bool>(global4.d.a, global4.b.x, false, global4.d.a))), vec2<bool>(true, true), global4.c.x), vec4<u32>(select(global4.d.d ^ 1u, global4.d.b, !global4.d.a), 1u, _wgslsmith_sub_u32(~(1u | global4.d.b), ~firstLeadingBit(u_input.b)), _wgslsmith_add_u32(u_input.b, 0u) | u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(~(global4.d.d & min(_wgslsmith_mod_u32(77399u, 4294967295u), 86903u)), u_input.d.x, -135f, ~global4.d.c);
}

