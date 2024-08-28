struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: i32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12> = array<bool, 12>(false, false, false, true, false, true, true, false, false, true, true, false);

var<private> global1: vec3<i32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec4<i32>) -> f32 {
    global0 = array<bool, 12>();
    global0 = array<bool, 12>();
    let var_0 = Struct_1(vec3<f32>(1f, 1f, 1f), !(1300f == _wgslsmith_f_op_f32(step(1546f, 529f))), -560f);
    let var_1 = global0[_wgslsmith_index_u32(0u, 12u)];
    global0 = array<bool, 12>();
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f + var_0.c)));
}

fn func_2() -> vec3<f32> {
    global0 = array<bool, 12>();
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(605f, 720f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(313f)) - -1221f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(358f, -412f) - -911f))), any(vec3<bool>(!any(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 12u)], true)), any(!vec3<bool>(false, true, global0[_wgslsmith_index_u32(0u, 12u)])), all(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-927f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-939f - 757f) * 917f), global0[_wgslsmith_index_u32(~u_input.b, 12u)])) + _wgslsmith_f_op_f32(ceil(-1941f))));
    var var_1 = var_0;
    let var_2 = !vec2<bool>(false, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, u_input.b, 0u) & vec3<u32>(16728u, 4294967295u, 49691u)), ~(vec3<u32>(u_input.b, u_input.b, 33898u) ^ vec3<u32>(u_input.b, u_input.b, u_input.b))), 12u)]);
    var var_3 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1000f, 584f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1054f, _wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_f_op_f32(func_3(_wgslsmith_clamp_i32(14750i, -18736i, u_input.e.x), ~vec4<i32>(-2147483647i, -31204i, u_input.d.x, global1.x)))), -1064f)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.yyz));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global1 = vec3<i32>(global1.x, global1.x, -2147483647i);
    global0 = array<bool, 12>();
    global0 = array<bool, 12>();
    let var_0 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.c, arg_0.a.x, arg_0.b)) - _wgslsmith_f_op_f32(f32(-1f) * -524f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x))), 483f), _wgslsmith_div_vec2_f32(arg_0.a.xz, vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1494f)) * -1046f)))));
    let var_1 = u_input.b;
    return Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-arg_0.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a)))))), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(562f * arg_0.c) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(arg_0.a.x))))))));
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    global0 = array<bool, 12>();
    var var_0 = func_4(Struct_1(_wgslsmith_f_op_vec3_f32(func_2()), all(!select(vec4<bool>(arg_0.d.x, global0[_wgslsmith_index_u32(u_input.b, 12u)], false, global0[_wgslsmith_index_u32(3573u, 12u)]), vec4<bool>(true, arg_0.d.x, true, global0[_wgslsmith_index_u32(arg_0.a, 12u)]), global0[_wgslsmith_index_u32(4294967295u, 12u)])), _wgslsmith_div_f32(arg_1, arg_1)));
    let var_1 = _wgslsmith_f_op_f32(-arg_1);
    let var_2 = ~1u;
    let var_3 = func_4(Struct_1(func_4(func_4(func_4(Struct_1(var_0.a, global0[_wgslsmith_index_u32(31512u, 12u)], 435f)))).a, arg_0.c < ~_wgslsmith_div_i32(-13980i, 13684i), -600f));
    return var_3;
}

