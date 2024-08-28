struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec3<f32>,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 15>;

var<private> global1: u32 = 4294967295u;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> vec3<u32> {
    let var_0 = max(vec3<u32>(~u_input.d ^ 1u, 72533u, arg_0.e.x), vec3<u32>(arg_0.e.x, ~abs(countOneBits(68449u)), arg_0.e.x));
    let var_1 = _wgslsmith_add_vec2_i32(vec2<i32>(arg_0.b, ~_wgslsmith_div_i32(select(-2147483647i, 50250i, true), arg_0.b)), ~select(_wgslsmith_sub_vec2_i32(-vec2<i32>(arg_0.b, arg_0.b), ~vec2<i32>(arg_0.b, arg_0.b)), vec2<i32>(arg_0.b ^ 2147483647i, 1i), select(arg_0.d.xw, arg_0.d.ww, arg_0.d.xx)));
    let var_2 = max(_wgslsmith_mod_i32(firstLeadingBit(var_1.x) & _wgslsmith_mult_i32(u_input.b, -3446i), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(var_1, vec2<i32>(arg_0.b, arg_0.b)), vec2<i32>(2147483647i, var_1.x) >> (var_0.yx % vec2<u32>(32u)))), firstTrailingBit(abs(var_1.x) << (1u % 32u))) | (i32(-1i) * -reverseBits(1i >> (u_input.a % 32u)));
    var var_3 = 4294967295u;
    global1 = 80854u;
    return u_input.e;
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: vec3<i32>) -> vec2<u32> {
    let var_0 = any(select(arg_1.b, arg_1.b, select(vec2<bool>(arg_0, true), !select(arg_1.a.d.zy, vec2<bool>(arg_1.a.d.x, arg_0), vec2<bool>(arg_1.b.x, true)), vec2<bool>(!arg_0, false))));
    var var_1 = arg_1.c;
    let var_2 = vec4<u32>(~arg_1.a.e.x, 22966u, ~firstLeadingBit(20953u), ~(~_wgslsmith_mod_u32(arg_1.a.e.x, arg_1.a.e.x)) << (_wgslsmith_sub_u32(~u_input.a, 44874u) % 32u));
    var_1 = -arg_1.a.b;
    var_1 = firstLeadingBit(arg_3.x);
    return vec2<u32>(abs(24017u) | firstTrailingBit(arg_1.a.e.x), 0u);
}

fn func_2() -> Struct_1 {
    global0 = array<vec3<f32>, 15>();
    global1 = ~(_wgslsmith_dot_vec2_u32(func_4(true, Struct_3(Struct_1(vec3<f32>(-164f, -1156f, 489f), u_input.b, vec3<f32>(-1555f, -1007f, 362f), vec4<bool>(false, true, true, true), u_input.e.yx), vec2<bool>(true, false), u_input.c), func_3(Struct_1(global0[_wgslsmith_index_u32(4294967295u, 15u)], 1i, global0[_wgslsmith_index_u32(43914u, 15u)], vec4<bool>(true, false, true, false), u_input.e.xx), vec2<f32>(-172f, -471f)), ~vec3<i32>(u_input.b, u_input.c, u_input.c)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 0u), max(vec2<u32>(1u, 1u), vec2<u32>(u_input.d, 4294967295u)))) << (0u % 32u));
    var var_0 = Struct_3(Struct_1(_wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_mult_u32(u_input.a, u_input.e.x)), 15u)], _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(u_input.a, 15u)])))), 1i, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(308f, -1505f), -2325f, -1388f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-214f, -198f, 842f) - vec3<f32>(863f, 1000f, -1000f)))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), false)), true), abs(_wgslsmith_mod_vec2_u32(vec2<u32>(41852u, u_input.d), vec2<u32>(u_input.e.x, u_input.a)))), select(select(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(false, select(true, false, true))), vec2<bool>(true, true), !any(vec2<bool>(true, true))), 2147483647i);
    global0 = array<vec3<f32>, 15>();
    var var_1 = Struct_3(Struct_1(var_0.a.a, u_input.b, global0[_wgslsmith_index_u32(~var_0.a.e.x, 15u)], vec4<bool>(var_0.b.x, any(vec2<bool>(var_0.b.x, true)), !var_0.a.d.x, var_0.a.d.x), u_input.e.xx), vec2<bool>(true, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, var_0.a.b, u_input.c, 10414i), vec4<i32>(-2147483647i, 1i, -1399i, u_input.c)), 1i) >= _wgslsmith_mult_i32(var_0.c, 0i)), -(i32(-1i) * -(~4801i)));
    return var_0.a;
}

