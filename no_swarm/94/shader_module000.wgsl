struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec2<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec4<f32>,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: Struct_3,
    d: Struct_3,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: vec2<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec3<i32>) -> f32 {
    let var_0 = firstLeadingBit(_wgslsmith_sub_u32(~(~_wgslsmith_mod_u32(4294967295u, 4294967295u)), 0u));
    var var_1 = !all(vec3<bool>(any(vec3<bool>(true, true, true)), true, select(any(vec2<bool>(false, true)), arg_1.a.x > arg_0.x, true)));
    let var_2 = ~arg_2.x;
    let var_3 = ~var_0;
    let var_4 = arg_1.d;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4.x, _wgslsmith_f_op_f32(arg_1.d.x * arg_1.d.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -491f) * _wgslsmith_f_op_f32(var_4.x + 102f)))));
}

fn func_2(arg_0: u32, arg_1: bool) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = Struct_4(~arg_0, true, Struct_3(false), Struct_3(true), Struct_3(arg_1));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(vec3<i32>(u_input.a.x, -2147483647i, 1i), Struct_1(vec3<i32>(-34399i, -30199i, -2147483647i), var_1.a, 4294967295u, vec2<f32>(-692f, 2070f), vec4<u32>(arg_0, 4294967295u, 7035u, var_1.a)), vec2<u32>(23332u, arg_0), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), _wgslsmith_f_op_f32(172f - 599f), 2237f, _wgslsmith_f_op_f32(f32(-1f) * -543f))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(abs(200f)), _wgslsmith_f_op_f32(round(821f)), -401f, _wgslsmith_f_op_f32(min(-1460f, 200f)))))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(982f, -377f, 310f, -799f)), vec4<f32>(-702f, 387f, 880f, 785f)))))));
    var var_3 = Struct_5(Struct_2(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + var_2.x)) * 1141f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1359f, -2208f, var_2.x, 1065f)) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(766f, 368f, var_2.x, 588f))))), vec4<i32>(reverseBits(u_input.a.x), u_input.a.x, abs(u_input.a.x), firstLeadingBit(u_input.a.x) & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 20578i, 2147483647i, u_input.a.x), vec4<i32>(u_input.a.x, 23036i, 21035i, 20829i))), Struct_1(~vec3<i32>(u_input.a.x, 0i, -30390i) & -vec3<i32>(-2147483647i, -2147483647i, -8218i), _wgslsmith_div_u32(~var_1.a, 4294967295u), _wgslsmith_div_u32(abs(var_1.a), 1u), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.x, 1524f), vec2<f32>(-1000f, -1000f)))), abs(vec4<u32>(24296u, 62352u, 4294967295u, arg_0)) ^ (vec4<u32>(0u, 0u, var_1.a, 6754u) >> (vec4<u32>(arg_0, var_1.a, arg_0, 43214u) % vec4<u32>(32u))))), var_1.e, ~abs(reverseBits(vec2<u32>(1u, 43438u))), _wgslsmith_f_op_f32(var_2.x * 715f));
    var var_4 = Struct_1(countOneBits(var_3.a.e.a), 20943u, min(var_3.c.x, var_1.a) | 1u, var_3.a.c.zx, ~var_3.a.e.e);
    return var_3.a.e;
}

fn func_1() -> Struct_2 {
    return Struct_2(true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1174f * 693f), _wgslsmith_f_op_f32(f32(-1f) * -182f)))), 1021f, false)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-687f + -292f), -128f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1027f + -1396f))), _wgslsmith_f_op_f32(f32(-1f) * -325f)))), -(~(vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), func_2(4294967295u, any(vec3<bool>(true, true, true))));
}

fn func_4(arg_0: Struct_5) -> Struct_2 {
    var var_0 = Struct_4(countOneBits(arg_0.a.e.b), any(vec2<bool>(any(vec4<bool>(true, false, arg_0.a.a, arg_0.b.a)), true && all(vec3<bool>(arg_0.a.a, true, true)))), Struct_3(all(vec3<bool>(!arg_0.b.a, true, any(vec2<bool>(false, arg_0.a.a))))), Struct_3(!(!(!arg_0.b.a))), Struct_3(arg_0.a.a));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * 1230f), 806f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(640f)), -1143f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_0.a.c.yzy), _wgslsmith_div_vec3_f32(vec3<f32>(-112f, -1395f, arg_0.d), vec3<f32>(arg_0.a.b, 1249f, arg_0.a.b))))))));
    var var_2 = var_1.zz;
    var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -579f), arg_0.d) - vec2<f32>(862f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-257f)) - 394f) * _wgslsmith_f_op_f32(max(arg_0.d, -1904f)))));
    let var_3 = -1000f;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_5(func_1(), Struct_3(false), abs(~(~vec2<u32>(30023u, 17233u))), -464f));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-354f, -502f), _wgslsmith_f_op_f32(f32(-1f) * -931f), func_1().b, var_0.b), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(var_0.c))))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(trunc(var_0.c.x)), _wgslsmith_f_op_f32(floor(var_0.b)), -1000f))), select(select(!vec4<bool>(var_0.a, false, var_0.a, var_0.a), select(vec4<bool>(var_0.a, false, false, true), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a)), select(vec4<bool>(var_0.a, false, true, false), vec4<bool>(var_0.a, var_0.a, true, var_0.a), vec4<bool>(var_0.a, false, true, var_0.a))), vec4<bool>(true, any(vec4<bool>(false, true, var_0.a, var_0.a)), select(false, true, var_0.a), false), vec4<bool>(select(true, true, var_0.a), select(true, var_0.a, false), all(vec2<bool>(false, true)), var_0.a)))));
    let var_2 = func_2(1u, var_0.a && false);
    let var_3 = max(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.e.c, 77715u), ~reverseBits(vec2<u32>(82222u, 3333u))), var_2.e.wy);
    let var_4 = var_0.e.b;
    var var_5 = Struct_5(var_0, Struct_3(var_2.d.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) - var_1.x)), ~(vec2<u32>(15131u, var_0.e.c) & ~var_2.e.yz) ^ vec2<u32>(var_2.c >> (65117u % 32u), _wgslsmith_mod_u32(~var_2.b, var_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.d.x + var_2.d.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-969f + var_0.b) - _wgslsmith_div_f32(var_0.b, var_2.d.x))) - -257f));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.e.e, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.d.x - var_0.b) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_2.d.x) * -1149f)), var_0.b, var_5.b.a)), ~func_2(8781u, func_4(Struct_5(Struct_2(false, var_5.a.c.x, var_0.c, vec4<i32>(var_2.a.x, var_2.a.x, -1i, 3826i), var_5.a.e), Struct_3(false), var_2.e.wz, var_0.c.x)).a).e.x);
}

