struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec4<u32>,
    d: vec2<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16>;

var<private> global1: bool = false;

var<private> global2: vec2<f32> = vec2<f32>(585f, 207f);

var<private> global3: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(vec2<f32>(2199f, 549f), 348f, vec3<i32>(i32(-2147483648), i32(-2147483648), 0i)), Struct_2(vec2<f32>(445f, 592f), -1000f, vec3<i32>(-1i, i32(-2147483648), 1i)), Struct_2(vec2<f32>(-247f, 498f), -382f, vec3<i32>(1i, 1i, 84707i)), Struct_2(vec2<f32>(1179f, 380f), -287f, vec3<i32>(-3183i, 16281i, i32(-2147483648))), Struct_2(vec2<f32>(-1374f, 324f), -349f, vec3<i32>(0i, -1i, -28534i)), Struct_2(vec2<f32>(-561f, 1690f), -678f, vec3<i32>(1i, 2147483647i, -14758i)), Struct_2(vec2<f32>(-684f, -906f), -633f, vec3<i32>(46341i, -21433i, -1i)), Struct_2(vec2<f32>(365f, 1000f), 1122f, vec3<i32>(2147483647i, -23268i, i32(-2147483648))), Struct_2(vec2<f32>(-1424f, -251f), -156f, vec3<i32>(-35695i, 0i, 18100i)), Struct_2(vec2<f32>(161f, -280f), -232f, vec3<i32>(25332i, 1i, -39683i)), Struct_2(vec2<f32>(-2259f, -1000f), -545f, vec3<i32>(2147483647i, 1i, 0i)));

var<private> global4: array<Struct_4, 25>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> bool {
    global4 = array<Struct_4, 25>();
    var var_0 = any(vec3<bool>(true, true, true)) || all(vec3<bool>(true, false && (global2.x != 1044f), ~global0[_wgslsmith_index_u32(0u, 16u)] >= _wgslsmith_clamp_i32(u_input.a, global0[_wgslsmith_index_u32(0u, 16u)], -1i)));
    var var_1 = Struct_3(abs(firstLeadingBit(~abs(vec4<i32>(1i, u_input.a, 17112i, -34114i)))), _wgslsmith_clamp_u32(~41533u & _wgslsmith_dot_vec4_u32(vec4<u32>(54927u, 0u, 0u, 0u), vec4<u32>(127584u, 42333u, 1u, 4294967295u)), ~(~1u), _wgslsmith_dot_vec2_u32(vec2<u32>(19807u, 0u), vec2<u32>(1u, 1u))) & (~1u << (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 8539u), ~vec3<u32>(64238u, 394u, 38662u)) % 32u)));
    var var_2 = ~(~(~firstTrailingBit(~vec3<u32>(5393u, 4294967295u, 23151u))));
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-462f, global2.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - _wgslsmith_f_op_f32(-global2.x)), 432f)))), vec3<i32>(var_1.a.x, (2147483647i << (countOneBits(var_2.x) % 32u)) & -40431i, 7356i));
    return _wgslsmith_f_op_f32(-var_3.b) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.x))) * var_3.a.x));
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: i32, arg_3: vec3<u32>) -> f32 {
    let var_0 = vec2<bool>(all(!select(select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, true, arg_0)), !vec3<bool>(arg_0, true, true), !arg_0)), arg_0);
    let var_1 = vec4<u32>(~arg_3.x, ~(~(~1u)), ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, _wgslsmith_mult_u32(arg_3.x, arg_3.x)), arg_3.x), arg_3.x);
    global0 = array<i32, 16>();
    global1 = firstTrailingBit(40655i) > 49886i;
    global0 = array<i32, 16>();
    return _wgslsmith_f_op_f32(floor(-989f));
}

