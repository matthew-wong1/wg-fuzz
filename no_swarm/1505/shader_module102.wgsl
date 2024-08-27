struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27> = array<f32, 27>(-1000f, -920f, -1301f, -367f, -968f, 1010f, 1239f, 1000f, -387f, 648f, -2007f, 1786f, 331f, 545f, 593f, -701f, 1185f, -1724f, -361f, -188f, -1394f, 1151f, -1371f, -1264f, 1541f, 541f, -708f);

var<private> global1: u32 = 6275u;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: vec2<u32>, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_1(false);
    var var_1 = vec3<bool>(false, !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(arg_0.x, 27u)])) * global0[_wgslsmith_index_u32(4294967295u, 27u)]) == 1414f), var_0.a && false);
    global1 = 4294967295u;
    let var_2 = firstLeadingBit(arg_0.x);
    global0 = array<f32, 27>();
    return var_0;
}

fn func_1() -> u32 {
    global1 = _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u)), ~16573u);
    var var_0 = firstLeadingBit(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.d.x, u_input.b.x, -28831i), -vec3<i32>(-4401i, u_input.c.x, u_input.d.x)), u_input.d) | _wgslsmith_sub_vec3_i32(vec3<i32>(-5720i, 0i | u_input.d.x, u_input.c.x), -u_input.d));
    var var_1 = func_2(vec2<u32>(~_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 3460u, 44422u), _wgslsmith_add_vec3_u32(vec3<u32>(17891u, 20505u, 0u), vec3<u32>(102904u, 22469u, 48308u))), 29549u), _wgslsmith_sub_i32(1i, _wgslsmith_clamp_i32(-var_0.x, ~(var_0.x ^ var_0.x), 1i)));
    var_0 = _wgslsmith_mod_vec3_i32(firstTrailingBit(abs(u_input.e)), -vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-44221i, 4433i, var_0.x), u_input.e), var_0.x, u_input.b.x) ^ (abs(u_input.e) >> (firstTrailingBit(vec3<u32>(4294967295u, 13279u, 10522u)) % vec3<u32>(32u))));
    var var_2 = func_2(firstLeadingBit(_wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(1u, 1u)), ~vec2<u32>(14436u, 0u), min(vec2<u32>(1u, 1u), ~vec2<u32>(40845u, 4294967295u)))), (i32(-1i) * -22807i) ^ u_input.d.x);
    return 7251u;
}

fn func_3() -> u32 {
    var var_0 = func_2(_wgslsmith_mod_vec2_u32(reverseBits(abs(vec2<u32>(4294967295u, 1u))), ~(~vec2<u32>(4294967295u, 1u)) & countOneBits(firstTrailingBit(vec2<u32>(4294967295u, 4294967295u)))), 1i);
    let var_1 = func_2(select(vec2<u32>(func_1(), _wgslsmith_mult_u32(14257u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(0u, 0u)))), ~vec2<u32>(firstLeadingBit(47788u), 0u), !select(vec2<bool>(var_0.a, true), vec2<bool>(true, var_0.a), vec2<bool>(true, var_0.a))), u_input.d.x);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true);
    global0 = array<f32, 27>();
    let var_1 = vec4<u32>(firstLeadingBit(reverseBits(~0u)), _wgslsmith_add_u32(~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(13497u, 4294967295u, 48197u), vec3<u32>(95780u, 0u, 5430u))), ~1u), ~(~func_1()) & 1u, _wgslsmith_add_u32(32051u, (1u << (1u % 32u)) ^ func_3()));
    var var_2 = Struct_1(global0[_wgslsmith_index_u32(var_1.x, 27u)] != _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-107f * global0[_wgslsmith_index_u32(var_1.x, 27u)]), -327f)));
    let var_3 = -_wgslsmith_sub_i32(_wgslsmith_mult_i32((u_input.a >> (var_1.x % 32u)) | -30079i, u_input.a), _wgslsmith_add_i32(_wgslsmith_mult_i32(1i, u_input.b.x), ~u_input.b.x | firstTrailingBit(-30680i)));
    var var_4 = true | any(!select(select(vec4<bool>(false, var_0.a, var_0.a, var_2.a), vec4<bool>(var_2.a, true, false, false), vec4<bool>(true, true, var_0.a, var_2.a)), select(vec4<bool>(var_0.a, var_2.a, false, true), vec4<bool>(false, true, var_0.a, var_2.a), true), select(vec4<bool>(var_2.a, true, var_2.a, false), vec4<bool>(false, false, var_2.a, false), true)));
    let var_5 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, ~(~var_1.x) | _wgslsmith_dot_vec4_u32(~var_1, vec4<u32>(1u, var_1.x, var_1.x, 1u)), 25070u, ~4294967295u), ~(~var_1) & var_1), 27u)];
    let var_6 = abs(u_input.c.x) > -abs(u_input.a);
    let var_7 = func_2(~vec2<u32>(var_1.x, ~18191u) ^ var_1.yx, _wgslsmith_div_i32(u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, 7277i, var_3) | vec4<i32>(47425i, u_input.a, u_input.e.x, var_3), vec4<i32>(u_input.b.x, 2147483647i, var_3, u_input.d.x) << (vec4<u32>(65992u, var_1.x, var_1.x, 4294967295u) % vec4<u32>(32u)))) << (0u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(~max(vec4<i32>(2147483647i, var_3, u_input.c.x, i32(-1i) * -14611i), vec4<i32>(8917i, u_input.c.x, 1i, var_3) << (_wgslsmith_mult_vec4_u32(vec4<u32>(71125u, var_1.x, 4294967295u, 0u), vec4<u32>(18944u, var_1.x, 0u, 0u)) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_1.x, 27u)] * -124f))), 778f, global0[_wgslsmith_index_u32(var_1.x, 27u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(var_1.x, 27u)], var_6)) - _wgslsmith_f_op_f32(sign(-160f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-428f, global0[_wgslsmith_index_u32(45262u, 27u)], global0[_wgslsmith_index_u32(1u, 27u)], -365f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-554f, 635f, 459f, -700f) + vec4<f32>(global0[_wgslsmith_index_u32(1u, 27u)], -1341f, -206f, global0[_wgslsmith_index_u32(var_1.x, 27u)]))))), vec4<f32>(-413f, _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(1u, 27u)])), global0[_wgslsmith_index_u32(1u, 27u)], 100f), _wgslsmith_add_vec4_u32(vec4<u32>(var_1.x, 36743u, var_1.x, ~var_1.x), ~min(~var_1, var_1)));
}

