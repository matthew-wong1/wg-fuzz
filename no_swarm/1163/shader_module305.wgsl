struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: bool,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: bool,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(vec2<i32>(_wgslsmith_mult_i32(u_input.b.x, i32(-1i) * -u_input.a), ~firstLeadingBit(1i)), abs(vec4<u32>(1u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 5419u), vec2<u32>(38051u, 0u)), _wgslsmith_div_u32(14896u, 19968u)), 1u, 4294967295u)));
    var var_1 = Struct_3(var_0, 32226u, any(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)))));
    let var_2 = _wgslsmith_sub_u32(4294967295u, reverseBits(~_wgslsmith_mult_u32(var_1.b, ~var_1.b)));
    let var_3 = select(select(select(select(!vec3<bool>(var_1.c, var_1.c, false), !vec3<bool>(var_1.c, var_1.c, var_1.c), vec3<bool>(false, var_1.c, var_1.c)), vec3<bool>(true, all(vec3<bool>(true, var_1.c, var_1.c)), true), var_1.c), !vec3<bool>(u_input.b.x == var_1.a.a.x, true, all(vec2<bool>(false, var_1.c))), !vec3<bool>(true, var_1.c | true, true)), vec3<bool>(true, any(select(vec3<bool>(var_1.c, var_1.c, true), vec3<bool>(false, var_1.c, false), true)), var_1.c), var_1.c | all(vec3<bool>(!var_1.c, false & var_1.c, true)));
    var var_4 = var_1.a.a;
    return reverseBits(115139u) ^ var_2;
}

fn func_2(arg_0: vec4<bool>) -> f32 {
    let var_0 = Struct_3(Struct_1(countOneBits(vec2<i32>(u_input.b.x, u_input.a)) >> (~(~vec2<u32>(1u, 4294967295u)) % vec2<u32>(32u)), vec4<u32>(0u, 16699u, _wgslsmith_add_u32(func_3(), firstLeadingBit(113042u)), ~firstLeadingBit(4294967295u))), 21003u, select(true, true, !select(arg_0.x, arg_0.x, arg_0.x)) == !(any(vec3<bool>(arg_0.x, false, arg_0.x)) || any(arg_0.zz)));
    let var_1 = arg_0;
    let var_2 = var_1;
    let var_3 = var_0.a;
    let var_4 = var_0.a;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-205f + -1559f)))), -1000f);
}

fn func_1() -> u32 {
    let var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(1f, 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<bool>(true, true, true, true))))), 1010f, _wgslsmith_f_op_f32(-609f + -1082f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1852f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * 989f), 738f)))))));
    let var_1 = _wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(2147483647i, ~u_input.b.x, _wgslsmith_div_i32(_wgslsmith_clamp_i32(1i, u_input.b.x, -12904i), -2147483647i))), ~vec3<i32>(~(~(-8756i)), u_input.a, ~(i32(-1i) * -1349i)));
    let var_2 = vec2<i32>(var_1.x | reverseBits(i32(-1i) * -1i), ~(~1i));
    var var_3 = -3052i;
    var var_4 = Struct_4(~(~(~(~vec3<u32>(4294967295u, 5996u, 21455u)))));
    return _wgslsmith_mod_u32(countOneBits(1u), ~abs(select(abs(var_4.a.x), var_4.a.x, any(vec2<bool>(false, false)))));
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.d.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.d.x), arg_1.d.x))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-arg_1.d.xz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-913f, var_0.x)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d.x + -1247f) + _wgslsmith_div_f32(arg_1.d.x, 929f)), _wgslsmith_f_op_f32(trunc(-1418f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.d.zy)));
    var_0 = arg_1.d.yx;
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.x - arg_1.d.x))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x)), -243f);
    let var_1 = _wgslsmith_dot_vec4_u32(~(_wgslsmith_mult_vec4_u32(~arg_1.b, ~arg_1.a.b) | ~vec4<u32>(44019u, arg_1.b.x, arg_0, arg_0)), ~min(vec4<u32>(arg_1.a.b.x, 4294967295u, ~arg_0, 51293u), _wgslsmith_mult_vec4_u32(~arg_1.a.b, ~vec4<u32>(arg_1.b.x, arg_1.a.b.x, 28287u, 76221u))));
    return abs(_wgslsmith_mult_vec3_u32(arg_1.b.xzw, firstLeadingBit(arg_1.a.b.xyx << ((arg_1.a.b.zxx & arg_1.a.b.yzw) % vec3<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~min(vec3<i32>(37894i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), u_input.b), u_input.b.x), vec3<i32>(-1i) * -vec3<i32>(u_input.b.x, -1i, u_input.a)));
    let var_1 = ~func_4(~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(105042u, 20677u, 19810u), func_1(), select(29690u, 4294967295u, false)), Struct_2(Struct_1(vec2<i32>(-2147483647i, 20864i), vec4<u32>(17320u, 1u, 15443u, 31483u)), min(vec4<u32>(1u, 13000u, 4294967295u, 89947u), vec4<u32>(1u, 1u, 1u, 1u)), true, vec3<f32>(1f, _wgslsmith_f_op_f32(step(-1528f, 395f)), _wgslsmith_f_op_f32(375f + -1141f))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -812f, -483f, _wgslsmith_f_op_f32(round(-668f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(140f, 973f, -1376f, 292f), vec4<f32>(-1160f, 409f, 1611f, -419f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-176f, -932f, -1611f, 124f) + vec4<f32>(1343f, 537f, 1664f, 196f))))));
    var var_3 = vec3<u32>(var_1.x, ~0u, 59201u);
    var var_4 = 529f;
    let var_5 = vec3<u32>(max(var_3.x, var_3.x), func_4(var_1.x, Struct_2(Struct_1(var_0.xz, vec4<u32>(0u, 0u, 5967u, 1u) << (vec4<u32>(var_1.x, var_3.x, var_3.x, var_3.x) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(4294967295u, 75462u, 0u, 29638u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(40318u, 4294967295u, var_1.x, var_3.x), vec4<u32>(var_1.x, var_1.x, 1u, var_3.x), vec4<u32>(var_1.x, var_3.x, var_1.x, 1u))), any(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.wxy) * _wgslsmith_f_op_vec3_f32(ceil(var_2.xzx))))).x, 31006u);
    var var_6 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -217f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.x - var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1400f)))), var_2.x), vec4<f32>(-1572f, _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.x, -208f)))), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x);
}

