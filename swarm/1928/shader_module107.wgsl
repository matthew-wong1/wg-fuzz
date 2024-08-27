struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global0 = Struct_1(arg_3.a, ~(~global0.b) >> (0u % 32u), arg_3.c, !(!global0.d));
    let var_0 = arg_1.x;
    let var_1 = arg_3;
    global0 = Struct_1(true, u_input.a.x, ~abs(u_input.c), arg_3.d);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(1813f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(529f, 2222f)), _wgslsmith_f_op_f32(f32(-1f) * -1847f))))));
    return select(4294967295u, 4294967295u, true);
}

fn func_2() -> vec3<u32> {
    global0 = Struct_1(global0.a, abs(((global0.b >> (4294967295u % 32u)) >> (_wgslsmith_mod_u32(1u, u_input.c) % 32u)) << (func_3(Struct_1(false, 1u, global0.b, global0.d), -vec3<i32>(-13677i, 22040i, 2147483647i), Struct_1(global0.d.x, 0u, 31870u, global0.d), Struct_1(true, global0.b, 1u, global0.d)) % 32u)), 0u, !global0.d);
    var var_0 = vec4<bool>(any(select(vec3<bool>(true, true, true), !(!vec3<bool>(global0.a, global0.d.x, true)), true)), select(global0.d.x, global0.a, true), true, false && all(!(!vec4<bool>(global0.d.x, global0.a, false, global0.d.x))));
    let var_1 = -min(-min(_wgslsmith_mult_i32(0i, 2147483647i), _wgslsmith_mult_i32(-29306i, 35715i)), ~abs(-35520i << (global0.b % 32u)));
    let var_2 = -select(vec3<i32>(-2147483647i, firstLeadingBit(0i), var_1), _wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(1091i, -16375i, 2147483647i)), vec3<i32>(var_1, -2147483647i, 41631i) ^ ~vec3<i32>(69033i, var_1, var_1)), vec3<bool>(var_0.x, all(select(vec4<bool>(false, var_0.x, global0.a, false), vec4<bool>(var_0.x, var_0.x, var_0.x, true), true)), all(!vec4<bool>(var_0.x, true, var_0.x, var_0.x))));
    var var_3 = _wgslsmith_sub_vec4_i32((~(vec4<i32>(1i, var_2.x, var_1, 2147483647i) ^ vec4<i32>(var_2.x, 2147483647i, 6979i, 43516i)) << (vec4<u32>(max(u_input.b.x, u_input.b.x), ~1u, global0.c, global0.b) % vec4<u32>(32u))) & _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(2147483647i, var_1, 0i, 47139i), vec4<i32>(2147483647i, var_2.x, 49809i, 1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(6756i, var_2.x, var_2.x, -47874i), vec4<i32>(-23665i, var_1, var_2.x, var_1) & vec4<i32>(var_2.x, 0i, var_2.x, var_2.x))), vec4<i32>(0i, -max(8263i | var_2.x, ~var_1), ~(_wgslsmith_mod_i32(1i, var_2.x) | _wgslsmith_sub_i32(-4272i, -55411i)), min(_wgslsmith_mult_i32(1i, var_2.x >> (global0.b % 32u)), _wgslsmith_mult_i32(~var_2.x, var_1))));
    return vec3<u32>(58237u, ~min(~(~global0.b), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), global0.c, ~43998u)), ~(~_wgslsmith_dot_vec3_u32(u_input.a.wxy, _wgslsmith_clamp_vec3_u32(u_input.a.wzw, vec3<u32>(global0.b, u_input.b.x, 1u), vec3<u32>(global0.b, 43435u, 53812u)))));
}

fn func_4(arg_0: u32, arg_1: vec3<f32>, arg_2: vec3<u32>) -> Struct_1 {
    return Struct_1(false, 25684u, arg_2.x, vec2<bool>(true, true));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = func_4(0u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(380f, 1341f, 1310f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-496f, 135f, -1068f))))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(236f, 924f, arg_2.a)), _wgslsmith_f_op_f32(274f + -747f), _wgslsmith_f_op_f32(min(1219f, 1066f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-578f, 237f, 2443f)))), func_2());
    var var_1 = Struct_1(any(select(select(!vec3<bool>(true, var_0.d.x, false), select(vec3<bool>(true, global0.a, global0.d.x), vec3<bool>(true, arg_1.d.x, arg_2.d.x), false), var_0.d.x), !vec3<bool>(true, var_0.d.x, false), all(vec2<bool>(true, true)))), 14248u, 63576u, vec2<bool>(arg_2.d.x, true));
    var var_2 = true;
    let var_3 = Struct_1(select(!(!arg_2.a) && false, !any(vec2<bool>(false, false)), true), ~(~var_0.c), _wgslsmith_mult_u32(1u, u_input.a.x), global0.d);
    var var_4 = vec4<bool>(true, true, false && !any(select(vec3<bool>(arg_1.a, false, false), vec3<bool>(false, true, var_3.a), vec3<bool>(global0.a, true, true))), var_1.a);
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mod_vec3_i32(select(~vec3<i32>(58759i, 1i, 14917i), vec3<i32>(1i, 1i, 1i), vec3<bool>(global0.a, false, false)), firstTrailingBit(-vec3<i32>(-23921i, -2147483647i, 1374i))) >> (_wgslsmith_div_vec3_u32(select(vec3<u32>(func_1(vec3<u32>(24901u, u_input.b.x, global0.c), Struct_1(global0.d.x, 1u, global0.c, vec2<bool>(global0.d.x, global0.d.x)), Struct_1(global0.d.x, global0.b, 4294967295u, vec2<bool>(true, global0.d.x))), _wgslsmith_add_u32(global0.c, global0.c), 1u), abs(~vec3<u32>(u_input.b.x, 83760u, global0.c)), vec3<bool>(false, any(vec4<bool>(true, global0.d.x, global0.a, global0.a)), true)), vec3<u32>(~(~1u), ~global0.b, max(func_1(u_input.a.yzx, Struct_1(true, 102399u, 32670u, vec2<bool>(global0.d.x, global0.a)), Struct_1(false, 32276u, 1u, vec2<bool>(global0.d.x, false))), 1u))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(64627u, 701f, 32272u, ~(~_wgslsmith_sub_u32(4294967295u, global0.b)));
}

