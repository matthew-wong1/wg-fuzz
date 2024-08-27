struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 11>;

var<private> global1: array<bool, 13> = array<bool, 13>(false, true, false, true, true, false, false, true, true, false, true, false, true);

var<private> global2: f32;

var<private> global3: array<u32, 29>;

var<private> global4: array<i32, 28> = array<i32, 28>(-24039i, 39066i, 60260i, 14358i, -35942i, 12395i, -1i, 2147483647i, 1i, 0i, 0i, i32(-2147483648), 0i, 22349i, 41317i, i32(-2147483648), -24015i, 16716i, 2147483647i, -27314i, 0i, -35600i, 1i, 2147483647i, 0i, i32(-2147483648), 72625i, 29942i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_3) -> u32 {
    var var_0 = Struct_3(1f, arg_1.b, arg_1.c, Struct_1(vec2<bool>(all(vec2<bool>(true, false)), false), arg_1.c.a.x == ~11009i, vec2<u32>(global3[_wgslsmith_index_u32(arg_1.d.c.x, 29u)], 4294967295u), vec2<u32>(countOneBits(~9532u), arg_1.d.c.x)));
    global3 = array<u32, 29>();
    return 4294967295u;
}

fn func_3() -> u32 {
    global4 = array<i32, 28>();
    global4 = array<i32, 28>();
    let var_0 = Struct_2(vec2<i32>(-firstLeadingBit(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 29u)], 28u)]) ^ _wgslsmith_clamp_i32(global4[_wgslsmith_index_u32(u_input.b, 28u)], max(-2147483647i, global4[_wgslsmith_index_u32(1u, 28u)]), global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 29u)], 29u)], 28u)]), 49117i), vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1079f) - _wgslsmith_f_op_f32(f32(-1f) * -2282f)) + _wgslsmith_f_op_f32(step(143f, -662f)))), Struct_1(!(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, global1[_wgslsmith_index_u32(12970u, 13u)]))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(vec4<u32>(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 29u)], 29u)], 1u, u_input.a.x) << (vec4<u32>(u_input.a.x, 1u, global3[_wgslsmith_index_u32(u_input.a.x, 29u)], 102798u) % vec4<u32>(32u))), abs(vec4<u32>(59271u, 0u, u_input.c.x, 0u))), 13u)], _wgslsmith_sub_vec2_u32(~min(vec2<u32>(4294967295u, 19112u), vec2<u32>(845u, global3[_wgslsmith_index_u32(4294967295u, 29u)])), vec2<u32>(52632u, countOneBits(u_input.c.x))), ~_wgslsmith_add_vec2_u32(vec2<u32>(0u, 31995u), vec2<u32>(18536u, 32103u))), Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), global1[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 13u)]), !(global1[_wgslsmith_index_u32(71819u, 13u)] | false) || any(vec2<bool>(true, global1[_wgslsmith_index_u32(40866u, 13u)])), u_input.a, (max(u_input.c, u_input.c) << (u_input.a % vec2<u32>(32u))) >> (vec2<u32>(1u, firstTrailingBit(u_input.c.x)) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-846f, -596f, _wgslsmith_f_op_f32(min(-454f, -965f))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1317f, -1748f, 1874f))))) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1493f * -447f), _wgslsmith_f_op_f32(-579f + 828f), -707f), vec3<f32>(_wgslsmith_f_op_f32(-855f - -981f), -327f, 1000f))));
    global2 = var_0.b.x;
    return _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(var_0.c.d.x, 58802u, var_0.c.d.x, u_input.c.x)), ~vec4<u32>(1u, 0u, 1u, var_0.c.d.x)) & ~_wgslsmith_sub_u32(reverseBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.d.d.x, 29u)], 29u)]), 34464u), ~_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(~var_0.d.c.x, 29u)], 4294967295u ^ var_0.d.d.x));
}

