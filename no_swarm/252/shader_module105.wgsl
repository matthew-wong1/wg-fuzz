struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 26>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: vec4<bool>, arg_3: bool) -> vec2<f32> {
    global0 = array<Struct_4, 26>();
    let var_0 = Struct_2(Struct_1(false), Struct_1(arg_1.x), Struct_1(!(true | select(false, false, arg_2.x))));
    global0 = array<Struct_4, 26>();
    var var_1 = u_input.c.zyy;
    var var_2 = var_0;
    return vec2<f32>(1191f, _wgslsmith_f_op_f32(-1f));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: f32) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_0.x))) * vec2<f32>(275f, _wgslsmith_div_f32(-881f, -482f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(global0[_wgslsmith_index_u32(40185u, 26u)], vec4<bool>(false, false, false, arg_1.x), vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x), arg_1.x)) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-586f, arg_2)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-117f, arg_2) + vec2<f32>(-1828f, 705f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(2112f, 872f) * vec2<f32>(1473f, 410f))))));
    global0 = array<Struct_4, 26>();
    var_0 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.x - arg_0.x))) - -1196f))));
    global0 = array<Struct_4, 26>();
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.zz)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, arg_0.x) + _wgslsmith_div_vec2_f32(vec2<f32>(-555f, _wgslsmith_f_op_f32(ceil(var_0.x))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.x, var_0.x))))));
    return min(u_input.d >> (firstLeadingBit(abs(vec3<u32>(u_input.d.x, u_input.d.x, 1u) ^ u_input.d)) % vec3<u32>(32u)), u_input.d);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: u32, arg_3: vec2<f32>) -> Struct_1 {
    global0 = array<Struct_4, 26>();
    global0 = array<Struct_4, 26>();
    var var_0 = Struct_1(!(!(-68803i <= u_input.b.x)));
    global0 = array<Struct_4, 26>();
    global0 = array<Struct_4, 26>();
    return Struct_1(all(select(select(!vec2<bool>(var_0.a, false), vec2<bool>(var_0.a, false), true), vec2<bool>(true, all(vec2<bool>(var_0.a, var_0.a))), !var_0.a)));
}

fn func_1() -> u32 {
    var var_0 = func_4(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-845f)), _wgslsmith_f_op_f32(-192f + -1753f), 777f) - vec3<f32>(586f, _wgslsmith_f_op_f32(trunc(-1807f)), _wgslsmith_f_op_f32(f32(-1f) * -875f))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1203f)), 624f))))), vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(9484u, 4294967295u), u_input.d.yx), vec2<u32>(u_input.d.x, 20560u)), firstLeadingBit(u_input.d.xy)), u_input.d.x, _wgslsmith_div_u32(u_input.e, u_input.e), u_input.e), u_input.d.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(1068f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(1281f + 461f), -234f))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_4(24009u, select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, var_0.a), vec2<bool>(true, var_0.a)), false)), vec4<bool>(!any(vec3<bool>(var_0.a, false, false)), !(var_0.a || var_0.a), any(vec4<bool>(var_0.a, var_0.a, true, var_0.a)), var_0.a), select(!select(vec4<bool>(var_0.a, var_0.a, var_0.a, true), vec4<bool>(false, var_0.a, var_0.a, var_0.a), vec4<bool>(true, var_0.a, true, true)), !(!vec4<bool>(true, var_0.a, var_0.a, true)), true), var_0.a)).x);
    var var_2 = -1088f;
    var_0 = func_4(_wgslsmith_mult_vec3_u32(u_input.d, vec3<u32>(abs(_wgslsmith_sub_u32(u_input.d.x, u_input.d.x)), 46597u, ~1u)), ~(reverseBits(abs(vec4<u32>(4294967295u, 4294967295u, 49727u, u_input.d.x))) ^ abs(vec4<u32>(u_input.d.x, 0u, u_input.d.x, u_input.d.x))), u_input.d.x, vec2<f32>(578f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1479f, -1243f))))));
    var_0 = Struct_1(all(!select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, var_0.a), vec3<bool>(false, var_0.a, false)), select(vec3<bool>(var_0.a, true, var_0.a), vec3<bool>(var_0.a, var_0.a, false), false), !var_0.a)));
    return 24575u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(func_1(), 26u)];
    var_0 = Struct_4(abs(~u_input.e), vec2<bool>(var_0.b.x, _wgslsmith_f_op_f32(round(-285f)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1990f * -313f) + _wgslsmith_f_op_f32(-451f * -804f))));
    var var_1 = Struct_2(func_4(~u_input.d, ~vec4<u32>(u_input.e, firstTrailingBit(var_0.a), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, 0u), u_input.d.yy), ~17283u), ~u_input.e, vec2<f32>(-2224f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1251f))))), Struct_1(true), Struct_1(!var_0.b.x));
    var var_2 = Struct_3(0i, var_1.b, Struct_2(func_4(~u_input.d, select(vec4<u32>(13902u, u_input.d.x, u_input.e, var_0.a) & vec4<u32>(4294967295u, var_0.a, 1u, u_input.e), ~vec4<u32>(4294967295u, u_input.e, var_0.a, var_0.a), select(vec4<bool>(var_0.b.x, var_0.b.x, var_1.a.a, var_0.b.x), vec4<bool>(false, true, false, true), vec4<bool>(true, var_0.b.x, true, false))), _wgslsmith_dot_vec2_u32(~u_input.d.zy, firstTrailingBit(vec2<u32>(1u, 19258u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 353f))), var_1.b, func_4(_wgslsmith_mult_vec3_u32(u_input.d, ~u_input.d), ~vec4<u32>(var_0.a, 8752u, u_input.e, 0u), 0u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-430f, 437f) + vec2<f32>(1569f, -217f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2215f, 200f))))), all(!vec4<bool>(false, any(var_0.b), var_0.b.x, any(vec4<bool>(var_0.b.x, var_1.a.a, true, false)))), func_4(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(u_input.d, vec3<u32>(32237u, u_input.e, u_input.d.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.a, 0u, u_input.d.x), vec3<u32>(u_input.d.x, var_0.a, var_0.a))), ~vec4<u32>(~var_0.a, u_input.d.x << (var_0.a % 32u), ~u_input.d.x, u_input.e >> (var_0.a % 32u)), ~(~4294967295u), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(1355f, 2183f), vec2<f32>(-1632f, 630f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-172f, 412f)))))));
    let var_3 = vec4<i32>(_wgslsmith_div_i32(~(-1i), ~var_2.a), 7226i, -1i, var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-914f, 994f)))), ~countOneBits(abs(2147483647i) >> (0u % 32u)), reverseBits(abs(~vec2<u32>(u_input.d.x, 38388u)) | vec2<u32>(u_input.d.x << (80820u % 32u), 116053u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1452f)))));
}

