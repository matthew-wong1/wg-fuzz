struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_1) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(-1721f + arg_0.b);
    var_0 = arg_0.a;
    var var_1 = false;
    return vec2<i32>(u_input.a, arg_0.d);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: i32) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-323f)));
}

fn func_1(arg_0: f32, arg_1: vec4<u32>) -> vec2<bool> {
    var var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(func_2(Struct_1(-2979f, arg_0, false, -26885i, u_input.b)), countOneBits(-vec2<i32>(-2147483647i, u_input.a))), vec2<i32>(-7681i, abs(select(u_input.a, u_input.a, false)))) >> (arg_1.x % 32u);
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0, arg_0)) - _wgslsmith_f_op_f32(f32(-1f) * -1790f)))), arg_0, u_input.b != arg_1.x, ~(-(~u_input.a)), arg_1.x), 1327f);
    var var_2 = select(select(vec2<bool>(-1128f >= _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(arg_0, -629f, var_1.a.c, 18771i, 1u), -1000f), vec4<f32>(arg_0, arg_0, 955f, arg_0), 2147483647i)), !(!var_1.a.c)), vec2<bool>(true, true), any(vec4<bool>(false, var_1.a.a <= -604f, false, true))), select(vec2<bool>(!(!var_1.a.c), var_1.a.c), select(vec2<bool>(true, false), select(select(vec2<bool>(true, true), vec2<bool>(var_1.a.c, true), vec2<bool>(var_1.a.c, var_1.a.c)), vec2<bool>(var_1.a.c, var_1.a.c), true), false), countOneBits(u_input.a) <= var_1.a.d), !select(vec2<bool>(all(vec2<bool>(var_1.a.c, var_1.a.c)), true), select(vec2<bool>(var_1.a.c, false), vec2<bool>(var_1.a.c, var_1.a.c), vec2<bool>(var_1.a.c, var_1.a.c)), vec2<bool>(true, any(vec4<bool>(true, var_1.a.c, var_1.a.c, false)))));
    let var_3 = !(!(!select(select(vec4<bool>(false, var_1.a.c, var_1.a.c, true), vec4<bool>(var_1.a.c, var_2.x, var_2.x, var_2.x), false), vec4<bool>(false, false, var_1.a.c, false), var_1.a.c)));
    var var_4 = arg_1.zwy;
    return var_3.yw;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(any(select(vec2<bool>(0u > u_input.b, true), vec2<bool>(false, u_input.b == u_input.b), true)), all(select(vec2<bool>(true, any(vec4<bool>(true, false, true, false))), func_1(_wgslsmith_f_op_f32(-1109f * 859f), vec4<u32>(u_input.b, 37017u, 47150u, u_input.b)), !any(vec3<bool>(true, false, false)))), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(360f * _wgslsmith_f_op_f32(max(520f, 701f)))), _wgslsmith_mod_vec4_u32(~select(vec4<u32>(1u, 4294967295u, 36794u, 4294967295u), vec4<u32>(u_input.b, 2654u, u_input.b, u_input.b), vec4<bool>(true, true, true, true)), ~vec4<u32>(73408u, 26599u, u_input.b, 0u) >> (vec4<u32>(17580u, u_input.b, 4294967295u, 9302u) % vec4<u32>(32u)))).x, false);
    var_0 = !(!select(!(!vec4<bool>(true, var_0.x, false, var_0.x)), !vec4<bool>(true, true, var_0.x, var_0.x), true));
    var_0 = !select(vec4<bool>(false, func_1(-659f, vec4<u32>(u_input.b, 0u, u_input.b, 4294967295u)).x, true, !var_0.x), select(!vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(u_input.b <= 23950u, select(true, var_0.x, true), !var_0.x, var_0.x), var_0.x), var_0.x);
    var_0 = !select(vec4<bool>(true, var_0.x, all(vec2<bool>(true, var_0.x)), var_0.x), !vec4<bool>(!var_0.x, all(var_0.xww), true, var_0.x), var_0.x);
    var_0 = select(select(vec4<bool>(!any(var_0.zx), any(!var_0.xx), all(!vec2<bool>(var_0.x, var_0.x)), true), select(select(!vec4<bool>(var_0.x, var_0.x, var_0.x, false), !vec4<bool>(var_0.x, var_0.x, var_0.x, true), var_0.x), select(vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(false, var_0.x, var_0.x, var_0.x), select(vec4<bool>(false, var_0.x, false, true), vec4<bool>(var_0.x, var_0.x, var_0.x, true), true)), vec4<bool>(var_0.x, true, true == var_0.x, true)), !(~5053i > _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 0i, 1i), vec4<i32>(u_input.a, u_input.a, u_input.a, -47312i)))), !(!(!vec4<bool>(var_0.x, true, false, false))), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_div_u32(abs(4294967295u), u_input.b)), min(abs(~u_input.b), _wgslsmith_div_u32(select(u_input.b, u_input.b, var_0.x), _wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b)))), ~firstLeadingBit(~u_input.b));
}

