struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<f32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(trunc(arg_1.a)), arg_0.x, _wgslsmith_f_op_f32(-arg_1.c.x)), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), -1580f, 245f, -388f)), arg_1.c, vec4<bool>(~arg_1.d > _wgslsmith_mod_i32(arg_1.d, arg_1.d), false, true, true)))));
    global0 = arg_1.b;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0 * vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(959f * arg_0.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(336f * var_0.x))))));
    var var_2 = vec3<bool>(!select(select(true, true, true), true, _wgslsmith_f_op_f32(var_0.x * 1052f) <= _wgslsmith_f_op_f32(f32(-1f) * -1361f)), true, !all(vec2<bool>(true, true)));
    return true;
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: vec2<f32>) -> f32 {
    let var_0 = 1000f;
    var var_1 = Struct_3(vec3<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.b), ~_wgslsmith_sub_u32(abs(41940u), u_input.a.x ^ 1u), ~(~_wgslsmith_div_u32(25268u, u_input.b))), Struct_2(-(-1i << (u_input.b % 32u)), false), Struct_2(48267i, false));
    let var_2 = Struct_2(var_1.c.a, !(all(select(vec2<bool>(false, false), vec2<bool>(var_1.b.b, true), vec2<bool>(true, true))) && var_1.b.b));
    let var_3 = var_1.b.a;
    let var_4 = Struct_3(~firstTrailingBit(vec3<u32>(_wgslsmith_mult_u32(var_1.a.x, var_1.a.x), ~u_input.b, _wgslsmith_div_u32(var_1.a.x, 27665u))), var_1.b, Struct_2(_wgslsmith_clamp_i32(firstTrailingBit(var_2.a & -86985i), _wgslsmith_dot_vec4_i32(-vec4<i32>(var_2.a, 1i, var_1.c.a, var_1.c.a), vec4<i32>(var_1.b.a, var_2.a, 15353i, var_2.a) << (vec4<u32>(var_1.a.x, var_1.a.x, 1u, u_input.a.x) % vec4<u32>(32u))), var_2.a), all(select(!vec3<bool>(var_1.b.b, true, var_1.b.b), !vec3<bool>(var_2.b, var_2.b, var_1.c.b), false))));
    return arg_2.x;
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> vec4<f32> {
    global0 = _wgslsmith_div_f32(-2262f, _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * -1421f) * _wgslsmith_f_op_f32(trunc(arg_1))))));
    var var_0 = _wgslsmith_div_vec4_i32(min(_wgslsmith_add_vec4_i32(~(~vec4<i32>(-49574i, -69214i, arg_0.c.a, arg_0.b.a)), min(vec4<i32>(arg_0.c.a, arg_0.b.a, 0i, -15765i), vec4<i32>(arg_0.c.a, 35014i, 45076i, arg_0.b.a)) << (vec4<u32>(1u, u_input.b, 1u, 1u) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(0i, arg_0.c.a, 25886i, arg_0.c.a), -vec4<i32>(1i, -2147483647i, -54680i, 0i)), min(~(-96072i), ~2147483647i), ~(20044i << (arg_0.a.x % 32u)), -8646i)), -abs(-vec4<i32>(-2147483647i, arg_0.b.a, -1815i, 3853i)));
    let var_1 = vec4<f32>(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(475f)) - _wgslsmith_f_op_f32(round(arg_1)))))), -1973f, -814f, 628f);
    let var_2 = _wgslsmith_add_vec4_u32(countOneBits(_wgslsmith_clamp_vec4_u32(min(vec4<u32>(72561u, arg_0.a.x, 32791u, 10658u), ~vec4<u32>(58600u, 7575u, arg_0.a.x, 0u)), vec4<u32>(arg_0.a.x, u_input.a.x, 119148u, 4294967295u) & max(vec4<u32>(arg_0.a.x, 1u, 98710u, 55141u), vec4<u32>(arg_0.a.x, 43441u, 11857u, 8732u)), vec4<u32>(max(28236u, arg_0.a.x), 4294967295u, firstLeadingBit(arg_0.a.x), min(arg_0.a.x, arg_0.a.x)))), ~firstTrailingBit(~vec4<u32>(u_input.b, 0u, arg_0.a.x, 2353u)));
    var_0 = abs(~vec4<i32>(~(-1i), 1i, arg_0.c.a >> (4294967295u % 32u), -var_0.x)) & _wgslsmith_add_vec4_i32(-(~(-vec4<i32>(var_0.x, 54889i, 2147483647i, arg_0.b.a))), vec4<i32>(countOneBits(arg_0.b.a << (var_2.x % 32u)), abs(arg_0.b.a), -13644i << (1u % 32u), ~_wgslsmith_add_i32(var_0.x, arg_0.c.a)));
    return _wgslsmith_f_op_vec4_f32(var_1 - vec4<f32>(arg_1, _wgslsmith_div_f32(-292f, _wgslsmith_f_op_f32(-var_1.x)), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(212f, 702f, !arg_0.c.b)) - _wgslsmith_f_op_f32(-974f + 1428f))));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2) -> Struct_3 {
    global0 = -610f;
    var var_0 = select(vec2<bool>((!arg_1.b && (arg_1.a < 2147483647i)) & true, (func_2(vec3<f32>(608f, 1190f, -1388f), Struct_1(-1007f, -547f, vec4<f32>(-626f, 435f, -586f, -1000f), arg_1.a)) | arg_1.b) != arg_1.b), select(!select(vec2<bool>(true, true), select(vec2<bool>(arg_1.b, false), vec2<bool>(false, true), arg_1.b), false), vec2<bool>(true, true), true), arg_1.b);
    let var_1 = Struct_1(963f, -775f, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_4(Struct_3(u_input.a, arg_1, arg_1), _wgslsmith_f_op_f32(func_3(vec2<f32>(-240f, -350f), vec4<i32>(arg_1.a, 38779i, arg_1.a, arg_1.a), vec2<f32>(1309f, -2645f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-586f, 1000f, 1261f, 2041f), vec4<f32>(-1326f, 1452f, -238f, -1000f), var_0.x)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1434f, 1000f, -460f, -941f)))), !(!vec4<bool>(true, arg_1.b, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(523f, 187f, -543f, 2208f), vec4<f32>(1542f, -764f, -627f, 1137f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1180f, -471f, -555f, 1188f), vec4<f32>(-910f, 278f, 1907f, 472f)) - vec4<f32>(246f, 301f, 1000f, -767f))))), arg_1.a);
    var var_2 = true;
    let var_3 = Struct_3(u_input.a, arg_1, arg_1);
    return Struct_3(var_3.a, arg_1, arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.a.yy, Struct_2(1i, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(1243f, -156f))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -627f) + _wgslsmith_f_op_f32(round(-1121f)))));
    let var_1 = u_input.b;
    let var_2 = firstTrailingBit(-_wgslsmith_add_vec4_i32(vec4<i32>(-66575i, var_0.c.a, var_0.b.a, var_0.b.a), -(~vec4<i32>(var_0.b.a, var_0.b.a, var_0.b.a, var_0.c.a))));
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-737f * 1001f)));
    var var_3 = func_1(vec2<u32>(select(~var_1, _wgslsmith_div_u32(58647u, u_input.a.x) | var_0.a.x, !(var_0.c.b || true)), 0u), Struct_2(min(max(15193i, -var_2.x), var_0.c.a), false)).b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1404f + 1643f))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(562f, 1997f, 188f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-220f, 677f, 707f) + vec3<f32>(-582f, -342f, -296f)))) * vec3<f32>(_wgslsmith_f_op_f32(sign(777f)), -1614f, _wgslsmith_f_op_f32(ceil(-496f)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1770f * 716f)), -928f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-141f, _wgslsmith_f_op_f32(-1009f - -1348f)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1448f, 185f) + vec2<f32>(-118f, -351f)))), !(!vec2<bool>(var_3.b, var_3.b))))), -var_3.a, var_2.yxx);
}

