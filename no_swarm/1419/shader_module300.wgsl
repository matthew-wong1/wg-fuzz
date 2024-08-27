struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<i32>) -> vec3<u32> {
    return min(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.a) << (vec3<u32>(u_input.a, u_input.a, 1272u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(~(~vec3<u32>(6217u, u_input.a, 1u)), reverseBits(vec3<u32>(u_input.a, u_input.a, u_input.a) << (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))))), ~vec3<u32>(u_input.a, 4294967295u, firstTrailingBit(_wgslsmith_mult_u32(u_input.a, 1u))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    let var_0 = arg_2.a;
    let var_1 = select(select(!vec4<bool>(true, arg_2.a, any(vec2<bool>(false, arg_1.a)), any(vec3<bool>(false, arg_2.c, false))), !(!vec4<bool>(arg_0.c, false, arg_1.a, arg_2.c)), false), vec4<bool>(arg_2.a, arg_1.c, all(select(!vec4<bool>(var_0, arg_2.c, arg_0.a, false), !vec4<bool>(false, var_0, arg_0.a, true), any(vec3<bool>(var_0, true, var_0)))), !(max(arg_0.e.x, arg_1.b) < 12565i)), !select(select(select(vec4<bool>(true, true, arg_2.c, false), vec4<bool>(arg_2.c, arg_0.a, true, var_0), arg_1.c), !vec4<bool>(arg_0.a, var_0, arg_1.a, var_0), select(vec4<bool>(false, true, arg_1.a, true), vec4<bool>(true, true, true, arg_2.c), true)), select(select(vec4<bool>(false, true, false, true), vec4<bool>(arg_1.a, arg_0.c, true, true), vec4<bool>(false, arg_0.a, var_0, arg_1.a)), vec4<bool>(false, arg_0.c, arg_0.a, arg_0.a), any(vec2<bool>(true, arg_1.a))), true | arg_1.c));
    return !var_0;
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = select(select((func_2(vec2<f32>(-518f, -1532f), vec4<i32>(arg_0.b, -1i, 2147483647i, 17976i)) | _wgslsmith_mult_vec3_u32(arg_0.d, arg_0.d)) & vec3<u32>(arg_0.d.x, u_input.a, _wgslsmith_dot_vec3_u32(arg_0.d, arg_0.d)), vec3<u32>(u_input.a, 0u, arg_0.d.x), any(select(vec2<bool>(true, arg_0.a), vec2<bool>(arg_0.a, arg_0.a), true)) & true), arg_0.d, !vec3<bool>(func_3(arg_0, Struct_1(true, arg_0.e.x, false, vec3<u32>(u_input.a, 0u, arg_0.d.x), arg_0.e), arg_0), arg_0.a, true | arg_0.a));
    var var_1 = arg_0;
    var var_2 = arg_0.e.zwy;
    var var_3 = _wgslsmith_dot_vec4_i32(arg_0.e, -var_1.e);
    var var_4 = arg_0;
    return var_1.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -max(vec3<i32>((i32(-1i) * -1947i) << (_wgslsmith_mult_u32(4294967295u, u_input.a) % 32u), 0i, ~0i), -_wgslsmith_sub_vec3_i32(~vec3<i32>(36680i, -55687i, 0i), max(vec3<i32>(-2147483647i, -29651i, 1i), vec3<i32>(-2138i, -52347i, 3460i))));
    var_0 = vec3<i32>(0i, ~(-64028i) << (func_1(Struct_1(false, 2147483647i, true, abs(vec3<u32>(u_input.a, 0u, 1u)), vec4<i32>(-48474i, var_0.x, -2147483647i, var_0.x))) % 32u), var_0.x);
    var_0 = vec3<i32>(var_0.x, _wgslsmith_add_i32(-var_0.x, -2147483647i), 1i);
    var var_1 = abs(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, ~0u, u_input.a), ~vec3<u32>(u_input.a, u_input.a, u_input.a)));
    let var_2 = select(select(vec4<bool>(!all(vec3<bool>(false, false, true)), any(vec2<bool>(true, true)), false, false), vec4<bool>(any(select(vec2<bool>(false, false), vec2<bool>(false, true), true)), !func_3(Struct_1(false, var_0.x, true, vec3<u32>(4294967295u, u_input.a, u_input.a), vec4<i32>(0i, var_0.x, var_0.x, -1i)), Struct_1(true, 2147483647i, true, vec3<u32>(70596u, u_input.a, var_1.x), vec4<i32>(-50512i, -2147483647i, var_0.x, -1i)), Struct_1(true, var_0.x, false, vec3<u32>(u_input.a, var_1.x, var_1.x), vec4<i32>(-1i, 0i, var_0.x, -19520i))), true, true), vec4<bool>(true, true, true, true)), !(!vec4<bool>(false, true, true, all(vec2<bool>(true, true)))), !select(vec4<bool>(true, false, false, true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), true)), -5032i == (var_0.x | var_0.x)));
    var_0 = ~max(vec3<i32>(var_0.x, var_0.x, min(46638i, 1i)), min(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-5259i, var_0.x, -2470i), vec3<i32>(var_0.x, var_0.x, 1i)), var_0.x | var_0.x, var_0.x >> (11402u % 32u)), -_wgslsmith_mod_vec3_i32(vec3<i32>(-24303i, -1i, 27255i), vec3<i32>(2147483647i, var_0.x, 1i))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_i32(20764i, var_0.x | var_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, -33144i), vec2<i32>(1i, var_0.x))) << (~22718u % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-790f - -1723f))))), -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(~(-var_0.x), 0i, var_0.x), -(~(-vec3<i32>(-475i, var_0.x, var_0.x)))));
}

