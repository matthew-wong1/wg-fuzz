struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_5, arg_3: Struct_5) -> vec3<f32> {
    let var_0 = vec3<i32>(arg_3.b, arg_2.b, -(min(8986i, arg_2.b) | (arg_3.b << (5087u % 32u))) & 1i);
    let var_1 = Struct_5(true, 0i);
    let var_2 = arg_1.c.c.x;
    var var_3 = max(select(select(arg_1.b.xxx, arg_1.d.a, false), arg_1.c.a, !(!arg_2.a) == var_1.a), ~arg_1.c.a);
    let var_4 = var_1;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.d.c.x, _wgslsmith_f_op_f32(f32(-1f) * -893f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.c.x * arg_1.d.c.x) + -2009f))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: bool) -> vec2<f32> {
    let var_0 = Struct_3(Struct_1(~_wgslsmith_mult_vec3_u32(select(vec3<u32>(u_input.a, 14015u, 0u), vec3<u32>(u_input.a, 4294967295u, u_input.a), true), countOneBits(vec3<u32>(u_input.a, 4294967295u, 1u))), false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.x, arg_0.x), arg_0.xy, vec2<bool>(arg_3, false))))))), Struct_2(~_wgslsmith_clamp_u32(min(7554u, 82610u), countOneBits(82760u), ~u_input.a), ~_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(64992u, u_input.a, u_input.a, 0u), vec4<u32>(4294967295u, 4294967295u, u_input.a, u_input.a)), vec4<u32>(58925u, u_input.a, 101231u, 53925u)), Struct_1(~vec3<u32>(0u, u_input.a, 45017u) ^ (vec3<u32>(68924u, 24734u, u_input.a) & vec3<u32>(u_input.a, u_input.a, 38112u)), arg_3, vec2<f32>(_wgslsmith_f_op_f32(min(arg_0.x, 469f)), _wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, arg_3)))), Struct_1(~vec3<u32>(0u, 897u, u_input.a), any(!vec2<bool>(false, arg_3)), vec2<f32>(-1770f, _wgslsmith_f_op_f32(-arg_0.x))), !select(vec2<bool>(arg_3, false), select(vec2<bool>(arg_3, arg_3), vec2<bool>(arg_3, true), vec2<bool>(arg_3, arg_3)), true)));
    let var_1 = Struct_5(arg_3, -52546i);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f))))), arg_0.x, var_0.b.d.c.x);
    var var_3 = firstLeadingBit(~(select(max(var_0.b.b, vec4<u32>(38667u, 0u, 1u, u_input.a)), var_0.b.b, select(vec4<bool>(var_0.b.c.b, var_1.a, true, arg_3), vec4<bool>(var_0.b.c.b, true, var_0.a.b, false), arg_3)) | vec4<u32>(_wgslsmith_mult_u32(var_0.a.a.x, 0u), _wgslsmith_mod_u32(u_input.a, var_0.b.c.a.x), 0u, abs(89005u))));
    var_3 = countOneBits(var_0.b.b);
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_2.yx - var_2.xz)))))));
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-175f, -222f) + vec2<f32>(792f, -473f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1405f, -751f), vec2<f32>(1000f, 867f), vec2<bool>(true, false)))), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1986f, -1340f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -2023f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec3_f32(func_3(vec2<u32>(4294967295u, 18965u), Struct_2(u_input.a, vec4<u32>(0u, u_input.a, 47130u, u_input.a), Struct_1(vec3<u32>(55961u, u_input.a, u_input.a), true, vec2<f32>(-1000f, 1000f)), Struct_1(vec3<u32>(u_input.a, u_input.a, u_input.a), true, vec2<f32>(-418f, -1882f)), vec2<bool>(true, false)), Struct_5(true, 2147483647i), Struct_5(true, 6961i))), vec4<i32>(8662i, 17297i, -43425i, 71963i), -vec3<i32>(2147483647i, 6171i, 0i), true))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 523f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(217f, var_0.x), vec2<f32>(1268f, -1240f), vec2<bool>(true, false)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -1685f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(441f, var_0.x)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -431f)), -222f))));
    let var_1 = ~(~vec3<u32>(min(4294967295u, 33143u), max(1u, u_input.a), u_input.a) ^ vec3<u32>(1u, firstTrailingBit(33518u), 34059u));
    let var_2 = select(i32(-1i) * -29502i, i32(-1i) * -73325i, !select(select(true, all(vec3<bool>(true, true, true)), all(vec2<bool>(true, true))), any(vec2<bool>(true, false)), false));
    let var_3 = firstLeadingBit(-_wgslsmith_clamp_vec2_i32(~(vec2<i32>(-5730i, 1i) ^ vec2<i32>(var_2, 0i)), ~min(vec2<i32>(var_2, 1i), vec2<i32>(-2147483647i, -23018i)), vec2<i32>(var_2, 1i & var_2)));
    return false;
}

