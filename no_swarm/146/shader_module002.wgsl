struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: vec2<u32>,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: f32) -> vec3<u32> {
    var var_0 = Struct_2(-148f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, arg_2)) * arg_2), arg_1.a.x, Struct_1(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), vec3<bool>(all(vec4<bool>(false, true, true, false)), false, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true))), max(u_input.a.x, _wgslsmith_div_u32(4294967295u, 67027u) >> (firstTrailingBit(u_input.a.x) % 32u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2, 745f)))))), Struct_1(vec3<bool>(false, !(u_input.b.x > u_input.b.x), _wgslsmith_mult_u32(24025u, 8668u) != u_input.a.x), 4294967295u, _wgslsmith_f_op_f32(-arg_2)));
    var_0 = Struct_2(var_0.d.a.x != (reverseBits(var_0.c.b & u_input.a.x) <= 71749u), -1i, var_0.c, Struct_1(vec3<bool>(true, var_0.b < arg_1.a.x, var_0.a), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.b, u_input.a.x, 1u, 4294967295u) & vec4<u32>(var_0.c.b, 0u, u_input.a.x, u_input.a.x), vec4<u32>(7354u, u_input.a.x, var_0.c.b, var_0.c.b)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(426f * 911f), _wgslsmith_f_op_f32(-283f - var_0.c.c), any(var_0.d.a))), _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(1051f * var_0.c.c))))));
    var var_1 = Struct_1(select(var_0.c.a, var_0.d.a, var_0.a), u_input.a.x, arg_2);
    var_1 = var_0.c;
    let var_2 = Struct_4(firstTrailingBit(~vec4<u32>(countOneBits(33341u), u_input.a.x, var_1.b, 1u)), _wgslsmith_dot_vec4_u32(select(max(~vec4<u32>(0u, 0u, 45347u, 1u), reverseBits(vec4<u32>(var_0.d.b, var_0.c.b, u_input.a.x, 0u))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.c.b, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(26292u, var_0.d.b, 17171u, var_0.d.b)), vec4<bool>(true, var_0.c.a.x, true, var_0.a)), ~(~vec4<u32>(var_1.b, var_0.d.b, 4294967295u, var_0.c.b) << (vec4<u32>(8082u, 28363u, u_input.a.x, var_1.b) % vec4<u32>(32u)))));
    return var_2.a.wxz;
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = ~arg_0.x;
    let var_1 = Struct_1(select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true), any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), false))), vec3<bool>(true, true, any(vec3<bool>(true, true, true))), true), _wgslsmith_dot_vec3_u32(func_3(reverseBits(vec3<i32>(arg_0.x, arg_0.x, -61706i)), Struct_3(vec3<i32>(0i, u_input.b.x, -2147483647i)), -1000f), vec3<u32>(_wgslsmith_add_u32(11975u, ~u_input.a.x), u_input.a.x, (u_input.a.x ^ u_input.a.x) | u_input.a.x)), 267f);
    var var_2 = 34497i;
    var_2 = 0i;
    var var_3 = ~_wgslsmith_div_vec4_u32(~vec4<u32>(1856u, u_input.a.x, u_input.a.x, 10529u), ~reverseBits(vec4<u32>(var_1.b, 26919u, var_1.b, var_1.b))) << (abs(vec4<u32>(var_1.b, ~(~1u), var_1.b, reverseBits(1u))) % vec4<u32>(32u));
    return var_1;
}

fn func_1() -> Struct_1 {
    var var_0 = max(u_input.a.x, ~(~44877u));
    var_0 = u_input.a.x;
    var_0 = abs(~(~((u_input.a.x ^ 47867u) | ~1u)));
    var var_1 = ~vec4<i32>(u_input.b.x, u_input.b.x, ~_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.b.x, u_input.b.x, 8091i, u_input.b.x)), vec4<i32>(2147483647i, 32445i, 24150i, u_input.b.x)), abs(~(~u_input.b.x)));
    var var_2 = ~vec4<u32>(u_input.a.x, u_input.a.x, 26427u, ~1u);
    return func_2(var_1.zyz);
}

fn func_4(arg_0: Struct_1) -> f32 {
    let var_0 = ~vec2<u32>(_wgslsmith_mod_u32(~func_2(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)).b, _wgslsmith_mult_u32(1u, func_3(vec3<i32>(u_input.b.x, -1i, u_input.b.x), Struct_3(u_input.b), arg_0.c).x)), u_input.a.x);
    var var_1 = Struct_3(-abs(vec3<i32>(abs(u_input.b.x), ~u_input.b.x, -1i)));
    var var_2 = select(!(!(!(!arg_0.a))), arg_0.a, true);
    let var_3 = min(-firstTrailingBit(-_wgslsmith_clamp_vec3_i32(var_1.a, vec3<i32>(u_input.b.x, u_input.b.x, var_1.a.x), vec3<i32>(1i, 2147483647i, u_input.b.x))), vec3<i32>(firstTrailingBit(var_1.a.x), -1i, ~firstTrailingBit(28894i) & (i32(-1i) * -2147483647i)));
    let var_4 = ~_wgslsmith_mult_u32(arg_0.b, func_3(var_3, Struct_3(u_input.b), _wgslsmith_f_op_f32(arg_0.c - arg_0.c)).x) >> (~(~u_input.a.x) % 32u);
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-430f * 569f), _wgslsmith_f_op_f32(select(1349f, 180f, true)))))), 737f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -410f), -1330f)), _wgslsmith_f_op_f32(func_4(func_1())));
    var var_2 = -abs(-_wgslsmith_div_vec2_i32(u_input.b.xx, vec2<i32>(15095i, u_input.b.x)));
    var_0 = var_2.x;
    var var_3 = vec2<bool>(true, true);
    var_3 = select(select(!vec2<bool>(all(vec3<bool>(var_3.x, true, var_3.x)), any(vec3<bool>(true, false, var_3.x))), vec2<bool>(var_3.x || all(vec3<bool>(var_3.x, true, true)), func_1().a.x), _wgslsmith_f_op_f32(func_4(func_2(vec3<i32>(28959i, 2147483647i, -35121i)))) <= -414f), !vec2<bool>(!(var_2.x > -2147483647i), var_3.x), !any(select(!vec2<bool>(true, var_3.x), vec2<bool>(true, true), vec2<bool>(true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(max(var_2.x, -10763i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -679f, var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -831f)) - var_1)), ~u_input.a.x << (u_input.a.x % 32u), _wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, ~u_input.a.x ^ firstTrailingBit(4294967295u))));
}

