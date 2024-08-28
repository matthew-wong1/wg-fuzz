struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: bool,
    e: vec2<f32>,
}

struct Struct_4 {
    a: bool,
    b: u32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(20550u, 0u), vec2<u32>(8077u, 2230u), vec2<u32>(0u, 47552u), vec2<u32>(4294967295u, 44871u), vec2<u32>(68163u, 1u), vec2<u32>(1u, 33814u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(30653u, 15020u), vec2<u32>(31198u, 4294967295u), vec2<u32>(45484u, 11977u), vec2<u32>(17413u, 33924u), vec2<u32>(25134u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(71426u, 4294967295u), vec2<u32>(28533u, 0u), vec2<u32>(0u, 49018u), vec2<u32>(1u, 0u));

var<private> global2: Struct_4 = Struct_4(false, 31634u);

var<private> global3: vec2<bool>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    global0 = global3.x;
    var var_0 = 23308i & ~(u_input.a.x & u_input.a.x);
    var var_1 = ~max(global2.b, 1u);
    let var_2 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1233f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(2119f + -1177f))))));
    global3 = !(!(!(!select(vec2<bool>(true, false), vec2<bool>(global2.a, global2.a), vec2<bool>(global3.x, false)))));
    return u_input.a.x;
}

fn func_2() -> vec3<i32> {
    let var_0 = Struct_4(global3.x, global2.b);
    global3 = vec2<bool>(true, true);
    var var_1 = u_input.a;
    global1 = array<vec2<u32>, 17>();
    let var_2 = u_input.a ^ (vec3<i32>(max(min(u_input.a.x, -2147483647i), _wgslsmith_mult_i32(var_1.x, -41062i)), countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, 40044i, 0i), u_input.a)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, var_1.x, -2147483647i, 60957i), -vec4<i32>(var_1.x, u_input.a.x, var_1.x, var_1.x))) & select(reverseBits(firstTrailingBit(vec3<i32>(u_input.a.x, var_1.x, 2147483647i))), u_input.a, !global2.a & all(vec3<bool>(false, global2.a, true))));
    return vec3<i32>(~(i32(-1i) * -60332i), func_3(), var_2.x);
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: f32) -> Struct_5 {
    global1 = array<vec2<u32>, 17>();
    let var_0 = Struct_2(40980i, firstLeadingBit(countOneBits(~vec3<u32>(4294967295u, 4294967295u, global2.b))));
    let var_1 = Struct_2(countOneBits(-var_0.a), ~(~_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, u_input.b, 42794u), var_0.b), abs(vec3<u32>(var_0.b.x, var_0.b.x, u_input.b)))));
    var var_2 = u_input.b;
    return Struct_5(_wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -795f))));
}

fn func_5(arg_0: Struct_5, arg_1: i32) -> Struct_4 {
    let var_0 = Struct_2(~arg_1, vec3<u32>(max(firstTrailingBit(~61144u), ~(~u_input.b)), _wgslsmith_sub_u32(~4294967295u, ~_wgslsmith_sub_u32(24323u, u_input.b)), u_input.b));
    var var_1 = var_0.b;
    var var_2 = Struct_2(~(~45385i), vec3<u32>(~(~(global2.b | global2.b)), u_input.b, var_1.x ^ max(4294967295u, firstLeadingBit(var_0.b.x))));
    var var_3 = _wgslsmith_mult_vec4_i32(vec4<i32>(var_2.a, _wgslsmith_mult_i32(-2147483647i, var_2.a | var_2.a), var_0.a, (0i | arg_1) | max(36504i, var_0.a)), ~_wgslsmith_sub_vec4_i32(~vec4<i32>(3688i, -49154i, u_input.a.x, arg_1), -vec4<i32>(arg_1, var_2.a, -40228i, 2147483647i))) | -vec4<i32>(~u_input.a.x, countOneBits(var_0.a ^ arg_1), i32(-1i) * -6215i, -27355i);
    var var_4 = 500f;
    return Struct_4(func_2().x <= _wgslsmith_sub_i32(-1i, firstTrailingBit(1i)), ~1u);
}

