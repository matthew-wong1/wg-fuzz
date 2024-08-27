struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(2147483647i);

var<private> global1: array<vec2<u32>, 17>;

var<private> global2: Struct_2 = Struct_2(false, vec3<u32>(11069u, 50658u, 1u), Struct_1(vec4<f32>(1019f, 391f, 677f, 595f), -138f, vec4<i32>(i32(-2147483648), 9211i, 30133i, 37791i), 21790u), Struct_1(vec4<f32>(1692f, 850f, -1179f, 1055f), 908f, vec4<i32>(57742i, 2147483647i, 0i, 1i), 4294967295u), false);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> i32 {
    global0 = Struct_3(2147483647i);
    global0 = Struct_3(-u_input.a.x);
    global2 = Struct_2(false, ~global2.b, global2.c, global2.d, false);
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.d.b, global2.d.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-868f))), global2.d.a.x))));
    let var_1 = vec2<bool>(true, true);
    return abs(firstTrailingBit(19525i) ^ (u_input.a.x << (reverseBits(1u) % 32u)));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: i32) -> Struct_1 {
    global0 = Struct_3(_wgslsmith_add_i32(~func_3(), _wgslsmith_clamp_i32(global2.c.c.x, abs(-1i), 20201i) >> (35955u % 32u)));
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global2.c.b, _wgslsmith_f_op_f32(step(-1125f, _wgslsmith_f_op_f32(-global2.c.b)))))) <= arg_1.x;
    var var_1 = ~(~(~firstLeadingBit(0u) | ~global2.b.x));
    var var_2 = _wgslsmith_add_vec2_i32(global2.c.c.xw, -_wgslsmith_div_vec2_i32(~(-vec2<i32>(34531i, u_input.a.x)), global2.c.c.xw));
    global0 = Struct_3(global0.a);
    return Struct_1(_wgslsmith_f_op_vec4_f32(-global2.d.a), 149f, -global2.c.c, _wgslsmith_mult_u32(36356u, _wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(1u, global2.d.d))));
}

fn func_1() -> i32 {
    global2 = Struct_2(!global2.e, _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(global2.b, _wgslsmith_sub_vec3_u32(firstTrailingBit(global2.b), _wgslsmith_mod_vec3_u32(vec3<u32>(48265u, global2.c.d, 4294967295u), vec3<u32>(global2.c.d, 4469u, 16990u)))), _wgslsmith_clamp_vec3_u32(~global2.b | global2.b, ~reverseBits(vec3<u32>(global2.d.d, 21896u, global2.b.x)), _wgslsmith_clamp_vec3_u32(global2.b, _wgslsmith_mod_vec3_u32(vec3<u32>(global2.b.x, 0u, global2.b.x), global2.b), ~vec3<u32>(62658u, 48192u, global2.d.d)))), func_2(54777i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-734f, 279f) - global2.c.a.wx) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-733f, 1000f)))), u_input.a.x), func_2(1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-428f, global2.c.a.x), global2.d.a.xy) * vec2<f32>(global2.c.a.x, 422f))), -global2.c.c.x), true);
    let var_0 = _wgslsmith_f_op_vec2_f32(global2.d.a.xw - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -103f), _wgslsmith_f_op_f32(f32(-1f) * -1607f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-159f, func_2(global2.c.c.x, vec2<f32>(165f, global2.c.a.x), u_input.a.x).a.x))));
    global2 = Struct_2(true, global2.b, Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -438f, var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.b, -194f, var_0.x, -686f) - vec4<f32>(var_0.x, -334f, global2.c.b, 1500f)))), _wgslsmith_f_op_f32(ceil(-1048f)), _wgslsmith_clamp_vec4_i32(min(global2.d.c, global2.d.c) << (abs(vec4<u32>(global2.c.d, global2.b.x, global2.d.d, 52063u)) % vec4<u32>(32u)), vec4<i32>(func_3(), _wgslsmith_add_i32(global0.a, 7282i), -global0.a, u_input.a.x >> (global2.c.d % 32u)), vec4<i32>(-1i) * -global2.d.c), func_2(46424i, vec2<f32>(_wgslsmith_div_f32(392f, global2.d.b), -548f), firstLeadingBit(func_3())).d), Struct_1(global2.c.a, global2.c.a.x, -vec4<i32>(global2.c.c.x, global2.c.c.x, 2147483647i, global0.a) >> (vec4<u32>(_wgslsmith_sub_u32(0u, global2.b.x), _wgslsmith_sub_u32(31942u, global2.b.x), ~35820u, 0u) % vec4<u32>(32u)), 4294967295u), global2.a);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + -541f) - _wgslsmith_f_op_f32(sign(-1175f))))) * _wgslsmith_f_op_f32(-global2.d.b));
    let var_2 = Struct_4(func_2(_wgslsmith_add_i32(func_3(), -1i) << (~28562u % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1271f, 1038f) - var_0))), global2.c.c.x), global2.d, global0.a);
    return 0i;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_4(global2.c, func_2(-30166i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.d.a.xy * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1536f, global2.c.a.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.d.a.xy * vec2<f32>(-1212f, 158f)))), 1i), arg_1.x);
    let var_1 = global2.d.a.zw;
    global1 = array<vec2<u32>, 17>();
    return var_0.b;
}

