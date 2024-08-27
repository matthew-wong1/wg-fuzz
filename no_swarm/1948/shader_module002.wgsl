struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21> = array<bool, 21>(true, true, false, false, false, false, false, true, true, false, false, false, false, true, false, true, true, false, false, false, false);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_4) -> vec3<u32> {
    var var_0 = arg_2.b.xy;
    let var_1 = vec2<bool>(all(select(select(select(vec3<bool>(arg_0.x, arg_0.x, arg_1), vec3<bool>(true, arg_0.x, false), arg_2.d.b), vec3<bool>(arg_2.d.b, arg_1, global0[_wgslsmith_index_u32(var_0.x, 21u)]), true), select(!vec3<bool>(true, arg_0.x, arg_0.x), select(vec3<bool>(arg_0.x, global0[_wgslsmith_index_u32(0u, 21u)], false), vec3<bool>(arg_0.x, false, false), false), select(vec3<bool>(true, arg_2.d.b, arg_0.x), vec3<bool>(true, false, global0[_wgslsmith_index_u32(var_0.x, 21u)]), false)), !select(vec3<bool>(arg_1, true, true), vec3<bool>(false, true, false), false))), false);
    var var_2 = _wgslsmith_mod_vec3_i32(~reverseBits(vec3<i32>(_wgslsmith_add_i32(arg_2.e.x, arg_2.e.x), arg_2.e.x, -arg_2.e.x)), vec3<i32>(-1i) * -select(vec3<i32>(arg_2.e.x, arg_2.e.x, -2147483647i), vec3<i32>(94250i, 3533i, 38908i) >> (vec3<u32>(60219u, arg_2.c, var_0.x) % vec3<u32>(32u)), true));
    var_2 = vec3<i32>(~arg_2.e.x, firstLeadingBit(i32(-1i) * -2147483647i), -659i);
    let var_3 = -275f;
    return arg_2.d.a;
}

