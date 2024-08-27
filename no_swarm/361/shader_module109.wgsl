struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 12>;

var<private> global1: array<vec4<i32>, 26> = array<vec4<i32>, 26>(vec4<i32>(15879i, -29084i, -5114i, i32(-2147483648)), vec4<i32>(-15929i, 2147483647i, 2147483647i, 1i), vec4<i32>(-59798i, 17399i, -1541i, i32(-2147483648)), vec4<i32>(14768i, i32(-2147483648), -10634i, 29255i), vec4<i32>(-9071i, 2147483647i, -2012i, 0i), vec4<i32>(33274i, -43464i, i32(-2147483648), -1i), vec4<i32>(i32(-2147483648), i32(-2147483648), -575i, 0i), vec4<i32>(-40078i, 0i, 0i, i32(-2147483648)), vec4<i32>(-66009i, 1i, -26968i, 2147483647i), vec4<i32>(-29229i, 2147483647i, 29094i, 7431i), vec4<i32>(i32(-2147483648), 0i, -16641i, 5153i), vec4<i32>(56851i, 1i, 0i, i32(-2147483648)), vec4<i32>(-1i, 1i, 2147483647i, -1i), vec4<i32>(-19850i, 17357i, 40130i, 48758i), vec4<i32>(17232i, 41229i, 42922i, 38988i), vec4<i32>(20764i, 1i, 55645i, -34637i), vec4<i32>(61757i, -1i, -29965i, -4532i), vec4<i32>(-1805i, i32(-2147483648), -41166i, -1i), vec4<i32>(1i, -2185i, -1i, 2147483647i), vec4<i32>(0i, 2147483647i, 13997i, 23431i), vec4<i32>(12370i, -12934i, 19453i, -9796i), vec4<i32>(-60054i, 22751i, -43428i, i32(-2147483648)), vec4<i32>(-22166i, i32(-2147483648), 55387i, -52093i), vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, 0i), vec4<i32>(2147483647i, -43723i, i32(-2147483648), 27956i), vec4<i32>(5686i, i32(-2147483648), -43207i, 2044i));

var<private> global2: Struct_4 = Struct_4(-655f);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec3<i32>, arg_3: bool) -> vec3<bool> {
    var var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(~(_wgslsmith_clamp_i32(-12179i, arg_2.x, arg_2.x) & _wgslsmith_dot_vec2_i32(u_input.b.yx, u_input.b.xx)), 1i), ~(~u_input.b.xy));
    global1 = array<vec4<i32>, 26>();
    global1 = array<vec4<i32>, 26>();
    var var_1 = Struct_1(select(select(select(select(vec2<bool>(arg_3, true), vec2<bool>(true, false), true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, arg_3)), select(vec2<bool>(arg_3, arg_0), vec2<bool>(arg_3, arg_0), true)), vec2<bool>(true, arg_2.x > u_input.c), !select(vec2<bool>(arg_3, arg_3), vec2<bool>(true, arg_3), arg_3)), !select(!vec2<bool>(arg_0, arg_3), vec2<bool>(true, true), true), arg_0), ~1i, arg_1);
    return vec3<bool>(true || all(!(!var_1.a)), arg_3, true);
}

