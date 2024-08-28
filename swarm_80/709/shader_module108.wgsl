struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: Struct_2,
    d: i32,
    e: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: vec3<i32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: f32) -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2062f, _wgslsmith_f_op_f32(arg_0 + arg_0), 1181f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-553f, 876f, arg_0) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, -659f) + vec3<f32>(230f, arg_0, arg_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-700f, -233f, -2237f)), true))), !(17590u != abs(u_input.d.x)))), _wgslsmith_div_f32(-568f, arg_0), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(399f, arg_0, -271f, arg_0)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, 755f, 878f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1124f, 1318f, arg_0, 816f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(535f, 1511f, -291f, -183f))))))));
    var var_1 = _wgslsmith_mod_u32(~u_input.d.x, 1u);
    var var_2 = ~abs(vec2<u32>(_wgslsmith_dot_vec3_u32(select(u_input.d.wyw, vec3<u32>(u_input.d.x, 9732u, u_input.d.x), true), vec3<u32>(0u, u_input.d.x, 113770u)), ~(43180u | u_input.d.x)));
    var var_3 = select(select(!vec2<bool>(u_input.c == u_input.b, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(true, true, false)), false), !(!select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(false, true))), vec2<bool>(-reverseBits(u_input.a) > select(u_input.a, i32(-1i) * -52614i, all(vec4<bool>(false, true, false, true))), !(~1u < (var_2.x << (7463u % 32u)))));
    return !vec2<bool>(var_3.x || true, any(select(vec3<bool>(var_3.x, true, var_3.x), vec3<bool>(true, false, var_3.x), var_3.x)));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: vec2<bool>) -> vec2<i32> {
    var var_0 = _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(-max(~vec3<i32>(-3486i, 0i, 22728i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, -1i, u_input.b), vec3<i32>(2147483647i, -1i, u_input.a))), vec3<i32>(i32(-1i) * -38993i, u_input.b, -25337i)), ~vec3<i32>(-1i, 32012i, ~1i));
    var var_1 = arg_1 & u_input.d.x;
    let var_2 = ~vec3<i32>(-2221i, ~(-_wgslsmith_mod_i32(29962i, 28992i)), _wgslsmith_sub_i32(u_input.a, u_input.b));
    var var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1344f - -1522f))), arg_2, _wgslsmith_f_op_f32(trunc(-141f))), _wgslsmith_f_op_f32(-2050f * arg_0.b), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1126f, arg_2, false)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(464f, -924f)), _wgslsmith_f_op_f32(-arg_2), arg_2 > arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x))));
    var var_4 = Struct_4(Struct_3(vec2<f32>(_wgslsmith_f_op_f32(max(-437f, arg_0.c.x)), -1442f), select(u_input.d, ~vec4<u32>(arg_1, 59707u, u_input.d.x, 1u), all(vec3<bool>(arg_3.x, arg_3.x, true))) << (~select(u_input.d, vec4<u32>(9188u, u_input.d.x, 0u, u_input.d.x), vec4<bool>(arg_3.x, false, true, arg_3.x)) % vec4<u32>(32u)), Struct_2(arg_0, arg_0, 2147483647i, Struct_1(vec3<f32>(832f, 1000f, arg_0.c.x), -217f, var_3.c)), -1i, ~1u), _wgslsmith_add_vec3_u32(~(~(~vec3<u32>(u_input.d.x, u_input.d.x, 3288u))), ~u_input.d.zzw));
    return var_0.zy;
}

