struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<i32>,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: Struct_2) -> i32 {
    var var_0 = vec2<f32>(409f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1229f))));
    let var_1 = _wgslsmith_mult_u32(arg_0.x, ~_wgslsmith_clamp_u32(20394u, ~u_input.b, firstLeadingBit(min(14831u, u_input.b))));
    let var_2 = Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-622f, var_0.x)))), vec3<i32>(1i, _wgslsmith_dot_vec2_i32(max(arg_1.b.yw << (u_input.e.xy % vec2<u32>(32u)), -arg_2.a.zy), ~vec2<i32>(arg_2.b.e.x, arg_1.a.e.x) ^ firstTrailingBit(arg_2.b.e.zz)), -2147483647i), -27143i ^ _wgslsmith_sub_i32(-arg_1.c, reverseBits(2330i ^ u_input.c)), arg_2.b.e);
    let var_3 = _wgslsmith_clamp_vec4_u32(~abs(~(arg_0 | vec4<u32>(28737u, 11678u, arg_0.x, 20131u))), ~firstLeadingBit(vec4<u32>(min(28036u, 0u), arg_2.d, 4294967295u, arg_0.x)), arg_0);
    var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.b))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b, var_0.x) + vec2<f32>(var_0.x, var_0.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, arg_1.a.b))), vec2<f32>(_wgslsmith_f_op_f32(sign(arg_1.a.b)), _wgslsmith_f_op_f32(step(-194f, var_0.x))), false)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -744f), _wgslsmith_f_op_f32(f32(-1f) * -1578f))))), arg_1.a.a));
    return reverseBits(2147483647i);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: bool) -> Struct_1 {
    var var_0 = u_input.a;
    var_0 = ~(~34266u);
    var_0 = ~_wgslsmith_mult_u32(~_wgslsmith_div_u32(27528u << (u_input.e.x % 32u), ~arg_1.x), u_input.a);
    var var_1 = 1i;
    var_1 = -1i;
    return Struct_1(!select(!select(vec2<bool>(false, arg_2), vec2<bool>(arg_2, true), vec2<bool>(arg_2, arg_2)), !vec2<bool>(arg_2, arg_2), !any(vec4<bool>(arg_2, arg_2, arg_2, true))), arg_0.x, ~(-(~_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, u_input.c), vec3<i32>(u_input.c, u_input.c, -1i), vec3<i32>(-2147483647i, 18567i, u_input.c)))), func_3(vec4<u32>(arg_1.x, u_input.e.x, _wgslsmith_add_u32(37168u, u_input.b), arg_1.x), Struct_4(Struct_1(!vec2<bool>(arg_2, arg_2), _wgslsmith_f_op_f32(step(661f, -1325f)), vec3<i32>(u_input.c, 54860i, u_input.c) >> (vec3<u32>(0u, u_input.d, arg_1.x) % vec3<u32>(32u)), -48912i, vec4<i32>(-26474i, u_input.c, -2147483647i, 37337i) >> (u_input.e % vec4<u32>(32u))), vec4<i32>(-64047i, firstTrailingBit(0i), reverseBits(1i), _wgslsmith_sub_i32(u_input.c, 2147483647i)), 8396i), Struct_2(vec3<i32>(u_input.c, 0i, u_input.c), Struct_1(!vec2<bool>(arg_2, false), arg_0.x, _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, u_input.c, 2147483647i), vec3<i32>(u_input.c, u_input.c, 72146i)), _wgslsmith_mod_i32(2147483647i, u_input.c), ~vec4<i32>(-13140i, u_input.c, u_input.c, u_input.c)), _wgslsmith_f_op_f32(-246f * _wgslsmith_f_op_f32(arg_0.x - arg_0.x)), ~125728u)), vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_div_i32(u_input.c, 5819i), 0i, _wgslsmith_sub_i32(0i, 0i), select(u_input.c, u_input.c, arg_2)));
}

