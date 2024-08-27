struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: f32,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec3<f32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: vec3<f32>) -> vec2<bool> {
    var var_0 = !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, any(vec2<bool>(false, true))), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true)), vec3<bool>(any(vec2<bool>(true, true)), true, true), true);
    var var_1 = 416f;
    var var_2 = select(true, select(false, ~abs(arg_1) <= _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 77147u, 0u), vec3<u32>(4294967295u, 1u, 4294967295u)), !(!all(vec4<bool>(var_0.x, false, true, var_0.x)))), all(select(!vec3<bool>(var_0.x, false, false), select(select(vec3<bool>(true, true, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(var_0.x, false, false)), var_0.x), true && var_0.x)));
    let var_3 = _wgslsmith_mult_i32(u_input.b, u_input.b >> (~(arg_1 << (20447u % 32u)) % 32u)) <= ~u_input.b;
    var var_4 = Struct_2(arg_0.x);
    return vec2<bool>(true || all(!var_0.yx), var_0.x);
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>) -> vec3<bool> {
    let var_0 = select(select(select(vec2<bool>(true, true), vec2<bool>(u_input.c != arg_1.x, false), !select(vec2<bool>(true, true), vec2<bool>(false, false), false)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), func_3(vec4<f32>(arg_0.a, arg_0.a, arg_0.a, -1756f), u_input.d.x, vec3<f32>(1306f, arg_0.a, arg_0.a)), select(vec2<bool>(false, true), vec2<bool>(true, false), false)), true), true), func_3(vec4<f32>(_wgslsmith_f_op_f32(1126f + _wgslsmith_f_op_f32(step(arg_0.a, arg_0.a))), _wgslsmith_f_op_f32(-arg_0.a), arg_0.a, arg_0.a), 30664u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(arg_0.a, arg_0.a)), _wgslsmith_f_op_f32(round(arg_0.a)), arg_0.a))), !(-u_input.b >= -2147483647i) & true);
    var var_1 = arg_0;
    return !(!select(select(vec3<bool>(var_0.x, true, true), select(vec3<bool>(false, true, true), vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, var_0.x, var_0.x)), !var_0.x), vec3<bool>(u_input.c != arg_1.x, false, false), !vec3<bool>(var_0.x, false, var_0.x)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec4<bool>) -> vec3<i32> {
    let var_0 = func_2(Struct_2(1f), reverseBits(arg_1.b));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.e.x, 680f, false))), _wgslsmith_f_op_f32(-1600f + _wgslsmith_f_op_f32(1748f + arg_1.e.x))))), arg_0.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.c, 1000f) * -155f)))), arg_0.c);
    let var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(918f, _wgslsmith_f_op_f32(-arg_0.c)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_0.e.yy)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1214f, 164f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, arg_0.e.x))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.e.wx) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(121f, -390f))))))));
    var var_3 = arg_1.e.x;
    let var_4 = Struct_1(arg_0.a, select(firstTrailingBit(~vec3<u32>(1u, u_input.d.x, 36338u)), arg_1.b, select(var_0.x, true, 48506u > arg_1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.c)) * _wgslsmith_f_op_f32(-942f * -480f)), true != (arg_0.b.x != 42679u), _wgslsmith_f_op_vec4_f32(arg_0.e * _wgslsmith_f_op_vec4_f32(arg_0.e - _wgslsmith_f_op_vec4_f32(vec4<f32>(-3053f, var_2.x, arg_1.c, -857f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, arg_0.e.x, -425f, 883f), arg_1.e, vec4<bool>(arg_0.d, false, arg_3.x, arg_3.x)))))));
    return _wgslsmith_add_vec3_i32(~vec3<i32>(-(4248i ^ u_input.a.x), max(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -38246i, u_input.a.x, u_input.b), vec4<i32>(17307i, u_input.b, u_input.e.x, -2147483647i)), u_input.b), u_input.e.x), -u_input.a);
}

fn func_4(arg_0: vec3<i32>) -> StorageBuffer {
    let var_0 = u_input.c;
    let var_1 = !(!(!vec4<bool>(true, select(true, true, true), any(vec3<bool>(true, true, false)), all(vec4<bool>(true, true, false, true)))));
    var var_2 = Struct_4(1u, Struct_1(!select(var_1, select(var_1, var_1, vec4<bool>(true, var_1.x, false, var_1.x)), arg_0.x <= u_input.e.x), ~vec3<u32>(4294967295u & u_input.c, max(u_input.c, u_input.c), u_input.c), 1000f, any(var_1.yzz), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(364f, -1000f, -538f, 157f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1800f, -172f, 1049f, -2244f), vec4<f32>(-319f, -171f, -2106f, 774f), vec4<bool>(false, false, var_1.x, var_1.x))))))), select(var_1, var_1, var_1.x));
    var var_3 = ~(vec3<u32>(min(_wgslsmith_div_u32(1u, var_2.a), _wgslsmith_sub_u32(u_input.c, u_input.d.x)), ~firstLeadingBit(var_0), _wgslsmith_dot_vec4_u32(max(vec4<u32>(var_0, var_0, 988u, u_input.c), vec4<u32>(var_0, u_input.d.x, 47033u, var_0)), vec4<u32>(4294967295u, var_0, 0u, 0u) ^ vec4<u32>(u_input.c, var_2.a, u_input.c, 4294967295u))) ^ (abs(~vec3<u32>(var_0, 1u, 1u)) | ~(~vec3<u32>(58660u, var_0, var_0))));
    let var_4 = Struct_5(~(~vec3<u32>(_wgslsmith_div_u32(var_0, u_input.d.x), var_2.a, 69551u)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-232f))))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, -1000f, var_2.b.e.x), var_2.b.e.yww)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_2.b.e.wx, _wgslsmith_f_op_vec2_f32(min(var_2.b.e.zx, var_2.b.e.wz)))) + vec2<f32>(104f, -371f))));
    return StorageBuffer(vec2<u32>(~max(countOneBits(61372u), ~77065u), var_4.a.x << (_wgslsmith_clamp_u32(abs(0u), ~85446u, 0u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    var var_1 = _wgslsmith_add_u32(u_input.c, 14082u);
    var var_2 = -2068f;
    var var_3 = false;
    var var_4 = u_input.d.x > 0u;
    var_4 = true;
    var var_5 = true;
    let x = u_input.a;
    s_output = func_4(-firstLeadingBit(firstLeadingBit(u_input.a) | func_1(Struct_1(vec4<bool>(false, true, true, true), vec3<u32>(4294967295u, u_input.c, 4294967295u), -760f, false, vec4<f32>(-2076f, -219f, -1337f, 1763f)), Struct_1(vec4<bool>(true, false, false, false), vec3<u32>(u_input.c, 33878u, 4294967295u), -1173f, true, vec4<f32>(170f, -460f, -1373f, -1327f)), vec2<bool>(false, false), vec4<bool>(false, true, true, true))));
}

