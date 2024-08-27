struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec2<bool>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = arg_0;
    let var_1 = var_0.d;
    let var_2 = vec4<bool>(!(max(~3889u, var_0.d.x) <= var_1.x), !arg_0.c.x, !(all(select(vec4<bool>(arg_0.c.x, arg_0.c.x, var_0.c.x, true), vec4<bool>(var_0.c.x, arg_0.c.x, var_0.c.x, true), vec4<bool>(arg_0.c.x, true, var_0.c.x, false))) | true), true);
    let var_3 = vec4<f32>(468f, arg_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * 974f), _wgslsmith_div_f32(var_0.a, var_0.a));
    let var_4 = false;
    return max(45093u, reverseBits(~countOneBits(arg_0.d.x ^ var_0.d.x)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>) -> vec4<f32> {
    let var_0 = arg_0;
    var var_1 = -(max(-vec4<i32>(56775i, 2147483647i, 50292i, 22665i), vec4<i32>(1i, 1i, 1i, 1i)) << ((vec4<u32>(_wgslsmith_mod_u32(var_0.d.x, 9712u), u_input.a, 51217u, ~u_input.a) & _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 74690u, 47450u, 0u) << (vec4<u32>(arg_0.d.x, 16944u, 0u, 42279u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, arg_0.d.x, 53923u, arg_0.d.x), vec4<u32>(u_input.a, var_0.d.x, u_input.a, u_input.a)))) % vec4<u32>(32u)));
    let var_2 = vec2<u32>(select(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d.x, _wgslsmith_sub_u32(4294967295u, arg_0.d.x), countOneBits(0u), ~var_0.d.x), vec4<u32>(arg_0.d.x ^ var_0.d.x, ~13601u, abs(1u), u_input.a >> (4294967295u % 32u))), _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a, arg_0.d.x), 0u) & func_3(arg_0), !all(!vec3<bool>(arg_0.c.x, false, false))), ~0u);
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)))), var_0.a, -921f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b.zzx), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-218f, arg_0.b.x, arg_0.b.x)))));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(2529f, _wgslsmith_f_op_f32(-var_3.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(arg_0.b)))), arg_1, var_2);
    return _wgslsmith_f_op_vec4_f32(-var_4.b);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<f32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(-arg_1.x);
    let var_1 = select(vec2<bool>(true, any(vec3<bool>(any(vec4<bool>(true, true, false, true)), true, true))), !select(vec2<bool>(all(vec2<bool>(false, true)), false), !select(vec2<bool>(true, true), vec2<bool>(true, true), false), all(vec4<bool>(false, false, true, true)) | all(vec2<bool>(false, true))), !(!(true & select(false, true, false))));
    var var_2 = Struct_1(var_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1622f, arg_1.x, 534f, 423f)))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_2(Struct_1(var_0, vec4<f32>(-1428f, var_0, arg_1.x, var_0), var_1, vec2<u32>(21931u, u_input.a)), vec2<bool>(true, true)))))), vec2<bool>(false, var_1.x), ~vec2<u32>(_wgslsmith_sub_u32(u_input.a ^ 17712u, ~43998u), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.a, 37109u), max(vec3<u32>(0u, 54357u, u_input.a), vec3<u32>(1u, 65773u, u_input.a)))));
    let var_3 = !select(vec4<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(var_1.x, true, var_1.x), true)), _wgslsmith_f_op_f32(var_2.b.x - -2553f) < var_0, !all(vec2<bool>(false, var_1.x)), !(!var_1.x)), select(select(select(vec4<bool>(false, var_1.x, var_2.c.x, var_2.c.x), vec4<bool>(false, false, true, var_2.c.x), var_2.c.x), !vec4<bool>(var_1.x, var_1.x, false, var_1.x), select(true, false, var_2.c.x)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(var_2.c.x, var_1.x, var_2.c.x, true), vec4<bool>(var_1.x, var_2.c.x, var_2.c.x, var_1.x), vec4<bool>(true, var_2.c.x, var_1.x, var_1.x)), var_2.c.x && var_2.c.x), vec4<bool>(true, all(vec4<bool>(true, true, var_2.c.x, var_1.x)), !var_2.c.x, var_2.c.x)), select(vec4<bool>(true, true, true, true), select(!vec4<bool>(var_1.x, false, var_2.c.x, var_2.c.x), vec4<bool>(true, true, true, true), true), !vec4<bool>(true, var_2.c.x, var_2.c.x, true)));
    var var_4 = _wgslsmith_f_op_f32(-arg_1.x);
    return vec2<bool>(!var_2.c.x, any(vec4<bool>(false, !var_3.x && !var_3.x, false, !(!var_3.x))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: vec2<bool>, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = arg_3.a;
    var var_1 = ~(~(~(~_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.x, 51914u, arg_3.d.x, 15508u), vec4<u32>(4294967295u, 25526u, arg_1.x, arg_1.x)))));
    var_1 = select(select(vec4<u32>(u_input.a, 99965u, 7316u, 0u), vec4<u32>(8763u, 44704u, arg_1.x, 0u), !vec4<bool>(false, arg_0.x, false, true)) ^ ~abs(vec4<u32>(u_input.a, 1u, arg_3.d.x, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(34260u, var_1.x, 4294967295u, arg_3.d.x), vec4<u32>(arg_1.x, 14303u, 68170u, 1u)), ~1u, 22478u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 0u, 1u, u_input.a), vec4<u32>(35552u, 4294967295u, var_1.x, u_input.a))), ~select(vec4<u32>(54644u, 4294967295u, 0u, 53789u), vec4<u32>(u_input.a, u_input.a, arg_3.d.x, var_1.x), vec4<bool>(false, true, true, true))), !select(!vec4<bool>(true, arg_0.x, false, false), select(vec4<bool>(true, true, arg_0.x, true), vec4<bool>(arg_3.c.x, false, arg_2.x, arg_0.x), vec4<bool>(arg_2.x, arg_3.c.x, arg_0.x, false)), select(arg_3.c.x, arg_0.x, true))) << (_wgslsmith_mod_vec4_u32(select(~vec4<u32>(0u, 1u, 0u, arg_1.x), _wgslsmith_sub_vec4_u32(min(vec4<u32>(51510u, arg_3.d.x, arg_3.d.x, u_input.a), vec4<u32>(4294967295u, var_1.x, arg_3.d.x, u_input.a)), ~vec4<u32>(u_input.a, arg_3.d.x, u_input.a, 0u)), true), max(firstLeadingBit(vec4<u32>(135773u, var_1.x, 34459u, 1u)), vec4<u32>(arg_1.x, ~arg_3.d.x, arg_3.d.x, abs(16708u)))) % vec4<u32>(32u));
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(-2147483647i, 38295i)), vec2<i32>(0i, 8336i) << (var_1.zz % vec2<u32>(32u)), vec2<i32>(2147483647i, -33505i)), vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(1i, min(1i, -16378i)), -1i, firstLeadingBit(~(-1i))), firstLeadingBit(-_wgslsmith_sub_i32(-2147483647i, 0i))));
    let var_3 = 362i;
    return StorageBuffer(arg_3.b.xyx, var_3, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1160f, arg_3.b.x, 112f))))) - _wgslsmith_f_op_vec3_f32(-arg_3.b.yww))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-495f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(843f - 1f))), _wgslsmith_f_op_f32(-415f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-2111f, 433f, true)), 1396f, var_0 <= 68800u)) - 876f)), -528f, 1842f);
    let x = u_input.a;
    s_output = func_4(vec3<bool>(!(true && any(vec3<bool>(true, false, false))), all(vec2<bool>(true, true)), false), vec2<u32>(_wgslsmith_sub_u32(0u, 22353u | max(18552u, u_input.a)), u_input.a), !func_1(vec2<i32>(1i, 1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1077f, var_1.x, var_1.x, var_1.x) - vec4<f32>(-508f, var_1.x, -1000f, 1213f)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f)))), vec4<f32>(-743f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(1368f, 564f))), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1250f)) - 560f)), !select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(false, true), true), _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(61270u, 1u), vec2<u32>(u_input.a, 81038u)), firstTrailingBit(vec2<u32>(14862u, 4294967295u))), _wgslsmith_add_vec2_u32(vec2<u32>(27545u, u_input.a), vec2<u32>(112566u, 35245u)) & vec2<u32>(var_0, 0u), firstTrailingBit(~vec2<u32>(1u, u_input.a)))));
}

