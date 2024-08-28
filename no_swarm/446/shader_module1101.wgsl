struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, vec3<i32>(1i, 2147483647i, i32(-2147483648)));

var<private> global1: vec2<bool>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = max(arg_0, 2974u);
    let var_1 = arg_1;
    global1 = !vec2<bool>(true, arg_0 <= ~(~arg_0));
    var var_2 = -firstLeadingBit(global0.b) & _wgslsmith_mod_vec3_i32(vec3<i32>(arg_3.x, 2147483647i, abs(select(2147483647i, global0.b.x, global0.a))), -arg_1.b);
    var var_3 = ~firstTrailingBit(_wgslsmith_mod_u32(firstLeadingBit(94203u), arg_0));
    return var_1;
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = abs(reverseBits(vec2<u32>(1u, 1u)));
    let var_1 = _wgslsmith_f_op_f32(round(arg_2.x));
    var var_2 = arg_3.b;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2001f + -936f)), arg_2.x), 2609f)), _wgslsmith_f_op_f32(round(724f)));
    return arg_3;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> vec4<bool> {
    return select(vec4<bool>(global0.a, !any(!vec3<bool>(arg_1.a, arg_1.a, arg_1.a)), arg_3.a, arg_1.a), vec4<bool>(arg_1.a, true, _wgslsmith_add_i32(arg_2.x, arg_3.b.x) <= -(~arg_0), true), vec4<bool>(all(vec2<bool>(!global0.a, true)), true, !(!arg_3.a), !arg_3.a));
}

fn func_1() -> Struct_1 {
    let var_0 = firstLeadingBit(_wgslsmith_add_vec3_u32(~_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 31064u, 28985u), vec3<u32>(4294967295u, 0u, 823u), vec3<u32>(4294967295u, 0u, 0u)), vec3<u32>(1u, 1u, 1u)), _wgslsmith_div_vec3_u32(firstTrailingBit(~vec3<u32>(4294967295u, 7047u, 1u)), vec3<u32>(_wgslsmith_mult_u32(76805u, 10961u), 0u, select(1u, 39303u, false)))));
    let var_1 = func_4(global0.b.x, func_3(Struct_1(true, vec3<i32>(-39968i, ~1i, global0.b.x)), global0.a, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(947f, 359f, -662f, -376f) - vec4<f32>(-1641f, -411f, -516f, 1219f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1725f, 507f, -1078f, 306f))))), func_2(12972u, Struct_1(!global0.a, abs(global0.b)), u_input.b, ~vec3<i32>(global0.b.x, u_input.a, global0.b.x))), vec3<i32>(~(i32(-1i) * -u_input.a), 18365i, -(~77706i) << (_wgslsmith_add_u32(0u, var_0.x) % 32u)), Struct_1(global1.x, reverseBits(countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 2147483647i, 27801i), global0.b)))));
    let var_2 = Struct_1(select(45728u, 35024u, !any(var_1.zz)) >= 14516u, func_3(func_3(Struct_1(true, vec3<i32>(1i, global0.b.x, global0.b.x)), (u_input.b >> (var_0.x % 32u)) >= global0.b.x, vec4<f32>(862f, -1895f, 1000f, -1453f), Struct_1(!global1.x, vec3<i32>(-20357i, 2147483647i, -16534i))), !(global1.x & false) && (u_input.a != ~(-32929i)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(123f, 206f, 170f, 422f)))), vec4<f32>(_wgslsmith_f_op_f32(min(839f, -2488f)), 1026f, _wgslsmith_f_op_f32(select(-646f, 400f, global0.a)), -828f))), func_2(max(41943u, var_0.x), Struct_1(true, global0.b), _wgslsmith_clamp_i32(-global0.b.x, u_input.b, -1i), _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(global0.b, global0.b, global0.b), ~vec3<i32>(global0.b.x, global0.b.x, 2147483647i), func_2(30361u, Struct_1(var_1.x, vec3<i32>(32836i, 0i, -51924i)), u_input.b, vec3<i32>(-1i, u_input.a, 0i)).b))).b);
    let var_3 = var_1.xx;
    var var_4 = Struct_1(false, -(~(~vec3<i32>(-66371i, -2147483647i, global0.b.x)) & global0.b));
    return Struct_1(true, vec3<i32>(_wgslsmith_div_i32(select(26283i, var_2.b.x, global1.x & false), 2147483647i), 8988i | ~abs(global0.b.x), -_wgslsmith_mod_i32(~17622i, var_2.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = select(func_4(~(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.x, -2147483647i, var_0.b.x), vec3<i32>(2147483647i, var_0.b.x, u_input.a)) | 0i), func_1(), firstTrailingBit(~(vec3<i32>(-28299i, var_0.b.x, 0i) | global0.b)), Struct_1(global1.x, vec3<i32>(var_0.b.x, -var_0.b.x, 34364i))).yx, select(!(!vec2<bool>(false, global1.x)), vec2<bool>(true, true), false | ((false & var_0.a) || any(vec3<bool>(var_0.a, false, global1.x)))), func_1().a);
    global0 = Struct_1(!(!func_1().a), global0.b);
    global1 = !vec2<bool>(global0.a, _wgslsmith_dot_vec2_i32(-global0.b.zz, abs(var_0.b.yx)) > _wgslsmith_div_i32(-1i, -var_0.b.x));
    let var_1 = all(vec3<bool>(true, true, true)) != global0.a;
    var_0 = func_3(func_1(), func_1().a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(413f, 417f, 133f, 418f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(101f, 1848f, 3878f, 1064f)), func_4(var_0.b.x, Struct_1(var_0.a, vec3<i32>(0i, u_input.b, -2147483647i)), global0.b, Struct_1(var_0.a, global0.b)).x)))), func_3(Struct_1(false, -(var_0.b | vec3<i32>(global0.b.x, var_0.b.x, var_0.b.x))), !global0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(217f, 1068f, -1551f, -225f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-797f, 874f, -1000f, -1588f)))), Struct_1(true, _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.b.x, var_0.b.x, global0.b.x), var_0.b, vec3<i32>(20222i, var_0.b.x, global0.b.x)) ^ ~var_0.b)));
    var_0 = func_2(0u >> (1u % 32u), Struct_1(!(global0.b.x != -2147483647i), vec3<i32>(global0.b.x, -_wgslsmith_mod_i32(var_0.b.x, global0.b.x), (u_input.a << (9094u % 32u)) << (min(0u, 1u) % 32u))), global0.b.x, ~(((var_0.b >> (vec3<u32>(55572u, 31363u, 45059u) % vec3<u32>(32u))) ^ global0.b) << (~vec3<u32>(73260u, 47087u, 4294967295u) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~1u, 4294967295u, ~1u, 0u), ~firstLeadingBit(vec3<u32>(4294967295u, 1u, 4294967295u)));
}

