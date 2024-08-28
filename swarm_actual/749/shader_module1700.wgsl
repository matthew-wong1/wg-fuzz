struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
    c: i32,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

var<private> global1: array<vec3<bool>, 31> = array<vec3<bool>, 31>(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false));

var<private> global2: array<i32, 22> = array<i32, 22>(-13576i, 31034i, 19222i, i32(-2147483648), -5652i, -31370i, 2147483647i, 25791i, 5725i, -2663i, 0i, 0i, i32(-2147483648), 2340i, 52119i, -3782i, 2289i, -66322i, -5873i, 1i, 34126i, -21421i);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_5) -> f32 {
    let var_0 = ~(-global2[_wgslsmith_index_u32(~4294967295u, 22u)]);
    global0 = array<Struct_1, 3>();
    global0 = array<Struct_1, 3>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(arg_0, arg_0)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -550f))))));
    global2 = array<i32, 22>();
    return 377f;
}

fn func_3() -> f32 {
    var var_0 = 13488u;
    let var_1 = select(false, true, any(select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, false), true), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)))));
    let var_2 = global0[_wgslsmith_index_u32(0u, 3u)];
    let var_3 = Struct_3(Struct_1(var_2.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-964f, 564f, -512f))))) - vec3<f32>(-528f, -1493f, -1033f)));
    let var_4 = var_3.b.x;
    return _wgslsmith_f_op_f32(select(-156f, _wgslsmith_f_op_f32(max(var_3.b.x, _wgslsmith_f_op_f32(-847f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))))), true));
}

fn func_1(arg_0: bool, arg_1: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2096f))) + _wgslsmith_f_op_f32(184f - _wgslsmith_f_op_f32(func_2(599f, vec2<u32>(0u, u_input.a.x), Struct_5(vec4<bool>(arg_0, true, arg_0, arg_0))))))) - 1000f);
    let var_1 = Struct_4(select(firstLeadingBit(vec3<u32>(u_input.a.x, u_input.a.x | 1u, ~u_input.a.x)), select(vec3<u32>(countOneBits(u_input.a.x), reverseBits(36034u), ~4294967295u), ~(~vec3<u32>(0u, u_input.a.x, 1u)), select(vec3<bool>(true, false, arg_0), !global1[_wgslsmith_index_u32(u_input.a.x, 31u)], !vec3<bool>(arg_0, arg_0, arg_0))), select(vec3<bool>(false, arg_1 > -1i, arg_0 & false), vec3<bool>(true, !arg_0, all(vec2<bool>(arg_0, true))), global1[_wgslsmith_index_u32(29958u, 31u)])), Struct_3(Struct_1(~vec3<i32>(arg_1, global2[_wgslsmith_index_u32(25615u, 22u)], arg_1)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0, var_0)) * var_0), _wgslsmith_f_op_f32(func_3()), -549f)), arg_1);
    let var_2 = Struct_5(!(!select(vec4<bool>(arg_0, arg_0, arg_0, true), select(vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(true, arg_0, false, arg_0)), arg_0)));
    let var_3 = _wgslsmith_mod_i32(reverseBits(var_1.c), ~abs(28616i));
    var var_4 = Struct_1(_wgslsmith_add_vec3_i32(var_1.b.a.a, vec3<i32>(var_3, var_1.c, var_1.c)));
    return select(1u, 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(982f))) <= _wgslsmith_div_f32(var_1.b.b.x, _wgslsmith_f_op_f32(func_2(var_0, vec2<u32>(var_1.a.x, var_1.a.x), Struct_5(vec4<bool>(var_2.a.x, var_2.a.x, arg_0, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 31>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-419f * _wgslsmith_f_op_f32(select(-172f, -1381f, false))), -975f, -829f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-807f, -931f, 1006f) - vec3<f32>(524f, -2067f, 901f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1114f, -2431f, 533f))))));
    var var_1 = all(select(global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, ~42894u) & u_input.a.x, 31u)], _wgslsmith_sub_u32(1u, func_1(false, 2147483647i)) <= _wgslsmith_mult_u32(u_input.a.x, ~u_input.a.x)));
    let var_2 = ~(-1i) >> (_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(0u, u_input.a.x, u_input.a.x, 4284u) | vec4<u32>(u_input.a.x, 1331u, 32296u, 1u)) ^ _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 0u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(99937u, u_input.a.x, 0u, u_input.a.x)), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), ~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), select(vec4<u32>(5013u, u_input.a.x, 0u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 21774u, 4294967295u), true))) % 32u);
    var var_3 = Struct_3(Struct_1(vec3<i32>(-var_2, reverseBits(i32(-1i) * -45363i), var_2)), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, 669f) - -1322f))), -340f, var_0.x));
    var var_4 = !any(!select(global1[_wgslsmith_index_u32(0u, 31u)], vec3<bool>(true, false, false), global1[_wgslsmith_index_u32(4294967295u, 31u)])) | !(~_wgslsmith_mod_i32(var_3.a.a.x, global2[_wgslsmith_index_u32(u_input.a.x, 22u)]) < -_wgslsmith_add_i32(global2[_wgslsmith_index_u32(u_input.a.x, 22u)], var_3.a.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1224f, var_3.b.x)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1222f, var_0.x) * var_0.xz)))))), _wgslsmith_clamp_vec3_i32(var_3.a.a, (vec3<i32>(-1i) * -var_3.a.a) >> ((firstLeadingBit(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)) >> (~vec3<u32>(u_input.a.x, 35239u, u_input.a.x) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_div_i32(52322i, ~(-2147483647i)), _wgslsmith_dot_vec3_i32(firstLeadingBit(var_3.a.a), vec3<i32>(17755i, global2[_wgslsmith_index_u32(32494u, 22u)], 2147483647i)), ~(~(-2147483647i)))), reverseBits(0u));
}

