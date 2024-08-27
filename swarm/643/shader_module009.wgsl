struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: Struct_1,
    d: vec2<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 15> = array<vec4<u32>, 15>(vec4<u32>(0u, 11756u, 15596u, 0u), vec4<u32>(10734u, 4294967295u, 8218u, 1u), vec4<u32>(1u, 4294967295u, 0u, 1u), vec4<u32>(0u, 4294967295u, 1u, 4294967295u), vec4<u32>(0u, 1189u, 4294967295u, 10748u), vec4<u32>(0u, 0u, 4294967295u, 26894u), vec4<u32>(11149u, 1u, 54939u, 27743u), vec4<u32>(4294967295u, 39545u, 38315u, 19917u), vec4<u32>(34393u, 5158u, 0u, 46496u), vec4<u32>(4294967295u, 8485u, 4294967295u, 0u), vec4<u32>(1u, 19122u, 1u, 4294967295u), vec4<u32>(36516u, 3489u, 0u, 927u), vec4<u32>(4294967295u, 48263u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 19659u, 4294967295u, 0u), vec4<u32>(0u, 41128u, 1u, 4294967295u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = Struct_3(vec4<f32>(arg_0.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.c.x)) - arg_0.c.x), _wgslsmith_div_f32(-994f, _wgslsmith_div_f32(996f, -1000f)))), arg_0.c.x, _wgslsmith_f_op_f32(select(-195f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1214f) * arg_0.c.x), arg_0.b.x))), true, Struct_1(~vec3<u32>(2569u, u_input.b, 64317u), vec2<bool>(any(!vec3<bool>(arg_0.b.x, false, arg_0.b.x)), !(!arg_0.b.x)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-arg_0.c)))), arg_0.a.yy, !(firstLeadingBit(u_input.b) > 29093u));
    var var_1 = 1i == -_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(max(u_input.a.yw, u_input.a.yy), vec2<i32>(u_input.a.x, u_input.a.x)), ~(-2147483647i));
    var var_2 = Struct_2(arg_0, ~(_wgslsmith_mod_i32(1i, _wgslsmith_mod_i32(1i, 2147483647i)) ^ ~_wgslsmith_add_i32(-9254i, u_input.a.x)), u_input.a.xxw);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_0.c.c)));
    var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1263f, var_0.a.x));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.x, -1459f)))) + _wgslsmith_f_op_vec2_f32(min(var_0.a.xw, _wgslsmith_div_vec2_f32(vec2<f32>(var_3.x, -675f), arg_0.c))))) + _wgslsmith_f_op_vec2_f32(-arg_0.c));
}

fn func_2(arg_0: Struct_3, arg_1: u32) -> bool {
    let var_0 = Struct_1(vec3<u32>(arg_1, _wgslsmith_sub_u32(arg_1, ~0u), ~arg_1), vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_3(arg_0.c)), arg_0.a.wz, any(vec2<bool>(true, arg_0.b)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.c.c.x, 268f), arg_0.c.c)), _wgslsmith_f_op_vec2_f32(-arg_0.a.xy), select(arg_0.c.b, vec2<bool>(arg_0.b, arg_0.e), false))))));
    let var_1 = Struct_1(_wgslsmith_mult_vec3_u32(~arg_0.c.a, var_0.a & vec3<u32>(~13055u, ~17874u, abs(1u))), var_0.b, _wgslsmith_f_op_vec2_f32(round(arg_0.a.zz)));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1272f - var_1.c.x))) - -1505f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.x, var_0.c.x) - 839f)))));
    global0 = array<vec4<u32>, 15>();
    global0 = array<vec4<u32>, 15>();
    return false;
}

fn func_1(arg_0: f32, arg_1: f32) -> vec2<f32> {
    let var_0 = !(!vec2<bool>(!func_2(Struct_3(vec4<f32>(-1000f, arg_1, arg_0, arg_0), true, Struct_1(vec3<u32>(u_input.b, 13261u, u_input.b), vec2<bool>(false, false), vec2<f32>(arg_1, 195f)), vec2<u32>(u_input.b, 4294967295u), false), u_input.b), true));
    let var_1 = u_input.a.xww;
    var var_2 = Struct_1(~countOneBits(~_wgslsmith_mod_vec3_u32(vec3<u32>(12066u, u_input.b, u_input.b), vec3<u32>(35109u, 4294967295u, u_input.b))), select(select(select(!vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(false, true), vec2<bool>(true, false), var_0), var_0), !vec2<bool>(false, var_0.x), vec2<bool>(true, true)), var_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, arg_0)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(580f + arg_1) - _wgslsmith_f_op_f32(arg_1 + arg_0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1664f, 517f) * vec2<f32>(-1381f, arg_1))))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -816f))))));
    let var_3 = Struct_2(Struct_1(~max(vec3<u32>(u_input.b, 0u, var_2.a.x), ~var_2.a), var_0, var_2.c), _wgslsmith_sub_i32(var_1.x, 0i), vec3<i32>(1i, 1i << (reverseBits(~var_2.a.x) % 32u), var_1.x & ~var_1.x));
    var_2 = var_3.a;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_0) * _wgslsmith_div_vec2_f32(var_2.c, var_3.a.c)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 15>();
    global0 = array<vec4<u32>, 15>();
    var var_0 = Struct_2(Struct_1(vec3<u32>(~4294967295u, ~1u, ~_wgslsmith_div_u32(u_input.b, 26508u)), !select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, false), select(false, true, false)), _wgslsmith_f_op_vec2_f32(func_1(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-446f * 964f))))), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(min(vec2<i32>(u_input.a.x, -2147483647i), u_input.a.ww), firstLeadingBit(u_input.a.zz), vec2<i32>(u_input.a.x, 21975i)), u_input.a.zy) & -1i, u_input.a.zww);
    let var_1 = abs(~vec2<i32>(-_wgslsmith_div_i32(-2147483647i, u_input.a.x), -31166i));
    var var_2 = 19537i;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-631f)), -1503f, -162f)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.c.x, var_0.a.c.x, -1000f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(117f, var_0.a.c.x, 865f)))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1169f * 1f)), 598f, var_0.a.c.x));
    let var_4 = min(_wgslsmith_clamp_i32(~22773i, firstLeadingBit(u_input.a.x), var_0.b), var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(-var_0.b, abs(-u_input.a.x)), vec2<u32>(var_0.a.a.x, 4294967295u), var_0.a.a.zy << (_wgslsmith_div_vec2_u32(~(~var_0.a.a.yx), select(_wgslsmith_mod_vec2_u32(var_0.a.a.zz, vec2<u32>(60985u, 0u)), ~vec2<u32>(u_input.b, 0u), var_0.a.b)) % vec2<u32>(32u)), (_wgslsmith_sub_u32(u_input.b, 1u) & 1u) ^ _wgslsmith_add_u32(~u_input.b, _wgslsmith_sub_u32(~u_input.b, ~var_0.a.a.x)));
}

