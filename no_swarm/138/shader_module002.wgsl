struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<bool>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
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

var<private> global0: array<vec4<u32>, 17> = array<vec4<u32>, 17>(vec4<u32>(1u, 28891u, 30088u, 4294967295u), vec4<u32>(56694u, 4294967295u, 4294967295u, 71997u), vec4<u32>(1u, 4294967295u, 1u, 51708u), vec4<u32>(35392u, 1u, 1u, 1u), vec4<u32>(23594u, 68923u, 0u, 24639u), vec4<u32>(80650u, 61252u, 68876u, 4294967295u), vec4<u32>(27190u, 86936u, 43200u, 0u), vec4<u32>(109317u, 38220u, 18264u, 147659u), vec4<u32>(66564u, 124242u, 2122u, 63435u), vec4<u32>(0u, 29888u, 32909u, 4294967295u), vec4<u32>(22341u, 4832u, 1u, 0u), vec4<u32>(1u, 3042u, 4294967295u, 4294967295u), vec4<u32>(54576u, 0u, 0u, 4294967295u), vec4<u32>(58426u, 4294967295u, 4294967295u, 34747u), vec4<u32>(63183u, 1u, 71768u, 0u), vec4<u32>(1u, 0u, 4294967295u, 81841u), vec4<u32>(24950u, 51435u, 4294967295u, 47749u));

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec4<u32>(1u, 105970u, 20656u, 4294967295u), vec4<i32>(3397i, 2147483647i, 2147483647i, 1i), vec2<bool>(true, false), 23962u), Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 116042u), vec4<i32>(8610i, -1i, i32(-2147483648), 0i), vec2<bool>(true, true), 9112u), Struct_1(vec4<u32>(83358u, 24665u, 13632u, 24719u), vec4<i32>(1i, i32(-2147483648), -14339i, i32(-2147483648)), vec2<bool>(true, true), 4294967295u), Struct_1(vec4<u32>(0u, 0u, 4294967295u, 1u), vec4<i32>(-5728i, 49275i, -57837i, 26679i), vec2<bool>(false, false), 42008u), Struct_1(vec4<u32>(61853u, 48391u, 75728u, 1952u), vec4<i32>(20788i, 0i, 19539i, 31759i), vec2<bool>(true, true), 48663u), Struct_1(vec4<u32>(0u, 4294967295u, 25225u, 4294967295u), vec4<i32>(-6257i, -6152i, 0i, -4994i), vec2<bool>(true, true), 37294u), Struct_1(vec4<u32>(1u, 1u, 30848u, 1u), vec4<i32>(-20749i, 54336i, -1i, 1i), vec2<bool>(true, true), 0u), Struct_1(vec4<u32>(1u, 48053u, 9025u, 20355u), vec4<i32>(0i, -1i, -46277i, i32(-2147483648)), vec2<bool>(false, false), 1u), Struct_1(vec4<u32>(36906u, 2293u, 63342u, 4294967295u), vec4<i32>(19498i, 0i, 50296i, 10634i), vec2<bool>(true, true), 5406u), Struct_1(vec4<u32>(0u, 10006u, 19477u, 26377u), vec4<i32>(-41738i, 2147483647i, i32(-2147483648), i32(-2147483648)), vec2<bool>(false, true), 43743u), Struct_1(vec4<u32>(1u, 12757u, 4294967295u, 26852u), vec4<i32>(1i, 30896i, -12072i, 12504i), vec2<bool>(false, true), 4294967295u), Struct_1(vec4<u32>(0u, 7399u, 0u, 0u), vec4<i32>(-45145i, -16110i, 40344i, 15296i), vec2<bool>(true, false), 0u), Struct_1(vec4<u32>(99169u, 68815u, 19957u, 0u), vec4<i32>(1i, 1i, -36613i, 2147483647i), vec2<bool>(false, true), 1u), Struct_1(vec4<u32>(68207u, 1u, 4294967295u, 0u), vec4<i32>(-22859i, 2147483647i, -14478i, 2147483647i), vec2<bool>(false, true), 67364u), Struct_1(vec4<u32>(0u, 4294967295u, 4294967295u, 24662u), vec4<i32>(2147483647i, 0i, i32(-2147483648), i32(-2147483648)), vec2<bool>(false, false), 1u), Struct_1(vec4<u32>(1u, 35879u, 926u, 4294967295u), vec4<i32>(0i, 77672i, 1i, -32063i), vec2<bool>(false, true), 1u), Struct_1(vec4<u32>(0u, 1u, 72823u, 1u), vec4<i32>(43459i, 49380i, -1i, 2147483647i), vec2<bool>(false, true), 56381u), Struct_1(vec4<u32>(210u, 0u, 30237u, 8864u), vec4<i32>(-44723i, 0i, 19587i, -63017i), vec2<bool>(false, false), 0u), Struct_1(vec4<u32>(9246u, 46752u, 0u, 49353u), vec4<i32>(15382i, -17968i, -15169i, 0i), vec2<bool>(false, false), 1u), Struct_1(vec4<u32>(29646u, 1u, 0u, 38305u), vec4<i32>(0i, 2147483647i, 9975i, 26055i), vec2<bool>(false, true), 14798u), Struct_1(vec4<u32>(1u, 4294967295u, 1u, 48305u), vec4<i32>(19337i, 2147483647i, 2147483647i, 17222i), vec2<bool>(true, false), 0u), Struct_1(vec4<u32>(57397u, 3577u, 1u, 4035u), vec4<i32>(18978i, 1i, -1i, i32(-2147483648)), vec2<bool>(true, true), 0u), Struct_1(vec4<u32>(4294967295u, 39313u, 69674u, 4294967295u), vec4<i32>(12981i, 13018i, 19922i, 2437i), vec2<bool>(true, true), 542u), Struct_1(vec4<u32>(0u, 3559u, 43555u, 18416u), vec4<i32>(-17347i, -37571i, 1i, -95971i), vec2<bool>(false, true), 1u), Struct_1(vec4<u32>(4294967295u, 0u, 1u, 15595u), vec4<i32>(-1i, 43450i, i32(-2147483648), 61604i), vec2<bool>(false, true), 16880u), Struct_1(vec4<u32>(1u, 306u, 4294967295u, 28050u), vec4<i32>(-18540i, 2147483647i, -1i, 2147483647i), vec2<bool>(false, true), 4230u), Struct_1(vec4<u32>(16499u, 73404u, 71554u, 11473u), vec4<i32>(1i, i32(-2147483648), 2147483647i, -23651i), vec2<bool>(false, false), 35764u), Struct_1(vec4<u32>(0u, 1u, 3967u, 34560u), vec4<i32>(44851i, -16361i, i32(-2147483648), 20781i), vec2<bool>(true, true), 4294967295u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> vec4<i32> {
    let var_0 = ~(global1.a.zyw >> (abs(_wgslsmith_mult_vec3_u32(global1.a.zxx, vec3<u32>(global1.d, 64068u, u_input.a))) % vec3<u32>(32u))) & ~global1.a.xzw;
    return -vec4<i32>(abs(-u_input.c), max((i32(-1i) * -9622i) | u_input.e, global1.b.x), u_input.c, global1.b.x);
}

fn func_2() -> i32 {
    global1 = Struct_1(vec4<u32>(~u_input.a, abs(30293u), u_input.a, _wgslsmith_div_u32(1u, ~0u ^ global1.d)), func_3(), select(!(!(!vec2<bool>(global1.c.x, false))), !(!vec2<bool>(global1.c.x, global1.c.x)), select(!all(vec4<bool>(global1.c.x, global1.c.x, false, false)), false, global1.c.x)), 103699u << (~_wgslsmith_clamp_u32(1u, min(4294967295u, global1.a.x), abs(u_input.d)) % 32u));
    var var_0 = !global1.c.x;
    global2 = array<Struct_1, 28>();
    let var_1 = Struct_1(~vec4<u32>(~(~u_input.d), abs(0u), global1.d, ~u_input.d), max(reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.e, global1.b.x, global1.b.x, global1.b.x), global1.b) >> (vec4<u32>(u_input.a, global1.a.x, u_input.a, 14448u) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(-(global1.b << (vec4<u32>(u_input.a, 1u, u_input.d, 4294967295u) % vec4<u32>(32u))), vec4<i32>(~u_input.c, u_input.c, 1i, global1.b.x >> (u_input.a % 32u)))), global1.c, _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(global1.a.x, 17u)], firstLeadingBit(vec4<u32>(~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global1.d), global1.a.yy), select(global1.d, 1u, true), _wgslsmith_clamp_u32(0u, 3603u, u_input.d)))));
    return _wgslsmith_mult_i32(i32(-1i) * -2147483647i, max(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(i32(-1i) * -31475i, 9567i), abs(firstTrailingBit(-25577i)), -_wgslsmith_mult_i32(global1.b.x, var_1.b.x)), max(var_1.b.x, 19311i)));
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = 48949u;
    let var_1 = Struct_1(firstTrailingBit(((vec4<u32>(16118u, 0u, u_input.d, 83163u) << (vec4<u32>(4294967295u, var_0, 4294967295u, 1u) % vec4<u32>(32u))) ^ global1.a) | vec4<u32>(global1.d ^ global1.a.x, u_input.d, 1u, ~85556u)), vec4<i32>(func_2(), u_input.c, -min(-1i, u_input.b), u_input.c) ^ (global1.b >> (~firstTrailingBit(vec4<u32>(var_0, var_0, 73098u, u_input.a)) % vec4<u32>(32u))), global1.c, global1.a.x);
    var var_2 = Struct_1(firstLeadingBit(~global0[_wgslsmith_index_u32(65904u >> (u_input.d % 32u), 17u)]), -vec4<i32>(~global1.b.x, _wgslsmith_mult_i32(global1.b.x, u_input.e), _wgslsmith_add_i32(var_1.b.x, ~var_1.b.x), -2147483647i), vec2<bool>(true, true), ~(~(var_0 ^ u_input.d) | var_0));
    var_2 = Struct_1(~global0[_wgslsmith_index_u32(var_0, 17u)], vec4<i32>(var_1.b.x, var_1.b.x, -(~var_2.b.x), ~_wgslsmith_add_i32(37601i, ~(-1i))), !(!vec2<bool>(all(vec3<bool>(var_2.c.x, true, false)), var_1.c.x)), firstTrailingBit(~_wgslsmith_add_u32(global1.a.x << (4294967295u % 32u), 2517u)));
    let var_3 = Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u >> (_wgslsmith_add_u32(~global1.a.x, 57561u) % 32u), u_input.a), 17u)], vec4<i32>(-2147483647i, var_1.b.x, -1i, ~countOneBits(var_2.b.x)), vec2<bool>(!(!global1.c.x && var_1.c.x), false), 12577u);
    return Struct_1(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(abs(global1.a ^ vec4<u32>(var_2.a.x, 18082u, 0u, 1u)), var_3.a), ~abs(global1.a << (vec4<u32>(var_3.d, 38521u, 4294967295u, 16629u) % vec4<u32>(32u))), var_2.a), var_1.b, select(!select(global1.c, select(var_1.c, global1.c, false), all(vec2<bool>(var_2.c.x, var_1.c.x))), var_1.c, false), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-430f + -155f), 1242f))));
    global2 = array<Struct_1, 28>();
    global2 = array<Struct_1, 28>();
    var var_0 = Struct_1(global0[_wgslsmith_index_u32(~(~1u), 17u)], global1.b, global1.c, ~select(abs(~global1.d), 44375u, ~2147483647i != (u_input.c ^ global1.b.x)));
    var var_1 = -427f;
    var var_2 = var_0.b ^ vec4<i32>(abs(22595i), 10486i, func_3().x, _wgslsmith_div_i32(var_0.b.x >> (global1.d % 32u), -firstTrailingBit(var_0.b.x)));
    let var_3 = vec4<bool>((14701u < var_0.d) & any(select(var_0.c, vec2<bool>(true, true), select(var_0.c, global1.c, var_0.c.x))), _wgslsmith_div_i32(abs(9227i | var_0.b.x), 0i) > _wgslsmith_sub_i32(2147483647i, countOneBits(-1i)), (~(~var_0.a.x) > ((global1.a.x >> (0u % 32u)) & select(0u, var_0.d, false))) || select(var_0.c.x, var_0.d >= 1u, true), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-501f))))) - 1309f), -2147483647i, -276f, countOneBits(var_0.a.x));
}