fn func_5(arg_0: Struct_3, arg_1: u32) -> i32 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -701f), _wgslsmith_f_op_f32(-460f + 617f), false)) - _wgslsmith_f_op_f32(f32(-1f) * -194f)), -965f, 1494f, _wgslsmith_f_op_f32(select(arg_0.a.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_0.a.c.x, arg_0.a.a.x)), -2193f)), true))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.a.c.x))), -154f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -344f) - func_2().c.x), 1271f))), abs(u_input.c) >= u_input.c));
    let var_2 = vec3<u32>(countOneBits(u_input.e.x), 63134u, _wgslsmith_dot_vec4_u32(vec4<u32>(~arg_0.a.e.x, _wgslsmith_add_u32(1u, _wgslsmith_mult_u32(0u, 35193u)), abs(_wgslsmith_div_u32(u_input.e.x, arg_1)), 34560u), select(~firstTrailingBit(vec4<u32>(42172u, u_input.e.x, 1u, u_input.d)), firstLeadingBit(~vec4<u32>(72749u, 0u, 0u, arg_0.a.e.x)), any(var_0.a.d))));
    var var_3 = ~(~vec4<u32>(func_2().e.x, 1u, firstLeadingBit(~var_2.x), ~4294967295u));
    var_0 = arg_0;
    return i32(-1i) * -1i;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<u32>) -> vec4<f32> {
    var var_0 = ~_wgslsmith_clamp_i32(_wgslsmith_mult_i32(i32(-1i) * -2147483647i, min(~arg_0.x, 48125i)), 2147483647i, -(~1i));
    var_0 = _wgslsmith_mult_i32(func_5(Struct_3(func_2(), vec2<bool>(true, true), -_wgslsmith_div_i32(arg_0.x, u_input.b)), reverseBits(u_input.d)), _wgslsmith_div_i32(~(-arg_0.x >> (arg_1.x % 32u)), -42064i));
    let var_1 = func_2().d.wz;
    let var_2 = !(true == var_1.x);
    let var_3 = func_2();
    return vec4<f32>(var_3.a.x, -1082f, _wgslsmith_f_op_f32(-1320f + var_3.a.x), 1993f);
}

fn func_6(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_2) -> vec2<i32> {
    let var_0 = !(!(!arg_2.b.d.x)) & (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1961f, 700f), arg_2.b.c.x))) > arg_2.b.c.x);
    let var_1 = arg_2.b.b;
    var var_2 = arg_0.b.d;
    global0 = array<vec3<f32>, 15>();
    var_2 = vec4<bool>(any(arg_2.b.d) | true, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -775f) + -1268f) + _wgslsmith_f_op_f32(max(arg_2.a.x, _wgslsmith_f_op_f32(max(arg_2.b.a.x, arg_0.b.a.x))))) > _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(arg_2.a.x)), _wgslsmith_f_op_f32(min(arg_0.b.a.x, -734f)))))), true == all(arg_2.b.d.yx));
    return select(~_wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(0i, var_1)), max(vec2<i32>(var_1, 2147483647i), -vec2<i32>(arg_0.b.b, arg_2.b.b))), ~countOneBits(~min(vec2<i32>(arg_0.b.b, 0i), vec2<i32>(u_input.b, 1i))), !var_0);
}

