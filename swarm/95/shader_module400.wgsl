struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(Struct_2(vec3<bool>(false, true, false)), Struct_1(true, true, 8647i, vec4<i32>(-1i, 7641i, 0i, 20875i)), vec2<i32>(1i, 0i), Struct_1(true, false, 449i, vec4<i32>(i32(-2147483648), i32(-2147483648), 3744i, i32(-2147483648))), vec2<i32>(-59373i, -5281i)), Struct_3(Struct_2(vec3<bool>(false, false, false)), Struct_1(false, false, 3810i, vec4<i32>(0i, 0i, -7649i, -50744i)), vec2<i32>(16016i, 0i), Struct_1(true, false, 0i, vec4<i32>(1i, 0i, -60296i, 54356i)), vec2<i32>(i32(-2147483648), -1i)), Struct_3(Struct_2(vec3<bool>(false, false, true)), Struct_1(true, false, -15657i, vec4<i32>(-51501i, 0i, 1692i, -5769i)), vec2<i32>(1i, 2147483647i), Struct_1(false, true, -1i, vec4<i32>(-30208i, -1i, 42950i, -1i)), vec2<i32>(2147483647i, 49849i)), Struct_3(Struct_2(vec3<bool>(true, false, true)), Struct_1(false, true, 0i, vec4<i32>(57058i, -28256i, 0i, i32(-2147483648))), vec2<i32>(1i, 45643i), Struct_1(true, true, 1i, vec4<i32>(27537i, i32(-2147483648), -10981i, 23926i)), vec2<i32>(25766i, -46488i)), Struct_3(Struct_2(vec3<bool>(true, false, true)), Struct_1(true, true, -1i, vec4<i32>(i32(-2147483648), 0i, -1i, -12916i)), vec2<i32>(-1i, 22180i), Struct_1(true, false, 42230i, vec4<i32>(i32(-2147483648), -4414i, -43973i, -7730i)), vec2<i32>(-1i, -24901i)), Struct_3(Struct_2(vec3<bool>(true, true, false)), Struct_1(true, true, -1i, vec4<i32>(0i, 19462i, -19759i, 0i)), vec2<i32>(-10358i, -59383i), Struct_1(true, true, 3446i, vec4<i32>(50230i, 34167i, -22660i, 29184i)), vec2<i32>(-1i, 32624i)), Struct_3(Struct_2(vec3<bool>(true, true, false)), Struct_1(false, true, 0i, vec4<i32>(2147483647i, 40050i, 1i, -75210i)), vec2<i32>(-1146i, 2147483647i), Struct_1(false, false, -10173i, vec4<i32>(-52933i, 1i, i32(-2147483648), -50381i)), vec2<i32>(-10960i, 47818i)), Struct_3(Struct_2(vec3<bool>(true, true, false)), Struct_1(true, true, 2147483647i, vec4<i32>(0i, 21926i, 226i, -1i)), vec2<i32>(1i, i32(-2147483648)), Struct_1(false, true, 47033i, vec4<i32>(-1i, 1i, -37117i, 1i)), vec2<i32>(-8571i, -1i)), Struct_3(Struct_2(vec3<bool>(true, false, true)), Struct_1(true, false, i32(-2147483648), vec4<i32>(19013i, 2147483647i, 47837i, -1i)), vec2<i32>(1i, -1i), Struct_1(false, false, 2147483647i, vec4<i32>(-6136i, 21833i, 11906i, -72015i)), vec2<i32>(-1i, 46053i)), Struct_3(Struct_2(vec3<bool>(true, true, false)), Struct_1(true, false, -29326i, vec4<i32>(-28391i, 12880i, i32(-2147483648), 19551i)), vec2<i32>(-23076i, 30306i), Struct_1(true, true, 1i, vec4<i32>(i32(-2147483648), -25923i, i32(-2147483648), -9338i)), vec2<i32>(2147483647i, -4611i)), Struct_3(Struct_2(vec3<bool>(false, true, false)), Struct_1(true, false, 20995i, vec4<i32>(1i, -18278i, i32(-2147483648), i32(-2147483648))), vec2<i32>(4508i, 2147483647i), Struct_1(true, false, 1i, vec4<i32>(-19927i, -29010i, i32(-2147483648), -1i)), vec2<i32>(-8488i, 1i)), Struct_3(Struct_2(vec3<bool>(false, false, false)), Struct_1(false, false, i32(-2147483648), vec4<i32>(i32(-2147483648), i32(-2147483648), -55516i, 1i)), vec2<i32>(0i, 5503i), Struct_1(true, false, 1i, vec4<i32>(-28889i, 29846i, 2147483647i, 0i)), vec2<i32>(i32(-2147483648), 57868i)), Struct_3(Struct_2(vec3<bool>(false, false, false)), Struct_1(false, false, -9459i, vec4<i32>(i32(-2147483648), 26309i, 36527i, 0i)), vec2<i32>(i32(-2147483648), 1i), Struct_1(false, true, -1i, vec4<i32>(-20007i, 14643i, 4813i, i32(-2147483648))), vec2<i32>(1i, -22597i)), Struct_3(Struct_2(vec3<bool>(false, false, false)), Struct_1(false, true, 0i, vec4<i32>(-1i, -20353i, 21383i, 2147483647i)), vec2<i32>(0i, i32(-2147483648)), Struct_1(true, false, 20581i, vec4<i32>(11884i, 0i, 1223i, 6842i)), vec2<i32>(45728i, -54427i)), Struct_3(Struct_2(vec3<bool>(true, true, true)), Struct_1(false, false, 13766i, vec4<i32>(10678i, -1i, i32(-2147483648), -20445i)), vec2<i32>(i32(-2147483648), 41710i), Struct_1(false, false, i32(-2147483648), vec4<i32>(0i, 6359i, i32(-2147483648), -1i)), vec2<i32>(28010i, -1i)), Struct_3(Struct_2(vec3<bool>(true, true, true)), Struct_1(true, false, 0i, vec4<i32>(0i, 19116i, 31004i, 0i)), vec2<i32>(-1i, 18549i), Struct_1(true, true, 855i, vec4<i32>(67413i, 0i, 33461i, i32(-2147483648))), vec2<i32>(0i, 1i)), Struct_3(Struct_2(vec3<bool>(false, false, false)), Struct_1(true, false, -23697i, vec4<i32>(9578i, 1i, 2147483647i, 0i)), vec2<i32>(0i, i32(-2147483648)), Struct_1(false, true, 2147483647i, vec4<i32>(i32(-2147483648), 1i, 14433i, -12180i)), vec2<i32>(34723i, 54268i)), Struct_3(Struct_2(vec3<bool>(true, true, false)), Struct_1(false, false, 49452i, vec4<i32>(-63462i, -1i, -39040i, 17265i)), vec2<i32>(1i, 0i), Struct_1(false, true, 21489i, vec4<i32>(-27048i, 0i, 1i, 12137i)), vec2<i32>(-49152i, 4044i)), Struct_3(Struct_2(vec3<bool>(true, false, true)), Struct_1(true, true, 2147483647i, vec4<i32>(-28656i, 0i, -55184i, 1i)), vec2<i32>(2147483647i, 2147483647i), Struct_1(false, false, -20838i, vec4<i32>(9999i, 8968i, 83492i, -36537i)), vec2<i32>(5472i, -19146i)), Struct_3(Struct_2(vec3<bool>(false, false, true)), Struct_1(false, true, -41560i, vec4<i32>(2147483647i, 0i, -1i, 40052i)), vec2<i32>(2147483647i, -1i), Struct_1(true, true, -5212i, vec4<i32>(-32555i, 2147483647i, 21186i, -13935i)), vec2<i32>(-9089i, -1i)), Struct_3(Struct_2(vec3<bool>(true, true, true)), Struct_1(false, true, 11683i, vec4<i32>(-1i, -4246i, -1i, 0i)), vec2<i32>(1i, 0i), Struct_1(true, false, -1i, vec4<i32>(54053i, -19395i, 55972i, 48452i)), vec2<i32>(i32(-2147483648), i32(-2147483648))));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> i32 {
    global0 = array<Struct_3, 21>();
    global0 = array<Struct_3, 21>();
    global0 = array<Struct_3, 21>();
    let var_0 = u_input.d.x;
    let var_1 = _wgslsmith_div_vec3_i32(-vec3<i32>(_wgslsmith_add_i32(4539i, -u_input.d.x), ~(i32(-1i) * -2147483647i), 0i), ~u_input.d.zwy);
    return var_0;
}

