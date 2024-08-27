struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<i32, 5>;

var<private> global2: Struct_2 = Struct_2(vec3<u32>(21872u, 51642u, 4294967295u), vec2<i32>(0i, -4330i), vec3<u32>(1u, 18673u, 16785u));

var<private> global3: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec4<bool>(false, true, true, true), vec2<f32>(-331f, 402f), true), Struct_1(vec4<bool>(false, false, false, true), vec2<f32>(331f, -868f), true), Struct_1(vec4<bool>(false, false, true, false), vec2<f32>(555f, 270f), false), Struct_1(vec4<bool>(true, true, false, true), vec2<f32>(-1000f, -107f), true), Struct_1(vec4<bool>(true, true, false, true), vec2<f32>(-803f, 164f), false), Struct_1(vec4<bool>(false, true, false, true), vec2<f32>(2514f, -1297f), true), Struct_1(vec4<bool>(false, true, false, true), vec2<f32>(-129f, 180f), false), Struct_1(vec4<bool>(false, false, true, true), vec2<f32>(1343f, -798f), false), Struct_1(vec4<bool>(false, true, true, false), vec2<f32>(-2027f, 168f), false), Struct_1(vec4<bool>(true, true, false, false), vec2<f32>(124f, -213f), true), Struct_1(vec4<bool>(true, true, false, false), vec2<f32>(1000f, 1000f), true), Struct_1(vec4<bool>(false, true, false, true), vec2<f32>(1101f, -599f), false), Struct_1(vec4<bool>(true, false, true, false), vec2<f32>(-593f, -1000f), true), Struct_1(vec4<bool>(false, false, true, true), vec2<f32>(-1000f, 134f), false), Struct_1(vec4<bool>(false, false, false, false), vec2<f32>(613f, 842f), true), Struct_1(vec4<bool>(false, true, false, false), vec2<f32>(-1444f, -986f), false));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    return firstTrailingBit(~2801u);
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    var var_0 = Struct_2(reverseBits(vec3<u32>(countOneBits(0u), global2.c.x, ~arg_0.c.x) >> (firstTrailingBit(firstLeadingBit(global0.a)) % vec3<u32>(32u))), _wgslsmith_mult_vec2_i32(global2.b, arg_2.b), ~vec3<u32>(_wgslsmith_dot_vec2_u32(~u_input.b.zz, vec2<u32>(5764u, u_input.d)), 4294967295u, 53379u));
    var var_1 = global2.c.zz;
    global0 = Struct_2(vec3<u32>(71574u, ~func_3(!vec2<bool>(false, arg_1)), firstTrailingBit(~28573u)), ~select(_wgslsmith_div_vec2_i32(~global0.b, -vec2<i32>(-40963i, -893i)), firstTrailingBit(-vec2<i32>(1854i, 13349i)), vec2<bool>(any(arg_3.a), global0.b.x <= var_0.b.x)), ~vec3<u32>(4734u, 12456u, _wgslsmith_clamp_u32(0u, ~global0.c.x, 0u)));
    var var_2 = _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(arg_0.a.x, var_1.x, 11721u, global0.c.x)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(25422u, global2.a.x, 0u, 49756u), min(vec4<u32>(0u, 4294967295u, global2.c.x, 4294967295u), vec4<u32>(var_0.c.x, arg_2.c.x, u_input.d, global2.a.x)) ^ vec4<u32>(4294967295u, 1u, global2.c.x, global0.a.x), ~(~vec4<u32>(31574u, u_input.b.x, var_1.x, global0.a.x))), ~_wgslsmith_sub_vec4_u32(select(vec4<u32>(global0.a.x, var_1.x, 4294967295u, u_input.b.x), vec4<u32>(global0.a.x, arg_2.c.x, u_input.d, 80670u), false), reverseBits(vec4<u32>(68531u, arg_0.c.x, 1u, 40530u)))), ~firstLeadingBit(reverseBits(vec4<u32>(u_input.d, 1u, 1u, u_input.d))) & ~select(vec4<u32>(26457u, 63503u, arg_0.c.x, 5165u), ~vec4<u32>(4294967295u, arg_2.a.x, arg_2.a.x, 11852u), arg_0.c.x <= 72484u));
    var var_3 = -53600i;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_3.b.x)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_3.b.x)))))));
}

