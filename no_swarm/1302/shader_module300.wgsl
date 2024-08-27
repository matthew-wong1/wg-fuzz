struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec4<bool>,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: f32,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1f))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1943f, var_0, 869f, 160f), vec4<f32>(-970f, -623f, 1487f, 1000f))))), u_input.c.x, !(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true))), ~(~vec3<i32>(u_input.a, -63061i, u_input.a) & (vec3<i32>(1457i, u_input.b, u_input.b) ^ vec3<i32>(-2147483647i, u_input.b, u_input.a))), ~abs(~1u)));
    var var_2 = ~(~u_input.c);
    var_2 = firstTrailingBit(vec4<u32>(max(firstTrailingBit(38292u), ~u_input.c.x), _wgslsmith_div_u32(~var_1.a.e, u_input.c.x), 1u, 1u) >> (u_input.c % vec4<u32>(32u)));
    let var_3 = _wgslsmith_f_op_f32(-var_0);
    return Struct_2(var_1.a);
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> f32 {
    let var_0 = func_2().a;
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(max(-722f, var_0.a.x)), arg_0.a.a.x, arg_0.a.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-243f * 674f))))), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(27275u, arg_3.b)) | (reverseBits(vec2<u32>(4294967295u, arg_2)) >> (_wgslsmith_add_vec2_u32(vec2<u32>(var_0.e, 1u), u_input.c.wz) % vec2<u32>(32u))), min(max(~u_input.c.xz, ~vec2<u32>(0u, 4294967295u)), select(abs(u_input.c.zy), vec2<u32>(arg_2, 4294967295u), true))), arg_3.c, var_0.d, _wgslsmith_add_u32(arg_0.a.e, firstTrailingBit(1u)) >> (_wgslsmith_mult_u32(min(arg_3.e, countOneBits(0u)), 4294967295u) % 32u));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(363f + var_1.a.x)), var_0.a.x, false)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * 1755f)), _wgslsmith_f_op_f32(min(-804f, _wgslsmith_f_op_f32(-168f + -1553f)))))), _wgslsmith_f_op_f32(-arg_3.a.x));
    let var_3 = vec4<bool>(!arg_3.c.x, !(~select(-45855i, var_1.d.x, var_1.c.x) <= 1i), var_0.c.x, true);
    let var_4 = _wgslsmith_mult_u32(~arg_0.a.b, 41332u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(356f))))));
}

fn func_1() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-642f)) * 1977f), _wgslsmith_f_op_f32(func_3(func_2(), all(vec3<bool>(false, true, false)), u_input.c.x, func_2().a)), -288f, -969f)), 0u, !func_2().a.c, ~_wgslsmith_mult_vec3_i32(firstTrailingBit(-vec3<i32>(0i, -32606i, -31863i)), -max(vec3<i32>(u_input.a, -29661i, u_input.b), vec3<i32>(-18450i, u_input.b, u_input.b))), u_input.c.x);
    return _wgslsmith_f_op_f32(select(101f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.a.x - 687f))))) - var_0.a.x), !(!(u_input.c.x > 14303u))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -102f)) + 1090f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-387f + -185f) + _wgslsmith_f_op_f32(round(-1120f))), _wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -804f) * _wgslsmith_f_op_f32(f32(-1f) * -162f)), _wgslsmith_f_op_f32(332f - _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(trunc(-271f)))), _wgslsmith_f_op_f32(-793f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-556f * -914f), _wgslsmith_f_op_f32(trunc(-877f))))));
}

