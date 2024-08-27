struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec3<u32>,
    b: bool,
    c: vec3<bool>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 12> = array<vec4<i32>, 12>(vec4<i32>(i32(-2147483648), 1i, -1i, -14404i), vec4<i32>(26167i, -46600i, -60628i, 2147483647i), vec4<i32>(-19739i, -7575i, -79364i, 22285i), vec4<i32>(16738i, 6848i, 221i, -1i), vec4<i32>(-6485i, 22227i, -79983i, i32(-2147483648)), vec4<i32>(0i, 2147483647i, i32(-2147483648), -45413i), vec4<i32>(66422i, i32(-2147483648), -12884i, -36670i), vec4<i32>(-6600i, -20560i, 71633i, i32(-2147483648)), vec4<i32>(1i, -36346i, i32(-2147483648), 8972i), vec4<i32>(2147483647i, -8229i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-27186i, 14290i, 67014i, -22578i), vec4<i32>(-27744i, -1i, 15359i, -1i));

var<private> global1: array<Struct_4, 25>;

var<private> global2: array<vec3<f32>, 10> = array<vec3<f32>, 10>(vec3<f32>(-1031f, 1930f, -1293f), vec3<f32>(1479f, 213f, -2231f), vec3<f32>(-373f, 1788f, -1000f), vec3<f32>(-729f, -716f, 413f), vec3<f32>(693f, -1000f, 1136f), vec3<f32>(-1943f, -493f, 766f), vec3<f32>(1431f, 916f, 462f), vec3<f32>(347f, 663f, 593f), vec3<f32>(-1276f, -245f, 1000f), vec3<f32>(322f, 570f, 1395f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<bool>) -> i32 {
    var var_0 = abs(-36180i >> (select(_wgslsmith_dot_vec4_u32(vec4<u32>(8616u, 5072u, 74930u, 5833u), vec4<u32>(51760u, 11267u, 1u, 1u)) & firstLeadingBit(0u), ~(~0u), true) % 32u));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1005f, 206f, -251f, -1586f)))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-523f, -416f, -601f, 1409f) - vec4<f32>(-435f, -815f, -1000f, -1693f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-775f, 564f, -1069f, 1641f) * vec4<f32>(-1513f, 655f, -964f, 1113f)))))));
    global2 = array<vec3<f32>, 10>();
    var var_2 = u_input.a.wy;
    var var_3 = Struct_1(firstTrailingBit(~(~25236u >> (_wgslsmith_mod_u32(4294967295u, 1u) % 32u))), var_1.wz, 94106u, ~(~(~reverseBits(vec3<u32>(1u, 67367u, 1u)))));
    return countOneBits(abs(~_wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.a.x, -22781i, 1i, var_2.x), global0[_wgslsmith_index_u32(var_3.a, 12u)]), abs(vec4<i32>(-36760i, -2147483647i, var_2.x, 11027i)))));
}

fn func_2() -> vec2<u32> {
    let var_0 = global1[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(1u, ~_wgslsmith_mod_u32(1u, 15694u))), 25u)];
    var var_1 = var_0.d.a;
    let var_2 = max(~(~0i), _wgslsmith_div_i32(~(-12178i), _wgslsmith_add_i32(func_3(vec3<bool>(true, var_0.d.a, var_0.c.x)), ~(-2147483647i))));
    let var_3 = select(select(!vec4<bool>(true, var_0.d.a, any(var_0.c.zx), all(var_0.c.xx)), vec4<bool>(true, true, true, true), vec4<bool>(true, !(!var_0.c.x), -33894i >= min(var_2, u_input.b), var_0.c.x)), !(!select(vec4<bool>(true, false, var_0.d.a, var_0.d.a), select(vec4<bool>(true, var_0.d.a, var_0.d.a, false), vec4<bool>(false, var_0.b, var_0.c.x, false), vec4<bool>(false, true, false, false)), all(var_0.c.xy))), var_0.c.x);
    var var_4 = Struct_1(abs(~_wgslsmith_clamp_u32(~22466u, 0u, ~1u)), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1287f - -715f))))), -1292f), min(_wgslsmith_add_u32(var_0.a.x, var_0.a.x), var_0.a.x), select(var_0.a, var_0.a, vec3<bool>(false, true, true)));
    return ~vec2<u32>(14568u, var_0.a.x);
}

fn func_1(arg_0: bool, arg_1: u32) -> Struct_3 {
    var var_0 = _wgslsmith_add_u32(~1u << (arg_1 % 32u), _wgslsmith_dot_vec2_u32(~(~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1, 0u), vec2<u32>(0u, 52143u))), ~func_2()));
    let var_1 = u_input.a.x ^ u_input.a.x;
    var_0 = _wgslsmith_sub_u32(arg_1, ~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(14913u, 0u >> (arg_1 % 32u)), arg_1, 21813u));
    global1 = array<Struct_4, 25>();
    var var_2 = Struct_3(all(select(!(!vec4<bool>(true, false, arg_0, true)), select(!vec4<bool>(arg_0, false, arg_0, false), vec4<bool>(false, arg_0, false, true), true), select(false, true, arg_0) && select(false, arg_0, arg_0))));
    return Struct_3(arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(1u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-2603f, 652f), vec2<f32>(-101f, 1000f)))) + vec2<f32>(_wgslsmith_div_f32(312f, 596f), 1000f))), ~1u, vec3<u32>(~(~(~0u)), 0u, _wgslsmith_dot_vec3_u32(abs(_wgslsmith_div_vec3_u32(vec3<u32>(10672u, 15870u, 1u), vec3<u32>(1u, 4294967295u, 1u))), vec3<u32>(1u, ~10234u, 0u))));
    global2 = array<vec3<f32>, 10>();
    var var_1 = func_1(false, ~(1u << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 34660u), var_0.d.yz) % 32u)) << (1u % 32u));
    var var_2 = ~var_0.a;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-246f - _wgslsmith_f_op_f32(var_0.b.x * var_0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1170f - var_0.b.x) + 1000f));
    let x = u_input.a;
    s_output = StorageBuffer(~select(vec4<u32>(var_0.d.x, 0u, var_0.c, 13929u) >> (~vec4<u32>(1u, 11805u, 4294967295u, var_0.a) % vec4<u32>(32u)), ~(vec4<u32>(var_0.a, var_0.a, var_0.a, 1u) << (vec4<u32>(var_0.c, var_0.d.x, 1u, var_0.d.x) % vec4<u32>(32u))), func_1(false, 0u).a), _wgslsmith_sub_vec2_i32(vec2<i32>(~(-30131i), _wgslsmith_sub_i32(min(u_input.a.x, u_input.a.x), _wgslsmith_add_i32(u_input.a.x, -81235i))), select(select(vec2<i32>(30077i, u_input.a.x), vec2<i32>(-1i, -685i), true), ~vec2<i32>(-2147483647i, 2147483647i), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(773f + var_3), _wgslsmith_div_f32(var_0.b.x, _wgslsmith_div_f32(140f, _wgslsmith_f_op_f32(var_3 + var_0.b.x)))), max(select(global0[_wgslsmith_index_u32(var_0.a, 12u)], vec4<i32>(abs(u_input.b), _wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(66324u, 12u)]), u_input.a.x, ~u_input.b), var_1.a), -vec4<i32>(-14010i, -u_input.b, u_input.a.x >> (8843u % 32u), min(2147483647i, u_input.b))));
}

