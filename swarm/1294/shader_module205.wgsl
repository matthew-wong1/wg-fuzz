struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 23> = array<vec3<i32>, 23>(vec3<i32>(1i, -1i, 2147483647i), vec3<i32>(2147483647i, -9725i, -30669i), vec3<i32>(-17818i, 15022i, i32(-2147483648)), vec3<i32>(-1i, -41863i, 0i), vec3<i32>(19367i, 37682i, 14499i), vec3<i32>(2147483647i, 18932i, 2147483647i), vec3<i32>(1i, -2675i, 1i), vec3<i32>(-14632i, i32(-2147483648), 19382i), vec3<i32>(-2030i, -20679i, i32(-2147483648)), vec3<i32>(28144i, -40029i, -14702i), vec3<i32>(-44585i, 1i, 2147483647i), vec3<i32>(-21633i, 0i, i32(-2147483648)), vec3<i32>(-1i, 0i, -1i), vec3<i32>(-22222i, i32(-2147483648), -11009i), vec3<i32>(1i, i32(-2147483648), -44094i), vec3<i32>(-17131i, -23085i, -10854i), vec3<i32>(0i, 2139i, i32(-2147483648)), vec3<i32>(1i, 1i, -1i), vec3<i32>(3058i, 2147483647i, 0i), vec3<i32>(0i, 0i, 19562i), vec3<i32>(-1i, 0i, 32113i), vec3<i32>(36317i, -1i, -1i), vec3<i32>(15487i, 30318i, -23667i));

var<private> global1: array<f32, 19> = array<f32, 19>(-257f, -1883f, -801f, 1686f, -1589f, -269f, 1015f, 464f, -792f, 753f, 723f, -1000f, -1269f, 331f, -1000f, 1000f, -471f, 1902f, 1042f);

var<private> global2: i32;