fn func_7(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: vec2<bool>, arg_3: Struct_3) -> Struct_2 {
    global1 = ~(~reverseBits(min(select(27976u, 1690u, true), _wgslsmith_clamp_u32(0u, 87487u, arg_3.a.e.x))));
    global0 = array<vec3<f32>, 15>();
    global1 = firstTrailingBit(1u);
    let var_0 = Struct_3(func_2(), arg_2, countOneBits(i32(-1i) * -23421i));
    let var_1 = arg_3.a.e.x;
    return Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, var_0.a.c.x, 1278f, 505f)) - vec4<f32>(166f, -870f, _wgslsmith_f_op_f32(-var_0.a.c.x), _wgslsmith_div_f32(arg_1.x, var_0.a.a.x)))), var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(-func_6(Struct_2(_wgslsmith_f_op_vec4_f32(func_1(vec3<i32>(u_input.b, u_input.b, 132i), u_input.e)), func_2()), vec4<u32>(u_input.e.x, abs(u_input.a), ~u_input.a, 5670u << (u_input.d % 32u)), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(700f, -1000f, -1100f, -1748f)), Struct_1(global0[_wgslsmith_index_u32(47708u, 15u)], 0i, global0[_wgslsmith_index_u32(u_input.a, 15u)], vec4<bool>(false, true, false, false), u_input.e.zz))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(920f, 754f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2314f, 220f) * vec2<f32>(-1125f, -1327f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(358f, 692f) + vec2<f32>(-342f, 814f))))), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), func_2().d.yx, vec2<bool>(true, true)), any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)))), Struct_3(func_2(), select(!func_2().d.ww, vec2<bool>(true, false), all(select(vec2<bool>(true, false), vec2<bool>(true, false), false))), _wgslsmith_mod_i32(abs(firstTrailingBit(1i)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(-8153i, -2147483647i), -2147483647i))));
    global0 = array<vec3<f32>, 15>();
    global1 = var_0.b.e.x;
    global0 = array<vec3<f32>, 15>();
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a) + vec4<f32>(_wgslsmith_f_op_f32(round(var_0.b.a.x)), _wgslsmith_f_op_f32(1018f * var_0.a.x), _wgslsmith_f_op_f32(min(var_0.a.x, var_0.b.c.x)), var_0.a.x)))), Struct_1(_wgslsmith_f_op_vec3_f32(-func_7(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, -26655i), vec2<i32>(0i, u_input.b), vec2<i32>(-2147483647i, -30i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.c.x, var_0.a.x)), var_0.b.d.wx, Struct_3(Struct_1(var_0.a.xwz, 2147483647i, global0[_wgslsmith_index_u32(47230u, 15u)], vec4<bool>(var_0.b.d.x, var_0.b.d.x, true, true), vec2<u32>(0u, 23252u)), vec2<bool>(true, true), u_input.c)).b.c), 2147483647i, _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(abs(var_0.b.e.x), 15u)]), select(!var_0.b.d, var_0.b.d, !(!var_0.b.d)), _wgslsmith_div_vec2_u32(~abs(u_input.e.zx), ~(~vec2<u32>(var_0.b.e.x, u_input.e.x)))));
    var_1 = Struct_2(var_1.a, func_7(vec2<i32>(_wgslsmith_div_i32(func_7(vec2<i32>(0i, var_1.b.b), var_0.b.a.zy, vec2<bool>(true, var_1.b.d.x), Struct_3(var_0.b, var_0.b.d.xx, var_0.b.b)).b.b, u_input.c >> (1u % 32u)), -1486i), _wgslsmith_f_op_vec2_f32(var_1.b.c.xz - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.a.x, var_0.b.a.x) - vec2<f32>(-1000f, -486f))), var_0.b.d.wx, Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1239f, var_1.b.a.x) * var_1.b.a), 48261i, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.b.e.x, var_0.b.e.x), 15u)], vec4<bool>(false, var_1.b.d.x, var_0.b.d.x, var_1.b.d.x), var_1.b.e), var_0.b.d.xy, var_1.b.b)).b);
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(func_1(-vec3<i32>(u_input.c >> (6899u % 32u), -1i, 18413i), vec3<u32>(countOneBits(~23565u), 0u, var_0.b.e.x))).ywx, firstLeadingBit(var_1.b.b | -1i), _wgslsmith_f_op_vec3_f32(var_0.a.zwy * vec3<f32>(_wgslsmith_f_op_f32(var_0.b.c.x * _wgslsmith_f_op_f32(var_0.a.x - var_1.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-193f * 167f))), var_0.b.c.x)), !func_2().d, _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(4294967295u, var_1.b.e.x), _wgslsmith_mod_u32(~u_input.a, 4294967295u)), _wgslsmith_clamp_vec2_u32(max(func_4(false, Struct_3(Struct_1(var_0.b.c, u_input.b, var_1.b.c, var_1.b.d, vec2<u32>(1u, 24048u)), var_1.b.d.xy, var_1.b.b), u_input.e, vec3<i32>(u_input.c, u_input.c, 2147483647i)), abs(u_input.e.zy)), ~countOneBits(var_0.b.e), func_3(var_1.b, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(134f, -928f)))).xx)));
    global1 = u_input.d;
    var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(4294967295u, 15u)]), 12739i, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_2.a.x), -680f, var_0.a.x) - var_0.a.zwy), vec4<bool>(!select(true, var_1.b.d.x, true), var_1.b.d.x, !(var_0.b.d.x || all(var_1.b.d.yzz)), !all(var_2.d.xx)), ~vec2<u32>(max(34694u, ~1u), var_1.b.e.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(~(~abs(var_0.b.e.x)), _wgslsmith_div_u32(~_wgslsmith_div_u32(223u, 4294967295u), var_0.b.e.x)), vec2<f32>(_wgslsmith_f_op_f32(1588f - _wgslsmith_div_f32(var_0.a.x, -1666f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-780f - var_0.b.a.x))))), _wgslsmith_div_vec3_u32(func_3(Struct_1(var_2.c, var_0.b.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-289f, 1000f, var_1.b.c.x)), var_2.d, func_7(vec2<i32>(var_1.b.b, var_1.b.b), var_1.b.a.xy, vec2<bool>(var_1.b.d.x, false), Struct_3(var_0.b, vec2<bool>(true, false), var_1.b.b)).b.e), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec4_f32(func_1(vec3<i32>(-2147483647i, 2147483647i, u_input.b), u_input.e)).zz * var_0.a.yz)), select(_wgslsmith_mult_vec3_u32(~u_input.e, u_input.e), (vec3<u32>(var_1.b.e.x, 47458u, 16967u) ^ vec3<u32>(0u, var_0.b.e.x, var_1.b.e.x)) & vec3<u32>(4294967295u, 1u, 34287u), any(select(var_0.b.d.xzw, var_0.b.d.ywx, false)))), _wgslsmith_clamp_i32(var_0.b.b, func_7(~vec2<i32>(var_1.b.b, 0i), var_1.b.c.yx, func_2().d.yy, Struct_3(func_7(vec2<i32>(2147483647i, 0i), vec2<f32>(var_1.a.x, var_0.b.c.x), var_1.b.d.zw, Struct_3(Struct_1(vec3<f32>(-1108f, 939f, var_2.a.x), -2147483647i, vec3<f32>(var_1.a.x, -566f, var_1.b.a.x), vec4<bool>(var_0.b.d.x, true, var_0.b.d.x, var_0.b.d.x), u_input.e.xx), vec2<bool>(true, false), var_1.b.b)).b, !var_2.d.wy, 21111i)).b.b, 19920i));
}

