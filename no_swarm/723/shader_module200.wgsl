struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: vec3<u32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: f32,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7> = array<f32, 7>(2428f, -1684f, 625f, -121f, 884f, 1000f, 382f);

var<private> global1: array<bool, 15>;

var<private> global2: vec3<f32> = vec3<f32>(333f, -1076f, 1000f);

var<private> global3: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(vec3<u32>(8727u, 4294967295u, 0u), 288u, 425f, 0u), Struct_2(vec3<u32>(1u, 4294967295u, 0u), 72198u, 925f, 28776u), Struct_2(vec3<u32>(0u, 58452u, 4294967295u), 4294967295u, -733f, 20218u), Struct_2(vec3<u32>(12081u, 16153u, 58775u), 4294967295u, 1000f, 13492u), Struct_2(vec3<u32>(4294967295u, 18967u, 4294967295u), 60200u, -575f, 4294967295u), Struct_2(vec3<u32>(1u, 35495u, 43226u), 91496u, 149f, 4294967295u), Struct_2(vec3<u32>(1u, 8160u, 4294967295u), 0u, 778f, 55416u));

var<private> global4: Struct_2 = Struct_2(vec3<u32>(62288u, 25601u, 90063u), 4117u, 463f, 103767u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec2<bool> {
    global2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.c, global2.x, global2.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(0u, 7u)], global2.x, global0[_wgslsmith_index_u32(u_input.a, 7u)]) * vec3<f32>(1043f, -480f, global0[_wgslsmith_index_u32(global4.d, 7u)])) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.x, global4.c, -286f))))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -758f) - 456f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-269f)) - _wgslsmith_f_op_f32(f32(-1f) * -683f)), global2.x))));
    var var_0 = _wgslsmith_dot_vec4_i32(select(_wgslsmith_sub_vec4_i32(select(vec4<i32>(-22046i, -33480i, u_input.c.x, -25365i), vec4<i32>(1i, 1527i, u_input.c.x, u_input.c.x) | vec4<i32>(u_input.c.x, -27010i, u_input.c.x, -1i), true), vec4<i32>(9910i, -74023i, u_input.b, u_input.b) << (vec4<u32>(u_input.a, 63724u, 0u, global4.b) % vec4<u32>(32u))), (vec4<i32>(2147483647i, -22072i, -17629i, u_input.c.x) << (firstTrailingBit(vec4<u32>(47619u, global4.a.x, 46889u, 1u)) % vec4<u32>(32u))) << (vec4<u32>(0u, max(4294967295u, 37452u), ~4421u, 1u) % vec4<u32>(32u)), true), abs(~(vec4<i32>(u_input.b, 4996i, u_input.c.x, -5733i) & vec4<i32>(u_input.b, -2147483647i, -39374i, -1148i)) | vec4<i32>(~1i, _wgslsmith_add_i32(2147483647i, u_input.c.x), ~25850i, -u_input.b)));
    global2 = vec3<f32>(-1000f, global0[_wgslsmith_index_u32(19239u, 7u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(44049u, 7u)] + 405f));
    var_0 = ~(~2147483647i);
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -768f, 238f, 860f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(695f, global2.x, global0[_wgslsmith_index_u32(u_input.a, 7u)], -440f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.c, global0[_wgslsmith_index_u32(u_input.a, 7u)], global0[_wgslsmith_index_u32(u_input.a, 7u)], global4.c))), global1[_wgslsmith_index_u32(~19093u, 15u)])) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -319f, global4.c, global2.x) * vec4<f32>(1718f, global4.c, global2.x, global0[_wgslsmith_index_u32(u_input.a, 7u)])) * vec4<f32>(global2.x, 1138f, 1189f, 203f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(699f, 1923f, global4.c, global0[_wgslsmith_index_u32(global4.a.x, 7u)]), vec4<f32>(global0[_wgslsmith_index_u32(global4.b, 7u)], global2.x, global2.x, global4.c), vec4<bool>(false, false, true, true))) + vec4<f32>(-666f, global0[_wgslsmith_index_u32(u_input.a, 7u)], global0[_wgslsmith_index_u32(26420u, 7u)], global0[_wgslsmith_index_u32(global4.d, 7u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -105f)), vec3<u32>(global4.b, ~_wgslsmith_clamp_u32(global4.a.x, ~global4.a.x, ~0u), u_input.a));
    return !(!vec2<bool>(true, (u_input.a & global4.a.x) > (4294967295u | var_1.c.x)));
}

fn func_2() -> u32 {
    global0 = array<f32, 7>();
    let var_0 = !func_3();
    return u_input.a;
}