var<private> global3: vec3<bool>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> i32 {
    var var_0 = Struct_3(~(~countOneBits(u_input.b)) & _wgslsmith_add_u32(select(u_input.b << (103851u % 32u), 60142u, true), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.b, 21098u)), 20846u)), Struct_2(Struct_1(global1[_wgslsmith_index_u32(u_input.a, 19u)], -2147483647i, vec3<u32>(41562u, u_input.c, 1u))), Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(42707u, 19u)] * global1[_wgslsmith_index_u32(u_input.c, 19u)]))), 1i, ~vec3<u32>(u_input.b, 1u, u_input.b))));
    let var_1 = Struct_2(Struct_1(852f, var_0.b.a.b, var_0.b.a.c));
    global1 = array<f32, 19>();
    global1 = array<f32, 19>();
    let var_2 = -1219f;
    return select(max(reverseBits(~var_1.a.b), var_0.c.a.b), reverseBits(_wgslsmith_clamp_i32(1i, countOneBits(var_0.b.a.b), var_0.c.a.b)), true) & var_1.a.b;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: bool) -> f32 {
    global2 = -_wgslsmith_add_i32(arg_0.a.b | firstTrailingBit(arg_0.a.b), -42257i) | arg_0.a.b;
    var var_0 = ~_wgslsmith_clamp_vec4_i32(-vec4<i32>(-arg_0.a.b, arg_1.x >> (arg_0.a.c.x % 32u), 0i, countOneBits(arg_1.x)), max(~(vec4<i32>(arg_0.a.b, 1557i, 26027i, 828i) << (vec4<u32>(arg_0.a.c.x, u_input.b, u_input.a, u_input.c) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(-vec4<i32>(arg_1.x, arg_0.a.b, 1i, -30490i), vec4<i32>(arg_0.a.b, 13159i, arg_1.x, 2147483647i) ^ vec4<i32>(-34359i, 22003i, arg_0.a.b, arg_1.x))), vec4<i32>(-2147483647i, _wgslsmith_mod_i32(arg_0.a.b, func_3()), arg_1.x, arg_1.x));
    var var_1 = Struct_2(arg_0.a);
    global2 = ~((-28075i | _wgslsmith_mult_i32(-arg_1.x, firstTrailingBit(-30410i))) | arg_0.a.b);
    var var_2 = _wgslsmith_clamp_vec2_u32(var_1.a.c.zz, arg_0.a.c.xy, vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.c.x, u_input.c, 4294967295u, 46999u), vec4<u32>(arg_0.a.c.x, 1u, arg_0.a.c.x, 31487u)), abs(reverseBits(5491u))) | ~countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(arg_0.a.c.x, var_1.a.c.x))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.a) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1120f)), -223f))));
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_1(1000f, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(global0[_wgslsmith_index_u32(~u_input.a, 23u)], vec3<i32>(-258i, -37286i, 29147i), ~global0[_wgslsmith_index_u32(u_input.a, 23u)]) >> (_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b, u_input.b, 0u), firstTrailingBit(vec3<u32>(50170u, 4294967295u, u_input.a))) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_add_i32(2147483647i, 0i), 0i, ~(-2486i)), _wgslsmith_add_vec3_i32(select(global0[_wgslsmith_index_u32(40903u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)], vec3<bool>(global3.x, true, false)), abs(vec3<i32>(-1i, -1i, 0i))))), ~(~_wgslsmith_div_vec3_u32(vec3<u32>(27020u, u_input.c, 68739u), reverseBits(vec3<u32>(u_input.a, 1u, 35550u)))));
    global0 = array<vec3<i32>, 23>();
    global1 = array<f32, 19>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(u_input.b, 19u)], 1200f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f * -300f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(~0u, 19u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(countOneBits(u_input.b), 19u)] + _wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(304f, var_0.b, var_0.c)), global0[_wgslsmith_index_u32(var_0.c.x, 23u)], global3.x))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-var_0.a)))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(609f, 209f) * _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(9106u, 19u)])))) - -947f), 19541i, var_0.c);
    return Struct_3(0u, Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-346f, var_0.a, global3.x))), 1i, var_2.c << (var_0.c % vec3<u32>(32u)))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_0.a), func_3(), _wgslsmith_add_vec3_u32(vec3<u32>(7863u, u_input.c, 37976u), abs(var_0.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(-_wgslsmith_clamp_i32(reverseBits(1i), _wgslsmith_add_i32(~5520i, _wgslsmith_dot_vec2_i32(vec2<i32>(-10442i, 0i), vec2<i32>(-29713i, -10566i))), ~1756i), 1i, firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-23477i, 20614i), -28144i, -1i, _wgslsmith_clamp_i32(1i, 1i, -1i)), vec4<i32>(1i, 1i, 1i, 1i))), _wgslsmith_dot_vec4_i32(~(select(vec4<i32>(1i, 2147483647i, 0i, 2147483647i), vec4<i32>(22917i, -7323i, -32353i, 1564i), global3.x) & vec4<i32>(-32204i, -10058i, 12226i, -42780i)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 720i, -4783i, 77274i), abs(vec4<i32>(28198i, -2147483647i, 0i, 1i)))));
    let var_1 = vec3<bool>(true, true, true);
    global2 = countOneBits(1i) ^ _wgslsmith_dot_vec3_i32(abs(-var_0.xyy) & vec3<i32>(var_0.x, _wgslsmith_sub_i32(-13945i, -2884i), ~var_0.x), vec3<i32>(var_0.x, 30589i, 6746i));
    let var_2 = var_0.x;
    global1 = array<f32, 19>();
    var var_3 = func_1();
    var var_4 = Struct_3(4294967295u, Struct_2(var_3.c.a), func_1().b);
    var var_5 = 3276i;
    let x = u_input.a;
    s_output = StorageBuffer(~min(0u, ~var_3.c.a.c.x), -1i, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-341f + -1000f), _wgslsmith_f_op_f32(floor(-324f))))), 2147483647i, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(floor(1000f)), 496f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.c.a.a, global1[_wgslsmith_index_u32(var_3.b.a.c.x, 19u)]) * vec2<f32>(global1[_wgslsmith_index_u32(23659u, 19u)], -743f))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-858f, var_4.b.a.a) - vec2<f32>(var_3.c.a.a, var_3.c.a.a)) + vec2<f32>(-160f, global1[_wgslsmith_index_u32(54154u, 19u)])))), vec2<bool>(false, true))));
}

