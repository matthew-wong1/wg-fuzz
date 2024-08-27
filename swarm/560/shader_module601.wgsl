struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 1>;

var<private> global1: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(vec3<i32>(1i, 12676i, 0i)), Struct_2(vec3<i32>(i32(-2147483648), -1855i, 0i)), Struct_2(vec3<i32>(-1i, 10184i, 1298i)), Struct_2(vec3<i32>(-25465i, -1395i, -14360i)), Struct_2(vec3<i32>(-34092i, -1i, -1i)), Struct_2(vec3<i32>(-8832i, i32(-2147483648), 14541i)), Struct_2(vec3<i32>(14520i, -2121i, -18223i)), Struct_2(vec3<i32>(0i, 32379i, i32(-2147483648))), Struct_2(vec3<i32>(i32(-2147483648), -11594i, 0i)), Struct_2(vec3<i32>(-52834i, -1i, i32(-2147483648))), Struct_2(vec3<i32>(-14753i, 15336i, -31597i)), Struct_2(vec3<i32>(26158i, 26727i, 1i)), Struct_2(vec3<i32>(-62266i, -1i, -14875i)), Struct_2(vec3<i32>(0i, -33956i, i32(-2147483648))), Struct_2(vec3<i32>(-22201i, -25483i, -1i)), Struct_2(vec3<i32>(2147483647i, -8510i, 9502i)), Struct_2(vec3<i32>(1i, 2147483647i, 2147483647i)), Struct_2(vec3<i32>(i32(-2147483648), 1i, 2147483647i)), Struct_2(vec3<i32>(34875i, -17633i, i32(-2147483648))), Struct_2(vec3<i32>(-2647i, 2147483647i, -23460i)), Struct_2(vec3<i32>(-12283i, 37465i, 1i)), Struct_2(vec3<i32>(-1i, 2147483647i, 1i)), Struct_2(vec3<i32>(i32(-2147483648), 61432i, 79680i)), Struct_2(vec3<i32>(26659i, i32(-2147483648), 10200i)), Struct_2(vec3<i32>(69312i, 2147483647i, -4939i)), Struct_2(vec3<i32>(-10449i, 0i, 20680i)), Struct_2(vec3<i32>(-5455i, -20971i, 1i)), Struct_2(vec3<i32>(0i, 12147i, 12187i)), Struct_2(vec3<i32>(-1i, 31785i, 19193i)), Struct_2(vec3<i32>(-33073i, 36688i, 0i)));

var<private> global2: array<vec2<i32>, 21>;

var<private> global3: array<i32, 32>;

