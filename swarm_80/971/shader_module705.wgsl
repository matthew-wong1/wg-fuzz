struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec4<f32>,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<i32, 32>;

var<private> global2: Struct_1;

var<private> global3: vec3<f32>;

var<private> global4: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(vec4<f32>(627f, 142f, -170f, -1081f), false), Struct_2(vec4<f32>(937f, 1045f, -858f, -749f), true), Struct_2(vec4<f32>(792f, 599f, 1000f, -269f), true), Struct_2(vec4<f32>(-1672f, 787f, -421f, -1000f), false), Struct_2(vec4<f32>(-1000f, 669f, -789f, 1544f), true), Struct_2(vec4<f32>(1674f, -783f, 2151f, 512f), false), Struct_2(vec4<f32>(-1787f, -193f, -1022f, 948f), false), Struct_2(vec4<f32>(-2202f, -1011f, -629f, -2231f), true), Struct_2(vec4<f32>(1485f, -345f, -126f, 1948f), true), Struct_2(vec4<f32>(-955f, 538f, -2000f, -898f), false), Struct_2(vec4<f32>(747f, 276f, -883f, 1932f), false), Struct_2(vec4<f32>(-975f, -568f, -194f, 1186f), false), Struct_2(vec4<f32>(314f, -2076f, -885f, -1891f), false), Struct_2(vec4<f32>(1251f, -1000f, 527f, 1414f), false), Struct_2(vec4<f32>(-842f, 493f, -394f, -107f), true), Struct_2(vec4<f32>(-760f, 907f, 274f, 129f), false), Struct_2(vec4<f32>(1000f, -1393f, 1587f, 1649f), false), Struct_2(vec4<f32>(1591f, 329f, 1222f, 770f), true), Struct_2(vec4<f32>(340f, 143f, -1135f, 166f), false), Struct_2(vec4<f32>(-521f, -586f, -1434f, 317f), false));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: u32, arg_3: vec3<u32>) -> f32 {
    let var_0 = !(!(global0.b && all(vec2<bool>(global0.b, global0.b))));
    let var_1 = ~_wgslsmith_add_vec2_i32(reverseBits(u_input.c), vec2<i32>(u_input.c.x, 46638i));
    let var_2 = global2.c.xz;
    var var_3 = true;
    var var_4 = Struct_3(arg_0.x, Struct_1(vec3<u32>(1u, global2.a.x, countOneBits(arg_0.x)) >> (arg_3 % vec3<u32>(32u)), -_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, var_1.x, global2.e), vec3<i32>(u_input.c.x, u_input.c.x, 0i)), _wgslsmith_mod_i32(global2.e, u_input.c.x), 0i), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(443f, -569f, 731f, 318f), vec4<f32>(-562f, var_2.x, var_2.x, global2.d.x), vec4<bool>(global0.b, true, var_0, var_0))) * _wgslsmith_div_vec4_f32(global0.a, vec4<f32>(229f, global3.x, global3.x, global3.x))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -714f) - 292f), _wgslsmith_f_op_f32(-401f + 209f)), ~(-21483i)), !global0.b);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -456f));
}

fn func_2(arg_0: Struct_2) -> vec3<u32> {
    global3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_f32(trunc(-281f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global3.x)) - _wgslsmith_f_op_f32(func_3(vec4<u32>(global2.a.x, 33540u, u_input.b.x, 32682u), u_input.a, 4294967295u, global2.a)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.x))), arg_0.a.x))) - _wgslsmith_f_op_vec3_f32(max(arg_0.a.ywz, arg_0.a.zzx)));
    global2 = Struct_1(_wgslsmith_add_vec3_u32(select(global2.a, vec3<u32>(u_input.a, ~19468u, u_input.b.x & 34720u), (-3045i ^ u_input.c.x) >= (global2.e ^ 8066i)), global2.a), 0i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(arg_0.a.x, -1000f), -141f, _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(min(global0.a.x, arg_0.a.x)))))), vec2<f32>(_wgslsmith_f_op_f32(808f * _wgslsmith_f_op_f32(trunc(-532f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.a.x)) - _wgslsmith_f_op_f32(-global0.a.x))))), u_input.c.x);
    let var_0 = firstLeadingBit(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(max(1u, 1u), u_input.a, countOneBits(global2.a.x), 4294967295u)), ~abs(min(vec4<u32>(53568u, 4294967295u, 1u, global2.a.x), vec4<u32>(50319u, global2.a.x, 7216u, 33208u)))));
    let var_1 = vec4<bool>(any(vec3<bool>(any(!vec4<bool>(false, global0.b, global0.b, global0.b)), false, !(!arg_0.b))), !all(select(!vec4<bool>(true, true, global0.b, true), !vec4<bool>(arg_0.b, false, false, global0.b), !global0.b)), arg_0.b, true);
    global4 = array<Struct_2, 20>();
    return abs(var_0.zyz);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: vec3<u32>) -> u32 {
    let var_0 = vec2<u32>(_wgslsmith_mod_u32(0u, firstTrailingBit(92996u)), ~firstLeadingBit(~arg_2.x << (0u % 32u)));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1669f), 1000f, global0.b)), _wgslsmith_f_op_f32(trunc(687f))));
    var var_2 = global0.b;
    global0 = global4[_wgslsmith_index_u32(4294967295u, 20u)];
    var_2 = true;
    return _wgslsmith_mod_u32(u_input.b.x, abs(_wgslsmith_div_u32(arg_2.x & 42439u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(arg_2.x, u_input.b.x))))) | arg_2.x;
}

