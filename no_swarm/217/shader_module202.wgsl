struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 9>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_1.a.x)), _wgslsmith_f_op_f32(-arg_0.a.x)), var_0.a.x)) - 1f);
    global0 = array<vec4<bool>, 9>();
    global0 = array<vec4<bool>, 9>();
    let var_2 = _wgslsmith_f_op_f32(abs(-1377f));
    return ~1i;
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: u32) -> i32 {
    global0 = array<vec4<bool>, 9>();
    let var_0 = Struct_1(vec3<f32>(-750f, _wgslsmith_f_op_f32(f32(-1f) * -3035f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1289f - _wgslsmith_f_op_f32(f32(-1f) * -660f)) + -290f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1663f, -583f, 888f, -187f) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(256f, -2536f, 302f, 140f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-646f, 1139f, 322f, -1264f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1306f, 362f, 107f, -737f))))));
    var var_1 = Struct_2(select(vec2<bool>(true, true), select(!select(vec2<bool>(false, true), vec2<bool>(true, arg_0.b), arg_0.b), select(vec2<bool>(arg_0.b, true), vec2<bool>(false, true), true), arg_0.b), true), var_0);
    var var_2 = ~arg_2;
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1457f * _wgslsmith_f_op_f32(sign(var_0.a.x))), _wgslsmith_f_op_f32(max(var_0.b.x, _wgslsmith_div_f32(var_1.b.a.x, 2012f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a.x))))), var_0.b);
    return min(_wgslsmith_add_i32(-2147483647i, countOneBits(-arg_0.a)), _wgslsmith_dot_vec3_i32(vec3<i32>(-select(-8607i, arg_0.a, var_1.a.x), _wgslsmith_mod_i32(u_input.b.x, 1i), _wgslsmith_div_i32(-64343i, abs(-7949i))), u_input.d.xxw));
}

fn func_1() -> Struct_1 {
    global0 = array<vec4<bool>, 9>();
    global0 = array<vec4<bool>, 9>();
    let var_0 = Struct_3(_wgslsmith_clamp_i32(-22569i, u_input.b.x, reverseBits(_wgslsmith_div_i32(func_2(Struct_1(vec3<f32>(730f, 563f, -592f), vec4<f32>(879f, -184f, -967f, -181f)), Struct_1(vec3<f32>(-1000f, -117f, -1158f), vec4<f32>(-464f, -404f, 933f, 1776f))), func_3(Struct_3(17932i, false), -81156i, 1u)))), true);
    var var_1 = _wgslsmith_mod_i32(_wgslsmith_mult_i32(countOneBits(-var_0.a), -2147483647i), firstTrailingBit(-_wgslsmith_mod_i32(2147483647i, _wgslsmith_div_i32(15143i, var_0.a))));
    var var_2 = all(select(select(select(vec3<bool>(true, var_0.b, false), vec3<bool>(true, true, false), all(vec4<bool>(true, var_0.b, false, var_0.b))), vec3<bool>(true, var_0.b, var_0.b), !vec3<bool>(true, false, var_0.b)), vec3<bool>(any(vec2<bool>(true, true)), true || (var_0.b || true), var_0.b), !select(!vec3<bool>(false, false, var_0.b), select(vec3<bool>(var_0.b, var_0.b, false), vec3<bool>(var_0.b, var_0.b, var_0.b), vec3<bool>(true, true, true)), var_0.b)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(713f - 731f))), -309f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-305f + 1658f), _wgslsmith_f_op_f32(1000f - 350f)))) * vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1848f + 1211f))), _wgslsmith_f_op_f32(-1f), 1426f)), vec4<f32>(-234f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -252f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1710f, -749f, var_0.b)), _wgslsmith_f_op_f32(-1293f + 249f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1602f))), -502f));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<u32>) -> f32 {
    var var_0 = Struct_2(arg_1.a, Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(-465f, arg_1.b.b.x)), _wgslsmith_f_op_f32(-arg_1.b.a.x), _wgslsmith_f_op_f32(f32(-1f) * -459f)), arg_1.b.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1590f, arg_1.b.a.x, arg_2.a.x, arg_2.a.x)))));
    var var_1 = Struct_3(arg_0.x, all(vec4<bool>(var_0.a.x || false, var_0.a.x, var_0.a.x, arg_3.x <= u_input.c)));
    let var_2 = vec4<f32>(826f, _wgslsmith_f_op_f32(f32(-1f) * -263f), _wgslsmith_f_op_f32(ceil(arg_1.b.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x)) + 1f), arg_1.b.a.x));
    global0 = array<vec4<bool>, 9>();
    var_1 = Struct_3(abs(_wgslsmith_div_i32(reverseBits(reverseBits(u_input.d.x)), func_2(Struct_1(arg_1.b.a, vec4<f32>(1413f, -172f, arg_2.b.x, -891f)), func_1()))), var_0.a.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-1000f)))), 441f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 9>();
    global0 = array<vec4<bool>, 9>();
    var var_0 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(func_4(_wgslsmith_add_vec4_i32(u_input.d >> (vec4<u32>(u_input.c, 15036u, u_input.c, u_input.c) % vec4<u32>(32u)), u_input.d), Struct_2(vec2<bool>(true, true), func_1()), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-459f, 1790f, 1870f)), vec4<f32>(1f, 1f, 1f, 1f)), ~vec4<u32>(u_input.c, 0u, u_input.c, 11238u))), _wgslsmith_f_op_f32(399f - _wgslsmith_f_op_f32(590f + _wgslsmith_div_f32(805f, -1134f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_4(vec4<i32>(u_input.b.x, u_input.b.x, 0i, -2147483647i), Struct_2(vec2<bool>(false, true), Struct_1(vec3<f32>(-431f, -311f, 658f), vec4<f32>(-1086f, 1767f, 637f, -211f))), Struct_1(vec3<f32>(586f, 1953f, 749f), vec4<f32>(-701f, 2620f, 1568f, -1157f)), vec4<u32>(370u, u_input.c, u_input.c, u_input.c)))))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1616f))), _wgslsmith_f_op_f32(-1f), 1000f)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(func_4(vec4<i32>(2147483647i, 56553i, -39774i, u_input.e), Struct_2(vec2<bool>(true, false), Struct_1(vec3<f32>(1324f, var_0.x, var_0.x), vec4<f32>(1206f, -571f, var_0.x, -1346f))), Struct_1(vec3<f32>(463f, var_0.x, 395f), vec4<f32>(-495f, 353f, -1235f, 299f)), vec4<u32>(4294967295u, 0u, u_input.c, u_input.c))), -778f, var_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-694f, var_0.x, var_0.x, -997f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 974f, var_0.x, var_0.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 1119f, var_0.x)))))));
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1307f * _wgslsmith_f_op_f32(-927f - var_1.b.x)), _wgslsmith_f_op_f32(select(190f, 1184f, any(vec3<bool>(true, true, true)))), var_1.a.x == _wgslsmith_f_op_f32(sign(1660f))));
    var var_3 = var_1.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.d), func_1().a, firstTrailingBit(_wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(0u, 1u, 14423u)), vec3<u32>(33769u, u_input.c, u_input.c) & vec3<u32>(19410u, 4294967295u, 0u)) << (~reverseBits(vec3<u32>(0u, u_input.c, 44085u)) % vec3<u32>(32u))), countOneBits(66887u) & firstLeadingBit((u_input.c | 1255u) | 1u));
}

