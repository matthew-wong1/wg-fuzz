struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 25>;

var<private> global1: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(true), Struct_1(false), Struct_1(true));

var<private> global2: i32 = 1i;

var<private> global3: array<vec3<bool>, 10>;

var<private> global4: array<Struct_1, 17>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: f32) -> bool {
    return arg_0.a;
}

fn func_2() -> vec2<u32> {
    global2 = -2147483647i;
    let var_0 = ((false && (true == any(vec2<bool>(true, true)))) && (false || all(vec2<bool>(true, true)))) || func_3(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c, _wgslsmith_mod_u32(u_input.a, 0u)) << (35333u % 32u), 3u)], any(select(global3[_wgslsmith_index_u32(~u_input.c, 10u)], vec3<bool>(false, false, false), true)), ~u_input.a, -664f);
    var var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1u, 4294967295u), 3u)];
    global3 = array<vec3<bool>, 10>();
    let var_2 = vec2<bool>(all(select(!(!vec2<bool>(var_0, false)), !(!vec2<bool>(var_1.a, var_0)), var_0)), select(true, true || all(vec2<bool>(true, true)), false));
    return ~vec2<u32>(_wgslsmith_div_u32(~u_input.c, 21102u), 13874u);
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: bool) -> Struct_2 {
    global1 = array<Struct_1, 3>();
    global0 = array<vec2<f32>, 25>();
    let var_0 = arg_1;
    var var_1 = var_0;
    let var_2 = -u_input.d.wy;
    return arg_1;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: vec4<bool>) -> Struct_1 {
    global1 = array<Struct_1, 3>();
    global0 = array<vec2<f32>, 25>();
    let var_0 = func_4(~min(_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.c, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, 0u))), u_input.a), Struct_2(_wgslsmith_clamp_vec2_u32(vec2<u32>(~u_input.c, u_input.a), func_2() & (vec2<u32>(u_input.a, u_input.c) | vec2<u32>(u_input.a, u_input.a)), _wgslsmith_clamp_vec2_u32(min(vec2<u32>(1u, 4294967295u), vec2<u32>(9105u, 1u)), vec2<u32>(u_input.a, 51693u), select(vec2<u32>(1u, 4114u), vec2<u32>(u_input.c, u_input.a), arg_0.zw))), global4[_wgslsmith_index_u32(1u, 17u)], 7028u, global4[_wgslsmith_index_u32(u_input.a, 17u)], global4[_wgslsmith_index_u32(u_input.c, 17u)]), !(select(all(vec2<bool>(arg_2.x, false)), u_input.c > 10151u, true) || select(any(arg_0), false, false)));
    var var_1 = u_input.c;
    let var_2 = var_0;
    return Struct_1(var_0.d.a);
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: i32) -> Struct_2 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(728f * 821f))), -652f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2360f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -654f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(393f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(374f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -154f))))));
    global2 = 48741i;
    let var_1 = Struct_2(min(_wgslsmith_div_vec2_u32(~vec2<u32>(25740u, 16436u), vec2<u32>(arg_1.c, 97390u)), arg_1.a) | _wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.c, ~arg_1.a.x), arg_1.a), arg_1.b, 73048u, Struct_1(arg_1.b.a), global1[_wgslsmith_index_u32(u_input.c, 3u)]);
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -876f, var_0.x, -1197f)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, var_0.x, -417f, -1121f)))))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(step(var_0.x, 799f)), _wgslsmith_f_op_f32(var_0.x - 225f), _wgslsmith_f_op_f32(var_0.x - var_0.x), var_0.x)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(2312f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-299f + _wgslsmith_div_f32(-546f, var_0.x)), _wgslsmith_f_op_f32(760f + var_0.x))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 1031f)), 269f, _wgslsmith_f_op_f32(floor(-1920f))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.xyx)), vec3<f32>(870f, _wgslsmith_f_op_f32(trunc(var_0.x)), -814f), arg_0.x))));
    return func_4(arg_1.a.x, func_4(u_input.c, arg_1, arg_1.b.a), func_3(func_4(_wgslsmith_div_u32(arg_1.c, 37481u), func_4(19319u, arg_1, arg_1.d.a), any(!vec2<bool>(false, arg_0.x))).b, abs(~70168i) < u_input.b, var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f)))));
}

