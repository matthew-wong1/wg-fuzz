struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<bool>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec3<bool>,
    d: bool,
    e: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(14995u, Struct_1(vec4<f32>(-1618f, 398f, 381f, 540f), vec2<u32>(14857u, 14789u), 332f, 23007i), vec4<bool>(true, true, false, true), 0i), Struct_2(44621u, Struct_1(vec4<f32>(-490f, -1774f, 191f, 302f), vec2<u32>(4294967295u, 0u), 200f, -1i), vec4<bool>(false, true, true, false), 2147483647i), Struct_2(4686u, Struct_1(vec4<f32>(-737f, -561f, -194f, 447f), vec2<u32>(1u, 26258u), -1784f, 2147483647i), vec4<bool>(true, false, false, true), i32(-2147483648)), Struct_2(3957u, Struct_1(vec4<f32>(-634f, 226f, -430f, 808f), vec2<u32>(69498u, 18128u), 210f, 24059i), vec4<bool>(true, false, true, false), 0i), Struct_2(0u, Struct_1(vec4<f32>(1142f, -336f, 1140f, -195f), vec2<u32>(92766u, 0u), 1365f, 2147483647i), vec4<bool>(false, true, true, false), -7161i), Struct_2(1u, Struct_1(vec4<f32>(-183f, -513f, -166f, 478f), vec2<u32>(4294967295u, 15730u), -544f, 1i), vec4<bool>(false, false, true, true), -34683i), Struct_2(1u, Struct_1(vec4<f32>(-672f, -1492f, 612f, 176f), vec2<u32>(51510u, 1u), -350f, 82506i), vec4<bool>(false, false, true, true), -1i), Struct_2(12463u, Struct_1(vec4<f32>(-529f, -1000f, 449f, 1000f), vec2<u32>(1365u, 27863u), 686f, 0i), vec4<bool>(true, false, true, true), 52033i), Struct_2(4294967295u, Struct_1(vec4<f32>(1000f, -412f, -326f, 1113f), vec2<u32>(77636u, 21319u), 863f, -4334i), vec4<bool>(false, true, true, false), i32(-2147483648)), Struct_2(0u, Struct_1(vec4<f32>(-384f, -2173f, 1000f, 253f), vec2<u32>(1u, 0u), -1000f, -76188i), vec4<bool>(true, false, false, true), 40498i), Struct_2(104910u, Struct_1(vec4<f32>(-1809f, -119f, 487f, 1194f), vec2<u32>(0u, 18162u), 1670f, -15847i), vec4<bool>(true, true, false, false), 68796i), Struct_2(4294967295u, Struct_1(vec4<f32>(-1605f, 743f, -586f, -1554f), vec2<u32>(31259u, 50987u), 1564f, -55292i), vec4<bool>(true, true, true, false), 2147483647i), Struct_2(1u, Struct_1(vec4<f32>(1302f, -453f, -1082f, 857f), vec2<u32>(0u, 0u), -1496f, -31120i), vec4<bool>(true, true, false, true), 0i));

var<private> global1: array<Struct_1, 11>;

var<private> global2: bool;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> u32 {
    let var_0 = ~(~_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, 37890u, u_input.a.x)), ~vec4<u32>(u_input.a.x, 34642u, 1u, 21560u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 90751u, u_input.a.x, 0u), vec4<u32>(u_input.a.x, u_input.a.x, 27165u, 40506u), vec4<u32>(1u, u_input.a.x, 52642u, u_input.a.x))) | ~vec4<u32>(~81382u, 0u, ~4294967295u, _wgslsmith_mult_u32(0u, u_input.a.x)));
    var var_1 = 4294967295u;
    global2 = true;
    var_1 = ~_wgslsmith_mult_u32(reverseBits(~var_0.x), ~(~u_input.a.x) & u_input.a.x);
    global1 = array<Struct_1, 11>();
    return 4294967295u;
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_5(vec2<u32>(func_3(), u_input.a.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, abs(0i) | _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, 0i, 22457i), vec4<i32>(1i, 52156i, -1031i, -3047i)), firstLeadingBit(min(-1i, 1i))), firstTrailingBit(vec3<i32>(~(-1i), -1i, reverseBits(-1014i))), -firstTrailingBit(~vec3<i32>(2147483647i, -2147483647i, 39109i))), ~u_input.a, any(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true))));
    var var_1 = !vec3<bool>(var_0.d, !any(select(vec3<bool>(var_0.d, true, true), vec3<bool>(false, var_0.d, var_0.d), false)), all(select(select(vec2<bool>(false, true), vec2<bool>(false, var_0.d), true), select(vec2<bool>(var_0.d, true), vec2<bool>(var_0.d, true), var_0.d), vec2<bool>(true, var_0.d))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1437f + 673f), -665f, -216f, -1774f), vec4<f32>(-444f, _wgslsmith_f_op_f32(round(1061f)), -196f, 1279f))), abs(_wgslsmith_add_vec2_u32(var_0.a, ~_wgslsmith_div_vec2_u32(var_0.a, vec2<u32>(24281u, 4294967295u)))), _wgslsmith_f_op_f32(trunc(-124f)), max(2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, var_0.b.x), abs(vec2<i32>(1i, -1i))), var_0.b.xy)));
    var var_3 = Struct_3(Struct_2(var_0.c.x, var_2, vec4<bool>(!var_1.x && !var_1.x, !(var_2.d != 23629i), false, (var_1.x || true) || true), -6643i), abs(4294967295u), !vec3<bool>(true, false, (u_input.a.x >= 4294967295u) && select(var_0.d, false, var_0.d)), var_2.d >= _wgslsmith_mod_i32(1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(var_0.b, var_0.b), ~var_0.b.x)), ~(~(~firstLeadingBit(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, var_2.b.x)))));
    global1 = array<Struct_1, 11>();
    return var_3.a.c;
}

