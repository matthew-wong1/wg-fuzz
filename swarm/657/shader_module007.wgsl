struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_2 = Struct_2(Struct_1(-786f, vec2<u32>(31469u, 36585u), vec3<f32>(-1136f, 1310f, -1905f)), Struct_1(275f, vec2<u32>(34505u, 25051u), vec3<f32>(-1649f, -1959f, 116f)), 0u, Struct_1(1619f, vec2<u32>(34326u, 1u), vec3<f32>(464f, 355f, -1146f)), 0u);

var<private> global2: vec2<i32> = vec2<i32>(0i, 52092i);

var<private> global3: array<vec2<u32>, 12> = array<vec2<u32>, 12>(vec2<u32>(4294967295u, 55794u), vec2<u32>(68673u, 17262u), vec2<u32>(18839u, 52804u), vec2<u32>(0u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(2139u, 42716u), vec2<u32>(3562u, 24173u), vec2<u32>(4294967295u, 0u), vec2<u32>(39457u, 103111u), vec2<u32>(98973u, 4294967295u), vec2<u32>(4294967295u, 25080u), vec2<u32>(1u, 0u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_3, arg_1: bool) -> vec3<i32> {
    global1 = arg_0.b;
    global1 = arg_0.c;
    global3 = array<vec2<u32>, 12>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(arg_0.a.x + -776f), ~(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(arg_0.b.c, 1490u), abs(vec2<u32>(11785u, global1.c)), vec2<u32>(19515u, 4294967295u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1.a.c.x, -236f, 271f), arg_0.b.a.c)))));
    let var_1 = select(!select(!select(vec4<bool>(true, global0.x, arg_1, false), vec4<bool>(false, arg_1, false, true), global0.x), vec4<bool>(arg_1, true, global0.x, true || global0.x), arg_1), !(!select(!vec4<bool>(false, true, arg_1, false), vec4<bool>(false, arg_1, global0.x, global0.x), vec4<bool>(true, global0.x, global0.x, arg_1))), !vec4<bool>(false, global0.x, global0.x, arg_1));
    return vec3<i32>(2147483647i, 2147483647i, 16533i);
}

fn func_3(arg_0: u32) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(global1.b.c.yy));
    let var_1 = select(!(!select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), false), !vec2<bool>(global0.x, false), any(vec4<bool>(global0.x, global0.x, global0.x, global0.x)))), select(vec2<bool>(!(!global0.x), true), vec2<bool>(false, true), vec2<bool>(_wgslsmith_mult_u32(1u, arg_0) < u_input.c, !global0.x)), all(!vec4<bool>(true | global0.x, global0.x | global0.x, global2.x > 1i, true)));
    global3 = array<vec2<u32>, 12>();
    let var_2 = var_1;
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) + _wgslsmith_f_op_f32(trunc(global1.b.a))), 293f))), Struct_2(Struct_1(_wgslsmith_f_op_f32(815f - var_0.x), vec2<u32>(arg_0, arg_0), global1.a.c), Struct_1(1000f, vec2<u32>(firstTrailingBit(1u), select(global1.a.b.x, arg_0, var_2.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.d.c + global1.d.c))), ~4294967295u, global1.a, arg_0), Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -904f), _wgslsmith_div_vec2_u32(global1.b.b, min(global1.a.b, global1.b.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1123f, -1244f, var_0.x))), global1.d, 63570u, global1.d, u_input.c));
    return abs(_wgslsmith_mod_vec3_i32(min(u_input.d, vec3<i32>(2147483647i, -1i, u_input.a)), -vec3<i32>(global2.x, global2.x, u_input.d.x)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(arg_0, _wgslsmith_mod_u32(u_input.c, 1u), abs(arg_0)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 1u, u_input.c, u_input.c), vec4<u32>(82553u, global1.a.b.x, global1.d.b.x, 41459u)), ~93726u, u_input.c)) % vec3<u32>(32u)));
}

