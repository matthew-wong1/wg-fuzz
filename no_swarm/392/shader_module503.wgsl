struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 25> = array<vec3<i32>, 25>(vec3<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec3<i32>(2993i, 49620i, -12783i), vec3<i32>(2147483647i, -1i, -44778i), vec3<i32>(1i, 2147483647i, i32(-2147483648)), vec3<i32>(5713i, -1i, -6191i), vec3<i32>(-13466i, 1i, -9864i), vec3<i32>(5560i, i32(-2147483648), i32(-2147483648)), vec3<i32>(2147483647i, -59810i, 0i), vec3<i32>(42312i, 2147483647i, 1i), vec3<i32>(-1i, 1i, -40473i), vec3<i32>(-35831i, 2781i, 11428i), vec3<i32>(35437i, -23120i, 0i), vec3<i32>(13629i, i32(-2147483648), 81495i), vec3<i32>(-1i, -1i, -1i), vec3<i32>(1i, i32(-2147483648), -40091i), vec3<i32>(i32(-2147483648), 1i, 2147483647i), vec3<i32>(i32(-2147483648), -48104i, -42224i), vec3<i32>(-31258i, i32(-2147483648), 0i), vec3<i32>(i32(-2147483648), 2147483647i, 1i), vec3<i32>(i32(-2147483648), 1i, 0i), vec3<i32>(2147483647i, 2147483647i, 0i), vec3<i32>(-42429i, 1i, -7170i), vec3<i32>(7919i, 58067i, 0i), vec3<i32>(-680i, 4384i, 1i), vec3<i32>(54780i, i32(-2147483648), 2147483647i));

var<private> global1: Struct_3;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<i32>) -> u32 {
    let var_0 = Struct_3(firstTrailingBit(vec4<u32>(min(global1.a.x, _wgslsmith_dot_vec2_u32(global1.a.wx, global1.a.wx)), 4294967295u, 1u, ~(~23611u))), -_wgslsmith_dot_vec3_i32(-_wgslsmith_mod_vec3_i32(global0[_wgslsmith_index_u32(0u, 25u)], vec3<i32>(2147483647i, arg_0.x, 2147483647i)), min(vec3<i32>(10688i, arg_0.x, 2147483647i) >> (global1.a.zxy % vec3<u32>(32u)), select(arg_0, vec3<i32>(-35391i, 17140i, 24129i), vec3<bool>(true, false, true)))), global1.c, Struct_2(vec4<i32>(~(global1.c.a.x >> (8095u % 32u)), _wgslsmith_dot_vec4_i32(countOneBits(global1.d.a), select(vec4<i32>(global1.c.a.x, -13518i, u_input.b, -12505i), vec4<i32>(arg_0.x, arg_0.x, 1i, u_input.a), vec4<bool>(true, false, false, true))), ~arg_0.x, global1.b)));
    let var_1 = select(true, false, true);
    return var_0.a.x;
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: vec4<f32>) -> i32 {
    let var_0 = vec2<i32>(-_wgslsmith_dot_vec3_i32(global1.d.a.www, select(global1.d.a.yxx, global0[_wgslsmith_index_u32(global1.a.x, 25u)], vec3<bool>(arg_0, arg_0, arg_0))), u_input.b) >> (vec2<u32>(func_3(firstLeadingBit(~vec3<i32>(arg_2.c.a.x, arg_2.d.a.x, -2147483647i))), _wgslsmith_add_u32(global1.a.x, _wgslsmith_dot_vec2_u32(arg_2.a.xz, _wgslsmith_mult_vec2_u32(vec2<u32>(global1.a.x, global1.a.x), vec2<u32>(2853u, 25802u))))) % vec2<u32>(32u));
    let var_1 = _wgslsmith_div_i32(u_input.a, u_input.c) >> (_wgslsmith_div_u32((firstLeadingBit(1u) & arg_2.a.x) ^ 4294967295u, _wgslsmith_mod_u32(func_3(global0[_wgslsmith_index_u32(arg_2.a.x, 25u)]), _wgslsmith_clamp_u32(~28814u, _wgslsmith_mult_u32(arg_2.a.x, 1u), 1u))) % 32u);
    let var_2 = Struct_1(vec2<bool>(all(select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, false), !vec2<bool>(arg_0, false))), arg_0));
    let var_3 = Struct_3(_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(1u >> (arg_2.a.x % 32u), _wgslsmith_add_u32(arg_2.a.x, arg_2.a.x), 87816u, ~global1.a.x)), vec4<u32>(~(~8962u), _wgslsmith_add_u32(countOneBits(arg_2.a.x), ~4294967295u), ~max(global1.a.x, 9101u), 1u)), ~(-2769i | (_wgslsmith_clamp_i32(1i, -2147483647i, 19053i) | ~2495i)), global1.c, arg_2.d);
    var var_4 = vec4<u32>(~abs(_wgslsmith_sub_u32(59253u, var_3.a.x)) << (4294967295u % 32u), reverseBits(98856u), var_3.a.x, _wgslsmith_div_u32(76494u, _wgslsmith_div_u32(var_3.a.x, 2840u | ~arg_2.a.x)));
    return -2147483647i >> (1u % 32u);
}