fn func_1() -> Struct_2 {
    global2 = !any(vec4<bool>(true, false, true, select(false, true, true)));
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(354f * 1338f) + 448f), 711f, _wgslsmith_f_op_f32(1f + -426f))));
    let var_1 = _wgslsmith_f_op_f32(var_0.x * var_0.x);
    let var_2 = vec4<i32>(1i, -countOneBits(-1i), abs(~1i), -_wgslsmith_dot_vec4_i32(-vec4<i32>(-3928i, 60292i, 2147483647i, 2147483647i), vec4<i32>(1i, ~39152i, 1i, -1i)));
    global0 = array<Struct_2, 13>();
    return Struct_2(~4294967295u, global1[_wgslsmith_index_u32(4294967295u, 11u)], select(vec4<bool>(true, false, all(vec3<bool>(false, true, false)), u_input.a.x != firstTrailingBit(1u)), func_2(), !select(vec4<bool>(false, true, true, true), func_2(), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), true))), ~(~(-37027i)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> bool {
    global2 = all(vec3<bool>(!(!arg_0.c.x), false, u_input.a.x <= func_3()));
    global2 = true;
    global1 = array<Struct_1, 11>();
    var var_0 = 1499f;
    global2 = all(!(!func_1().c)) || all(func_2());
    return arg_0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !(true & (all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false))) == func_4(func_1(), Struct_3(Struct_2(56862u, global1[_wgslsmith_index_u32(0u, 11u)], vec4<bool>(false, true, true, true), 24644i), 2901u, vec3<bool>(false, false, true), false, vec4<u32>(0u, 1u, 19890u, 0u)))));
    var var_0 = Struct_4(-reverseBits(-12555i), ~u_input.a.x, vec3<u32>(countOneBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 0u, u_input.a.x, 1u), vec4<u32>(u_input.a.x, 69u, 1u, 47060u))), _wgslsmith_sub_u32(u_input.a.x, ~0u) & max(reverseBits(u_input.a.x), _wgslsmith_mod_u32(u_input.a.x, 0u)), (~4294967295u ^ ~u_input.a.x) ^ ~u_input.a.x), ~abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 15928u, 4294967295u, u_input.a.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 0u)), vec4<u32>(1u, 1u, 1u, 1u))), u_input.a);
    let var_1 = vec4<u32>(20032u, 4294967295u, u_input.a.x, ~_wgslsmith_sub_u32(var_0.b, _wgslsmith_add_u32(~4294967295u, abs(56346u))));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-947f + 1278f))), _wgslsmith_f_op_f32(f32(-1f) * -2376f), -599f)), vec3<f32>(-1966f, -320f, -276f), !func_2().wzz));
    var var_3 = Struct_4(_wgslsmith_sub_i32(var_0.a, _wgslsmith_div_i32(abs(36373i) >> (~var_1.x % 32u), var_0.a)), func_1().b.b.x, _wgslsmith_div_vec3_u32(~vec3<u32>(_wgslsmith_sub_u32(u_input.a.x, var_1.x), 1u, 1u), var_1.xwz & vec3<u32>(1u, 17984u ^ var_0.e.x, ~1u)), vec4<u32>(countOneBits(abs(4294967295u)), 12632u, ~abs(78860u), ~(~abs(u_input.a.x))), u_input.a);
    let var_4 = countOneBits(select(select(~(~vec3<i32>(1i, var_0.a, var_3.a)), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.a, 37854i, var_3.a), vec3<i32>(var_0.a, var_3.a, var_0.a)), true), _wgslsmith_clamp_vec3_i32(min(vec3<i32>(var_0.a, -1i, var_3.a), vec3<i32>(var_3.a, -2147483647i, var_0.a)), ~vec3<i32>(-2147483647i, -32432i, 1443i), vec3<i32>(-12209i, -43336i, 31713i) & vec3<i32>(var_3.a, var_0.a, var_3.a)) << (_wgslsmith_mod_vec3_u32(~var_1.wwy, var_1.zxz) % vec3<u32>(32u)), vec3<bool>(func_1().c.x, true, any(select(vec2<bool>(true, false), vec2<bool>(false, true), true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -389f)))) * func_1().b.a.x), var_4.x, 23723u, 0u, var_4.x);
}