fn func_2(arg_0: Struct_3) -> StorageBuffer {
    var var_0 = _wgslsmith_add_vec4_i32(abs(select(abs(max(vec4<i32>(arg_0.c.a.x, arg_0.c.a.x, global4[_wgslsmith_index_u32(4294967295u, 28u)], global4[_wgslsmith_index_u32(0u, 28u)]), vec4<i32>(-68876i, -48378i, -20942i, global4[_wgslsmith_index_u32(7171u, 28u)]))), (vec4<i32>(-17849i, arg_0.c.a.x, arg_0.c.a.x, 16258i) ^ vec4<i32>(-17620i, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(25442u, 29u)], 29u)], 28u)], -2147483647i, global4[_wgslsmith_index_u32(59572u, 28u)])) | vec4<i32>(-2147483647i, global4[_wgslsmith_index_u32(arg_0.c.d.d.x, 28u)], arg_0.c.a.x, 1515i), vec4<bool>(!arg_0.d.a.x, false, global1[_wgslsmith_index_u32(func_3(), 13u)], global1[_wgslsmith_index_u32(arg_0.c.d.d.x, 13u)] || true))), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2656i, 46665i), _wgslsmith_div_vec3_i32(vec3<i32>(28476i, 14128i, arg_0.c.a.x), vec3<i32>(arg_0.c.a.x, 18319i, global4[_wgslsmith_index_u32(u_input.b, 28u)]))), reverseBits(~global4[_wgslsmith_index_u32(arg_0.d.c.x, 28u)]), arg_0.c.a.x, ~_wgslsmith_sub_i32(-21823i, global4[_wgslsmith_index_u32(4294967295u, 28u)])), -vec4<i32>(-27050i, countOneBits(-2147483647i), _wgslsmith_mod_i32(-58177i, arg_0.c.a.x), 1i), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(arg_0.d.c.x, 28u)], 45194i, global4[_wgslsmith_index_u32(88351u, 28u)], global4[_wgslsmith_index_u32(60028u, 28u)]) & vec4<i32>(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(17477u, 29u)], 28u)], -2147483647i, -1i, 2147483647i), vec4<i32>(global4[_wgslsmith_index_u32(12343u, 28u)], -2147483647i, arg_0.c.a.x, -1i)))));
    var var_1 = Struct_2(~_wgslsmith_mod_vec2_i32(max(-var_0.zy, min(vec2<i32>(-58064i, 25915i), vec2<i32>(2147483647i, 47470i))), -vec2<i32>(2147483647i, 11730i)), arg_0.c.b, Struct_1(arg_0.c.c.a, 30540i != global4[_wgslsmith_index_u32(~arg_0.d.d.x, 28u)], vec2<u32>(~37187u, ~60916u) << (u_input.a % vec2<u32>(32u)), reverseBits(vec2<u32>(52389u, abs(arg_0.c.d.d.x)))), arg_0.c.d, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(arg_0.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, 1000f, -306f) + _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.b.x, arg_0.a, 164f), vec3<f32>(arg_0.a, 1790f, arg_0.c.e.x))) * vec3<f32>(arg_0.c.b.x, 1305f, _wgslsmith_f_op_f32(ceil(arg_0.c.b.x)))), select(vec3<bool>(global1[_wgslsmith_index_u32(abs(4294967295u), 13u)], var_0.x >= global4[_wgslsmith_index_u32(arg_0.d.d.x, 28u)], arg_0.c.d.a.x), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), vec3<bool>(all(vec4<bool>(true, false, true, true)), false && arg_0.c.d.a.x, arg_0.d.b)))));
    var var_2 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(1510f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-315f, 424f))))), -1291f, _wgslsmith_f_op_f32(f32(-1f) * -403f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -152f), arg_0.c.d.b)) - -539f)));
    let var_3 = 21209i;
    global4 = array<i32, 28>();
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.a * var_2.a) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(454f, _wgslsmith_div_f32(578f, -1114f), _wgslsmith_f_op_f32(var_2.a.x - var_1.b.x), -268f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(127f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x))) - vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(533f)), _wgslsmith_f_op_f32(-arg_0.b.x))), 1825f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global1[_wgslsmith_index_u32(func_1(Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-309f, 993f, -481f, 1987f), vec4<f32>(126f, -623f, -137f, -200f), false)))), global0[_wgslsmith_index_u32(u_input.b, 11u)]), 13u)];
    var var_1 = ~reverseBits((9038i >> (u_input.b % 32u)) >> (~global3[_wgslsmith_index_u32(u_input.c.x, 29u)] % 32u)) | -5724i;
    let x = u_input.a;
    s_output = func_2(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(1u, ~global3[_wgslsmith_index_u32(0u << (u_input.a.x % 32u), 29u)]), 11u)]);
}

