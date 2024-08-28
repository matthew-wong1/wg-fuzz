struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
    d: u32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5>;

var<private> global1: array<vec4<bool>, 22> = array<vec4<bool>, 22>(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false));

var<private> global2: array<vec2<bool>, 32>;

var<private> global3: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec3<i32>(i32(-2147483648), -1i, 10642i), vec3<u32>(3426u, 1u, 16144u), 0u, true, 981f), Struct_1(vec3<i32>(-1i, 1i, 2147483647i), vec3<u32>(1u, 69512u, 1u), 13273u, false, 1051f), Struct_1(vec3<i32>(i32(-2147483648), -1i, 2147483647i), vec3<u32>(49293u, 1u, 57271u), 4294967295u, false, -341f), Struct_1(vec3<i32>(2147483647i, 15202i, 2147483647i), vec3<u32>(47652u, 0u, 0u), 1716u, true, 1139f), Struct_1(vec3<i32>(32305i, i32(-2147483648), 14023i), vec3<u32>(1155u, 0u, 4294967295u), 1u, false, 643f), Struct_1(vec3<i32>(-21913i, 69998i, -17926i), vec3<u32>(4294967295u, 4294967295u, 0u), 0u, false, 876f), Struct_1(vec3<i32>(57337i, 1i, -25087i), vec3<u32>(33917u, 4294967295u, 6809u), 0u, false, 1009f), Struct_1(vec3<i32>(-17950i, -42866i, 0i), vec3<u32>(44486u, 4294967295u, 1u), 63209u, false, -771f), Struct_1(vec3<i32>(-1i, 42460i, -54930i), vec3<u32>(1u, 1u, 4294967295u), 4294967295u, true, 1090f), Struct_1(vec3<i32>(41370i, 0i, 1i), vec3<u32>(0u, 54619u, 0u), 6155u, false, 1377f), Struct_1(vec3<i32>(-1i, i32(-2147483648), 15398i), vec3<u32>(0u, 4294967295u, 1987u), 5791u, true, -696f), Struct_1(vec3<i32>(2698i, 66728i, -1i), vec3<u32>(957u, 0u, 15302u), 4294967295u, false, 2016f), Struct_1(vec3<i32>(-1i, -21173i, 1i), vec3<u32>(44682u, 4294967295u, 45065u), 1u, true, 1724f), Struct_1(vec3<i32>(-1i, 2147483647i, i32(-2147483648)), vec3<u32>(23119u, 0u, 88676u), 1u, true, -848f), Struct_1(vec3<i32>(15244i, -31761i, -8103i), vec3<u32>(25745u, 87293u, 0u), 20243u, false, -898f), Struct_1(vec3<i32>(-27259i, 1i, 9806i), vec3<u32>(87592u, 27840u, 4294967295u), 43995u, false, -1078f), Struct_1(vec3<i32>(-23904i, 4088i, 6309i), vec3<u32>(1u, 4294967295u, 38512u), 0u, true, 1392f), Struct_1(vec3<i32>(2147483647i, 27409i, 1i), vec3<u32>(41241u, 1u, 16791u), 35877u, true, 1000f), Struct_1(vec3<i32>(0i, 1i, 2147483647i), vec3<u32>(259u, 94527u, 0u), 0u, true, -163f));

var<private> global4: i32 = -1i;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> u32 {
    var var_0 = Struct_2(min(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(u_input.b, vec3<u32>(0u, 0u, 2820u)), ~u_input.b), u_input.b) | ~(~(u_input.b << (u_input.b % vec3<u32>(32u)))), Struct_1(_wgslsmith_mult_vec3_i32(-firstTrailingBit(u_input.c.wwx), vec3<i32>(0i, 12121i, 28105i << (u_input.b.x % 32u))), ~(~firstLeadingBit(u_input.b)), u_input.a.x, true, _wgslsmith_f_op_f32(f32(-1f) * -686f)), global0[_wgslsmith_index_u32(55924u, 5u)], _wgslsmith_sub_u32(~(~u_input.b.x), u_input.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(646f, 838f, 387f, 1182f))))));
    global4 = u_input.c.x;
    let var_1 = !(!(!select(vec3<bool>(false, global0[_wgslsmith_index_u32(var_0.a.x, 5u)], true), !vec3<bool>(var_0.c, global0[_wgslsmith_index_u32(var_0.b.c, 5u)], false), true)));
    global2 = array<vec2<bool>, 32>();
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, var_0.b.e), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-376f, var_0.e.x))) + _wgslsmith_f_op_vec2_f32(var_0.e.wz - var_0.e.yw)))) * vec2<f32>(var_0.b.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.e + 553f)))));
    return abs(firstLeadingBit(_wgslsmith_sub_u32(0u, ~4294967295u)));
}

fn func_2(arg_0: Struct_2) -> vec4<u32> {
    global4 = arg_0.b.a.x;
    global0 = array<bool, 5>();
    global0 = array<bool, 5>();
    let var_0 = arg_0.e.wyx;
    global4 = _wgslsmith_add_i32(firstTrailingBit(-27447i) << (0u % 32u), arg_0.b.a.x ^ -arg_0.b.a.x);
    return ~_wgslsmith_add_vec4_u32(~vec4<u32>(arg_0.b.c, u_input.a.x, 57625u, u_input.b.x) ^ vec4<u32>(u_input.a.x, arg_0.a.x, 13083u, u_input.a.x), vec4<u32>(arg_0.d, arg_0.a.x, arg_0.a.x, func_3())) ^ _wgslsmith_mult_vec4_u32(~vec4<u32>(1u, arg_0.a.x, arg_0.a.x, _wgslsmith_mod_u32(arg_0.a.x, u_input.a.x)), select(vec4<u32>(u_input.a.x, u_input.b.x, 0u, ~48218u), ~vec4<u32>(arg_0.b.b.x, 18397u, u_input.b.x, 20128u), false));
}