fn func_2(arg_0: Struct_4, arg_1: u32, arg_2: u32, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1629f - 1183f), -1000f), vec2<f32>(_wgslsmith_div_f32(486f, arg_3.x), arg_3.x))), abs(~vec4<u32>(20228u, 1u, arg_0.a.b.x, 80397u) & _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.b.x, 21381u, arg_0.a.b.x, arg_2), ~vec4<u32>(arg_2, arg_2, 1639u, 7235u))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.c.b.b, arg_3.x, 1395f)), _wgslsmith_f_op_f32(arg_0.a.a.x * 204f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-764f, 1696f, arg_0.a.c.d.c.x, 188f), arg_0.a.c.d.c, false)), vec4<f32>(arg_0.a.a.x, arg_0.a.a.x, arg_3.x, -342f), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true)))), arg_0.a.c.d, u_input.a ^ 6320i, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-907f, -162f, arg_0.a.c.d.b) + vec3<f32>(arg_3.x, 507f, 1000f)), arg_3.x, vec4<f32>(_wgslsmith_div_f32(-1188f, 198f), _wgslsmith_f_op_f32(-1000f + arg_0.a.a.x), 272f, _wgslsmith_f_op_f32(-1000f - arg_3.x)))), firstLeadingBit(~u_input.a), 0u);
    var var_1 = vec2<i32>(-1644i, countOneBits(_wgslsmith_mult_i32(u_input.b, arg_0.a.d)));
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(floor(-1000f)), arg_3.x, arg_3.x), -895f, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.a.x, -588f, 627f, -561f) - _wgslsmith_f_op_vec4_f32(var_0.c.a.c + var_0.c.a.c))), _wgslsmith_f_op_vec4_f32(-arg_0.a.c.d.c))));
    var_1 = ~(~func_4(arg_0.a.c.a, u_input.d.x, arg_3.x, select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), func_3(1317f))));
    var var_3 = -7068i;
    return Struct_1(vec3<f32>(_wgslsmith_div_f32(283f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.c.x)) * _wgslsmith_f_op_f32(step(1000f, var_0.a.x)))), _wgslsmith_div_f32(var_2.c.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_2.c.x, -523f, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -768f)) * -361f), arg_0.a.c.b.c);
}

fn func_5(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: Struct_5) -> vec4<u32> {
    let var_0 = _wgslsmith_dot_vec3_u32(u_input.d.yzz, ~(~arg_0.a.b.xyz));
    let var_1 = arg_2.a.a.x;
    let var_2 = firstTrailingBit(arg_0.a.b.x);
    let var_3 = -1587f;
    let var_4 = arg_2.d;
    return vec4<u32>(~arg_0.a.b.x, _wgslsmith_div_u32(~(~_wgslsmith_mod_u32(arg_2.d.e, u_input.d.x)), 23423u), var_0, ~abs(countOneBits(1u)));
}

