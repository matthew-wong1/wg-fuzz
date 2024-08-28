struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> bool {
    let var_0 = Struct_1(_wgslsmith_mod_u32(reverseBits(u_input.b.x), ~42377u), true, all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)))), _wgslsmith_f_op_f32(306f - _wgslsmith_f_op_f32(1986f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-187f)) * _wgslsmith_f_op_f32(min(-1304f, 2009f))))), 30550i);
    let var_1 = _wgslsmith_dot_vec4_i32(-vec4<i32>(_wgslsmith_mod_i32(var_0.e, ~u_input.a), -2147483647i, _wgslsmith_mult_i32(1i, -53963i), -(24337i << (var_0.a % 32u))), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(firstLeadingBit(~vec4<i32>(1i, var_0.e, u_input.a, -2147483647i)), vec4<i32>(u_input.a | u_input.a, var_0.e, countOneBits(0i), u_input.a)), -(~vec4<i32>(0i, -15360i, 12932i, var_0.e)) ^ ((vec4<i32>(-29574i, u_input.a, 2954i, var_0.e) >> (vec4<u32>(var_0.a, 32068u, 19592u, u_input.b.x) % vec4<u32>(32u))) >> (~vec4<u32>(u_input.b.x, 38578u, 4294967295u, 36965u) % vec4<u32>(32u)))));
    let var_2 = !select(select(select(vec2<bool>(var_0.b, true), select(vec2<bool>(false, true), vec2<bool>(true, true), var_0.b), !vec2<bool>(var_0.b, false)), vec2<bool>(var_0.b, all(vec2<bool>(var_0.c, var_0.b))), all(!vec2<bool>(true, var_0.b))), !(!select(vec2<bool>(false, var_0.b), vec2<bool>(var_0.c, false), vec2<bool>(false, var_0.c))), vec2<bool>(!var_0.c, _wgslsmith_dot_vec3_u32(vec3<u32>(23230u, var_0.a, var_0.a), vec3<u32>(8719u, 4294967295u, u_input.b.x)) >= _wgslsmith_clamp_u32(0u, 1u, 0u)));
    var var_3 = Struct_1(select(~var_0.a, (abs(1u) << (_wgslsmith_mod_u32(var_0.a, var_0.a) % 32u)) & countOneBits(u_input.b.x), _wgslsmith_mod_u32(~14283u, firstTrailingBit(1781u)) >= 1u), var_0.c == false, any(select(!select(vec4<bool>(false, false, var_2.x, var_2.x), vec4<bool>(false, var_0.c, var_2.x, var_2.x), false), !select(vec4<bool>(var_0.c, true, false, false), vec4<bool>(false, false, true, var_2.x), vec4<bool>(false, var_0.c, var_2.x, true)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d + _wgslsmith_f_op_f32(floor(-321f))) + _wgslsmith_f_op_f32(-var_0.d)), var_0.e);
    var var_4 = ~var_3.e | 28674i;
    return true;
}

fn func_2() -> f32 {
    var var_0 = abs(vec3<i32>(-32731i, 1i, -1i));
    var_0 = -(~(-(~vec3<i32>(u_input.a, 1i, 1i))) ^ (min(vec3<i32>(62222i, 18067i, u_input.a) & vec3<i32>(-14017i, u_input.a, -21830i), vec3<i32>(-15533i, 3262i, 0i)) & -vec3<i32>(2147483647i, u_input.a, var_0.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1405f, 250f, -354f))))));
    var var_2 = Struct_1(13116u, select(!(!select(false, false, false)), false, !(!func_3())), false, -176f, i32(-1i) * -1i);
    var_0 = ~select(abs(vec3<i32>(_wgslsmith_dot_vec2_i32(var_0.xx, vec2<i32>(42498i, -15788i)), 32215i, var_0.x)), ~firstTrailingBit(~vec3<i32>(-97i, 1i, var_0.x)), !(!vec3<bool>(true, true, var_2.b)));
    return var_1.x;
}

