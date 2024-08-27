struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: u32,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: f32,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: f32 = 1000f;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: u32) -> vec4<f32> {
    var var_0 = ~u_input.d.wzz;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1231f, arg_0, arg_0) - vec3<f32>(global0.x, 728f, 648f))))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1332f, 557f, false)), global0.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-603f, global0.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0)))))));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)));
    var var_2 = 0i;
    global0 = vec3<f32>(-1171f, 1196f, -364f);
    return vec4<f32>(_wgslsmith_f_op_f32(-1198f + var_1.a), 1f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-arg_0));
}

fn func_2(arg_0: vec2<i32>) -> vec4<f32> {
    let var_0 = Struct_2(select(vec4<bool>(36446u <= _wgslsmith_div_u32(u_input.a.x, 0u), any(vec2<bool>(true, true)), u_input.d.x < u_input.d.x, true), vec4<bool>(true, true, any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true)))), true), countOneBits(-2147483647i), max(firstLeadingBit(15374u), u_input.a.x), vec3<bool>(true, !all(vec3<bool>(false, false, false)), all(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), false), vec4<bool>(true, false, true, false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false))))), Struct_1(2147483647i, -245f));
    let var_1 = var_0.e;
    return _wgslsmith_f_op_vec4_f32(func_3(-174f, reverseBits(39232u)));
}

fn func_1() -> bool {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-389f, global0.x, -476f)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.x, global0.x, global0.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, -836f) + vec3<f32>(-1254f, 1233f, global0.x)))))));
    global1 = -459f;
    let var_0 = -vec3<i32>(u_input.c, -52027i, ~(u_input.c | (u_input.d.x & u_input.c)));
    let var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, -_wgslsmith_add_i32(_wgslsmith_add_i32(60308i, -7356i), ~(-21692i)), u_input.d.x), ~(vec3<i32>(-1i, -59945i, min(0i, u_input.c)) << (max(vec3<u32>(4294967295u, u_input.a.x, 43973u), u_input.a) % vec3<u32>(32u))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_sub_vec2_i32(vec2<i32>(-14962i, u_input.d.x), var_1.zz))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-2044f, 606f, global0.x, 1556f))))))) * vec4<f32>(_wgslsmith_div_f32(-915f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -172f) - _wgslsmith_f_op_f32(-402f - 834f))), 460f, _wgslsmith_f_op_f32(ceil(global0.x)), global0.x));
    return select(!(_wgslsmith_clamp_u32(u_input.b.x >> (26016u % 32u), u_input.a.x, 1u) == countOneBits(u_input.a.x)), all(vec2<bool>(true, false)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<i32>(-2147483647i, -u_input.d.x, -_wgslsmith_add_i32(1i, u_input.d.x));
    let var_1 = u_input.b.x;
    var var_2 = !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_1());
    var var_3 = 0u;
    let var_4 = Struct_1(u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-423f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.x)) + _wgslsmith_f_op_f32(-global0.x)))));
    let var_5 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a >> (~var_5 % 32u), u_input.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.yz)));
}

