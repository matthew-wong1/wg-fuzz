struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
    c: vec3<f32>,
    d: f32,
    e: u32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_3,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 8> = array<vec4<u32>, 8>(vec4<u32>(0u, 4294967295u, 41173u, 1u), vec4<u32>(20502u, 35788u, 1u, 4294967295u), vec4<u32>(6830u, 22106u, 50486u, 51981u), vec4<u32>(0u, 1u, 0u, 13226u), vec4<u32>(18896u, 26950u, 93877u, 0u), vec4<u32>(4294967295u, 27235u, 27736u, 4294967295u), vec4<u32>(87548u, 4294967295u, 0u, 12157u), vec4<u32>(71278u, 18925u, 20822u, 0u));

var<private> global1: vec3<u32> = vec3<u32>(8889u, 1u, 4294967295u);

var<private> global2: array<Struct_4, 26> = array<Struct_4, 26>(Struct_4(-1i, vec3<bool>(false, true, false), vec3<f32>(339f, 792f, -1000f), 166f, 1u), Struct_4(2147483647i, vec3<bool>(true, false, true), vec3<f32>(329f, -539f, -680f), 1187f, 12111u), Struct_4(-1i, vec3<bool>(true, true, true), vec3<f32>(-405f, 237f, -1263f), 415f, 15097u), Struct_4(i32(-2147483648), vec3<bool>(true, false, false), vec3<f32>(1218f, -2303f, 1127f), -516f, 1u), Struct_4(2388i, vec3<bool>(false, false, false), vec3<f32>(-906f, 622f, -973f), 405f, 0u), Struct_4(0i, vec3<bool>(true, false, false), vec3<f32>(243f, -639f, 281f), 864f, 1u), Struct_4(1i, vec3<bool>(false, true, true), vec3<f32>(894f, -1578f, 946f), 1313f, 1u), Struct_4(16694i, vec3<bool>(false, true, true), vec3<f32>(1486f, 308f, -1454f), -722f, 1u), Struct_4(2147483647i, vec3<bool>(true, false, false), vec3<f32>(487f, 1148f, 574f), -1000f, 1u), Struct_4(0i, vec3<bool>(false, true, false), vec3<f32>(-1080f, -495f, -281f), -621f, 4294967295u), Struct_4(i32(-2147483648), vec3<bool>(true, false, false), vec3<f32>(-322f, -283f, -258f), 2933f, 53316u), Struct_4(43772i, vec3<bool>(false, false, true), vec3<f32>(-615f, 690f, -525f), -320f, 1u), Struct_4(i32(-2147483648), vec3<bool>(false, true, true), vec3<f32>(-787f, 448f, -449f), 577f, 1u), Struct_4(20486i, vec3<bool>(false, false, false), vec3<f32>(-1705f, -398f, 503f), -103f, 73891u), Struct_4(21321i, vec3<bool>(true, false, true), vec3<f32>(216f, -1221f, 1000f), 355f, 57325u), Struct_4(-10742i, vec3<bool>(true, false, true), vec3<f32>(-778f, -732f, 173f), -371f, 4294967295u), Struct_4(i32(-2147483648), vec3<bool>(true, false, true), vec3<f32>(157f, 634f, -732f), -267f, 1u), Struct_4(-1i, vec3<bool>(false, false, false), vec3<f32>(1313f, -116f, -850f), -247f, 0u), Struct_4(2147483647i, vec3<bool>(true, true, false), vec3<f32>(874f, 775f, -797f), 746f, 8450u), Struct_4(i32(-2147483648), vec3<bool>(true, true, true), vec3<f32>(-287f, -428f, 271f), 1778f, 4294967295u), Struct_4(2147483647i, vec3<bool>(false, true, false), vec3<f32>(-1564f, -568f, 370f), 430f, 54962u), Struct_4(1i, vec3<bool>(false, false, false), vec3<f32>(1000f, -103f, 814f), -560f, 59236u), Struct_4(-33404i, vec3<bool>(true, true, false), vec3<f32>(643f, -1474f, 641f), -149f, 1u), Struct_4(1i, vec3<bool>(false, true, false), vec3<f32>(-1061f, 433f, 493f), 2169f, 1u), Struct_4(2147483647i, vec3<bool>(false, true, false), vec3<f32>(-737f, 160f, 896f), 1359f, 4294967295u), Struct_4(i32(-2147483648), vec3<bool>(false, true, true), vec3<f32>(421f, 1491f, -304f), 1000f, 0u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_4) -> u32 {
    var var_0 = max(_wgslsmith_add_i32(_wgslsmith_add_i32(-1i >> ((global1.x ^ global1.x) % 32u), -1i << (arg_2.e % 32u)), _wgslsmith_sub_i32(1i >> (abs(global1.x) % 32u), max(-arg_2.a, reverseBits(arg_2.a)))), reverseBits(~_wgslsmith_dot_vec4_i32(max(vec4<i32>(29180i, arg_2.a, arg_2.a, -1i), vec4<i32>(arg_2.a, arg_2.a, u_input.a, 2147483647i)), ~vec4<i32>(u_input.b, -24664i, arg_2.a, u_input.b))));
    let var_1 = firstTrailingBit(vec4<i32>(~(-2147483647i), ~(~arg_2.a), 2147483647i, -u_input.a)) & select(vec4<i32>(arg_2.a, u_input.a, abs(u_input.a), u_input.a) ^ vec4<i32>(arg_2.a, -1955i, u_input.b, u_input.b), -_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(59478i, arg_2.a, u_input.a, u_input.b)), vec4<i32>(arg_2.a, 2147483647i, arg_2.a, arg_2.a), ~vec4<i32>(-2147483647i, arg_2.a, u_input.a, u_input.a)), !(!all(arg_2.b)));
    let var_2 = !arg_1;
    var_0 = ~_wgslsmith_mod_i32(-57180i, var_1.x);
    global1 = ~(~(~select(~vec3<u32>(global1.x, global1.x, 47645u), ~vec3<u32>(global1.x, 4294967295u, 4294967295u), arg_2.b.x)));
    return ~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(global1.x, arg_2.e, global1.x)), vec3<u32>(global1.x, 1u, global1.x) >> (_wgslsmith_div_vec3_u32(vec3<u32>(global1.x, arg_2.e, 4294967295u), vec3<u32>(34127u, global1.x, 0u)) % vec3<u32>(32u))) << ((global1.x | global1.x) % 32u);
}

