struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: vec4<bool>) -> f32 {
    let var_0 = vec2<u32>(~select(0u, select(u_input.d, 1u, false), (u_input.b.x & u_input.c) <= u_input.e.x), ~abs(~60929u));
    let var_1 = var_0;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.a * 818f)), !select(arg_0.a.b, select(!vec2<bool>(arg_0.b, false), select(vec2<bool>(arg_0.b, false), vec2<bool>(true, false), arg_1.yz), vec2<bool>(true, false)), select(arg_0.b, 42789u >= var_0.x, false)), _wgslsmith_f_op_f32(arg_0.a.c * -322f));
    return var_2.c;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_1) -> bool {
    let var_0 = arg_0;
    var var_1 = !select(select(vec4<bool>(arg_0.c >= 751f, !arg_0.b.b.x, !arg_2.b.x, false), !select(vec4<bool>(arg_0.b.b.x, true, false, arg_2.b.x), vec4<bool>(true, var_0.b.b.x, arg_2.b.x, arg_2.b.x), vec4<bool>(true, arg_2.b.x, true, false)), select(!vec4<bool>(false, arg_0.b.b.x, arg_2.b.x, true), vec4<bool>(true, true, false, true), arg_2.a == arg_2.c)), select(vec4<bool>(true, any(vec2<bool>(arg_0.b.b.x, arg_2.b.x)), true, any(arg_2.b)), select(!vec4<bool>(false, arg_2.b.x, false, var_0.b.b.x), !vec4<bool>(true, true, arg_0.b.b.x, true), var_0.b.b.x), vec4<bool>(false, !arg_2.b.x, any(vec2<bool>(true, var_0.b.b.x)), all(vec4<bool>(var_0.b.b.x, arg_2.b.x, true, var_0.b.b.x)))), vec4<bool>(false, !(arg_0.b.b.x & true), true, true));
    var var_2 = var_0;
    var var_3 = -422f;
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(var_0.b, true), var_1.yzx, vec4<bool>(arg_0.b.b.x, false, var_2.b.b.x, true))))) * arg_0.b.a));
    return var_1.x;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: u32) -> Struct_1 {
    let var_0 = vec2<bool>(!any(vec4<bool>(true, any(vec3<bool>(false, true, false)), false, false)), !(!func_2(Struct_2(arg_2, Struct_1(-1042f, vec2<bool>(false, false), -336f), arg_0.x), u_input.b, Struct_1(arg_0.x, vec2<bool>(false, false), 1000f)) && false));
    let var_1 = arg_1.xy;
    let var_2 = 0u;
    let var_3 = var_2;
    let var_4 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), 1168f, all(select(!vec3<bool>(var_0.x, var_0.x, var_0.x), !vec3<bool>(var_0.x, var_0.x, false), any(vec2<bool>(var_0.x, true)))))), vec2<bool>(var_0.x || false, !var_0.x), arg_0.x);
    return Struct_1(var_4.a, !var_4.b, 1000f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(vec4<u32>(4294967295u, 83633u, ~(~_wgslsmith_add_u32(u_input.d, 50500u)), u_input.a), reverseBits(min(vec4<u32>(0u, _wgslsmith_clamp_u32(u_input.d, u_input.e.x, u_input.b.x), u_input.a, 4018u), vec4<u32>(u_input.b.x, u_input.e.x, u_input.c, 0u) & _wgslsmith_div_vec4_u32(vec4<u32>(9739u, u_input.c, u_input.c, u_input.b.x), vec4<u32>(u_input.c, 1u, 20567u, 67212u)))));
    var var_1 = Struct_3(func_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-226f * -881f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(478f + 884f))), -reverseBits(-vec3<i32>(31618i, 22178i, 2147483647i)), reverseBits(55209u)), true);
    var_1 = Struct_3(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1023f, -1054f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1542f, var_1.a.a)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-503f, 752f)))), vec3<i32>(_wgslsmith_add_i32(~21352i, -23094i), -2147483647i, countOneBits(~(-1163i))), ~firstLeadingBit(0u)), false);
    let var_2 = true;
    var var_3 = reverseBits(~u_input.a >> (~34481u % 32u));
    var_3 = u_input.a >> (_wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, var_0.x), var_0.xx), var_0.yw)), vec2<u32>(u_input.b.x, ~u_input.b.x)) % 32u);
    var var_4 = Struct_3(var_1.a, true);
    let var_5 = var_4.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(i32(-1i) * -1i, -29302i), _wgslsmith_sub_vec2_i32(~vec2<i32>(0i, 4101i), vec2<i32>(-2147483647i, 0i))), vec2<i32>(-1i, 0i)));
}

