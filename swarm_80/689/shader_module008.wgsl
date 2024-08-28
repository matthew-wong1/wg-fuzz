struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<i32>,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4> = array<i32, 4>(50983i, 2147483647i, 9767i, -1i);

var<private> global1: array<bool, 1> = array<bool, 1>(false);

var<private> global2: array<i32, 14>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: f32) -> u32 {
    global1 = array<bool, 1>();
    let var_0 = Struct_4(select(!(!vec4<bool>(true, global1[_wgslsmith_index_u32(51736u, 1u)], true, true)), vec4<bool>(!(!global1[_wgslsmith_index_u32(4294967295u, 1u)]), true, true, true), (_wgslsmith_dot_vec4_i32(vec4<i32>(-23598i, global2[_wgslsmith_index_u32(31225u, 14u)], -34956i, -2147483647i), vec4<i32>(-5794i, 1i, u_input.b.x, -1i)) >> (4294967295u % 32u)) > ~firstTrailingBit(22667i)), ~_wgslsmith_mod_u32(0u, u_input.a));
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0, -1111f, 619f, 1938f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, 917f, arg_0, arg_0), vec4<f32>(arg_0, -339f, arg_0, -2159f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1220f, arg_0, 273f, arg_0)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, -2131f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, 1000f, 789f, 452f))))))));
    var var_2 = _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, i32(-1i) * -1i, global0[_wgslsmith_index_u32(min(119505u, u_input.a), 4u)], global0[_wgslsmith_index_u32(40955u, 4u)]), -_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, global2[_wgslsmith_index_u32(u_input.a, 14u)], global0[_wgslsmith_index_u32(53882u, 4u)], 0i), vec4<i32>(global2[_wgslsmith_index_u32(41287u, 14u)], -9285i, u_input.b.x, -1i), vec4<i32>(u_input.b.x, global0[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)], global2[_wgslsmith_index_u32(var_0.b, 14u)]))) | reverseBits(firstTrailingBit(vec4<i32>(1727i, u_input.b.x, -43115i, u_input.b.x))), reverseBits(vec4<i32>(-countOneBits(global0[_wgslsmith_index_u32(u_input.a, 4u)]), countOneBits(_wgslsmith_mod_i32(0i, global2[_wgslsmith_index_u32(var_0.b, 14u)])), i32(-1i) * -7519i, max(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(var_0.b, 14u)], 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(0u, 14u)], -2147483647i), vec2<i32>(u_input.b.x, global2[_wgslsmith_index_u32(u_input.a, 14u)]))))));
    let var_3 = Struct_2(true);
    return min(_wgslsmith_div_u32(~0u, countOneBits(~1u)), ~(~55363u & var_0.b));
}

fn func_2(arg_0: u32, arg_1: vec4<i32>, arg_2: f32, arg_3: vec2<f32>) -> u32 {
    let var_0 = Struct_3(Struct_2(true), Struct_2(func_3(arg_3.x) < arg_0), min(vec3<i32>(2147483647i, countOneBits(arg_1.x), arg_1.x), u_input.b), Struct_2(!select(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0, u_input.a), 1u)], true, false)), min(i32(-1i) * -17763i, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~56194u, ~u_input.a | 40052u), 14u)]));
    let var_1 = min(firstLeadingBit(vec3<u32>(arg_0, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 94742u), vec2<u32>(0u, u_input.a), vec2<u32>(17477u, 17979u)), _wgslsmith_div_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(2788u, 25540u))), arg_0)), ~(countOneBits(~vec3<u32>(39122u, arg_0, u_input.a)) | _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0, arg_0, arg_0), firstLeadingBit(vec3<u32>(arg_0, u_input.a, 8369u)))));
    global0 = array<i32, 4>();
    global1 = array<bool, 1>();
    global0 = array<i32, 4>();
    return 33955u;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<u32>) -> Struct_4 {
    global1 = array<bool, 1>();
    var var_0 = 9550i;
    let var_1 = 47394u;
    global0 = array<i32, 4>();
    global0 = array<i32, 4>();
    return Struct_4(select(!(!vec4<bool>(global1[_wgslsmith_index_u32(1u, 1u)], false, global1[_wgslsmith_index_u32(1u, 1u)], global1[_wgslsmith_index_u32(arg_1.x, 1u)])), select(!vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 1u)], global1[_wgslsmith_index_u32(arg_1.x, 1u)], global1[_wgslsmith_index_u32(u_input.a, 1u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(44083u, 1u)], global1[_wgslsmith_index_u32(u_input.a, 1u)], global1[_wgslsmith_index_u32(4294967295u, 1u)]), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 1u)], false, global1[_wgslsmith_index_u32(4294967295u, 1u)], false), global1[_wgslsmith_index_u32(1u, 1u)]), vec4<bool>(-20636i == global2[_wgslsmith_index_u32(var_1, 14u)], 48674u != var_1, true, !global1[_wgslsmith_index_u32(44966u, 1u)])), true), var_1);
}

