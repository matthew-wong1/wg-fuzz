struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<f32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> vec3<i32> {
    var var_0 = select(!select(vec3<bool>(true, any(vec3<bool>(false, true, true)), 2147483647i >= u_input.a), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true), vec3<bool>(true, select(true, !(u_input.a != u_input.a), false), any(vec3<bool>(true, true, true))), vec3<bool>(all(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), true)), false, !(_wgslsmith_dot_vec4_i32(vec4<i32>(35328i, u_input.a, 3336i, u_input.a), vec4<i32>(-22562i, -1276i, u_input.a, u_input.a)) >= min(u_input.a, u_input.a))));
    let var_1 = _wgslsmith_mod_vec3_i32(max(_wgslsmith_mod_vec3_i32(max(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-1i, u_input.a, -59469i))), vec3<i32>(-1i << (1u % 32u), u_input.a, u_input.a)), countOneBits(vec3<i32>(u_input.a, countOneBits(u_input.a) >> (1u % 32u), select(-2147483647i, -11246i, false))));
    var_0 = select(select(!vec3<bool>(true, var_0.x, var_0.x | false), !(!vec3<bool>(var_0.x, var_0.x, var_0.x)), true | var_0.x), !vec3<bool>(true, var_0.x, var_0.x), any(vec4<bool>(!var_0.x, any(select(vec3<bool>(false, false, true), vec3<bool>(var_0.x, var_0.x, false), var_0.x)), true, var_0.x)));
    var_0 = !vec3<bool>(true, !(var_0.x & var_0.x), u_input.a >= -1i);
    var var_2 = var_0.x;
    return select(select(var_1 | min(var_1, vec3<i32>(u_input.a, 65719i, var_1.x) << (vec3<u32>(26446u, 4294967295u, 1u) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_i32(min(reverseBits(vec3<i32>(var_1.x, 2147483647i, -21286i)), vec3<i32>(u_input.a, -2147483647i, u_input.a) << (vec3<u32>(4294967295u, 1u, 43158u) % vec3<u32>(32u))), firstTrailingBit(_wgslsmith_mult_vec3_i32(var_1, vec3<i32>(var_1.x, 1i, 2147483647i))), ~vec3<i32>(u_input.a, var_1.x, 1450i) ^ max(var_1, var_1)), select(select(vec3<bool>(false, true, var_0.x), !vec3<bool>(false, var_0.x, true), !vec3<bool>(var_0.x, false, var_0.x)), vec3<bool>(true, true, true), select(select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, true, var_0.x), false), vec3<bool>(false, true, var_0.x), select(vec3<bool>(var_0.x, false, true), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, var_0.x, true))))), ~(~(vec3<i32>(u_input.a, var_1.x, var_1.x) << (vec3<u32>(52845u, 4294967295u, 76814u) % vec3<u32>(32u)))) | vec3<i32>(u_input.a, 1i, 1i), select(select(!select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, true, var_0.x)), vec3<bool>(true, !var_0.x, var_0.x), !vec3<bool>(var_0.x, var_0.x, var_0.x)), !vec3<bool>(all(vec4<bool>(var_0.x, false, true, var_0.x)), select(var_0.x, true, true), true), !(!(!vec3<bool>(true, var_0.x, var_0.x)))));
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -424f))), _wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(floor(1960f))) - vec3<f32>(_wgslsmith_f_op_f32(1349f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(arg_0))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-162f - arg_0)))), arg_0));
    let var_1 = ~select(_wgslsmith_mult_vec2_u32(reverseBits(min(vec2<u32>(11476u, 4294967295u), vec2<u32>(39894u, 8388u))), vec2<u32>(1u, 0u)), abs(vec2<u32>(1u, 1u)), false);
    let var_2 = ~(~vec4<u32>(~var_1.x, 36324u, _wgslsmith_add_u32(_wgslsmith_add_u32(var_1.x, 0u), ~0u), ~var_1.x & var_1.x));
    var var_3 = ~abs(func_3());
    var var_4 = _wgslsmith_sub_u32(_wgslsmith_add_u32(var_2.x, 51010u), var_1.x);
    return Struct_1(-2147483647i & _wgslsmith_sub_i32(_wgslsmith_sub_i32(-9825i, -var_3.x), _wgslsmith_mult_i32(-var_3.x, 40980i)));
}

