struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec2<f32>, 7>;

var<private> global2: array<vec3<bool>, 16>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<u32> {
    var var_0 = Struct_1(u_input.a, vec3<u32>(u_input.a, _wgslsmith_mult_u32(countOneBits(4294967295u), ~u_input.a), _wgslsmith_add_u32(15990u | u_input.a, ~133979u)) ^ vec3<u32>(u_input.b, _wgslsmith_mod_u32(u_input.b, u_input.b), 48840u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-980f, -567f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(294f, 1450f))))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1101f, 854f) + global1[_wgslsmith_index_u32(u_input.a, 7u)])), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~31431u, 4294967295u, u_input.b), 7u)], true))));
    global1 = array<vec2<f32>, 7>();
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1161f)), 735f));
    global0 = -vec4<i32>(global0.x, global0.x, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-17502i, 15134i, global0.x, global0.x)), _wgslsmith_div_vec4_i32(vec4<i32>(global0.x, global0.x, global0.x, -70610i), vec4<i32>(0i, global0.x, -1i, 2147483647i))), ~1i, global0.x), ~(i32(-1i) * -2147483647i));
    let var_2 = Struct_1(4294967295u, ~countOneBits(~vec3<u32>(24074u, 34511u, 49973u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, 818f))));
    return vec3<u32>(_wgslsmith_add_u32(6004u, _wgslsmith_dot_vec2_u32(firstLeadingBit(var_2.b.zz), var_0.b.xx) << (~var_2.b.x % 32u)), var_2.a, u_input.a);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> bool {
    global1 = array<vec2<f32>, 7>();
    global2 = array<vec3<bool>, 16>();
    var var_0 = firstLeadingBit(firstLeadingBit(_wgslsmith_mult_u32(~arg_1.a, 4294967295u)));
    let var_1 = ~(-2147483647i);
    var var_2 = 956f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) * _wgslsmith_f_op_f32(ceil(arg_1.c.x)))) >= _wgslsmith_f_op_f32(f32(-1f) * -1087f);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = vec4<i32>(1i, 1i, abs(0i), _wgslsmith_mod_i32(-1850i, arg_0.x));
    global1 = array<vec2<f32>, 7>();
    global1 = array<vec2<f32>, 7>();
    let var_1 = func_4(Struct_1(firstTrailingBit(19008u), func_3(), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1267f, -704f))), Struct_1(16574u, _wgslsmith_div_vec3_u32(~(~vec3<u32>(26089u, arg_1.x, u_input.a)), max(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 2907u, arg_1.x), vec3<u32>(4294967295u, arg_1.x, 0u)), ~vec3<u32>(u_input.b, arg_1.x, 1u))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(337f - 451f), 459f)))), ~1i);
    var var_2 = Struct_1((u_input.a & _wgslsmith_clamp_u32(~arg_1.x, arg_1.x, abs(25860u))) | u_input.b, max(vec3<u32>(15916u, 52409u, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(~10698u, firstLeadingBit(u_input.a), ~4294967295u), vec3<u32>(firstTrailingBit(21545u), arg_1.x, arg_1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global1[_wgslsmith_index_u32(abs(~49541u), 7u)]))));
    return Struct_1(~25517u, ~(~(~(~var_2.b))), global1[_wgslsmith_index_u32(countOneBits(min(0u, 1u)), 7u)]);
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec2<bool>, arg_3: vec2<i32>) -> vec2<bool> {
    let var_0 = 799f;
    let var_1 = vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~arg_0.b, arg_0.b), ~arg_0.b), min(u_input.b, ~reverseBits(~arg_0.a)), 41404u);
    let var_2 = select(vec4<bool>(true == (false && !arg_2.x), true, arg_2.x, func_4(func_2(vec4<i32>(1i, arg_3.x, 12020i, arg_1), min(var_1.zz, vec2<u32>(33269u, 4294967295u))), arg_0, -2147483647i)), select(select(vec4<bool>(!arg_2.x, !arg_2.x, 59174i == arg_3.x, arg_2.x), !vec4<bool>(arg_2.x, arg_2.x, false, true), _wgslsmith_f_op_f32(max(var_0, var_0)) <= var_0), select(!select(vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(false, true, arg_2.x, true), vec4<bool>(true, arg_2.x, false, arg_2.x)), vec4<bool>(false, true, true, true), all(global2[_wgslsmith_index_u32(arg_0.b.x, 16u)])), arg_2.x), !(!(_wgslsmith_add_i32(0i, 11135i) >= min(arg_1, -14756i))));
    global0 = vec4<i32>(0i, arg_3.x, -49464i, arg_1) ^ vec4<i32>(reverseBits(2569i), arg_3.x, -43374i, _wgslsmith_dot_vec2_i32(global0.zw & _wgslsmith_clamp_vec2_i32(vec2<i32>(-49566i, -2147483647i), vec2<i32>(arg_1, arg_3.x), vec2<i32>(arg_1, arg_3.x)), -vec2<i32>(arg_3.x, 1i)));
    let var_3 = _wgslsmith_f_op_f32(-var_0);
    return var_2.yx;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec2<u32> {
    let var_0 = select(vec2<bool>(true, select(arg_0.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(10802u, arg_2.b.x, u_input.b), arg_1.b), true) != ~min(arg_1.b.x, 0u)), !vec2<bool>(true, all(select(vec3<bool>(false, false, false), global2[_wgslsmith_index_u32(arg_2.a, 16u)], false))), func_5(func_2(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, global0.x, global0.x, 24618i), -vec4<i32>(-3216i, 2147483647i, 12281i, global0.x)), arg_2.b.xy), reverseBits(17419i), vec2<bool>(all(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true))), global0.zw));
    var var_1 = global0.x & max(-22858i, select(global0.x | global0.x, global0.x, all(var_0)) | -(~global0.x));
    let var_2 = ~firstTrailingBit(func_3().x);
    global0 = -vec4<i32>(global0.x, ~(i32(-1i) * -1i), global0.x, -global0.x) ^ select(max(vec4<i32>(12759i, global0.x, global0.x, global0.x) | vec4<i32>(global0.x, -3000i, 2147483647i, 27161i), _wgslsmith_sub_vec4_i32(vec4<i32>(7373i, global0.x, 1i, -1i), vec4<i32>(global0.x, global0.x, global0.x, -38211i))) ^ abs(min(vec4<i32>(-2147483647i, global0.x, -1i, 41863i), vec4<i32>(global0.x, 32325i, global0.x, global0.x))), ~vec4<i32>(-global0.x, -global0.x, -global0.x, _wgslsmith_mult_i32(global0.x, global0.x)), !any(!vec4<bool>(true, var_0.x, var_0.x, var_0.x)));
    var_1 = 1i;
    return vec2<u32>(u_input.b, var_2 >> (~(arg_0.a >> (var_2 % 32u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(global0.x, 1i)) >> (select(vec2<u32>(u_input.b, 85980u), vec2<u32>(u_input.a, u_input.b), false) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, global0.x), vec2<i32>(1i, 10998i)) << (func_1(Struct_1(0u, vec3<u32>(26791u, u_input.a, u_input.b), vec2<f32>(1000f, 852f)), Struct_1(1u, vec3<u32>(u_input.b, u_input.a, 4294967295u), global1[_wgslsmith_index_u32(u_input.b, 7u)]), Struct_1(68639u, vec3<u32>(u_input.a, u_input.b, 1u), global1[_wgslsmith_index_u32(0u, 7u)])) % vec2<u32>(32u))) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b >> (u_input.b % 32u), max(firstLeadingBit(1u), func_2(vec4<i32>(9067i, global0.x, global0.x, global0.x), vec2<u32>(87047u, u_input.b)).a)), reverseBits(select(vec2<u32>(1u, 4294967295u), ~vec2<u32>(52557u, 1u), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)))), ~_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(1u, u_input.a)), ~vec2<u32>(u_input.b, 4294967295u))) % vec2<u32>(32u));
    let var_1 = var_0.x;
    var var_2 = ~(-_wgslsmith_mod_i32(firstLeadingBit(~var_1), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, var_1, var_1, -555i) ^ vec4<i32>(global0.x, var_0.x, global0.x, -2147483647i), vec4<i32>(var_0.x, var_1, 0i, global0.x))));
    let var_3 = var_0.x;
    var_2 = max(1652i, _wgslsmith_add_i32(reverseBits(14132i), ~var_0.x));
    var var_4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-707f))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1080f, 676f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-949f, _wgslsmith_f_op_f32(ceil(-1238f)), -2353f) - vec3<f32>(-1000f, 888f, _wgslsmith_f_op_f32(abs(-1772f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), false));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(countOneBits(abs(vec4<i32>(-42106i, -18025i, -2147483647i, -29437i)) | vec4<i32>(0i, 32663i, global0.x, -1i))));
}