var<private> global4: vec4<f32> = vec4<f32>(-107f, 1103f, 822f, 1618f);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_2) -> vec2<u32> {
    global2 = array<vec2<i32>, 21>();
    global0 = array<vec2<u32>, 1>();
    var var_0 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(~(-1695i), min(-872i, 0i) & _wgslsmith_clamp_i32(u_input.d, 10770i, u_input.d)), vec2<i32>(u_input.c ^ _wgslsmith_mod_i32(0i, global3[_wgslsmith_index_u32(u_input.a, 32u)]), max(_wgslsmith_dot_vec2_i32(global2[_wgslsmith_index_u32(u_input.b.x, 21u)], arg_0.a.yz), countOneBits(arg_0.a.x)))));
    var_0 = Struct_1(max(29598i, 2932i));
    let var_1 = abs(global0[_wgslsmith_index_u32(~(~u_input.b.x), 1u)]);
    return vec2<u32>(~countOneBits(59455u), 4294967295u);
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: bool) -> i32 {
    let var_0 = func_3(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(35276u, u_input.a, u_input.b.x), vec3<u32>(1u, 0u, 23575u)), select(vec3<u32>(20375u, 4294967295u, u_input.a), vec3<u32>(u_input.b.x, 139225u, u_input.a), vec3<bool>(true, arg_2, arg_2))) >> (1u % 32u), 30u)]);
    let var_1 = Struct_1(-35490i);
    let var_2 = vec2<bool>(any(vec4<bool>(!any(vec3<bool>(arg_2, arg_2, false)), true, !any(vec2<bool>(true, true)), arg_2)), any(vec4<bool>(!(arg_2 || arg_2), arg_2, true, select(true, arg_2, all(vec4<bool>(false, true, arg_2, true))))));
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(var_0.x, var_0.x)), global0[_wgslsmith_index_u32(min(u_input.b.x, firstLeadingBit(1u)), 1u)]), 4294967295u) ^ u_input.a, 30u)];
    var var_4 = Struct_1(0i);
    return ~max(11185i, u_input.d);
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: bool, arg_3: i32) -> vec3<u32> {
    var var_0 = func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x + global4.x) + global4.x))), vec4<f32>(-1011f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global4.x)), _wgslsmith_f_op_f32(select(944f, global4.x, false))), global4.x, global4.x), (_wgslsmith_f_op_f32(round(-258f)) >= _wgslsmith_f_op_f32(-global4.x)) & !(arg_3 <= global3[_wgslsmith_index_u32(16799u, 32u)])) >> (~arg_1.x % 32u);
    global4 = vec4<f32>(_wgslsmith_f_op_f32(abs(1212f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global4.x * _wgslsmith_f_op_f32(min(global4.x, _wgslsmith_f_op_f32(global4.x + -854f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.x + global4.x), -575f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global4.x, global4.x)) + _wgslsmith_f_op_f32(sign(global4.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-292f + _wgslsmith_f_op_f32(abs(-407f)))));
    let var_1 = true;
    let var_2 = arg_1.x;
    let var_3 = !select(vec3<bool>(true, true, false), select(vec3<bool>(false, any(vec3<bool>(true, var_1, arg_2)), arg_2), select(vec3<bool>(true, true, false), !vec3<bool>(var_1, true, var_1), all(vec2<bool>(false, false))), vec3<bool>(true, true, true)), !select(select(vec3<bool>(var_1, var_1, true), vec3<bool>(true, true, arg_2), vec3<bool>(false, var_1, true)), vec3<bool>(true, true, true), arg_2));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(0u, 30u)];
    let var_1 = ~(_wgslsmith_add_vec2_i32(var_0.a.xy, vec2<i32>(-1i, -12004i) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(38329i, var_0.a.x), vec2<i32>(1i, global3[_wgslsmith_index_u32(u_input.a, 32u)]))) & countOneBits(var_0.a.xx << (~global0[_wgslsmith_index_u32(42195u, 1u)] % vec2<u32>(32u))));
    var var_2 = any(select(vec4<bool>(true, all(vec4<bool>(true, true, true, true)), (u_input.b.x <= u_input.a) & true, false), !vec4<bool>(true, any(vec2<bool>(true, false)), u_input.b.x > u_input.b.x, all(vec4<bool>(false, false, false, false))), true));
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, max(~48314u, 78092u)), 30u)];
    var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(func_1(-26767i, vec3<u32>(26411u, 1u, 1u), false, 0i) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(0u, 15822u, 22088u)) % vec3<u32>(32u))) & func_1(var_3.a.x, firstLeadingBit(~vec3<u32>(u_input.a, 0u, 41852u)), !any(vec4<bool>(false, true, true, false)), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_3.a.x, global3[_wgslsmith_index_u32(28534u, 32u)], -1i, 2437i), vec4<i32>(-2147483647i, var_0.a.x, 1i, u_input.c)), _wgslsmith_mult_vec4_i32(vec4<i32>(43475i, 8226i, 2147483647i, 19151i), vec4<i32>(50643i, var_1.x, u_input.c, var_0.a.x)))), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_div_u32(~u_input.b.x, 6461u), ~abs(4294967295u), ~(~u_input.b.x)), vec3<u32>(78766u, 1u, 0u))), 30u)];
    global2 = array<vec2<i32>, 21>();
    var var_4 = var_3.a;
    let var_5 = _wgslsmith_mod_i32(~11124i, 12716i);
    var_2 = select(func_1(_wgslsmith_mod_i32(~var_0.a.x, _wgslsmith_div_i32(0i, -49556i)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 11687u), vec3<u32>(u_input.b.x, u_input.a, 1u)), ~u_input.b.x, u_input.a), _wgslsmith_div_u32(0u, u_input.b.x) >= reverseBits(1u), ~(-4631i)).x, _wgslsmith_div_u32(~4294967295u, reverseBits(~u_input.a)), true) > ~countOneBits(u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer((u_input.a & abs(u_input.a)) | ~max(8457u, ~u_input.a), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(-1i, 31164i, reverseBits(1i), global3[_wgslsmith_index_u32(1u, 32u)])), vec4<i32>(-6265i, _wgslsmith_clamp_i32(var_5, 0i, 50052i | var_3.a.x), ~global3[_wgslsmith_index_u32(~u_input.b.x, 32u)], -26888i)), vec2<i32>(~var_1.x, select(_wgslsmith_add_i32(u_input.d, u_input.d), 1i, false) & _wgslsmith_mod_i32(_wgslsmith_mod_i32(var_1.x, 0i), -40752i)));
}

