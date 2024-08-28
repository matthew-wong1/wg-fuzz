struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: Struct_2,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec3<u32> {
    var var_0 = Struct_3(vec3<bool>(true, true, true), firstLeadingBit(~arg_0.b.x), Struct_2(vec3<bool>(true, any(select(vec3<bool>(false, arg_0.a, arg_0.a), vec3<bool>(true, arg_0.a, arg_0.a), arg_0.a)), !select(false, false, false))), vec2<bool>(true, true));
    var var_1 = Struct_1(!arg_0.a, _wgslsmith_mod_vec3_u32(max(select(min(vec3<u32>(74509u, 4294967295u, 1u), arg_0.b), max(vec3<u32>(arg_0.b.x, var_0.b, 1u), arg_0.b), false), ~_wgslsmith_add_vec3_u32(arg_0.b, arg_0.b)), _wgslsmith_mult_vec3_u32(arg_0.b, select(arg_0.b, ~vec3<u32>(8624u, 59586u, 27122u), !vec3<bool>(var_0.d.x, true, arg_0.a)))));
    let var_2 = Struct_1(false, vec3<u32>(u_input.c.x, ~91135u, ~_wgslsmith_dot_vec2_u32(u_input.c, var_1.b.zx)));
    var_0 = Struct_3(select(vec3<bool>(true || any(vec4<bool>(false, var_0.c.a.x, var_2.a, false)), var_2.a, true), !select(vec3<bool>(arg_0.a, false, true), vec3<bool>(var_2.a, false, arg_0.a), false), vec3<bool>(var_1.b.x < (u_input.b >> (arg_0.b.x % 32u)), all(!vec3<bool>(arg_0.a, true, false)), !(!arg_0.a))), ~(~countOneBits(~arg_0.b.x)), Struct_2(!select(var_0.c.a, select(var_0.a, vec3<bool>(var_0.c.a.x, var_0.d.x, true), var_0.c.a), select(var_0.a, var_0.a, false))), vec2<bool>(var_0.a.x, var_2.a));
    var var_3 = Struct_3(vec3<bool>(true, var_2.a, var_1.a), ~(~4294967295u), Struct_2(!select(!vec3<bool>(true, var_0.d.x, var_1.a), vec3<bool>(false, false, var_0.d.x), select(vec3<bool>(true, var_0.a.x, var_1.a), var_0.a, var_0.c.a))), !(!select(select(var_0.c.a.yx, var_0.d, vec2<bool>(true, var_0.d.x)), vec2<bool>(true, arg_0.a), var_0.d)));
    return firstTrailingBit(arg_0.b);
}

fn func_2() -> bool {
    var var_0 = Struct_1(false, ((~vec3<u32>(u_input.a.x, 25056u, u_input.a.x) | func_3(Struct_1(true, vec3<u32>(u_input.d, u_input.b, u_input.d)), 1i)) | vec3<u32>(4294967295u, firstTrailingBit(u_input.b), 186998u << (u_input.a.x % 32u))) | ~(~(vec3<u32>(89897u, 21795u, 8698u) & vec3<u32>(u_input.c.x, u_input.d, 0u))));
    let var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(i32(-1i) * -_wgslsmith_sub_i32(1i, 39832i), ~(~abs(1i))), -(~vec2<i32>(1i, -39611i)));
    let var_2 = Struct_3(vec3<bool>(any(select(vec3<bool>(var_0.a, var_0.a, true), !vec3<bool>(var_0.a, true, true), vec3<bool>(var_0.a, false, false))), any(vec4<bool>(false, any(vec3<bool>(var_0.a, var_0.a, var_0.a)), var_0.a || false, true)), select(true, true, var_0.a && all(vec3<bool>(var_0.a, var_0.a, var_0.a)))), ~(~0u), Struct_2(!vec3<bool>(var_0.a, !var_0.a, true)), vec2<bool>(true, select(var_1.x >= 1i, var_0.a, !var_0.a)));
    var_0 = Struct_1(!(!var_0.a), ~(~firstLeadingBit(vec3<u32>(7917u, 0u, 33812u)) >> (vec3<u32>(4294967295u, u_input.b, 72068u) % vec3<u32>(32u))));
    var_0 = Struct_1(var_0.a, vec3<u32>(39454u, u_input.d, 4294967295u));
    return false;
}