fn func_1() -> Struct_3 {
    var var_0 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1703f, 513f))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-765f, 442f), -139f) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-105f, 1042f), vec2<f32>(1568f, 334f), false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(149f, -1669f) + vec2<f32>(1566f, 362f))))), (vec2<u32>(u_input.a, 6917u) | countOneBits(u_input.e.zz)) << (vec2<u32>(~20508u, u_input.e.x) % vec2<u32>(32u)), true);
    let var_1 = var_0.a.x;
    var var_2 = ~reverseBits(firstTrailingBit(_wgslsmith_div_u32(~u_input.d, abs(32383u))));
    var var_3 = var_0.e.x;
    var_2 = u_input.d;
    return Struct_3(0i);
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> f32 {
    var var_0 = Struct_2(vec3<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.c, u_input.c, arg_0.a, 0i)), vec4<i32>(-1i) * -vec4<i32>(arg_0.a, 1i, 25419i, 24932i)), func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, -1091f) - vec2<f32>(-1209f, arg_1)), ~vec2<u32>(25003u, 1700u), true).c.x << (~abs(u_input.a) % 32u), u_input.c), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1019f)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(909f, arg_1)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(805f, arg_1), vec2<f32>(arg_1, -571f))))), ~select(vec2<u32>(59300u, 0u), vec2<u32>(u_input.e.x, u_input.d), false) ^ u_input.e.xw, true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, 459f) + _wgslsmith_f_op_f32(-arg_1)) + arg_1))), 0u);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(max(arg_1, 1000f)), _wgslsmith_f_op_f32(step(-354f, _wgslsmith_div_f32(233f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-536f)))))));
    var_0 = Struct_2(var_0.a >> (vec3<u32>(u_input.e.x, ~firstTrailingBit(var_0.d), 0u) % vec3<u32>(32u)), var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), u_input.e.x);
    var var_2 = u_input.c;
    let var_3 = Struct_2(vec3<i32>(0i, func_1().a, -abs(-var_0.b.e.x)), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-443f, var_1.x) - var_1.xz))), abs(vec2<u32>(u_input.a, 63182u)), true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.b.b))), _wgslsmith_div_f32(-452f, arg_1))), var_0.d);
    return _wgslsmith_div_f32(arg_1, -1180f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -57474i;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -695f), _wgslsmith_f_op_f32(step(232f, 1000f)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1659f, 496f))) * 1348f));
    var_1 = _wgslsmith_f_op_f32(func_4(func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(475f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-257f)), -908f))))));
    let var_2 = vec2<bool>(select(true, false, true), false);
    var_1 = func_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1319f))) * _wgslsmith_div_f32(1f, func_2(vec2<f32>(601f, -1234f), u_input.e.yx, var_2.x).b)), _wgslsmith_f_op_f32(ceil(1f))), u_input.e.zy, select(true, any(!var_2), false)).b;
    let var_3 = Struct_4(func_2(vec2<f32>(-1952f, _wgslsmith_f_op_f32(f32(-1f) * -734f)), ~_wgslsmith_mult_vec2_u32(u_input.e.yx, u_input.e.zx), !var_2.x | true), vec4<i32>(-1i, -2147483647i, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, 0i) >> (u_input.e.zxz % vec3<u32>(32u)), -vec3<i32>(1i, -10525i, u_input.c)), -40649i >> (_wgslsmith_mult_u32(u_input.e.x, ~6001u) % 32u)), abs(-1i));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(7497i, var_0, 1i, 0i), var_3.b), -_wgslsmith_mult_i32(-1i, -2147483647i)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(492f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.a.b, 1645f) * _wgslsmith_f_op_f32(var_3.a.b + -688f))))), _wgslsmith_add_u32(abs(~u_input.d), ~_wgslsmith_add_u32(_wgslsmith_mult_u32(52828u, 692u), u_input.b | 25582u)), ~vec3<i32>(_wgslsmith_sub_i32(33571i | var_0, -8940i), -_wgslsmith_dot_vec2_i32(var_3.b.yy, vec2<i32>(var_0, u_input.c)), var_0), -201f);
}