fn func_1(arg_0: Struct_1) -> vec2<i32> {
    let var_0 = vec4<f32>(arg_0.d, -637f, arg_0.d, _wgslsmith_f_op_f32(-782f + arg_0.d));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(func_2()), u_input.b.x > arg_0.a))), _wgslsmith_f_op_f32(235f + _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(var_0.x - 339f))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(min(var_1, var_0.wy));
    var var_3 = Struct_1(_wgslsmith_div_u32(abs(min(u_input.b.x, 0u)), 8671u) | ~min(~arg_0.a, reverseBits(u_input.b.x)), !(!all(select(vec3<bool>(false, arg_0.c, false), vec3<bool>(true, false, true), false))), any(!select(select(vec2<bool>(false, arg_0.b), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, true), arg_0.b)), _wgslsmith_f_op_f32(-199f * _wgslsmith_f_op_f32(1735f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.d))))), -_wgslsmith_sub_i32(1i, firstLeadingBit(arg_0.e)));
    var_3 = arg_0;
    return -_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(44706i, 1i), ~(vec2<i32>(var_3.e, arg_0.e) & vec2<i32>(u_input.a, u_input.a))), vec2<i32>(u_input.a, _wgslsmith_clamp_i32(var_3.e, 1i, u_input.a)));
}

