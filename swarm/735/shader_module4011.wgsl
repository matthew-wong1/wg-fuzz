struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: i32,
    c: bool,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = vec3<i32>(2147483647i, u_input.d.x, -20897i);
    var var_1 = abs(u_input.d);
    var var_2 = arg_0;
    var_2 = arg_0;
    let var_3 = u_input.a;
    return _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(232f, _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-arg_0))))));
}

fn func_2(arg_0: u32, arg_1: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(arg_1)), arg_1)) * -329f) - arg_1);
    var var_1 = any(vec2<bool>(true, true));
    var_0 = arg_1;
    var_1 = select(any(vec3<bool>(true, true, true)), !any(vec3<bool>(false, true, true)), firstTrailingBit(u_input.c) >= (~14899u | _wgslsmith_clamp_u32(arg_0, 47562u, arg_0))) | any(vec2<bool>(true, true));
    var var_2 = -71319i;
    return arg_0;
}

fn func_1() -> Struct_3 {
    let var_0 = vec3<u32>(u_input.b.x, 4294967295u, ~40139u);
    let var_1 = -384f;
    let var_2 = false;
    var var_3 = abs(_wgslsmith_mod_u32(4294967295u, _wgslsmith_mult_u32(4294967295u, ~var_0.x))) ^ func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.c, _wgslsmith_add_u32(var_0.x, 50428u)), var_0.xy), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -997f), 1034f)), _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(f32(-1f) * -2428f)))));
    var var_4 = select(-u_input.a.zyz, u_input.a.wyz, !(!select(vec3<bool>(true, var_2, var_2), !vec3<bool>(false, true, var_2), !vec3<bool>(true, var_2, false))));
    return Struct_3(Struct_1(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 15590i), -u_input.d), -2147483647i)), Struct_2(Struct_1(var_4.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(1505f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_1, var_1) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1, var_1, var_1), vec3<f32>(-643f, 121f, var_1)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1, var_1, var_1))))))), var_4.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(679f)))))));
    let var_2 = (countOneBits(~(u_input.b.x | u_input.b.x)) | u_input.b.x) != 4294967295u;
    var var_3 = ~(_wgslsmith_mult_vec3_u32(select(~vec3<u32>(u_input.c, 65796u, u_input.c), max(vec3<u32>(u_input.c, 4294967295u, u_input.c), vec3<u32>(0u, u_input.c, 57624u)), select(vec3<bool>(var_2, var_2, var_2), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), ~(~vec3<u32>(u_input.c, 53599u, 11899u))) ^ vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.b << (u_input.b % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(u_input.b, vec2<u32>(u_input.c, u_input.b.x))), 71496u, ~_wgslsmith_mult_u32(19322u, u_input.b.x)));
    var var_4 = var_1;
    var var_5 = func_1();
    var_5 = Struct_3(var_5.b.a, var_5.b, u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.zz);
}