fn func_2(arg_0: u32, arg_1: bool) -> bool {
    global0 = array<Struct_3, 21>();
    global0 = array<Struct_3, 21>();
    return !(min(countOneBits(func_3()), _wgslsmith_mult_i32(_wgslsmith_mod_i32(-31684i, u_input.d.x), 1i)) == select(~(i32(-1i) * -1i), u_input.d.x, true));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> Struct_1 {
    var var_0 = select(select(vec3<bool>(all(vec4<bool>(false, arg_1.a.x, arg_0.b.b, arg_0.a.a.x)), func_2(0u, any(vec4<bool>(false, arg_0.a.a.x, arg_0.b.b, arg_0.a.a.x))), any(vec4<bool>(false, false, true, true))), arg_0.a.a, select(vec3<bool>(!arg_0.a.a.x, arg_0.a.a.x && arg_0.d.a, true), !(!vec3<bool>(false, false, arg_0.b.b)), 133261u < u_input.b)), select(!arg_0.a.a, !select(vec3<bool>(arg_0.a.a.x, true, true), !arg_1.a, any(vec2<bool>(arg_0.a.a.x, false))), !all(arg_1.a) || true), false);
    var var_1 = arg_0.b;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1153f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1049f - 938f))))));
    let var_3 = var_2;
    var var_4 = u_input.d.x;
    return arg_0.b;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = true;
    global0 = array<Struct_3, 21>();
    global0 = array<Struct_3, 21>();
    var var_1 = select(!vec2<bool>(false, all(select(vec3<bool>(arg_0.a, arg_0.b, arg_0.a), vec3<bool>(false, true, arg_0.a), vec3<bool>(false, false, false)))), vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(true, true));
    global0 = array<Struct_3, 21>();
    return func_4(Struct_3(Struct_2(vec3<bool>(u_input.e.x >= 0u, all(vec4<bool>(false, var_1.x, var_1.x, false)), !arg_0.b)), Struct_1(func_2(_wgslsmith_mod_u32(4294967295u, u_input.a.x), true), ~u_input.e.x <= _wgslsmith_div_u32(0u, 73924u), u_input.d.x, max(select(u_input.d, u_input.d, var_1.x), arg_0.d)), reverseBits(arg_0.d.zz) ^ (~u_input.d.yy & (u_input.d.xw >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)))), arg_0, ~firstTrailingBit(firstLeadingBit(vec2<i32>(u_input.d.x, u_input.d.x)))), Struct_2(!(!(!vec3<bool>(arg_0.b, arg_0.b, false)))));
}