fn func_6(arg_0: Struct_2) -> Struct_2 {
    let var_0 = -202f;
    var var_1 = min(arg_0.a.x, u_input.a);
    let var_2 = vec3<bool>(arg_0.e.a, arg_0.d.a, _wgslsmith_dot_vec3_i32(u_input.d.www, vec3<i32>(_wgslsmith_mod_i32(17573i, u_input.b), -u_input.d.x, u_input.b)) <= max(firstLeadingBit(2147483647i), 1i));
    global4 = array<Struct_1, 17>();
    let var_3 = -reverseBits(u_input.b);
    return func_5(!vec3<bool>(false, true, select(false, any(var_2.xz), true)), arg_0, i32(-1i) * -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(true);
    let var_1 = func_6(func_5(vec3<bool>(all(vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a)), true, true), Struct_2(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 56499u), vec2<u32>(1u, u_input.a)) ^ vec2<u32>(4294967295u, 0u), func_1(vec4<bool>(false, false, var_0.a, true), firstLeadingBit(u_input.d.zz), select(vec4<bool>(true, false, var_0.a, var_0.a), vec4<bool>(false, false, var_0.a, var_0.a), false)), _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a, u_input.a), u_input.a), func_1(select(vec4<bool>(var_0.a, var_0.a, false, false), vec4<bool>(var_0.a, var_0.a, var_0.a, true), vec4<bool>(true, true, var_0.a, var_0.a)), firstTrailingBit(vec2<i32>(u_input.b, u_input.d.x)), select(vec4<bool>(var_0.a, var_0.a, var_0.a, true), vec4<bool>(var_0.a, var_0.a, true, false), vec4<bool>(false, false, false, var_0.a))), func_4(~1u, Struct_2(vec2<u32>(u_input.a, 42246u), Struct_1(var_0.a), u_input.c, global4[_wgslsmith_index_u32(0u, 17u)], Struct_1(var_0.a)), true).b), max(_wgslsmith_div_i32(select(u_input.b, u_input.d.x, var_0.a), u_input.d.x), reverseBits(~u_input.b))));
    let var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(~(-vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x) & vec3<i32>(u_input.d.x, 2147483647i, -1i)), u_input.d.xxx), _wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.d.x << (var_1.a.x % 32u), u_input.d.x, reverseBits(u_input.d.x)), u_input.d.xwz));
    let var_3 = var_1;
    global0 = array<vec2<f32>, 25>();
    global2 = _wgslsmith_mod_i32(_wgslsmith_add_i32(1i, var_2), ~_wgslsmith_div_i32(_wgslsmith_div_i32(-1i, firstTrailingBit(var_2)), max(u_input.d.x, 1i) >> (_wgslsmith_mult_u32(u_input.a, var_3.a.x) % 32u)));
    let var_4 = func_4(0u, Struct_2(vec2<u32>(1447u, 48962u), var_1.b, 46805u, var_0, func_1(select(!vec4<bool>(var_1.d.a, var_1.e.a, var_0.a, var_0.a), select(vec4<bool>(var_3.e.a, var_1.d.a, false, var_0.a), vec4<bool>(true, false, true, false), false), vec4<bool>(false, var_0.a, true, var_3.b.a)), ~vec2<i32>(59447i, u_input.d.x), select(!vec4<bool>(false, false, var_3.d.a, true), select(vec4<bool>(var_3.e.a, false, var_3.e.a, var_0.a), vec4<bool>(true, true, var_1.b.a, var_0.a), false), select(vec4<bool>(var_1.d.a, true, var_1.b.a, var_1.d.a), vec4<bool>(var_3.d.a, false, var_1.b.a, var_0.a), var_0.a)))), any(vec2<bool>(any(select(vec3<bool>(false, var_3.b.a, true), vec3<bool>(true, true, var_1.e.a), vec3<bool>(false, var_1.e.a, true))), func_1(select(vec4<bool>(false, var_3.b.a, var_1.e.a, var_0.a), vec4<bool>(var_3.d.a, var_1.d.a, var_3.b.a, false), vec4<bool>(false, var_0.a, false, false)), -u_input.d.xy, vec4<bool>(true, false, var_1.e.a, false)).a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -827f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-1000f, 291f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-457f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(1000f * -2534f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 644f) * -1072f))), max(func_4(~(~var_1.a.x), func_6(Struct_2(vec2<u32>(42175u, var_1.c), Struct_1(false), var_3.c, global4[_wgslsmith_index_u32(var_3.c, 17u)], var_0)), true).a.x, 1u), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-671f, -1164f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1175f)))))), -(_wgslsmith_mod_i32(i32(-1i) * -1i, u_input.b >> (1u % 32u)) & -u_input.b), firstLeadingBit(firstTrailingBit(~_wgslsmith_sub_i32(u_input.d.x, var_2))));
}

