struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<u32>,
    d: vec2<bool>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11>;

var<private> global1: array<vec2<bool>, 21>;

var<private> global2: array<u32, 7>;

var<private> global3: array<bool, 22> = array<bool, 22>(false, false, false, true, false, false, false, false, true, true, true, true, true, true, true, false, true, false, true, true, true, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: bool) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(~u_input.b & ~global2[_wgslsmith_index_u32(0u, 7u)], min(~4294967295u, _wgslsmith_sub_u32(u_input.c, 0u)), ~4294967295u), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 4294967295u, global2[_wgslsmith_index_u32(41212u, 7u)]) | vec3<u32>(u_input.b, global2[_wgslsmith_index_u32(0u, 7u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 7u)], 7u)]), vec3<u32>(0u, global2[_wgslsmith_index_u32(0u, 7u)], u_input.c), reverseBits(vec3<u32>(45776u, 4294967295u, u_input.c))), max(_wgslsmith_sub_vec3_u32(vec3<u32>(6351u, u_input.c, u_input.b), vec3<u32>(u_input.b, 32482u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(64202u, 7u)], 7u)], 7u)])), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, u_input.c, 1281u), vec3<u32>(u_input.b, 233u, 50099u))))));
    global3 = array<bool, 22>();
    global1 = array<vec2<bool>, 21>();
    var var_1 = Struct_1(reverseBits(~_wgslsmith_mult_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(48266u, 7u)], var_0.a.x, 4553u), select(vec3<u32>(49769u, var_0.a.x, global2[_wgslsmith_index_u32(var_0.a.x, 7u)]), var_0.a, vec3<bool>(true, true, global0[_wgslsmith_index_u32(var_0.a.x, 11u)])))));
    var var_2 = false;
    return !vec4<bool>((!global0[_wgslsmith_index_u32(var_1.a.x, 11u)] & true) && any(select(vec4<bool>(arg_1, global3[_wgslsmith_index_u32(var_0.a.x, 22u)], global3[_wgslsmith_index_u32(4294967295u, 22u)], arg_1), vec4<bool>(global3[_wgslsmith_index_u32(var_1.a.x, 22u)], global0[_wgslsmith_index_u32(0u, 11u)], true, false), global0[_wgslsmith_index_u32(var_0.a.x, 11u)])), any(select(vec3<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_1.a.x, 7u)], 11u)], arg_1, global3[_wgslsmith_index_u32(16595u, 22u)]), vec3<bool>(true, false, false), select(vec3<bool>(arg_1, true, false), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 11u)], false, false), vec3<bool>(true, global3[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(1u, 11u)])))), false, global3[_wgslsmith_index_u32(~abs(var_0.a.x) ^ countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.x, var_1.a.x, var_1.a.x), vec3<u32>(4294967295u, 4294967295u, global2[_wgslsmith_index_u32(23160u, 7u)]))), 22u)]);
}

fn func_2() -> vec4<u32> {
    let var_0 = Struct_2(func_3(u_input.a.x, true), Struct_1(abs(~vec3<u32>(32171u, u_input.c, 15679u)) & abs(~vec3<u32>(global2[_wgslsmith_index_u32(49063u, 7u)], 0u, global2[_wgslsmith_index_u32(u_input.c, 7u)]))), vec4<u32>(37948u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, u_input.c, 0u), vec4<u32>(global2[_wgslsmith_index_u32(u_input.c, 7u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 7u)], 7u)], u_input.c, 12399u)), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(global2[_wgslsmith_index_u32(15506u, 7u)], u_input.c, u_input.b, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 7u)], 7u)])), ~vec4<u32>(1u, 1055u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(33209u, 7u)], 7u)], global2[_wgslsmith_index_u32(u_input.b, 7u)])), ~min(387u, 1u)) | _wgslsmith_clamp_vec4_u32(vec4<u32>(0u << (global2[_wgslsmith_index_u32(4294967295u, 7u)] % 32u), reverseBits(1u), 12278u, 19456u), abs(vec4<u32>(u_input.b, global2[_wgslsmith_index_u32(4294967295u, 7u)], 1u, 3333u)), max(~vec4<u32>(global2[_wgslsmith_index_u32(44017u, 7u)], u_input.b, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(22035u, 7u)], 7u)]), ~vec4<u32>(4294967295u, u_input.b, 1u, 16850u))), vec2<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(countOneBits(countOneBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 7u)], 7u)] & 1u)), 7u)], 11u)], all(func_3(~(-18519i), global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1320u, 7u)], 22u)]).xxw)), vec2<u32>(global2[_wgslsmith_index_u32(1774u, 7u)], global2[_wgslsmith_index_u32(reverseBits(global2[_wgslsmith_index_u32(reverseBits(global2[_wgslsmith_index_u32(50024u, 7u)]) >> (43152u % 32u), 7u)]), 7u)]));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(979f - -439f) + -2000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(386f - -1253f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(103f)), _wgslsmith_f_op_f32(min(-378f, 1021f)), global0[_wgslsmith_index_u32(reverseBits(71995u), 11u)])), -1200f)));
    let var_2 = ~(~(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(115805u, 7u)], u_input.b, 35140u), vec3<u32>(61433u, u_input.b, var_0.b.a.x)))));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-677f, _wgslsmith_f_op_f32(floor(1688f)), all(var_0.a.wx)))));
    let var_4 = Struct_1(vec3<u32>(4294967295u, _wgslsmith_mod_u32(1u, 88620u), ~u_input.c));
    return vec4<u32>(_wgslsmith_div_u32(~(~(~var_4.a.x)), global2[_wgslsmith_index_u32(var_4.a.x, 7u)]), var_0.b.a.x, global2[_wgslsmith_index_u32(1u, 7u)], ~152u);
}

