struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
    c: vec3<bool>,
    d: vec2<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: f32, arg_3: Struct_2) -> vec4<i32> {
    var var_0 = !arg_0;
    var_0 = arg_0;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - -342f))))));
    let var_2 = _wgslsmith_div_u32(abs(0u), _wgslsmith_mult_u32(4294967295u, ~(~arg_3.b.a.x)));
    let var_3 = Struct_4(arg_3.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(var_1, -1279f, -1832f, -842f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(586f, var_1, arg_2, -332f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1, -370f, -475f, 1189f))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1488f, -949f, arg_1, 1085f))))))), vec4<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(29769i, 0i)), vec2<i32>(u_input.d.x << (arg_3.c.a.x % 32u), _wgslsmith_div_i32(18418i, 945i))), 1i, ~(-2147483647i), countOneBits(-48870i) << ((var_2 << (_wgslsmith_add_u32(arg_3.b.b.x, 0u) % 32u)) % 32u)));
    return var_3.c;
}

fn func_3(arg_0: vec2<u32>) -> vec4<i32> {
    let var_0 = Struct_4(Struct_1(~u_input.b & _wgslsmith_sub_vec4_u32(u_input.b, reverseBits(vec4<u32>(u_input.c.x, 73051u, 31309u, arg_0.x))), vec4<u32>(~arg_0.x, u_input.c.x, u_input.b.x, 4294967295u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -638f, -469f, 137f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2571f, 1000f, -334f, 487f))) * vec4<f32>(334f, 396f, 711f, -1444f)), true))), -vec4<i32>(~u_input.d.x, u_input.a.x >> (arg_0.x % 32u), _wgslsmith_sub_i32(34492i, u_input.a.x), u_input.a.x | 1i) >> (abs(_wgslsmith_sub_vec4_u32(u_input.c, ~vec4<u32>(5103u, 4294967295u, u_input.c.x, arg_0.x))) % vec4<u32>(32u)));
    var var_1 = arg_0.x;
    var_1 = ~firstLeadingBit(arg_0.x);
    let var_2 = Struct_2(var_0.a, Struct_1(vec4<u32>(firstTrailingBit(arg_0.x) & firstLeadingBit(var_0.a.b.x), countOneBits(_wgslsmith_sub_u32(4294967295u, var_0.a.b.x)), 1u, arg_0.x), ~(~u_input.c & ~vec4<u32>(arg_0.x, 0u, var_0.a.a.x, 75281u))), Struct_1(~u_input.c, u_input.c));
    let var_3 = _wgslsmith_dot_vec3_u32(var_2.a.b.zxw, vec3<u32>(~(~4294967295u), ~7649u, var_2.a.b.x));
    return _wgslsmith_mult_vec4_i32((vec4<i32>(-u_input.d.x, i32(-1i) * -2147483647i, -u_input.d.x, var_0.c.x) ^ vec4<i32>(-2147483647i, var_0.c.x, u_input.a.x, -9418i & var_0.c.x)) | (-max(var_0.c, var_0.c) & vec4<i32>(countOneBits(-2147483647i), func_2(true, var_0.b.x, var_0.b.x, Struct_2(Struct_1(u_input.b, vec4<u32>(var_2.b.b.x, 1u, 116638u, arg_0.x)), Struct_1(var_0.a.b, vec4<u32>(20780u, var_0.a.b.x, 1u, u_input.b.x)), Struct_1(var_2.a.a, u_input.c))).x, _wgslsmith_mod_i32(u_input.d.x, u_input.a.x), -u_input.a.x)), var_0.c);
}

