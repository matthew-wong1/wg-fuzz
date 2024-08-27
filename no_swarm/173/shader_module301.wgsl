struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_2,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 7135u;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: f32, arg_3: Struct_2) -> vec4<u32> {
    global0 = 1u;
    global0 = u_input.c;
    var var_0 = arg_3;
    var var_1 = ~(~(~reverseBits(~vec4<u32>(u_input.b.x, 45140u, u_input.c, 4294967295u))));
    let var_2 = Struct_3(arg_3.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-523f)), _wgslsmith_f_op_f32(-arg_1)))))), Struct_2(arg_3.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-227f)))), -188f, false))), vec3<bool>(true, true, true));
    return _wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(min(84934u, u_input.c), reverseBits(~var_1.x), 1u ^ var_1.x, 1u)), ~vec4<u32>(~43693u, var_1.x, u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), var_1.zw)));
}

fn func_2(arg_0: Struct_4, arg_1: vec4<u32>) -> vec4<u32> {
    let var_0 = Struct_1(13498u, 4294967295u);
    global0 = ~1u;
    var var_1 = arg_0.c.yx;
    var_1 = arg_0.c.zy;
    var var_2 = ~arg_0.a.a;
    return ~func_3(var_1.x, _wgslsmith_f_op_f32(arg_0.c.x + -715f), -1000f, arg_0.a);
}

fn func_1() -> Struct_3 {
    global0 = max(25297u, ~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(47757u, 39017u, 10419u, u_input.b.x)), ~vec4<u32>(u_input.a, u_input.a, 3934u, u_input.b.x))) | abs(u_input.c);
    let var_0 = -3237i;
    global0 = ~_wgslsmith_dot_vec4_u32(func_2(Struct_4(Struct_2(vec3<i32>(var_0, var_0, 21674i), 523f), vec4<bool>(true, true, true, true), vec3<f32>(-368f, 1415f, -484f), vec4<f32>(226f, -142f, 133f, 1777f)), ~vec4<u32>(u_input.a, u_input.a, u_input.b.x, u_input.c)), func_3(_wgslsmith_f_op_f32(587f - -905f), _wgslsmith_div_f32(456f, 2823f), _wgslsmith_f_op_f32(trunc(1922f)), Struct_2(vec3<i32>(var_0, var_0, var_0), -1017f))) | _wgslsmith_dot_vec4_u32(vec4<u32>(~min(u_input.b.x, u_input.a), 0u, ~u_input.b.x, ~u_input.c), ~max(~vec4<u32>(u_input.b.x, u_input.a, 46897u, u_input.b.x), select(vec4<u32>(u_input.a, 1u, u_input.a, 0u), vec4<u32>(40917u, u_input.b.x, 0u, u_input.c), true)));
    let var_1 = u_input.b.yx;
    global0 = select(39308u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(var_1, vec2<u32>(6630u, 4294967295u)), ~u_input.b.yx), u_input.b.zz), true) << (u_input.a % 32u);
    return Struct_3(_wgslsmith_mod_i32(var_0, var_0), _wgslsmith_f_op_f32(1637f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1569f)) + -1068f) - _wgslsmith_f_op_f32(round(1f)))), Struct_2(min(vec3<i32>(var_0, var_0 | var_0, abs(var_0)), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0, 18696i, var_0), vec3<i32>(var_0, -2147483647i, var_0)), max(vec3<i32>(29653i, var_0, var_0), vec3<i32>(var_0, var_0, var_0)))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1186f - -139f), _wgslsmith_f_op_f32(step(-1040f, -576f)))))), vec3<bool>(any(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), false, true));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4) -> Struct_1 {
    var var_0 = vec4<bool>(any(!arg_0.d), arg_0.d.x, true, false);
    var var_1 = func_1().d.x;
    let var_2 = vec2<i32>(-1i ^ arg_0.a, arg_0.c.a.x);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.d.x, _wgslsmith_f_op_f32(arg_0.c.b + _wgslsmith_f_op_f32(abs(arg_1.d.x))))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.a.b, 1000f, var_0.x)))))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-979f)), -270f)));
    var var_4 = func_1().a;
    return Struct_1(_wgslsmith_add_u32(u_input.b.x, ~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(9998u, u_input.b.x, u_input.c, u_input.a), vec4<u32>(u_input.a, 1u, u_input.b.x, 4294967295u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 104756u, 104062u, 0u), vec4<u32>(3998u, u_input.c, u_input.c, 0u)))), u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), Struct_4(Struct_2(vec3<i32>(-2147483647i, 1i, _wgslsmith_sub_i32(0i, -2147483647i)), 2063f), vec4<bool>(true, true, false, false), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(197f, -921f, -489f)))), vec3<f32>(_wgslsmith_f_op_f32(-398f * -264f), -1939f, _wgslsmith_f_op_f32(sign(-1569f))))), vec4<f32>(1f, 1f, 1f, 1f)));
    var var_1 = Struct_4(func_1().c, vec4<bool>(true, any(select(func_1().d.zz, vec2<bool>(true, true), true)), true, all(vec2<bool>(true, true))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1116f, 109f, -193f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(389f, -614f, 1100f))))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, 1470f, 1183f, 584f))) * vec4<f32>(_wgslsmith_f_op_f32(abs(-1063f)), _wgslsmith_f_op_f32(round(-1126f)), _wgslsmith_f_op_f32(floor(-880f)), _wgslsmith_f_op_f32(f32(-1f) * -1412f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-1161f)), _wgslsmith_div_f32(-971f, 838f), _wgslsmith_f_op_f32(1243f + -1147f), _wgslsmith_f_op_f32(min(146f, 494f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-974f, 939f, 2111f, 170f)))))));
    global0 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(-606f, _wgslsmith_f_op_vec3_f32(vec3<f32>(820f, _wgslsmith_f_op_f32(-var_1.d.x), 608f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_1.d.xxw)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, 510f, var_1.a.b))))), var_0.a);
}

