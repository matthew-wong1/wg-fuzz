struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1813f, 252f, 561f, 2051f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * global0.x) - _wgslsmith_f_op_f32(arg_0 * arg_0)), _wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x))), _wgslsmith_f_op_f32(-global0.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 272f, 881f, 273f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, arg_0))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, global0.x, -424f, -1599f))))));
    var var_1 = Struct_1(abs(select(u_input.c, ~(-u_input.c), select(vec2<bool>(true, true), vec2<bool>(true, false), true))));
    var_1 = Struct_1(reverseBits(u_input.c));
    var var_2 = Struct_1(abs(_wgslsmith_div_vec2_i32(u_input.c, u_input.c >> (min(arg_1.yw, vec2<u32>(61877u, arg_1.x)) % vec2<u32>(32u)))));
    global0 = _wgslsmith_f_op_vec4_f32(max(var_0, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(1000f * -236f), 1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0 - arg_0))), _wgslsmith_f_op_f32(trunc(237f)))))));
    return max(firstLeadingBit(firstLeadingBit(vec2<i32>(-10244i, var_2.a.x)) >> (~u_input.a % vec2<u32>(32u))), vec2<i32>(~(~16163i), 1i));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(u_input.c.x, Struct_1(_wgslsmith_clamp_vec2_i32((vec2<i32>(30328i, u_input.c.x) & vec2<i32>(41937i, u_input.c.x)) | func_3(500f, vec4<u32>(24474u, 39663u, 11742u, u_input.a.x)), u_input.c, _wgslsmith_add_vec2_i32(select(u_input.c, u_input.c, vec2<bool>(false, true)), ~vec2<i32>(1i, u_input.c.x)))), vec4<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, 1i, u_input.c.x), -vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, u_input.c.x)) < _wgslsmith_div_i32(u_input.c.x, -13768i), true, select(false, true, true) && true, ~(u_input.a.x ^ u_input.b) > _wgslsmith_div_u32(~u_input.a.x, u_input.b)), Struct_1(~_wgslsmith_div_vec2_i32(vec2<i32>(-1i, u_input.c.x), vec2<i32>(u_input.c.x, u_input.c.x)) | u_input.c));
    var var_1 = Struct_2(0i, Struct_1(select(func_3(-782f, _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.b, u_input.b), vec4<u32>(u_input.a.x, 18227u, u_input.b, u_input.b))), vec2<i32>(-1i, max(u_input.c.x, 2031i)), var_0.c.x)), var_0.c, var_0.d);
    var var_2 = Struct_1(reverseBits(vec2<i32>(_wgslsmith_mod_i32(2147483647i ^ u_input.c.x, 1i), _wgslsmith_sub_i32(_wgslsmith_sub_i32(12351i, var_0.d.a.x), var_0.d.a.x ^ var_0.d.a.x))));
    var var_3 = var_0;
    let var_4 = var_0;
    return var_0.b;
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_2(1i, arg_0, vec4<bool>(false, (abs(2147483647i) < arg_0.a.x) & true, true, !(~u_input.c.x < (-19931i ^ arg_0.a.x))), func_2());
    var var_1 = func_2();
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-449f, global0.x, 1184f, 107f), vec4<f32>(global0.x, -432f, arg_1, global0.x)))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, arg_1, arg_1, -525f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(424f, 879f, arg_1, 1361f), vec4<f32>(global0.x, arg_1, 1169f, -633f)))))))));
    var var_2 = func_2();
    var_1 = Struct_1(var_0.b.a);
    return var_0.d;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: i32) -> Struct_1 {
    let var_0 = global0.zwx;
    let var_1 = func_4(func_2(), _wgslsmith_f_op_f32(-910f * _wgslsmith_f_op_f32(-global0.x)));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global0.x)))) - global0.x), -805f, -597f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(ceil(-2028f)))), 811f));
    var var_2 = Struct_2(-(~(-1i)), func_4(func_4(func_4(Struct_1(u_input.c), -225f), 367f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.x + -279f)))), arg_2, Struct_1(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(arg_0.a.x, arg_3), vec2<i32>(-1i, var_1.a.x)), ~func_4(arg_0, -1893f).a, vec2<i32>(-15493i, 10798i) << (u_input.a % vec2<u32>(32u)))));
    var var_3 = max(~vec2<u32>(~u_input.a.x, _wgslsmith_div_u32(4294967295u, u_input.a.x)) >> (u_input.a % vec2<u32>(32u)), firstLeadingBit(vec2<u32>(u_input.b ^ u_input.b, _wgslsmith_div_u32(23806u, 13072u))) ^ ~(~(~u_input.a)));
    return Struct_1(abs(vec2<i32>(-1i) * -vec2<i32>(arg_0.a.x, -2147483647i)));
}

