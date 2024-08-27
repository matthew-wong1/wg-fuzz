struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: i32,
    d: vec2<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: u32,
    d: u32,
    e: Struct_2,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: u32;

var<private> global2: array<u32, 3>;

var<private> global3: vec3<u32>;

var<private> global4: array<vec4<i32>, 27> = array<vec4<i32>, 27>(vec4<i32>(1i, 2147483647i, -20070i, i32(-2147483648)), vec4<i32>(-30050i, 1i, 2147483647i, i32(-2147483648)), vec4<i32>(26800i, 0i, -70185i, -8470i), vec4<i32>(-7772i, 15935i, i32(-2147483648), 11299i), vec4<i32>(-1i, 18481i, -29724i, -62949i), vec4<i32>(-889i, 6112i, -1i, 34537i), vec4<i32>(-9260i, 0i, 0i, -39574i), vec4<i32>(98497i, -49227i, -1i, -1i), vec4<i32>(50473i, 2147483647i, -34371i, -30420i), vec4<i32>(1i, 73161i, 1i, i32(-2147483648)), vec4<i32>(-1i, -1i, -18353i, 2147483647i), vec4<i32>(i32(-2147483648), -1i, -26591i, 0i), vec4<i32>(-3168i, i32(-2147483648), -1i, 1i), vec4<i32>(-1i, 4283i, -1i, -13997i), vec4<i32>(0i, 1i, 46564i, i32(-2147483648)), vec4<i32>(2147483647i, -42676i, -6179i, 40736i), vec4<i32>(-1i, -12574i, 0i, 1i), vec4<i32>(12647i, 1i, -52298i, 1i), vec4<i32>(54330i, 2147483647i, 28947i, 6184i), vec4<i32>(11991i, i32(-2147483648), -5123i, 2147483647i), vec4<i32>(1i, 6633i, i32(-2147483648), -1i), vec4<i32>(2147483647i, 1i, 0i, -10435i), vec4<i32>(-17400i, 1i, -1i, i32(-2147483648)), vec4<i32>(3501i, 24281i, 0i, i32(-2147483648)), vec4<i32>(-41683i, -5533i, 0i, 2147483647i), vec4<i32>(42257i, 1i, -28060i, -9807i), vec4<i32>(i32(-2147483648), 36212i, 1i, 1i));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec2<bool> {
    global2 = array<u32, 3>();
    var var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.x, 3u)], 3u)], 4696u, 18229u) ^ max(vec3<u32>(global3.x, global2[_wgslsmith_index_u32(0u, 3u)], global3.x), vec3<u32>(13253u, 41990u, global2[_wgslsmith_index_u32(global3.x, 3u)])), select(vec3<u32>(global3.x, 1u, 1u), ~vec3<u32>(global2[_wgslsmith_index_u32(global3.x, 3u)], 1u, 1u), global0.x))), global3.xz, global3.xz >> (countOneBits(vec2<u32>(global2[_wgslsmith_index_u32(0u, 3u)], select(global3.x, global3.x, false))) % vec2<u32>(32u)));
    var var_1 = vec4<bool>(false, true, all(select(vec2<bool>(global0.x, !global0.x), select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, true), select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, false), vec2<bool>(true, global0.x))), any(vec2<bool>(global0.x, global0.x)))), any(!(!vec2<bool>(false, global0.x))));
    var_1 = select(!vec4<bool>(global0.x, select(global0.x, false, true) || (global0.x || true), !global0.x, all(var_1.ywy)), !vec4<bool>(!all(vec3<bool>(true, var_1.x, true)), min(-1i, -32374i) < _wgslsmith_div_i32(u_input.a.x, 0i), var_1.x == false, !(!var_1.x)), true);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-651f, _wgslsmith_f_op_f32(step(588f, 799f)), all(var_1.xy)))) - _wgslsmith_f_op_f32(-797f + _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1000f, -728f))))), 1f);
    return select(!var_1.zw, var_1.xx, var_1.wx);
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>) -> vec2<i32> {
    global0 = func_3();
    var var_0 = vec2<i32>(6615i, u_input.a.x);
    var_0 = min(vec2<i32>(-(~_wgslsmith_dot_vec4_i32(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(33825u, 3u)], 27u)], vec4<i32>(u_input.a.x, -81576i, 28456i, var_0.x))), abs(-5509i)), vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a.yz, ~(-vec2<i32>(var_0.x, u_input.a.x))), u_input.a.x));
    global4 = array<vec4<i32>, 27>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2219f)) * -832f);
    return _wgslsmith_add_vec2_i32(select(u_input.a.wy << (vec2<u32>(1u, abs(global3.x)) % vec2<u32>(32u)), u_input.a.zz, !(!func_3())), _wgslsmith_clamp_vec2_i32(u_input.a.xw, u_input.a.xy, u_input.a.xy));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1198f, _wgslsmith_f_op_f32(f32(-1f) * -270f), _wgslsmith_f_op_f32(min(611f, -1000f)), _wgslsmith_f_op_f32(round(434f)))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -232f), -579f, -820f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) + 1685f)))));
    let var_1 = Struct_3(global0.x, var_0.xwz, _wgslsmith_add_i32(u_input.a.x, _wgslsmith_dot_vec2_i32(-vec2<i32>(6432i, -11253i), func_2(Struct_2(vec2<u32>(1982u, 10535u), global3.zz), vec2<u32>(0u, 2215u)))), vec2<bool>(false, any(vec2<bool>(true, true))), Struct_2(global3.yz, vec2<u32>(~_wgslsmith_mult_u32(global3.x, global3.x), reverseBits(global2[_wgslsmith_index_u32(52102u, 3u)] & 16001u))));
    global4 = array<vec4<i32>, 27>();
    var var_2 = vec4<i32>(var_1.c, firstLeadingBit(u_input.a.x), _wgslsmith_dot_vec4_i32(select(_wgslsmith_add_vec4_i32(u_input.a, ~vec4<i32>(u_input.a.x, 1i, -1i, 1i)), u_input.a, select(vec4<bool>(var_1.d.x, global0.x, true, var_1.d.x), !vec4<bool>(global0.x, false, false, false), var_1.d.x)), ~(-u_input.a)), ~(~u_input.a.x));
    var var_3 = 1058f;
    return _wgslsmith_f_op_f32(f32(-1f) * -925f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(747f + 145f), 1f)), 535f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(ceil(485f)), -394f), _wgslsmith_div_vec2_f32(vec2<f32>(-1942f, -894f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-2038f, 1377f), vec2<f32>(1354f, -252f)))))))));
    let var_2 = u_input.a.x;
    var var_3 = var_2;
    let var_4 = _wgslsmith_dot_vec3_u32(~(~(~firstLeadingBit(vec3<u32>(global3.x, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(41061u, 3u)], 3u)])))), min(abs(max(vec3<u32>(global2[_wgslsmith_index_u32(38201u, 3u)], global3.x, 0u), vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 3u)], global3.x, global3.x) ^ vec3<u32>(52643u, 30985u, global3.x))), ~(~max(vec3<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(19461u, 3u)], 3u)], global2[_wgslsmith_index_u32(global3.x, 3u)]), vec3<u32>(18011u, 0u, global3.x)))));
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_1.x) - 309f)))));
    let var_6 = vec2<u32>((abs(22894u) & ~max(global2[_wgslsmith_index_u32(var_4, 3u)], global2[_wgslsmith_index_u32(29578u, 3u)])) | var_4, _wgslsmith_mod_u32(_wgslsmith_mod_u32(global3.x, global3.x), var_4));
    var var_7 = Struct_3(select(global0.x, !(true && global0.x), global0.x & all(vec3<bool>(global0.x, true, false))) & false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(115f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5) - _wgslsmith_f_op_f32(step(var_1.x, var_5))), var_5)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_2, ~u_input.a.x), vec2<i32>(var_2, var_2)), !func_3(), Struct_2(~(vec2<u32>(1u, 1u) & _wgslsmith_clamp_vec2_u32(var_6, vec2<u32>(global2[_wgslsmith_index_u32(var_6.x, 3u)], 4294967295u), var_6)), var_6 | abs(min(vec2<u32>(var_4, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 3u)], 3u)]), var_6))));
    let var_8 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_7.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_7.e.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(-var_1.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1790f)) - var_5)));
}

