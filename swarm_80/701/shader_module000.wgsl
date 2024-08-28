struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 11>;

var<private> global1: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(vec3<i32>(28039i, i32(-2147483648), -33357i), vec4<f32>(1749f, -440f, -695f, 226f), false, 1i), Struct_2(vec3<i32>(2147483647i, -11048i, -1i), vec4<f32>(-488f, 1567f, -722f, 706f), false, 2147483647i), Struct_2(vec3<i32>(i32(-2147483648), 1i, 2147483647i), vec4<f32>(-426f, 719f, 102f, 1221f), true, i32(-2147483648)), Struct_2(vec3<i32>(2147483647i, 6541i, -10023i), vec4<f32>(1000f, -1304f, 733f, -180f), true, 22143i), Struct_2(vec3<i32>(i32(-2147483648), 21754i, 47153i), vec4<f32>(876f, 1278f, 1037f, -1131f), true, 0i), Struct_2(vec3<i32>(37644i, -5322i, -73440i), vec4<f32>(-2622f, 2282f, 2415f, -1000f), true, -52535i), Struct_2(vec3<i32>(i32(-2147483648), -53228i, -11936i), vec4<f32>(540f, 867f, -583f, -1953f), false, 2147483647i), Struct_2(vec3<i32>(1i, 2147483647i, 41564i), vec4<f32>(283f, 122f, 1142f, 861f), true, -1i), Struct_2(vec3<i32>(31001i, -6124i, 15305i), vec4<f32>(-354f, -1000f, -451f, -672f), false, i32(-2147483648)), Struct_2(vec3<i32>(6229i, 4062i, -27154i), vec4<f32>(1453f, -821f, 967f, -957f), true, 23934i), Struct_2(vec3<i32>(21274i, 17208i, i32(-2147483648)), vec4<f32>(-643f, -961f, 1392f, 1012f), false, 2147483647i), Struct_2(vec3<i32>(-54753i, -20075i, 13053i), vec4<f32>(-466f, -182f, -612f, 471f), true, -51012i), Struct_2(vec3<i32>(15186i, 1310i, 0i), vec4<f32>(-149f, -352f, -577f, -225f), false, 1i), Struct_2(vec3<i32>(-1i, 1i, 82489i), vec4<f32>(-578f, 471f, -706f, -1529f), true, 1i), Struct_2(vec3<i32>(i32(-2147483648), -1i, -18239i), vec4<f32>(1011f, 656f, -233f, -148f), true, 2147483647i), Struct_2(vec3<i32>(-1i, -1i, 1i), vec4<f32>(380f, -269f, -759f, -1000f), false, 1i), Struct_2(vec3<i32>(13952i, 0i, 0i), vec4<f32>(1712f, 156f, -214f, 1021f), false, -28136i), Struct_2(vec3<i32>(-1i, 1i, 18695i), vec4<f32>(-397f, 764f, 2521f, 706f), true, 2663i), Struct_2(vec3<i32>(0i, 1i, 2147483647i), vec4<f32>(1026f, -722f, 1000f, -171f), false, -4524i), Struct_2(vec3<i32>(i32(-2147483648), i32(-2147483648), 8566i), vec4<f32>(466f, 604f, -326f, -406f), true, 80343i), Struct_2(vec3<i32>(71633i, 1478i, -1i), vec4<f32>(2689f, 957f, 1460f, 167f), false, 1i));

var<private> global2: array<bool, 4>;

var<private> global3: f32 = 1000f;

