struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: vec2<i32>;

var<private> global2: array<vec3<i32>, 24>;

var<private> global3: array<vec4<bool>, 15> = array<vec4<bool>, 15>(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true));

var<private> global4: array<vec4<bool>, 30>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: bool) -> vec4<i32> {
    global1 = firstTrailingBit(abs(vec2<i32>(global1.x, ~global1.x) | (-vec2<i32>(global1.x, global1.x) & abs(vec2<i32>(global1.x, global1.x)))));
    let var_0 = Struct_1(~(~2319u), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.x >> (arg_0.x % 32u), arg_0.x, u_input.a), vec3<u32>(arg_0.x, 18456u, arg_0.x), ~arg_0));
    global4 = array<vec4<bool>, 30>();
    var var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(step(900f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1029f, 2236f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1899f))) + _wgslsmith_f_op_f32(-1830f + _wgslsmith_f_op_f32(ceil(1000f)))), -206f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-499f, _wgslsmith_f_op_f32(ceil(1483f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(461f * 388f)))), vec4<f32>(-1000f, -1765f, 844f, -392f), all(select(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, arg_2)), select(vec2<bool>(arg_2, true), vec2<bool>(false, false), any(vec3<bool>(false, arg_2, true))), 1u > select(0u, 0u, true)))));
    var var_2 = arg_2;
    return _wgslsmith_mult_vec4_i32(vec4<i32>(31037i, -(~(-global1.x)), -_wgslsmith_dot_vec4_i32(vec4<i32>(780i, -2147483647i, global1.x, global1.x), min(vec4<i32>(global1.x, global1.x, global1.x, 52694i), vec4<i32>(-24807i, 2147483647i, 9066i, 71964i))), firstTrailingBit(0i)), firstTrailingBit(firstTrailingBit(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.x, 39223i, global1.x, global1.x), vec4<i32>(-13824i, -1i, global1.x, global1.x)), vec4<i32>(-27477i, 2147483647i, 0i, -89491i), -vec4<i32>(global1.x, global1.x, 2147483647i, global1.x)))));
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec4_i32(select(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global1.x, global1.x, -8303i, 24562i), vec4<i32>(global1.x, 23199i, global1.x, -7713i)), vec4<i32>(-29707i, global1.x, 35105i, global1.x)), func_3(arg_2.zxy, global0[_wgslsmith_index_u32(~4294967295u, 7u)], true), any(vec4<bool>(true, true, true, true))) << (max(~vec4<u32>(1u, 4294967295u, arg_2.x, 8090u) ^ arg_2, ~vec4<u32>(32049u, 44435u, 0u, u_input.a)) % vec4<u32>(32u)), vec4<i32>(global1.x, _wgslsmith_sub_i32(firstLeadingBit(0i), global1.x >> (2264u % 32u)) << (~u_input.a % 32u), -2147483647i, -(~global1.x ^ _wgslsmith_dot_vec4_i32(vec4<i32>(1i, global1.x, 0i, -1i), vec4<i32>(global1.x, -14468i, global1.x, global1.x)))));
    let var_1 = -_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_0.xx, vec2<i32>(-16459i, _wgslsmith_add_i32(-50495i, var_0.x))), -var_0.zz);
    global3 = array<vec4<bool>, 15>();
    var var_2 = ~abs(~_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(arg_2.yzy, arg_2.ywy), ~vec3<u32>(83404u, u_input.a, 38480u)));
    var var_3 = global3[_wgslsmith_index_u32(~(~(~(75699u & var_2.x))), 15u)];
    return global0[_wgslsmith_index_u32(u_input.a, 7u)];
}

fn func_1(arg_0: i32) -> u32 {
    global4 = array<vec4<bool>, 30>();
    let var_0 = func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(273f * 941f) + _wgslsmith_f_op_f32(362f + 923f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1000f)), 856f)), 463f), vec3<f32>(-1054f, -1000f, 3123f), ~(~reverseBits(vec4<u32>(u_input.a, u_input.a, 1u, u_input.a))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1270f, -1463f, 492f, 1056f))), vec4<f32>(_wgslsmith_f_op_f32(-1622f * -1320f), _wgslsmith_f_op_f32(f32(-1f) * -2229f), _wgslsmith_f_op_f32(trunc(-1352f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var var_2 = 28231i;
    let var_3 = vec2<bool>(true, true);
    return ~28069u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.a, vec3<u32>(1u, func_1(global1.x), 4294967295u));
    let var_1 = vec4<i32>(select(-15677i, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(global1.x, global1.x), global1.x ^ global1.x, ~global1.x), global2[_wgslsmith_index_u32(var_0.a, 24u)]), select(true, _wgslsmith_f_op_f32(-481f * -1000f) == _wgslsmith_f_op_f32(step(911f, -741f)), all(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_0.b, var_0.b), 30u)]))), countOneBits(-1i), global1.x, 12912i);
    global0 = array<Struct_1, 7>();
    global2 = array<vec3<i32>, 24>();
    global2 = array<vec3<i32>, 24>();
    var var_2 = var_0;
    let var_3 = 12722u;
    var var_4 = ~vec3<u32>(abs(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 28857u, 4294967295u, var_2.b.x), vec4<u32>(u_input.a, 1u, 40514u, var_3)), vec4<u32>(var_2.a, 4294967295u, 89213u, var_0.b.x))), u_input.a, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(15074u, var_0.a, 53488u), vec3<u32>(var_0.b.x, var_0.b.x, var_3)), ~var_0.b));
    let var_5 = 464f;
    let x = u_input.a;
    s_output = StorageBuffer(min(abs(vec4<u32>(1u, u_input.a, 4294967295u, u_input.a)) << (vec4<u32>(reverseBits(u_input.a), func_1(global1.x), countOneBits(10602u), ~1u) % vec4<u32>(32u)), (_wgslsmith_clamp_vec4_u32(vec4<u32>(57946u, 50823u, var_4.x, u_input.a), vec4<u32>(var_4.x, 4294967295u, 51854u, var_0.b.x), vec4<u32>(4294967295u, var_4.x, var_0.b.x, 0u)) | vec4<u32>(92289u, 3869u, 0u, 7345u)) >> (vec4<u32>(countOneBits(var_4.x), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.a, 2936u), vec3<u32>(var_4.x, 43702u, 48563u)), 48381u, _wgslsmith_dot_vec2_u32(var_4.xz, vec2<u32>(39483u, var_2.a))) % vec4<u32>(32u))), _wgslsmith_mult_vec2_u32(var_0.b.yy, var_4.xz), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(539f, -829f)))), 480f), ~_wgslsmith_sub_vec4_u32(reverseBits(max(vec4<u32>(u_input.a, 0u, 20504u, 4294967295u), vec4<u32>(52797u, 6671u, var_2.a, 4294967295u))), vec4<u32>(~var_2.a, 1u, u_input.a, ~7237u)), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 0u) & var_2.b.xz, firstLeadingBit(vec2<u32>(var_2.b.x, 41305u))), vec2<u32>(func_2(var_5, vec3<f32>(var_5, var_5, -336f), vec4<u32>(var_4.x, var_4.x, 30997u, 1u)).a, var_4.x)) | 4294967295u);
}

