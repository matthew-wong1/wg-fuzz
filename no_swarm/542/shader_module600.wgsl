struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: bool,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_2,
    d: vec3<i32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec3<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    var var_0 = u_input.b.xww;
    let var_1 = vec2<bool>(true, true);
    var var_2 = vec4<bool>(var_1.x, !any(var_1), var_1.x, true);
    var var_3 = ~(~(~(-11905i))) == abs(var_0.x);
    var var_4 = Struct_3(Struct_2(select(select(var_1, !vec2<bool>(false, var_2.x), !vec2<bool>(true, var_2.x)), select(vec2<bool>(var_1.x, var_2.x), vec2<bool>(var_2.x, false), true), vec2<bool>(true, true))), vec2<bool>(~(56955u & u_input.c) == abs(~u_input.c), ((var_0.x & 1i) >= var_0.x) & any(select(vec2<bool>(false, var_2.x), var_2.wx, vec2<bool>(var_1.x, false)))), Struct_2(!(!(!vec2<bool>(false, var_2.x)))));
    return ~abs(0u);
}

fn func_2(arg_0: vec4<i32>, arg_1: bool, arg_2: vec2<i32>) -> i32 {
    let var_0 = Struct_1(~_wgslsmith_add_vec4_i32(u_input.b, ~vec4<i32>(arg_2.x, -8880i, u_input.a, 67915i)), vec3<bool>(arg_1, true, _wgslsmith_f_op_f32(f32(-1f) * -1475f) == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1340f, 1000f, true))))), all(vec3<bool>(true, all(!vec2<bool>(arg_1, arg_1)), -arg_2.x >= ~1i)), _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.c, firstLeadingBit(11541u) >> (max(u_input.c, 22560u) % 32u)), u_input.c), func_3());
    let var_1 = Struct_3(Struct_2(select(!(!var_0.b.yx), vec2<bool>(arg_1, var_0.c), var_0.c)), var_0.b.yy, Struct_2(!var_0.b.xx));
    let var_2 = var_1;
    let var_3 = arg_1;
    var var_4 = ~_wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(var_0.e, 1u, var_0.d, 1u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, 0u, var_0.d, var_0.e), max(vec4<u32>(var_0.e, 43659u, var_0.e, 21338u), vec4<u32>(u_input.c, u_input.c, u_input.c, 42497u)))) ^ 4294967295u;
    return i32(-1i) * -arg_0.x;
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> Struct_3 {
    var var_0 = (((_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 27058u, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, 0u, 4830u)) & max(vec4<u32>(4294967295u, u_input.c, u_input.c, 0u), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c))) | vec4<u32>(_wgslsmith_mult_u32(5210u, 21639u), select(u_input.c, u_input.c, arg_0.a.x), _wgslsmith_sub_u32(u_input.c, u_input.c), 1u)) >> (select((vec4<u32>(4294967295u, 4294967295u, u_input.c, 78224u) ^ vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)) << ((vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.c) << (vec4<u32>(0u, u_input.c, 4294967295u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(countOneBits(0u), min(1u, u_input.c), u_input.c, ~1u), ~117352u >= (0u >> (u_input.c % 32u))) % vec4<u32>(32u))) >> (~min(~(~vec4<u32>(u_input.c, u_input.c, u_input.c, 27905u)), select(~vec4<u32>(u_input.c, 63225u, u_input.c, 48368u), vec4<u32>(1u, 69354u, 11784u, 1u) >> (vec4<u32>(u_input.c, u_input.c, 0u, u_input.c) % vec4<u32>(32u)), 1u < u_input.c)) % vec4<u32>(32u));
    let var_1 = firstTrailingBit(reverseBits(~func_2(u_input.b, !arg_0.a.x, vec2<i32>(-2147483647i, u_input.b.x) >> (var_0.ww % vec2<u32>(32u)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(abs(-778f)), _wgslsmith_f_op_f32(arg_1 - arg_1))))) * vec2<f32>(_wgslsmith_f_op_f32(-1170f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(arg_1 * arg_1))), _wgslsmith_div_f32(-1129f, arg_1)));
    var_0 = vec4<u32>(_wgslsmith_mult_u32(u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), ~vec2<u32>(u_input.c, 81469u)) ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c, var_0.x, 14396u), vec4<u32>(1u, 1u, 29777u, u_input.c))), 4294967295u, u_input.c, countOneBits(reverseBits(u_input.c)));
    var var_3 = _wgslsmith_add_u32(1u, 1u);
    return Struct_3(Struct_2(arg_0.a), arg_0.a, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_2(select(vec2<bool>(any(vec4<bool>(true, false, true, false)), true), vec2<bool>(true, false), vec2<bool>(true, true))), _wgslsmith_f_op_f32(trunc(-233f)));
    var var_1 = firstTrailingBit(~u_input.c | 22049u);
    var var_2 = vec4<u32>(_wgslsmith_div_u32(11101u, _wgslsmith_clamp_u32(~1u, ~u_input.c, u_input.c) ^ max(1u, ~4294967295u)), _wgslsmith_mod_u32(abs(u_input.c), abs(~109757u)), 0u, ~u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(0u, ~(-2147483647i), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1846f)) - _wgslsmith_f_op_f32(f32(-1f) * -128f))))), var_2.wxx, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1225f - -1079f) + _wgslsmith_f_op_f32(trunc(-688f))), -1184f, 273f))));
}