fn func_1(arg_0: f32) -> Struct_2 {
    var var_0 = select(abs(-max(_wgslsmith_clamp_vec4_i32(vec4<i32>(10745i, u_input.d.x, -1i, u_input.d.x), vec4<i32>(u_input.d.x, u_input.a.x, -97i, 47232i), vec4<i32>(-31933i, 9957i, u_input.d.x, u_input.d.x)), func_2(false, -855f, -1000f, Struct_2(Struct_1(u_input.b, u_input.b), Struct_1(vec4<u32>(14822u, 56129u, 1u, 1u), u_input.b), Struct_1(vec4<u32>(u_input.b.x, 0u, 0u, 1u), vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.c.x)))))), abs(firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, 20108i) ^ vec4<i32>(u_input.d.x, 2147483647i, u_input.d.x, u_input.a.x), func_3(u_input.c.yw)))), select(vec4<bool>(true, false, true, any(vec2<bool>(false, true))), select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false)), true), true), select(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(false, false, true, true), any(vec2<bool>(false, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true))));
    var_0 = _wgslsmith_mult_vec4_i32(select(~(vec4<i32>(var_0.x, var_0.x, -19465i, 2147483647i) << (u_input.c % vec4<u32>(32u))), ~(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -69215i, u_input.d.x, 50563i), vec4<i32>(u_input.d.x, -19459i, 29053i, 1i)) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, var_0.x, 2147483647i, var_0.x), vec4<i32>(var_0.x, var_0.x, u_input.d.x, u_input.d.x))), !(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), true))), func_2(any(vec3<bool>(true, true, true)), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0, arg_0)) * arg_0), Struct_2(Struct_1(u_input.b, u_input.b), Struct_1(u_input.b, u_input.c), Struct_1(vec4<u32>(u_input.c.x, 0u, 56216u, 33997u), vec4<u32>(63238u, u_input.b.x, u_input.c.x, 4294967295u)))) >> (~vec4<u32>(1u, _wgslsmith_div_u32(1u, u_input.b.x), u_input.b.x, ~u_input.b.x) % vec4<u32>(32u)));
    var var_1 = Struct_4(Struct_1(_wgslsmith_clamp_vec4_u32(u_input.b, ~u_input.c, vec4<u32>(8360u, ~0u, 0u & u_input.b.x, ~13461u)), u_input.b), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 1363f, 1075f, -565f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, 2050f, arg_0))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 1304f, arg_0, arg_0)), vec4<f32>(-707f, arg_0, 1000f, 389f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -495f, 877f, arg_0))))), _wgslsmith_mod_vec4_i32(select(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, u_input.a.x), var_0.zz), u_input.a.x, _wgslsmith_clamp_i32(var_0.x, var_0.x, 23723i), 0i), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, var_0.x, -2147483647i, 2147483647i), vec4<i32>(var_0.x, var_0.x, 1i, var_0.x)), vec4<i32>(-38878i, 46077i, var_0.x, 32574i) << (u_input.b % vec4<u32>(32u))), !(arg_0 < arg_0)), vec4<i32>(func_3(~u_input.c.zy).x, u_input.d.x, -var_0.x, 0i)));
    var var_2 = var_1.b.ywz;
    var var_3 = false;
    return Struct_2(Struct_1(vec4<u32>(_wgslsmith_mult_u32(abs(u_input.b.x), ~4294967295u), var_1.a.a.x, var_1.a.b.x, _wgslsmith_add_u32(_wgslsmith_mult_u32(4294967295u, u_input.c.x), 4294967295u)), vec4<u32>(var_1.a.b.x, countOneBits(0u | var_1.a.b.x), _wgslsmith_dot_vec2_u32(u_input.c.zw, vec2<u32>(var_1.a.a.x, 0u)), abs(u_input.c.x))), Struct_1(var_1.a.a, u_input.c), Struct_1(~_wgslsmith_sub_vec4_u32(u_input.b, u_input.b), select(~(~vec4<u32>(100308u, u_input.b.x, u_input.b.x, var_1.a.a.x)), _wgslsmith_div_vec4_u32(var_1.a.b, vec4<u32>(4294967295u, u_input.c.x, 61126u, 4294967295u)) & (var_1.a.b >> (vec4<u32>(u_input.c.x, var_1.a.b.x, 63163u, var_1.a.b.x) % vec4<u32>(32u))), vec4<bool>(true, true, true, true))));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = select(vec3<bool>(true, true, true), vec3<bool>(true, any(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), true), true);
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1002f)))), -651f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(294f + _wgslsmith_f_op_f32(f32(-1f) * -1227f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-104f))))));
    var_0 = !select(vec3<bool>(false, reverseBits(u_input.b.x) == u_input.b.x, var_0.x), select(!(!vec3<bool>(true, var_0.x, true)), !select(vec3<bool>(true, true, var_0.x), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, true, var_0.x)), !any(var_0.yx)), vec3<bool>(!var_0.x, all(!vec3<bool>(var_0.x, var_0.x, false)), true));
    var_0 = select(!vec3<bool>(true, !(!var_0.x), true), vec3<bool>(true, true, _wgslsmith_f_op_f32(562f * _wgslsmith_f_op_f32(var_1.x - var_1.x)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), any(!select(vec2<bool>(false, true), !vec2<bool>(true, var_0.x), var_0.x)));
    var_0 = vec3<bool>(any(select(vec4<bool>(false, true, false, var_0.x & var_0.x), !(!vec4<bool>(var_0.x, false, var_0.x, var_0.x)), !select(vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(true, true, true, var_0.x), var_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-735f + _wgslsmith_f_op_f32(var_1.x * var_1.x)), var_1.x) < -1021f, var_0.x);
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_u32(4294967295u, 0u);
    let var_1 = Struct_4(func_4(func_1(_wgslsmith_f_op_f32(round(-2065f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, -346f, 842f, 789f)))))), vec4<i32>(u_input.a.x, select(u_input.a.x, u_input.a.x, any(vec3<bool>(true, false, true))), -2147483647i, -7606i) | -vec4<i32>(u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.d.x, 0i), vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i)), _wgslsmith_dot_vec3_i32(u_input.d, u_input.d)));
    var var_2 = Struct_4(var_1.a, vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x * var_1.b.x) + var_1.b.x))), var_1.b.x, var_1.b.x, 557f), reverseBits(select(var_1.c, ~(-vec4<i32>(-32248i, var_1.c.x, u_input.a.x, u_input.d.x)), any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true))))));
    var_2 = var_1;
    var var_3 = var_2.c.x;
    let var_4 = select(select(max(abs(vec3<i32>(u_input.a.x, var_1.c.x, var_2.c.x)), vec3<i32>(1i, var_2.c.x, 2147483647i)), select(~(-vec3<i32>(u_input.a.x, u_input.d.x, u_input.d.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, var_1.c.x, u_input.d.x), min(vec3<i32>(var_1.c.x, var_1.c.x, var_1.c.x), vec3<i32>(var_1.c.x, 5006i, u_input.d.x))), !(-1627i == u_input.d.x)), true), func_3(vec2<u32>(max(var_2.a.b.x >> (22920u % 32u), var_2.a.a.x | 1u), _wgslsmith_div_u32(5386u, 65242u) | func_4(Struct_2(var_2.a, Struct_1(u_input.b, u_input.c), Struct_1(vec4<u32>(53774u, var_0, 1u, 4294967295u), var_1.a.a))).a.x)).xwz, !all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)))));
    var_3 = _wgslsmith_div_i32(10146i, -_wgslsmith_clamp_i32(-2147483647i, ~var_4.x, 2147483647i));
    var_2 = Struct_4(func_1(_wgslsmith_div_f32(var_2.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-454f, var_1.b.x, false)), _wgslsmith_f_op_f32(var_2.b.x * 408f)))).c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, var_2.b.x, var_2.b.x, var_1.b.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.b) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.b.x, 1000f, 816f, -407f), vec4<f32>(var_1.b.x, var_2.b.x, -977f, var_2.b.x))) * var_2.b))), var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.xz, 329f, var_1.a.a.x >> (10069u % 32u));
}

