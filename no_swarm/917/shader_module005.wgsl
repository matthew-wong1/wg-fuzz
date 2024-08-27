struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

var<private> global1: vec2<f32> = vec2<f32>(-1936f, -624f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: u32) -> Struct_3 {
    var var_0 = -2208f;
    global0 = array<Struct_1, 22>();
    let var_1 = global1.x;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_div_f32(-1114f, -468f)))));
    var_0 = _wgslsmith_f_op_f32(global1.x + 1187f);
    return Struct_3(!vec4<bool>(true, true, all(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, true))));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: vec2<f32>) -> vec4<bool> {
    global0 = array<Struct_1, 22>();
    var var_0 = arg_1;
    var var_1 = vec3<i32>(u_input.a, _wgslsmith_clamp_i32(arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(860i, u_input.a, 17747i), arg_0 >> (38323u % 32u), -41603i, u_input.a), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(2147483647i, 0i, 0i, 0i)), -vec4<i32>(u_input.a, u_input.a, u_input.a, -15312i), vec4<i32>(-2147483647i, arg_0, 1i, arg_0))), -u_input.a), -14721i);
    var_1 = ~abs(firstTrailingBit(vec3<i32>(arg_0, 2147483647i, u_input.a) ^ vec3<i32>(-14417i, 0i, arg_0)) << (~(~vec3<u32>(4294967295u, 4294967295u, 4294967295u)) % vec3<u32>(32u)));
    let var_2 = 42741u;
    return arg_1.a.a;
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec3<i32>) -> vec2<bool> {
    let var_0 = select(vec4<bool>(true, false, all(vec4<bool>(true, false, any(vec4<bool>(false, true, true, false)), true)), true), !select(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), true))), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.x)) - arg_0) <= _wgslsmith_f_op_f32(abs(-610f))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, 130f) * vec3<f32>(arg_0, global1.x, arg_0)), vec3<f32>(arg_0, 2332f, -1000f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 111f, -1381f) - vec3<f32>(1000f, 143f, 1880f))))));
    let var_2 = Struct_1(max(u_input.a, arg_2.x), -1285f);
    let var_3 = 1i;
    let var_4 = Struct_3(!func_3(16733i, Struct_4(func_2(vec2<u32>(1u, 3157u), 4294967295u, 37098u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.zz), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.b, arg_0))))));
    return var_0.wy;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: i32) -> Struct_3 {
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(506f, global1.x), vec2<f32>(-1049f, global1.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-201f, -1272f) - vec2<f32>(-996f, global1.x))))));
    var var_0 = func_2(~abs(_wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(30643u, 2134u)), firstLeadingBit(vec2<u32>(23212u, 1u)), ~vec2<u32>(4294967295u, 0u))), 1u, ~reverseBits(firstTrailingBit(98358u << (0u % 32u))));
    var var_1 = Struct_1(firstLeadingBit(-arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, global1.x) * 331f))));
    let var_2 = u_input.a;
    var_1 = global0[_wgslsmith_index_u32(1u << (_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, ~4294967295u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 1u, 44155u), vec4<u32>(1u, 1u, 11531u, 1u))), vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(70337u, 0u, 91543u), vec3<u32>(10928u, 4294967295u, 67u)), firstLeadingBit(4294967295u), 0u)), firstLeadingBit(~76255u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 0u), vec3<u32>(53366u, 1u, 49107u)) % 32u))) % 32u), 22u)];
    return func_2(vec2<u32>(~(~16411u), firstLeadingBit(1u) << (select(4890u, 1u, arg_1.a.a.x) % 32u)) | abs(vec2<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 62329u)))), abs(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(98317u, 18937u)), vec2<u32>(1u, 1u)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 56582u, 0u, 1u), vec4<u32>(4294967295u, 552u, 60261u, 103462u)) % 32u)), countOneBits(~(_wgslsmith_mod_u32(1u, 23070u) >> (select(4294967295u, 20598u, var_0.a.x) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(!select(vec2<bool>(any(vec2<bool>(false, true)), global1.x == 523f), func_1(global1.x, max(0i, u_input.a), vec3<i32>(u_input.a, u_input.a, -23010i) << (vec3<u32>(58531u, 1u, 0u) % vec3<u32>(32u))), vec2<bool>(false, true)), Struct_4(func_2(vec2<u32>(4294967295u, 74318u) & select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(6631u, 0u), true), 1u, 1u)), reverseBits(4357i));
    var_0 = Struct_3(!vec4<bool>(true, !(!var_0.a.x), select(var_0.a.x, u_input.a <= u_input.a, true), func_4(func_1(global1.x, u_input.a, vec3<i32>(u_input.a, -24085i, 1i)), Struct_4(Struct_3(var_0.a)), -2147483647i & u_input.a).a.x));
    let var_1 = ~(~firstLeadingBit(firstLeadingBit(~vec4<u32>(4294967295u, 44365u, 31636u, 1u))));
    let var_2 = select(var_1.x >> ((var_1.x & _wgslsmith_mod_u32(1u, var_1.x)) % 32u), ~_wgslsmith_sub_u32(var_1.x, ~var_1.x), var_0.a.x);
    var_0 = Struct_3(!select(!var_0.a, var_0.a, !(!vec4<bool>(var_0.a.x, true, false, false))));
    var var_3 = vec3<f32>(_wgslsmith_div_f32(1450f, global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1115f - global1.x)), 715f);
    var var_4 = !select(vec3<bool>(true, func_4(!vec2<bool>(var_0.a.x, false), Struct_4(Struct_3(vec4<bool>(true, true, false, false))), -9213i).a.x, !(var_1.x <= var_1.x)), vec3<bool>(true, !var_0.a.x, true), var_0.a.ywx);
    var var_5 = var_1.wwz;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_1.x, select(var_1.x, _wgslsmith_add_u32(0u, var_1.x), u_input.a > -20100i) & _wgslsmith_div_u32(1u, ~var_1.x), 0u), abs(~firstTrailingBit(vec3<i32>(-64883i, u_input.a, u_input.a))), ~var_1.zx, vec4<f32>(-2139f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x * 1486f) * _wgslsmith_f_op_f32(ceil(global1.x)))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-285f, var_3.x) - _wgslsmith_f_op_f32(abs(var_3.x))))), 1u);
}