fn func_6(arg_0: vec3<u32>, arg_1: bool, arg_2: vec2<i32>, arg_3: vec4<u32>) -> Struct_2 {
    var var_0 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.x, u_input.a >> (_wgslsmith_clamp_u32(arg_3.x, 0u, arg_0.x) % 32u), i32(-1i) * -u_input.b, u_input.c), vec4<i32>(max(_wgslsmith_mod_i32(arg_2.x, 1i), -32499i), u_input.c, ~(~u_input.a), _wgslsmith_dot_vec2_i32(-arg_2, vec2<i32>(arg_2.x, -40599i)))), ~arg_2.x, max(~arg_2.x, u_input.c), firstTrailingBit(-arg_2.x ^ _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(arg_2, vec2<i32>(arg_2.x, arg_2.x)), _wgslsmith_add_i32(36900i, arg_2.x))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(682f, 960f, -1205f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-518f)))) - -808f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(373f, -856f, -158f, -327f), vec4<f32>(731f, -1860f, -1269f, 1807f)))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-132f, -331f, -1414f, -883f)))))), func_2(Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-199f, 1335f)), _wgslsmith_clamp_vec4_u32(arg_3, arg_3, arg_3), Struct_2(Struct_1(vec3<f32>(-837f, 184f, 976f), -715f, vec4<f32>(773f, 710f, 1342f, -204f)), Struct_1(vec3<f32>(-393f, -1195f, -1513f), -960f, vec4<f32>(-689f, -505f, -282f, 1177f)), arg_2.x, Struct_1(vec3<f32>(355f, 290f, 722f), 611f, vec4<f32>(383f, 250f, 836f, 1048f))), u_input.c & arg_2.x, ~47334u), _wgslsmith_mult_vec3_u32(max(vec3<u32>(arg_0.x, 77381u, u_input.d.x), arg_0), firstLeadingBit(u_input.d.zyx))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.x, arg_3.x, 41647u, arg_3.x), ~vec4<u32>(u_input.d.x, 4294967295u, 0u, 0u)), _wgslsmith_mod_u32(~_wgslsmith_div_u32(arg_0.x, u_input.d.x), 66413u), vec2<f32>(1f, 1f)), _wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_mod_i32(abs(arg_2.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 1i, -8846i, var_0.x), vec4<i32>(26734i, 24216i, arg_2.x, -1i))), _wgslsmith_sub_i32(var_0.x, 1i)), 0i >> (~arg_0.x % 32u)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(650f, 439f)), -233f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), 1241f, vec4<f32>(2128f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1130f, 532f), _wgslsmith_f_op_f32(floor(605f)))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -352f)), -1511f)));
    let var_2 = abs(~countOneBits(u_input.d));
    var var_3 = Struct_2(func_2(Struct_4(Struct_3(vec2<f32>(-2104f, -524f), ~u_input.d, Struct_2(Struct_1(var_1.d.c.zwx, -1000f, vec4<f32>(var_1.b.b, var_1.a.a.x, -1239f, var_1.d.a.x)), var_1.b, 0i, Struct_1(vec3<f32>(592f, -248f, -963f), var_1.a.c.x, var_1.d.c)), i32(-1i) * -807i, 88023u), ~(~var_2.zzz)), 1u, arg_3.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.c.x, var_1.b.a.x))))), func_2(Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(var_1.b.a.xz * vec2<f32>(643f, -188f)), _wgslsmith_mult_vec4_u32(u_input.d, var_2), Struct_2(Struct_1(var_1.b.c.xyx, 223f, vec4<f32>(1000f, -829f, -1380f, var_1.d.c.x)), var_1.d, arg_2.x, var_1.d), -u_input.a, 89725u), u_input.d.yyx), 18926u, arg_0.x, _wgslsmith_f_op_vec2_f32(-var_1.b.a.zx)), var_1.c, var_1.a);
    let var_4 = _wgslsmith_f_op_vec3_f32(round(var_3.b.c.wzz));
    return Struct_2(func_2(Struct_4(Struct_3(var_1.d.a.yx, ~var_2, Struct_2(Struct_1(var_4, var_3.b.a.x, vec4<f32>(-1108f, var_4.x, 592f, 460f)), var_1.d, 11633i, Struct_1(vec3<f32>(var_3.b.b, 212f, var_3.d.c.x), var_1.b.c.x, var_3.d.c)), -1i, var_2.x), vec3<u32>(reverseBits(20735u), _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(4294967295u, 10406u, 49257u, 13494u)), 0u)), var_2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(50569u, arg_3.x) | arg_3.zw, vec2<u32>(0u, 0u) << (_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.x, u_input.d.x), arg_3.wz) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(var_4.zx * vec2<f32>(1000f, var_1.a.c.x)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))), Struct_1(var_4, var_3.d.b, _wgslsmith_div_vec4_f32(vec4<f32>(750f, var_1.b.b, var_1.d.a.x, _wgslsmith_f_op_f32(max(var_1.b.b, var_3.b.c.x))), _wgslsmith_f_op_vec4_f32(abs(var_3.d.c)))), _wgslsmith_dot_vec4_i32(min(~vec4<i32>(var_3.c, -48588i, 1i, -30156i), vec4<i32>(var_3.c >> (0u % 32u), -arg_2.x, -1i, abs(-2147483647i))), vec4<i32>(abs(arg_2.x), 1i, ~0i, u_input.a)), var_3.a);
}