fn func_5(arg_0: vec4<f32>, arg_1: i32, arg_2: vec3<i32>, arg_3: Struct_1) -> u32 {
    var var_0 = firstTrailingBit(vec3<u32>(~1u ^ u_input.b, _wgslsmith_add_u32(u_input.b, u_input.b) | _wgslsmith_mult_u32(u_input.b, 33886u), ~(35347u << (1u % 32u))) ^ ~vec3<u32>(4294967295u, 3783u, u_input.b));
    global1 = u_input.a;
    global0 = array<bool, 12>();
    let var_1 = ~(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, var_0.x, var_0.x), vec4<u32>(0u, 4294967295u, u_input.b, 4294967295u)), _wgslsmith_clamp_u32(var_0.x, 4294967295u, 0u), var_0.x) | min(~(vec3<u32>(u_input.b, 0u, 1u) ^ vec3<u32>(u_input.b, var_0.x, var_0.x)), vec3<u32>(select(36761u, u_input.b, false), 1u, _wgslsmith_sub_u32(u_input.b, u_input.b))));
    var_0 = vec3<u32>(_wgslsmith_div_u32(~_wgslsmith_mod_u32(countOneBits(4294967295u), 4294967295u), ~(68471u >> ((u_input.b << (u_input.b % 32u)) % 32u))), reverseBits(1u), var_1.x);
    return _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(43076u, min(1u, var_1.x)), 41747u, var_1.x), vec3<u32>(firstLeadingBit(~var_1.x), 4294967295u, (var_1.x ^ 18518u) ^ (u_input.b >> (var_1.x % 32u)))), var_0.x, firstTrailingBit(4294967295u | var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~vec2<u32>(u_input.b, u_input.b) & vec2<u32>(u_input.b, ~35610u)));
    var var_1 = Struct_2((2346u >> (u_input.b % 32u)) << (_wgslsmith_div_u32(15365u, func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(-608f, -1224f, 1138f, 1570f) * vec4<f32>(656f, 546f, 765f, 1853f)), 2147483647i, select(vec3<i32>(u_input.c, 37587i, 39054i), vec3<i32>(0i, 2147483647i, u_input.d.x), true), func_1(Struct_2(var_0.x, vec2<bool>(global0[_wgslsmith_index_u32(33329u, 12u)], false), -35992i, vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 12u)], global0[_wgslsmith_index_u32(78903u, 12u)], false)), 439f))) % 32u), select(vec2<bool>(func_4(Struct_1(vec3<f32>(-1463f, -269f, 622f), true, -2382f)).b & all(vec2<bool>(false, global0[_wgslsmith_index_u32(21120u, 12u)])), global0[_wgslsmith_index_u32(abs(var_0.x), 12u)]), select(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 12u)]), vec2<bool>(true, true), global0[_wgslsmith_index_u32(~1u, 12u)]), ~(~8128u) <= ~u_input.b), abs(i32(-1i) * -28047i), vec3<bool>(true, 41094u < _wgslsmith_mod_u32(var_0.x, _wgslsmith_div_u32(1u, var_0.x)), global0[_wgslsmith_index_u32(36652u, 12u)]));
    var_0 = ~vec2<u32>(1u << (~u_input.b % 32u), u_input.b) & (abs(vec2<u32>(_wgslsmith_add_u32(43425u, 59065u), 1u)) >> (vec2<u32>(_wgslsmith_add_u32(var_0.x, ~var_0.x), _wgslsmith_div_u32(firstLeadingBit(var_0.x), min(var_1.a, var_0.x))) % vec2<u32>(32u)));
    global0 = array<bool, 12>();
    var_1 = Struct_2(~select(u_input.b, _wgslsmith_div_u32(~u_input.b, ~1u), !global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, var_0.x), 12u)]), vec2<bool>(any(!vec3<bool>(false, var_1.b.x, global0[_wgslsmith_index_u32(4294967295u, 12u)])), func_4(func_4(Struct_1(vec3<f32>(-774f, 112f, -434f), var_1.d.x, 126f))).b), _wgslsmith_div_i32(abs(var_1.c) << ((~u_input.b >> (~var_0.x % 32u)) % 32u), _wgslsmith_add_i32(-1i >> (_wgslsmith_mod_u32(var_0.x, 4294967295u) % 32u), 1i >> (~u_input.b % 32u))), !vec3<bool>(_wgslsmith_sub_i32(9439i, var_1.c) != abs(0i), true, select(true & global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(var_0.x, 12u)], true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1588f, 187f))))))), ~var_0.x);
}