fn func_2(arg_0: vec4<u32>) -> bool {
    global0 = array<Struct_3, 12>();
    var var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(618f, global2.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a, global2.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(838f, -2102f) - vec2<f32>(-118f, -2206f)))))), ~_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(2766u, 4294967295u, arg_0.x) ^ arg_0.yww, ~vec3<u32>(1u, u_input.a.x, u_input.a.x), vec3<u32>(12309u, 0u, 4294967295u)), arg_0.yzx), 97918u, ~arg_0, ~global1[_wgslsmith_index_u32(~firstTrailingBit(0u), 26u)]);
    var var_1 = _wgslsmith_f_op_f32(max(global2.a, _wgslsmith_f_op_f32(1461f * 963f)));
    global0 = array<Struct_3, 12>();
    global2 = Struct_4(887f);
    return any(select(vec4<bool>(true, all(vec2<bool>(false, false)) || all(vec3<bool>(true, false, true)), false, select(true, false, true)), vec4<bool>(select(true, true, true), any(func_3(false, u_input.a.x, u_input.b, false)), any(select(vec2<bool>(false, true), vec2<bool>(false, true), false)), true), !(any(vec2<bool>(false, true)) & all(vec2<bool>(true, false)))));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_4) -> bool {
    let var_0 = any(select(vec4<bool>(true, false, func_2(~vec4<u32>(1u, u_input.a.x, u_input.a.x, 61507u)), all(vec2<bool>(true, true))), !(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false))), !select(any(vec4<bool>(true, false, false, false)), true, true)));
    global2 = arg_1;
    var var_1 = Struct_1(func_3(false || var_0, _wgslsmith_sub_u32(1u, (u_input.a.x & 2923u) | 1u), select(_wgslsmith_mult_vec3_i32(u_input.b, -vec3<i32>(u_input.b.x, 2147483647i, 64100i)), -vec3<i32>(u_input.b.x, 0i, 0i), !func_3(true, 4960u, vec3<i32>(u_input.c, u_input.c, u_input.b.x), false)), !all(vec3<bool>(true, true, var_0))).zy, ~31832i, reverseBits(_wgslsmith_clamp_u32(select(4294967295u, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), all(vec2<bool>(false, var_0))), u_input.a.x >> (~1u % 32u), 11976u & abs(u_input.a.x))));
    let var_2 = arg_1;
    let var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1311f, -392f, _wgslsmith_f_op_f32(-global2.a)) * vec3<f32>(_wgslsmith_f_op_f32(sign(global2.a)), _wgslsmith_div_f32(arg_1.a, -509f), 353f)));
    return true && ((arg_0.x <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1627f)), -407f))) | any(vec3<bool>(!var_1.a.x, true, var_1.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec2<bool>(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, 250f, -585f, -160f)), Struct_4(_wgslsmith_f_op_f32(-global2.a))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1694f, 1369f)) >= _wgslsmith_f_op_f32(select(188f, _wgslsmith_f_op_f32(f32(-1f) * -160f), any(vec3<bool>(false, true, false))))));
    let var_1 = Struct_4(-623f);
    var var_2 = 136f;
    var_0 = true;
    let var_3 = 1023f;
    var_0 = any(vec2<bool>(!(min(u_input.a.x, u_input.a.x) != u_input.a.x), func_2(vec4<u32>(~36776u, min(u_input.a.x, 77740u), firstLeadingBit(4294967295u), 30625u))));
    var var_4 = _wgslsmith_clamp_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 71242u), ~vec4<u32>(4294967295u, 4294967295u, 49266u, u_input.a.x)), min(u_input.a.x, 4294967295u), u_input.a.x), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.a.x >> (u_input.a.x % 32u), 90611u), _wgslsmith_mod_u32(countOneBits(47939u), 40723u), u_input.a.x), u_input.a), max(_wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 18757u, 1u)))), vec3<u32>(u_input.a.x & ~1u, 4294967295u, ~(u_input.a.x >> (u_input.a.x % 32u)))));
    let var_5 = func_3(!(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, -2147483647i), global1[_wgslsmith_index_u32(62647u, 26u)]) <= _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.b.x), vec2<i32>(u_input.c, -2147483647i))) | false, 36930u, u_input.b, !(!(u_input.b.x > -2147483647i))).xz;
    var var_6 = Struct_2(Struct_1(var_5, _wgslsmith_dot_vec4_i32(firstLeadingBit(~global1[_wgslsmith_index_u32(168866u, 26u)]), _wgslsmith_sub_vec4_i32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, var_4.x, 17439u, var_4.x), vec4<u32>(4294967295u, 1u, u_input.a.x, 37368u)), 26u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4769u, u_input.a.x, 6396u, var_4.x), vec4<u32>(63634u, 72920u, var_4.x, u_input.a.x)), 26u)])), _wgslsmith_div_u32(min(~u_input.a.x, ~u_input.a.x), 4294967295u)), select(!func_3(var_5.x, _wgslsmith_mult_u32(u_input.a.x, var_4.x), vec3<i32>(-2147483647i, u_input.b.x, 2384i), var_5.x || var_5.x).xz, !var_5, var_5.x), ~(~_wgslsmith_sub_vec2_u32(~var_4.xz, u_input.a.xz)), Struct_1(vec2<bool>(true, true), u_input.c, abs(u_input.a.x) ^ var_4.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(max(280f, -1094f))) + _wgslsmith_f_op_f32(min(202f, _wgslsmith_f_op_f32(f32(-1f) * -803f)))))));
}

