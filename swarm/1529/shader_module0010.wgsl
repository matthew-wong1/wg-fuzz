struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(29869u, 1u, 4294967295u, 25611u);

var<private> global1: array<vec3<i32>, 25> = array<vec3<i32>, 25>(vec3<i32>(i32(-2147483648), i32(-2147483648), 17369i), vec3<i32>(i32(-2147483648), 14572i, -11701i), vec3<i32>(4787i, 2147483647i, 1i), vec3<i32>(16939i, 28081i, i32(-2147483648)), vec3<i32>(2147483647i, i32(-2147483648), -10782i), vec3<i32>(-25562i, 30437i, -10167i), vec3<i32>(55129i, -1i, 1i), vec3<i32>(-1i, 10619i, -2940i), vec3<i32>(-102752i, i32(-2147483648), -26081i), vec3<i32>(i32(-2147483648), -1i, 1712i), vec3<i32>(i32(-2147483648), i32(-2147483648), -54718i), vec3<i32>(2147483647i, -1i, 1i), vec3<i32>(i32(-2147483648), 1i, 21663i), vec3<i32>(2147483647i, 11884i, 2147483647i), vec3<i32>(-4508i, i32(-2147483648), 0i), vec3<i32>(13719i, 10089i, 2147483647i), vec3<i32>(i32(-2147483648), 2147483647i, -29684i), vec3<i32>(-22093i, -8451i, -1i), vec3<i32>(2147483647i, 1i, 0i), vec3<i32>(40925i, -1i, 33726i), vec3<i32>(4645i, -29001i, 1i), vec3<i32>(-4029i, -998i, 1i), vec3<i32>(0i, 68668i, i32(-2147483648)), vec3<i32>(-6521i, 24712i, -1i), vec3<i32>(-56284i, 22114i, -1i));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec4<u32> {
    global1 = array<vec3<i32>, 25>();
    let var_0 = max(abs(-2147483647i), _wgslsmith_dot_vec2_i32(u_input.c.wz, vec2<i32>(-u_input.c.x, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.d.yz, vec2<i32>(7885i, u_input.c.x)), max(u_input.c.yw, vec2<i32>(-48295i, 1i))))));
    global0 = vec4<u32>(select(abs(1u), 1u, false), 4294967295u, ~_wgslsmith_clamp_u32(select(u_input.b, global0.x, false), 0u, ~50463u), 0u) << (vec4<u32>(u_input.b, ~(~4294967295u), ~(~abs(global0.x)), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(1u, u_input.b, global0.x)), min(vec3<u32>(4294967295u, global0.x, u_input.b), vec3<u32>(u_input.b, u_input.a, u_input.b)) & ~global0.xwx)) % vec4<u32>(32u));
    let var_1 = select(!(!select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), false)), vec2<bool>(any(vec4<bool>(true, true, true, true)), true), select(true, true, all(vec2<bool>(true, false))));
    let var_2 = select(vec2<bool>(any(!select(vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(true, var_1.x, true, var_1.x), var_1.x)), ~_wgslsmith_mod_u32(19983u, global0.x) <= ~global0.x), select(var_1, select(var_1, vec2<bool>(true, true), var_1.x), var_1.x), select(!var_1, var_1, var_1));
    return vec4<u32>(~71904u, ~_wgslsmith_mod_u32(global0.x << (global0.x % 32u), global0.x) & ~_wgslsmith_dot_vec2_u32(global0.zy, ~global0.wy), 4294967295u | (74140u & global0.x), global0.x);
}

