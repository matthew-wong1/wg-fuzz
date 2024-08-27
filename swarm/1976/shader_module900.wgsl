struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

var<private> global1: array<i32, 30> = array<i32, 30>(-21873i, i32(-2147483648), 43758i, 21309i, i32(-2147483648), -5654i, 0i, 4837i, 5170i, 13694i, -20173i, 4818i, i32(-2147483648), -54933i, 0i, 46838i, 1i, 0i, 1i, -1i, 0i, -27713i, 751i, 21235i, 4892i, 23749i, 14879i, -12931i, 0i, -1i);

var<private> global2: f32;

var<private> global3: i32 = 0i;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(37572u, 22u)];
    var var_1 = ~var_0.a.x << (~45364u % 32u);
    let var_2 = 328f;
    var var_3 = global0[_wgslsmith_index_u32(1u, 22u)];
    global0 = array<Struct_1, 22>();
    return true;
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec3<bool>, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = Struct_1(~abs(vec2<u32>(~6155u, arg_3.a.x)), arg_0.d.x, ~select(arg_3.d.x, arg_0.c, true), countOneBits(~(~(~arg_3.d))));
    global1 = array<i32, 30>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1, -943f, -826f, arg_1)))))));
    let var_2 = global0[_wgslsmith_index_u32(arg_0.c, 22u)];
    return vec4<bool>(true, arg_2.x, func_1(arg_3, var_2.b), arg_2.x);
}

fn func_2(arg_0: bool, arg_1: vec3<bool>) -> vec2<i32> {
    let var_0 = reverseBits(-firstLeadingBit(-32117i));
    global2 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(545f)), _wgslsmith_f_op_f32(-1000f * 968f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(609f + -138f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1515f))));
    var var_1 = !select(!select(select(vec4<bool>(true, arg_0, true, true), vec4<bool>(arg_1.x, arg_0, false, true), false), func_3(Struct_1(vec2<u32>(u_input.a, 1u), u_input.a, 1u, vec4<u32>(u_input.a, 4294967295u, 1u, u_input.a)), 1010f, vec3<bool>(arg_0, false, true), global0[_wgslsmith_index_u32(u_input.a, 22u)]), any(vec2<bool>(arg_0, arg_0))), !select(select(vec4<bool>(arg_0, arg_1.x, true, true), vec4<bool>(false, arg_0, arg_1.x, arg_1.x), arg_0), select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, true, true, false), false), false), all(func_3(global0[_wgslsmith_index_u32(~91791u, 22u)], _wgslsmith_f_op_f32(max(1264f, -533f)), select(vec3<bool>(arg_0, false, false), arg_1, arg_1), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(5213u, u_input.a), 22u)]).yz));
    global2 = _wgslsmith_f_op_f32(sign(-349f));
    let var_2 = global0[_wgslsmith_index_u32(~42147u, 22u)];
    return vec2<i32>(~global1[_wgslsmith_index_u32(var_2.c << (~var_2.b % 32u), 30u)], i32(-1i) * -reverseBits(global1[_wgslsmith_index_u32(u_input.a << (u_input.a % 32u), 30u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(!func_1(global0[_wgslsmith_index_u32(u_input.a, 22u)], 4294967295u), !any(vec3<bool>(true, false, true)), false);
    var var_1 = func_2(var_0.x, vec3<bool>(!(u_input.a >= u_input.a), true, select(var_0.x, select(true, true, true), true))) | ~(-vec2<i32>(countOneBits(global1[_wgslsmith_index_u32(u_input.a, 30u)]), 41193i));
    global0 = array<Struct_1, 22>();
    var var_2 = min((_wgslsmith_mod_vec2_i32(vec2<i32>(var_1.x, -15142i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -23764i), vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 30u)], 0i), vec2<i32>(global1[_wgslsmith_index_u32(0u, 30u)], var_1.x))) & ~_wgslsmith_sub_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(var_1.x, -1471i))) >> ((vec2<u32>(~0u, 4294967295u) & countOneBits(vec2<u32>(u_input.a, u_input.a))) % vec2<u32>(32u)), ~vec2<i32>(i32(-1i) * -2147483647i, -2171i));
    global0 = array<Struct_1, 22>();
    let var_3 = Struct_1(min(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(u_input.a, u_input.a)), ~(~vec2<u32>(4539u, u_input.a))), _wgslsmith_mod_vec2_u32(abs(firstLeadingBit(vec2<u32>(99469u, u_input.a))), _wgslsmith_sub_vec2_u32(select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(39700u, 19562u), true), vec2<u32>(11600u, 1227u)))), ~78205u, 29112u << (u_input.a % 32u), firstTrailingBit(~countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, u_input.a, 0u), vec4<u32>(u_input.a, u_input.a, 0u, 1u)))));
    global0 = array<Struct_1, 22>();
    let var_4 = _wgslsmith_f_op_f32(round(746f));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_1.x, global1[_wgslsmith_index_u32(~var_3.c, 30u)], -2147483647i, global1[_wgslsmith_index_u32(4294967295u, 30u)]) | _wgslsmith_mod_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(var_3.c, 30u)] << (u_input.a % 32u), abs(-1i), 29439i, select(var_1.x, var_1.x, false)), countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(787i, -8243i, var_2.x, var_1.x), vec4<i32>(var_1.x, var_1.x, global1[_wgslsmith_index_u32(57829u, 30u)], -2147483647i)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4, var_4)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4, var_4))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(748f, 1607f) + vec2<f32>(1563f, -694f)) - vec2<f32>(-457f, -1590f))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4 + 122f)), _wgslsmith_f_op_f32(-var_4))), _wgslsmith_sub_i32(43650i, max(abs(-var_1.x), _wgslsmith_div_i32(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(0u, 30u)], var_1.x), firstLeadingBit(var_1.x)))));
}

