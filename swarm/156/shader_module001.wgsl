struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: f32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(1401f), Struct_1(-1703f), Struct_1(-1583f), Struct_1(-2400f), Struct_1(-936f), Struct_1(-599f), Struct_1(-111f), Struct_1(-1532f), Struct_1(-284f), Struct_1(1590f), Struct_1(156f), Struct_1(165f), Struct_1(-1517f), Struct_1(508f), Struct_1(235f), Struct_1(-428f), Struct_1(1000f), Struct_1(2436f), Struct_1(-588f), Struct_1(-1372f), Struct_1(-338f), Struct_1(1000f), Struct_1(1612f), Struct_1(560f), Struct_1(-550f));

var<private> global1: vec4<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32) -> vec4<i32> {
    let var_0 = Struct_1(-1771f);
    var var_1 = !any(vec4<bool>(true, true, true, true));
    var_1 = false;
    var var_2 = global0[_wgslsmith_index_u32(48556u, 25u)];
    var var_3 = _wgslsmith_f_op_f32(-var_2.a);
    return -_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(~(-11051i), global1.x, global1.x | u_input.a.x, -global1.x)), vec4<i32>(1i, firstTrailingBit(34641i), ~27610i, i32(-1i) * -arg_0), vec4<i32>(0i, arg_0, _wgslsmith_add_i32(~1i, ~47193i), 1i));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = min(countOneBits(~vec4<i32>(49595i, 1i, global1.x, u_input.a.x)), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(global1.x, u_input.a.x, 21982i, global1.x)), -func_3(1i))) & -_wgslsmith_mult_vec4_i32(select(abs(vec4<i32>(-1i, global1.x, 0i, -12720i)), select(vec4<i32>(-598i, -1i, 9683i, -28171i), vec4<i32>(-30744i, u_input.a.x, 1i, 26272i), vec4<bool>(false, true, false, false)), all(vec4<bool>(true, false, false, false))), -abs(vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x)));
    global0 = array<Struct_1, 25>();
    global1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(~(-13853i), var_0.x >> (51231u % 32u)) << (~1u % 32u), -(18936i ^ (u_input.a.x << (u_input.b % 32u))), var_0.x, global1.x), var_0, _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(-2147483647i, u_input.a.x, var_0.x, 2147483647i)), var_0), select(vec4<i32>(u_input.a.x << (u_input.b % 32u), -var_0.x, u_input.a.x, 36994i), _wgslsmith_mult_vec4_i32(vec4<i32>(-47308i, -15136i, 46901i, 0i), abs(vec4<i32>(-2147483647i, u_input.a.x, 1i, u_input.a.x))), vec4<bool>(true, select(true, false, false), 0i < global1.x, true))));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_2.a, _wgslsmith_f_op_f32(sign(arg_0.a))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1393f))), _wgslsmith_f_op_f32(trunc(arg_1)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1322f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.a, arg_1))), _wgslsmith_f_op_f32(-635f - _wgslsmith_f_op_f32(-arg_0.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, _wgslsmith_f_op_f32(-arg_0.a), 106f)))), !(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true)))));
    var var_2 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(20111u, 1u) & _wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(u_input.b, u_input.b)), vec2<u32>(1u, 97442u) & vec2<u32>(u_input.b, u_input.b)), vec2<u32>(44873u, _wgslsmith_clamp_u32(42452u, 1u, u_input.b)));
    return select(_wgslsmith_add_vec3_u32(~_wgslsmith_sub_vec3_u32(select(vec3<u32>(17933u, 4294967295u, 27486u), vec3<u32>(12317u, 1u, 4294967295u), true), vec3<u32>(u_input.b, u_input.b, 1u)), vec3<u32>(~u_input.b >> (4294967295u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(u_input.b, 0u))), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(u_input.b, u_input.b)), firstLeadingBit(vec2<u32>(u_input.b, u_input.b))))), ~min(~select(vec3<u32>(1u, u_input.b, u_input.b), vec3<u32>(1085u, u_input.b, u_input.b), true), ~(vec3<u32>(u_input.b, 33802u, 4294967295u) & vec3<u32>(u_input.b, 2634u, 4294967295u))), vec3<bool>(false, false, true));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<u32>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(-arg_0.x);
    var var_1 = global0[_wgslsmith_index_u32(u_input.b, 25u)];
    global0 = array<Struct_1, 25>();
    var_1 = global0[_wgslsmith_index_u32(1u, 25u)];
    let var_2 = vec3<bool>(true, true, true);
    return select(vec4<u32>(~_wgslsmith_dot_vec3_u32(arg_1, arg_1), ~(~43845u), ~_wgslsmith_mod_u32(arg_1.x, u_input.b), _wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(u_input.b, arg_1.x), u_input.b)) << (vec4<u32>(65788u, 0u, reverseBits(~u_input.b), 13764u) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(min(41679u, u_input.b) >> (0u % 32u), u_input.b, ~45181u, arg_1.x), vec4<u32>(~51726u, u_input.b, ~_wgslsmith_div_u32(u_input.b, 54361u), func_2(Struct_1(-1355f), arg_0.x, Struct_1(-726f)).x)), select(!select(!vec4<bool>(false, false, var_2.x, false), vec4<bool>(false, true, false, var_2.x), false), select(!select(vec4<bool>(var_2.x, var_2.x, false, false), vec4<bool>(var_2.x, true, true, var_2.x), true), select(vec4<bool>(var_2.x, false, true, false), vec4<bool>(var_2.x, false, true, false), !var_2.x), vec4<bool>(var_2.x, all(var_2.zx), var_2.x, true)), vec4<bool>(true, all(var_2), u_input.a.x == global1.x, any(!vec2<bool>(var_2.x, false)))));
}