fn func_1(arg_0: f32, arg_1: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_0)))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_div_f32(arg_0, -1000f));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2028f - -642f) + _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -861f)))), _wgslsmith_div_f32(arg_0, -610f)));
    var_1 = arg_0;
    let var_2 = func_6(u_input.d.xwy, false, vec2<i32>(-1i, u_input.c), _wgslsmith_mod_vec4_u32(~u_input.d, func_5(Struct_4(Struct_3(vec2<f32>(arg_0, arg_0), u_input.d, Struct_2(Struct_1(vec3<f32>(-356f, arg_0, 1938f), arg_0, vec4<f32>(408f, -1023f, -1112f, arg_0)), Struct_1(vec3<f32>(-1363f, arg_0, 495f), 599f, vec4<f32>(-1026f, -1570f, 451f, -1464f)), u_input.a, Struct_1(vec3<f32>(170f, 1263f, arg_0), arg_0, vec4<f32>(arg_0, 1390f, 2070f, -480f))), u_input.c, 22317u), vec3<u32>(arg_1, 0u, 4294967295u) ^ vec3<u32>(0u, 45524u, 120297u)), select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), 47400u <= u_input.d.x), Struct_5(func_2(Struct_4(Struct_3(vec2<f32>(-848f, arg_0), vec4<u32>(u_input.d.x, arg_1, 1u, 18898u), Struct_2(Struct_1(vec3<f32>(arg_0, -318f, 301f), arg_0, vec4<f32>(arg_0, -1477f, 1000f, -183f)), Struct_1(vec3<f32>(arg_0, 455f, 319f), arg_0, vec4<f32>(862f, arg_0, 327f, arg_0)), 54111i, Struct_1(vec3<f32>(-1901f, -292f, arg_0), 313f, vec4<f32>(569f, -1439f, 1272f, 1965f))), 1i, 9364u), vec3<u32>(11447u, arg_1, arg_1)), arg_1, arg_1, vec2<f32>(arg_0, arg_0)), -u_input.a, abs(vec3<i32>(u_input.b, u_input.c, 2147483647i)), Struct_3(vec2<f32>(904f, -593f), vec4<u32>(19894u, arg_1, 42500u, arg_1), Struct_2(Struct_1(vec3<f32>(-339f, arg_0, -1495f), 1395f, vec4<f32>(arg_0, 721f, arg_0, arg_0)), Struct_1(vec3<f32>(1684f, arg_0, arg_0), -1741f, vec4<f32>(arg_0, arg_0, 1000f, 1704f)), 11708i, Struct_1(vec3<f32>(-799f, 389f, 125f), -552f, vec4<f32>(910f, arg_0, 902f, arg_0))), u_input.a, 55730u)))));
    let var_3 = Struct_5(var_2.d, u_input.a, vec3<i32>(-1i) * -vec3<i32>(u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.c, var_2.c, 8387i), vec3<i32>(u_input.a, 55616i, -1i)), -var_2.c), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.d.a.yy - _wgslsmith_f_op_vec2_f32(-var_2.b.a.yy))), abs(u_input.d), var_2, 0i, ~max(54217u, reverseBits(46128u))));
    return var_3.d.c;
}

fn func_7(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: Struct_2) -> StorageBuffer {
    return StorageBuffer(-u_input.c, arg_2.c, _wgslsmith_f_op_f32(arg_1.x * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.x)) - func_2(Struct_4(Struct_3(vec2<f32>(arg_1.x, arg_1.x), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, arg_0.x), Struct_2(arg_2.a, Struct_1(vec3<f32>(arg_2.a.a.x, arg_1.x, -145f), -768f, vec4<f32>(arg_2.a.c.x, arg_2.d.c.x, 1028f, arg_1.x)), arg_2.c, arg_2.b), u_input.a, 0u), vec3<u32>(arg_0.x, 35247u, 1u)), ~4294967295u, 4294967295u, vec2<f32>(arg_1.x, 1019f)).c.x) + arg_1.x), select(firstLeadingBit(abs(arg_0.x)), ~u_input.d.x, !(any(vec3<bool>(false, false, true)) || true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec4_u32(~(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 1u), u_input.d) >> (~vec4<u32>(48908u, 8816u, u_input.d.x, 68703u) % vec4<u32>(32u))), u_input.d);
    let x = u_input.a;
    s_output = func_7(~(~u_input.d.ywx), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-587f, 1000f, -886f, -289f))), vec4<f32>(-1000f, -1217f, -109f, 845f)) - vec4<f32>(-777f, _wgslsmith_div_f32(-442f, -116f), _wgslsmith_f_op_f32(f32(-1f) * -1003f), _wgslsmith_f_op_f32(select(153f, 780f, false))))), func_1(_wgslsmith_f_op_f32(abs(641f)), ~u_input.d.x));
}