fn func_2() -> vec3<bool> {
    var var_0 = global1.x;
    var var_1 = Struct_5(global0[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(4294967295u, global1.x) & 63883u), 8u)], Struct_3(~_wgslsmith_clamp_u32(func_3(-1769f, false, global2[_wgslsmith_index_u32(global1.x, 26u)]), _wgslsmith_add_u32(global1.x, global1.x), _wgslsmith_clamp_u32(10591u, 45713u, global1.x))), 25474u);
    global2 = array<Struct_4, 26>();
    var var_2 = Struct_3(~0u);
    var var_3 = true;
    return !(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4) -> Struct_4 {
    let var_0 = countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, _wgslsmith_clamp_i32(arg_0.a, 21813i, reverseBits(arg_0.a)), abs(arg_1.a)), vec3<i32>(~(-4722i), -countOneBits(arg_0.a), -arg_1.a >> (_wgslsmith_mult_u32(4294967295u, arg_0.e) % 32u))));
    global0 = array<vec4<u32>, 8>();
    var var_1 = arg_1;
    var var_2 = var_1.b.x;
    let var_3 = vec2<u32>(_wgslsmith_sub_u32((max(0u, arg_1.e) >> (_wgslsmith_add_u32(0u, var_1.e) % 32u)) << (0u % 32u), var_1.e), (reverseBits(_wgslsmith_mod_u32(4294967295u, arg_0.e)) >> (20355u % 32u)) | (~firstLeadingBit(arg_0.e) | 1u));
    return global2[_wgslsmith_index_u32(_wgslsmith_div_u32(45289u, _wgslsmith_mult_u32(~firstLeadingBit(_wgslsmith_clamp_u32(global1.x, 67359u, 23866u)), select(~(~34640u), 1u, true))), 26u)];
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    global2 = array<Struct_4, 26>();
    var var_0 = func_4(Struct_4(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(1i, u_input.a, -27123i), u_input.a), select(vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(false, true)), u_input.b == u_input.b, all(vec2<bool>(false, true))), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-681f, -517f, 558f) - vec3<f32>(821f, 326f, -704f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, -1000f, -1308f)))))), -279f, global1.x), Struct_4(-_wgslsmith_mod_i32(-2147483647i, 0i & u_input.a), func_2(), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(788f, -1163f, 758f) - vec3<f32>(1788f, -1637f, 277f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1056f, 184f, -498f))))), _wgslsmith_f_op_f32(1097f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(756f * 493f))), ~reverseBits(arg_0.x >> (global1.x % 32u))));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1009f, _wgslsmith_f_op_f32(var_0.c.x * -403f)) * _wgslsmith_f_op_vec2_f32(var_0.c.yy - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.c.xx * var_0.c.zy)))), var_0.c.yx, all(func_2().zy)));
    global2 = array<Struct_4, 26>();
    var var_2 = var_0.c;
    return Struct_1(_wgslsmith_f_op_vec2_f32(-func_4(global2[_wgslsmith_index_u32(39068u ^ global1.x, 26u)], global2[_wgslsmith_index_u32(~(global1.x & 4294967295u), 26u)]).c.zx), ~(~arg_0.x) ^ ~arg_0.x, _wgslsmith_f_op_f32(var_1.x * 1273f), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(abs(1i), var_0.a, 74653i), vec3<i32>(firstLeadingBit(var_0.a), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.b, u_input.a, var_0.a), vec4<i32>(4235i, u_input.b, -47856i, u_input.a)), -55076i)), -vec3<i32>(-54813i, _wgslsmith_mult_i32(var_0.a, u_input.a), u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~global1.yz);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) + _wgslsmith_f_op_f32(f32(-1f) * -717f));
    global1 = _wgslsmith_mod_vec3_u32(vec3<u32>(88032u, _wgslsmith_clamp_u32(~1u, global1.x, 4294967295u), 106434u), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(global1.x, 4294967295u, 1u)), vec3<u32>(~0u, 0u, 49802u))) & ~vec3<u32>(~var_0.b, abs(var_0.b), abs(18971u));
    let var_2 = ~min(vec3<u32>(reverseBits(~0u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(62033u, var_0.b), global1.xy), var_0.b), abs((vec3<u32>(var_0.b, 1u, 4294967295u) & vec3<u32>(13992u, 52687u, global1.x)) ^ _wgslsmith_add_vec3_u32(vec3<u32>(19922u, 8739u, var_0.b), vec3<u32>(79352u, 4294967295u, var_0.b))));
    var var_3 = Struct_5(abs(reverseBits(~min(global0[_wgslsmith_index_u32(global1.x, 8u)], vec4<u32>(0u, 1u, 43031u, 26453u)))), Struct_3(~_wgslsmith_mult_u32(4294967295u, 1u)), 28478u);
    global0 = array<vec4<u32>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-46100i, -_wgslsmith_div_i32(-13453i, -65355i), u_input.b, -78315i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * _wgslsmith_div_f32(var_0.c, 634f)))), var_0.c, vec2<i32>(func_4(Struct_4(u_input.a, vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, var_0.c, -1273f), vec3<f32>(var_1, -183f, var_1))), var_1, var_0.b), Struct_4(var_0.d, select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1933f, 578f, -1000f)), _wgslsmith_div_f32(1321f, var_0.c), abs(global1.x))).a, -2147483647i));
}

