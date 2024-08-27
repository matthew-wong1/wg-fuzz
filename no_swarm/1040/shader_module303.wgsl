struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1648f * -130f)) - -703f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-2012f))))))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -1645f))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(179f + -520f)), -857f)));
    var var_1 = arg_0;
    var_1 = arg_0;
    var_1 = arg_0;
    var var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(select(~(-arg_0.b.yx), arg_0.b.xx ^ _wgslsmith_add_vec2_i32(vec2<i32>(0i, 25504i), vec2<i32>(u_input.a.x, var_1.b.x)), select(select(vec2<bool>(arg_1.a.x, true), arg_0.c.a, arg_1.a.x), !vec2<bool>(var_0, true), arg_0.c.a.x && arg_1.a.x)), ~(-abs(arg_0.b.zz))), -(~var_1.b.xx));
    return select(~vec3<u32>(1u, arg_1.b, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 3345u, 0u), vec4<u32>(0u, var_1.d, 60196u, arg_0.c.b))), abs(firstTrailingBit(vec3<u32>(50365u, arg_0.a, 1u)) >> (vec3<u32>(4294967295u, var_1.c.b, 1u) % vec3<u32>(32u))) | ~(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.d, arg_1.b, 4294967295u), vec3<u32>(1u, 4294967295u, arg_1.b)) & min(vec3<u32>(var_1.a, 4294967295u, 1u), vec3<u32>(var_1.a, arg_1.b, 4294967295u))), var_1.c.a.x);
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_dot_vec3_u32(min(vec3<u32>(1u, 1u, 1u), min(min(vec3<u32>(58798u, 0u, 17784u), vec3<u32>(1u, 1u, 4294967295u)), ~vec3<u32>(4294967295u, 109610u, 32862u))) & func_3(Struct_2(4294967295u, -vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x), Struct_1(vec2<bool>(true, true), 1u), _wgslsmith_sub_u32(1u, 1u)), Struct_1(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), 1u)), ~vec3<u32>(1684u, func_3(Struct_2(64931u, vec3<i32>(u_input.a.x, 2147483647i, u_input.b), Struct_1(vec2<bool>(true, false), 0u), 4294967295u), Struct_1(vec2<bool>(false, false), 4294967295u)).x, _wgslsmith_mult_u32(31415u, 1u) << (1u % 32u)));
    let var_1 = true;
    let var_2 = _wgslsmith_clamp_u32(~_wgslsmith_mod_u32(1u, func_3(Struct_2(641u, vec3<i32>(u_input.a.x, u_input.b, 2147483647i), Struct_1(vec2<bool>(var_1, true), var_0), 1u), Struct_1(vec2<bool>(var_1, true), 21973u)).x), var_0, 1u);
    let var_3 = !(false | (-u_input.b >= min(3439i, u_input.b))) | all(select(!vec3<bool>(true, var_1, true), select(select(vec3<bool>(var_1, true, var_1), vec3<bool>(var_1, false, false), true), vec3<bool>(var_1, var_1, var_1), !vec3<bool>(false, var_1, true)), vec3<bool>(!var_1, var_1, var_1)));
    var var_4 = vec3<u32>(1u, select(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_2, 77070u, 4294967295u), vec4<u32>(4294967295u, var_0, var_0, var_2))), var_0, !any(vec3<bool>(var_1, false, true))) << ((18328u >> (~(~var_0) % 32u)) % 32u), var_0);
    return Struct_2(1u, vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, reverseBits(u_input.a.x)), -1i ^ _wgslsmith_mult_i32(u_input.b, 2147483647i), u_input.b) & ~vec3<i32>(max(-1033i, 23989i), 0i, u_input.a.x), Struct_1(vec2<bool>(true, all(select(vec4<bool>(true, false, var_3, true), vec4<bool>(true, false, var_3, true), vec4<bool>(false, var_1, var_3, true)))), countOneBits(4294967295u)), _wgslsmith_mod_u32(0u, ~(var_0 ^ _wgslsmith_mult_u32(1u, 0u))));
}

fn func_1() -> f32 {
    var var_0 = func_2();
    let var_1 = var_0.c;
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(194f, -1749f) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(870f, -333f)) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(331f, 1932f), vec2<f32>(249f, 305f)))), vec2<f32>(_wgslsmith_f_op_f32(floor(-427f)), 134f))))));
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1577f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - 974f) * -1935f))), _wgslsmith_f_op_f32(var_2.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2015f * var_2.x)), _wgslsmith_f_op_f32(-791f * _wgslsmith_f_op_f32(-var_2.x))))));
    var var_4 = ~_wgslsmith_sub_u32(abs(var_1.b & max(var_1.b, 0u)), ~var_1.b);
    return _wgslsmith_f_op_f32(-var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(1u, ~_wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(max(63147u, 9809u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1733f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1650f)))))));
    var var_2 = -2523f;
    let var_3 = vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(104f, -769f))))), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.x)) - var_1.x)) + var_1.x));
    var var_4 = vec2<i32>(-22522i, min(u_input.a.x, _wgslsmith_dot_vec4_i32(~abs(vec4<i32>(-59379i, u_input.b, -15369i, 6211i)), vec4<i32>(u_input.b, -32628i, u_input.a.x, -5081i) ^ ~vec4<i32>(u_input.a.x, 31611i, u_input.a.x, 0i))));
    var var_5 = Struct_1(!(!func_2().c.a), 0u);
    var_5 = func_2().c;
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(~vec4<i32>(-u_input.a.x, min(-1i, var_4.x), 48672i, 11681i), vec4<i32>(-(-9433i << (var_5.b % 32u)), _wgslsmith_sub_i32(-45821i, _wgslsmith_div_i32(u_input.a.x, -1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, var_4.x, 2147483647i, 53069i), -vec4<i32>(-61423i, var_4.x, 13296i, var_4.x)), u_input.a.x)), _wgslsmith_sub_i32(18072i, 1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, -753f, 1673f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(829f, var_3.x, -116f), vec3<f32>(364f, 242f, 118f), vec3<bool>(false, true, true)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-686f, -1775f, var_1.x))) + var_1.zxw));
}

