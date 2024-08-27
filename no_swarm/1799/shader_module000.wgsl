struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> Struct_1 {
    var var_0 = abs(u_input.a.x);
    let var_1 = !(1u >= u_input.c);
    return Struct_1(-1i, vec3<bool>(!(!var_1) | true, true, true));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: f32, arg_3: Struct_3) -> vec4<i32> {
    let var_0 = Struct_2(arg_1, Struct_1(-1i, arg_3.a.b), func_2(), min(_wgslsmith_dot_vec3_u32(u_input.a.xyy, u_input.a.zzx), u_input.a.x));
    let var_1 = ~(~select(u_input.a, select(u_input.a ^ vec4<u32>(var_0.d, var_0.d, u_input.a.x, 4294967295u), select(u_input.a, u_input.a, vec4<bool>(arg_3.a.b.x, arg_3.a.b.x, true, false)), arg_3.a.b.x), select(!vec4<bool>(false, arg_3.a.b.x, arg_3.a.b.x, var_0.c.b.x), select(vec4<bool>(var_0.b.b.x, false, false, var_0.b.b.x), vec4<bool>(var_0.b.b.x, true, false, var_0.b.b.x), vec4<bool>(var_0.c.b.x, false, true, arg_3.a.b.x)), arg_3.a.b.x)));
    var var_2 = ~abs(u_input.c);
    let var_3 = ~arg_1.xz;
    var_2 = ~var_0.d;
    return abs(firstTrailingBit(arg_1));
}

fn func_1(arg_0: f32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1257f, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(step(467f, 638f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-748f, 234f, arg_0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 537f, 1000f) - vec3<f32>(-884f, 1100f, 592f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -177f, arg_0) * vec3<f32>(arg_0, arg_0, arg_0)))))));
    let var_1 = Struct_2(-(vec4<i32>(2147483647i, u_input.b, u_input.b | u_input.b, -u_input.b) >> (u_input.a % vec4<u32>(32u))), func_2(), Struct_1(u_input.b, !(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)))), ~u_input.c);
    let var_2 = ~410i;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-940f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * arg_0) + arg_0), _wgslsmith_f_op_f32(f32(-1f) * -956f)), vec3<f32>(_wgslsmith_f_op_f32(ceil(-567f)), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(arg_0 + -1059f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
    var var_4 = -max(-func_3(~var_1.c.a, select(var_1.a, vec4<i32>(u_input.b, -13435i, var_1.b.a, 23439i), vec4<bool>(var_1.b.b.x, var_1.c.b.x, false, true)), _wgslsmith_f_op_f32(min(263f, var_0.x)), Struct_3(Struct_1(20751i, vec3<bool>(false, var_1.b.b.x, true)), var_1.d, var_1.a.ww)), abs(countOneBits(var_1.a) & -var_1.a));
    return Struct_3(var_1.b, var_1.d, var_4.zy);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: bool, arg_3: vec2<f32>) -> i32 {
    var var_0 = func_1(_wgslsmith_f_op_f32(-1000f + arg_3.x));
    let var_1 = var_0.c & _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, -2147483647i) | vec2<i32>(abs(1i), var_0.a.a), vec2<i32>(-var_0.a.a, _wgslsmith_add_i32(u_input.b, reverseBits(arg_0.a.a))), ~(countOneBits(arg_0.c) & ~arg_0.c));
    var_0 = arg_0;
    var var_2 = Struct_1(var_1.x, arg_0.a.b);
    let var_3 = func_2();
    return 37544i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_clamp_i32(func_4(func_1(_wgslsmith_f_op_f32(-211f * -553f)), vec2<f32>(_wgslsmith_f_op_f32(307f - -1851f), -2173f), _wgslsmith_sub_i32(u_input.b, u_input.b) != -2147483647i, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(902f, 2744f))))), 12378i, u_input.b), select(vec3<bool>(!any(vec4<bool>(false, true, true, false)), all(vec2<bool>(false, true)), false), func_2().b, !all(vec4<bool>(true, false, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>((-19666i << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 97762u, u_input.c), vec3<u32>(65690u, u_input.c, u_input.c)) % 32u)) ^ func_2().a, u_input.b), countOneBits(-2147483647i), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1166f)))));
}