fn func_1(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: f32) -> vec2<bool> {
    global2 = func_5(func_4(func_2(), arg_2, _wgslsmith_f_op_f32(f32(-1f) * -143f)), min(-41141i, -19787i));
    global3 = select(select(arg_1.yy, select(vec2<bool>(-267f < arg_2, true), !arg_1.zz, true), arg_1.yy), select(select(select(arg_1.xx, !arg_1.zz, all(arg_1.zy)), select(vec2<bool>(true, arg_1.x), !vec2<bool>(global2.a, arg_1.x), vec2<bool>(global3.x, true)), true), select(arg_1.xx, vec2<bool>(arg_1.x || global3.x, global2.a), arg_1.zz), arg_1.zx), abs(arg_0.a) > func_2().x);
    let var_0 = -28725i ^ func_3();
    let var_1 = u_input.a.x;
    global2 = func_5(Struct_5(_wgslsmith_f_op_f32(-arg_2)), var_1);
    return vec2<bool>(global3.x, any(!arg_1.xy));
}

fn func_6(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_4, arg_3: bool) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -423f)))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -874f) - vec2<f32>(207f, -419f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(565f, -187f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1049f, -447f) - vec2<f32>(258f, 480f)))))));
    let var_1 = Struct_1(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + -1008f), _wgslsmith_f_op_f32(var_0.x + var_0.x)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), var_0.x)))), all(vec2<bool>(arg_3, func_1(Struct_2(-17929i, vec3<u32>(6637u, global2.b, 19374u)), vec3<bool>(arg_1.x, true, false), var_0.x).x)) || all(arg_1));
    global0 = true;
    var var_2 = Struct_4(func_1(Struct_2(func_3(), firstTrailingBit(vec3<u32>(44339u, global2.b, 1u))), !(!select(vec3<bool>(true, global3.x, arg_1.x), vec3<bool>(global2.a, false, global2.a), vec3<bool>(false, global2.a, global3.x))), var_0.x).x, 37564u);
    global2 = func_5(Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.b, -276f)))), -arg_0);
    return Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -787f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~_wgslsmith_mod_u32(36273u, 4294967295u) | firstTrailingBit(global2.b));
    let var_1 = func_6(~u_input.a.x, !select(!func_1(Struct_2(u_input.a.x, vec3<u32>(u_input.b, global2.b, 15222u)), vec3<bool>(global3.x, false, true), -521f), vec2<bool>(global2.b >= 0u, global2.a || true), select(!vec2<bool>(false, global3.x), select(vec2<bool>(true, global2.a), vec2<bool>(true, true), global2.a), true)), func_5(func_4(countOneBits(u_input.a), -1277f, 171f), -53276i), global2.a);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-382f, -144f, var_1.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-379f, var_1.a, var_1.a), vec3<f32>(var_1.a, var_1.a, 794f))))))));
    global0 = global3.x;
    let var_3 = Struct_2(abs(2147483647i), ~abs(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 18687u, 4294967295u) | vec3<u32>(1192u, 20640u, 64851u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 48832u, global2.b), vec3<u32>(1u, 1u, 4294967295u)))));
    let var_4 = func_5(func_4(vec3<i32>(u_input.a.x, _wgslsmith_sub_i32(17652i, firstLeadingBit(-2147483647i)), max(i32(-1i) * -7122i, u_input.a.x)), var_1.a, _wgslsmith_f_op_f32(-var_2.x)), u_input.a.x);
    var var_5 = var_2.x;
    var var_6 = countOneBits(max(abs(~var_3.b.zz), abs(vec2<u32>(abs(39222u), 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(var_3.a, var_3.a, -2147483647i) ^ u_input.a), u_input.a)), ~4294967295u | _wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_6.x, 1u, u_input.b)), max(vec3<u32>(58826u, u_input.b, 1u), vec3<u32>(var_6.x, 33216u, 1u)) >> (var_3.b % vec3<u32>(32u))));
}