fn func_1() -> u32 {
    global3 = array<bool, 22>();
    var var_0 = (((vec4<u32>(0u, 4294967295u, 0u, u_input.b) | (vec4<u32>(4294967295u, 56232u, u_input.c, u_input.c) | vec4<u32>(0u, u_input.c, 21923u, u_input.b))) << (vec4<u32>(countOneBits(u_input.b), ~0u, u_input.b, ~u_input.c) % vec4<u32>(32u))) | func_2()) << (~_wgslsmith_clamp_vec4_u32(select(vec4<u32>(1u, global2[_wgslsmith_index_u32(13634u, 7u)], 4294967295u, 19115u) | vec4<u32>(8197u, global2[_wgslsmith_index_u32(37376u, 7u)], 0u, global2[_wgslsmith_index_u32(u_input.b, 7u)]), vec4<u32>(21178u, u_input.c, 40249u, 8091u), false | global3[_wgslsmith_index_u32(u_input.b, 22u)]), vec4<u32>(40534u, 4294967295u, u_input.c, u_input.c) | select(vec4<u32>(37082u, global2[_wgslsmith_index_u32(42265u, 7u)], u_input.b, 59448u), vec4<u32>(1u, 4294967295u, 72293u, global2[_wgslsmith_index_u32(37776u, 7u)]), global0[_wgslsmith_index_u32(1939u, 11u)]), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 7u)], 7u)] >> (u_input.c % 32u), ~49931u, _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(0u, 7u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4921u, 7u)], 7u)], 7u)]), func_2().x)) % vec4<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -617f))), _wgslsmith_f_op_f32(-1182f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(645f)) * _wgslsmith_f_op_f32(f32(-1f) * -967f))))));
    global0 = array<bool, 11>();
    let var_2 = _wgslsmith_mult_i32(u_input.a.x, abs(-_wgslsmith_sub_i32(select(-8533i, 2147483647i, global3[_wgslsmith_index_u32(u_input.b, 22u)]), u_input.a.x)));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(1u, max(u_input.c, 1u), firstLeadingBit(global2[_wgslsmith_index_u32(1u, 7u)]), ~13642u), _wgslsmith_mult_vec4_u32(vec4<u32>(~(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 7u)], 7u)] << (4294967295u % 32u)), var_0.x, var_0.x, ~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 9404u, u_input.c, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.x, 7u)], 7u)]), vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(16116u, 7u)], var_0.x, 67578u)), 7u)]), vec4<u32>(38574u, countOneBits(~1u), ~u_input.c, 5971u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 11>();
    global0 = array<bool, 11>();
    global0 = array<bool, 11>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(171f, 1000f, 126f, -457f), vec4<f32>(416f, -1173f, -834f, 708f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1443f, -468f, -1000f, -418f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-153f, 135f, -1120f, -1116f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(635f, 461f, 640f, -1480f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -501f, -266f, 680f)))))));
    var var_1 = _wgslsmith_sub_vec3_i32(select(-_wgslsmith_add_vec3_i32(select(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, 20082i), true), vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x) | vec3<i32>(u_input.a.x, u_input.a.x, -1i)), ~countOneBits(~vec3<i32>(35318i, 2147483647i, -26224i)), global3[_wgslsmith_index_u32(1u | (0u | func_1()), 22u)]), firstLeadingBit((abs(vec3<i32>(u_input.a.x, 1i, u_input.a.x)) << (abs(vec3<u32>(4294967295u, 71925u, u_input.b)) % vec3<u32>(32u))) & vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i >> (u_input.c % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(-1i)), -firstTrailingBit(vec3<i32>(-var_1.x, -25727i, u_input.a.x)), -2147483647i, ~select(14349u, 4294967295u, true), _wgslsmith_mult_u32(abs(2967u), abs(68547u)) >> (~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, u_input.b, 1u), ~vec3<u32>(global2[_wgslsmith_index_u32(31423u, 7u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], u_input.c)) % 32u));
}

