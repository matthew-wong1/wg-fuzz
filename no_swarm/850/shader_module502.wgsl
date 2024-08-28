struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: f32,
    d: vec4<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_3,
    d: vec4<i32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 20> = array<vec2<bool>, 20>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a.zx, u_input.a.wy, vec2<i32>(i32(-1i) * -6583i, u_input.a.x)), ~u_input.a.wx), all(vec4<bool>(true, true & any(vec4<bool>(true, true, false, false)), abs(-45527i) >= ~u_input.a.x, true)));
    var var_1 = _wgslsmith_clamp_vec3_u32(select(select(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), select(false, var_0.b, var_0.b)), vec3<u32>(abs(4294967295u), ~33596u, ~1u), vec3<bool>(true, var_0.b, true)), vec3<u32>(1u, 1u, 1u), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(0u, 36236u), 15847u >> (0u % 32u)), ~_wgslsmith_mod_u32(0u, 10239u), ~abs(4294967295u))) << (firstTrailingBit(~_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(30108u, 4949u, 4294967295u), vec3<u32>(1u, 51984u, 7083u)), vec3<u32>(1u, 120029u, 26255u))) % vec3<u32>(32u));
    let var_2 = Struct_3(vec2<u32>(min(reverseBits(abs(var_1.x)), ~var_1.x), var_1.x), !vec4<bool>(true, false, var_0.b, any(global0[_wgslsmith_index_u32(4294967295u, 20u)])), 1130f, -(abs(abs(vec4<i32>(1i, var_0.a.x, 1i, 1i))) ^ u_input.a));
    let var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(-12067i, -_wgslsmith_mult_i32(_wgslsmith_mod_i32(0i, -35843i), ~var_0.a.x), max(-2147483647i, 924i), u_input.a.x), vec4<i32>(~(_wgslsmith_dot_vec4_i32(vec4<i32>(2760i, 26622i, 1i, var_2.d.x), vec4<i32>(var_2.d.x, u_input.a.x, -1i, var_0.a.x)) & -u_input.a.x), u_input.a.x, _wgslsmith_clamp_i32(-u_input.a.x, -17451i, _wgslsmith_dot_vec2_i32(-vec2<i32>(var_0.a.x, 0i), abs(vec2<i32>(-2147483647i, 15570i)))), 35533i));
    var var_4 = Struct_1(vec2<i32>(_wgslsmith_div_i32(abs(abs(-1i)), -5413i), ~(-2147483647i)), !var_2.b.x);
    return _wgslsmith_add_u32(52848u, var_2.a.x);
}

fn func_2(arg_0: vec4<i32>, arg_1: f32) -> Struct_5 {
    global0 = array<vec2<bool>, 20>();
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(f32(-1f) * -1638f)), -920f) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-734f, arg_1, -647f)))))))));
    var var_1 = max(~4294967295u, 59249u);
    let var_2 = -18730i >> ((_wgslsmith_sub_u32(max(func_3(), 1u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(69893u, 4294967295u, 32650u), vec3<u32>(0u, 4294967295u, 12501u))) | func_3()) % 32u);
    let var_3 = -1i;
    return Struct_5(1i, Struct_1(-_wgslsmith_add_vec2_i32(arg_0.zw >> (vec2<u32>(0u, 0u) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(var_3, -1i), vec2<i32>(var_3, 38666i))), !(arg_0.x == var_3)), ~abs(u_input.a.zww), Struct_1(max(countOneBits(u_input.a.wx), vec2<i32>(-7416i, -var_2)), any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), true))), Struct_4(11509u, Struct_2(var_3, select(vec2<u32>(1u, 1u), ~vec2<u32>(1u, 3485u), true), vec2<f32>(-1000f, 1f)), Struct_3(vec2<u32>(1u, 1u), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), select(true, false, true)), _wgslsmith_f_op_f32(var_0.x + var_0.x), arg_0), _wgslsmith_div_vec4_i32(vec4<i32>(-u_input.a.x, countOneBits(var_3), ~var_3, -var_3), u_input.a)));
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-185f + -1741f)));
    let var_1 = func_2(u_input.a, _wgslsmith_f_op_f32(round(469f)));
    let var_2 = var_1;
    let var_3 = var_1.e.a;
    let var_4 = _wgslsmith_mod_vec2_i32(u_input.a.xz, var_1.c.zy);
    return var_1.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    let var_1 = vec3<bool>(any(vec4<bool>(false, true, func_1(), true)), var_0 > u_input.a.x, true);
    var var_2 = func_2(~(-(~(u_input.a & vec4<i32>(1i, -53424i, 2135i, -1i)))), -702f).e.c.a;
    var var_3 = Struct_3(_wgslsmith_mod_vec2_u32(firstTrailingBit(~vec2<u32>(26079u, var_2.x)), _wgslsmith_sub_vec2_u32(~vec2<u32>(var_2.x, 4294967295u), vec2<u32>(40366u, 26467u) ^ vec2<u32>(17452u, var_2.x))) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), select(select(select(vec4<bool>(true, true, var_1.x, var_1.x), func_2(vec4<i32>(25126i, 2147483647i, u_input.a.x, -2147483647i), -1217f).e.c.b, !var_1.x), func_2(_wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(var_0, -5609i, u_input.a.x, var_0)), _wgslsmith_f_op_f32(-1293f + -638f)).e.c.b, func_2(u_input.a, _wgslsmith_f_op_f32(553f * -543f)).e.c.b), vec4<bool>(!(u_input.a.x != -9096i), true, all(!vec4<bool>(false, var_1.x, true, var_1.x)), false), vec4<bool>(false, var_1.x, (var_1.x && true) && (u_input.a.x <= u_input.a.x), var_1.x)), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-663f - -1574f) + 1000f)), (u_input.a >> (abs(vec4<u32>(var_2.x, 0u, 4294967295u, 30568u) ^ vec4<u32>(var_2.x, var_2.x, var_2.x, 52089u)) % vec4<u32>(32u))) << (vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, 5319u, 1u, 0u), vec4<u32>(var_2.x, 1u, 41823u, 12774u)), 15120u), ~min(var_2.x, 4294967295u), _wgslsmith_mod_u32(~10358u, _wgslsmith_mod_u32(var_2.x, var_2.x)), 1u ^ _wgslsmith_div_u32(4294967295u, var_2.x)) % vec4<u32>(32u)));
    var var_4 = _wgslsmith_div_vec2_u32(vec2<u32>(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_2.x, var_2.x, 78273u), vec4<u32>(0u, var_3.a.x, 12320u, var_2.x))), var_3.a.x), var_3.a);
    var var_5 = ~_wgslsmith_clamp_vec2_i32(firstLeadingBit(var_3.d.xx), vec2<i32>(_wgslsmith_clamp_i32(1i, var_0, 1i) | 1i, reverseBits(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-94941i, -2147483647i, -32562i, -9677i)))), var_3.d.xw);
    var var_6 = ~(~abs(58371u));
    var var_7 = vec3<i32>(_wgslsmith_sub_i32(select(~var_0, -8122i, var_3.b.x), ~(-1i)), var_5.x, -26183i & -max(var_0, -1i)) & ~(-max(u_input.a.yzz, -var_3.d.xww));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.a.x | 8271i, 1i, abs(func_2(var_3.d, _wgslsmith_f_op_f32(f32(-1f) * -120f)).a), ~(~6164i >> (~var_2.x % 32u))));
}

