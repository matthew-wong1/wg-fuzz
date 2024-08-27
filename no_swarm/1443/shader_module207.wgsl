struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: i32) -> Struct_2 {
    let var_0 = Struct_3((_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(arg_1.ww, arg_1.wy), ~0u) << (4294967295u % 32u)) > 40551u);
    let var_1 = Struct_3(!(!((1u >= u_input.c) && var_0.a)));
    let var_2 = firstTrailingBit(~arg_1.xw);
    var var_3 = var_0;
    var var_4 = select(countOneBits(abs(vec2<i32>(1i, _wgslsmith_sub_i32(u_input.a.x, 0i)))), vec2<i32>(u_input.a.x, ~firstLeadingBit(1i)), !var_3.a);
    return Struct_2(_wgslsmith_f_op_f32(ceil(arg_0)), (4294967295u | _wgslsmith_dot_vec2_u32(min(arg_1.zy, var_2), var_2)) < max(var_2.x, select(_wgslsmith_dot_vec4_u32(arg_1, arg_1), max(44617u, var_2.x), 7386i <= arg_2)), Struct_1(arg_0));
}

fn func_3(arg_0: Struct_2) -> Struct_1 {
    var var_0 = -1400f;
    let var_1 = vec3<f32>(_wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.a))), 1133f);
    var_0 = _wgslsmith_f_op_f32(-243f + arg_0.a);
    var var_2 = func_2(var_1.x, vec4<u32>(~(~_wgslsmith_sub_u32(u_input.c, 15850u)), ~(~22021u), u_input.c, _wgslsmith_sub_u32(60147u, ~u_input.c)), _wgslsmith_sub_i32(-2147483647i, _wgslsmith_div_i32(2147483647i, reverseBits(-u_input.a.x)))).c;
    let var_3 = Struct_2(-907f, any(select(select(select(vec2<bool>(arg_0.b, false), vec2<bool>(false, false), false), vec2<bool>(arg_0.b, false), !vec2<bool>(arg_0.b, arg_0.b)), select(vec2<bool>(arg_0.b, arg_0.b), !vec2<bool>(true, arg_0.b), !vec2<bool>(arg_0.b, arg_0.b)), arg_0.b)), arg_0.c);
    return arg_0.c;
}

fn func_1() -> f32 {
    let var_0 = Struct_3(true);
    let var_1 = 501f;
    let var_2 = ~(vec2<u32>(70974u, u_input.c) & select(~vec2<u32>(u_input.c, 32104u), vec2<u32>(0u, 86850u), vec2<bool>(var_0.a, var_0.a))) ^ abs(vec2<u32>(~_wgslsmith_clamp_u32(u_input.c, u_input.c, 0u), ~4294967295u));
    var var_3 = var_1;
    let var_4 = func_3(func_2(var_1, ~(~vec4<u32>(1u, u_input.c, 18016u, 1u)), _wgslsmith_mod_i32(u_input.b.x, u_input.a.x)));
    return var_4.a;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: vec2<bool>, arg_3: Struct_1) -> StorageBuffer {
    var var_0 = Struct_3(true);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -342f)))));
    let var_2 = u_input.c;
    var_0 = Struct_3(!all(vec3<bool>(true, true, true)));
    var_0 = Struct_3(any(!arg_2));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a, -1066f, var_1.a, arg_0))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, 1845f, 1904f, arg_3.a) * vec4<f32>(arg_0, 621f, 156f, -1000f)))))), abs(firstLeadingBit(countOneBits(u_input.a.yx)) >> (vec2<u32>(~103293u, 0u) % vec2<u32>(32u))), vec2<u32>(20669u, u_input.c), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~u_input.c);
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), select(select(true, false, true), false, any(vec2<bool>(false, true)))))), true, vec2<bool>(true, true), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(f32(-1f) * -503f), any(vec3<bool>(false, true, true)))), 723f))));
}

