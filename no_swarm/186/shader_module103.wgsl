struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_3, 12>;

var<private> global2: array<vec4<i32>, 20> = array<vec4<i32>, 20>(vec4<i32>(i32(-2147483648), 1i, -1i, 0i), vec4<i32>(-11094i, -44680i, 21582i, -27982i), vec4<i32>(2147483647i, -25580i, 1i, -59186i), vec4<i32>(-10146i, -25609i, -1i, 2147483647i), vec4<i32>(0i, 0i, -9755i, 2147483647i), vec4<i32>(1i, -1i, i32(-2147483648), 1i), vec4<i32>(i32(-2147483648), 40843i, -6066i, -42804i), vec4<i32>(-1i, -1i, -1154i, -1i), vec4<i32>(0i, -33701i, -39546i, -1i), vec4<i32>(i32(-2147483648), 11744i, -9197i, 1i), vec4<i32>(37150i, 34372i, 43014i, 1307i), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), 1i), vec4<i32>(-72959i, 1i, i32(-2147483648), -1i), vec4<i32>(-53252i, -28215i, -17954i, -1i), vec4<i32>(1i, i32(-2147483648), 1i, -8332i), vec4<i32>(i32(-2147483648), i32(-2147483648), -11809i, 2147483647i), vec4<i32>(5876i, 1i, 2147483647i, 2147483647i), vec4<i32>(24026i, 45855i, -83384i, -49218i), vec4<i32>(1i, i32(-2147483648), 0i, 7398i), vec4<i32>(-36018i, -16886i, -38922i, -5667i));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(29158u, global0.a.x, abs(_wgslsmith_sub_u32(~firstLeadingBit(24412u), ~(72883u << (0u % 32u))))), 12u)];
    let var_1 = vec3<u32>(global0.a.x, select(~countOneBits(global0.a.x), 0u, true) ^ select(38649u, _wgslsmith_mult_u32(~u_input.a.x, global0.a.x), true), var_0.a.x);
    let var_2 = any(select(vec3<bool>(true, select(global0.b, global0.b, true) & false, true), !(!vec3<bool>(true, global0.b, false)), vec3<bool>(true, global0.b, global0.b)));
    let var_3 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(521f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(755f + -156f) * _wgslsmith_f_op_f32(-984f - 1012f)))), vec2<f32>(-567f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1243f) * _wgslsmith_f_op_f32(635f + -571f)))))));
    let var_4 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_3.x, 1f)) + -711f), _wgslsmith_f_op_f32(exp2(var_3.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-197f + _wgslsmith_f_op_f32(ceil(var_3.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-783f + 637f))), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, abs(~0i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), -vec3<i32>(-2147483647i, 1i, 65424i))), select(abs(vec3<i32>(-1i, -58425i, 2147483647i)), vec3<i32>(1i, 1i, 1i) << ((var_1 << (vec3<u32>(4294967295u, var_1.x, u_input.a.x) % vec3<u32>(32u))) % vec3<u32>(32u)), all(vec3<bool>(true, true, true)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_3.x)), -692f))));
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_2, arg_3: vec4<f32>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_clamp_vec3_u32(max(vec3<u32>(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), firstTrailingBit(32813u), u_input.a.x), vec3<u32>(_wgslsmith_dot_vec2_u32(global0.a.zz, vec2<u32>(global0.a.x, 42615u)), global0.a.x, u_input.a.x)), _wgslsmith_mod_vec3_u32(~(global0.a << (vec3<u32>(4294967295u, 16312u, u_input.a.x) % vec3<u32>(32u))), global0.a), vec3<u32>(~(~global0.a.x), global0.a.x, u_input.a.x)), global0.b);
    let var_1 = _wgslsmith_div_vec3_i32(-max(arg_2.b, _wgslsmith_clamp_vec3_i32(arg_0, reverseBits(vec3<i32>(arg_2.b.x, arg_2.b.x, arg_2.b.x)), arg_2.b)), -vec3<i32>(2147483647i, _wgslsmith_dot_vec3_i32(arg_0, arg_0), max(0i, arg_2.b.x)) ^ -firstTrailingBit(max(vec3<i32>(arg_2.b.x, -1i, arg_2.b.x), vec3<i32>(arg_0.x, arg_2.b.x, arg_0.x))));
    global0 = Struct_1(global0.a, (i32(-1i) * -2147483647i) > _wgslsmith_sub_i32(~_wgslsmith_mult_i32(29047i, var_1.x), firstTrailingBit(select(-49963i, -43546i, true))));
    global0 = var_0;
    var var_2 = -_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(var_1.x, -33163i, 1i), 17620i, arg_2.b.x, arg_2.b.x), ~global2[_wgslsmith_index_u32(~1u, 20u)], max(vec4<i32>(-2147483647i, 1i, 19037i, arg_2.b.x), global2[_wgslsmith_index_u32(1u, 20u)])), select(_wgslsmith_clamp_vec4_i32(global2[_wgslsmith_index_u32(12036u, 20u)] << (vec4<u32>(var_0.a.x, arg_1, 15947u, 1u) % vec4<u32>(32u)), vec4<i32>(arg_2.b.x, -1i, -873i, 2147483647i), global2[_wgslsmith_index_u32(firstTrailingBit(44684u), 20u)]), ~global2[_wgslsmith_index_u32(arg_1, 20u)], !var_0.b));
    return 1u;
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: f32) -> Struct_1 {
    global0 = Struct_1(select(vec3<u32>(~_wgslsmith_add_u32(u_input.a.x, 0u), 4294967295u, _wgslsmith_add_u32(0u, global0.a.x) ^ _wgslsmith_dot_vec2_u32(global0.a.xy, global0.a.xy)), ~(~_wgslsmith_div_vec3_u32(global0.a, vec3<u32>(1u, 2635u, 4294967295u))), true), !(!all(!vec4<bool>(false, true, arg_1, global0.b))));
    var var_0 = global1[_wgslsmith_index_u32(func_4(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, -441i, 1i), vec3<i32>(1i, 1i, 1i)) << (~(~global0.a) % vec3<u32>(32u)), ~select(vec3<i32>(27774i, -26727i, 2147483647i), vec3<i32>(1i, 1i, 1i), arg_1)), 10961u, Struct_2(vec4<f32>(-351f, -1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(553f - -1080f))), _wgslsmith_f_op_f32(func_3())), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, -46232i, -2147483647i), vec3<i32>(2147483647i, 28130i, 38043i), vec3<i32>(-1i, 17875i, -5631i)) << (vec3<u32>(~4294967295u, 0u, 25169u) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2, arg_2, arg_2, arg_2))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2, -290f, -1000f, 922f))))))), 12u)];
    global2 = array<vec4<i32>, 20>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-213f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1681f)), -1012f)))));
    var_0 = Struct_3((~u_input.a ^ (select(global0.a.zz, vec2<u32>(0u, arg_0.x), vec2<bool>(global0.b, global0.b)) << (_wgslsmith_sub_vec2_u32(var_0.a, u_input.a) % vec2<u32>(32u)))) >> (~(~firstLeadingBit(vec2<u32>(arg_0.x, 14575u))) % vec2<u32>(32u)));
    return Struct_1(vec3<u32>(~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, var_0.a.x, u_input.a.x, arg_0.x), firstLeadingBit(vec4<u32>(u_input.a.x, var_0.a.x, u_input.a.x, u_input.a.x))), firstLeadingBit(firstTrailingBit(arg_0.x)), ~(~u_input.a.x)), true & global0.b);
}

