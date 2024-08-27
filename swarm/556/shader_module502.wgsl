struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 7>;

var<private> global1: Struct_2 = Struct_2(Struct_1(452f, -7169i, vec2<bool>(true, true)));

var<private> global2: array<i32, 24>;

var<private> global3: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(vec4<u32>(0u, 48629u, 1u, 58482u)), Struct_3(vec4<u32>(4294967295u, 0u, 40293u, 68226u)), Struct_3(vec4<u32>(652u, 0u, 4294967295u, 6916u)), Struct_3(vec4<u32>(42211u, 0u, 1u, 0u)), Struct_3(vec4<u32>(84159u, 3405u, 38314u, 17239u)), Struct_3(vec4<u32>(4294967295u, 10194u, 4294967295u, 56526u)), Struct_3(vec4<u32>(17483u, 4294967295u, 59561u, 119151u)), Struct_3(vec4<u32>(61817u, 0u, 21158u, 1u)), Struct_3(vec4<u32>(1u, 0u, 65761u, 36749u)), Struct_3(vec4<u32>(4294967295u, 4294967295u, 9599u, 30360u)), Struct_3(vec4<u32>(0u, 1u, 0u, 0u)), Struct_3(vec4<u32>(6905u, 0u, 0u, 4294967295u)), Struct_3(vec4<u32>(69609u, 17442u, 0u, 26755u)), Struct_3(vec4<u32>(35120u, 1u, 90954u, 0u)), Struct_3(vec4<u32>(0u, 1u, 21669u, 0u)), Struct_3(vec4<u32>(0u, 4294967295u, 76466u, 60008u)), Struct_3(vec4<u32>(59867u, 84882u, 75759u, 22300u)), Struct_3(vec4<u32>(0u, 65318u, 74800u, 26260u)), Struct_3(vec4<u32>(94148u, 52008u, 7216u, 42051u)), Struct_3(vec4<u32>(1u, 1u, 1u, 56164u)), Struct_3(vec4<u32>(0u, 1u, 137893u, 43343u)), Struct_3(vec4<u32>(1u, 0u, 16956u, 77707u)), Struct_3(vec4<u32>(0u, 3036u, 4294967295u, 39809u)), Struct_3(vec4<u32>(4294967295u, 0u, 33742u, 0u)), Struct_3(vec4<u32>(19435u, 41142u, 7899u, 956u)), Struct_3(vec4<u32>(4294967295u, 1u, 1u, 14142u)), Struct_3(vec4<u32>(60366u, 28485u, 1u, 23605u)), Struct_3(vec4<u32>(55182u, 4294967295u, 69838u, 70761u)), Struct_3(vec4<u32>(4294967295u, 0u, 12230u, 0u)), Struct_3(vec4<u32>(44392u, 4294967295u, 46483u, 76957u)));

var<private> global4: f32 = 897f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    global1 = Struct_2(Struct_1(global1.a.a, global1.a.b, !(!select(global1.a.c, vec2<bool>(global1.a.c.x, global1.a.c.x), false))));
    var var_0 = Struct_3(vec4<u32>(86921u, ~u_input.e.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, u_input.e.x), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.e.x, 1u))) ^ u_input.e.x, u_input.e.x));
    var var_1 = global1.a.a;
    global2 = array<i32, 24>();
    var_1 = _wgslsmith_f_op_f32(abs(2209f));
    return ~_wgslsmith_div_i32(global1.a.b, -(~abs(29420i)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>) -> vec3<bool> {
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-265f, _wgslsmith_f_op_f32(-arg_0.a.a))) - _wgslsmith_f_op_f32(f32(-1f) * -2198f)) * 1000f));
    var var_0 = 18818u;
    global1 = arg_0;
    let var_1 = arg_0.a.b;
    let var_2 = -_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(~global2[_wgslsmith_index_u32(7568u, 24u)], _wgslsmith_mod_i32(u_input.b.x, -56136i), _wgslsmith_mult_i32(31192i, 54072i), -2147483647i)), vec4<i32>(var_1, global1.a.b, -func_3(), func_3()));
    return !select(select(!select(vec3<bool>(true, global1.a.c.x, arg_0.a.c.x), vec3<bool>(global1.a.c.x, arg_0.a.c.x, arg_0.a.c.x), false), !select(vec3<bool>(false, global1.a.c.x, arg_0.a.c.x), vec3<bool>(global1.a.c.x, arg_0.a.c.x, false), vec3<bool>(arg_0.a.c.x, arg_0.a.c.x, false)), u_input.e.x > 22602u), !vec3<bool>(arg_0.a.c.x, 22771u != arg_1.x, true), select(vec3<bool>(true, any(vec4<bool>(global1.a.c.x, false, false, true)), 33485u >= u_input.e.x), select(!vec3<bool>(arg_0.a.c.x, global1.a.c.x, false), select(vec3<bool>(global1.a.c.x, true, false), vec3<bool>(global1.a.c.x, global1.a.c.x, global1.a.c.x), vec3<bool>(global1.a.c.x, false, global1.a.c.x)), vec3<bool>(false, true, global1.a.c.x)), any(!arg_0.a.c)));
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> vec4<f32> {
    global3 = array<Struct_3, 30>();
    let var_0 = 0i;
    global1 = arg_0;
    let var_1 = !select(select(vec3<bool>(true, arg_1, true), vec3<bool>(true, true, false), vec3<bool>(arg_0.a.a <= 1059f, arg_0.a.c.x, true)), select(!func_2(Struct_2(global1.a), vec4<u32>(u_input.e.x, 1u, u_input.e.x, 1u)), vec3<bool>(true || global1.a.c.x, func_2(Struct_2(global1.a), vec4<u32>(u_input.e.x, 4294967295u, u_input.e.x, u_input.e.x)).x, false), arg_0.a.c.x), vec3<bool>(true, arg_0.a.c.x, arg_1));
    global4 = -483f;
    return _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.a * -1090f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-342f, _wgslsmith_f_op_f32(2081f + arg_0.a.a)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.a))), global1.a.a, arg_0.a.a)));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: Struct_3) -> f32 {
    global4 = arg_0.x;
    global1 = Struct_2(global1.a);
    var var_0 = true;
    let var_1 = ~vec4<i32>(~_wgslsmith_dot_vec2_i32(u_input.b.zx, -vec2<i32>(4803i, 0i)), ~global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, arg_2.a.x, arg_2.a.x), u_input.e)), 24u)], ~(-u_input.b.x), ~_wgslsmith_clamp_i32(~global1.a.b, ~2147483647i, countOneBits(-88834i)));
    let var_2 = countOneBits(~7031i);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.e.x, u_input.e.x, firstLeadingBit(vec2<i32>(global1.a.b, -global1.a.b)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(func_1(Struct_2(global1.a), global1.a.c.x)), vec2<bool>(true, true), Struct_3(vec4<u32>(u_input.e.x, 4294967295u, u_input.e.x, 1u))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1785f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.a))), _wgslsmith_f_op_f32(-826f + _wgslsmith_f_op_f32(func_4(vec4<f32>(global1.a.a, -1316f, -631f, global1.a.a), global1.a.c, Struct_3(vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x))))) > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1128f + global1.a.a))))), 0u);
}