fn func_1() -> bool {
    global4 = abs(abs(u_input.c.x & _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), vec2<i32>(-2147483647i, u_input.c.x))));
    var var_0 = reverseBits(u_input.a.x);
    let var_1 = _wgslsmith_sub_vec4_u32(countOneBits(_wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.a.x) | vec4<u32>(1u, u_input.a.x, 0u, u_input.a.x), ~vec4<u32>(u_input.a.x, 32001u, u_input.b.x, u_input.a.x), global0[_wgslsmith_index_u32(u_input.a.x, 5u)]), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a, u_input.b.yx), ~25160u, firstTrailingBit(1u), 1u))), select(max(vec4<u32>(3321u, reverseBits(u_input.a.x), ~u_input.b.x, 30686u >> (u_input.b.x % 32u)), _wgslsmith_div_vec4_u32(func_2(Struct_2(vec3<u32>(1u, 1u, u_input.b.x), global3[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)], 41912u, vec4<f32>(-502f, 503f, -1608f, 634f))), ~vec4<u32>(65186u, 0u, 20199u, u_input.b.x))), vec4<u32>(u_input.a.x, 3928u, firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.a.x, 1u, 4294967295u))), _wgslsmith_mult_u32(u_input.a.x, ~2071u)), false));
    global2 = array<vec2<bool>, 32>();
    var var_2 = select(select(vec3<bool>(true, true, global0[_wgslsmith_index_u32(var_1.x >> (~u_input.b.x % 32u), 5u)]), select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(var_1.x, 5u)], true), !vec3<bool>(global0[_wgslsmith_index_u32(15516u, 5u)], global0[_wgslsmith_index_u32(var_1.x, 5u)], true), select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 5u)], false, true), vec3<bool>(global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(u_input.b.x, 5u)], global0[_wgslsmith_index_u32(36385u, 5u)]), true)), select(select(vec3<bool>(true, global0[_wgslsmith_index_u32(var_1.x, 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)]), vec3<bool>(global0[_wgslsmith_index_u32(var_1.x, 5u)], true, true), global0[_wgslsmith_index_u32(u_input.a.x, 5u)]), vec3<bool>(global0[_wgslsmith_index_u32(var_1.x, 5u)], false, global0[_wgslsmith_index_u32(4294967295u, 5u)]), true), !(!global0[_wgslsmith_index_u32(4294967295u, 5u)])), true), select(!vec3<bool>(select(global0[_wgslsmith_index_u32(var_1.x, 5u)], true, global0[_wgslsmith_index_u32(var_1.x, 5u)]), !global0[_wgslsmith_index_u32(1u, 5u)], !global0[_wgslsmith_index_u32(var_1.x, 5u)]), select(select(select(vec3<bool>(global0[_wgslsmith_index_u32(35301u, 5u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 5u)]), vec3<bool>(global0[_wgslsmith_index_u32(0u, 5u)], false, true), false), !vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 5u)], true), global0[_wgslsmith_index_u32(~1u, 5u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 5u)], true), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~1u, abs(u_input.a.x), 20112u), 5u)]), true), vec3<bool>(false, any(select(!vec2<bool>(global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(39074u, 5u)]), global2[_wgslsmith_index_u32(14478u >> (var_1.x % 32u), 32u)], global0[_wgslsmith_index_u32(u_input.a.x << (1u % 32u), 5u)])), all(vec4<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(var_1.x, 5u)], true)), global0[_wgslsmith_index_u32(1u, 5u)], true, global0[_wgslsmith_index_u32(4294967295u, 5u)]))));
    return !global0[_wgslsmith_index_u32(u_input.b.x, 5u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(select(select(!vec2<bool>(global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(u_input.b.x, 5u)]), global2[_wgslsmith_index_u32(u_input.a.x, 32u)], vec2<bool>(u_input.c.x <= -2147483647i, false)), !vec2<bool>(true, any(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 5u)], global0[_wgslsmith_index_u32(0u, 5u)]))), !func_1()));
    var var_1 = u_input.c.zz;
    global4 = 0i;
    var var_2 = !global1[_wgslsmith_index_u32(4294967295u, 22u)];
    global4 = ~(1i << (abs(~_wgslsmith_add_u32(u_input.a.x, u_input.b.x)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<i32>(0i, var_1.x), _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(~u_input.c.xw, ~vec2<i32>(-72180i, var_1.x)), u_input.c.yz), global0[_wgslsmith_index_u32(1u << (~(1u >> (u_input.b.x % 32u)) % 32u), 5u)]), vec4<i32>(1i, _wgslsmith_sub_i32(i32(-1i) * -16632i, _wgslsmith_mod_i32(-4264i, u_input.c.x)), abs(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.c.yxy, vec3<i32>(var_1.x, u_input.c.x, 1i)), vec3<i32>(-22348i, -37065i, -64239i))), var_1.x), vec3<u32>(~_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.b.x), u_input.a.x), _wgslsmith_sub_u32(~_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 0u), u_input.b.x), 4294967295u));
}

