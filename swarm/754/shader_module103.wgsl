struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    return countOneBits(reverseBits(max(_wgslsmith_clamp_u32(~u_input.b, abs(u_input.b), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c.x), u_input.c)), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(22924u, 27u)], 0u))));
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    global0 = array<u32, 27>();
    let var_0 = vec2<u32>(~(~(_wgslsmith_div_u32(u_input.d, u_input.d) ^ global0[_wgslsmith_index_u32(func_3(), 27u)])), _wgslsmith_clamp_u32(abs(0u), ~(u_input.b | 0u), abs(u_input.d >> (u_input.c.x % 32u))) & 1u);
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-699f, arg_0.a, arg_0.a))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.a, arg_0.a, 508f), vec3<f32>(-1186f, 913f, arg_0.a), vec3<bool>(true, true, false)))))))));
    let var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-416f - 714f));
    return var_2;
}

fn func_1(arg_0: f32) -> vec4<bool> {
    var var_0 = func_2(Struct_2(_wgslsmith_f_op_f32(floor(145f))));
    return vec4<bool>(all(select(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), false), true), vec2<bool>(true, true), vec2<bool>(true, false))), true, true, !any(vec3<bool>(true, true, true)) == all(vec2<bool>(false, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 27>();
    var var_0 = u_input.c;
    var var_1 = select(!(!select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true)), true)), select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), false)), vec4<bool>(true, true, true, true), func_1(1f)), select(func_1(func_2(Struct_2(282f)).a), vec4<bool>(true, true, true, true), select(select(false, false, false), true, all(vec4<bool>(true, false, false, true)))), !func_1(_wgslsmith_f_op_f32(959f - 1978f))), !all(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), func_1(665f).x)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(885f * _wgslsmith_div_f32(1044f, _wgslsmith_f_op_f32(f32(-1f) * -431f))) + 506f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(Struct_2(-877f)).a)))));
    var var_3 = !(!(!any(vec2<bool>(true, true)))) || (!all(!vec3<bool>(false, true, var_1.x)) || true);
    var_3 = !var_1.x;
    var var_4 = var_1.x;
    var_1 = select(vec4<bool>(true, false, true, !var_1.x || true), vec4<bool>(any(select(select(vec4<bool>(false, true, true, var_1.x), vec4<bool>(false, false, false, false), var_1.x), !vec4<bool>(true, var_1.x, false, true), !var_1.x)), !select(!var_1.x, var_1.x || var_1.x, 58489u < u_input.b), func_1(_wgslsmith_f_op_f32(var_2 + 366f)).x && var_1.x, var_1.x | (!var_1.x | (var_2 >= var_2))), var_1.x);
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(0i, 0u, vec4<u32>(7439u, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], ~reverseBits(u_input.c.x)), ~min(_wgslsmith_dot_vec4_u32(vec4<u32>(34230u, u_input.d, u_input.b, 23044u), vec4<u32>(global0[_wgslsmith_index_u32(u_input.b, 27u)], 1u, 1u, global0[_wgslsmith_index_u32(var_0.x, 27u)])), 62768u), abs(var_0.x) << (~4294967295u % 32u)));
}

