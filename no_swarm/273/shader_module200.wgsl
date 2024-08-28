struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec3<i32>,
    d: bool,
    e: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3) -> f32 {
    let var_0 = vec3<u32>(u_input.a.x, ~_wgslsmith_div_u32(20211u << (u_input.a.x % 32u), 1u >> (u_input.a.x % 32u)), ~4294967295u) & ~_wgslsmith_sub_vec3_u32(vec3<u32>(~u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.d.x, u_input.a.x, u_input.a.x), vec3<u32>(arg_0.a.a, 0u, 44951u)), 33690u), vec3<u32>(1u, u_input.a.x, u_input.a.x));
    var var_1 = any(arg_0.c);
    var_1 = arg_0.a.c.a;
    let var_2 = arg_0.c.wzz;
    var var_3 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.e.x, -268f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.a.e.x + arg_0.a.e.x))))), -666f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.e.x)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(arg_0.a.e.x))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.e.x) * 158f))) * _wgslsmith_f_op_f32(-1003f * 2256f)) * var_3.x);
}

fn func_4(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_4) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-arg_1.wzx);
    let var_1 = vec3<bool>(u_input.c > -arg_0, _wgslsmith_f_op_f32(-var_0.x) <= _wgslsmith_f_op_f32(f32(-1f) * -1310f), arg_2.b.x);
    var var_2 = 0u;
    var var_3 = false;
    var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(532f, 312f, var_0.x) - vec3<f32>(var_0.x, 776f, 291f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(arg_2.e.e.x, -2152f), arg_1.x) + vec3<f32>(_wgslsmith_f_op_f32(1470f - var_0.x), _wgslsmith_f_op_f32(-1436f - 138f), var_0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.e.e.x, -938f, -1306f))))));
    return any(!select(!(!vec4<bool>(var_1.x, var_1.x, true, arg_2.e.b.a)), !vec4<bool>(arg_2.d, var_1.x, var_1.x, true), !vec4<bool>(var_1.x, true, false, true)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = vec4<u32>(select(~u_input.a.x, reverseBits(4294967295u), any(select(!vec3<bool>(arg_0.a, false, true), select(vec3<bool>(arg_0.a, true, arg_0.a), vec3<bool>(true, arg_1.x, false), vec3<bool>(false, arg_1.x, false)), select(vec3<bool>(true, arg_0.a, arg_1.x), vec3<bool>(arg_0.a, arg_0.a, true), vec3<bool>(false, false, arg_0.a))))), 58622u, 0u, _wgslsmith_mod_u32(1u, 1u) ^ u_input.a.x);
    let var_1 = ~max(-select(~vec4<i32>(u_input.c, u_input.c, -29163i, 8383i), countOneBits(vec4<i32>(-19111i, 17949i, 0i, u_input.b.x)), arg_0.a), -(~vec4<i32>(2147483647i, u_input.b.x, 1i, 0i) | max(vec4<i32>(1i, 2147483647i, u_input.c, u_input.c), vec4<i32>(u_input.b.x, -234i, u_input.c, u_input.c))));
    var var_2 = true;
    var_2 = func_4(1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(72146u, arg_0, arg_0, vec2<u32>(1u, var_0.x), vec3<f32>(1059f, -440f, 339f)), var_1.xw, vec4<bool>(true, arg_1.x, false, arg_1.x), Struct_1(arg_1.x)))), _wgslsmith_f_op_f32(select(-1207f, 1345f, arg_1.x)), 593f, _wgslsmith_f_op_f32(min(466f, -198f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2255f, 1476f, -502f, -621f))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1448f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1259f) * 1f), _wgslsmith_f_op_f32(step(-1000f, 1000f)), 954f)), Struct_4(min(-(vec3<i32>(u_input.c, u_input.b.x, -9402i) << (vec3<u32>(1u, 4294967295u, var_0.x) % vec3<u32>(32u))), vec3<i32>(var_1.x, var_1.x, 2147483647i) ^ select(var_1.xzz, vec3<i32>(u_input.b.x, -19777i, 0i), vec3<bool>(true, arg_0.a, false))), select(!vec3<bool>(arg_1.x, true, true), vec3<bool>(true, false, all(vec2<bool>(true, true))), ~var_0.x > ~u_input.a.x), vec3<i32>(_wgslsmith_div_i32(i32(-1i) * -22727i, var_1.x), max(max(2147483647i, var_1.x), var_1.x ^ -6764i), var_1.x), false, Struct_2(~reverseBits(66611u), Struct_1(false), Struct_1(false), countOneBits(min(vec2<u32>(42945u, 4294967295u), u_input.a)), vec3<f32>(-1000f, 1460f, -518f))));
    let var_3 = Struct_2(u_input.a.x, arg_0, arg_0, _wgslsmith_mult_vec2_u32(u_input.a, _wgslsmith_mult_vec2_u32(~firstTrailingBit(u_input.a), vec2<u32>(~var_0.x, _wgslsmith_div_u32(553u, u_input.a.x)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -364f), -1255f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1461f - -726f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(88645u, Struct_1(arg_0.a), Struct_1(arg_1.x), var_0.yw, vec3<f32>(-578f, 182f, 1714f)), vec2<i32>(u_input.b.x, u_input.b.x), vec4<bool>(arg_0.a, true, arg_0.a, arg_0.a), Struct_1(arg_1.x)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-378f - -842f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1000f)), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(ceil(-1000f)), true)))));
    return arg_0;
}