fn func_1(arg_0: bool, arg_1: bool) -> f32 {
    var var_0 = Struct_2(abs(vec3<u32>(4294967295u, u_input.a, u_input.a)), _wgslsmith_add_u32(~global4.b, func_2()), _wgslsmith_f_op_f32(f32(-1f) * -778f), select(~82340u, select(max(~u_input.a, ~u_input.a), 105593u, ~1i != u_input.c.x), global2.x == _wgslsmith_f_op_f32(global2.x + global4.c)));
    global3 = array<Struct_2, 7>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1744f, 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - global4.c)), _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(step(875f, 1271f))), var_0.c), vec4<f32>(-337f, _wgslsmith_f_op_f32(round(-856f)), _wgslsmith_f_op_f32(892f * -1057f), _wgslsmith_f_op_f32(floor(1780f))), arg_1)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global4.c, var_0.c, 1622f, var_0.c), vec4<f32>(global0[_wgslsmith_index_u32(4717u, 7u)], -1770f, global0[_wgslsmith_index_u32(1u, 7u)], 1577f), vec4<bool>(true, false, true, arg_0))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global0[_wgslsmith_index_u32(4294967295u, 7u)], 537f, var_0.c) - vec4<f32>(606f, global4.c, global4.c, 2010f)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-483f, var_0.c, 1364f, -1618f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.c, global2.x, 334f, var_0.c) - vec4<f32>(global2.x, var_0.c, -543f, global4.c)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, global0[_wgslsmith_index_u32(var_0.d, 7u)], -1785f, global0[_wgslsmith_index_u32(1u, 7u)]), vec4<f32>(728f, var_0.c, -457f, global4.c)))), vec4<bool>(func_3().x, false, false, all(vec3<bool>(global1[_wgslsmith_index_u32(global4.a.x, 15u)], false, global1[_wgslsmith_index_u32(0u, 15u)])))))));
    global4 = Struct_2(_wgslsmith_mod_vec3_u32(global4.a, global4.a), 21171u >> ((_wgslsmith_add_u32(abs(global4.b), _wgslsmith_mult_u32(u_input.a, 12832u)) & 4294967295u) % 32u), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1298f)))), _wgslsmith_add_u32(firstLeadingBit(_wgslsmith_mod_u32(~u_input.a, ~global4.a.x)), ~(~_wgslsmith_div_u32(1u, 14028u))));
    var_0 = Struct_2(max(vec3<u32>(countOneBits(u_input.a), global4.a.x >> (var_0.a.x % 32u), min(1u, 1u)) & countOneBits(abs(var_0.a)), _wgslsmith_add_vec3_u32(max(global4.a, var_0.a), ~select(var_0.a, var_0.a, global1[_wgslsmith_index_u32(4294967295u, 15u)]))), ~(~(~global4.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.c + _wgslsmith_f_op_f32(f32(-1f) * -253f)) * global2.x), 0u);
    return global0[_wgslsmith_index_u32(0u, 7u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 7>();
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(global4.d, 15u)], true)) + global4.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1318f)) * _wgslsmith_div_f32(global4.c, global4.c)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(~1u, 7u)], _wgslsmith_f_op_f32(floor(global2.x)), -262f)));
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-358f - _wgslsmith_f_op_f32(max(global4.c, global2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-723f - global0[_wgslsmith_index_u32(global4.d, 7u)])))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(global2.yz, global2.zy), _wgslsmith_f_op_vec2_f32(-global2.yz))), global2.xy, true)) * global2.xz));
    global1 = array<bool, 15>();
    let var_1 = global1[_wgslsmith_index_u32(9573u, 15u)];
    global4 = Struct_2(global4.a, 102007u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(534f * -2247f), global4.c, true))) - _wgslsmith_f_op_f32(sign(global2.x))), reverseBits(u_input.a));
    let var_2 = Struct_5(14126u, Struct_4(var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * global4.c))), global3[_wgslsmith_index_u32(~u_input.a, 7u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.c)), _wgslsmith_div_f32(-525f, 1000f), global1[_wgslsmith_index_u32(reverseBits(u_input.a ^ ~u_input.a), 15u)])));
    var var_3 = firstTrailingBit(~(~var_2.d.a.x));
    let var_4 = ~vec2<u32>(~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global4.a.x), var_2.d.a.xx), 122409u), _wgslsmith_mod_u32(u_input.a, 4294967295u | firstTrailingBit(0u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(firstLeadingBit(firstTrailingBit(vec4<u32>(global4.a.x, 1u, 59159u, global4.d))), reverseBits(~vec4<u32>(var_2.d.a.x, var_2.d.a.x, var_2.d.b, global4.d))) >> (_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.a, 16750u), 4294967295u, 0u & global4.a.x, var_4.x), vec4<u32>(0u, var_4.x, 4294967295u, 3208u >> (u_input.a % 32u))) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -657f, var_0.x, 657f)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-246f, 582f, 1027f, global4.c))))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 539f, 672f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1680f, var_2.c, global2.x, global2.x))))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global4.a.x, 7u)] * -1000f))), global2.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(u_input.a, 15u)], global1[_wgslsmith_index_u32(var_4.x, 15u)]))))), (max(~vec3<i32>(u_input.b, u_input.b, u_input.b), -vec3<i32>(u_input.b, u_input.b, u_input.b)) << ((reverseBits(vec3<u32>(u_input.a, var_4.x, 5834u)) << (var_2.d.a % vec3<u32>(32u))) % vec3<u32>(32u))) & max(vec3<i32>(u_input.c.x, _wgslsmith_mod_i32(u_input.b, 59741i), i32(-1i) * -11402i), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, u_input.c.x, u_input.c.x), vec3<i32>(u_input.b, u_input.c.x, u_input.b) << (var_2.d.a % vec3<u32>(32u)))));
}