fn func_1() -> Struct_1 {
    global0 = func_2(vec2<u32>(u_input.a.x, _wgslsmith_mult_u32(1u, 1u) | u_input.a.x), true, 461f);
    global1 = array<Struct_3, 12>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-773f, 821f, -934f, -1301f) + vec4<f32>(-1554f, 2141f, -846f, 721f))))))), -(~_wgslsmith_mult_vec3_i32(vec3<i32>(-1023i, 0i, -1i) >> (vec3<u32>(global0.a.x, u_input.a.x, 1u) % vec3<u32>(32u)), reverseBits(vec3<i32>(0i, 367i, -31841i)))));
    var var_1 = (4294967295u > _wgslsmith_dot_vec3_u32(global0.a, func_2(vec2<u32>(global0.a.x, 0u), global0.b, _wgslsmith_f_op_f32(trunc(505f))).a)) | global0.b;
    var var_2 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * var_0.a.x), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(368f, var_0.a.x)), var_0.a.x), -1871f)), var_0.a.x), ~vec3<i32>(~(~1i), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_0.b.x), vec2<i32>(var_0.b.x, var_0.b.x)), var_0.b.x), var_0.b.x));
    return Struct_1(global0.a, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(_wgslsmith_mult_vec3_i32(-vec3<i32>(abs(13925i), _wgslsmith_mult_i32(-1i, -3762i), -8172i), vec3<i32>(-29831i, select(select(25284i, 2147483647i, false), -13008i, true), -41551i)), (vec3<i32>(1i, 1i, 1i) << (global0.a % vec3<u32>(32u))) >> (global0.a % vec3<u32>(32u)));
    let var_1 = func_1();
    global2 = array<vec4<i32>, 20>();
    var var_2 = Struct_3(~max(var_1.a.xy, _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(global0.a.xx, u_input.a), vec2<u32>(3618u, u_input.a.x))));
    let var_3 = Struct_3(_wgslsmith_div_vec2_u32(vec2<u32>(firstLeadingBit(68354u), ~firstLeadingBit(global0.a.x)), var_1.a.xy));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, -_wgslsmith_mult_i32(i32(-1i) * -31103i, -_wgslsmith_add_i32(-2041i, var_0.x)), select(max(~(~vec4<u32>(global0.a.x, 29798u, var_1.a.x, 86637u)), ~(~vec4<u32>(4294967295u, var_2.a.x, 0u, 7547u))), vec4<u32>(1u, global0.a.x, reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, var_1.a.x, 0u), global0.a)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, var_1.a.x, var_3.a.x, var_1.a.x), ~vec4<u32>(0u, 34373u, 4294967295u, 0u))), any(vec2<bool>(true, global0.b))), abs(max(abs(min(global2[_wgslsmith_index_u32(50101u, 20u)], vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x))), vec4<i32>(_wgslsmith_clamp_i32(var_0.x, var_0.x, 50569i), var_0.x, var_0.x ^ 34594i, -54800i))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(860f - _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-629f + 1000f) - -247f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -831f), -598f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(254f, -1000f, 283f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-118f, 1348f, -172f))))));
}