fn func_1() -> bool {
    var var_0 = func_2(Struct_1(-_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.b.x), vec2<i32>(u_input.b.x, u_input.c)) <= _wgslsmith_div_i32(select(1i, 13612i, false), -u_input.b.x)), vec2<bool>(true, true));
    let var_1 = Struct_4(select(~_wgslsmith_sub_vec3_i32(u_input.b, u_input.b), select(u_input.b, _wgslsmith_sub_vec3_i32(u_input.b, vec3<i32>(u_input.c, 0i, -1i)), !vec3<bool>(var_0.a, var_0.a, false)), select(!vec3<bool>(var_0.a, false, true), select(vec3<bool>(var_0.a, var_0.a, true), vec3<bool>(true, var_0.a, true), false), var_0.a)) | ~u_input.b, select(!vec3<bool>(func_2(Struct_1(false), vec2<bool>(true, var_0.a)).a, true, true), select(!select(vec3<bool>(false, false, var_0.a), vec3<bool>(false, var_0.a, var_0.a), var_0.a), !select(vec3<bool>(var_0.a, true, var_0.a), vec3<bool>(var_0.a, true, false), vec3<bool>(var_0.a, var_0.a, var_0.a)), !(!vec3<bool>(false, var_0.a, true))), var_0.a), u_input.b, var_0.a, Struct_2(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.a.x, 17916u, 34107u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 29252u, 1u)))), func_2(Struct_1(var_0.a && false), select(select(vec2<bool>(var_0.a, false), vec2<bool>(true, true), vec2<bool>(false, false)), !vec2<bool>(var_0.a, true), select(vec2<bool>(var_0.a, true), vec2<bool>(var_0.a, true), vec2<bool>(false, var_0.a)))), Struct_1(!var_0.a), vec2<u32>(1u, ~max(u_input.a.x, 64u)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-543f, _wgslsmith_f_op_f32(f32(-1f) * -689f), _wgslsmith_f_op_f32(step(-398f, -1000f)))))));
    var_0 = Struct_1(var_0.a);
    var_0 = var_1.e.c;
    var_0 = Struct_1(!(!(var_1.e.e.x > _wgslsmith_f_op_f32(-270f * var_1.e.e.x))));
    return func_4(var_1.a.x, vec4<f32>(800f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1361f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.e.e.x * var_1.e.e.x) + _wgslsmith_f_op_f32(-var_1.e.e.x)))), var_1.e.e.x, _wgslsmith_f_op_f32(min(var_1.e.e.x, _wgslsmith_f_op_f32(var_1.e.e.x + _wgslsmith_f_op_f32(746f - 1434f))))), Struct_4(vec3<i32>(u_input.b.x, -2147483647i, var_1.c.x), !vec3<bool>(true, false, !var_1.d), ~var_1.a | (vec3<i32>(-77106i, 0i, u_input.c) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(var_1.c.x, u_input.b.x, 1i), var_1.c)), var_1.e.e.x >= var_1.e.e.x, var_1.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!select(select(func_1(), false, select(false, false, false)), true, all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false))));
    var_0 = func_2(Struct_1(true), vec2<bool>(!any(vec2<bool>(true, false)) | false, !var_0.a));
    var var_1 = Struct_3(Struct_2(u_input.a.x, Struct_1(func_2(Struct_1(var_0.a), vec2<bool>(true, true)).a), func_2(func_2(Struct_1(var_0.a), select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, false), vec2<bool>(false, var_0.a))), vec2<bool>(any(vec4<bool>(false, var_0.a, var_0.a, var_0.a)), var_0.a == true)), vec2<u32>(~60244u, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)) << (vec2<u32>(382u | u_input.a.x, 10344u) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-228f, -1147f, 1114f), vec3<f32>(-117f, -719f, -445f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(340f, 544f, -620f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2332f, -701f, -731f) * vec3<f32>(1000f, -1725f, -1224f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(549f, 411f, 629f)))))), -vec2<i32>(firstLeadingBit(_wgslsmith_div_i32(u_input.c, 0i)), _wgslsmith_add_i32(~(-29977i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2830i, -2147483647i, u_input.c), vec4<i32>(1i, -1i, u_input.c, u_input.b.x)))), !select(vec4<bool>(true, true, true, true), !(!vec4<bool>(var_0.a, var_0.a, false, true)), select(select(vec4<bool>(true, var_0.a, false, true), vec4<bool>(true, var_0.a, var_0.a, false), true), !vec4<bool>(var_0.a, var_0.a, var_0.a, true), !vec4<bool>(var_0.a, false, true, var_0.a))), Struct_1(!var_0.a));
    var var_2 = Struct_5(_wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(~u_input.b.x, ~(-1i), reverseBits(var_1.b.x), -1i)), -vec4<i32>(u_input.c, var_1.b.x, select(23995i, var_1.b.x, var_0.a), ~(-1i)), vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.b & vec3<i32>(var_1.b.x, u_input.b.x, 2147483647i), select(u_input.b, vec3<i32>(-17653i, -2147483647i, var_1.b.x), false)), _wgslsmith_div_i32(max(-28791i, u_input.b.x), abs(u_input.b.x)), var_1.b.x ^ 0i, _wgslsmith_mod_i32(-10838i, var_1.b.x) | var_1.b.x)));
    let var_3 = var_1.a;
    let var_4 = Struct_1((var_3.c.a != var_0.a) & true);
    let var_5 = Struct_4(-(vec3<i32>(var_2.a.x << (u_input.a.x % 32u), _wgslsmith_mod_i32(var_1.b.x, -13978i), _wgslsmith_dot_vec2_i32(var_1.b, vec2<i32>(var_1.b.x, var_1.b.x))) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.a.d.x, 989u, 41907u) << (vec3<u32>(var_1.a.d.x, u_input.a.x, 4294967295u) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 37566u), vec3<u32>(59229u, u_input.a.x, var_3.d.x)), ~vec3<u32>(var_3.a, 0u, var_1.a.d.x)) % vec3<u32>(32u))), !vec3<bool>((var_0.a && var_1.a.c.a) | !var_4.a, all(select(vec2<bool>(var_3.c.a, true), var_1.c.xy, vec2<bool>(false, var_1.c.x))), var_3.b.a), firstTrailingBit(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(-var_2.a.yzy, u_input.b, vec3<i32>(var_1.b.x, var_2.a.x, 31499i)), ~_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 48364i, u_input.b.x), vec3<i32>(var_2.a.x, 0i, var_1.b.x)))), !(!all(select(vec3<bool>(var_4.a, var_0.a, var_4.a), var_1.c.wxx, var_3.c.a))), var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-850f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(261f))))), var_3.d.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(10554i | var_5.a.x, 5438i, _wgslsmith_clamp_i32(var_2.a.x, u_input.b.x, -29991i)), _wgslsmith_add_vec3_i32(max(vec3<i32>(-30605i, 482i, var_1.b.x), var_2.a.zxw), vec3<i32>(u_input.c, -1i, 11972i))), 1i, ~0u);
}

