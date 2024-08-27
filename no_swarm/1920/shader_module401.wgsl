struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: vec4<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30>;

var<private> global1: array<Struct_1, 26>;

var<private> global2: f32 = -465f;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3) -> vec3<bool> {
    let var_0 = ~(~vec2<i32>(-u_input.b, countOneBits(u_input.b)));
    var var_1 = global0[_wgslsmith_index_u32(~0u, 30u)];
    let var_2 = abs(var_0);
    global1 = array<Struct_1, 26>();
    var_1 = _wgslsmith_sub_u32(40901u, ~select(~firstLeadingBit(arg_2.d), firstLeadingBit(firstTrailingBit(1u)), true));
    return vec3<bool>(any(!select(select(vec4<bool>(true, false, false, arg_1), vec4<bool>(arg_1, false, arg_1, arg_1), vec4<bool>(true, true, true, arg_1)), vec4<bool>(arg_1, arg_1, arg_1, arg_0.a.x), true)), any(select(vec4<bool>(arg_0.a.x, false, arg_1, true), !vec4<bool>(arg_0.a.x, false, arg_0.d, false), arg_1)) && !any(select(vec2<bool>(true, false), arg_0.a.yz, false)), true);
}

fn func_2() -> vec2<u32> {
    global1 = array<Struct_1, 26>();
    var var_0 = Struct_2(select(func_3(global1[_wgslsmith_index_u32(21104u, 26u)], false, Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-591f, 2029f, -1000f) + vec3<f32>(-296f, 426f, 2354f)), u_input.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(990f, -1967f, -183f, -1000f) - vec4<f32>(504f, -567f, 2393f, -1219f)), 49156u)), select(func_3(Struct_1(vec3<bool>(false, false, false), 58706u, global0[_wgslsmith_index_u32(u_input.a.x, 30u)], true), func_3(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], 30u)], 30u)], 30u)], 26u)], false, Struct_3(vec3<f32>(-1127f, -614f, 1000f), u_input.b, vec4<f32>(333f, 1019f, 1252f, -887f), u_input.a.x)).x, Struct_3(vec3<f32>(1715f, 1520f, -470f), u_input.b, vec4<f32>(707f, -1113f, 1575f, 1184f), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(240u, 30u)], 30u)])), func_3(Struct_1(vec3<bool>(false, false, false), 31800u, 45626u, false), false, Struct_3(vec3<f32>(2627f, -315f, -244f), u_input.b, vec4<f32>(721f, -645f, -1000f, -107f), u_input.a.x)), vec3<bool>(true, true, true)), vec3<bool>(false, select(false, select(false, false, true), true), true)), Struct_1(vec3<bool>(true, true, true), u_input.a.x, _wgslsmith_sub_u32(4292u, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], 30u)], global0[_wgslsmith_index_u32(u_input.a.x, 30u)]) << (_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 30u)], 30u)], 4294967295u, 4294967295u) % 32u)), any(select(func_3(global1[_wgslsmith_index_u32(23841u, 26u)], true, Struct_3(vec3<f32>(1097f, -987f, -805f), 59010i, vec4<f32>(-1261f, 961f, 681f, 970f), 0u)).zx, vec2<bool>(false, true), true))), Struct_1(vec3<bool>(func_3(Struct_1(vec3<bool>(true, false, false), 4294967295u, 1u, false), true, Struct_3(vec3<f32>(-1589f, 1000f, 958f), u_input.b, vec4<f32>(241f, -629f, 282f, 686f), 4294967295u)).x, any(vec2<bool>(false, true)), true), ~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(28466u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], 30u)], global0[_wgslsmith_index_u32(0u, 30u)], 38996u)) << (u_input.a.x % 32u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~global0[_wgslsmith_index_u32(4294967295u, 30u)]), ~u_input.a.x), 30u)], 30u)], 30u)], max(global0[_wgslsmith_index_u32(1u >> (u_input.a.x % 32u), 30u)], 1u) == _wgslsmith_sub_u32(~59222u, firstLeadingBit(global0[_wgslsmith_index_u32(u_input.a.x, 30u)]))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -1336f) + _wgslsmith_f_op_f32(1271f + 1792f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-743f)) * _wgslsmith_f_op_f32(-1000f + 1259f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1052f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2734f), 1621f))));
    global0 = array<u32, 30>();
    var var_2 = ~(~firstTrailingBit(vec4<i32>(-20249i, 0i, -1i, u_input.b)));
    return max(u_input.a.yw, ~(~reverseBits(u_input.a.zy)));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: i32) -> bool {
    global0 = array<u32, 30>();
    let var_0 = _wgslsmith_f_op_f32(-938f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(441f - 1555f), -312f, true))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-903f, -611f) * _wgslsmith_f_op_f32(max(-341f, -399f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1084f)))));
    global1 = array<Struct_1, 26>();
    var var_1 = vec3<u32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(min(~u_input.a.zx, _wgslsmith_sub_vec2_u32(vec2<u32>(arg_1, global0[_wgslsmith_index_u32(u_input.a.x, 30u)]), u_input.a.wz)), func_2() | u_input.a.yz), vec2<u32>(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(arg_1, 30u)], u_input.a.x), reverseBits(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(78200u, 30u)], 30u)]))), 30u)], _wgslsmith_mod_u32(u_input.a.x, 1u), (39035u | abs(func_2().x)) | (0u & arg_1));
    var var_2 = _wgslsmith_div_vec3_u32(u_input.a.zzw, abs(firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 1u, 76170u), u_input.a.yxw, ~vec3<u32>(4294967295u, u_input.a.x, arg_1)))));
    return any(vec2<bool>(true, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true)), any(vec3<bool>(true, true, false))), vec4<bool>(true, u_input.b >= u_input.b, select(true, false, true), true), true), vec4<bool>(true, false, (-29804i >= u_input.b) & all(vec4<bool>(true, true, false, false)), true), true), select(vec4<bool>(select(true, true, false), true, true, !any(vec2<bool>(false, false))), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(func_1(-16668i, u_input.a.x, 0i), -11044i == u_input.b, true, true), false), true), vec4<bool>(!(u_input.a.x > _wgslsmith_div_u32(u_input.a.x, 24330u)), any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), true, _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.b, -67809i), _wgslsmith_mod_i32(-2147483647i, u_input.b)) != -1i));
    var var_1 = ~firstLeadingBit(-u_input.b);
    let var_2 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(max(1810f, 1f)), _wgslsmith_f_op_f32(1148f + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-769f, -1000f), _wgslsmith_f_op_f32(1000f - -1000f)))), -1000f), max(~(~49713i), ~firstTrailingBit(0i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-546f, _wgslsmith_f_op_f32(f32(-1f) * -995f))), -739f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1139f, -864f)), _wgslsmith_f_op_f32(f32(-1f) * -377f)), -237f) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1864f, 519f, 912f, 251f), vec4<f32>(398f, -967f, 351f, 2065f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1046f, 1203f, -233f, -1932f)))))), ~u_input.a.x);
    let var_3 = global1[_wgslsmith_index_u32(u_input.a.x, 26u)];
    global2 = var_2.a.x;
    let var_4 = var_0.x;
    var var_5 = vec4<i32>(~_wgslsmith_clamp_i32(var_2.b, u_input.b, ~var_2.b), max(_wgslsmith_dot_vec4_i32(vec4<i32>(-80959i, -2147483647i, -24902i << (var_2.d % 32u), -8097i), -min(vec4<i32>(48850i, u_input.b, u_input.b, u_input.b), vec4<i32>(-1i, 2147483647i, u_input.b, 57116i))), _wgslsmith_clamp_i32(~(-1i | u_input.b), max(_wgslsmith_div_i32(-34956i, u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(-2147483647i, 0i, 1i))), -u_input.b)), min(2147483647i, ~var_2.b), (_wgslsmith_mult_i32(-2147483647i, max(-1i, u_input.b)) | (select(u_input.b, u_input.b, false) >> (u_input.a.x % 32u))) >> (~0u % 32u));
    var var_6 = var_5.x;
    let x = u_input.a;
    s_output = StorageBuffer(1i, min(u_input.a, min(vec4<u32>(0u, var_3.b, u_input.a.x, 72249u) ^ vec4<u32>(4294967295u, 6485u, var_3.c, u_input.a.x), u_input.a) << (vec4<u32>(abs(var_3.b), _wgslsmith_sub_u32(var_2.d, u_input.a.x), abs(var_2.d), 22386u) % vec4<u32>(32u))));
}

