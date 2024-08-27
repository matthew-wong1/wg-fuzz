struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec2<bool> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f)));
    let var_0 = true;
    var var_1 = u_input.a.zx;
    var var_2 = ~(~2147483647i);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1030f * 228f))))), select(vec4<bool>(var_0, var_0, var_0, false), select(vec4<bool>(var_0, any(vec3<bool>(var_0, true, false)), all(vec4<bool>(var_0, var_0, var_0, true)), var_0), select(!vec4<bool>(true, false, true, var_0), !vec4<bool>(false, var_0, true, var_0), vec4<bool>(var_0, var_0, true, true)), !(!vec4<bool>(false, var_0, false, false))), vec4<bool>(any(select(vec2<bool>(false, var_0), vec2<bool>(var_0, var_0), vec2<bool>(var_0, false))), true, all(vec3<bool>(true, true, true)), var_0)), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(firstLeadingBit(_wgslsmith_add_vec3_u32(u_input.b.yzz, vec3<u32>(u_input.c.x, 71721u, u_input.b.x))), min(u_input.b.yzw, u_input.b.xwx)), u_input.c));
    return select(select(!select(var_3.b.wx, var_3.b.xy, var_1.x == -1i), vec2<bool>(var_0, !(!var_3.b.x)), select(vec2<bool>(true, true), !select(vec2<bool>(false, true), var_3.b.wz, vec2<bool>(var_0, var_3.b.x)), any(!var_3.b))), select(!vec2<bool>(u_input.b.x == 4294967295u, true), var_3.b.wy, select(!var_3.b.zw, vec2<bool>(true, true), select(vec2<bool>(var_3.b.x, false), vec2<bool>(var_0, var_0), false))), !var_3.b.wy);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: vec2<f32>) -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(max(1382f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) + arg_2.x)));
    let var_0 = u_input.b.wy;
    let var_1 = !(!any(func_3())) && all(select(select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), func_3()), vec2<bool>(true, true)));
    let var_2 = 13299i;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)));
    return Struct_2(min(_wgslsmith_clamp_i32(abs(min(0i, var_2)), var_2, _wgslsmith_clamp_i32(u_input.a.x, min(-1i, 45625i), u_input.a.x | -60501i)), _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.d | u_input.a.x, _wgslsmith_mult_i32(17154i, u_input.d)), 1i)), arg_1.x, _wgslsmith_dot_vec3_u32(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, u_input.c.x, u_input.c.x), vec3<u32>(25u, u_input.b.x, var_0.x), vec3<u32>(54085u, var_0.x, 4294967295u))), ~vec3<u32>(~1u, ~u_input.b.x, ~39871u)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec3<bool>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.b, arg_1.b, arg_2.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.b, arg_1.b, -1821f), vec3<f32>(-964f, arg_1.b, arg_1.b)) + vec3<f32>(arg_1.b, arg_1.b, arg_1.b)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b, arg_1.b, arg_2.b) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b, arg_1.b, arg_2.b) + vec3<f32>(938f, arg_1.b, arg_1.b))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, arg_2.b, -248f)) + _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.b, 1272f, arg_1.b), vec3<f32>(-2245f, -1524f, arg_1.b))))));
    global0 = arg_1.b;
    global0 = var_0.x;
    let var_1 = ~12532i;
    let var_2 = func_2(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.b + _wgslsmith_div_f32(2297f, 1097f)))), _wgslsmith_div_f32(_wgslsmith_div_f32(-860f, _wgslsmith_f_op_f32(var_0.x + 667f)), arg_1.b)), var_0.zz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.yz - vec2<f32>(arg_1.b, var_0.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, arg_2.b))))) - vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-704f)), arg_1.b)), _wgslsmith_f_op_f32(-487f - 927f))));
    return ~vec3<i32>(~max(24114i, -1i), _wgslsmith_add_i32(-2147483647i, _wgslsmith_mult_i32(-67061i, arg_0.b)) << (firstTrailingBit(arg_0.c.x) % 32u), 1i);
}