fn func_1() -> vec2<f32> {
    var var_0 = vec4<bool>(!((u_input.a ^ 15167u) > _wgslsmith_add_u32(u_input.a, u_input.a)) || true, func_2(), all(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), false), true)), all(vec2<bool>(true, true)));
    var_0 = vec4<bool>(false, var_0.x, all(!select(vec4<bool>(false, false, var_0.x, false), vec4<bool>(var_0.x, false, true, true), vec4<bool>(var_0.x, var_0.x, false, false))) | (max(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(47030i, 5551i, -10224i), vec3<i32>(-2147483647i, 1i, 15741i))) == abs(i32(-1i) * -1i)), (abs(_wgslsmith_sub_i32(1i, 13003i)) < countOneBits(select(11592i, 17785i, var_0.x))) != !var_0.x);
    var var_1 = Struct_5(true, -_wgslsmith_mult_i32(1i, _wgslsmith_div_i32(~(-2147483647i), select(13724i, 0i, true))));
    var_0 = !select(select(select(select(vec4<bool>(var_0.x, var_1.a, false, var_0.x), vec4<bool>(false, var_1.a, true, true), false), vec4<bool>(true, true, true, true), !var_1.a), select(select(vec4<bool>(false, var_1.a, true, false), vec4<bool>(var_1.a, var_0.x, var_0.x, var_1.a), vec4<bool>(var_0.x, var_0.x, false, false)), !vec4<bool>(false, true, var_1.a, false), all(vec4<bool>(true, var_0.x, false, false))), all(var_0.ywz)), select(!select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(false, true, var_1.a, false)), vec4<bool>(func_2(), func_2(), var_1.a, true), true), true);
    let var_2 = !var_0.zy;
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(836f)) * 2109f)))), _wgslsmith_f_op_f32(-932f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_4(vec3<f32>(2572f, 609f, -1157f), vec4<i32>(-12850i, var_1.b, 2147483647i, var_1.b), vec3<i32>(var_1.b, var_1.b, var_1.b), var_2.x)).x))));
}

fn func_5(arg_0: vec2<f32>) -> StorageBuffer {
    let var_0 = arg_0;
    var var_1 = u_input.a;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1843f, arg_0.x, _wgslsmith_f_op_f32(-499f * 1668f)))))));
    var_2 = vec3<f32>(195f, var_0.x, _wgslsmith_div_f32(var_0.x, 996f));
    let var_3 = 4294967295u;
    return StorageBuffer(vec3<i32>(_wgslsmith_mod_i32(-1i, ~(-60525i)), 1i, _wgslsmith_mult_i32(abs(i32(-1i) * -40347i), 0i >> (u_input.a % 32u))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_2.x, var_0.x), _wgslsmith_f_op_f32(var_2.x + arg_0.x), all(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, -2633f, false)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_1()), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.x, 589f))), vec2<f32>(231f, var_0.x))), vec2<bool>(all(vec2<bool>(false, true)), true)))), vec2<i32>(1i, _wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_div_i32(-2147483647i, -12113i)), _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-1i, 0i)), select(vec2<i32>(2147483647i, 27043i), vec2<i32>(72488i, 0i), false)))), select(vec2<i32>(1i, 1i), _wgslsmith_div_vec2_i32(vec2<i32>(select(0i, -53484i, true), firstTrailingBit(-18558i)), vec2<i32>(1i, ~(-47232i))), !all(vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.zz)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1())));
}