fn func_5(arg_0: u32, arg_1: vec4<f32>) -> f32 {
    global3 = vec3<f32>(1964f, global2.c.x, -594f);
    let var_0 = any(vec3<bool>(true, global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1482f, global3.x))) <= 1127f));
    let var_1 = all(vec3<bool>(true & !(true & global0.b), !any(vec4<bool>(global0.b, var_0, global0.b, true)), all(vec3<bool>(var_0, global0.b, global0.b)) && global0.b));
    var var_2 = _wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(abs(global3.x)));
    var var_3 = ~(~(~(~vec4<u32>(12741u, u_input.b.x, global2.a.x, arg_0))));
    return _wgslsmith_f_op_f32(-global2.d.x);
}

fn func_6(arg_0: Struct_2, arg_1: f32) -> Struct_2 {
    global4 = array<Struct_2, 20>();
    let var_0 = Struct_1(_wgslsmith_mult_vec3_u32(abs(select(vec3<u32>(4294967295u, 1u, 0u), ~vec3<u32>(global2.a.x, u_input.a, 22278u), true)), global2.a), global2.b, _wgslsmith_f_op_vec4_f32(sign(global0.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(arg_1)), _wgslsmith_f_op_f32(abs(880f)))), -reverseBits(firstLeadingBit(global1[_wgslsmith_index_u32(0u, 32u)]) >> (9853u % 32u)));
    global4 = array<Struct_2, 20>();
    var var_1 = global4[_wgslsmith_index_u32(u_input.a, 20u)];
    let var_2 = global4[_wgslsmith_index_u32(4294967295u, 20u)];
    return arg_0;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec4<f32>) -> vec3<bool> {
    let var_0 = ~u_input.c;
    let var_1 = func_6(Struct_2(vec4<f32>(317f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.x * -363f), _wgslsmith_f_op_f32(f32(-1f) * -2044f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(global2.d.x + global0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1753f * arg_1.c.x) + _wgslsmith_f_op_f32(select(global2.d.x, 1134f, arg_0.x)))), false), _wgslsmith_f_op_f32(func_5(func_4(_wgslsmith_f_op_vec3_f32(round(arg_1.c.yxy)), vec3<f32>(_wgslsmith_f_op_f32(-global2.c.x), global0.a.x, _wgslsmith_f_op_f32(step(-1000f, global0.a.x))), func_2(Struct_2(arg_1.c, false))), arg_1.c)));
    var var_2 = var_0.x;
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(global2.c, vec4<f32>(-151f, -2386f, global2.d.x, -1335f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c.x, global3.x, 203f, -661f) + global0.a)))), var_1.b);
    let var_4 = !var_1.b;
    return vec3<bool>(any(!arg_0), select(false, all(arg_0), (global1[_wgslsmith_index_u32(~0u, 32u)] <= -global2.e) || any(select(arg_0.zz, vec2<bool>(arg_0.x, var_1.b), true))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(!(!func_1(vec3<bool>(global0.b, global0.b, false), Struct_1(global2.a, u_input.c.x, vec4<f32>(global2.c.x, global0.a.x, global0.a.x, global2.d.x), vec2<f32>(-723f, 1835f), -70760i), global0.a)), vec3<bool>(global0.b, any(vec3<bool>(global0.b, global0.b, true)), false), !select(!vec3<bool>(global0.b, global0.b, true), vec3<bool>(false, true, global0.b), vec3<bool>(global0.b, global0.b, true)));
    var var_1 = global2.d.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, 830f, global0.a.x) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1899f, global2.c.x)))))))));
    var var_3 = func_4(vec3<f32>(482f, _wgslsmith_f_op_f32(global2.c.x - -210f), 983f), _wgslsmith_f_op_vec3_f32(global0.a.yyz * global2.c.yzx), vec3<u32>(51109u, ~(_wgslsmith_mod_u32(global2.a.x, u_input.b.x) >> (1u % 32u)), ~_wgslsmith_mod_u32(select(global2.a.x, 0u, true), global2.a.x)));
    var_0 = !select(func_1(!vec3<bool>(true, global0.b, false), Struct_1(abs(global2.a), 1i, global0.a, global2.d, 2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, var_2.x, -1000f, global2.d.x)))), !vec3<bool>(all(var_0.yx), global2.d.x >= global2.c.x, true), !func_1(!vec3<bool>(global0.b, global0.b, true), Struct_1(global2.a, global1[_wgslsmith_index_u32(14966u, 32u)], global0.a, global0.a.wy, u_input.c.x), _wgslsmith_f_op_vec4_f32(-global0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(select(35780u, abs(global2.a.x), false), _wgslsmith_f_op_vec4_f32(-func_6(global4[_wgslsmith_index_u32(10142u, 20u)], global0.a.x).a)))));
}

