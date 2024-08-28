struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: bool = true;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<u32>) -> bool {
    global1 = global0.x;
    global1 = global0.x;
    let var_0 = _wgslsmith_f_op_f32(min(-235f, _wgslsmith_f_op_f32(-286f - 1f)));
    global0 = select(select(select(!(!vec2<bool>(global0.x, false)), !(!vec2<bool>(global0.x, true)), vec2<bool>(any(vec4<bool>(true, true, false, false)), any(vec4<bool>(global0.x, global0.x, global0.x, global0.x)))), select(select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x)), vec2<bool>(false, true), any(vec2<bool>(true, false))), !select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, true), vec2<bool>(true, true)), false), vec2<bool>(true, true | (true | global0.x))), vec2<bool>(global0.x, global0.x), !select(vec2<bool>(any(vec4<bool>(global0.x, global0.x, false, global0.x)), all(vec4<bool>(false, true, false, false))), !vec2<bool>(false, global0.x), vec2<bool>(true, any(vec4<bool>(global0.x, true, global0.x, false)))));
    var var_1 = 20447i;
    return countOneBits(_wgslsmith_mod_u32(reverseBits(reverseBits(arg_0.x)), reverseBits(firstLeadingBit(0u)))) <= abs(_wgslsmith_mod_u32(reverseBits(u_input.a) & reverseBits(arg_0.x), _wgslsmith_clamp_u32(30985u, ~0u, ~arg_0.x)));
}

fn func_2(arg_0: i32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(397f))))))));
    global0 = select(!select(!select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, false), false), vec2<bool>(select(true, global0.x, global0.x), true), global0.x), vec2<bool>(func_3(vec3<u32>(~4294967295u, _wgslsmith_add_u32(u_input.a, 4294967295u), max(u_input.a, u_input.a))), (any(vec2<bool>(global0.x, true)) || global0.x) & global0.x), !vec2<bool>(true, any(vec4<bool>(false, true, false, false))));
    let var_1 = !select(select(select(select(vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(true, true, global0.x, global0.x), global0.x), !vec4<bool>(global0.x, global0.x, false, global0.x), select(vec4<bool>(true, true, global0.x, false), vec4<bool>(true, global0.x, true, false), global0.x)), !select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(true, global0.x, true, global0.x), vec4<bool>(global0.x, false, global0.x, global0.x)), !(u_input.a >= 69791u)), vec4<bool>(any(vec2<bool>(true, true)), global0.x, false, any(!vec2<bool>(false, global0.x))), global0.x);
    var var_2 = vec2<u32>(0u, u_input.a);
    let var_3 = _wgslsmith_f_op_f32(floor(var_0));
    return var_0 <= _wgslsmith_div_f32(-268f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_3))));
}

fn func_4(arg_0: bool, arg_1: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1448f);
    global1 = true;
    let var_1 = Struct_1(2455f, vec4<u32>(0u, ~u_input.a, _wgslsmith_clamp_u32(u_input.a, _wgslsmith_add_u32(arg_1, arg_1), arg_1 ^ arg_1), ~0u) | vec4<u32>(23132u, arg_1 & _wgslsmith_add_u32(4375u, 1u), u_input.a, 4643u));
    var_0 = _wgslsmith_f_op_f32(-var_1.a);
    var var_2 = _wgslsmith_f_op_f32(ceil(763f));
    return var_1;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: vec2<i32>) -> bool {
    let var_0 = func_4(func_2(arg_3.x), ~u_input.a);
    var var_1 = arg_0;
    var var_2 = max(0i, 2147483647i);
    var var_3 = arg_0;
    let var_4 = arg_0;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0.x & all(select(select(vec4<bool>(global0.x, true, global0.x, false), !vec4<bool>(global0.x, true, true, global0.x), func_1(Struct_1(-843f, vec4<u32>(0u, 0u, u_input.a, 1u)), false, u_input.a, vec2<i32>(2147483647i, -8623i))), !select(vec4<bool>(true, false, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), true), vec4<bool>(false, true, func_1(Struct_1(1040f, vec4<u32>(0u, u_input.a, u_input.a, 0u)), false, u_input.a, vec2<i32>(0i, -2065i)), any(vec3<bool>(false, global0.x, false)))));
    var var_0 = -44659i;
    var var_1 = ~abs(vec4<u32>(u_input.a, 1u, ~18955u, u_input.a)) | _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(24933u, u_input.a, 4294967295u, 10647u), vec4<u32>(8661u, u_input.a, u_input.a, 1u)), ~(vec4<u32>(1u, u_input.a, 1u, 0u) << (vec4<u32>(u_input.a, u_input.a, 1u, 1u) % vec4<u32>(32u)))), firstTrailingBit(vec4<u32>(5489u, ~u_input.a, ~u_input.a, u_input.a)));
    global1 = true;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2241f * _wgslsmith_div_f32(-771f, -227f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -253f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-560f, -1219f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1118f))))), false)), func_4(global0.x, var_1.x).b | max(~(~vec4<u32>(16642u, u_input.a, 21174u, u_input.a)), vec4<u32>(~var_1.x, 1u << (u_input.a % 32u), 58840u, countOneBits(u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, var_2.a, ~0u, min(-2147483647i, -8477i), vec4<u32>(var_1.x, var_2.b.x, var_1.x, 4294967295u));
}

