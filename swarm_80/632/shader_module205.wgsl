struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: bool) -> vec2<bool> {
    var var_0 = Struct_1(~u_input.e.x ^ _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(u_input.b, 0u), u_input.e.x), vec2<u32>(u_input.e.x, u_input.e.x) << (~u_input.e % vec2<u32>(32u))), abs(80499u));
    return select(!(!select(select(vec2<bool>(arg_0, true), vec2<bool>(true, arg_0), vec2<bool>(true, arg_0)), vec2<bool>(arg_0, arg_0), !vec2<bool>(arg_0, arg_0))), vec2<bool>(false, arg_0), true);
}

fn func_3() -> i32 {
    var var_0 = vec3<i32>(0i, -1i, _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.a.x, -u_input.c) & ~29312i, 10706i));
    let var_1 = u_input.b;
    var_0 = u_input.d;
    var var_2 = select(any(!(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false)))), true | all(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true))), true);
    return u_input.c << (~0u % 32u);
}

fn func_1() -> Struct_3 {
    let var_0 = !(!select(!select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true), all(func_2(true))));
    var var_1 = Struct_4(any(vec3<bool>(false, !any(vec4<bool>(var_0.x, false, var_0.x, var_0.x)), true)), _wgslsmith_f_op_f32(f32(-1f) * -1755f), vec3<i32>(func_3(), u_input.a.x, -u_input.a.x));
    let var_2 = -max(vec2<i32>(u_input.a.x, var_1.c.x), var_1.c.zy | vec2<i32>(-u_input.a.x, 22046i));
    let var_3 = u_input.e.x;
    var_1 = Struct_4(any(vec4<bool>(false, _wgslsmith_f_op_f32(-var_1.b) < -261f, true, var_1.a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(trunc(218f)))), (vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.c.x, u_input.a.x, var_1.c.x), u_input.d, vec3<i32>(0i, var_2.x, var_2.x))) & -(min(vec3<i32>(var_2.x, var_2.x, 1i), u_input.a) & _wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(u_input.c, 46246i, var_2.x))));
    return Struct_3(select(!(!(!vec4<bool>(false, var_1.a, var_0.x, var_0.x))), vec4<bool>(var_0.x, (u_input.e.x & var_3) >= (33084u >> (u_input.e.x % 32u)), var_0.x, true), var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_1(10491u, abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 31768u), u_input.e)) >> (1u % 32u));
    var var_2 = -min(8386i, firstTrailingBit(-func_3()));
    var var_3 = func_1();
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1f)) + -1404f);
    var var_5 = vec4<bool>(false, true, true && !var_3.a.x, true);
    var_2 = ~_wgslsmith_sub_i32(-54168i, u_input.c);
    var var_6 = Struct_1(19746u, 63937u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4, var_4) * -613f)))), min(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.e.x, var_6.b) << (vec2<u32>(13299u, var_6.b) % vec2<u32>(32u)), vec2<u32>(var_1.a, 72782u)), reverseBits(vec2<u32>(107764u, 0u))));
}

