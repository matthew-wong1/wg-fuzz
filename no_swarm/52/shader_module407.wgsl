struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: Struct_1,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
    e: i32,
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

var<private> global0: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(Struct_1(vec2<bool>(false, true), 1i, -897f, vec3<u32>(56993u, 9563u, 4294967295u)), 4294967295u, i32(-2147483648)), Struct_3(Struct_1(vec2<bool>(false, true), -33578i, 309f, vec3<u32>(0u, 0u, 5449u)), 4294967295u, 1i), Struct_3(Struct_1(vec2<bool>(false, true), 2147483647i, 1170f, vec3<u32>(82939u, 37415u, 4294967295u)), 82289u, 0i), Struct_3(Struct_1(vec2<bool>(false, false), -42442i, 1218f, vec3<u32>(1u, 48691u, 39820u)), 0u, 0i), Struct_3(Struct_1(vec2<bool>(true, true), 26092i, 358f, vec3<u32>(4294967295u, 0u, 57048u)), 11775u, 2147483647i), Struct_3(Struct_1(vec2<bool>(false, true), 9502i, 1000f, vec3<u32>(1u, 0u, 4294967295u)), 80516u, 2147483647i), Struct_3(Struct_1(vec2<bool>(false, false), -1i, 1524f, vec3<u32>(4294967295u, 23194u, 101394u)), 1u, -74073i), Struct_3(Struct_1(vec2<bool>(false, false), -7981i, -1250f, vec3<u32>(1u, 4294967295u, 28634u)), 38362u, -14162i), Struct_3(Struct_1(vec2<bool>(false, true), 2147483647i, 1316f, vec3<u32>(1u, 79232u, 18206u)), 42572u, 2147483647i), Struct_3(Struct_1(vec2<bool>(true, false), 19515i, 563f, vec3<u32>(38809u, 32631u, 0u)), 0u, 13073i), Struct_3(Struct_1(vec2<bool>(true, false), 1i, 464f, vec3<u32>(0u, 0u, 1u)), 1u, -93164i), Struct_3(Struct_1(vec2<bool>(false, true), 2147483647i, -304f, vec3<u32>(4294967295u, 4294967295u, 4294967295u)), 52950u, 0i), Struct_3(Struct_1(vec2<bool>(true, false), 57758i, 100f, vec3<u32>(0u, 13890u, 0u)), 0u, 2147483647i), Struct_3(Struct_1(vec2<bool>(false, false), i32(-2147483648), 794f, vec3<u32>(11415u, 1u, 11210u)), 4294967295u, -13384i), Struct_3(Struct_1(vec2<bool>(true, true), -18830i, 1116f, vec3<u32>(16030u, 32351u, 77712u)), 4294967295u, 1i), Struct_3(Struct_1(vec2<bool>(true, false), 4877i, 705f, vec3<u32>(15717u, 56078u, 4294967295u)), 4294967295u, -9155i), Struct_3(Struct_1(vec2<bool>(true, false), -5622i, -647f, vec3<u32>(23994u, 55368u, 0u)), 16986u, 2147483647i), Struct_3(Struct_1(vec2<bool>(true, false), -27304i, 1090f, vec3<u32>(64540u, 1u, 6148u)), 30701u, 0i), Struct_3(Struct_1(vec2<bool>(false, false), 2147483647i, 220f, vec3<u32>(0u, 51534u, 3877u)), 0u, -25795i), Struct_3(Struct_1(vec2<bool>(false, false), -19772i, 183f, vec3<u32>(0u, 1u, 80302u)), 74892u, 1i), Struct_3(Struct_1(vec2<bool>(true, true), 21431i, -908f, vec3<u32>(28957u, 38250u, 29669u)), 0u, 1i), Struct_3(Struct_1(vec2<bool>(true, true), 34136i, 781f, vec3<u32>(4294967295u, 60283u, 10902u)), 14681u, -1i), Struct_3(Struct_1(vec2<bool>(true, false), -1748i, -1168f, vec3<u32>(1u, 4294967295u, 4294967295u)), 0u, -1i), Struct_3(Struct_1(vec2<bool>(true, false), -12705i, -343f, vec3<u32>(63770u, 4294967295u, 24979u)), 68651u, -12802i), Struct_3(Struct_1(vec2<bool>(true, false), -25692i, 235f, vec3<u32>(1u, 59440u, 1008u)), 109203u, -3413i), Struct_3(Struct_1(vec2<bool>(false, false), -17140i, 1650f, vec3<u32>(1u, 30862u, 66551u)), 54666u, 1i), Struct_3(Struct_1(vec2<bool>(false, true), 2147483647i, -1145f, vec3<u32>(4939u, 52973u, 84612u)), 1u, 32569i), Struct_3(Struct_1(vec2<bool>(false, false), -1i, -1145f, vec3<u32>(0u, 1u, 1u)), 4294967295u, 22557i), Struct_3(Struct_1(vec2<bool>(false, false), 57211i, -201f, vec3<u32>(44133u, 13750u, 0u)), 4294967295u, 1i), Struct_3(Struct_1(vec2<bool>(true, false), 25510i, 822f, vec3<u32>(1u, 1u, 23599u)), 1278u, 0i));

