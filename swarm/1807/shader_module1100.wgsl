struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec4<i32> {
    var var_0 = (countOneBits(~(u_input.b.x | u_input.b.x)) > reverseBits(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), abs(u_input.b.x)))) & true;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))) * vec4<f32>(-527f, _wgslsmith_f_op_f32(trunc(955f)), -1001f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-659f * -418f))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1000f)))))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -509f))))), _wgslsmith_f_op_f32(step(1000f, -117f)));
    var_0 = select(false, true, !((var_2.x != 654f) & true)) | any(vec4<bool>(true, all(vec2<bool>(true, true)), false, any(vec3<bool>(true, true, true))));
    var var_3 = true;
    return vec4<i32>(u_input.a, _wgslsmith_div_i32(-1i, _wgslsmith_dot_vec3_i32(~reverseBits(vec3<i32>(u_input.a, u_input.c, 10972i)), ~vec3<i32>(u_input.d.x, u_input.c, u_input.d.x) & -vec3<i32>(u_input.d.x, u_input.c, u_input.a))), _wgslsmith_mod_i32(2147483647i, -u_input.c), u_input.d.x);
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = u_input.b.xx;
    let var_2 = _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32((countOneBits(vec4<i32>(var_0.b, -4262i, var_0.b, arg_1.b)) & abs(vec4<i32>(0i, 2147483647i, -2147483647i, arg_1.b))) & (select(vec4<i32>(1i, arg_1.b, var_0.b, 0i), vec4<i32>(-45624i, -2147483647i, u_input.d.x, 1i), vec4<bool>(true, false, true, true)) & vec4<i32>(u_input.d.x, 32953i, u_input.c, var_0.b)), -vec4<i32>(0i, -1i, 1i, 1i) ^ ~vec4<i32>(1i, var_0.b, var_0.b, u_input.a), select(func_3(), ~vec4<i32>(arg_1.b, arg_1.b, arg_1.b, u_input.a), false)), vec4<i32>(-1i) * -vec4<i32>(select(var_0.b, var_0.b, false), -33783i ^ u_input.c, countOneBits(-2147483647i), u_input.c ^ -3491i));
    var var_3 = Struct_1(~abs(~vec4<u32>(arg_1.a.x, u_input.b.x, arg_1.a.x, var_0.a.x)), var_2.x | u_input.d.x);
    var_3 = arg_1;
    return Struct_1(var_3.a, select(u_input.a, ~_wgslsmith_sub_i32(arg_1.b, 58332i), arg_0) | ~1i);
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> f32 {
    let var_0 = func_2(!any(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)))), func_2(!(!any(vec4<bool>(false, false, false, false))), arg_0, true), true);
    var var_1 = var_0.b;
    var_1 = -(-14194i ^ _wgslsmith_sub_i32(-10404i >> (var_0.a.x % 32u), -1i)) | ~(-49866i);
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -218f, -1000f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1211f, 1260f, arg_1) + vec3<f32>(1467f, arg_1, arg_1))) - vec3<f32>(_wgslsmith_f_op_f32(sign(arg_1)), _wgslsmith_f_op_f32(sign(arg_1)), _wgslsmith_f_op_f32(arg_1 - arg_1)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(377f, -1000f, 376f))))))), false));
    var_1 = -26977i;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.x)) + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_2.x, var_2.x))));
}

