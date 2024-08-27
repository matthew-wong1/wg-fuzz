struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u);

var<private> global1: Struct_1 = Struct_1(0u);

var<private> global2: array<vec4<u32>, 31>;

var<private> global3: array<vec3<bool>, 24> = array<vec3<bool>, 24>(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    global1 = Struct_1(1u);
    let var_0 = Struct_1(62135u);
    let var_1 = u_input.e;
    global2 = array<vec4<u32>, 31>();
    global3 = array<vec3<bool>, 24>();
    return var_0;
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = true;
    let var_1 = Struct_1(28078u);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(976f, 1656f, true)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1164f - -570f), _wgslsmith_f_op_f32(433f + -454f), false)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1443f - -2372f), 2257f)))));
    let var_3 = func_1(!vec2<bool>(!(u_input.b.x >= u_input.b.x), var_0));
    let var_4 = vec4<i32>(reverseBits(u_input.b.x) ^ (i32(-1i) * -reverseBits(u_input.b.x)), _wgslsmith_div_i32(u_input.b.x, 2147483647i) & 1i, _wgslsmith_sub_i32(u_input.b.x, -(~(~2147483647i))), -((1i << (_wgslsmith_div_u32(arg_0.a, 4294967295u) % 32u)) << (4294967295u % 32u)));
    return -822f;
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: vec4<bool>, arg_3: f32) -> bool {
    var var_0 = min(-56883i, -25566i);
    var var_1 = func_1(arg_0.yx);
    global2 = array<vec4<u32>, 31>();
    global3 = array<vec3<bool>, 24>();
    var var_2 = !arg_2.x;
    return ~var_1.a != (select(_wgslsmith_mod_u32(global1.a, reverseBits(7227u)), 16733u, !arg_1) & ~var_1.a);
}

fn func_2() -> StorageBuffer {
    var var_0 = func_4(select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true)), vec4<bool>(false, true, false, true), !select(true, false, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1078f)) * 1000f) <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1037f + 306f) - -906f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(u_input.e.x)))))), !select(vec4<bool>(all(vec2<bool>(true, false)), true, true, true), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, all(vec4<bool>(true, true, false, false)), true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -432f))))));
    var var_1 = -999f;
    global1 = func_1(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(false, false, true, false))), vec2<bool>(select(true, true, true), true), !(!any(vec4<bool>(false, false, true, false)))));
    global1 = Struct_1(global0.a ^ 5778u);
    global1 = func_1(!select(vec2<bool>(false, select(false, true, false)), vec2<bool>(false, false), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(false, false), true)));
    return StorageBuffer(vec2<i32>(-42684i, -(~17844i) >> (max(~u_input.c.x, u_input.a) % 32u)), 76030u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<u32>, 31>();
    let var_0 = func_1(vec2<bool>(true, !(_wgslsmith_dot_vec2_u32(u_input.e.ww, vec2<u32>(12105u, 7290u)) < global1.a)));
    let x = u_input.a;
    s_output = func_2();
}