fn func_1(arg_0: Struct_3) -> bool {
    let var_0 = 1i;
    let var_1 = vec2<bool>(true, !select(func_2(), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, var_0, -27955i), vec3<i32>(2147483647i, var_0, -2147483647i)) != ~0i, firstTrailingBit(u_input.c.x) == u_input.a.x));
    var var_2 = !select(select(select(!vec4<bool>(arg_0.c.a.x, arg_0.c.a.x, false, arg_0.a.x), select(vec4<bool>(true, var_1.x, false, true), vec4<bool>(false, true, var_1.x, arg_0.c.a.x), arg_0.c.a.x), select(vec4<bool>(true, var_1.x, var_1.x, true), vec4<bool>(arg_0.c.a.x, true, true, var_1.x), vec4<bool>(true, arg_0.a.x, var_1.x, arg_0.c.a.x))), select(select(vec4<bool>(var_1.x, arg_0.a.x, false, true), vec4<bool>(true, var_1.x, var_1.x, arg_0.d.x), vec4<bool>(false, true, false, var_1.x)), vec4<bool>(arg_0.d.x, false, var_1.x, true), false), !(!arg_0.a.x)), !vec4<bool>(true, true, any(vec4<bool>(var_1.x, arg_0.a.x, true, true)), any(vec4<bool>(false, var_1.x, var_1.x, var_1.x))), true);
    var var_3 = arg_0;
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-461f, -214f, -1000f, -1782f)), vec4<f32>(-556f, -1354f, 766f, -1146f)))))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 606f, -1518f, 936f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-678f, 108f, 638f, -1000f))))));
    return all(select(!select(!vec4<bool>(true, var_1.x, false, false), select(vec4<bool>(false, true, true, var_2.x), vec4<bool>(true, true, true, var_1.x), vec4<bool>(false, var_2.x, true, true)), vec4<bool>(false, var_1.x, var_3.c.a.x, false)), select(select(vec4<bool>(true, false, true, var_3.d.x), !vec4<bool>(false, var_3.a.x, true, false), vec4<bool>(true, true, var_2.x, arg_0.d.x)), select(!vec4<bool>(var_1.x, false, false, var_1.x), vec4<bool>(true, true, true, true), arg_0.c.a.x), vec4<bool>(var_0 < 0i, false | var_2.x, false, !var_1.x)), !vec4<bool>(var_4.x > -625f, arg_0.c.a.x, true, any(vec4<bool>(false, true, true, var_3.d.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(select(vec2<bool>(true, func_1(Struct_3(vec3<bool>(true, true, false), 5939u, Struct_2(vec3<bool>(false, false, true)), vec2<bool>(true, false)))), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), all(vec4<bool>(false, true, true, true)))), select(!select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), false)), vec2<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, false), true)), false)), vec2<bool>(true, false), !vec2<bool>(any(vec4<bool>(false, false, true, true)), true));
    var var_1 = Struct_2(vec3<bool>(true, !(!(!var_0.x)), var_0.x));
    var var_2 = true & var_1.a.x;
    var_2 = select(all(!(!vec4<bool>(var_1.a.x, false, false, true))), func_2(), !(!(1u < max(70230u, u_input.c.x))));
    let var_3 = 15385i;
    var var_4 = var_0.x;
    let var_5 = firstLeadingBit(~select(func_3(Struct_1(false, vec3<u32>(u_input.b, u_input.a.x, u_input.c.x)), 2147483647i), abs(vec3<u32>(u_input.b, 1u, u_input.a.x)), func_2()) & firstLeadingBit(vec3<u32>(69719u, _wgslsmith_dot_vec4_u32(vec4<u32>(50993u, u_input.d, 19665u, u_input.c.x), vec4<u32>(36660u, u_input.b, u_input.d, 1u)), ~u_input.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(543f)), _wgslsmith_f_op_f32(trunc(1215f))), _wgslsmith_f_op_f32(f32(-1f) * -3318f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-736f * -1105f) - -221f)))), 77730u, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2084f), _wgslsmith_f_op_f32(1697f + _wgslsmith_f_op_f32(max(1610f, -2170f))), 1854f, _wgslsmith_f_op_f32(step(194f, -1372f))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, 459f, 1000f, 1170f))))))));
}