fn func_5(arg_0: Struct_3, arg_1: f32) -> vec3<f32> {
    global0 = array<Struct_3, 21>();
    let var_0 = vec4<u32>(_wgslsmith_sub_u32(~firstLeadingBit(abs(u_input.c.x)), ~119973u), firstLeadingBit(u_input.a.x), 1u, _wgslsmith_div_u32(u_input.b, 2554u << ((_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.b, u_input.b, 4294967295u), vec4<u32>(u_input.e.x, u_input.e.x, 64755u, 4294967295u)) | (u_input.c.x >> (0u % 32u))) % 32u)));
    let var_1 = arg_1;
    let var_2 = min(max(4294967295u, ~(~var_0.x)), 92619u);
    global0 = array<Struct_3, 21>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, arg_1, -599f) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2474f, -130f, var_1)))))) + vec3<f32>(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(148f)) - _wgslsmith_f_op_f32(f32(-1f) * -821f)), _wgslsmith_f_op_f32(min(688f, arg_1)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_u32(u_input.b, _wgslsmith_dot_vec2_u32((_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.e.x, u_input.e.x), u_input.e.zz, vec2<u32>(u_input.c.x, u_input.b)) & _wgslsmith_div_vec2_u32(u_input.e.yy, u_input.c.xy)) | ~(~vec2<u32>(0u, u_input.a.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x >> (u_input.a.x % 32u), ~0u), vec2<u32>(1u, 1u))));
    var var_1 = u_input.a.x;
    let var_2 = false;
    var_1 = ~firstTrailingBit(_wgslsmith_sub_u32(~u_input.c.x, firstLeadingBit(u_input.e.x & 73280u)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(Struct_3(Struct_2(select(vec3<bool>(true, true, var_2), vec3<bool>(true, false, false), false)), func_1(Struct_1(true, var_2, u_input.d.x, vec4<i32>(2147483647i, -79686i, u_input.d.x, u_input.d.x))), vec2<i32>(-2147483647i ^ u_input.d.x, ~u_input.d.x), Struct_1(var_2, false, ~(-22252i), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x)), max(vec2<i32>(1i, u_input.d.x), _wgslsmith_mod_vec2_i32(u_input.d.zx, u_input.d.wz))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2208f + 1000f), 2201f, true)), 1f)))));
    var var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(var_3.x, var_3.x), 463f) * var_3.yy);
    let var_5 = global0[_wgslsmith_index_u32(~47733u, 21u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-var_3));
}

