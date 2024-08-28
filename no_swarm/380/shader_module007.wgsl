struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: u32,
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

var<private> global0: array<vec4<f32>, 18> = array<vec4<f32>, 18>(vec4<f32>(2074f, 200f, -181f, 2035f), vec4<f32>(-432f, -456f, 748f, -1125f), vec4<f32>(1177f, 1369f, 702f, -428f), vec4<f32>(457f, 182f, -1301f, -421f), vec4<f32>(165f, -1000f, 111f, 886f), vec4<f32>(1000f, -460f, -106f, 179f), vec4<f32>(-535f, 494f, -386f, -2585f), vec4<f32>(239f, 1000f, 228f, 1370f), vec4<f32>(591f, -1738f, -1000f, 1745f), vec4<f32>(149f, -144f, -418f, 1651f), vec4<f32>(-383f, -448f, -1459f, 743f), vec4<f32>(218f, 500f, 546f, 2778f), vec4<f32>(525f, -1000f, 572f, 864f), vec4<f32>(-1000f, 811f, 1620f, 335f), vec4<f32>(1612f, 1963f, 1000f, 1304f), vec4<f32>(-1329f, -317f, -848f, -535f), vec4<f32>(183f, -232f, 1906f, 764f), vec4<f32>(-256f, 1017f, -2498f, 1410f));

var<private> global1: array<Struct_1, 27>;

var<private> global2: array<f32, 23>;

var<private> global3: Struct_1 = Struct_1(-1i);

var<private> global4: vec4<i32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: bool) -> u32 {
    var var_0 = select(select(select(select(vec2<bool>(true, true), !vec2<bool>(arg_3, false), vec2<bool>(true, true)), vec2<bool>(true, 53613i > global4.x), false), !vec2<bool>(32836i <= global3.a, all(vec2<bool>(arg_3, arg_2))), false), vec2<bool>(!arg_2, all(select(!vec4<bool>(arg_3, true, arg_2, true), vec4<bool>(false, arg_3, false, arg_3), all(vec4<bool>(arg_3, false, true, arg_3))))), !vec2<bool>(true, any(!vec2<bool>(arg_3, true))));
    let var_1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.e, 19856u), ~1u), 23u)])), -1367f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -142f) + 1f)), global2[_wgslsmith_index_u32(reverseBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 1u, 24804u, 1u), vec4<u32>(arg_1, arg_1, arg_1, 21453u))), 23u)])));
    var var_2 = Struct_1(-(global3.a >> (arg_1 % 32u)));
    var var_3 = ~2147483647i;
    let var_4 = _wgslsmith_mod_vec3_i32(-vec3<i32>(1i, -76159i, firstTrailingBit(var_2.a)), ~abs(~(-vec3<i32>(u_input.c, var_2.a, global4.x))));
    return ~(~_wgslsmith_add_u32(30615u, _wgslsmith_dot_vec3_u32(u_input.b, u_input.b)) << (_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, arg_1, arg_1, u_input.a.x), u_input.a, vec4<bool>(var_0.x, var_0.x, true, true)), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1, 1u, 1u, arg_1), vec4<u32>(arg_1, arg_1, u_input.a.x, 0u), vec4<u32>(34377u, 0u, arg_1, arg_1))), arg_1) % 32u));
}

fn func_2(arg_0: i32) -> i32 {
    global4 = vec4<i32>(_wgslsmith_dot_vec3_i32(global4.wyy, vec3<i32>(abs(-17531i), -1i, ~global4.x)), ~_wgslsmith_add_i32(global3.a, select(arg_0, u_input.c, true)) & 0i, _wgslsmith_mult_i32(~_wgslsmith_mod_i32(global3.a, 1i), ~_wgslsmith_sub_i32(global3.a, u_input.c)), u_input.c | arg_0);
    let var_0 = Struct_1(~45277i);
    let var_1 = !(!all(vec3<bool>(true, true, true)));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-904f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1321f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 23u)]))));
    let var_3 = _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.a.x, 1u, ~u_input.e, _wgslsmith_div_u32(u_input.a.x, 1u))), abs(u_input.a), vec4<u32>(_wgslsmith_mult_u32(func_3(global1[_wgslsmith_index_u32(u_input.a.x >> (1u % 32u), 27u)], _wgslsmith_add_u32(4294967295u, u_input.b.x), var_1, false & var_1), 6597u), min(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.e, u_input.a.x), countOneBits(u_input.b))), firstLeadingBit(firstTrailingBit(93205u) & max(25279u, 46480u)), abs(u_input.d)));
    return global4.x;
}

fn func_1() -> i32 {
    let var_0 = abs(_wgslsmith_sub_vec4_i32(~(-vec4<i32>(1i, global3.a, 2147483647i, 19993i)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(global4.x, global3.a, global3.a, 0i), vec4<i32>(global3.a, -2316i, u_input.c, -23246i), vec4<i32>(global4.x, global4.x, u_input.c, 1i))) | _wgslsmith_mult_vec4_i32(~(~vec4<i32>(-17211i, u_input.c, global3.a, -1i)), ~min(vec4<i32>(46699i, -1i, -8102i, -2147483647i), vec4<i32>(1i, u_input.c, global4.x, 1i))));
    global2 = array<f32, 23>();
    var var_1 = u_input.b.x & ~(~4294967295u);
    var_1 = 64306u ^ ~_wgslsmith_mod_u32(39462u, max(0u, u_input.d) | firstTrailingBit(u_input.d));
    var var_2 = 1258f;
    return min(func_2(~countOneBits(_wgslsmith_add_i32(8990i, -2147483647i))), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 23>();
    var var_0 = _wgslsmith_div_i32(u_input.c, u_input.c & 1i);
    global0 = array<vec4<f32>, 18>();
    let var_1 = Struct_1(_wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, u_input.c >> (u_input.e % 32u), u_input.c), ~vec3<i32>(~global3.a, func_1(), ~13801i)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, global2[_wgslsmith_index_u32(1u, 23u)]);
}