fn func_1() -> bool {
    let var_0 = vec2<bool>(!all(vec2<bool>(all(vec3<bool>(true, true, true)), false)), any(vec2<bool>(!any(vec2<bool>(false, true)), true)));
    var var_1 = Struct_2(Struct_1(-21959i), func_2(-956f), Struct_1(countOneBits(~(~u_input.a))), firstTrailingBit(vec2<i32>(_wgslsmith_mult_i32(0i, -2147483647i), -39865i) | vec2<i32>(-u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(51875i, 1i, u_input.a, 2147483647i), vec4<i32>(677i, u_input.a, u_input.a, -43390i)))));
    let var_2 = var_1.b;
    let var_3 = func_3();
    var var_4 = 0i;
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(24474u, abs(1u), any(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), true), vec2<bool>(true, true), vec2<bool>(true, true))));
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 427f, -2514f))))));
    var var_2 = vec4<bool>(select(false, (i32(-1i) * -u_input.a) != u_input.a, true), all(select(vec2<bool>(u_input.a < u_input.a, true), vec2<bool>(true, u_input.a <= 1i), vec2<bool>(true, false))), !func_1(), all(select(vec3<bool>(any(vec3<bool>(true, false, true)), true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)))));
    var var_3 = _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(floor(var_1.x)), true));
    var var_4 = _wgslsmith_dot_vec2_u32(~countOneBits(vec2<u32>(4294967295u, 15578u)) << (~select(firstTrailingBit(vec2<u32>(35055u, 4294967295u)), vec2<u32>(4294967295u, 4294967295u), false) % vec2<u32>(32u)), min(vec2<u32>(min(_wgslsmith_dot_vec3_u32(vec3<u32>(41532u, 1u, 1u), vec3<u32>(267u, 4294967295u, 4294967295u)), ~1u), 1u), firstTrailingBit(vec2<u32>(countOneBits(9887u), 1u))));
    let var_5 = Struct_2(Struct_1(-50659i), func_2(var_1.x), func_2(_wgslsmith_div_f32(-694f, _wgslsmith_f_op_f32(-var_1.x))), vec2<i32>(~(~u_input.a << (~0u % 32u)), firstTrailingBit(u_input.a) & u_input.a));
    var var_6 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1 - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_1), _wgslsmith_f_op_vec3_f32(round(var_1)), !vec3<bool>(var_2.x, var_2.x, var_2.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1)))));
    var_2 = !vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_6.x)) - _wgslsmith_div_f32(368f, 391f)) <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1315f)))), var_2.x, all(vec3<bool>(var_2.x, true, var_2.x)), all(!select(vec4<bool>(var_2.x, var_2.x, var_2.x, true), vec4<bool>(false, var_2.x, true, false), vec4<bool>(var_2.x, var_2.x, false, var_2.x))));
    var var_7 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(abs(select(vec4<u32>(max(4294967295u, 9035u), _wgslsmith_add_u32(18655u, 3505u), select(49639u, 4294967295u, var_2.x), 4294967295u), vec4<u32>(_wgslsmith_clamp_u32(19692u, 4294967295u, 4294967295u), _wgslsmith_mod_u32(43742u, 740u), _wgslsmith_dot_vec2_u32(vec2<u32>(55809u, 73030u), vec2<u32>(3159u, 1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(17961u, 29295u, 139u), vec3<u32>(29017u, 1u, 60157u))), select(var_2.x, false, var_2.x))), (_wgslsmith_mult_i32(12787i, u_input.a >> (1u % 32u)) << (3784u % 32u)) & var_5.c.a, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1988f, -532f, var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_6.x, var_6.x, var_1.x, 1608f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_6.x, 2205f, var_6.x, var_1.x), vec4<f32>(var_6.x, var_6.x, -241f, var_6.x))) - _wgslsmith_div_vec4_f32(vec4<f32>(208f, var_1.x, var_1.x, 111f), vec4<f32>(var_6.x, var_6.x, 266f, 747f)))))), -vec3<i32>(2147483647i, 14071i, var_5.b.a), _wgslsmith_f_op_f32(trunc(var_6.x)));
}

