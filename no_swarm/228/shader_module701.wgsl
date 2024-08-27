struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec3<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<vec2<u32>, 31>;

var<private> global2: i32 = 10103i;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> i32 {
    return abs(-(~u_input.a.x ^ ~u_input.a.x) << (76492u % 32u));
}

fn func_2(arg_0: f32) -> Struct_1 {
    global2 = 1i;
    var var_0 = ~1u;
    var var_1 = Struct_1(~abs(select(vec3<i32>(u_input.a.x, u_input.a.x, 0i), vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), vec3<bool>(global0.x, true, false))) ^ -vec3<i32>(-1520i, 0i, func_3()), select(global0.xzy, select(!global0.wwx, select(vec3<bool>(global0.x, global0.x, global0.x), !vec3<bool>(global0.x, global0.x, true), vec3<bool>(true, global0.x, global0.x)), true), true), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0, _wgslsmith_f_op_f32(abs(arg_0)), 1000f), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) + vec3<f32>(-113f, arg_0, -1613f)))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-193f, 819f) * _wgslsmith_div_vec2_f32(vec2<f32>(-1804f, -938f), vec2<f32>(433f, arg_0)))))));
    var_1 = Struct_1(vec3<i32>(~(-firstLeadingBit(2147483647i)), u_input.a.x, -17105i), !select(!var_1.b, !(!var_1.b), var_1.c.x < _wgslsmith_f_op_f32(arg_0 - 967f)), _wgslsmith_f_op_vec3_f32(-var_1.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.d, vec2<f32>(-509f, _wgslsmith_div_f32(arg_0, var_1.c.x))) - vec2<f32>(134f, -1129f)));
    global1 = array<vec2<u32>, 31>();
    return Struct_1(vec3<i32>(2147483647i, 5797i, ~var_1.a.x), !vec3<bool>(global0.x, true, true), _wgslsmith_f_op_vec3_f32(-var_1.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(1281f)), arg_0)));
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> i32 {
    global1 = array<vec2<u32>, 31>();
    let var_0 = arg_1.c < u_input.b.x;
    global2 = firstTrailingBit(u_input.a.x);
    var var_1 = ~(-vec4<i32>(arg_1.b, ~6122i, _wgslsmith_sub_i32(-arg_1.b, ~u_input.a.x), _wgslsmith_clamp_i32(11079i, 2147483647i, firstTrailingBit(-47678i))));
    var var_2 = u_input.a;
    return ~(-1i);
}

fn func_1() -> i32 {
    global2 = func_4(!all(global0.yz), Struct_3(func_2(_wgslsmith_f_op_f32(2588f - _wgslsmith_f_op_f32(f32(-1f) * -332f))), firstTrailingBit(~_wgslsmith_add_i32(u_input.a.x, -42551i)), _wgslsmith_clamp_u32(~u_input.b.x, abs(1u), _wgslsmith_dot_vec3_u32(~vec3<u32>(49517u, 8422u, u_input.b.x), u_input.b))));
    global1 = array<vec2<u32>, 31>();
    let var_0 = select(~countOneBits(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 1u))), ~(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 69583u) << (u_input.b.yy % vec2<u32>(32u)), vec2<u32>(u_input.b.x, 29599u)) ^ ~(vec2<u32>(u_input.b.x, 4294967295u) >> (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)))), select(global0.wz, func_2(-1077f).b.yy, vec2<bool>(true, global0.x)));
    global1 = array<vec2<u32>, 31>();
    let var_1 = Struct_1(vec3<i32>(_wgslsmith_add_i32(~(-u_input.a.x), u_input.a.x), (select(-1i, 1i, global0.x) >> ((36428u << (var_0.x % 32u)) % 32u)) >> ((1u & u_input.b.x) % 32u), -40807i), !vec3<bool>(all(global0.yzz) != false, global0.x, global0.x), vec3<f32>(183f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1912f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(222f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1232f * _wgslsmith_f_op_f32(round(1000f)))))), vec2<f32>(1f, 1f));
    return -21113i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(332f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -967f), _wgslsmith_f_op_f32(502f * 716f), false))))));
    var var_1 = vec4<i32>(func_1(), select(firstTrailingBit(28219i), _wgslsmith_mult_i32(~(-19121i), func_2(_wgslsmith_f_op_f32(-158f + -315f)).a.x), func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1200f * 513f)))).b.x), u_input.a.x | _wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_div_i32(-2147483647i ^ u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x)), ~func_3()), _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), -13460i), abs(-7980i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-762f, 728f), vec2<f32>(-1605f, 719f), global0.zw)))))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-329f - -930f), _wgslsmith_f_op_f32(f32(-1f) * -394f)))), global0.x)), var_1.wyy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 180f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1946f, -761f, global0.x))))), ~vec2<u32>(u_input.b.x | firstTrailingBit(u_input.b.x), 1228u), ~4294967295u);
}

