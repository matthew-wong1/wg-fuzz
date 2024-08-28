struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: f32,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec4<i32>(2147483647i, -14299i, 2147483647i, 0i), Struct_1(2596f, vec4<i32>(-1i, -11090i, -26399i, -11461i), vec2<i32>(1i, 42315i), -7998i, -1039f), -309f, 682f, -299f);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: u32, arg_3: vec3<u32>) -> i32 {
    var var_0 = Struct_2(-(i32(-1i) * -2147483647i), -(~0i));
    var var_1 = 1000f;
    var_1 = -246f;
    var var_2 = ~arg_0.wyy;
    var_1 = _wgslsmith_div_f32(-2062f, _wgslsmith_f_op_f32(max(global0.c, -126f)));
    return abs(1i);
}

fn func_1() -> Struct_4 {
    return Struct_4(abs(~vec4<i32>(~u_input.a.x, _wgslsmith_mod_i32(global0.a.x, -8384i), u_input.a.x, func_2(vec4<i32>(-3327i, 0i, u_input.a.x, 0i), vec2<f32>(967f, 1161f), u_input.b.x, u_input.b.xzy))), global0.b, _wgslsmith_f_op_f32(trunc(global0.b.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(212f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.c)) - global0.b.e)))));
}

fn func_3(arg_0: i32, arg_1: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-arg_1);
    let var_1 = global0.b;
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-796f, _wgslsmith_f_op_f32(-arg_1)))));
    let var_2 = ~(~u_input.b.x);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.e, _wgslsmith_div_f32(arg_1, 1332f), any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false))))) + 100f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1771f - 364f));
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global0 = func_1();
    var var_0 = _wgslsmith_dot_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(~8630i, global0.a.x, global0.a.x), abs(vec3<i32>(-4647i, global0.b.d, global0.b.c.x)) & global0.b.b.zwx), ~((firstTrailingBit(global0.b.b.yxx) ^ global0.a.zyw) | vec3<i32>(1i, 9056i, max(-23798i, u_input.a.x))));
    let var_1 = vec2<bool>((min(func_3(9532i, global0.c), _wgslsmith_dot_vec2_u32(u_input.b.yw, u_input.b.yx)) ^ u_input.b.x) >= (18260u << ((~u_input.b.x ^ ~u_input.b.x) % 32u)), all(vec4<bool>(true, true, _wgslsmith_f_op_f32(trunc(-1806f)) > global0.d, countOneBits(0i) == global0.b.d)));
    global0 = func_1();
    var var_2 = func_1().b;
    let var_3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d, 1917f, var_2.e) * vec3<f32>(var_2.e, -1790f, global0.b.e)))), vec3<f32>(1000f, _wgslsmith_f_op_f32(-var_2.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -761f)))))));
    let var_4 = u_input.b.x;
    let var_5 = !(-586f == _wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(-var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3 + vec3<f32>(var_2.a, global0.e, var_2.e)) + _wgslsmith_f_op_vec3_f32(var_3 + var_3)) + _wgslsmith_f_op_vec3_f32(var_3 * _wgslsmith_f_op_vec3_f32(var_3 * vec3<f32>(484f, global0.d, var_2.a))))), var_3.yy, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.e - global0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.e))), _wgslsmith_f_op_f32(var_2.e * -305f), _wgslsmith_f_op_f32(step(var_2.a, _wgslsmith_f_op_f32(floor(var_3.x)))))));
}

