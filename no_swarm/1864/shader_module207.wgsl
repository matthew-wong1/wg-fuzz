struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<u32>,
    d: vec2<u32>,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = u_input.a.yz;
    var var_1 = vec2<bool>(true, false);
    let var_2 = vec2<u32>(~42279u, u_input.b) >> (vec2<u32>(74175u >> (~(~u_input.b) % 32u), 29473u) % vec2<u32>(32u));
    var_1 = vec2<bool>(true, var_1.x);
    var_1 = vec2<bool>(0u > ~(_wgslsmith_mult_u32(1u, u_input.b) | u_input.b), var_1.x);
    return !(!vec2<bool>(all(vec3<bool>(var_1.x, false, var_1.x)), all(vec2<bool>(var_1.x, false))));
}

fn func_2(arg_0: vec2<i32>) -> Struct_3 {
    var var_0 = vec2<bool>(false, true);
    let var_1 = _wgslsmith_mult_i32(-2147483647i, _wgslsmith_dot_vec2_i32(u_input.a.xy, vec2<i32>(arg_0.x, u_input.a.x)));
    var var_2 = Struct_1(vec3<f32>(1613f, _wgslsmith_f_op_f32(f32(-1f) * -1213f), _wgslsmith_f_op_f32(abs(1197f))), _wgslsmith_f_op_f32(-163f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-204f, -1000f, var_0.x)))))));
    var_0 = func_3(Struct_1(vec3<f32>(-288f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.b))), _wgslsmith_div_f32(1707f, var_2.a.x)), _wgslsmith_f_op_f32(-var_2.b)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.b + _wgslsmith_f_op_f32(step(var_2.a.x, var_2.b))), var_2.b)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1087f, 128f, _wgslsmith_f_op_f32(-var_2.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.b, 970f)) + _wgslsmith_f_op_f32(trunc(-1029f))))));
    let var_3 = !select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, true), select(select(!vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, var_0.x), var_0.x), vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, !var_0.x)));
    return Struct_3(Struct_2(vec2<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.a.x), arg_0), _wgslsmith_dot_vec2_i32(-vec2<i32>(arg_0.x, var_1), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, var_1), arg_0))), ~(~vec3<u32>(u_input.b, u_input.b, u_input.b)), ~(firstTrailingBit(vec2<u32>(u_input.b, u_input.b)) ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(0u, 110023u), vec2<u32>(0u, u_input.b))), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(var_2.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_2.b)), var_2.b)))), select(arg_0.x ^ countOneBits(u_input.a.x), 29274i, select(false, select(var_3.x, true, var_3.x), true)) << (4294967295u % 32u), Struct_2(arg_0, min(vec3<u32>(u_input.b, ~0u, _wgslsmith_mult_u32(u_input.b, u_input.b)), vec3<u32>(u_input.b & u_input.b, 4514u, 14986u)), select(vec2<u32>(firstTrailingBit(13400u), ~6788u), ~vec2<u32>(u_input.b, u_input.b), !all(vec3<bool>(true, true, false))), Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(var_2.a, vec3<f32>(279f, var_2.b, 976f))), vec3<f32>(-1000f, var_2.a.x, var_2.b))), var_2.b)));
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: f32) -> vec4<f32> {
    var var_0 = _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(firstLeadingBit(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.x, 1i, arg_0.x, u_input.a.x), vec4<i32>(arg_0.x, arg_0.x, u_input.a.x, 1i)), ~vec4<i32>(24042i, arg_0.x, -33448i, u_input.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, -2147483647i, 14431i, u_input.a.x), vec4<i32>(0i, u_input.a.x, 51929i, u_input.a.x)))), vec4<i32>(-4072i, _wgslsmith_mult_i32(~u_input.a.x, reverseBits(31170i)), -2147483647i, firstTrailingBit(0i)), vec4<i32>(abs(-1i), i32(-1i) * -1i, u_input.a.x, _wgslsmith_div_i32(30559i, -2147483647i)) ^ -(~vec4<i32>(u_input.a.x, u_input.a.x, -61675i, arg_0.x))), (vec4<i32>(-u_input.a.x, -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -17256i, -19379i, -2147483647i), vec4<i32>(34539i, u_input.a.x, 0i, arg_0.x)), u_input.a.x) << (~_wgslsmith_mult_vec4_u32(vec4<u32>(20205u, 4294967295u, 0u, u_input.b), vec4<u32>(u_input.b, 0u, 48257u, 0u)) % vec4<u32>(32u))) ^ -_wgslsmith_add_vec4_i32(vec4<i32>(-1i, 2147483647i, u_input.a.x, 0i) ^ vec4<i32>(2147483647i, -31218i, -2147483647i, -2147483647i), vec4<i32>(arg_0.x, 13941i, 0i, 118133i)));
    let var_1 = vec4<f32>(-912f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - arg_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 * arg_1), _wgslsmith_f_op_f32(2810f * -1000f)))), 523f, 537f);
    var var_2 = func_2(abs(vec2<i32>(u_input.a.x, _wgslsmith_mult_i32(arg_0.x, 33716i))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_2.c.d.a))))), func_2(var_0.zy).c.d.a.x);
    let var_4 = _wgslsmith_f_op_f32(-207f + -515f) >= _wgslsmith_f_op_f32(var_2.c.d.a.x * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.x * 702f))));
    return vec4<f32>(var_3.b, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.d.a.x) * -659f)), _wgslsmith_f_op_f32(arg_1 - arg_1), _wgslsmith_f_op_f32(select(-408f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1)) * _wgslsmith_div_f32(arg_2, arg_2)), var_2.a.d.b, all(select(vec3<bool>(false, true, var_4), vec3<bool>(var_4, var_4, var_4), false)))), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, var_2.a.b.x, var_2.a.b.x, var_2.c.c.x), vec4<u32>(4294967295u, 85301u, var_2.a.c.x, u_input.b) | vec4<u32>(1u, 4294967295u, 11604u, 39490u)) == var_2.c.c.x)));
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = Struct_2(vec2<i32>(~abs(firstLeadingBit(arg_0.x)), countOneBits(_wgslsmith_add_i32(i32(-1i) * -35442i, _wgslsmith_dot_vec2_i32(u_input.a.zx, u_input.a.zx)))), ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, arg_1, 1280u) >> (vec3<u32>(arg_1, 34521u, u_input.b) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_1, 49580u, 15508u), vec3<u32>(0u, 1u, arg_1))), ~(~65704u), u_input.b), ~max(firstTrailingBit(vec2<u32>(arg_1, arg_1)) << (~vec2<u32>(arg_1, 4294967295u) % vec2<u32>(32u)), ~min(vec2<u32>(88399u, 66749u), vec2<u32>(4294967295u, arg_1))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-arg_2.yxw)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-738f)))));
    let var_1 = func_2(abs(countOneBits(~(vec2<i32>(arg_0.x, -1i) << (var_0.c % vec2<u32>(32u)))))).c.d;
    let var_2 = Struct_3(var_0, ~(~(-2147483647i)), Struct_2(select(~vec2<i32>(0i, arg_0.x), vec2<i32>(u_input.a.x, 7158i), u_input.a.x >= arg_0.x) ^ countOneBits(var_0.a), func_2(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.x, var_0.a.x), var_0.a, arg_0), vec2<i32>(var_0.a.x, var_0.a.x))).c.b, var_0.c, func_2(abs(u_input.a.xx)).a.d));
    let var_3 = Struct_3(Struct_2(~u_input.a.zy, var_0.b, var_0.b.xx, func_2(abs(_wgslsmith_clamp_vec2_i32(arg_0, vec2<i32>(1i, arg_0.x), u_input.a.xx))).a.d), _wgslsmith_dot_vec2_i32(~vec2<i32>(~var_2.c.a.x, u_input.a.x), func_2(var_2.a.a).c.a), Struct_2(countOneBits(-_wgslsmith_mult_vec2_i32(vec2<i32>(-42335i, arg_0.x), vec2<i32>(arg_0.x, arg_0.x))), vec3<u32>(30128u, ~36651u, 4294967295u) ^ _wgslsmith_add_vec3_u32(vec3<u32>(var_2.a.c.x, 4294967295u, 2913u), firstLeadingBit(vec3<u32>(var_0.c.x, 4629u, 67079u))), ~min(~var_0.b.xz, _wgslsmith_clamp_vec2_u32(var_0.b.yx, var_2.c.c, vec2<u32>(u_input.b, var_2.a.b.x))), Struct_1(_wgslsmith_f_op_vec3_f32(select(arg_2.wwy, _wgslsmith_f_op_vec3_f32(floor(var_1.a)), var_0.c.x == var_2.c.b.x)), var_1.b)));
    var var_4 = !(!all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), all(vec2<bool>(false, true)))));
    return var_3.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(firstTrailingBit(-_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, 18054i), firstTrailingBit(vec2<i32>(-1i, 25068i)))), _wgslsmith_mod_u32(~(~u_input.b), ~_wgslsmith_add_u32(~u_input.b, _wgslsmith_clamp_u32(29952u, 2476u, u_input.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(746f * -331f), -622f, 164f, _wgslsmith_f_op_f32(max(-438f, 963f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(u_input.a, -547f, 1261f)))))));
    var var_1 = vec2<i32>(-firstLeadingBit(var_0.a.x), -(13355i ^ reverseBits(max(var_0.a.x, var_0.a.x))));
    var_1 = -(~func_4(select(vec2<i32>(-48979i, -35091i), vec2<i32>(-1i, u_input.a.x), select(vec2<bool>(false, true), vec2<bool>(true, true), true)), _wgslsmith_dot_vec2_u32(var_0.b.yz, _wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(0u, u_input.b))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.d.a.x, var_0.d.b, var_0.d.b, -578f), vec4<f32>(var_0.d.a.x, -1493f, var_0.d.a.x, var_0.d.a.x))))).a);
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_0.d.a.x)))) * _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(ceil(1000f)))), -1850f, var_0.d.b), var_0.d.a.x);
    var var_3 = 0u;
    var var_4 = func_4(vec2<i32>(var_1.x, -15722i), countOneBits(_wgslsmith_mult_u32(_wgslsmith_div_u32(var_0.b.x, 810u), var_0.c.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-807f, -951f, var_2.b, var_0.d.a.x))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.a.x, var_2.b, _wgslsmith_f_op_f32(select(-547f, 338f, true)), var_0.d.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, var_0.d.b, -734f, var_0.d.b), vec4<f32>(var_2.a.x, var_0.d.a.x, var_2.a.x, var_0.d.b), false))), vec4<bool>(all(vec3<bool>(false, true, false)), var_2.a.x <= var_0.d.a.x, true, true))))).d;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(var_0.c.x & ~u_input.b, 20693u, var_0.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b * _wgslsmith_f_op_vec4_f32(func_1(u_input.a, -586f, 611f)).x)), _wgslsmith_f_op_f32(step(var_2.a.x, func_2(vec2<i32>(u_input.a.x, -16632i)).c.d.b))), vec4<u32>(_wgslsmith_sub_u32(min(reverseBits(4294967295u), var_0.c.x), var_0.b.x), 1u, u_input.b, var_0.b.x << (_wgslsmith_clamp_u32(~0u, u_input.b, func_2(vec2<i32>(27652i, 46736i)).a.b.x) % 32u)), vec2<u32>(u_input.b, 4294967295u));
}