fn func_1(arg_0: vec4<f32>, arg_1: i32) -> u32 {
    global0 = array<i32, 4>();
    global1 = array<bool, 1>();
    global1 = array<bool, 1>();
    global1 = array<bool, 1>();
    let var_0 = func_4(_wgslsmith_div_vec3_i32(select(-vec3<i32>(u_input.b.x, global0[_wgslsmith_index_u32(u_input.a, 4u)], 0i) | (u_input.b & u_input.b), ~(~u_input.b), true), -max(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 14u)], 10039i, global0[_wgslsmith_index_u32(0u, 4u)]), u_input.b) << (~vec3<u32>(0u, 4294967295u, u_input.a) % vec3<u32>(32u))), vec4<u32>(firstLeadingBit(func_2(u_input.a, vec4<i32>(0i, u_input.b.x, global2[_wgslsmith_index_u32(u_input.a, 14u)], 0i), 919f, vec2<f32>(-306f, arg_0.x))) << (4294967295u % 32u), firstTrailingBit(~19678u), 7153u, 4294967295u));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 14>();
    var var_0 = ~vec2<u32>(_wgslsmith_clamp_u32(~u_input.a, 0u, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a) | vec2<u32>(u_input.a, u_input.a), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a) | vec2<u32>(1u, 0u), vec2<u32>(u_input.a, 134u))));
    var var_1 = ~min(_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(1u, 14u)], _wgslsmith_mod_i32(_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(var_0.x, 14u)], global0[_wgslsmith_index_u32(var_0.x, 4u)]), abs(-18612i))), global2[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-563f, 1109f, -759f, -1053f))), _wgslsmith_add_i32(-5968i | global2[_wgslsmith_index_u32(var_0.x, 14u)], global0[_wgslsmith_index_u32(10837u, 4u)])), 14u)]);
    global2 = array<i32, 14>();
    var var_2 = ~(~vec2<u32>(0u, 57549u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-433f, 625f, -668f, -1575f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1146f, 768f, -550f, 1076f)), select(func_4(u_input.b, vec4<u32>(var_0.x, 13032u, 1u, 105924u)).a, func_4(vec3<i32>(-1i, 23373i, -33757i), vec4<u32>(var_2.x, var_0.x, 711u, u_input.a)).a, all(vec4<bool>(true, global1[_wgslsmith_index_u32(52406u, 1u)], global1[_wgslsmith_index_u32(var_2.x, 1u)], global1[_wgslsmith_index_u32(1u, 1u)])))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f * 137f), _wgslsmith_f_op_f32(trunc(758f)), _wgslsmith_f_op_f32(-864f - -1000f), 985f)), vec4<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(trunc(-261f))), -1370f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-564f)), _wgslsmith_f_op_f32(f32(-1f) * -1404f))), _wgslsmith_f_op_f32(f32(-1f) * -1392f)))), vec3<u32>(var_2.x, ~1u & ~u_input.a, u_input.a), -vec4<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(23673i, global2[_wgslsmith_index_u32(1u, 14u)]), ~u_input.b.yz), global0[_wgslsmith_index_u32(~(~46483u), 4u)], -1i));
}

