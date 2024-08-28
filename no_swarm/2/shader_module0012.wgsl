struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec3<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1994f, -1200f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -483f) - 1000f) - -1135f))));
    let var_1 = Struct_1(!(!vec2<bool>(!arg_1.x, arg_1.x)), false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1301f, _wgslsmith_f_op_f32(1f * var_0.x), _wgslsmith_f_op_f32(round(var_0.x)))), _wgslsmith_dot_vec3_i32(-(vec3<i32>(-1i) * -u_input.b), _wgslsmith_add_vec3_i32(~max(vec3<i32>(-2147483647i, 9089i, u_input.a.x), vec3<i32>(-2147483647i, u_input.b.x, u_input.a.x)), -_wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(0i, u_input.a.x, u_input.b.x)))));
    let var_2 = select(arg_1.zw, select(vec2<bool>(any(arg_1.xwy), (43666u <= arg_0) & any(arg_1)), select(vec2<bool>(true, true), arg_1.xz, !(!arg_1.xz)), vec2<bool>(any(vec3<bool>(var_1.b, false, arg_1.x)), any(arg_1.ww))), var_1.a);
    var var_3 = select(vec2<bool>(true, true), arg_1.xz, !var_1.a);
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.c) - var_1.c);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -805f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x * 976f)))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, var_1.c.x)))))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: i32) -> vec3<f32> {
    let var_0 = _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(_wgslsmith_mult_u32(8554u, 44055u), 1u, ~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 0u, 25126u, u_input.c), vec4<u32>(u_input.c, 58891u, 29399u, 1u))), select(vec4<u32>(~1u, u_input.c, abs(69430u), u_input.c), select(select(vec4<u32>(4294967295u, 21244u, 0u, 70491u), vec4<u32>(4294967295u, u_input.c, 10635u, u_input.c), vec4<bool>(arg_0.a.x, true, arg_0.b, true)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.c, 4294967295u, 133859u), vec4<u32>(u_input.c, u_input.c, u_input.c, 16551u)), !vec4<bool>(arg_0.a.x, arg_0.a.x, false, arg_0.b)), vec4<bool>(arg_0.b, true, arg_0.a.x | arg_0.b, arg_0.a.x))), ~vec4<u32>(14822u, _wgslsmith_add_u32(u_input.c >> (0u % 32u), min(1u, u_input.c)), u_input.c, ~54205u));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)), arg_0.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1149f, arg_0.c.x))))))), arg_1.x);
    let var_2 = vec4<f32>(426f, _wgslsmith_f_op_f32(func_3(4294967295u, select(!vec4<bool>(false, arg_0.a.x, false, arg_0.a.x), vec4<bool>(true, !arg_0.b, true, !arg_0.b), arg_0.b))), arg_0.c.x, -584f);
    var var_3 = arg_0.d;
    let var_4 = arg_0;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(var_4.c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.zwx - vec3<f32>(-1231f, var_2.x, arg_0.c.x)), _wgslsmith_f_op_vec3_f32(var_2.xzy + vec3<f32>(var_2.x, arg_0.c.x, -553f)))))));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_1(vec2<bool>(arg_2.b, true), arg_0.a.x, _wgslsmith_f_op_vec3_f32(-arg_2.c), arg_0.d);
    var_0 = arg_0;
    var_0 = Struct_1(arg_2.a, !(!((true | arg_0.b) == (arg_0.d > 27187i))), _wgslsmith_f_op_vec3_f32(-arg_3.xxz), -2154i);
    var_0 = arg_0;
    var_0 = arg_0;
    return Struct_1(vec2<bool>(_wgslsmith_f_op_f32(-787f - -1984f) <= arg_2.c.x, arg_0.b || arg_2.b), var_0.a.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(arg_0.c.x, arg_2.c.x)), _wgslsmith_div_f32(arg_0.c.x, _wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1362f))) - arg_2.c), 2147483647i);
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    let var_0 = vec2<i32>(countOneBits(u_input.a.x | min(u_input.a.x, u_input.b.x)), _wgslsmith_div_i32(~u_input.a.x, u_input.a.x));
    let var_1 = reverseBits(u_input.a.wwz);
    let var_2 = 778f;
    var var_3 = func_4(Struct_1(vec2<bool>(all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true))), any(vec2<bool>(true, false))), !all(vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-843f, _wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(-var_2)) + _wgslsmith_f_op_vec3_f32(func_2(Struct_1(vec2<bool>(true, true), true, vec3<f32>(var_2, var_2, 1454f), u_input.a.x), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(750f, var_2, -1073f, var_2))), -u_input.b.x))), 15536i), ~31849u, Struct_1(vec2<bool>(true, true), all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))), _wgslsmith_f_op_vec3_f32(func_2(Struct_1(select(vec2<bool>(false, true), vec2<bool>(false, true), false), all(vec2<bool>(true, false)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, var_2, var_2))), -1i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-928f, var_2, var_2, -2130f) + vec4<f32>(var_2, var_2, -123f, var_2)) * vec4<f32>(-1016f, var_2, var_2, 931f)), ~_wgslsmith_mod_i32(u_input.a.x, u_input.b.x))), -var_0.x << (_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(u_input.c, u_input.c, 4294967295u)), min(u_input.c, 64063u)) % 32u)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-618f, var_2, -1000f, var_2), vec4<f32>(var_2, var_2, 1417f, var_2)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, -302f, var_2, var_2))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(2678f, 2005f, 409f, 857f), vec4<f32>(var_2, var_2, var_2, 277f)))))));
    var var_4 = _wgslsmith_f_op_f32(-var_3.c.x);
    return 8248u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(func_1(vec3<u32>(u_input.c >> (u_input.c % 32u), u_input.c, 1u)), _wgslsmith_sub_u32(abs(0u), u_input.c), firstTrailingBit(_wgslsmith_clamp_u32(~u_input.c | 1u, ~u_input.c, 1u)));
    let var_1 = u_input.a;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1074f, -506f, true))) + _wgslsmith_f_op_f32(func_3(~u_input.c & var_0.x, vec4<bool>(true, true, true, true)))) + _wgslsmith_f_op_f32(round(987f)));
    var var_3 = func_4(Struct_1(vec2<bool>(all(vec2<bool>(true, true)), true), _wgslsmith_mult_i32(var_1.x, _wgslsmith_mod_i32(u_input.b.x, 1i)) == ~u_input.b.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, _wgslsmith_f_op_f32(f32(-1f) * -1307f), 956f)), u_input.a.x), 0u, Struct_1(vec2<bool>(var_0.x < 7854u, any(vec3<bool>(true, true, true))), (~u_input.a.x >= var_1.x) & all(vec4<bool>(true, false, false, false)), vec3<f32>(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(313f))), -938f), i32(-1i) * -func_4(Struct_1(vec2<bool>(true, true), true, vec3<f32>(1130f, 1724f, -875f), 34942i), 42320u, Struct_1(vec2<bool>(true, true), true, vec3<f32>(-1010f, var_2, 1040f), -2147483647i), vec4<f32>(-314f, -158f, 768f, var_2)).d), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-439f, var_2, _wgslsmith_f_op_f32(-var_2), -775f), vec4<f32>(1000f, -1982f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(277f + 1996f), _wgslsmith_div_f32(-993f, var_2)), _wgslsmith_f_op_f32(abs(441f))))));
    let var_4 = Struct_1(select(select(vec2<bool>(false, false), func_4(Struct_1(var_3.a, var_3.a.x, vec3<f32>(1047f, 579f, var_2), u_input.a.x), abs(0u), func_4(Struct_1(vec2<bool>(var_3.b, true), true, vec3<f32>(var_2, 1275f, 251f), -1i), var_0.x, Struct_1(var_3.a, var_3.a.x, vec3<f32>(2055f, -550f, 102f), var_1.x), vec4<f32>(2160f, -1557f, var_3.c.x, var_3.c.x)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2, -625f, 1013f, -1177f)))).a, vec2<bool>(var_3.c.x >= var_2, all(vec3<bool>(var_3.b, true, var_3.a.x)))), vec2<bool>(var_3.a.x, !(!var_3.a.x)), var_3.a.x), !(u_input.c != _wgslsmith_div_u32(var_0.x, 7695u)), vec3<f32>(var_3.c.x, _wgslsmith_f_op_f32(step(-277f, _wgslsmith_div_f32(-2332f, _wgslsmith_f_op_f32(-729f + 567f)))), var_3.c.x), u_input.a.x);
    var_3 = var_4;
    let var_5 = Struct_1(var_3.a, ((31803i | var_1.x) >> (var_0.x % 32u)) < -1i, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2 * _wgslsmith_div_f32(-1181f, var_2)), _wgslsmith_f_op_f32(-301f + _wgslsmith_f_op_f32(func_3(10104u, vec4<bool>(true, false, false, var_4.a.x))))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_3.c.x, _wgslsmith_f_op_f32(max(-2816f, -492f))))), var_2), -var_3.d);
    var_3 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u >> (u_input.c % 32u));
}