var<private> global1: Struct_3;

var<private> global2: Struct_3 = Struct_3(Struct_1(vec2<bool>(false, true), 678i, 1528f, vec3<u32>(4294967295u, 2074u, 0u)), 19966u, 0i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> vec3<u32> {
    global1 = global0[_wgslsmith_index_u32(~(global1.a.d.x << (global2.b % 32u)), 30u)];
    let var_0 = 1i;
    let var_1 = ~27678i;
    var var_2 = _wgslsmith_mult_u32(abs(29555u), ~global1.a.d.x << (_wgslsmith_add_u32(36336u, ~global2.a.d.x) % 32u));
    return vec3<u32>(_wgslsmith_mod_u32(25248u, 4294967295u), ~u_input.b.x, u_input.b.x);
}

fn func_3() -> u32 {
    global0 = array<Struct_3, 30>();
    global0 = array<Struct_3, 30>();
    global1 = global0[_wgslsmith_index_u32(1834u, 30u)];
    var var_0 = global1.a;
    let var_1 = Struct_2(~((_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.d.x, 11720u), vec2<u32>(11624u, 118227u)) & vec2<u32>(u_input.d, 0u)) ^ ~vec2<u32>(30964u, 27701u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.a.c, global2.a.c, -1843f, 1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(174f, 1242f, -1540f, var_0.c) * vec4<f32>(215f, 189f, global2.a.c, 1950f)), true)) + vec4<f32>(_wgslsmith_f_op_f32(ceil(global1.a.c)), -753f, -595f, _wgslsmith_div_f32(var_0.c, global2.a.c))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(global1.a.c + _wgslsmith_f_op_f32(-global2.a.c)), -307f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global2.a.c, var_0.c))))), global1.a, abs(reverseBits(-_wgslsmith_add_vec3_i32(vec3<i32>(global1.c, 1i, 1i), vec3<i32>(-2147483647i, 6490i, u_input.e)))), vec4<i32>(global1.c, _wgslsmith_div_i32(~global2.a.b, global1.c | u_input.a) ^ 0i, ~var_0.b, ~(~(~u_input.a))));
    return global1.a.d.x;
}