fn func_4(arg_0: Struct_4, arg_1: vec3<u32>) -> f32 {
    var var_0 = countOneBits(~_wgslsmith_clamp_vec2_u32(arg_1.xz, vec2<u32>(1u, 4294967295u), arg_1.yz));
    var var_1 = 0u;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(814f)) * _wgslsmith_f_op_f32(1578f + 258f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(331f - -323f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + -620f)));
    let var_3 = 18582i;
    let var_4 = ~(~0u);
    return _wgslsmith_f_op_f32(floor(180f));
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: vec3<i32>) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(Struct_4(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.x, u_input.a, 2635u, 4294967295u), vec4<u32>(arg_0.x, u_input.a, arg_0.x, u_input.a)), vec3<u32>(57260u, 4294967295u, u_input.a), 4294967295u, Struct_1(vec3<u32>(arg_0.x, 1u, u_input.a), any(vec3<bool>(arg_1, arg_1, global0[_wgslsmith_index_u32(u_input.a, 21u)])), ~u_input.a, reverseBits(arg_0.x)), -arg_2.xz << (_wgslsmith_div_vec2_u32(arg_0, arg_0) % vec2<u32>(32u))), abs(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(u_input.a, u_input.a, 4294967295u)), func_3(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 21u)]), arg_1, Struct_4(vec4<u32>(arg_0.x, 4294967295u, 0u, 0u), vec3<u32>(u_input.a, 0u, 0u), u_input.a, Struct_1(vec3<u32>(4294967295u, u_input.a, 11315u), arg_1, 1u, 4294967295u), vec2<i32>(arg_2.x, arg_2.x))))))), _wgslsmith_f_op_f32(f32(-1f) * -1255f)));
    let var_1 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(~28219u, 4294967295u, u_input.a ^ u_input.a), max(~arg_0.x, 0u | u_input.a)), 46674u) >> ((abs(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a, arg_0.x, arg_0.x, 660u)), vec4<u32>(4294967295u, arg_0.x, 4294967295u, arg_0.x))) << (reverseBits(57114u) % 32u)) % 32u);
    var var_2 = ~vec2<u32>(reverseBits(arg_0.x), u_input.a);
    var var_3 = vec2<bool>(arg_1 != (false || arg_1), global0[_wgslsmith_index_u32(12569u, 21u)]);
    var_3 = select(select(vec2<bool>(any(vec2<bool>(var_3.x, false)), any(!vec2<bool>(var_3.x, var_3.x))), vec2<bool>(true, true), vec2<bool>(any(select(vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(var_1, 21u)], false), global0[_wgslsmith_index_u32(var_2.x, 21u)])), true)), vec2<bool>(all(!vec3<bool>(var_3.x, arg_1, false)), false), select(select(select(vec2<bool>(var_3.x, var_3.x), vec2<bool>(true, true), select(vec2<bool>(var_3.x, true), vec2<bool>(false, false), vec2<bool>(var_3.x, var_3.x))), select(!vec2<bool>(true, var_3.x), select(vec2<bool>(false, false), vec2<bool>(arg_1, false), var_3.x), all(vec2<bool>(false, var_3.x))), vec2<bool>(false && arg_1, false)), select(select(!vec2<bool>(arg_1, var_3.x), vec2<bool>(global0[_wgslsmith_index_u32(var_1, 21u)], true), var_3.x || var_3.x), select(select(vec2<bool>(true, global0[_wgslsmith_index_u32(var_2.x, 21u)]), vec2<bool>(true, var_3.x), vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 21u)])), vec2<bool>(false, true), any(vec3<bool>(false, true, true))), vec2<bool>(true, !global0[_wgslsmith_index_u32(4294967295u, 21u)])), any(select(select(vec2<bool>(var_3.x, var_3.x), vec2<bool>(arg_1, true), global0[_wgslsmith_index_u32(64021u, 21u)]), !vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 21u)]), true))));
    return vec3<u32>(arg_0.x, _wgslsmith_div_u32(reverseBits(~_wgslsmith_mod_u32(29213u, 1u)), 1u), 29091u);
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: vec3<u32>, arg_3: u32) -> u32 {
    var var_0 = Struct_3(-reverseBits(arg_0), ~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_3, u_input.a, arg_2.x)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(1649u, 2382u, arg_2.x), arg_2, arg_2) % vec3<u32>(32u)), func_2(arg_2.xy, false, vec3<i32>(-10640i, -1015i, 112538i) & vec3<i32>(arg_0, arg_0, arg_0))));
    var_0 = Struct_3(min(-1i & var_0.a, -10481i), firstTrailingBit(_wgslsmith_sub_u32(arg_3, _wgslsmith_add_u32(reverseBits(arg_2.x), func_3(vec2<bool>(true, false), false, Struct_4(vec4<u32>(arg_3, arg_3, 16792u, 32278u), vec3<u32>(arg_2.x, 0u, 4294967295u), 38811u, Struct_1(vec3<u32>(u_input.a, arg_3, var_0.b), true, arg_2.x, arg_2.x), vec2<i32>(2147483647i, var_0.a))).x))));
    var var_1 = 136f;
    let var_2 = Struct_2(select(select(select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 21u)]), vec2<bool>(true, true), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, var_0.b), 21u)]), vec2<bool>(global0[_wgslsmith_index_u32(abs(var_0.b), 21u)], any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 21u)], global0[_wgslsmith_index_u32(117557u, 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)]))), vec2<bool>(true, true)), vec2<bool>(!global0[_wgslsmith_index_u32(~28978u, 21u)], var_0.b != var_0.b), vec2<bool>(!any(vec2<bool>(false, false)), false)), Struct_1(select(arg_2, arg_2, vec3<bool>(1u <= var_0.b, true, true)), all(!(!vec2<bool>(global0[_wgslsmith_index_u32(1u, 21u)], true))), u_input.a, 57806u), Struct_1(min(arg_2, vec3<u32>(arg_3, var_0.b, 0u)), global0[_wgslsmith_index_u32(~24349u ^ countOneBits(firstTrailingBit(var_0.b)), 21u)], 28321u | arg_3, _wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(arg_3, 21142u), _wgslsmith_div_u32(1u, u_input.a)), ~countOneBits(15017u))), arg_1.x, ~arg_2);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1f)))))));
    return ~22555u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 21>();
    global0 = array<bool, 21>();
    global0 = array<bool, 21>();
    let var_0 = select(!(!vec4<bool>(true, true, global0[_wgslsmith_index_u32(func_1(69769i, vec4<f32>(-227f, 376f, 741f, 846f), vec3<u32>(20011u, u_input.a, 1u), u_input.a), 21u)], true)), select(vec4<bool>(!global0[_wgslsmith_index_u32(~38640u, 21u)], global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(1u, u_input.a), 21u)], true || all(vec3<bool>(true, global0[_wgslsmith_index_u32(118998u, 21u)], global0[_wgslsmith_index_u32(107066u, 21u)])), global0[_wgslsmith_index_u32(72959u, 21u)]), !vec4<bool>(3845u >= u_input.a, true, true, all(vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 21u)]))), true), true);
    let var_1 = Struct_1(~vec3<u32>(~(~u_input.a), 4294967295u, u_input.a & ~u_input.a), false, u_input.a & countOneBits(28087u), firstLeadingBit(~(~_wgslsmith_sub_u32(u_input.a, u_input.a))));
    var var_2 = vec2<u32>(u_input.a, firstLeadingBit(50498u) << (_wgslsmith_div_u32(4294967295u, func_2(var_1.a.xy, global0[_wgslsmith_index_u32(u_input.a, 21u)], vec3<i32>(2147483647i, -14696i, -2147483647i)).x >> (func_2(var_1.a.xy, true, vec3<i32>(2147483647i, 1i, -42519i)).x % 32u)) % 32u));
    let var_3 = Struct_4(~select(~(~vec4<u32>(0u, u_input.a, 4294967295u, var_1.c)), firstLeadingBit(~vec4<u32>(31081u, u_input.a, var_2.x, 34785u)), var_1.b), ~vec3<u32>(u_input.a, 38788u, _wgslsmith_mod_u32(u_input.a, var_1.a.x)) >> (_wgslsmith_clamp_vec3_u32(min(~var_1.a, var_1.a), var_1.a, ~min(vec3<u32>(var_1.a.x, var_2.x, 71675u), var_1.a)) % vec3<u32>(32u)), var_2.x, var_1, vec2<i32>(-1i, select(-1i, max(-960i, 2147483647i), true & global0[_wgslsmith_index_u32(var_1.d, 21u)]) | (1i << ((0u ^ var_1.d) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(76546u, firstTrailingBit(vec3<i32>(~_wgslsmith_mult_i32(-2147483647i, var_3.e.x), 2147483647i, var_3.e.x)));
}