fn func_2(arg_0: u32) -> Struct_1 {
    global0 = select(abs(func_3()), ~(~select(~vec4<u32>(28533u, 79167u, 54584u, global0.x), vec4<u32>(global0.x, u_input.b, 29375u, arg_0), any(vec2<bool>(true, false)))), !vec4<bool>(true & (u_input.d.x >= u_input.e), false, true, false));
    let var_0 = select((_wgslsmith_add_u32(19046u << (global0.x % 32u), 25163u) ^ 53797u) > reverseBits(min(37416u, abs(4294967295u))), false, !all(vec4<bool>(true, true, true, true)));
    global1 = array<vec3<i32>, 25>();
    global0 = _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 93593u, 22780u, 4294967295u), _wgslsmith_clamp_vec4_u32(func_3(), firstTrailingBit(vec4<u32>(global0.x, 1u, 21755u, u_input.b)) ^ _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(global0.x, global0.x, 1u, 32222u)), vec4<u32>(4294967295u, 4294967295u, u_input.a, 12184u) << (vec4<u32>(39587u, arg_0, global0.x, u_input.a) % vec4<u32>(32u))), vec4<u32>(1u, ~global0.x, ~arg_0, ~global0.x)));
    global0 = ~firstLeadingBit(countOneBits(~(~vec4<u32>(38868u, 0u, 1u, 1u))));
    return Struct_1(1000f, 3476u == u_input.a);
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> vec3<u32> {
    let var_0 = !select(!(!(!vec3<bool>(true, true, arg_1.c.b))), select(select(select(vec3<bool>(true, true, true), vec3<bool>(arg_3.c.b, arg_3.c.b, arg_1.c.b), vec3<bool>(arg_1.c.b, true, true)), vec3<bool>(arg_3.c.b, false, true), any(vec4<bool>(false, arg_3.c.b, arg_3.c.b, true))), vec3<bool>(true || arg_2.c.b, false, true), all(select(vec3<bool>(arg_2.c.b, true, true), vec3<bool>(false, true, arg_3.c.b), arg_1.c.b))), arg_2.c.b);
    global0 = max(_wgslsmith_add_vec4_u32(~func_3(), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.a, 38804u, arg_1.a, 5090u), vec4<u32>(arg_1.a, 39698u, 31125u, arg_2.a)), ~vec4<u32>(1616u, arg_1.a, 1u, 4970u))), ~select(min(vec4<u32>(global0.x, 1u, global0.x, 4294967295u), vec4<u32>(0u, 17379u, 1u, u_input.a)), ~vec4<u32>(arg_3.a, 28954u, arg_1.a, arg_3.a), !arg_1.c.b)) >> ((~select(~vec4<u32>(arg_3.a, 4294967295u, 10249u, 84408u), reverseBits(vec4<u32>(10447u, arg_3.a, 6728u, arg_2.a)), vec4<bool>(true, arg_3.c.b, arg_2.c.b, true)) >> (~(abs(vec4<u32>(14157u, 7631u, arg_2.a, 84057u)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(arg_3.a, global0.x, arg_2.a, global0.x), vec4<u32>(15575u, 4294967295u, 0u, arg_1.a)) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_1 = Struct_1(211f, !(!arg_2.c.b));
    return reverseBits(countOneBits(vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(global0.zy, global0.xx), vec2<u32>(19310u, arg_2.a)), 4035u | (arg_1.a ^ arg_1.a), arg_1.a)));
}

fn func_1(arg_0: vec4<u32>) -> vec3<f32> {
    global0 = _wgslsmith_mod_vec4_u32(~arg_0, ~arg_0) ^ abs(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(23471u, 0u, 1u, 12260u), vec4<u32>(u_input.a, arg_0.x, arg_0.x, global0.x)) ^ arg_0, ~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.b, 56675u, u_input.a), arg_0), arg_0));
    var var_0 = true;
    var_0 = firstLeadingBit(u_input.b) > _wgslsmith_dot_vec3_u32(func_4(853f, Struct_2(arg_0.x, firstTrailingBit(u_input.e), Struct_1(-2139f, false)), Struct_2(global0.x, ~0i, func_2(0u)), Struct_2(11433u, 0i, Struct_1(-175f, false))), ~vec3<u32>(51244u, u_input.a, u_input.b));
    global0 = arg_0;
    let var_1 = Struct_2(_wgslsmith_dot_vec4_u32(select(_wgslsmith_clamp_vec4_u32(min(vec4<u32>(arg_0.x, global0.x, 0u, arg_0.x), vec4<u32>(4294967295u, 0u, u_input.a, 37689u)), abs(vec4<u32>(global0.x, global0.x, 1u, arg_0.x)), firstLeadingBit(vec4<u32>(51197u, 1u, u_input.a, 23341u))), _wgslsmith_mult_vec4_u32(~vec4<u32>(arg_0.x, arg_0.x, global0.x, 1u), arg_0), false), ~(vec4<u32>(5211u, global0.x, 1u, 0u) << (~vec4<u32>(u_input.b, global0.x, 146183u, 4294967295u) % vec4<u32>(32u)))), _wgslsmith_dot_vec4_i32(firstTrailingBit(u_input.d), vec4<i32>(-_wgslsmith_mult_i32(21771i, u_input.c.x), countOneBits(u_input.d.x), -u_input.d.x, u_input.c.x)), func_2(reverseBits(26159u)));
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1000f - var_1.c.a), _wgslsmith_f_op_f32(-var_1.c.a), -1006f) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.a, var_1.c.a, var_1.c.a)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(0u, 4294967295u);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(~_wgslsmith_clamp_vec4_u32(vec4<u32>(34906u, 24410u, global0.x, 1u), abs(vec4<u32>(var_0.x, 1u, 1u, 18949u)), ~vec4<u32>(1u, global0.x, 104554u, global0.x)))));
    let var_2 = var_0.x;
    let var_3 = 1038f;
    let var_4 = Struct_2(9637u, _wgslsmith_dot_vec3_i32(~_wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.c.x, u_input.d.x, 43359i), _wgslsmith_mult_vec3_i32(u_input.d.yxy, vec3<i32>(u_input.c.x, 1i, u_input.e))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(var_0.x, 4294967295u), ~4294967295u), _wgslsmith_mult_u32(~var_2, countOneBits(28534u))), 25u)]), func_2(global0.x << (20928u % 32u)));
    var var_5 = func_2(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_4.a, var_2) << ((vec2<u32>(u_input.b, var_0.x) & var_0) % vec2<u32>(32u)), ~(~var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x);
}

