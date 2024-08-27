struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: Struct_2,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: Struct_5) -> f32 {
    return _wgslsmith_f_op_f32(397f * _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-554f, 199f))));
}

fn func_3() -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(517f, 531f, -352f, 483f)))) * vec4<f32>(850f, -1024f, _wgslsmith_f_op_f32(f32(-1f) * -1436f), -1000f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1391f, -848f, -239f, -696f), vec4<f32>(1282f, 1841f, -1724f, 256f), true))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-315f - 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1224f, 929f)) * -2032f), 1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1068f - 1557f), -489f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 1921f, var_0.x) - vec4<f32>(var_0.x, var_0.x, 858f, 693f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1886f, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1275f, -1207f, -877f, var_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2193f, var_0.x, -885f, var_0.x) + vec4<f32>(var_0.x, -482f, 1419f, 524f)))))) * vec4<f32>(_wgslsmith_f_op_f32(step(1823f, _wgslsmith_div_f32(var_0.x, var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1558f), _wgslsmith_f_op_f32(select(-1086f, 106f, u_input.a != u_input.d)))));
    var var_1 = vec2<u32>(_wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(u_input.e.x, u_input.b, 61714u))), reverseBits(~abs(u_input.e.wxy))), ~(~_wgslsmith_mod_u32(select(4294967295u, 4294967295u, true), 0u)));
    var_1 = u_input.e.yz << (_wgslsmith_div_vec2_u32(u_input.e.zw, vec2<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.e.x, 9495u), u_input.e.x), 1u | (u_input.c | u_input.b))) % vec2<u32>(32u));
    var_1 = firstTrailingBit(vec2<u32>(_wgslsmith_sub_u32(u_input.e.x, ~1u >> (countOneBits(27342u) % 32u)), var_1.x));
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(620f, -1000f, var_0.x, var_0.x) - vec4<f32>(438f, var_0.x, -109f, var_0.x)), vec4<f32>(var_0.x, var_0.x, 1355f, -420f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -496f, 216f, var_0.x) * vec4<f32>(910f, -678f, 2287f, 219f)) - vec4<f32>(var_0.x, -752f, var_0.x, var_0.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-510f, 1260f, 236f, var_0.x) * vec4<f32>(-700f, -292f, var_0.x, -2329f)))))));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    global0 = !all(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))) && (u_input.a < 46359i);
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(676f - -270f))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(338f, -909f, 622f, -797f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1303f, 725f, -1000f, -474f)), vec4<bool>(true, true, true, true)))))));
    global0 = true;
    return Struct_2(-vec4<i32>(-2147483647i, abs(~4035i), firstLeadingBit(-2147483647i) >> (u_input.e.x % 32u), _wgslsmith_add_i32(2147483647i >> (arg_0.a.x % 32u), 5980i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(997f, 443f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-662f)), _wgslsmith_f_op_f32(exp2(var_1.x)), any(vec4<bool>(false, false, true, true)))), true)) * 811f), Struct_1(select(~vec4<u32>(1u, arg_0.a.x, arg_0.a.x, u_input.c), ~u_input.e, select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false))) | u_input.e), arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), 1258f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.wz), var_1.xy))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: f32, arg_3: Struct_2) -> f32 {
    var var_0 = arg_3.a.yyy;
    var var_1 = Struct_3(_wgslsmith_add_u32((28512u >> (abs(arg_0.x) % 32u)) & ~arg_3.d.a.x, 13502u), vec4<u32>(arg_0.x, 61205u << (max(reverseBits(u_input.c), ~u_input.e.x) % 32u), _wgslsmith_clamp_u32(abs(~arg_0.x), ~30329u ^ u_input.e.x, _wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(0u, arg_3.d.a.x, 39689u, arg_0.x)) & (arg_3.d.a.x << (37709u % 32u))), 48933u));
    let var_2 = arg_3.c;
    var var_3 = reverseBits(vec2<u32>(select(4294967295u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(28434u, arg_3.d.a.x, 0u, 1u)), 4294967295u), any(vec4<bool>(true, true, true, true))), select(_wgslsmith_mult_u32(reverseBits(var_1.b.x), var_1.b.x), ~(arg_3.d.a.x | 43841u), false)));
    var_0 = firstTrailingBit(arg_3.a.wzy);
    return _wgslsmith_f_op_f32(arg_1.x + -448f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~(u_input.e ^ vec4<u32>(4294967295u, u_input.c, u_input.b, 86940u)));
    let var_1 = vec4<f32>(2315f, _wgslsmith_f_op_f32(func_4(~vec2<u32>(21616u, u_input.c << (u_input.e.x % 32u)), vec4<f32>(-1358f, _wgslsmith_f_op_f32(f32(-1f) * -1447f), 353f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 632f) + _wgslsmith_f_op_f32(func_1(Struct_5(u_input.c))))), _wgslsmith_f_op_f32(1084f - _wgslsmith_f_op_f32(f32(-1f) * -1117f)), func_2(Struct_1(reverseBits(u_input.e))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-942f + _wgslsmith_div_f32(1184f, 719f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1804f + 867f))), 2112f)));
    global0 = true;
    let var_2 = max(~(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, var_0.a.x), var_0.a.xx) ^ 0u), var_0.a.x);
    var var_3 = 1000f;
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_mod_vec3_i32(~firstLeadingBit(vec3<i32>(-38901i, 10138i, 39007i)), vec3<i32>(u_input.a, ~(-1i), abs(u_input.a))), ~vec3<i32>(0i & u_input.d, 2147483647i, ~u_input.d)));
}