fn func_1(arg_0: vec3<f32>) -> Struct_3 {
    global0 = array<vec3<i32>, 25>();
    global1 = Struct_3(~global1.a, 9913i, Struct_2(vec4<i32>(-(u_input.a >> (16766u % 32u)), _wgslsmith_mult_i32(43742i >> (0u % 32u), u_input.a), func_2(true, arg_0.yz, Struct_3(vec4<u32>(20440u, 37089u, 0u, global1.a.x), -23339i, global1.d, global1.d), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -762f)), u_input.c)), Struct_2(~max(_wgslsmith_sub_vec4_i32(vec4<i32>(28281i, -205i, u_input.c, 2147483647i), global1.d.a), -vec4<i32>(global1.c.a.x, 31899i, 1i, global1.d.a.x))));
    var var_0 = 1u;
    var_0 = 1u;
    var var_1 = Struct_1(!vec2<bool>(all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false))), -2147483647i <= ~u_input.b));
    return Struct_3(global1.a, 2147483647i, Struct_2(vec4<i32>(-global1.b, _wgslsmith_dot_vec4_i32(-vec4<i32>(global1.d.a.x, u_input.b, global1.b, 21545i), -global1.c.a), u_input.b, ~global1.d.a.x)), Struct_2(~vec4<i32>(-11014i, -1i, u_input.c, -2147483647i) << (reverseBits(global1.a | vec4<u32>(global1.a.x, global1.a.x, 22770u, global1.a.x)) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 25>();
    global1 = func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-326f, -1787f, -417f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1601f, -1310f, -1180f) * vec3<f32>(131f, -147f, -456f)), vec3<bool>(false, true, false))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -555f, -960f)))), vec3<f32>(_wgslsmith_f_op_f32(max(1080f, 1776f)), _wgslsmith_f_op_f32(trunc(-1908f)), _wgslsmith_div_f32(614f, -1892f)))));
    let var_0 = any(!select(vec4<bool>(global1.c.a.x > global1.d.a.x, all(vec3<bool>(false, false, true)), all(vec4<bool>(true, true, true, false)), any(vec4<bool>(false, true, false, true))), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), false), vec4<bool>(true, true, true, true)));
    global1 = Struct_3(vec4<u32>(~(~(~5414u)), firstTrailingBit(~global1.a.x), 19883u, global1.a.x ^ _wgslsmith_sub_u32(0u, 0u)), -firstTrailingBit(u_input.c), global1.d, func_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-504f, -1499f, 844f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-879f, 1233f, 481f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-305f, 628f, -1718f), vec3<f32>(202f, -752f, 860f)))), !var_0))).c);
    var var_1 = func_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -465f), -606f, _wgslsmith_f_op_f32(-1f)));
    var_1 = func_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-129f - -150f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1416f, 1237f) - _wgslsmith_f_op_f32(f32(-1f) * -919f))))));
    global1 = Struct_3(~vec4<u32>(4294967295u, global1.a.x, 78407u, ~3142u), -select(10259i, 59153i | var_1.d.a.x, any(!vec4<bool>(true, var_0, var_0, var_0))), func_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(314f, 1488f), _wgslsmith_f_op_f32(select(-1240f, -663f, true)), _wgslsmith_f_op_f32(f32(-1f) * -567f))))).c, func_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-689f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(-270f, 942f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-667f, 116f, -786f))), vec3<bool>(true, true, all(vec3<bool>(var_0, var_0, true)))))).c);
    global1 = Struct_3(select(global1.a, ~_wgslsmith_mod_vec4_u32(global1.a, ~var_1.a), !select(!vec4<bool>(true, false, false, var_0), select(vec4<bool>(false, var_0, true, false), vec4<bool>(var_0, false, var_0, var_0), var_0), vec4<bool>(var_0, false, var_0, true))), ~2147483647i, var_1.d, func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1765f, -135f, -317f) - vec3<f32>(-594f, 345f, 1980f)))))).d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, global1.a.x, global1.a.x, ~3663u >> (~var_1.a.x % 32u)), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(1u, var_1.a.x, global1.a.x, 19528u), vec4<u32>(0u, global1.a.x, 1u, 18586u), var_0) | _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.a.x, global1.a.x, 6742u, 1u), var_1.a), (vec4<u32>(0u, global1.a.x, global1.a.x, 0u) << (vec4<u32>(0u, var_1.a.x, 4294967295u, 20730u) % vec4<u32>(32u))) >> ((var_1.a ^ vec4<u32>(34188u, 16844u, 22822u, var_1.a.x)) % vec4<u32>(32u)), ~vec4<u32>(0u, global1.a.x, var_1.a.x, 1u) | var_1.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1073f, -933f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-364f, -568f)))), global1.a.yyw, -u_input.b, i32(-1i) * -min(var_1.b, 1i));
}

