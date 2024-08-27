struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> bool {
    let var_0 = u_input.b.zx;
    let var_1 = arg_1.d.wz;
    return false;
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1228f + -416f), -291f, _wgslsmith_f_op_f32(-1150f + -658f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1283f, -627f, 1000f))))));
    var var_1 = Struct_1(vec2<i32>(u_input.a, firstTrailingBit(i32(-1i) * -11729i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_div_f32(349f, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1671f))), _wgslsmith_f_op_f32(-var_0.x), 2058f) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(477f, _wgslsmith_div_f32(826f, var_0.x), _wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -138f))))), vec3<u32>(1u, countOneBits(0u), 85596u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 341f, var_0.x, 693f), vec4<f32>(-571f, var_0.x, var_0.x, -196f)), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))));
    var_1 = Struct_1(_wgslsmith_mult_vec2_i32(~reverseBits(u_input.b.zz), countOneBits(-u_input.b.wz)) ^ var_1.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(438f * -506f) + _wgslsmith_f_op_f32(714f + var_1.b.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1287f - var_0.x))), _wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_f_op_f32(722f + _wgslsmith_f_op_f32(-771f - var_1.b.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, -477f, -562f, var_1.b.x) * vec4<f32>(2436f, var_1.d.x, -1154f, 995f)))), var_1.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.d) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.d * var_1.b), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1000f, var_1.b.x, -1131f, var_0.x)))) - vec4<f32>(var_1.b.x, -181f, _wgslsmith_f_op_f32(-1757f - var_0.x), _wgslsmith_f_op_f32(floor(var_1.b.x))))));
    var_0 = _wgslsmith_f_op_vec3_f32(max(var_1.d.xxy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(var_1.b.ywx, var_1.d.xwy))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.d.xyx - var_1.d.yzw)) + var_1.b.xyx))));
    let var_2 = !(!(all(vec2<bool>(true, true)) || func_3(false, Struct_1(vec2<i32>(u_input.b.x, 2147483647i), var_1.b, vec3<u32>(var_1.c.x, var_1.c.x, var_1.c.x), var_1.d))) || true);
    return -1i;
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> vec4<f32> {
    var var_0 = Struct_1(arg_0.a ^ (~vec2<i32>(arg_0.a.x, u_input.b.x) ^ u_input.b.zy), _wgslsmith_f_op_vec4_f32(-arg_0.d), arg_0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_0.b, vec4<f32>(989f, arg_0.b.x, arg_0.b.x, 700f), false)) * arg_0.d), vec4<f32>(_wgslsmith_f_op_f32(703f + -668f), 1273f, -1672f, _wgslsmith_f_op_f32(abs(arg_0.b.x)))))));
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(-8402i, -13077i, func_2(), u_input.c << (var_0.c.x % 32u)), u_input.b);
    let var_2 = select(false, any(!(!select(vec4<bool>(arg_1, false, false, arg_1), vec4<bool>(true, true, arg_1, arg_1), true))), arg_1);
    var_1 = -78119i;
    let var_3 = Struct_1(-vec2<i32>(-22044i, max(_wgslsmith_add_i32(arg_0.a.x, arg_0.a.x), func_2())), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1509f, -181f, 143f, arg_0.b.x) * vec4<f32>(arg_0.d.x, arg_0.d.x, var_0.b.x, var_0.b.x)), arg_0.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1060f, 150f, var_0.b.x, 687f)), vec4<bool>(func_3(false, Struct_1(vec2<i32>(u_input.c, arg_0.a.x), var_0.d, vec3<u32>(42855u, 4294967295u, 52407u), vec4<f32>(370f, -1331f, -726f, arg_0.d.x))), arg_1, arg_1, all(vec3<bool>(true, var_2, true))))), _wgslsmith_f_op_vec4_f32(-var_0.d))), vec3<u32>(0u, 64532u, 19687u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.d * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.d) * var_0.d))) * var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.b.xy, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1089f, -617f, 1742f, -1167f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1530f, 487f, -184f, -126f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-614f, -172f, -532f, -467f) * _wgslsmith_f_op_vec4_f32(func_1(Struct_1(u_input.b.yx, vec4<f32>(-1110f, 121f, -1482f, -241f), vec3<u32>(0u, 93978u, 1u), vec4<f32>(-132f, 1277f, 1047f, -1666f)), true))), !(u_input.b.x >= u_input.b.x))))), vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(33801u, 4294967295u), vec2<u32>(74053u, 18826u)), vec2<u32>(1u, 1u)) & max(~76102u, firstLeadingBit(0u)), abs(firstTrailingBit(_wgslsmith_add_u32(36617u, 55512u))), 77879u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-560f, _wgslsmith_f_op_f32(sign(780f)), _wgslsmith_div_f32(-592f, 1011f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2104f, 1000f, 1658f, -339f))))));
    let var_1 = Struct_1(vec2<i32>(~_wgslsmith_dot_vec2_i32(-var_0.a, ~u_input.b.yy), -46635i), var_0.d, _wgslsmith_add_vec3_u32(vec3<u32>(var_0.c.x, _wgslsmith_sub_u32(var_0.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.x, 11205u, var_0.c.x, var_0.c.x), vec4<u32>(var_0.c.x, var_0.c.x, 4294967295u, 4294967295u))), 28121u), ~var_0.c), _wgslsmith_f_op_vec4_f32(trunc(var_0.d)));
    var var_2 = Struct_1(u_input.b.zy, var_1.d, vec3<u32>(4294967295u, _wgslsmith_clamp_u32(~4294967295u << (reverseBits(var_0.c.x) % 32u), var_1.c.x, var_1.c.x), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.x, var_0.c.x), vec2<u32>(4294967295u, 0u)))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.b.x + var_1.b.x), _wgslsmith_f_op_vec4_f32(func_1(Struct_1(vec2<i32>(var_0.a.x, -16877i), vec4<f32>(-935f, var_0.d.x, var_0.d.x, var_0.d.x), vec3<u32>(4294967295u, var_1.c.x, var_1.c.x), var_1.d), true)).x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1000f, -448f))), _wgslsmith_f_op_vec4_f32(func_1(var_1, false)).x, var_1.b.x));
    let var_3 = -849f >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.b.x))) * 394f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(119f, -1875f, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.d.x), _wgslsmith_div_f32(-211f, var_2.b.x))), true));
    var_2 = var_1;
    let var_4 = ~vec4<u32>(~_wgslsmith_dot_vec2_u32(reverseBits(var_2.c.yx), select(vec2<u32>(1u, 43271u), vec2<u32>(var_0.c.x, 30989u), true)), ~var_1.c.x, var_1.c.x, _wgslsmith_mult_u32(var_1.c.x, _wgslsmith_div_u32(var_2.c.x, ~34761u)));
    var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.x, var_2.c, _wgslsmith_div_f32(var_1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(var_1.d.x)))) * -1279f)));
}

