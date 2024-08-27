struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: i32,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: u32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: vec3<f32>,
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<i32>) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-169f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(635f)))))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(520f)))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-var_0), firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(~1u, ~1u), vec2<u32>(_wgslsmith_mult_u32(u_input.b, 1u), 3730u))), min(_wgslsmith_add_i32(-30936i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(arg_0.ww, vec2<i32>(u_input.a.x, 54025i)), abs(u_input.c))), ~firstTrailingBit(firstTrailingBit(1i))), select(select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), false), select(vec2<bool>(arg_0.x <= 39091i, false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(all(vec2<bool>(false, false)), true)), true), Struct_1(2184i <= _wgslsmith_sub_i32(i32(-1i) * -52022i, -arg_0.x), abs(~_wgslsmith_clamp_vec2_i32(arg_1.yy, arg_0.yx, arg_1.yw)), reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(7581i, -2147483647i) & vec2<i32>(arg_1.x, u_input.c), vec2<i32>(u_input.c, u_input.a.x))), var_0));
    var var_2 = false;
    var_2 = (countOneBits(-9391i & -arg_0.x) | _wgslsmith_mod_i32(-19550i, ~_wgslsmith_dot_vec2_i32(arg_1.xy, vec2<i32>(arg_0.x, -23215i)))) < select(~(-1i), ~min(_wgslsmith_mult_i32(u_input.c, -1i), 43172i), true);
    var_2 = (((_wgslsmith_dot_vec4_u32(vec4<u32>(51571u, 28415u, 4294967295u, u_input.b), vec4<u32>(var_1.b, u_input.b, 30521u, 4294967295u)) > (4294967295u | var_1.b)) | var_1.e.a) || var_1.d.x) != true;
    return _wgslsmith_add_vec2_i32(abs(~_wgslsmith_div_vec2_i32(vec2<i32>(var_1.c, u_input.c), var_1.e.c)) & vec2<i32>(_wgslsmith_add_i32(-14007i, ~var_1.c), -2147483647i), (arg_0.zy << (_wgslsmith_add_vec2_u32(~vec2<u32>(var_1.b, var_1.b), vec2<u32>(u_input.b, var_1.b)) % vec2<u32>(32u))) << (vec2<u32>(reverseBits(u_input.b), 24506u) % vec2<u32>(32u)));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec3<bool>) -> u32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - arg_0.d), _wgslsmith_f_op_f32(f32(-1f) * -298f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.d * _wgslsmith_f_op_f32(arg_0.d - arg_0.d)), 296f)));
    let var_1 = Struct_1(arg_1, _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a.zz ^ ~u_input.a.xx, _wgslsmith_mult_vec2_i32(arg_0.b, vec2<i32>(arg_0.c.x, 34510i)) << (min(vec2<u32>(73647u, u_input.b), vec2<u32>(u_input.b, 0u)) % vec2<u32>(32u))), vec2<i32>(arg_0.b.x, -1i)), vec2<i32>(0i, -1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1390f))));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(trunc(265f)), Struct_2(2147483647i, any(!select(vec4<bool>(true, var_1.a, arg_0.a, arg_1), vec4<bool>(false, arg_1, arg_0.a, arg_0.a), true))), u_input.b);
    let var_3 = 1i;
    return _wgslsmith_sub_u32(~u_input.b, 46868u);
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(~(~u_input.b) | u_input.b, u_input.b | 32325u), vec2<u32>(4294967295u, firstTrailingBit(~11850u) << (~1u % 32u)));
    let var_1 = ~(~func_4(Struct_1(true, -u_input.a.yy, func_3(vec4<i32>(19122i, u_input.a.x, u_input.c, 1i), vec4<i32>(16325i, u_input.a.x, u_input.c, 0i)), _wgslsmith_f_op_f32(sign(-1752f))), arg_0 < _wgslsmith_f_op_f32(step(1077f, 966f)), vec3<bool>(false, any(vec3<bool>(true, true, false)), u_input.c < 63034i)));
    var var_2 = Struct_5(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(1u, u_input.b), u_input.b, u_input.b >> (u_input.b % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(23066u, var_0.x, 3239u, var_0.x), vec4<u32>(u_input.b, var_1, 43224u, 48209u))), vec4<u32>(~u_input.b, ~u_input.b, _wgslsmith_add_u32(1u, 0u), ~u_input.b))));
    var_2 = Struct_5(var_0.x);
    var_2 = Struct_5(4793u);
    return Struct_1(all(vec2<bool>(true, any(vec2<bool>(true, true)))), ~abs(select(u_input.a.yx, vec2<i32>(-21518i, 1i), true) ^ vec2<i32>(u_input.c, u_input.c)), -_wgslsmith_mod_vec2_i32(min(_wgslsmith_add_vec2_i32(vec2<i32>(53662i, -2147483647i), vec2<i32>(-10776i, u_input.a.x)), -vec2<i32>(-53028i, 0i)), vec2<i32>(-u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -24379i), u_input.a.zy))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0))));
}

