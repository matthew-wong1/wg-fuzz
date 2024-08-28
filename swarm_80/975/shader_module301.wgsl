struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    var var_0 = ~1u;
    return !(0u > u_input.c);
}

fn func_2(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: Struct_4) -> f32 {
    var var_0 = !vec4<bool>(true, arg_0.b && !(!arg_2.b), arg_2.b, false);
    let var_1 = var_0.ww;
    var var_2 = select(true, all(vec3<bool>(!arg_2.b, func_3(), var_0.x)), true);
    var_0 = vec4<bool>(all(var_0.wyw), var_1.x, true, all(select(vec4<bool>(arg_0.b, true, true | arg_2.b, true), !select(vec4<bool>(var_1.x, true, var_1.x, false), vec4<bool>(arg_2.b, var_1.x, var_0.x, true), var_1.x), select(!vec4<bool>(true, false, arg_0.b, arg_2.b), vec4<bool>(arg_2.b, arg_0.b, true, arg_2.b), !var_0.x))));
    var_0 = select(select(vec4<bool>(true & (u_input.b > 0i), any(select(var_0.xz, vec2<bool>(arg_0.b, true), var_0.x)), true, true), select(!(!vec4<bool>(arg_2.b, false, var_0.x, true)), !select(vec4<bool>(true, false, false, var_0.x), vec4<bool>(arg_2.b, arg_0.b, var_0.x, true), var_1.x), !all(vec3<bool>(arg_2.b, var_0.x, true))), select(select(vec4<bool>(true, arg_0.b, arg_2.b, arg_2.b), select(vec4<bool>(true, false, false, var_1.x), vec4<bool>(arg_2.b, var_1.x, arg_2.b, false), vec4<bool>(arg_0.b, false, arg_2.b, true)), !vec4<bool>(false, arg_0.b, false, true)), select(!vec4<bool>(arg_0.b, true, arg_2.b, var_0.x), !vec4<bool>(arg_0.b, arg_2.b, true, true), !vec4<bool>(true, false, var_0.x, false)), true)), !select(vec4<bool>(any(vec4<bool>(arg_0.b, arg_0.b, var_1.x, arg_0.b)), 1i <= arg_2.e.c, var_1.x, var_1.x), select(vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(var_1.x, arg_0.b, var_0.x, true), !vec4<bool>(true, var_1.x, var_0.x, true)), true & !var_0.x), var_1.x);
    return 137f;
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(732f, -871f, -669f, -675f) + vec4<f32>(-1844f, 1043f, 1000f, -743f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -940f), _wgslsmith_f_op_f32(func_2(Struct_4(Struct_2(u_input.a, Struct_1(u_input.c, vec4<i32>(-15288i, 2147483647i, u_input.b, u_input.b), 1i, vec4<i32>(38049i, 1i, u_input.a, u_input.a), u_input.b)), true, Struct_2(-13266i, Struct_1(u_input.c, vec4<i32>(1432i, -31730i, u_input.a, 1i), u_input.a, vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), -1i)), Struct_3(vec4<f32>(606f, -1415f, -1121f, -1693f), u_input.a, -314f, vec4<u32>(u_input.c, 4294967295u, u_input.c, 0u)), Struct_1(4294967295u, vec4<i32>(0i, u_input.a, 1i, u_input.b), -1i, vec4<i32>(90038i, u_input.a, u_input.b, 45238i), 0i)), vec4<u32>(3506u, u_input.c, u_input.c, 0u), Struct_4(Struct_2(-45580i, Struct_1(4747u, vec4<i32>(-24611i, u_input.a, u_input.a, u_input.b), 4355i, vec4<i32>(u_input.a, u_input.b, u_input.b, 2147483647i), -31286i)), true, Struct_2(0i, Struct_1(4294967295u, vec4<i32>(u_input.a, 0i, u_input.b, u_input.a), -1i, vec4<i32>(u_input.a, u_input.b, -23558i, 1i), 2177i)), Struct_3(vec4<f32>(-630f, 884f, -447f, 1499f), u_input.b, 360f, vec4<u32>(0u, 1u, u_input.c, u_input.c)), Struct_1(117703u, vec4<i32>(u_input.a, -1i, u_input.a, 19953i), -1i, vec4<i32>(u_input.a, 1i, u_input.b, -2147483647i), 72341i)))), _wgslsmith_f_op_f32(-128f * -729f), _wgslsmith_f_op_f32(-1000f + 1570f)))));
    var var_1 = Struct_1(abs(4294967295u), -countOneBits(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.b, 2147483647i, u_input.b), vec4<i32>(u_input.a, -41106i, u_input.a, u_input.b))), _wgslsmith_sub_i32(-2147483647i, -_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.b), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(0i, -22366i), vec2<i32>(u_input.a, u_input.a)))), ~select(vec4<i32>(~u_input.b, 0i, 0i, -54586i), firstTrailingBit(countOneBits(vec4<i32>(u_input.a, -1i, -2147483647i, 2147483647i))), vec4<bool>(true, true, true, true)), i32(-1i) * -34192i);
    let var_2 = _wgslsmith_clamp_i32(-u_input.b, u_input.a, ~2958i) & (abs(var_1.e) | max(u_input.a, min(abs(u_input.b), var_1.d.x)));
    var var_3 = vec4<i32>(~2147483647i, (firstTrailingBit(var_1.c) & (var_2 | (var_1.c >> (16710u % 32u)))) ^ 1i, -1i, -6131i);
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_div_f32(var_0.x, -538f), 473f, var_0.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, 658f, var_0.x, 1130f), vec4<f32>(552f, 312f, -928f, 982f), vec4<bool>(true, true, true, false))), vec4<f32>(var_0.x, -705f, var_0.x, 1000f)), u_input.a == _wgslsmith_dot_vec3_i32(var_3.zyy, var_3.wyy))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -460f), 1000f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x + 2403f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-764f, var_0.x, 620f, var_0.x) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1230f, var_0.x, 507f, 1269f))))))) * vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(min(408f, 931f)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-459f * -396f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-530f, -1428f)))))));
    return _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_0.x, var_0.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), true);
    var var_1 = select(select(any(select(vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(false, false, false, false), vec4<bool>(var_0.x, true, true, var_0.x))) & false, any(!var_0), true), false, true & any(vec3<bool>(true, !var_0.x, u_input.c > u_input.c)));
    var_1 = true;
    var_1 = !(var_0.x || (u_input.a <= (-1i >> (u_input.c % 32u))));
    var_1 = var_0.x;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -643f)), 1024f)) * _wgslsmith_f_op_f32(func_1())));
    let var_3 = var_0.x || var_0.x;
    var_1 = var_0.x && !var_3;
    let var_4 = ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, u_input.c, ~u_input.c), ((vec3<u32>(u_input.c, u_input.c, 20807u) >> (vec3<u32>(34329u, u_input.c, u_input.c) % vec3<u32>(32u))) ^ select(vec3<u32>(4294967295u, u_input.c, 43791u), vec3<u32>(7512u, u_input.c, 1u), vec3<bool>(var_0.x, true, true))) ^ max(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.c, u_input.c, 4294967295u), vec3<u32>(u_input.c, u_input.c, u_input.c)), ~vec3<u32>(1u, 124143u, u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(min(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 73208u, var_4.x, u_input.c), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, var_4.x, 24372u, 1u), vec4<u32>(8270u, 4433u, 1u, var_4.x), vec4<u32>(u_input.c, 1u, var_4.x, var_4.x)), ~vec4<u32>(u_input.c, var_4.x, 21611u, u_input.c)), min(vec4<u32>(~76263u, ~var_4.x, var_4.x & u_input.c, _wgslsmith_div_u32(u_input.c, var_4.x)), vec4<u32>(4294967295u, u_input.c, u_input.c, var_4.x) | (vec4<u32>(4294967295u, 105085u, 64133u, var_4.x) ^ vec4<u32>(27923u, u_input.c, u_input.c, 56450u)))), abs(-u_input.a), 36619i);
}

