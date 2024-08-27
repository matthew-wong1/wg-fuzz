struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<f32>,
    d: vec3<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 20> = array<vec4<f32>, 20>(vec4<f32>(-437f, 666f, -268f, -248f), vec4<f32>(406f, 1000f, -232f, -377f), vec4<f32>(-729f, -522f, 315f, -280f), vec4<f32>(232f, -833f, -1638f, -169f), vec4<f32>(1187f, 359f, -537f, -130f), vec4<f32>(417f, -982f, 1198f, -1006f), vec4<f32>(1091f, 460f, -110f, -497f), vec4<f32>(-1210f, 833f, -636f, 443f), vec4<f32>(-530f, -1000f, 536f, 439f), vec4<f32>(-197f, -1000f, -426f, 307f), vec4<f32>(-397f, 918f, -852f, 318f), vec4<f32>(1000f, -1269f, 1000f, 380f), vec4<f32>(239f, -1788f, 1462f, -908f), vec4<f32>(1184f, 1533f, -987f, 773f), vec4<f32>(704f, -2765f, -2446f, -159f), vec4<f32>(1703f, -292f, 206f, -757f), vec4<f32>(1664f, -497f, -1679f, -418f), vec4<f32>(1562f, 536f, 636f, -901f), vec4<f32>(-1000f, -618f, -317f, -1603f), vec4<f32>(2008f, 1812f, 1000f, -381f));

var<private> global1: array<f32, 2>;

var<private> global2: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(true), Struct_3(false), Struct_3(true), Struct_3(true), Struct_3(false), Struct_3(false), Struct_3(true), Struct_3(false), Struct_3(false), Struct_3(false), Struct_3(false), Struct_3(true), Struct_3(false), Struct_3(false), Struct_3(false), Struct_3(false), Struct_3(false), Struct_3(true), Struct_3(true), Struct_3(true), Struct_3(false));

var<private> global3: array<bool, 15> = array<bool, 15>(false, false, false, false, true, false, true, true, false, true, true, false, true, true, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: Struct_1) -> vec2<u32> {
    global0 = array<vec4<f32>, 20>();
    global1 = array<f32, 2>();
    var var_0 = i32(-1i) * -(-1i & -_wgslsmith_div_i32(u_input.a, u_input.a));
    let var_1 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(firstLeadingBit(u_input.a), u_input.a), _wgslsmith_div_vec2_i32(~vec2<i32>(-64123i, 0i), ~vec2<i32>(2147483647i, u_input.a))), ~firstTrailingBit(abs(vec2<i32>(555i, u_input.a)))) & u_input.a;
    let var_2 = select(vec4<bool>(arg_2.b, true, true, true), !(!vec4<bool>(true, arg_1.x, false, false)), true && !all(vec2<bool>(global3[_wgslsmith_index_u32(25989u, 15u)], false)));
    return vec2<u32>(u_input.b.x, 56281u);
}