fn func_1(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_2) -> f32 {
    global3 = array<Struct_1, 16>();
    global3 = array<Struct_1, 16>();
    var var_0 = global3[_wgslsmith_index_u32(u_input.b.x, 16u)];
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(global2.a.x, _wgslsmith_dot_vec4_u32(~countOneBits(~vec4<u32>(61858u, global2.c.x, 50126u, global2.c.x)), vec4<u32>(select(73989u, _wgslsmith_mult_u32(global0.a.x, u_input.b.x), true), ~4294967295u, ~countOneBits(global0.c.x), ~u_input.b.x >> (24723u % 32u)))), 16u)];
    global2 = Struct_2(vec3<u32>(global0.c.x, ~1u, 18685u), vec2<i32>(1i, ~2147483647i >> (((global2.c.x ^ 1u) << (1u % 32u)) % 32u)), ~vec3<u32>(arg_2.a.x, u_input.b.x, u_input.b.x));
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1972f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(arg_2, false, Struct_2(vec3<u32>(u_input.d, 81424u, global2.c.x), global0.b, vec3<u32>(global0.c.x, 41246u, 57368u)), Struct_1(vec4<bool>(arg_0.x, var_1.c, true, true), vec2<f32>(var_0.b.x, -903f), false))) + var_0.b.x) * var_1.b.x)), _wgslsmith_f_op_f32(sign(-206f)));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: u32, arg_3: vec4<f32>) -> Struct_2 {
    return Struct_2(global0.c, global2.b, _wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(4294967295u, u_input.b.x, 77618u)));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: u32) -> u32 {
    let var_0 = Struct_2(~(~vec3<u32>(global0.c.x, abs(global2.c.x), firstLeadingBit(1u))), -global2.b, ~(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_3, arg_1.x, global2.a.x), global0.c))));
    global0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-317f + -1169f), _wgslsmith_f_op_f32(func_2(var_0, false, Struct_2(global0.c, vec2<i32>(global1[_wgslsmith_index_u32(70065u, 5u)], var_0.b.x), global2.c), Struct_1(vec4<bool>(false, false, false, true), vec2<f32>(1032f, arg_0.x), false))))) - arg_0.x) * arg_0.x), Struct_1(vec4<bool>(!all(vec3<bool>(true, false, true)), arg_0.x > _wgslsmith_f_op_f32(f32(-1f) * -954f), true, true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_0)), vec2<f32>(_wgslsmith_f_op_f32(max(arg_0.x, arg_0.x)), arg_0.x)), _wgslsmith_dot_vec2_u32(~global2.c.yx, _wgslsmith_mult_vec2_u32(arg_1.xw, global2.a.yy)) > reverseBits(_wgslsmith_clamp_u32(arg_1.x, 6734u, arg_2.c.x))), ~(~min(~u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, var_0.c.x, global0.a.x, 1u), vec4<u32>(arg_1.x, 1u, 37527u, 4294967295u)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(217f, arg_0.x, -455f, -220f)) * _wgslsmith_div_vec4_f32(vec4<f32>(835f, arg_0.x, arg_0.x, arg_0.x), vec4<f32>(arg_0.x, 1847f, 1871f, -657f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-503f, 667f, 481f, arg_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.x, 151f, 2412f, 1198f)))))), any(vec2<bool>(true, true)))));
    global1 = array<i32, 5>();
    var var_1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1962f + arg_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -1131f)))), Struct_1(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true), true), vec2<f32>(_wgslsmith_f_op_f32(max(-218f, _wgslsmith_f_op_f32(f32(-1f) * -420f))), -1220f), true), 4294967295u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - arg_0.x))));
    let var_2 = all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, u_input.b.x == 18935u, global0.a.x <= arg_1.x, true), max(var_0.b.x, global0.b.x) < _wgslsmith_dot_vec2_i32(vec2<i32>(-52922i, -10893i), u_input.a))) | any(vec2<bool>(any(vec3<bool>(true, false, false)), true));
    return arg_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 5>();
    global0 = Struct_2(countOneBits(~global0.c), ~u_input.c.zx, ~(~u_input.b));
    let var_0 = func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1529f))), _wgslsmith_f_op_f32(-1174f - -1000f))), vec4<u32>(u_input.b.x & ~(~global2.a.x), ~(~global2.c.x), 8657u, u_input.b.x), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<bool>(false, false, false), true, Struct_2(vec3<u32>(1u, global2.c.x, 42593u), vec2<i32>(1i, global0.b.x), global2.a)))), global3[_wgslsmith_index_u32(4294967295u, 16u)], 1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1076f, 1000f, -686f, 3416f) - vec4<f32>(-318f, -1559f, -1452f, 1251f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-612f, -839f, 1629f, 1386f) + vec4<f32>(-137f, -315f, 1472f, 1017f))))), _wgslsmith_add_u32(1u, 31655u));
    var var_1 = _wgslsmith_f_op_f32(sign(499f));
    global3 = array<Struct_1, 16>();
    let var_2 = ~14763u;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(func_1(vec3<bool>(true, false, false), true, func_4(1000f, Struct_1(vec4<bool>(true, true, true, false), vec2<f32>(-321f, 432f), false), 0u, vec4<f32>(-1000f, 504f, -595f, 1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2387f, -1616f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(556f - 382f)))), _wgslsmith_div_vec3_f32(vec3<f32>(-595f, 240f, _wgslsmith_f_op_f32(-972f + 808f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1177f, 1334f, -843f), vec3<f32>(-1216f, -518f, 213f)))))), true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(1i, min(-27676i, global2.b.x >> (var_0 % 32u)), _wgslsmith_mod_i32(min(global0.b.x, u_input.a.x), -26650i & global2.b.x)) << (vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, 0u, 79824u), vec4<u32>(119173u, global2.c.x, 96320u, u_input.b.x)), ~var_2, ~global0.a.x) % vec3<u32>(32u)), (~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, global0.c.x, var_2, var_0), vec4<u32>(u_input.d, var_2, 1u, 4294967295u)) ^ ~(~vec4<u32>(var_2, var_2, global0.a.x, 4294967295u))) >> (firstLeadingBit(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_0, global2.a.x, 49457u), vec4<u32>(1u, 118232u, 0u, 25303u))) % vec4<u32>(32u)), -324f, ((_wgslsmith_sub_u32(var_2, 0u) ^ 1u) & (~u_input.d | global2.a.x)) & var_0, 60742i & ((func_4(-660f, global3[_wgslsmith_index_u32(25622u, 16u)], 21372u, vec4<f32>(var_3.x, var_3.x, 1000f, var_3.x)).b.x | u_input.a.x) & _wgslsmith_add_i32(u_input.a.x, -4839i)));
}

