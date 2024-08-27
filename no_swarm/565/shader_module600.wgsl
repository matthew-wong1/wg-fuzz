struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: u32,
    d: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-45059i, -24492i, -1i);

var<private> global1: Struct_1 = Struct_1(1u, 5419i, vec3<u32>(0u, 0u, 17209u), vec2<i32>(18655i, 1i));

var<private> global2: array<vec2<f32>, 32> = array<vec2<f32>, 32>(vec2<f32>(802f, -731f), vec2<f32>(-755f, -1829f), vec2<f32>(-504f, -231f), vec2<f32>(-350f, -628f), vec2<f32>(1235f, -179f), vec2<f32>(721f, 251f), vec2<f32>(-1512f, -1174f), vec2<f32>(524f, 1036f), vec2<f32>(1055f, 338f), vec2<f32>(712f, 179f), vec2<f32>(1000f, 3207f), vec2<f32>(-2643f, -1281f), vec2<f32>(1000f, 1431f), vec2<f32>(-746f, 479f), vec2<f32>(-1000f, -545f), vec2<f32>(-801f, -284f), vec2<f32>(-1826f, 155f), vec2<f32>(-1271f, -143f), vec2<f32>(697f, 255f), vec2<f32>(923f, -721f), vec2<f32>(826f, -873f), vec2<f32>(1569f, -116f), vec2<f32>(-407f, 199f), vec2<f32>(842f, 646f), vec2<f32>(-1534f, -1670f), vec2<f32>(598f, -1257f), vec2<f32>(-633f, -1364f), vec2<f32>(468f, -1109f), vec2<f32>(-1700f, -223f), vec2<f32>(510f, -1442f), vec2<f32>(-514f, -310f), vec2<f32>(232f, -1321f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec4<u32>, arg_3: i32) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + -941f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1056f - arg_0)))))));
    return true;
}

fn func_2(arg_0: u32, arg_1: i32) -> Struct_3 {
    var var_0 = Struct_2(vec2<u32>(50017u, max(_wgslsmith_mult_u32(arg_0 ^ u_input.b, arg_0 | arg_0), arg_0)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(func_3(382f, true, vec4<u32>(global1.a, global1.a, 47023u, 42403u), global1.b), true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), any(vec4<bool>(true, false, false, true)) || true), vec3<bool>(false, true || select(false, false, false), true)), global1.c.x, vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), false));
    global0 = _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, ~reverseBits(arg_1) | -arg_1, ~84103i), -(~vec3<i32>(2147483647i, ~51823i, global0.x)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(292f, _wgslsmith_f_op_f32(floor(408f)), !var_0.b.x)) + 1913f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(158f * -1000f), _wgslsmith_f_op_f32(-1032f * -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-725f + 349f), _wgslsmith_div_f32(481f, -773f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(step(-684f, 837f)))) + _wgslsmith_div_f32(-483f, _wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(-299f, -501f)))), -445f);
    global0 = (vec3<i32>(-1i) * -vec3<i32>(9269i, -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, 26358i, arg_1, -25197i), vec4<i32>(-4115i, 1i, arg_1, global0.x)))) & (vec3<i32>(-1i) * -(vec3<i32>(-19108i, 9118i, 0i) << ((vec3<u32>(arg_0, 42155u, u_input.a) & global1.c) % vec3<u32>(32u))));
    let var_2 = vec2<f32>(var_1.x, _wgslsmith_f_op_f32(select(-914f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -496f) * _wgslsmith_f_op_f32(floor(var_1.x))), var_0.d.x)));
    return Struct_3(_wgslsmith_sub_u32(abs(var_0.a.x), 4294967295u), Struct_1(max(~1u, ~4294967295u), _wgslsmith_mod_i32(_wgslsmith_sub_i32(arg_1, -1i) ^ (15482i | arg_1), _wgslsmith_sub_i32(-9912i, -2248i)), global1.c, global0.yy), firstLeadingBit(9275u), abs(_wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(global0.x, 2147483647i, global0.x)), vec3<i32>(_wgslsmith_sub_i32(-241i, global1.b), reverseBits(global0.x), arg_1 & 2147483647i))), firstLeadingBit(vec3<u32>(~abs(1u), _wgslsmith_add_u32(_wgslsmith_mult_u32(global1.a, 59821u), u_input.c), arg_0 ^ var_0.a.x)));
}

fn func_1() -> i32 {
    let var_0 = ~1u;
    global2 = array<vec2<f32>, 32>();
    global2 = array<vec2<f32>, 32>();
    global2 = array<vec2<f32>, 32>();
    var var_1 = func_2(~(~(~var_0)), _wgslsmith_sub_i32(5377i, min(global1.d.x, -45901i)));
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~firstLeadingBit(vec2<u32>(~(~global1.a), 4294967295u));
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(14625i, 2147483647i, 0i), vec3<i32>(global1.d.x, global0.x, global1.d.x)), func_1(), global0.x), _wgslsmith_mult_vec3_i32(reverseBits(-vec3<i32>(global0.x, -1i, global1.d.x)), _wgslsmith_div_vec3_i32(vec3<i32>(-17734i, 1i, global1.d.x), _wgslsmith_div_vec3_i32(vec3<i32>(45965i, global1.b, -2147483647i), vec3<i32>(global0.x, global1.b, global1.d.x))))) & 0i;
    var var_2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(~(~32370u), ~countOneBits(global1.a), 0u), _wgslsmith_f_op_vec2_f32(floor(global2[_wgslsmith_index_u32(abs(var_0.x), 32u)])));
}