fn func_2(arg_0: u32) -> vec4<i32> {
    let var_0 = _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0, _wgslsmith_div_u32(~53706u, u_input.b.x)), select(~(~vec2<u32>(arg_0, u_input.c)), select(u_input.b << (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 90672u), u_input.b), true), select(true, !global3[_wgslsmith_index_u32(u_input.c, 15u)], global3[_wgslsmith_index_u32(arg_0, 15u)] || false))), ~func_3(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], vec4<f32>(688f, -313f, global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(arg_0, 2u)]))))), vec2<bool>(true, true), Struct_1(-2181f, 661f >= global1[_wgslsmith_index_u32(77856u, 2u)], global0[_wgslsmith_index_u32(u_input.b.x, 20u)], _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-232f, global1[_wgslsmith_index_u32(1611u, 2u)], -429f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-196f, global1[_wgslsmith_index_u32(4294967295u, 2u)]))))));
    global3 = array<bool, 15>();
    var var_1 = select(!(!(!select(vec3<bool>(global3[_wgslsmith_index_u32(8533u, 15u)], global3[_wgslsmith_index_u32(u_input.b.x, 15u)], global3[_wgslsmith_index_u32(var_0.x, 15u)]), vec3<bool>(true, true, true), global3[_wgslsmith_index_u32(89911u, 15u)]))), select(!vec3<bool>(true && global3[_wgslsmith_index_u32(u_input.b.x, 15u)], all(vec4<bool>(false, global3[_wgslsmith_index_u32(var_0.x, 15u)], false, true)), all(vec3<bool>(global3[_wgslsmith_index_u32(var_0.x, 15u)], global3[_wgslsmith_index_u32(arg_0, 15u)], global3[_wgslsmith_index_u32(u_input.b.x, 15u)]))), vec3<bool>(select(global3[_wgslsmith_index_u32(1u, 15u)] & global3[_wgslsmith_index_u32(arg_0, 15u)], true, false), !(4294967295u > arg_0), true), vec3<bool>(true, true, true)), vec3<bool>(!(!(global3[_wgslsmith_index_u32(88878u, 15u)] & true)), select(true, !(global1[_wgslsmith_index_u32(1u, 2u)] != global1[_wgslsmith_index_u32(0u, 2u)]), true), global3[_wgslsmith_index_u32(abs(0u), 15u)]));
    let var_2 = Struct_2(1u, Struct_1(_wgslsmith_f_op_f32(floor(-1199f)), true, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c, 2u)]), _wgslsmith_f_op_f32(1165f + global1[_wgslsmith_index_u32(arg_0, 2u)]), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(arg_0, 2u)])), _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(var_0.x, 2u)], -757f, true))))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 2u)] + global1[_wgslsmith_index_u32(83813u, 2u)]), -1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 2u)] + global1[_wgslsmith_index_u32(18942u, 2u)]), -161f)), _wgslsmith_f_op_f32(-880f - _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(arg_0, 2u)])))), vec2<f32>(global1[_wgslsmith_index_u32(var_0.x >> (min(45758u, 1u) % 32u), 2u)], 1255f)), _wgslsmith_div_i32(u_input.a, min(countOneBits(-17819i), 1i) | u_input.a));
    global1 = array<f32, 2>();
    return -vec4<i32>(u_input.a, var_2.c, -(_wgslsmith_add_i32(var_2.c, u_input.a) >> (~1u % 32u)), _wgslsmith_clamp_i32(2147483647i, -firstTrailingBit(52226i), var_2.c));
}

fn func_1(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = u_input.a;
    var var_1 = u_input.c;
    global2 = array<Struct_3, 21>();
    let var_2 = func_2(u_input.b.x) & -_wgslsmith_clamp_vec4_i32(vec4<i32>(-u_input.a, -u_input.a, _wgslsmith_mult_i32(u_input.a, 0i), -30808i), min(vec4<i32>(u_input.a, u_input.a, 62370i, -2147483647i), vec4<i32>(-1i, 27081i, u_input.a, -2147483647i) & vec4<i32>(u_input.a, u_input.a, u_input.a, 0i)), vec4<i32>(0i, 1i, 30046i, 20062i));
    global3 = array<bool, 15>();
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~firstTrailingBit(vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(func_1(Struct_1(1758f, global3[_wgslsmith_index_u32(1u, 15u)], vec4<f32>(-1000f, 641f, global1[_wgslsmith_index_u32(4294967295u, 2u)], -1001f), vec3<f32>(global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(u_input.c, 2u)], -386f), vec2<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 2u)], 1000f))), abs(u_input.b)), ~select(u_input.c, u_input.b.x, false), _wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.c, 21246u, u_input.c), vec3<u32>(34808u, u_input.c, u_input.c), true), vec3<u32>(0u, u_input.c, u_input.b.x))));
    global3 = array<bool, 15>();
    let var_1 = Struct_3(true);
    global2 = array<Struct_3, 21>();
    let var_2 = Struct_3(!any(!vec3<bool>(global3[_wgslsmith_index_u32(1u, 15u)], global3[_wgslsmith_index_u32(u_input.b.x, 15u)], var_1.a)));
    var var_3 = Struct_3(true);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, var_0.xxz);
}