fn func_1(arg_0: bool, arg_1: vec2<u32>) -> f32 {
    global0 = array<Struct_1, 25>();
    let var_0 = 1u;
    global0 = array<Struct_1, 25>();
    global1 = _wgslsmith_clamp_vec4_i32(~((vec4<i32>(44955i, u_input.a.x, 14756i, 0i) ^ (vec4<i32>(30242i, global1.x, 29197i, 2147483647i) << (vec4<u32>(36184u, var_0, var_0, 16971u) % vec4<u32>(32u)))) << (func_4(vec3<f32>(-874f, -213f, -705f), func_2(Struct_1(-195f), -567f, Struct_1(519f))) % vec4<u32>(32u))), reverseBits(vec4<i32>(func_3(66783i).x ^ max(global1.x, global1.x), -42694i, -24719i, 2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, global1.x, i32(-1i) * -7592i, 1i), vec4<i32>(firstLeadingBit(1i), 1i, global1.x | firstLeadingBit(0i), -1i)));
    global0 = array<Struct_1, 25>();
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !all(vec3<bool>(true, true, all(vec4<bool>(true, true, true, true))));
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - 1000f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(406f, 627f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-189f + -140f))), select(all(vec3<bool>(true, true, false)), true, true)))));
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(u_input.b > firstLeadingBit(u_input.b), ~vec2<u32>(u_input.b, u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(981f))))));
    var var_3 = vec4<bool>(true, select(false || all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))), all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false), true)), 136269u != ~func_4(vec3<f32>(var_1.a, -1773f, 850f), vec3<u32>(50266u, 37391u, u_input.b)).x), any(vec3<bool>(true, true, true)), true);
    global1 = countOneBits(vec4<i32>(2147483647i, 2147483647i, global1.x | global1.x, firstTrailingBit(-33171i)) ^ reverseBits(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -31796i, global1.x, global1.x), vec4<i32>(global1.x, 26957i, 1i, global1.x)), ~vec4<i32>(global1.x, global1.x, -2147483647i, -16780i))));
    var var_4 = ~(~(~(~vec4<u32>(50077u, 25748u, 1u, 0u) | ~vec4<u32>(u_input.b, 4294967295u, 23138u, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<i32>(1i, ~u_input.a.x, -global1.x, ~u_input.a.x)), var_4.xw, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(var_3.x, _wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(1u, u_input.b)), vec2<u32>(var_4.x, 1u) | var_4.wz, var_4.zw))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a), -1187f)))), u_input.a.x, 1012f);
}

