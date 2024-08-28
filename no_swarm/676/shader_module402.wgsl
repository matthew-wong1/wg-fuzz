struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: i32) -> vec2<f32> {
    let var_0 = Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(-955f, -1532f), vec2<f32>(862f, -1401f))))))), arg_0, min(~select(vec2<i32>(arg_0, -36572i), abs(vec2<i32>(13588i, -2147483647i)), true), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-57120i, arg_0), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, u_input.d.x), u_input.d)), arg_0)), (_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.d.x, -2147483647i), ~u_input.a) | (i32(-1i) * -arg_0)) ^ -2147483647i);
    let var_1 = abs(vec3<u32>(abs(min(u_input.b.x, u_input.b.x)), 0u, _wgslsmith_add_u32(~u_input.b.x, ~u_input.b.x))) << (vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, u_input.c.x, 52911u, u_input.c.x), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 1u, 0u), ~vec4<u32>(u_input.c.x, 0u, 48261u, u_input.b.x))), ~(~864u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.c.x, 1536u), vec3<u32>(u_input.c.x, 1u, u_input.b.x)) % 32u)), ~(~u_input.c.x)) % vec3<u32>(32u));
    var var_2 = Struct_2(_wgslsmith_div_vec2_f32(var_0.b, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(-686f, var_0.b.x), _wgslsmith_f_op_vec2_f32(-var_0.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, var_0.b.x)) + var_0.b)))), _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1218f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1138f - var_0.b.x))))), max(_wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(-1702i, u_input.e.x, arg_0)) >> (select(vec3<u32>(var_1.x, 0u, 69004u), vec3<u32>(var_1.x, var_1.x, 4294967295u), vec3<bool>(var_0.a.x, var_0.a.x, false)) % vec3<u32>(32u)), vec3<i32>(arg_0, u_input.a, 18756i)), ~reverseBits(vec3<i32>(25351i, arg_0, u_input.a))));
    var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1909f, -425f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.a))), _wgslsmith_f_op_f32(-var_2.b), _wgslsmith_mod_vec3_i32(var_2.c, ~(-var_2.c) ^ _wgslsmith_div_vec3_i32(~vec3<i32>(arg_0, var_2.c.x, var_0.c), vec3<i32>(u_input.d.x, 1i, 5158i))));
    var var_3 = vec2<u32>(firstLeadingBit(abs(u_input.b.x)) << (_wgslsmith_mod_u32(_wgslsmith_mult_u32(38106u, 212u), ~u_input.c.x) % 32u), ~abs(0u)) & (u_input.b & (select(vec2<u32>(13909u, 1u) >> (vec2<u32>(4294967295u, u_input.c.x) % vec2<u32>(32u)), u_input.b, true) >> (u_input.b % vec2<u32>(32u))));
    return _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(round(var_2.b)), 1000f)));
}

fn func_2() -> f32 {
    var var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -172f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1900f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-300f + -1000f)) + _wgslsmith_f_op_f32(sign(1f)))), vec3<i32>(2147483647i, 0i, _wgslsmith_sub_i32(-1i, u_input.d.x)));
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, -1466f) + _wgslsmith_f_op_vec2_f32(var_0.a + var_0.a))))), _wgslsmith_f_op_f32(exp2(var_0.a.x)), vec3<i32>(41181i, var_0.c.x, -select(_wgslsmith_mult_i32(-2147483647i, var_0.c.x), -47232i, true)));
    var_0 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.b, var_0.b))) + vec2<f32>(616f, var_0.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(-2147483647i)))), _wgslsmith_div_f32(-897f, var_0.a.x), countOneBits(_wgslsmith_add_vec3_i32(var_0.c, vec3<i32>(min(var_0.c.x, 2147483647i), u_input.e.x << (0u % 32u), var_0.c.x))));
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-var_0.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b, var_0.a.x) + -1279f), vec3<i32>(_wgslsmith_clamp_i32(u_input.e.x, 212i, -2147483647i), ~min(_wgslsmith_sub_i32(-9431i, -9731i), 1i), reverseBits(-_wgslsmith_mod_i32(var_0.c.x, -1i))));
    let var_1 = Struct_1(select(select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, true)), vec2<bool>(true, false)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), true)), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true))), select(var_0.a.x == 244f, true, var_0.c.x > (u_input.e.x << (u_input.b.x % 32u)))), _wgslsmith_f_op_vec2_f32(ceil(var_0.a)), -30567i, -firstLeadingBit(vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.d, var_0.c.zy), 1i)), var_0.c.x);
    return var_0.a.x;
}

