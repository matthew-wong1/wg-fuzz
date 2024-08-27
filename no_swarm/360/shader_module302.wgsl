struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24>;

var<private> global1: array<f32, 12> = array<f32, 12>(-479f, -1401f, 1418f, -202f, -510f, 1088f, -1014f, -1970f, 445f, 2764f, -539f, -480f);

var<private> global2: u32 = 52566u;

var<private> global3: array<vec4<f32>, 1> = array<vec4<f32>, 1>(vec4<f32>(-1284f, -138f, 231f, 1061f));

var<private> global4: i32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(1i);
    var var_1 = false;
    global4 = 5841i;
    var_1 = select(all(!vec4<bool>(all(vec3<bool>(true, false, true)), true, true, global1[_wgslsmith_index_u32(54698u, 12u)] != global1[_wgslsmith_index_u32(1u, 12u)])), _wgslsmith_div_f32(1f, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(48039u, 1u), vec2<u32>(51333u, 4294967295u)), 12u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(75628u, 12u)]))) <= 642f, all(vec2<bool>(true, all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), false)))));
    global1 = array<f32, 12>();
    return Struct_2(Struct_1(2147483647i));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_clamp_i32(arg_1.a.a, -global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(0u, 0u), 24u)], -abs(global0[_wgslsmith_index_u32(4294967295u, 24u)] | 0i)));
    global1 = array<f32, 12>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 13628u, 4294967295u), vec3<u32>(7576u, 1u, 31628u), vec3<u32>(50244u, 27497u, 4294967295u)), abs(vec3<u32>(4294967295u, 14024u, 17057u))), 12u)], arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), global1[_wgslsmith_index_u32(1u, 12u)]), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -699f), _wgslsmith_f_op_f32(round(-1560f)))))));
    let var_2 = min(~(-vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(41596u, 24u)], arg_1.a.a)), vec3<i32>(_wgslsmith_mod_i32(arg_1.a.a & 0i, -1i ^ arg_1.a.a), min(_wgslsmith_mult_i32(-18031i, u_input.a), 1i), ~23281i)) << (_wgslsmith_add_vec3_u32(vec3<u32>(~firstLeadingBit(30139u), reverseBits(0u), 1u), ~vec3<u32>(~17795u, select(1u, 4294967295u, false), 1u)) % vec3<u32>(32u));
    var var_3 = arg_1.a;
    return func_2().a;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: f32, arg_3: Struct_1) -> i32 {
    let var_0 = vec3<u32>(~1u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(26523u, max(1u, 64392u)), 4294967295u), reverseBits(_wgslsmith_div_u32(50916u, _wgslsmith_add_u32(5225u, 0u)))) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, 11896u, 35324u, 13968u)), _wgslsmith_sub_vec4_u32(vec4<u32>(11356u, 62556u, 1572u, 40048u), vec4<u32>(0u, 0u, 1u, 2759u))), _wgslsmith_div_u32(1u, ~29095u), ~_wgslsmith_add_u32(53377u, 38967u)), vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u));
    global2 = ~var_0.x;
    let var_1 = true;
    let var_2 = 1000f;
    global0 = array<i32, 24>();
    return countOneBits(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(abs(arg_1.wwx >> (var_0 % vec3<u32>(32u))), -_wgslsmith_clamp_vec3_i32(arg_1.wyw, vec3<i32>(-2147483647i, 0i, global0[_wgslsmith_index_u32(53875u, 24u)]), vec3<i32>(28097i, arg_3.a, -1i))), arg_1.x));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: u32) -> u32 {
    let var_0 = Struct_1(func_4(Struct_2(func_3(-565f, func_2())), firstLeadingBit(vec4<i32>(u_input.a, arg_0.a, arg_0.a, 14287i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -316f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(974f, -161f) - global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3, arg_3, arg_3), vec3<u32>(arg_3, 4020u, arg_3)), 12u)])), func_3(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(43889u, arg_3), 12u)])), Struct_2(Struct_1(arg_0.a)))));
    var var_1 = vec3<bool>(true, false | arg_2, true);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -461f))))) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 12u)]));
    let var_3 = Struct_1(select(~arg_0.a, arg_0.a ^ ~22631i, true) | func_4(Struct_2(Struct_1(global0[_wgslsmith_index_u32(arg_3, 24u)])), ~_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.a, u_input.a, u_input.a, global0[_wgslsmith_index_u32(4490u, 24u)]), vec4<i32>(0i, arg_1.a, -2147483647i, arg_0.a)), _wgslsmith_f_op_f32(floor(675f)), func_3(_wgslsmith_f_op_f32(1311f - global1[_wgslsmith_index_u32(29279u, 12u)]), func_2())));
    global4 = i32(-1i) * -71301i;
    return ~47520u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~9481u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(min(vec4<u32>(88665u, 73231u, 58919u, 16405u), vec4<u32>(49763u, 47116u, 10707u, 28054u)), select(vec4<u32>(2249u, 4294967295u, 57919u, 1u), vec4<u32>(0u, 2860u, 1u, 36753u), false)), 1u)]), reverseBits(vec3<u32>(0u, 1u, ~func_1(Struct_1(-17515i), Struct_1(-2147483647i), false, 13021u))), ~vec2<i32>(-1i, 28630i));
}

