struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>) -> i32 {
    let var_0 = Struct_1(vec2<bool>(false, arg_1.x));
    global0 = all(arg_1) != !(!var_0.a.x);
    global0 = true;
    global0 = arg_0.a.x;
    let var_1 = var_0;
    return ~1i;
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec3<i32>) -> u32 {
    let var_0 = ~1u;
    global0 = !any(select(vec4<bool>(false, any(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), false, true), select(select(vec4<bool>(arg_1.a.x, true, arg_1.a.x, true), vec4<bool>(arg_1.a.x, false, arg_0.x, arg_1.a.x), false), !vec4<bool>(arg_0.x, false, arg_0.x, false), true), select(u_input.a.x > u_input.a.x, arg_0.x, true)));
    var var_1 = !vec2<bool>(!arg_1.a.x, !(~u_input.b.x == ~var_0));
    var var_2 = arg_1;
    let var_3 = arg_1;
    return 1u;
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = arg_0;
    global0 = !all(!vec4<bool>(true, true, var_0.a.x, arg_0.a.x));
    var var_1 = _wgslsmith_clamp_i32(_wgslsmith_mod_i32(func_2(Struct_1(select(arg_0.a, vec2<bool>(false, arg_0.a.x), vec2<bool>(true, var_0.a.x))), vec4<bool>(all(vec4<bool>(arg_0.a.x, var_0.a.x, arg_0.a.x, var_0.a.x)), arg_0.a.x, any(arg_0.a), !var_0.a.x)), 1i), -u_input.a.x >> (_wgslsmith_mult_u32(28843u, u_input.b.x) % 32u), ~func_2(var_0, vec4<bool>(true, true, true, true)));
    var_1 = countOneBits(u_input.a.x << (_wgslsmith_div_u32(0u, func_3(vec2<bool>(true, true), var_0, u_input.a.xxy)) % 32u));
    var var_2 = max(~(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 31267u, 59024u, 0u), vec4<u32>(u_input.b.x, u_input.b.x, 4858u, u_input.b.x))) >> (~(~vec4<u32>(u_input.b.x, u_input.b.x, 32050u, 79779u)) % vec4<u32>(32u)), vec4<u32>(firstLeadingBit(_wgslsmith_div_u32(~u_input.b.x, ~0u)), u_input.b.x, u_input.b.x, _wgslsmith_div_u32(u_input.b.x, ~(~u_input.b.x))));
    return select(!(!select(!vec4<bool>(false, true, var_0.a.x, false), select(vec4<bool>(true, var_0.a.x, var_0.a.x, arg_0.a.x), vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, false), true), any(vec4<bool>(true, true, var_0.a.x, var_0.a.x)))), select(select(vec4<bool>(any(vec4<bool>(true, true, false, true)), !var_0.a.x, any(vec2<bool>(var_0.a.x, true)), true), vec4<bool>(true, !var_0.a.x, false, !var_0.a.x), true), !(!(!vec4<bool>(true, true, arg_0.a.x, arg_0.a.x))), all(select(select(vec4<bool>(false, true, arg_0.a.x, var_0.a.x), vec4<bool>(true, arg_0.a.x, var_0.a.x, arg_0.a.x), vec4<bool>(var_0.a.x, false, false, arg_0.a.x)), select(vec4<bool>(arg_0.a.x, false, false, false), vec4<bool>(var_0.a.x, false, arg_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, arg_0.a.x, arg_0.a.x, var_0.a.x)), true))), ~37412u > _wgslsmith_sub_u32(firstTrailingBit(14601u), 20172u | ~var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!(!(!select(vec2<bool>(false, false), vec2<bool>(false, false), true))));
    let var_1 = u_input.b.x & _wgslsmith_sub_u32(~u_input.b.x, _wgslsmith_mod_u32(min(min(26410u, 26632u), 6678u | u_input.b.x), u_input.b.x));
    var var_2 = func_1(Struct_1(!vec2<bool>(!var_0.a.x, all(vec3<bool>(false, false, var_0.a.x)))));
    let var_3 = Struct_1(func_1(var_0).zy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-386f - -224f), _wgslsmith_f_op_f32(-1330f * 463f)))))), u_input.a.wx, select(~(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u, 79889u, 4294967295u), vec4<u32>(u_input.b.x, u_input.b.x, 24313u, u_input.b.x)) | vec4<u32>(var_1, 4294967295u, var_1, u_input.b.x)), vec4<u32>(_wgslsmith_add_u32(u_input.b.x, u_input.b.x), reverseBits(19206u), _wgslsmith_mult_u32(var_1, 125880u), ~1u) ^ vec4<u32>(4294967295u, ~u_input.b.x, var_1, u_input.b.x), select(func_1(var_0), select(vec4<bool>(var_2.x, var_0.a.x, var_3.a.x, var_2.x), select(vec4<bool>(var_0.a.x, false, true, var_0.a.x), vec4<bool>(var_3.a.x, var_3.a.x, false, var_0.a.x), vec4<bool>(true, var_0.a.x, var_3.a.x, var_2.x)), var_2.x), false)));
}

