struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: array<vec4<f32>, 26>;

var<private> global2: vec2<bool>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: i32) -> bool {
    global1 = array<vec4<f32>, 26>();
    let var_0 = arg_0;
    let var_1 = Struct_1(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, countOneBits(u_input.a)), vec2<u32>(~116014u, u_input.a)), 5338u, _wgslsmith_sub_vec3_i32(~select(~vec3<i32>(41039i, var_0, u_input.e), vec3<i32>(u_input.b, -1i, 23261i), vec3<bool>(true, true, global0.x)), vec3<i32>(61133i, 2147483647i, -abs(0i))));
    global1 = array<vec4<f32>, 26>();
    global2 = !(!vec2<bool>(!global0.x, true));
    return global0.x;
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: vec3<i32>) -> vec4<u32> {
    global1 = array<vec4<f32>, 26>();
    var var_0 = select(select(!vec4<bool>(any(vec3<bool>(global0.x, arg_0, true)), true, !arg_0, true), select(!select(arg_1, vec4<bool>(global0.x, true, false, true), true), !arg_1, !arg_1), arg_1), !select(vec4<bool>(false & global2.x, true, arg_3.x != -1i, true), arg_1, arg_1.x), arg_1);
    let var_1 = -17634i;
    global2 = !select(arg_1.zw, select(select(arg_1.zx, vec2<bool>(true, true), any(vec4<bool>(global2.x, arg_1.x, arg_1.x, false))), vec2<bool>(global2.x, true), arg_1.wz), false);
    let var_2 = countOneBits(var_1);
    return select(vec4<u32>(~u_input.a | firstLeadingBit(33229u), u_input.a, 9825u, ~(~_wgslsmith_div_u32(4294967295u, u_input.a))), _wgslsmith_add_vec4_u32(reverseBits(~vec4<u32>(u_input.a, 25936u, u_input.a, 15522u)) | max(vec4<u32>(65147u, 4294967295u, 83755u, u_input.a), min(vec4<u32>(u_input.a, 56603u, u_input.a, u_input.a), vec4<u32>(4294967295u, 4294967295u, u_input.a, 1992u))), _wgslsmith_add_vec4_u32(~(~vec4<u32>(1u, u_input.a, 4294967295u, u_input.a)), vec4<u32>(1u, u_input.a, countOneBits(4294967295u), 0u & u_input.a))), true);
}

fn func_2(arg_0: vec4<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-664f, -1427f))))) + -1258f);
    var_0 = -203f;
    var var_1 = (vec4<u32>(u_input.a >> (10375u % 32u), abs(u_input.a) & ~u_input.a, _wgslsmith_div_u32(~u_input.a, u_input.a), u_input.a) << ((firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(81630u, 1u, 21121u, u_input.a), vec4<u32>(19394u, 0u, u_input.a, u_input.a))) | (vec4<u32>(51525u, 1u, 62110u, 118710u) & (vec4<u32>(u_input.a, 0u, 19033u, u_input.a) & vec4<u32>(u_input.a, u_input.a, u_input.a, 14390u)))) % vec4<u32>(32u))) ^ func_4(func_3(-1i), vec4<bool>(true, true, true, true), Struct_3(_wgslsmith_mult_i32(_wgslsmith_sub_i32(-1i, u_input.c), _wgslsmith_clamp_i32(u_input.b, 1i, -60557i))), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(max(vec3<i32>(u_input.d.x, 2147483647i, 37808i), vec3<i32>(-2147483647i, u_input.e, u_input.b)), vec3<i32>(u_input.c, 0i, 51358i) << (vec3<u32>(4294967295u, u_input.a, u_input.a) % vec3<u32>(32u))), ~vec3<i32>(-1i, -29082i, -2147483647i)));
    global1 = array<vec4<f32>, 26>();
    var_0 = -1811f;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-461f, 2288f)))))), 377f));
}

fn func_1() -> bool {
    global1 = array<vec4<f32>, 26>();
    global1 = array<vec4<f32>, 26>();
    var var_0 = -vec4<i32>(u_input.b, countOneBits(-u_input.e) >> (10847u % 32u), _wgslsmith_mult_i32(~525i, countOneBits(2147483647i)), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.e, -37132i, -2147483647i), vec3<i32>(-2147483647i, u_input.e, u_input.d.x)), min(vec3<i32>(35122i, u_input.d.x, u_input.e), vec3<i32>(u_input.b, 25993i, u_input.c))), firstTrailingBit(vec3<i32>(50198i, -57983i, u_input.d.x))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(select(-1398f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-110f)), _wgslsmith_div_f32(1000f, -155f))), true)), 625f);
    var_0 = vec4<i32>(1i, -43233i, 0i, reverseBits(-1i)) | max(vec4<i32>(-65453i, countOneBits(var_0.x), select(2147483647i, 2147483647i, global0.x), var_0.x | u_input.c) << (~(~vec4<u32>(15129u, u_input.a, u_input.a, 71129u)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_0.x, var_0.x), var_0.yzw), min(var_0.x, u_input.d.x), u_input.e, -2147483647i), -(vec4<i32>(-23200i, var_0.x, var_0.x, -82802i) & vec4<i32>(-44622i, var_0.x, var_0.x, var_0.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(vec4<bool>(global0.x, global0.x, false, true))), -154f)))) + 971f) == 771f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(vec2<bool>(any(!vec4<bool>(false, global2.x, true, global2.x)) | global0.x, global0.x), select(vec2<bool>(any(select(vec3<bool>(true, false, global2.x), vec3<bool>(global0.x, true, false), global2.x)), global2.x), vec2<bool>(!global2.x || all(vec4<bool>(true, true, false, global0.x)), true), vec2<bool>(global0.x, true)), !vec2<bool>(true, func_1()));
    global1 = array<vec4<f32>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.a, 4294967295u, 2903u, ~(~45933u)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-1687f + 290f), _wgslsmith_f_op_f32(func_2(vec4<bool>(global2.x, true, global0.x, global2.x)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-624f, -599f)) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1089f, 1000f), vec2<f32>(-952f, -423f))))))));
}

