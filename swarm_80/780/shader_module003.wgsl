struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
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

fn func_3(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: i32) -> bool {
    let var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-578f + -503f), 526f, _wgslsmith_f_op_f32(f32(-1f) * -649f), -1248f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(671f, 1000f, 506f, -261f)))))));
    var var_1 = vec4<bool>(arg_0.x, !arg_0.x, true != !select(true, arg_0.x, all(vec2<bool>(arg_0.x, true))), arg_0.x);
    let var_2 = var_0;
    var_1 = vec4<bool>(false, arg_0.x, all(select(arg_0.wxx, !arg_0.zxy, vec3<bool>(!arg_0.x, true, all(vec3<bool>(arg_0.x, false, arg_0.x))))), false);
    var_1 = select(arg_0, select(select(arg_0, !vec4<bool>(true, true, var_1.x, true), reverseBits(u_input.b.x) <= 6984i), vec4<bool>(arg_0.x, !(!arg_0.x), !(!var_1.x), any(!arg_0)), select(arg_0, !select(arg_0, arg_0, vec4<bool>(true, true, arg_0.x, var_1.x)), var_1.x)), false);
    return true;
}

fn func_2(arg_0: vec3<bool>) -> f32 {
    var var_0 = ~(~(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 20998u, u_input.c, u_input.c), vec4<u32>(63640u, 0u, 0u, u_input.c)) >> (vec4<u32>(1u, 1u, 1u, 0u) % vec4<u32>(32u))) & countOneBits(~vec4<u32>(80020u, 0u, u_input.c, 0u)));
    let var_1 = Struct_2(-225f, u_input.b.x, Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1822f, -2377f, 1000f, -1229f))))))), select(vec4<bool>(all(arg_0), func_3(select(vec4<bool>(arg_0.x, true, arg_0.x, true), vec4<bool>(arg_0.x, true, arg_0.x, true), true), ~vec4<u32>(var_0.x, u_input.a, u_input.a, 1u), i32(-1i) * -15977i), true, arg_0.x), !select(select(vec4<bool>(arg_0.x, true, true, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x)), select(vec4<bool>(true, false, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), arg_0.x), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), vec4<bool>((false && arg_0.x) || any(vec3<bool>(false, arg_0.x, false)), arg_0.x & true, true, false)));
    var var_2 = var_1;
    var var_3 = var_1.d;
    var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(~(~44625u), _wgslsmith_dot_vec2_u32(vec2<u32>(~var_0.x, ~4294967295u), ~var_0.yw), ~(~(13241u | u_input.a)), var_0.x), ~((vec4<u32>(u_input.a, 1u, u_input.a, 99899u) << (vec4<u32>(28211u, var_0.x, 67058u, 68707u) % vec4<u32>(32u))) << (abs(vec4<u32>(u_input.c, 20800u, 4294967295u, 39592u) ^ vec4<u32>(u_input.a, 27620u, 5428u, 4294967295u)) % vec4<u32>(32u))));
    return 423f;
}

fn func_1(arg_0: u32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(1861f * 1765f);
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(634f * -752f), _wgslsmith_f_op_f32(-242f - -1216f)), _wgslsmith_f_op_f32(func_2(vec3<bool>(true, true, true))))), 203f));
    let var_1 = select(!(!(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)))), !select(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), vec3<bool>(select(true, true, false), true, true), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), all(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)))));
    var_0 = 142f;
    var var_2 = !vec4<bool>(false, var_1.x, !any(var_1.zx), !var_1.x);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(1000f, u_input.b.x, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true), vec4<bool>(!func_1(4294967295u), true, func_1(u_input.c), any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), true))), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(floor(254f)), _wgslsmith_clamp_i32(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.d, var_0.b), ~u_input.b)), u_input.d, firstTrailingBit(-u_input.d) >> (~abs(u_input.c) % 32u)), Struct_1(vec4<f32>(var_0.c.a.x, var_0.c.a.x, var_0.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))), vec4<bool>(!all(vec4<bool>(var_0.d.x, var_0.d.x, true, var_0.d.x)), var_0.d.x, var_0.d.x, select(false, max(u_input.c, u_input.a) == (u_input.c & 4294967295u), false | !var_0.d.x)));
    var var_2 = !var_1.d.xxy;
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.c.a.x, _wgslsmith_f_op_f32(579f * -1000f), _wgslsmith_f_op_f32(func_2(vec3<bool>(var_0.d.x, var_1.d.x, var_2.x))), _wgslsmith_f_op_f32(f32(-1f) * -797f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(floor(1129f)), _wgslsmith_f_op_f32(sign(1036f)), var_0.a) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1413f, 1955f, -1079f, 714f)), var_1.c.a))), select(!(!var_1.d), var_1.d, select(var_0.d, vec4<bool>(var_2.x, false, var_2.x, var_1.d.x), false)))));
    let var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_3.a.x, var_3.a.x, 1272f, var_1.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(-586f, 1000f, var_3.a.x, var_1.c.a.x) + var_3.a))))));
    var_2 = vec3<bool>(var_0.d.x, (((u_input.c > 39667u) && (var_3.a.x != var_0.a)) || false) || func_3(vec4<bool>(var_0.b < var_1.b, var_0.d.x, var_1.d.x, var_2.x && var_2.x), _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 1u, 16415u, 4294967295u), ~vec4<u32>(u_input.a, 4294967295u, u_input.a, 1u), vec4<u32>(4294967295u, 4294967295u, u_input.a, 29830u) << (vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.c) % vec4<u32>(32u))), (u_input.d | 0i) | var_1.b), !func_3(!(!vec4<bool>(var_0.d.x, var_1.d.x, true, var_2.x)), vec4<u32>(u_input.a, 0u, u_input.c, u_input.c) | ~vec4<u32>(u_input.c, 0u, 88694u, u_input.c), _wgslsmith_add_i32(u_input.d, ~(-35892i))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec4<u32>(~(~u_input.c), 1u, _wgslsmith_div_u32(~81735u, 10346u), abs(4294967295u) >> (u_input.a % 32u)) & ~vec4<u32>(u_input.a, u_input.a, 1u, abs(50854u)), ~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1199u, u_input.a, u_input.a, 76459u), vec4<u32>(u_input.c, u_input.c, 0u, u_input.c)), 4294967295u, 1u) & ~vec3<u32>(firstTrailingBit(0u), u_input.a << (31461u % 32u), _wgslsmith_sub_u32(46875u, u_input.a)), ~max(var_0.b, 1i));
}

