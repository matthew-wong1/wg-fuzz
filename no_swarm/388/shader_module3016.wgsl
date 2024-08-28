struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 22> = array<u32, 22>(1u, 16903u, 4294967295u, 1u, 40763u, 1u, 73114u, 4294967295u, 0u, 0u, 87570u, 17240u, 92590u, 14456u, 4294967295u, 97122u, 4294967295u, 4294967295u, 4294967295u, 1912u, 1u, 96368u);

var<private> global1: array<u32, 11> = array<u32, 11>(4294967295u, 0u, 0u, 134558u, 0u, 1488u, 48346u, 1u, 4294967295u, 4294967295u, 0u);

var<private> global2: bool;

var<private> global3: array<i32, 27> = array<i32, 27>(-1i, 0i, 1i, 1i, 2147483647i, -1988i, 61197i, 57115i, -22683i, -13474i, 2147483647i, -10715i, 1i, 10804i, -1i, 1i, 25329i, -30454i, 1i, -41907i, 54728i, 1i, 11075i, -1i, i32(-2147483648), 1i, 2147483647i);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> u32 {
    global3 = array<i32, 27>();
    let var_0 = select(vec2<bool>(true, true), select(select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, true), true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(false, true), false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))), true), select(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), any(vec4<bool>(true, false, true, true))), all(select(vec2<bool>(true, false), vec2<bool>(false, true), true))), select(!select(vec2<bool>(false, true), vec2<bool>(false, true), true), !select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, 26905u <= global0[_wgslsmith_index_u32(22683u, 22u)]))), vec2<bool>(true, true));
    global3 = array<i32, 27>();
    var var_1 = Struct_2(~_wgslsmith_add_vec2_u32(~vec2<u32>(26331u, 6713u), vec2<u32>(global0[_wgslsmith_index_u32(reverseBits(1u), 22u)], _wgslsmith_div_u32(global1[_wgslsmith_index_u32(46176u, 11u)], 84819u))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -711f))), 366f)), vec3<i32>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~0u, abs(0u), _wgslsmith_clamp_u32(4294967295u, global1[_wgslsmith_index_u32(1u, 11u)] | 31309u, ~global1[_wgslsmith_index_u32(22599u, 11u)])), 11u)], 27u)], abs(1i), -51422i));
    let var_2 = var_1.b;
    return 1u;
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: vec4<bool>) -> i32 {
    var var_0 = Struct_2(firstLeadingBit(vec2<u32>(28284u, 38658u)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1848f))), _wgslsmith_f_op_f32(abs(-1000f)))), u_input.b.zxw << ((~vec3<u32>(0u, 10692u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8751u, 11u)], 11u)]) | firstTrailingBit(vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 11u)], 1u, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(33986u, 22u)], 11u)], 11u)], 22u)], 11u)], 22u)], 11u)]) >> (vec3<u32>(global1[_wgslsmith_index_u32(39100u, 11u)], global1[_wgslsmith_index_u32(43576u, 11u)], global0[_wgslsmith_index_u32(4294967295u, 22u)]) % vec3<u32>(32u)))) % vec3<u32>(32u)));
    global0 = array<u32, 22>();
    let var_1 = vec4<bool>(true, firstLeadingBit(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(62548u, 22u)], 11u)]) > 1u, arg_2.x, arg_1);
    var var_2 = _wgslsmith_div_u32(var_0.a.x, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~firstLeadingBit(firstTrailingBit(vec3<u32>(var_0.a.x, var_0.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 22u)], 11u)], 11u)]))), _wgslsmith_clamp_vec3_u32(vec3<u32>(func_3(-36635i), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(10648u, 11u)]), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(1u, 11u)], var_0.a.x), 11u)], 22u)]), _wgslsmith_clamp_vec3_u32(select(vec3<u32>(0u, var_0.a.x, var_0.a.x), vec3<u32>(0u, var_0.a.x, 0u), vec3<bool>(false, arg_1, false)), countOneBits(vec3<u32>(4294967295u, 4294967295u, 4294967295u)), _wgslsmith_add_vec3_u32(vec3<u32>(2887u, 53291u, var_0.a.x), vec3<u32>(global1[_wgslsmith_index_u32(1u, 11u)], 6637u, 41432u))), max(firstLeadingBit(vec3<u32>(0u, global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(var_0.a.x, 22u)])), ~vec3<u32>(0u, 64810u, 1u)))), 22u)]);
    global1 = array<u32, 11>();
    return 1127i;
}

fn func_1() -> Struct_2 {
    global3 = array<i32, 27>();
    let var_0 = u_input.b;
    let var_1 = vec4<i32>(54905i, ~var_0.x, _wgslsmith_dot_vec4_i32(var_0, ~(-_wgslsmith_add_vec4_i32(u_input.b, vec4<i32>(u_input.a.x, global3[_wgslsmith_index_u32(49965u, 27u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31374u, 22u)], 27u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 11u)], 22u)], 27u)])))), -_wgslsmith_div_i32(firstLeadingBit(_wgslsmith_mod_i32(-552i, var_0.x)), func_2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(624f, 1000f, -327f))), select(true, false, false), vec4<bool>(true, true, true, true))));
    global0 = array<u32, 22>();
    var var_2 = Struct_2(select(min(vec2<u32>(1u, global0[_wgslsmith_index_u32(1u, 22u)] ^ global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 22u)], 11u)], 11u)], 22u)]), vec2<u32>(80603u >> (global0[_wgslsmith_index_u32(4294967295u, 22u)] % 32u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(11366u, 24901u, global1[_wgslsmith_index_u32(0u, 11u)]), 22u)], 22u)])), reverseBits(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 22u)], ~global0[_wgslsmith_index_u32(37285u, 22u)])), vec2<bool>(true, true)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1406f, -403f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(523f, -753f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(643f, -246f))))), vec3<i32>(u_input.a.x, var_0.x, i32(-1i) * -var_1.x));
    return Struct_2(~var_2.a, Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, -992f)))))))), vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 27u)] & 1i, countOneBits(reverseBits(~var_1.x)), firstTrailingBit(var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 146f;
    var var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(var_1.a.x, 11u)]);
}

