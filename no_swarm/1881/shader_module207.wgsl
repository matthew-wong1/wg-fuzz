struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = -(~vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(-62534i, 1i), _wgslsmith_div_i32(u_input.d, u_input.d)), -20632i, _wgslsmith_add_i32(u_input.d >> (42432u % 32u), _wgslsmith_sub_i32(54721i, 0i)), -(arg_0 & arg_0)));
    let var_1 = countOneBits(min(-53309i, max(reverseBits(arg_0), _wgslsmith_mod_i32(countOneBits(-1i), 2147483647i | var_0.x))));
    var_0 = vec4<i32>(-75421i, 0i, ~countOneBits(-2147483647i), u_input.d);
    let var_2 = Struct_3(-(var_0.xz << (u_input.a.yz % vec2<u32>(32u))), u_input.a, -_wgslsmith_mult_vec2_i32(~var_0.wx, vec2<i32>(var_0.x, -arg_0)));
    let var_3 = select(var_0.xxy, ~_wgslsmith_add_vec3_i32(var_0.wwz, ~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, 15957i, var_2.c.x), vec3<i32>(u_input.d, var_0.x, var_0.x))), all(vec3<bool>(!select(false, false, false), true, select(false, u_input.d > 0i, any(vec2<bool>(false, true))))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1751f)), 641f);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(arg_1.a, _wgslsmith_f_op_f32(182f + 1f)), Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.d))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.b))))), abs(abs(max(arg_0.xwz, arg_0.yxz)) ^ vec3<i32>(-28602i, max(1i, arg_0.x), 1i)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, arg_1.b, -264f, _wgslsmith_f_op_f32(select(var_0.b.b, var_0.a.b, !var_0.a.a)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-2216f, -620f, var_0.b.b, 959f)))) + vec4<f32>(var_0.a.b, var_0.a.b, _wgslsmith_div_f32(-722f, -888f), -959f)) - vec4<f32>(_wgslsmith_f_op_f32(-916f - _wgslsmith_f_op_f32(-arg_1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) - _wgslsmith_f_op_f32(ceil(var_0.b.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(479f)) - _wgslsmith_f_op_f32(abs(119f))))));
    return Struct_1(!(!select(all(vec3<bool>(true, false, true)), var_0.c.x != var_0.c.x, arg_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - arg_1.b) + -1440f)) * _wgslsmith_f_op_f32(-arg_1.b)));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1, arg_1, -1525f), vec3<f32>(arg_0.b, -691f, -1394f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-706f, -502f, 986f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, arg_0.b, -1557f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 751f, -1000f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-746f, arg_0.b, 1557f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, arg_1, arg_1) * vec3<f32>(arg_1, arg_1, 395f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-928f, 1354f) + -282f), -262f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.b * -578f)))))));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x)));
    var var_2 = Struct_1(true, _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(select(-292f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-663f - -176f), var_0.x)), false))));
    var_2 = arg_0;
    var_2 = Struct_1(true, -192f);
    return arg_0.a;
}

fn func_1() -> Struct_3 {
    let var_0 = func_4(func_2(max(vec4<i32>(i32(-1i) * -47935i, ~u_input.d, countOneBits(u_input.d), u_input.d), firstTrailingBit(vec4<i32>(2147483647i, u_input.d, u_input.d, 1i) >> (vec4<u32>(21008u, u_input.b, 24294u, 13942u) % vec4<u32>(32u)))), Struct_1(true, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -435f)))), -193f);
    var var_1 = select(vec3<i32>(~u_input.d, -u_input.d, u_input.d), vec3<i32>(22253i, ~1i, _wgslsmith_mult_i32(i32(-1i) * -16897i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-9886i, u_input.d, 2147483647i), u_input.d))), !(true & (var_0 || false)));
    var var_2 = max(_wgslsmith_clamp_i32(u_input.d, ~1i, var_1.x), -8347i);
    let var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(252f, 1560f, 1121f, -1466f), vec4<f32>(-256f, 124f, 886f, 214f))), vec4<f32>(1f, 1f, 1f, 1f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-201f, 210f, -875f, 330f), vec4<f32>(682f, -921f, 636f, 265f), vec4<bool>(true, false, true, false))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-196f, -524f, -934f, -205f))), vec4<f32>(931f, _wgslsmith_f_op_f32(f32(-1f) * -789f), -491f, _wgslsmith_f_op_f32(abs(-1000f)))))));
    var_2 = u_input.d;
    return Struct_3(var_1.zx, abs(vec4<u32>(abs(1u), 22588u, u_input.b, ~u_input.a.x)), var_1.xz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = !select(vec3<bool>(all(vec2<bool>(true, false)) || true, any(select(vec2<bool>(false, true), vec2<bool>(false, false), false)), false), select(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), !(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false)));
    let var_2 = vec3<u32>(countOneBits(var_0.b.x), 1290u, 79605u);
    let var_3 = select(!select(select(vec3<bool>(false, false, false), vec3<bool>(var_1.x, true, var_1.x), false), !vec3<bool>(var_1.x, false, false), vec3<bool>(false, u_input.b < u_input.a.x, true)), select(select(select(!vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(true, var_1.x, var_1.x), true), !(!vec3<bool>(var_1.x, var_1.x, var_1.x)), select(true, false, var_1.x)), select(vec3<bool>(true, false, all(vec3<bool>(false, var_1.x, true))), !select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(false, true, var_1.x), vec3<bool>(false, var_1.x, true)), true), select(select(vec3<bool>(var_1.x, var_1.x, false), !vec3<bool>(true, var_1.x, var_1.x), select(vec3<bool>(false, var_1.x, false), vec3<bool>(false, false, false), vec3<bool>(var_1.x, var_1.x, var_1.x))), vec3<bool>(!var_1.x, u_input.d <= u_input.d, !var_1.x), var_1.x)), true);
    let var_4 = vec2<i32>(-var_0.c.x, 0i);
    var var_5 = vec2<bool>(true, false);
    let var_6 = select(var_1.xy, select(!var_1.zy, !vec2<bool>(any(var_3), var_3.x), any(!(!var_3))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1182f) * _wgslsmith_f_op_f32(max(-271f, -1828f)))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_0.c.x)) - 1f)));
    var_5 = vec2<bool>(var_6.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1545f))) < _wgslsmith_f_op_f32(f32(-1f) * -193f));
    var_1 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~var_0.b.x, 4294967295u | _wgslsmith_sub_u32(u_input.b, firstTrailingBit(var_0.b.x))), func_1().c.x, u_input.a, vec4<i32>(var_4.x, var_0.c.x, 1i, i32(-1i) * -var_0.c.x), _wgslsmith_add_vec4_u32(vec4<u32>(firstTrailingBit(26142u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(19266u, 0u, 1u, u_input.c), u_input.a), 35017u, _wgslsmith_sub_u32(min(33324u, 18389u), firstLeadingBit(16894u))), vec4<u32>(~22436u, ~var_0.b.x, var_2.x, 1u)));
}