fn func_1(arg_0: vec4<i32>, arg_1: u32) -> Struct_1 {
    let var_0 = select(!vec4<bool>(true, any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), true, true), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), true));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(599f, -190f, 1000f), vec3<f32>(2957f, 1308f, -2078f))), vec3<f32>(-1458f, -772f, _wgslsmith_f_op_f32(func_2()))))) + vec3<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-2037f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-374f * 893f))), _wgslsmith_f_op_f32(1617f * -807f)));
    let var_2 = Struct_2(var_1.yz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -415f)), arg_0.ywy);
    return Struct_1(!var_0.zz, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_2.a))))), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -countOneBits(vec3<i32>(var_2.c.x, -20691i, -1i)), var_2.c), select(min(abs(vec2<i32>(u_input.d.x, u_input.a)) | u_input.e, vec2<i32>(1i, i32(-1i) * -1i)), abs(~vec2<i32>(-2147483647i, u_input.d.x)) >> ((vec2<u32>(1u, 93769u) << (u_input.b % vec2<u32>(32u))) % vec2<u32>(32u)), true), 24702i);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<bool>) -> bool {
    let var_0 = true;
    let var_1 = arg_1;
    var var_2 = func_1(countOneBits(-(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.c.x, -50643i, arg_0.e, var_1.c.x), vec4<i32>(-1i, var_1.c.x, -2147483647i, arg_0.e)) | vec4<i32>(var_1.c.x, arg_1.c.x, arg_0.c, 4157i))), _wgslsmith_add_u32(~44193u, 11568u)).a;
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, 591f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.b.x)) - 152f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.a.x), -623f)), true)), arg_1.c);
    var var_4 = _wgslsmith_f_op_f32(max(-395f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.b.x)))));
    return _wgslsmith_f_op_vec2_f32(func_3(21990i)).x < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!vec2<bool>(func_4(func_1(vec4<i32>(u_input.d.x, 27239i, u_input.d.x, 0i), 28133u), Struct_2(vec2<f32>(-149f, 573f), -207f, vec3<i32>(2147483647i, 2147483647i, 1i)), vec4<bool>(true, true, true, true)), func_4(func_1(vec4<i32>(u_input.a, -107733i, 34201i, -63429i), 78989u), Struct_2(vec2<f32>(531f, -1000f), -1470f, vec3<i32>(-17697i, u_input.d.x, u_input.d.x)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), true))), vec2<bool>(!any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), false)), true), (-1i | _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(14230i, u_input.d.x, 853i)), vec3<i32>(15622i, -2147483647i, -31841i) >> (vec3<u32>(17738u, u_input.c.x, u_input.b.x) % vec3<u32>(32u)))) >= ~((i32(-1i) * -39448i) ^ u_input.d.x));
    var_0 = !func_1(~vec4<i32>(u_input.d.x, 1i, 0i, abs(35499i)), u_input.c.x).a;
    var_0 = vec2<bool>(var_0.x, false);
    var_0 = func_1(vec4<i32>(-48467i, _wgslsmith_add_i32(-1i, _wgslsmith_div_i32(~u_input.d.x, _wgslsmith_sub_i32(u_input.e.x, -33787i))), countOneBits(min(firstTrailingBit(u_input.e.x), u_input.e.x)), max(~(~u_input.e.x), i32(-1i) * -u_input.e.x)), u_input.b.x).a;
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2140f, -876f, false))), _wgslsmith_f_op_f32(724f + _wgslsmith_f_op_f32(1310f * 1307f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-242f, -657f)))))), _wgslsmith_f_op_f32(func_2()), vec3<i32>(-func_1(vec4<i32>(u_input.d.x, -30731i, 0i, -68516i) ^ vec4<i32>(38386i, u_input.e.x, -19020i, 1i), u_input.b.x).c, u_input.e.x & 2147483647i, u_input.d.x));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(sign(-1304f)))));
    var_0 = select(select(select(select(vec2<bool>(var_0.x, true), !vec2<bool>(var_0.x, var_0.x), any(vec3<bool>(false, false, false))), vec2<bool>(true, var_0.x), true), vec2<bool>(var_0.x != true, false & var_0.x), func_1(countOneBits(vec4<i32>(var_1.c.x, var_1.c.x, var_1.c.x, 0i)) >> (vec4<u32>(4294967295u, u_input.b.x, 1u, u_input.b.x) % vec4<u32>(32u)), 52161u).a), vec2<bool>(!any(vec4<bool>(false, false, false, var_0.x)), var_0.x), !func_4(Struct_1(!vec2<bool>(var_0.x, false), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, 1000f) * var_2.xz), 42487i, var_1.c.xz, 1i), Struct_2(_wgslsmith_f_op_vec2_f32(-var_2.yx), _wgslsmith_f_op_f32(f32(-1f) * -947f), var_1.c >> (vec3<u32>(9155u, u_input.c.x, 0u) % vec3<u32>(32u))), !vec4<bool>(false, true, false, var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, vec4<f32>(-860f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(vec4<i32>(var_1.c.x, 2147483647i, u_input.a, var_1.c.x), u_input.c.x).b.x * var_1.a.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x + 497f) + _wgslsmith_f_op_f32(-305f + -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-476f * _wgslsmith_f_op_f32(select(var_2.x, -1000f, var_0.x))) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