fn func_4(arg_0: vec2<i32>) -> u32 {
    let var_0 = select(select(select(vec4<bool>(all(vec2<bool>(false, false)), any(vec3<bool>(false, true, true)), true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(func_3(), true, true, true), any(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), false))), vec4<bool>(!func_3(), any(vec2<bool>(true, any(vec2<bool>(true, true)))), !(true || all(vec3<bool>(true, false, true))), select(!(u_input.b.x == 1u), true, all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), true)))), any(select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), all(vec4<bool>(false, true, false, false))), vec2<bool>(select(true, true, true), true), any(vec2<bool>(true, true)))));
    var var_1 = Struct_1(min(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(u_input.b.x, 14902u, 4294967295u)), vec3<u32>(u_input.b.x, 65543u, 0u), ~vec3<u32>(u_input.b.x, u_input.b.x, 57285u)), countOneBits(~vec3<u32>(u_input.b.x, 1u, u_input.b.x))), 29495u), abs(~u_input.b.x) > _wgslsmith_div_u32(~42614u, _wgslsmith_sub_u32(u_input.b.x, ~u_input.b.x)), !select(!var_0.x | (u_input.b.x < 0u), all(vec2<bool>(false, true)), false), 779f, arg_0.x);
    var var_2 = max(~(vec4<i32>(_wgslsmith_clamp_i32(u_input.a, -2147483647i, var_1.e), -arg_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_1.e, u_input.a), vec3<i32>(arg_0.x, var_1.e, arg_0.x)), func_1(Struct_1(4294967295u, var_1.c, false, -860f, -28129i)).x) | ~(~vec4<i32>(arg_0.x, 57963i, 1i, -13088i))), -min(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_1.e, var_1.e, var_1.e, arg_0.x), vec4<i32>(0i, arg_0.x, var_1.e, -1i)), vec4<i32>(-43915i, u_input.a, 0i, u_input.a), min(vec4<i32>(-1i, arg_0.x, arg_0.x, 17957i), vec4<i32>(var_1.e, var_1.e, -80898i, -27187i))), vec4<i32>(-1251i, arg_0.x, u_input.a, countOneBits(-1i))));
    let var_3 = Struct_1(~(~1u), !var_1.b, true, var_1.d, var_1.e);
    var var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.d) + _wgslsmith_f_op_f32(var_1.d - var_1.d)), var_1.d)), var_1.d) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(753f, 906f, var_3.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_3.d)) * _wgslsmith_div_f32(var_3.d, -619f)))));
    return ~(15466u ^ countOneBits(_wgslsmith_div_u32(firstLeadingBit(var_1.a), reverseBits(u_input.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_dot_vec4_u32(max(~vec4<u32>(4294967295u, 4806u, 94547u, 6421u) | min(vec4<u32>(u_input.b.x, 63072u, 5607u, 0u), vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x)), max(countOneBits(vec4<u32>(4294967295u, u_input.b.x, 96208u, u_input.b.x)), vec4<u32>(0u, 1u, u_input.b.x, 1u))), vec4<u32>(u_input.b.x >> (u_input.b.x % 32u), _wgslsmith_div_u32(~39095u, u_input.b.x), u_input.b.x, 7605u)), any(vec4<bool>(true, ~u_input.b.x <= u_input.b.x, true, false)), true, _wgslsmith_f_op_f32(1f * -1446f), u_input.a ^ ~(~1i));
    var var_1 = Struct_1(~_wgslsmith_mult_u32(_wgslsmith_sub_u32(14479u, 0u & u_input.b.x), 4294967295u), true, _wgslsmith_sub_u32(4294967295u, 5510u) < u_input.b.x, var_0.d, -87776i);
    var_1 = Struct_1(_wgslsmith_mult_u32(~(~u_input.b.x), func_4(~func_1(Struct_1(1u, var_0.c, var_0.c, var_1.d, 12448i)))), 1u <= ~(var_1.a << (18566u % 32u)), (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)) >= _wgslsmith_f_op_f32(-var_1.d)) | (_wgslsmith_f_op_f32(func_2()) < -623f), var_1.d, 1i & (min(~(-21362i), var_0.e) | u_input.a));
    let var_2 = Struct_1(u_input.b.x, func_3(), select((false & var_0.c) | func_3(), var_1.d >= var_0.d, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -841f))), var_1.d)) + 1814f), -var_1.e >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(14115u, var_1.a, 302u, var_1.a), abs(vec4<u32>(var_1.a, var_0.a, var_0.a, var_1.a) << (vec4<u32>(var_1.a, u_input.b.x, var_0.a, 4294967295u) % vec4<u32>(32u)))) % 32u));
    var var_3 = select(select(select(!vec3<bool>(var_2.c, true, var_2.b), vec3<bool>(all(vec3<bool>(false, true, var_0.b)), true, !var_2.c), select(select(vec3<bool>(false, false, true), vec3<bool>(var_1.b, false, true), vec3<bool>(true, var_0.b, false)), vec3<bool>(true, var_0.c, true), select(vec3<bool>(true, var_2.b, true), vec3<bool>(var_0.c, var_0.b, false), vec3<bool>(var_2.b, false, var_1.b)))), vec3<bool>(false, any(select(vec3<bool>(var_2.b, false, false), vec3<bool>(true, true, var_2.b), var_0.c)), false), !select(!vec3<bool>(var_2.b, var_0.b, var_2.c), vec3<bool>(var_1.b, false, false), !vec3<bool>(false, true, var_1.b))), !select(vec3<bool>(any(vec3<bool>(false, var_2.c, false)), false, var_0.b), !vec3<bool>(var_1.c, true, var_2.b), vec3<bool>(any(vec4<bool>(true, true, var_2.c, var_1.b)), any(vec2<bool>(var_0.c, var_2.c)), false)), var_1.c);
    let var_4 = ~_wgslsmith_mult_vec2_i32(-vec2<i32>(1i, _wgslsmith_clamp_i32(var_2.e, var_1.e, var_0.e)), -_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.e, u_input.a), vec2<i32>(var_2.e, 56372i)) & max(countOneBits(vec2<i32>(-1i, var_0.e)), vec2<i32>(1i, 1i)));
    var_3 = vec3<bool>(!var_1.b, var_2.b, !all(var_3.yz));
    var var_5 = Struct_1(1u << (~u_input.b.x % 32u), true, true, -842f, var_2.e | (-16588i & (var_0.e & (-50365i >> (0u % 32u)))));
    var_3 = vec3<bool>(var_0.b, all(!select(select(vec4<bool>(true, var_5.b, var_2.b, var_5.b), vec4<bool>(false, var_3.x, var_1.c, var_3.x), var_3.x), !vec4<bool>(var_0.c, false, true, true), var_1.c)), !func_3());
    let x = u_input.a;
    s_output = StorageBuffer(select(-(vec2<i32>(-1i) * -vec2<i32>(-1i, -10259i)), ~_wgslsmith_div_vec2_i32(var_4, var_4) | var_4, var_3.zy), vec4<u32>(~_wgslsmith_mult_u32(0u, var_1.a), 1u, max(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(0u, 30849u)), var_0.a), ~(~u_input.b.x)) ^ select(vec4<u32>(var_0.a, 0u >> (var_0.a % 32u), abs(70200u), _wgslsmith_clamp_u32(1u, 2674u, var_0.a)), ~vec4<u32>(84280u, 4294967295u, 38550u, 0u), (var_0.b != var_2.c) | (16461i > u_input.a)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(0i, 7194i, 4209i), vec3<i32>(var_2.e, 14147i, -19478i) ^ ~vec3<i32>(1i, u_input.a, 0i)), 0i), vec2<u32>(select(min(_wgslsmith_clamp_u32(20366u, var_5.a, 4294967295u), func_4(vec2<i32>(var_5.e, 1i))), ~4294967295u, false), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(26470u, 13917u), vec2<u32>(var_5.a, var_1.a), _wgslsmith_clamp_vec2_u32(u_input.b, u_input.b, vec2<u32>(var_1.a, 1u))), ~_wgslsmith_add_vec2_u32(vec2<u32>(1u, 55367u), vec2<u32>(var_0.a, 83539u)))));
}

