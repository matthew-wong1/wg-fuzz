struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec3<u32>;

var<private> global2: i32 = i32(-2147483648);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: bool, arg_3: u32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(select(arg_0.a, arg_0.a, arg_2)), 281f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(539f, -1807f) - vec2<f32>(-957f, -880f))), select(vec2<bool>(true, arg_2), !vec2<bool>(arg_2, arg_2), true))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1946f, 1209f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.a, arg_0.a), vec2<f32>(arg_0.a, arg_0.a))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, arg_0.a) * vec2<f32>(300f, arg_0.a))))), vec2<bool>(true, true))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1595f))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(395f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 1157f) * _wgslsmith_f_op_f32(199f + arg_0.a)))), var_0.b);
    var var_3 = arg_1;
    var var_4 = _wgslsmith_sub_i32(reverseBits(_wgslsmith_mod_i32(-15385i, -max(-39785i, u_input.a.x))), ~(-2147483647i));
    return -987f;
}

fn func_2() -> vec4<u32> {
    global1 = vec3<u32>(79437u, global1.x | 54323u, global1.x) ^ (vec3<u32>(firstLeadingBit(1u), _wgslsmith_div_u32(~global1.x, global1.x >> (global1.x % 32u)), global1.x) << (_wgslsmith_sub_vec3_u32(~vec3<u32>(1443u, 4245u, global1.x), _wgslsmith_div_vec3_u32(~vec3<u32>(1u, global1.x, 34445u), vec3<u32>(34919u, global1.x, 61956u))) % vec3<u32>(32u)));
    var var_0 = Struct_2(~(~vec3<u32>(~global1.x, global1.x, global1.x ^ global1.x)));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-596f + _wgslsmith_div_f32(350f, 563f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(996f), vec4<u32>(global1.x, var_0.a.x, 0u, 13056u), false, var_0.a.x))))))));
    var var_2 = ~(~global1.x);
    var_2 = _wgslsmith_mod_u32(_wgslsmith_add_u32(firstLeadingBit(var_0.a.x), var_0.a.x), 12517u);
    return ~vec4<u32>(max(global1.x, abs(global1.x)), global1.x, _wgslsmith_div_u32(global1.x, reverseBits(0u)), _wgslsmith_sub_u32(abs(17338u), firstLeadingBit(41884u))) | firstLeadingBit(vec4<u32>(max(4294967295u, global1.x | 22229u), firstLeadingBit(~var_0.a.x), global1.x, ~112959u | global1.x));
}

fn func_1() -> vec3<u32> {
    global0 = global1.x >= ~global1.x;
    global2 = ~(u_input.a.x << (global1.x % 32u));
    var var_0 = vec3<bool>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(global1.x, 32241u, global1.x, 24233u)), func_2()) <= ~global1.x, _wgslsmith_add_u32(abs(92625u), firstTrailingBit(4294967295u)) < global1.x, !(true || (_wgslsmith_sub_u32(35106u, global1.x) > 78202u)));
    global2 = ~_wgslsmith_add_i32(select(~(u_input.a.x & u_input.a.x), firstTrailingBit(~u_input.a.x), any(select(vec4<bool>(false, var_0.x, false, true), vec4<bool>(false, var_0.x, var_0.x, var_0.x), var_0.x))), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -1i, 50939i, -5422i), vec4<i32>(2147483647i, 1i, u_input.a.x, u_input.a.x)), u_input.a.x));
    global2 = 0i;
    return ~(~(~vec3<u32>(4294967295u, global1.x, 63042u)) << (~countOneBits(vec3<u32>(71320u, 0u, 3367u)) % vec3<u32>(32u))) << (~firstLeadingBit(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 29069u, global1.x), vec3<u32>(0u, global1.x, global1.x))) % vec3<u32>(32u));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>) -> Struct_3 {
    global0 = all(vec3<bool>(any(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, true)), !select(all(vec4<bool>(false, false, true, true)), true, true)));
    let var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, ~u_input.a.x), vec2<i32>(_wgslsmith_add_i32(u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x)), arg_1.x));
    var var_1 = Struct_1(577f, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1202f * -1125f), 1f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(784f, 325f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(175f, -129f)))) * vec2<f32>(_wgslsmith_f_op_f32(-1000f - 791f), _wgslsmith_f_op_f32(round(1215f))))));
    var var_2 = Struct_1(-184f, _wgslsmith_f_op_vec2_f32(var_1.b + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_1.b - var_1.b)))));
    var var_3 = !vec2<bool>(!any(vec2<bool>(true, true)), true);
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(199f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a - var_2.a) - var_2.b.x))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: u32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a, arg_0.a), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-431f, -1292f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0.a, arg_0.a))))))));
    var var_1 = Struct_3(func_4(arg_1, u_input.a).a);
    global2 = -u_input.a.x | u_input.a.x;
    var_1 = arg_0;
    var var_2 = ~_wgslsmith_dot_vec3_u32(arg_1.a, arg_1.a);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = all(!vec2<bool>(!all(vec2<bool>(false, false)), any(vec4<bool>(true, true, true, true))));
    var var_0 = -(vec4<i32>(-1i) * -(~(~vec4<i32>(u_input.a.x, 23994i, u_input.a.x, u_input.a.x))));
    var var_1 = ~(~0u);
    var var_2 = func_5(func_4(Struct_2(func_1()), u_input.a), Struct_2(_wgslsmith_mod_vec3_u32(vec3<u32>(36177u, ~10000u, global1.x), ~(~vec3<u32>(global1.x, 1u, 4294967295u)))), ~(~max(~global1.x, firstTrailingBit(0u))));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1076f)) * _wgslsmith_f_op_f32(select(-1093f, 1115f, true))))));
    var_2 = func_5(func_4(func_5(func_4(Struct_2(var_2.a), vec3<i32>(-7016i, -2147483647i, 33860i)), Struct_2(var_2.a), ~4294967295u | ~var_2.a.x), firstLeadingBit(_wgslsmith_mod_vec3_i32(var_0.xzx << (vec3<u32>(var_2.a.x, var_2.a.x, 10898u) % vec3<u32>(32u)), vec3<i32>(u_input.a.x, 2147483647i, 0i)))), Struct_2(_wgslsmith_sub_vec3_u32(vec3<u32>(60734u, var_2.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(66450u, var_2.a.x, global1.x, global1.x), vec4<u32>(89999u, global1.x, 74192u, 4294967295u))), vec3<u32>(13251u, 27200u, ~20673u))), ~select(global1.x, func_1().x, firstTrailingBit(46057u) <= _wgslsmith_dot_vec3_u32(var_2.a, var_2.a)));
    var_2 = Struct_2(abs(vec3<u32>(~_wgslsmith_dot_vec3_u32(var_2.a, var_2.a), global1.x, ~(~var_2.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(var_2.a.x, ~abs(48571u), _wgslsmith_mod_u32(var_2.a.x, func_1().x), 1u));
}