fn func_5(arg_0: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(113525u, arg_0.d, max(4294967295u, arg_0.d), ~arg_0.d), vec4<u32>(1u, arg_0.d, ~global2.b.x, ~13280u)), _wgslsmith_mult_u32(0u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(82538u, global2.c.d, 4294967295u, 3142u), vec4<u32>(arg_0.d, 103956u, arg_0.d, 1u)), vec4<u32>(global2.b.x, 0u, global2.d.d, 24905u))), arg_0.d, arg_0.d), vec4<u32>(countOneBits(firstTrailingBit(global2.c.d >> (104741u % 32u))), 61211u, 1u, abs(arg_0.d)));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.b)))));
    var var_2 = vec4<bool>(!(!select(global2.e, false, true) | global2.e), true, !(!(!global2.e)), false);
    let var_3 = -715f;
    let var_4 = Struct_4(func_4(global2.c.c, select(-vec4<i32>(-43313i, global2.c.c.x, -5024i, -26862i) << (var_0 % vec4<u32>(32u)), ~_wgslsmith_div_vec4_i32(arg_0.c, vec4<i32>(global0.a, arg_0.c.x, u_input.a.x, u_input.a.x)), !(!vec4<bool>(global2.a, true, false, false)))), global2.c, i32(-1i) * -(i32(-1i) * -101359i));
    return Struct_3(_wgslsmith_mod_i32(global0.a, func_4(func_4(global2.d.c, global2.d.c).c, _wgslsmith_mult_vec4_i32(-arg_0.c, -vec4<i32>(33503i, global0.a, -1i, -2147483647i))).c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(vec4<i32>(_wgslsmith_add_i32(20618i, 5628i), -_wgslsmith_dot_vec2_i32(vec2<i32>(-57807i, global2.d.c.x), vec2<i32>(-2147483647i, -1i)), 0i, -1i), min(vec4<i32>(global2.d.c.x, func_1(), _wgslsmith_mult_i32(u_input.a.x, u_input.a.x), ~0i), -vec4<i32>(0i, global2.d.c.x, global0.a, global0.a))));
    let var_1 = u_input.a.x;
    let var_2 = select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(global2.e, true), vec2<bool>(global2.e, false), select(vec2<bool>(false, global2.e), vec2<bool>(true, false), vec2<bool>(global2.e, false)))), vec2<bool>(all(vec4<bool>(global2.e, false, global2.a, global2.a)), all(select(vec3<bool>(global2.a, global2.a, true), vec3<bool>(global2.a, true, false), global2.a))), !(!select(vec2<bool>(global2.e, global2.e), vec2<bool>(false, true), vec2<bool>(global2.a, global2.e)))), select(select(select(select(vec2<bool>(global2.e, true), vec2<bool>(false, true), false), vec2<bool>(global2.a, global2.e), vec2<bool>(true, true)), !(!vec2<bool>(true, global2.a)), vec2<bool>(global2.e, any(vec2<bool>(true, true)))), select(!vec2<bool>(true, global2.a), vec2<bool>(any(vec4<bool>(true, global2.a, global2.a, global2.a)), true), select(vec2<bool>(true, true), !vec2<bool>(false, global2.a), global2.e)), select(select(select(vec2<bool>(global2.a, false), vec2<bool>(global2.e, true), vec2<bool>(global2.a, global2.e)), !vec2<bool>(true, global2.a), !vec2<bool>(global2.e, global2.e)), select(vec2<bool>(global2.a, true), select(vec2<bool>(false, true), vec2<bool>(true, false), global2.a), vec2<bool>(global2.a, global2.a)), vec2<bool>(true, !global2.a))), !global2.a);
    let var_3 = 1i | max(-(var_0.a >> (1u % 32u)), -2147483647i);
    let var_4 = -64082i;
    let var_5 = _wgslsmith_add_vec4_i32(vec4<i32>(~(~(-2794i)), ~(i32(-1i) * -2147483647i), ~global0.a, -2147483647i << (~global2.c.d % 32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(func_5(Struct_1(vec4<f32>(872f, global2.d.a.x, global2.c.a.x, global2.c.b), 534f, vec4<i32>(u_input.a.x, 0i, 0i, 1i), 4294967295u)).a, _wgslsmith_div_i32(global0.a, var_3) ^ var_1, _wgslsmith_dot_vec2_i32(vec2<i32>(66539i, 36423i), global2.d.c.ww) >> (global2.b.x % 32u), ~(~u_input.a.x)), (global2.c.c | firstLeadingBit(vec4<i32>(2034i, var_0.a, 0i, 41651i))) ^ ~_wgslsmith_add_vec4_i32(global2.d.c, vec4<i32>(u_input.a.x, global2.d.c.x, global0.a, -17666i))));
    let var_6 = global2.c.a.yz;
    global0 = Struct_3(var_5.x ^ -21010i);
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(20914u, 0u, global2.b.x, global2.b.x) & _wgslsmith_div_vec4_u32(vec4<u32>(3800u, 0u, global2.d.d, 38574u), vec4<u32>(146793u, global2.c.d, 4294967295u, 0u))), global2.d.b);
}