fn func_1() -> f32 {
    let var_0 = 0i ^ _wgslsmith_mult_i32(min(42648i, -global2.x), _wgslsmith_add_i32(28696i, -global2.x));
    let var_1 = -_wgslsmith_clamp_vec3_i32(u_input.d & func_2(Struct_3(vec2<f32>(641f, 1822f), Struct_2(Struct_1(1221f, vec2<u32>(71414u, 25722u), global1.a.c), Struct_1(global1.b.a, global3[_wgslsmith_index_u32(u_input.c, 12u)], vec3<f32>(global1.b.c.x, global1.a.c.x, -1141f)), 60387u, global1.a, global1.c), Struct_2(Struct_1(561f, global1.b.b, vec3<f32>(322f, 679f, global1.d.a)), global1.d, global1.a.b.x, Struct_1(-811f, global3[_wgslsmith_index_u32(u_input.c, 12u)], vec3<f32>(472f, global1.b.c.x, 425f)), 0u)), global0.x), func_3(~1u), _wgslsmith_mult_vec3_i32(firstTrailingBit(u_input.d | vec3<i32>(global2.x, var_0, var_0)), u_input.d));
    global0 = vec2<bool>(true, true);
    let var_2 = u_input.c | ~u_input.c;
    let var_3 = Struct_2(global1.a, Struct_1(_wgslsmith_f_op_f32(-916f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-890f - 1639f)))), vec2<u32>(1u, global1.e), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.c.x, _wgslsmith_f_op_f32(trunc(-113f)), _wgslsmith_f_op_f32(-global1.d.a)) * _wgslsmith_f_op_vec3_f32(-global1.a.c))), countOneBits(~global1.b.b.x), Struct_1(_wgslsmith_f_op_f32(select(global1.b.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(global1.d.a, global1.a.c.x)))), false)), vec2<u32>(_wgslsmith_div_u32(~18142u, ~6465u), _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.c, global1.d.b.x), min(105154u, 0u))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global1.b.c)))), 7259u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d.a * var_3.b.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<u32>, 12>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.a.a))))), _wgslsmith_f_op_f32(462f + _wgslsmith_f_op_f32(1714f - _wgslsmith_f_op_f32(func_1()))), 241f, 649f);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, global1.d.c.x)))) + _wgslsmith_f_op_f32(global1.a.a + global1.d.a)) - global1.b.a);
    var var_2 = 0u >> (u_input.c % 32u);
    let var_3 = 66280i;
    var var_4 = u_input.c == global1.c;
    var var_5 = _wgslsmith_f_op_f32(max(-1041f, 687f));
    let var_6 = select(select(select(vec3<bool>(global0.x & true, !global0.x, false), !vec3<bool>(global0.x, global0.x, global0.x), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, global0.x)), select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, global0.x, global0.x), global0.x), !vec3<bool>(global0.x, global0.x, global0.x))), vec3<bool>(true, !all(vec3<bool>(global0.x, global0.x, false)), !global0.x), true), !(!(!vec3<bool>(global0.x, global0.x, false))), vec3<bool>(true, any(!(!vec2<bool>(global0.x, true))), (72080i == ~var_3) || global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(46571u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(194f, global1.a.c.x, _wgslsmith_f_op_f32(trunc(global1.d.a)), -410f) * vec4<f32>(-205f, _wgslsmith_f_op_f32(max(-952f, var_0.x)), -1480f, _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1, global1.b.c.x, 784f, 910f), vec4<f32>(var_0.x, global1.b.c.x, 260f, var_0.x))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.d.c.x, var_0.x, global1.a.a, 646f), vec4<f32>(global1.a.c.x, var_1, -627f, var_1), vec4<bool>(var_6.x, global0.x, false, var_6.x))))), true)), vec3<u32>(~abs(global1.e), global1.d.b.x, (62572u | _wgslsmith_dot_vec2_u32(global3[_wgslsmith_index_u32(u_input.c, 12u)], vec2<u32>(u_input.c, 4294967295u))) >> (~global1.e % 32u)));
}