fn func_1() -> Struct_2 {
    var var_0 = func_2(910f);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.d))), _wgslsmith_f_op_f32(func_2(509f).d * var_0.d)))), _wgslsmith_f_op_f32(select(-544f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d * 277f) - _wgslsmith_f_op_f32(ceil(var_0.d)))), true)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_0.d, var_1.x, 939f) + _wgslsmith_div_vec4_f32(vec4<f32>(-1121f, var_1.x, -1232f, var_1.x), vec4<f32>(158f, 1000f, var_1.x, 152f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(375f, var_0.d, 1879f, -683f)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-423f, 1149f, -601f, -344f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.x, var_1.x, 1816f, var_0.d), vec4<f32>(2769f, 1042f, var_1.x, var_1.x)))), !(false || var_0.a)))));
    let var_3 = Struct_5(firstLeadingBit(abs(_wgslsmith_sub_u32(0u, u_input.b))) & max(u_input.b, u_input.b));
    var var_4 = func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-416f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.d)))), -984f, var_0.a))).d;
    return Struct_2(var_0.c.x, var_0.a);
}

fn func_5(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-945f)) + 1081f)))), 1u, arg_1.a, vec2<bool>(arg_1.b && arg_1.b, arg_1.b), func_2(-1130f));
    var var_1 = -1i;
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-1494f - 477f), Struct_2(_wgslsmith_div_i32(_wgslsmith_mult_i32(arg_0, min(8219i, -56116i)), u_input.a.x), arg_1.b), 4294967295u);
    var_1 = arg_1.a >> (11660u % 32u);
    var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) - _wgslsmith_f_op_f32(-var_2.a))))), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(1u, u_input.b), countOneBits(9931u)), u_input.b), ~select(~vec2<u32>(0u, 4294967295u), vec2<u32>(27565u, u_input.b) >> (vec2<u32>(25387u, 44890u) % vec2<u32>(32u)), !var_2.b.b)), _wgslsmith_dot_vec3_i32(u_input.a, ~vec3<i32>(arg_1.a, var_0.c, 0i)), vec2<bool>(false, true), func_2(846f));
    return func_1();
}

fn func_6(arg_0: bool, arg_1: Struct_4, arg_2: vec3<f32>, arg_3: i32) -> Struct_5 {
    let var_0 = arg_2.yy;
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(303f, _wgslsmith_f_op_f32(ceil(arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.x))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-778f + -459f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(arg_1.a + 1012f)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1309f + arg_1.a))))));
    let var_2 = _wgslsmith_mult_u32(u_input.b, ~1u);
    let var_3 = Struct_3(_wgslsmith_f_op_f32(sign(466f)), countOneBits(~(~(30553u >> (0u % 32u)))), arg_3, !select(!select(vec2<bool>(false, false), vec2<bool>(false, false), arg_1.b.b), vec2<bool>(func_1().b, true), vec2<bool>(any(vec2<bool>(arg_0, true)), any(vec3<bool>(arg_1.b.b, false, arg_0)))), func_2(_wgslsmith_f_op_f32(ceil(var_1.x))));
    var var_4 = ~(min(~vec2<u32>(1u, 44324u), ~vec2<u32>(5378u, arg_1.c)) ^ firstTrailingBit(vec2<u32>(var_3.b, 65089u) & vec2<u32>(4294967295u, 1u))) >> (vec2<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_1.c, 63878u, 0u, 60021u)), vec4<u32>(37627u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_1.c, arg_1.c, 24433u), vec4<u32>(85448u, 73592u, 4955u, var_2)), u_input.b << (var_2 % 32u), 16613u)), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.b, 0u, var_3.b, 36922u), vec4<u32>(4294967295u, 80616u, 18740u, arg_1.c)), firstTrailingBit(arg_1.c), u_input.b), vec3<u32>(countOneBits(35128u), u_input.b << (45681u % 32u), u_input.b))) % vec2<u32>(32u));
    return Struct_5(104971u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1332f, 228f), vec2<f32>(-1000f, 1862f), false)) - vec2<f32>(684f, -1394f))))));
    let var_1 = func_6(true, Struct_4(440f, func_5(firstLeadingBit(_wgslsmith_add_i32(1i, 1i)), func_1()), 11976u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(458f * var_0.x))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(244f))))), select(-u_input.a.x, _wgslsmith_add_i32(u_input.a.x, -1i), all(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true)))));
    let var_2 = Struct_1(!all(vec2<bool>(true, true)), -((-u_input.a.xz >> (vec2<u32>(var_1.a, var_1.a) % vec2<u32>(32u))) ^ u_input.a.yz), _wgslsmith_sub_vec2_i32(u_input.a.zy, countOneBits(~func_3(vec4<i32>(-9890i, u_input.a.x, 57300i, u_input.a.x), vec4<i32>(u_input.c, 0i, u_input.a.x, -1i)))), -1000f);
    var var_3 = Struct_5(_wgslsmith_mult_u32(~(~u_input.b), var_1.a));
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1226f))), -1412f))), 1344f);
    var_3 = var_1;
    var var_5 = 1i;
    let var_6 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -576f), -1402f)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -726f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(var_4.x * 496f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(-26756i, select(~abs(vec3<u32>(32995u, var_3.a, var_1.a) ^ vec3<u32>(var_1.a, u_input.b, 4294967295u)), ~(vec3<u32>(0u, var_3.a, 1u) | ~vec3<u32>(0u, 31798u, 63550u)), !select(!vec3<bool>(var_2.a, true, true), vec3<bool>(var_2.a, var_2.a, var_2.a), true)), _wgslsmith_f_op_f32(-var_6.x), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_4.x, var_4.x))), 318f, _wgslsmith_f_op_f32(abs(-745f))))));
}