var<private> global4: f32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    var var_0 = all(vec2<bool>(global2[_wgslsmith_index_u32(1u, 4u)], true || (u_input.d != _wgslsmith_dot_vec3_u32(vec3<u32>(13512u, u_input.d, u_input.d), vec3<u32>(u_input.d, u_input.d, 0u)))));
    let var_1 = -1680f;
    global2 = array<bool, 4>();
    global0 = array<vec3<bool>, 11>();
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -134f)), var_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(max(349f, var_1)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-699f, var_1, 1716f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, 300f, var_1) - vec3<f32>(-3061f, -144f, -1185f))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1038f, 1945f, _wgslsmith_f_op_f32(-var_1))));
    return var_2.x;
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(func_3());
    let var_1 = global1[_wgslsmith_index_u32(select(_wgslsmith_mod_u32(u_input.d, 65973u), ~1u, any(vec3<bool>(-901f < _wgslsmith_f_op_f32(floor(-1838f)), global2[_wgslsmith_index_u32(52340u, 4u)], global2[_wgslsmith_index_u32(reverseBits(u_input.d), 4u)]))), 21u)];
    var var_2 = global1[_wgslsmith_index_u32(8134u, 21u)];
    let var_3 = var_1.d;
    var var_4 = Struct_1(all(!select(vec2<bool>(true, false), vec2<bool>(var_1.c, true), vec2<bool>(false, var_1.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0)) - _wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_f_op_f32(abs(-1181f)))), u_input.c, _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(u_input.d, u_input.d), ~u_input.d, u_input.d, ~74824u), (vec4<u32>(77101u, 0u, u_input.d, u_input.d) & vec4<u32>(u_input.d, 7214u, u_input.d, 39046u)) ^ vec4<u32>(0u, u_input.d, 4294967295u, u_input.d), countOneBits(abs(vec4<u32>(u_input.d, 1u, u_input.d, 26804u)))), abs(_wgslsmith_sub_vec4_u32(select(vec4<u32>(u_input.d, 60386u, 19673u, 39459u), vec4<u32>(1u, 1u, u_input.d, 8949u), true), vec4<u32>(u_input.d, u_input.d, 61667u, 48245u)))), 58059u);
    return global1[_wgslsmith_index_u32(4294967295u, 21u)];
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: f32) -> StorageBuffer {
    let var_0 = func_2();
    global4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))) + _wgslsmith_f_op_f32(func_3()));
    let var_1 = arg_0;
    global0 = array<vec3<bool>, 11>();
    var var_2 = func_2();
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-var_2.b), arg_1.a, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_1.b.x, -103f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_3, -422f), arg_1.b.x), var_1.b)), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.b) + var_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~_wgslsmith_mult_u32(58041u, (u_input.d | 1u) & 1u));
    global2 = array<bool, 4>();
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-518f * 671f)))) + _wgslsmith_f_op_f32(f32(-1f) * -1255f));
    let var_1 = u_input.d;
    var var_2 = _wgslsmith_div_vec2_u32(~(~firstTrailingBit(~vec2<u32>(var_1, u_input.d))), ~_wgslsmith_div_vec2_u32(~vec2<u32>(37086u, 10001u), vec2<u32>(var_0 ^ u_input.d, var_1 & 42256u)));
    global0 = array<vec3<bool>, 11>();
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1256f * 1587f));
    let x = u_input.a;
    s_output = func_1(Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, ~var_1), 4u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1102f)), 1592f), u_input.c, _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_2.x, u_input.d | var_0, 0u << (var_2.x % 32u)), reverseBits(vec4<u32>(var_2.x, var_0, var_0, 1u)) ^ ~vec4<u32>(var_2.x, 4294967295u, var_2.x, 1u)), _wgslsmith_div_u32(~var_1, ~_wgslsmith_clamp_u32(1u, var_2.x, u_input.d))), Struct_2(-(firstTrailingBit(vec3<i32>(1i, u_input.c.x, u_input.b)) >> (vec3<u32>(u_input.d, 4294967295u, 4294967295u) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-2852f, -358f, 1017f, 317f), vec4<f32>(485f, 505f, 1000f, -1560f))), global2[_wgslsmith_index_u32(~28996u, 4u)], abs(max(u_input.b, u_input.c.x))), vec4<i32>(u_input.c.x, u_input.b, ~_wgslsmith_add_i32(-28350i, u_input.b) >> (0u % 32u), _wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.c.yzz, vec3<i32>(-24027i, u_input.b, u_input.b)), _wgslsmith_clamp_i32(u_input.a.x, 8901i, u_input.c.x)), _wgslsmith_mult_i32(abs(-1i), 3667i))), _wgslsmith_f_op_f32(f32(-1f) * -1158f));
}