fn func_1(arg_0: f32) -> vec3<u32> {
    global2 = Struct_3(global1.a, 19711u, global2.c);
    let var_0 = ~(~func_2() << (vec3<u32>(~(~u_input.b.x), func_3(), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 39694u, global2.b, global1.a.d.x), vec4<u32>(global2.a.d.x, 26263u, u_input.b.x, u_input.c.x))) % vec3<u32>(32u)));
    let var_1 = _wgslsmith_dot_vec3_i32(abs(~select(-vec3<i32>(u_input.e, global2.a.b, global1.c), abs(vec3<i32>(u_input.a, global2.c, -20921i)), vec3<bool>(global2.a.a.x, global1.a.a.x, false))), vec3<i32>(3679i, u_input.e, ~abs(global1.c | -30128i)));
    var var_2 = !select(select(select(select(vec4<bool>(global2.a.a.x, true, true, false), vec4<bool>(true, false, global1.a.a.x, true), vec4<bool>(global2.a.a.x, true, global2.a.a.x, global1.a.a.x)), vec4<bool>(false, false, false, global1.a.a.x), true), !select(vec4<bool>(global2.a.a.x, false, false, global2.a.a.x), vec4<bool>(global2.a.a.x, true, true, true), vec4<bool>(true, false, global2.a.a.x, true)), global2.a.a.x || select(false, global2.a.a.x, global2.a.a.x)), select(select(vec4<bool>(true, false, false, false), !vec4<bool>(true, global1.a.a.x, global2.a.a.x, global2.a.a.x), vec4<bool>(global1.a.a.x, global1.a.a.x, true, global2.a.a.x)), vec4<bool>(global1.a.a.x, var_0.x > 13877u, true, true), !select(vec4<bool>(global1.a.a.x, true, global2.a.a.x, global2.a.a.x), vec4<bool>(false, true, true, global1.a.a.x), global2.a.a.x)), any(select(select(vec2<bool>(global2.a.a.x, false), vec2<bool>(true, global1.a.a.x), vec2<bool>(false, global2.a.a.x)), select(global2.a.a, vec2<bool>(true, global1.a.a.x), false), !vec2<bool>(global1.a.a.x, global1.a.a.x))));
    global1 = global0[_wgslsmith_index_u32(global2.b, 30u)];
    return abs(vec3<u32>(1u, 14973u, 19518u));
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(~(~(~vec2<i32>(-1i, global1.c))), min(-vec2<i32>(-1940i, global1.c), vec2<i32>(-2147483647i, -28994i)) ^ ~max(vec2<i32>(global2.a.b, -39598i), vec2<i32>(-21392i, u_input.e))), _wgslsmith_sub_vec2_i32(select(abs(vec2<i32>(u_input.a, global1.c)), select(firstLeadingBit(vec2<i32>(0i, global1.c)), ~vec2<i32>(-2147483647i, 2147483647i), all(global1.a.a)), global1.a.a.x), -firstTrailingBit(~vec2<i32>(45029i, u_input.a))));
    global1 = arg_2;
    global1 = Struct_3(Struct_1(select(vec2<bool>(arg_1.x, false), select(select(arg_1.xx, vec2<bool>(global2.a.a.x, false), vec2<bool>(global2.a.a.x, global2.a.a.x)), global2.a.a, arg_1.xx), select(select(arg_2.a.a, global1.a.a, false), select(global2.a.a, arg_2.a.a, arg_1.x), arg_2.a.a.x)), ~max(~var_0.x, -54155i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.c * -567f))), vec3<u32>((u_input.c.x | 1u) & (global1.b ^ arg_0), abs(global1.a.d.x & 0u), abs(4294967295u))), _wgslsmith_sub_u32(66350u, 1u), abs(global2.a.b));
    global0 = array<Struct_3, 30>();
    let var_1 = !vec2<bool>(global2.a.a.x, true);
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global1.a.a.x;
    var var_1 = func_4(select(~(~countOneBits(u_input.d)), 0u, !global2.a.a.x), vec4<bool>(false && !(u_input.a == 45535i), !all(!vec4<bool>(false, false, false, global2.a.a.x)), !any(vec2<bool>(global2.a.a.x, global1.a.a.x)), all(select(vec4<bool>(false, global2.a.a.x, global2.a.a.x, global1.a.a.x), vec4<bool>(global1.a.a.x, global2.a.a.x, false, true), select(vec4<bool>(global1.a.a.x, true, true, true), vec4<bool>(global2.a.a.x, true, false, true), vec4<bool>(global2.a.a.x, false, false, true))))), Struct_3(Struct_1(global1.a.a, u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -436f), ~func_1(global1.a.c)), global1.b, _wgslsmith_mult_i32(select(global2.a.b, global1.a.b, global2.a.a.x) << ((global2.b >> (global1.a.d.x % 32u)) % 32u), -11773i)));
    var_0 = global2.a.a.x;
    global0 = array<Struct_3, 30>();
    var var_2 = _wgslsmith_mod_u32(min(abs(51820u), 4294967295u), global2.b);
    let var_3 = Struct_3(Struct_1(select(vec2<bool>(true, true), vec2<bool>(!global1.a.a.x, !global2.a.a.x), global1.a.a), ~(-21610i), _wgslsmith_f_op_f32(floor(global2.a.c)), func_4(10944u, select(select(vec4<bool>(true, global1.a.a.x, var_1.a.x, global2.a.a.x), vec4<bool>(global1.a.a.x, global1.a.a.x, false, true), vec4<bool>(true, true, var_1.a.x, var_1.a.x)), vec4<bool>(true, var_1.a.x, true, global2.a.a.x), select(vec4<bool>(global1.a.a.x, global1.a.a.x, false, false), vec4<bool>(false, false, global2.a.a.x, false), vec4<bool>(global2.a.a.x, true, true, global1.a.a.x))), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(global2.a.d.x, u_input.d, global2.b, global1.b), vec4<u32>(var_1.d.x, 0u, 25224u, 39920u)), 30u)]).d), ~21283u, countOneBits(global1.c));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x);
}