fn func_5(arg_0: f32, arg_1: Struct_5) -> bool {
    global1 = true;
    var var_0 = Struct_1(vec3<bool>(true, false, true), global2.x, vec4<u32>(~firstTrailingBit(~86242u), countOneBits(reverseBits(1u)), 1u, ~countOneBits(4294967295u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, -213f), vec2<f32>(arg_0, arg_0), vec2<bool>(false, true))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, global2.x) + vec2<f32>(1820f, -1000f)))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2748f, -477f) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1347f, -1000f))))))), firstLeadingBit(vec2<u32>(~(~1u), 4294967295u)));
    let var_1 = Struct_3(min(abs(~vec4<i32>(u_input.a, -1i, global0[_wgslsmith_index_u32(var_0.c.x, 16u)], -11085i) | select(vec4<i32>(global0[_wgslsmith_index_u32(var_0.c.x, 16u)], arg_1.a.x, 2147483647i, 0i), vec4<i32>(u_input.a, 2147483647i, 0i, 72294i), vec4<bool>(false, var_0.a.x, false, false))), _wgslsmith_mod_vec4_i32(vec4<i32>(reverseBits(arg_1.a.x), i32(-1i) * -2147483647i, min(-16640i, -2147483647i), _wgslsmith_clamp_i32(-2147483647i, 32000i, 1i)), _wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(-38093i, global0[_wgslsmith_index_u32(var_0.e.x, 16u)], -2147483647i, 1i)), countOneBits(vec4<i32>(arg_1.a.x, 1i, arg_1.a.x, 30755i)), vec4<i32>(6652i, arg_1.a.x, 12995i, u_input.a) & vec4<i32>(53304i, 0i, -51775i, global0[_wgslsmith_index_u32(var_0.c.x, 16u)])))), 4294967295u);
    return any(select(select(select(select(vec4<bool>(false, true, var_0.a.x, var_0.a.x), vec4<bool>(true, true, false, true), false), vec4<bool>(var_0.a.x, false, var_0.a.x, true), var_0.a.x), vec4<bool>(var_0.a.x, true, true, true), _wgslsmith_sub_i32(23712i, u_input.a) == -2147483647i), !select(!vec4<bool>(var_0.a.x, false, var_0.a.x, var_0.a.x), select(vec4<bool>(var_0.a.x, false, var_0.a.x, false), vec4<bool>(var_0.a.x, true, false, var_0.a.x), vec4<bool>(false, false, true, var_0.a.x)), any(var_0.a)), var_0.a.x));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: vec2<f32>) -> Struct_4 {
    global4 = array<Struct_4, 25>();
    global4 = array<Struct_4, 25>();
    global3 = array<Struct_2, 11>();
    global1 = func_5(_wgslsmith_f_op_f32(func_4(func_3(), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.yy) - _wgslsmith_f_op_vec2_f32(min(arg_2, _wgslsmith_f_op_vec2_f32(-arg_1.wz)))), -3334i, ~vec3<u32>(~21080u, ~4294967295u, ~25183u))), Struct_5(vec3<i32>(58207i, -2147483647i, 40348i) & arg_0.wzz));
    let var_0 = true;
    return global4[_wgslsmith_index_u32(1u, 25u)];
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: Struct_5, arg_3: Struct_3) -> vec2<f32> {
    let var_0 = global3[_wgslsmith_index_u32(30641u, 11u)];
    let var_1 = Struct_1(vec3<bool>(any(vec2<bool>(true, true)), func_3() && false, true), -1740f, max(abs(max(vec4<u32>(arg_3.b, arg_3.b, arg_3.b, arg_3.b), _wgslsmith_div_vec4_u32(vec4<u32>(arg_3.b, 0u, 48108u, arg_3.b), vec4<u32>(36202u, arg_3.b, arg_3.b, 29092u)))), vec4<u32>(4294967295u, arg_3.b, 0u, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_3.b), vec2<u32>(arg_3.b, 0u)), ~1u))), arg_0.zx, vec2<u32>(~arg_3.b, arg_3.b));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, var_1.b)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(f32(-1f) * -184f)))));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec2<bool>) -> u32 {
    global3 = array<Struct_2, 11>();
    global4 = array<Struct_4, 25>();
    global3 = array<Struct_2, 11>();
    let var_0 = global2.x;
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_6(_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, 213f, -223f, global2.x), vec4<f32>(-124f, global2.x, global2.x, global2.x)), func_2(vec4<i32>(global0[_wgslsmith_index_u32(49579u, 16u)], u_input.a, global0[_wgslsmith_index_u32(0u, 16u)], u_input.a), vec4<f32>(global2.x, global2.x, -1307f, -283f), vec2<f32>(global2.x, -504f)), Struct_5(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(arg_1, 16u)], u_input.a)), Struct_3(vec4<i32>(-1i, 2147483647i, -2147483647i, global0[_wgslsmith_index_u32(arg_1, 16u)]), arg_1))))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x)), _wgslsmith_div_vec2_f32(vec2<f32>(1506f, global2.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x)))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.x - global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))));
    return ~arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true | (_wgslsmith_mult_u32(~func_1(true, 1u, vec2<bool>(true, true)), ~4294967295u) <= ~1u);
    var var_1 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-862f - _wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_6(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, -1021f, global2.x, global2.x), vec4<f32>(global2.x, global2.x, global2.x, global2.x))), func_2(vec4<i32>(-21500i, 0i, global0[_wgslsmith_index_u32(59502u, 16u)], 1i), vec4<f32>(-1797f, -139f, global2.x, global2.x), vec2<f32>(global2.x, global2.x)), Struct_5(vec3<i32>(global0[_wgslsmith_index_u32(0u, 16u)], -1399i, 0i)), Struct_3(vec4<i32>(-30888i, 2147483647i, 43869i, global0[_wgslsmith_index_u32(0u, 16u)]), 62249u))).x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global2.x)), _wgslsmith_f_op_f32(abs(global2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + 193f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-global2.x), -160f, global2.x)))));
    global1 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1541f - 616f)), 951f)), Struct_5(min(~_wgslsmith_add_vec3_i32(vec3<i32>(-26735i, -2147483647i, u_input.a), vec3<i32>(0i, u_input.a, 1i)), ~(vec3<i32>(u_input.a, u_input.a, 7760i) >> (vec3<u32>(61329u, 1u, 1u) % vec3<u32>(32u))))));
    global0 = array<i32, 16>();
    global1 = _wgslsmith_f_op_f32(-global2.x) < -362f;
    global0 = array<i32, 16>();
    global3 = array<Struct_2, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x))), -781f)), abs(select(vec3<u32>(~21322u, ~3806u, ~1u), select(vec3<u32>(1u, 1u, 1u), select(vec3<u32>(2164u, 67609u, 25013u), vec3<u32>(34079u, 1u, 4294967295u), false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true))), any(vec4<bool>(true, true, true, true)))), ~38682u, var_1.x, _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-1i, global0[_wgslsmith_index_u32(4294967295u, 16u)])), firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(-1i, -2147483647i)))) >> (vec2<u32>(firstTrailingBit(40503u), ~(~1u)) % vec2<u32>(32u)));
}