fn func_1(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = Struct_1(_wgslsmith_mod_vec4_u32(select(~_wgslsmith_div_vec4_u32(arg_0.a, vec4<u32>(0u, u_input.b.x, 4294967295u, 20402u)), _wgslsmith_div_vec4_u32(arg_0.a, _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.a.x, 0u, 1u, u_input.b.x), vec4<u32>(4410u, 114494u, u_input.b.x, u_input.b.x), vec4<u32>(arg_0.a.x, 0u, 23934u, 90587u))), true), select(vec4<u32>(51232u, ~1u, abs(0u), ~43584u), ~(vec4<u32>(54451u, 7810u, 25180u, 78181u) >> (vec4<u32>(u_input.b.x, arg_0.a.x, 4294967295u, 1u) % vec4<u32>(32u))), vec4<bool>(select(true, true, false), true, true, true))), u_input.c);
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1205f + 496f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1794f + -511f)))), _wgslsmith_f_op_f32(351f * _wgslsmith_f_op_f32(func_4(func_2(true, arg_0, true), _wgslsmith_f_op_f32(f32(-1f) * -1645f)))), all(vec3<bool>(true, all(vec3<bool>(false, true, false)), 4668i > u_input.a))))));
    var_0 = func_2(!all(vec2<bool>(true, true)), func_2(true, func_2(false, Struct_1(arg_0.a, _wgslsmith_mod_i32(u_input.a, arg_0.b)), true), (i32(-1i) * -u_input.d.x) <= _wgslsmith_div_i32(533i, -2147483647i)), all(vec2<bool>(all(vec2<bool>(false, false)), !all(vec3<bool>(false, true, true)))));
    var var_2 = abs(0u);
    var var_3 = 78979u;
    return ~(~firstTrailingBit(_wgslsmith_div_vec3_u32(abs(var_0.a.xyw), countOneBits(vec3<u32>(4294967295u, arg_0.a.x, u_input.b.x)))));
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: vec3<u32>, arg_3: f32) -> Struct_1 {
    let var_0 = func_2(all(select(select(!vec2<bool>(arg_1, arg_1), !vec2<bool>(arg_1, true), all(vec2<bool>(arg_1, false))), select(vec2<bool>(false, arg_1), select(vec2<bool>(false, arg_1), vec2<bool>(arg_1, false), vec2<bool>(arg_1, true)), arg_1), !(!vec2<bool>(false, arg_1)))), Struct_1(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 116224u, arg_2.x), vec4<u32>(arg_2.x, arg_2.x, arg_0, u_input.b.x))), u_input.a), any(!(!select(vec2<bool>(arg_1, false), vec2<bool>(arg_1, true), vec2<bool>(false, arg_1)))));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 804f))));
    let var_2 = _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(-18713i, u_input.a, u_input.d.x, u_input.a), vec4<i32>(u_input.c, -21077i, var_0.b, -11821i) | (vec4<i32>(-12471i, u_input.a, 6413i, u_input.c) >> (vec4<u32>(41356u, arg_2.x, 0u, 7141u) % vec4<u32>(32u)))), _wgslsmith_mult_vec4_i32(vec4<i32>(~var_0.b, i32(-1i) * -1i, 1i, 2147483647i >> (arg_0 % 32u)), max(func_3(), vec4<i32>(var_0.b, u_input.a, var_0.b, u_input.a)))) >> (vec4<u32>(~_wgslsmith_mod_u32(~6045u, _wgslsmith_mod_u32(var_0.a.x, var_0.a.x)), _wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(u_input.b, var_0.a.yxw), arg_0), u_input.b.x, 41416u) % vec4<u32>(32u));
    let var_3 = 0u;
    let var_4 = var_0;
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var var_1 = -_wgslsmith_clamp_vec4_i32(~(-_wgslsmith_mod_vec4_i32(vec4<i32>(-67957i, -1i, u_input.d.x, u_input.c), vec4<i32>(2147483647i, 5631i, 9311i, u_input.c))), vec4<i32>(1i, -2147483647i, (48072i << (1u % 32u)) << (u_input.b.x % 32u), ~(u_input.c | 27862i)), vec4<i32>(_wgslsmith_add_i32(-u_input.d.x, -16469i), _wgslsmith_mod_i32(u_input.d.x, -71495i) & -37127i, -2147483647i, u_input.a));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-733f - -208f))) * 1055f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -568f) * _wgslsmith_f_op_f32(f32(-1f) * -320f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -780f) - _wgslsmith_f_op_f32(f32(-1f) * -735f))), 1f) - vec3<f32>(-784f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1002f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(284f - -893f)), ~u_input.b.x > countOneBits(u_input.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1257f + -702f))) + 1f)));
    var_0 = u_input.b.x;
    var var_3 = Struct_1(~(select(~vec4<u32>(u_input.b.x, 31976u, u_input.b.x, u_input.b.x), ~vec4<u32>(18011u, 61340u, u_input.b.x, u_input.b.x), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false))) ^ (vec4<u32>(1u, 27552u, 4294967295u, u_input.b.x) & _wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.b.x, 29070u), vec4<u32>(u_input.b.x, u_input.b.x, 0u, 4294967295u)))), -2147483647i);
    var var_4 = Struct_1(~vec4<u32>(3736u, u_input.b.x, ~4294967295u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.a.x, 50943u, 0u), var_3.a.zzw), 82439u << (1u % 32u))), ~_wgslsmith_div_i32(_wgslsmith_mod_i32(var_1.x | 1i, 2147483647i << (var_3.a.x % 32u)), i32(-1i) * -1i));
    var var_5 = var_2.x;
    var var_6 = func_5(u_input.b.x ^ 0u, !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -178f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * -1278f) - -1985f)), abs(func_1(Struct_1(var_3.a, _wgslsmith_dot_vec4_i32(vec4<i32>(5317i, -8370i, -26765i, var_4.b), vec4<i32>(var_1.x, -5033i, u_input.c, var_4.b))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1321f + var_2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_6.a.x, firstLeadingBit(countOneBits(~var_6.a.x)), ~var_3.a.x, ~_wgslsmith_dot_vec4_u32(var_4.a, vec4<u32>(1u, 1u, var_6.a.x, 36487u)) << (var_4.a.x % 32u)), vec4<i32>(-1i) * -select(vec4<i32>(var_6.b, var_4.b, var_1.x, 0i), vec4<i32>(var_6.b, var_1.x, var_3.b, var_1.x), true));
}