fn func_5(arg_0: Struct_1) -> f32 {
    global0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.x * global0.x), global0.x))), _wgslsmith_f_op_f32(trunc(1642f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(326f - global0.x) * -368f)), global0.x), vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(439f, _wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(max(460f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) * _wgslsmith_div_f32(global0.x, -1501f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1202f, global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -266f))) * -692f)));
    var var_0 = Struct_2(arg_0.a.x, arg_0, select(!vec4<bool>(u_input.a.x == 40748u, false, any(vec4<bool>(true, false, true, true)), any(vec4<bool>(false, false, true, false))), select(vec4<bool>(true, true, all(vec3<bool>(true, true, false)), true), vec4<bool>(true, u_input.b != 37404u, all(vec3<bool>(false, true, true)), global0.x > -1054f), true), true), arg_0);
    var_0 = Struct_2(_wgslsmith_dot_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, u_input.c.x, u_input.c.x), vec3<i32>(u_input.c.x, 22732i, -36613i), vec3<i32>(var_0.b.a.x, 2147483647i, arg_0.a.x)), reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, 2147483647i, arg_0.a.x), vec3<i32>(1i, -12314i, arg_0.a.x)))) << (1u % 32u), var_0.b, vec4<bool>(!(select(var_0.c.x, var_0.c.x, false) && all(vec2<bool>(var_0.c.x, false))), any(vec2<bool>(true, true && var_0.c.x)), !((true && var_0.c.x) & false), !(!(false || var_0.c.x))), var_0.b);
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.x, global0.x, -1731f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1694f, global0.x, global0.x))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(376f, global0.x, global0.x, -350f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, global0.x, -155f, 276f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, 1694f))))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1368f, global0.x, 130f, global0.x) + vec4<f32>(-807f, 708f, -1832f, -1426f))))), -_wgslsmith_mult_i32(~var_0.d.a.x, _wgslsmith_add_i32(arg_0.a.x, -2147483647i)) == -(~(-arg_0.a.x))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(global0.x - 1950f))))), _wgslsmith_f_op_f32(620f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.x)))))));
    return _wgslsmith_div_f32(2337f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0.x, global0.x))) * _wgslsmith_f_op_f32(step(1607f, global0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -878f) * global0.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.x * -192f), 711f)), global0.x, _wgslsmith_f_op_f32(-global0.x)), vec4<f32>(1f, _wgslsmith_f_op_f32(2088f + 1039f), _wgslsmith_f_op_f32(func_5(func_1(Struct_1(u_input.c), Struct_1(u_input.c), vec4<bool>(true, false, true, false), 10167i))), -1949f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, _wgslsmith_f_op_f32(step(-431f, global0.x)), -2208f, global0.x)))))));
    var var_0 = vec2<u32>(~_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), abs(u_input.a)), 21177u);
    let var_1 = 38133i;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.x, global0.x)) * -2009f))));
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2.x, var_2.x, -1248f))))), vec4<i32>(-1i, var_1 << (~9548u % 32u), _wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, u_input.c.x, -2147483647i, u_input.c.x), -vec4<i32>(u_input.c.x, var_1, 54623i, u_input.c.x)), var_1) >> (vec4<u32>(~(~6070u), var_0.x, _wgslsmith_add_u32(_wgslsmith_sub_u32(114124u, var_0.x), var_0.x), 34422u) % vec4<u32>(32u)));
}