fn func_1(arg_0: vec4<i32>) -> Struct_2 {
    var var_0 = -_wgslsmith_add_vec3_i32(func_4(Struct_3(u_input.c.x, _wgslsmith_div_i32(7085i, u_input.a.x), firstLeadingBit(u_input.b.xyy)), Struct_2(countOneBits(u_input.a.x), _wgslsmith_f_op_f32(-495f - -179f), 19276u), func_2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1360f, -940f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-321f, -2257f)), vec2<f32>(-135f, 1530f)), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false)), _wgslsmith_div_vec3_i32(firstTrailingBit(firstTrailingBit(u_input.a)), ~(vec3<i32>(0i, -2147483647i, 14442i) & vec3<i32>(2147483647i, arg_0.x, u_input.a.x))));
    var_0 = -func_4(Struct_3(1u, ~abs(arg_0.x), ~u_input.c), Struct_2(~var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 43462u), Struct_2(arg_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(121f)))), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c.x), vec2<u32>(4294967295u, u_input.b.x))), select(vec3<bool>(all(vec4<bool>(false, false, false, false)), all(vec2<bool>(false, true)), all(vec4<bool>(true, false, true, false))), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), true));
    var var_1 = Struct_3(abs(24466u), reverseBits(i32(-1i) * -1i), u_input.b.yww);
    global0 = 1f;
    let var_2 = func_2(vec2<f32>(1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -233f)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(177f, 535f)) + 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-477f * -714f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1177f, -889f)) * vec2<f32>(-2017f, -1000f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, -415f))) + _wgslsmith_div_vec2_f32(vec2<f32>(795f, -486f), vec2<f32>(1414f, -966f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1843f, -1449f))), true)));
    return Struct_2(_wgslsmith_mod_i32(-2147483647i, _wgslsmith_dot_vec3_i32(select(~arg_0.yyw, -u_input.a, true), -arg_0.wzw)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-962f + -1000f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.b))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-371f)), _wgslsmith_f_op_f32(floor(var_2.b)))), any(vec3<bool>(false, true, false)))), all(select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(false, true, true, true))))), ~var_2.c ^ 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-201f - 2388f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2977f - -381f), _wgslsmith_f_op_f32(round(2412f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -470f) - -830f))));
    let var_1 = func_1(-(~firstTrailingBit(countOneBits(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, -23623i)))));
    var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-251f, var_0.x))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.b, var_0.x), vec2<f32>(var_1.b, var_0.x))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2018f, var_0.x) - vec2<f32>(522f, var_1.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_1.b), vec2<f32>(var_0.x, 1623f))))))));
    let var_2 = select(select(func_3(), !select(vec2<bool>(true, true), vec2<bool>(true, true), func_3()), false), !vec2<bool>(func_3().x, true), var_1.c <= abs(var_1.c));
    var var_3 = Struct_3(0u, i32(-1i) * -19219i, firstTrailingBit(vec3<u32>(select(abs(var_1.c), countOneBits(27085u), false), firstLeadingBit(_wgslsmith_div_u32(u_input.c.x, u_input.b.x)), _wgslsmith_div_u32(max(0u, 60768u), 4294967295u))));
    var_3 = Struct_3(1u, ~(max(~var_1.a, u_input.a.x) ^ select(abs(-1i), ~24646i, all(var_2))), vec3<u32>(1u, u_input.c.x, ~_wgslsmith_sub_u32(var_1.c, 4294967295u) | ~_wgslsmith_add_u32(1u, var_3.a)));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.x, -153f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) - _wgslsmith_f_op_f32(-var_1.b)))), vec4<bool>(!var_2.x, var_2.x, ~1u >= (u_input.b.x | ~var_1.c), true), vec3<u32>(~(1u << (var_3.a % 32u)), firstTrailingBit(33019u), ~70567u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_4.a), 3075u, vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-var_4.a)), reverseBits(-vec4<i32>(-17266i >> (var_3.c.x % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -1i), u_input.a.zy), -45122i, var_1.a & 2147483647i)));
}

