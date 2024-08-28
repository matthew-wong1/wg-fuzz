struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(31243u, vec4<f32>(226f, 1000f, -1000f, -263f));

var<private> global1: array<bool, 28> = array<bool, 28>(true, true, true, false, true, true, false, false, false, false, false, false, true, false, false, true, false, false, false, true, false, false, true, true, true, false, false, false);

var<private> global2: array<vec2<u32>, 10> = array<vec2<u32>, 10>(vec2<u32>(43107u, 1u), vec2<u32>(85292u, 28412u), vec2<u32>(25412u, 34652u), vec2<u32>(0u, 13530u), vec2<u32>(31890u, 46463u), vec2<u32>(22907u, 4294967295u), vec2<u32>(0u, 18393u), vec2<u32>(23170u, 8885u), vec2<u32>(3637u, 50976u), vec2<u32>(24080u, 1u));

var<private> global3: array<bool, 25> = array<bool, 25>(true, true, true, false, true, true, false, true, true, false, true, true, false, true, true, false, false, false, false, true, false, true, true, true, true);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_1 {
    return arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec2<f32>) -> bool {
    var var_0 = vec3<i32>(_wgslsmith_sub_i32(reverseBits(firstLeadingBit(-26919i)), 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, _wgslsmith_mod_i32(0i, -1i)), vec2<i32>(1i, _wgslsmith_clamp_i32(~12712i, _wgslsmith_dot_vec3_i32(vec3<i32>(-23876i, 1i, -2147483647i), vec3<i32>(2147483647i, 2147483647i, 1i)), -1i))), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(select(28984i, 10849i, false), max(-22223i, 2147483647i), ~(-12411i), ~(-2147483647i))), -2147483647i, i32(-1i) * -(~34120i)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(round(-1048f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.x, global0.b.x)))))));
    var var_2 = func_1(Struct_1(arg_0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-357f, var_1.x, 1000f, 1070f) + vec4<f32>(arg_2.x, var_1.x, arg_0.b.x, global0.b.x))) + _wgslsmith_div_vec4_f32(global0.b, _wgslsmith_f_op_vec4_f32(max(global0.b, global0.b))))), vec3<i32>(var_0.x, ~1i, _wgslsmith_dot_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, -1i, 46729i), vec3<i32>(13870i, var_0.x, 2147483647i), vec3<i32>(var_0.x, var_0.x, var_0.x)), -vec3<i32>(-12225i, -6834i, 2147483647i))));
    global1 = array<bool, 28>();
    global3 = array<bool, 25>();
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> u32 {
    var var_0 = arg_1;
    var var_1 = Struct_1(1u, arg_3.b);
    let var_2 = func_1(arg_3, reverseBits(select(_wgslsmith_mult_vec3_i32(-vec3<i32>(-1i, 1i, arg_2), vec3<i32>(arg_2, arg_2, arg_2)), _wgslsmith_div_vec3_i32(vec3<i32>(24245i, arg_2, 69830i), vec3<i32>(0i, 36587i, -803i)) >> (~vec3<u32>(arg_3.a, arg_3.a, arg_1.a) % vec3<u32>(32u)), vec3<bool>(global1[_wgslsmith_index_u32(20140u, 28u)], select(true, global1[_wgslsmith_index_u32(arg_0.a, 28u)], true), true))));
    var var_3 = select(vec2<bool>(global3[_wgslsmith_index_u32(1u, 25u)], !func_3(arg_1, select(vec4<bool>(global3[_wgslsmith_index_u32(35325u, 25u)], false, global1[_wgslsmith_index_u32(143072u, 28u)], global3[_wgslsmith_index_u32(4294967295u, 25u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(var_0.a, 28u)], global1[_wgslsmith_index_u32(var_1.a, 28u)], true), false), _wgslsmith_f_op_vec2_f32(floor(var_0.b.yz)))), select(vec2<bool>(max(1i, 2147483647i) == (arg_2 ^ -1i), global1[_wgslsmith_index_u32(global0.a, 28u)] && true), select(!select(vec2<bool>(global3[_wgslsmith_index_u32(global0.a, 25u)], true), vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 25u)], global1[_wgslsmith_index_u32(arg_0.a, 28u)]), vec2<bool>(global1[_wgslsmith_index_u32(0u, 28u)], global3[_wgslsmith_index_u32(39932u, 25u)])), vec2<bool>(true, var_1.b.x < arg_0.b.x), select(!vec2<bool>(true, global1[_wgslsmith_index_u32(arg_3.a, 28u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(arg_3.a, 28u)], global1[_wgslsmith_index_u32(12993u, 28u)]), vec2<bool>(global1[_wgslsmith_index_u32(var_2.a, 28u)], false), global3[_wgslsmith_index_u32(global0.a, 25u)]), true)), true), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_2.a, 1u, 48895u) ^ (max(u_input.a.yzx, vec3<u32>(arg_3.a, 31757u, 11531u)) ^ min(vec3<u32>(var_0.a, 2876u, u_input.a.x), u_input.a.yyy)), ~(~(~u_input.a.wzz))), 28u)]);
    let var_4 = Struct_1(arg_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.b + var_0.b))))));
    return ~_wgslsmith_sub_u32(~global0.a, 90869u);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec2<bool>, arg_3: vec4<i32>) -> vec3<i32> {
    global3 = array<bool, 25>();
    let var_0 = arg_3.x;
    let var_1 = -_wgslsmith_clamp_i32(-(-29580i << (~4294967295u % 32u)), arg_3.x, -57111i);
    global1 = array<bool, 28>();
    var var_2 = ~(~_wgslsmith_mult_vec3_u32(u_input.a.yzz, ~_wgslsmith_add_vec3_u32(vec3<u32>(72905u, 0u, u_input.a.x), vec3<u32>(0u, 23962u, 0u))));
    return -_wgslsmith_mult_vec3_i32(vec3<i32>(var_0, ~(~var_0), -1i >> (~4294967295u % 32u)), vec3<i32>(~var_1, _wgslsmith_clamp_i32(0i, var_0, -1i), -(i32(-1i) * -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(_wgslsmith_mult_u32(u_input.a.x, firstLeadingBit(u_input.a.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, global0.b.x, 587f, global0.b.x) + global0.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.b)))), 1u, select(vec2<bool>(false, global3[_wgslsmith_index_u32(func_2(func_1(Struct_1(u_input.a.x, vec4<f32>(1340f, global0.b.x, 126f, -1747f)), vec3<i32>(-2147483647i, -21560i, 1789i)), Struct_1(global0.a, vec4<f32>(675f, global0.b.x, global0.b.x, global0.b.x)), _wgslsmith_div_i32(-2147483647i, -2147483647i), Struct_1(global0.a, vec4<f32>(242f, 774f, -1000f, global0.b.x))), 25u)]), vec2<bool>(select(global1[_wgslsmith_index_u32(u_input.a.x, 28u)], !global1[_wgslsmith_index_u32(0u, 28u)], false), global3[_wgslsmith_index_u32(~0u, 25u)]), select(!select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 25u)], true), vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 28u)]), false), select(!vec2<bool>(global3[_wgslsmith_index_u32(11300u, 25u)], true), select(vec2<bool>(global1[_wgslsmith_index_u32(9409u, 28u)], global3[_wgslsmith_index_u32(0u, 25u)]), vec2<bool>(false, true), vec2<bool>(global1[_wgslsmith_index_u32(49904u, 28u)], global1[_wgslsmith_index_u32(38526u, 28u)])), false), select(select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 25u)], false), vec2<bool>(global1[_wgslsmith_index_u32(57171u, 28u)], global1[_wgslsmith_index_u32(global0.a, 28u)]), false), !vec2<bool>(global3[_wgslsmith_index_u32(global0.a, 25u)], global1[_wgslsmith_index_u32(global0.a, 28u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(global0.a, 28u)])))), vec4<i32>(1i, 0i, ~(-1i), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(0i, -1i), _wgslsmith_sub_i32(_wgslsmith_mult_i32(11417i, 6137i), countOneBits(1707i)), 2147483647i)));
    var var_1 = _wgslsmith_clamp_vec3_u32(~(~u_input.a.ywy), ~vec3<u32>(reverseBits(global0.a), _wgslsmith_mod_u32(~36740u, global0.a), abs(abs(global0.a))), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, abs(global0.a)), u_input.a.x), _wgslsmith_mod_u32(_wgslsmith_sub_u32(global0.a, global0.a), u_input.a.x) & u_input.a.x, u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0.b.x + -501f), _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(step(global0.b.x, 357f)), 111f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.b))) + _wgslsmith_f_op_vec4_f32(-global0.b)), vec2<f32>(_wgslsmith_f_op_f32(exp2(global0.b.x)), global0.b.x), var_0.zy);
}

