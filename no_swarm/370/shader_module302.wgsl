struct Struct_1 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>) -> vec4<bool> {
    return vec4<bool>(!(!(!all(vec4<bool>(true, arg_1.x, false, false)))), true, false, select(true, true, false));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: u32) -> vec3<bool> {
    var var_0 = Struct_1(1699f, ~(u_input.d ^ _wgslsmith_div_i32(abs(u_input.d), select(u_input.d, -44510i, false))));
    var_0 = Struct_1(-733f, ~var_0.b);
    var var_1 = -5623i;
    var_0 = Struct_1(var_0.a, reverseBits(i32(-1i) * -24381i));
    var_0 = Struct_1(var_0.a, 408i ^ max(2147483647i, -var_0.b >> ((314u << (arg_2 % 32u)) % 32u)));
    return !(!arg_1.wwy);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: u32, arg_3: vec2<bool>) -> vec4<u32> {
    let var_0 = -(i32(-1i) * -abs(49017i));
    var var_1 = !select(!select(vec3<bool>(arg_3.x, arg_3.x, false), vec3<bool>(arg_3.x, arg_3.x, false), vec3<bool>(arg_3.x, true, arg_3.x)), vec3<bool>(false, arg_3.x, any(arg_3)), func_3(!vec2<bool>(true, arg_3.x), func_2(Struct_1(-1612f, arg_1.b), select(vec3<bool>(arg_3.x, arg_3.x, true), vec3<bool>(false, false, arg_3.x), false)), arg_2));
    var_1 = vec3<bool>(true, any(vec2<bool>(var_1.x, true)), var_1.x);
    let var_2 = u_input.a;
    var var_3 = ~arg_0.yy;
    return select(~firstTrailingBit(vec4<u32>(53826u, 0u, 0u, arg_2)) << (~_wgslsmith_add_vec4_u32(vec4<u32>(var_2.x, arg_2, arg_2, u_input.b) | vec4<u32>(var_2.x, 11237u, 4294967295u, u_input.b), ~vec4<u32>(27286u, var_2.x, var_2.x, 4294967295u)) % vec4<u32>(32u)), ~min(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(12171u, 4294967295u, 4114u, u_input.a.x), vec4<u32>(var_2.x, u_input.a.x, 11850u, arg_2)), vec4<u32>(var_2.x, 93776u, 77282u, u_input.a.x), ~vec4<u32>(arg_2, 0u, var_2.x, var_2.x)), ~vec4<u32>(u_input.c.x, 1u, arg_2, 4294967295u) ^ ~vec4<u32>(arg_2, 1u, 1u, 0u)), select(vec4<bool>(true, true, true, true), select(select(select(vec4<bool>(var_1.x, true, true, true), vec4<bool>(var_1.x, false, arg_3.x, false), vec4<bool>(false, false, false, arg_3.x)), !vec4<bool>(false, true, true, arg_3.x), vec4<bool>(false, arg_3.x, false, false)), !vec4<bool>(false, false, arg_3.x, false), all(vec3<bool>(var_1.x, false, var_1.x))), _wgslsmith_add_i32(arg_1.b, reverseBits(u_input.d)) == -abs(arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1264f, 1667f, true)), _wgslsmith_f_op_f32(max(1605f, 419f))))))), u_input.d);
    var var_1 = vec2<bool>(!(!any(vec4<bool>(true, true, true, true))), true);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-144f, var_0.a))));
    var var_3 = func_1(~abs((vec4<i32>(0i, 2147483647i, 1i, var_0.b) << (vec4<u32>(24682u, 4294967295u, u_input.c.x, u_input.c.x) % vec4<u32>(32u))) ^ countOneBits(vec4<i32>(2147483647i, u_input.d, var_0.b, u_input.d))), Struct_1(var_0.a, countOneBits(u_input.d & ~2147483647i)), u_input.a.x, !vec2<bool>(false, all(vec2<bool>(false, true)) & true));
    let var_4 = _wgslsmith_f_op_f32(-var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(vec2<i32>(~(~u_input.d), var_0.b), vec2<i32>(u_input.d, u_input.d) ^ countOneBits(vec2<i32>(u_input.d, -1i))), ~vec3<u32>(~(~var_3.x), ~u_input.a.x | firstTrailingBit(var_3.x), 74044u | (var_3.x | 23285u)));
}

