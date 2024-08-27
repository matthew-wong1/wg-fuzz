struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: vec3<i32>,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> f32 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.a.x, arg_1, arg_2.a.a.x) * arg_2.a.a)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_2.a.a.x, arg_1, -482f), arg_2.a.a))))), arg_2.a.a);
    let var_1 = Struct_3(Struct_2(Struct_1(arg_2.a.a, ~_wgslsmith_sub_vec2_i32(arg_2.a.b, u_input.b.ww), !vec2<bool>(arg_2.a.c.x, false)), _wgslsmith_mod_vec2_u32(~(u_input.a.yx | vec2<u32>(1u, u_input.a.x)), vec2<u32>(abs(0u), _wgslsmith_mult_u32(arg_2.b.x, arg_2.c))), ~(~_wgslsmith_dot_vec4_u32(u_input.a, u_input.a))), ~vec3<i32>(arg_2.a.b.x, _wgslsmith_div_i32(firstLeadingBit(-1i), arg_0), ~1i), u_input.b, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-arg_2.a.a)))), u_input.b.yw, !arg_2.a.c));
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.d.a.x - var_1.a.a.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-243f, -1329f)), _wgslsmith_f_op_f32(var_0.x + arg_1)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_1.d.a, arg_2.a.a)) * _wgslsmith_f_op_vec3_f32(abs(var_1.d.a)))), _wgslsmith_f_op_vec3_f32(-var_1.d.a)));
    var var_2 = vec3<u32>(abs(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.a.zxx, ~u_input.a.ywx))), abs(~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(0u, arg_2.b.x, 72005u, u_input.a.x)), ~vec4<u32>(56403u, 29057u, 4294967295u, 0u))), ~(~var_1.a.b.x));
    var var_3 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.d.a)), _wgslsmith_add_vec2_i32(vec2<i32>(var_1.c.x, arg_0), vec2<i32>(7497i, 1i)) ^ ~vec2<i32>(arg_2.a.b.x, arg_2.a.b.x), vec2<bool>(all(vec3<bool>(true, true, var_1.d.c.x)), var_1.d.c.x)), u_input.a.yz, ~28575u), vec3<i32>(firstTrailingBit(~(i32(-1i) * -10136i)), min(var_1.c.x, -_wgslsmith_mult_i32(u_input.b.x, u_input.b.x)), arg_0), u_input.b & firstLeadingBit(countOneBits(vec4<i32>(u_input.b.x, -1i, 2147483647i, -33141i))), arg_2.a);
    return _wgslsmith_div_f32(-180f, _wgslsmith_f_op_f32(ceil(var_0.x)));
}

fn func_2() -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec3_i32(~(vec3<i32>(43384i, 8013i, -36236i) ^ u_input.b.xzy), vec3<i32>(u_input.b.x, -u_input.b.x, _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, -12404i, 2147483647i, 2147483647i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(715f * -146f)) + -1000f), Struct_2(Struct_1(vec3<f32>(-561f, 1000f, -118f), vec2<i32>(u_input.b.x, u_input.b.x), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))), min(u_input.a.xw, select(u_input.a.wy, vec2<u32>(11219u, 20544u), vec2<bool>(false, false))), ~u_input.a.x))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1248f, _wgslsmith_f_op_f32(f32(-1f) * -272f))), _wgslsmith_f_op_f32(-117f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2678f, 132f) + -390f))));
    var var_1 = reverseBits(u_input.a.xxy);
    let var_2 = var_0.zyw;
    var var_3 = true;
    var var_4 = all(!select(vec4<bool>(true, all(vec2<bool>(true, false)), false, u_input.a.x > 44797u), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), any(vec2<bool>(true, false))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(min(var_0.x, -1252f))))), _wgslsmith_mult_vec2_i32(firstTrailingBit(-(~vec2<i32>(1i, u_input.b.x))), u_input.b.yx), select(select(vec2<bool>(true, true), vec2<bool>(select(true, true, false), true), !all(vec4<bool>(false, false, true, false))), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(max(-376f, var_2.x))) <= var_0.x));
}

fn func_1(arg_0: bool, arg_1: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -139f, 2149f, -1681f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(863f, -1220f, 113f, 1000f))))))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-855f, 126f, 1000f, 1138f)))))));
    var var_1 = func_2();
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1544f, var_1.a.x, 197f, 606f)), vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x))))) * vec4<f32>(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(select(319f, _wgslsmith_f_op_f32(var_1.a.x + var_1.a.x), true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_0.x)))), var_0.x)) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x + var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1556f + var_1.a.x))) + var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1090f), var_0.x));
    var var_2 = var_0.x;
    var_2 = -515f;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1029f + -203f), var_1.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(947f, 861f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-541f)))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1226f, -348f, false)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -175f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-419f, _wgslsmith_f_op_f32(1340f - 1000f)))))));
    var var_1 = Struct_1(vec3<f32>(841f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1251f + _wgslsmith_f_op_f32(func_1(false, false))), -1320f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1000f, -474f), 1555f)))), ~u_input.b.xx, !vec2<bool>(!any(vec3<bool>(true, false, true)), all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(var_1.a + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, -311f, _wgslsmith_f_op_f32(max(var_1.a.x, var_1.a.x))))), -vec2<i32>(firstTrailingBit(-2147483647i), 1i & _wgslsmith_add_i32(var_1.b.x, -1i)), vec2<bool>(any(vec4<bool>(func_2().c.x, false, true, false)), true));
    var_0 = _wgslsmith_f_op_f32(-var_1.a.x);
    var_1 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(0u, u_input.a.x), 1i, -2147483647i);
}

