struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: f32,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<i32>, arg_1: bool) -> vec4<bool> {
    let var_0 = Struct_1(-arg_0.x & _wgslsmith_div_i32(37096i, u_input.b), !select(!select(vec3<bool>(true, arg_1, true), vec3<bool>(false, arg_1, arg_1), vec3<bool>(true, arg_1, false)), vec3<bool>(false, true, arg_1), true), _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.c.x, ~u_input.a, ~0u) << (~max(vec3<u32>(u_input.a, u_input.c.x, 4294967295u), vec3<u32>(u_input.c.x, 9858u, u_input.a)) % vec3<u32>(32u)), vec3<u32>(7998u, 23154u, 6374u)), 1000f);
    var var_1 = Struct_4(all(vec3<bool>(var_0.b.x, true, all(!vec4<bool>(false, false, false, arg_1)))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d))))));
    let var_2 = vec3<u32>(17048u, firstLeadingBit(~countOneBits(1u)) << (_wgslsmith_mult_u32(u_input.c.x, ~_wgslsmith_div_u32(var_0.c, 11916u)) % 32u), ~_wgslsmith_add_u32(~29947u, ~4294967295u));
    let var_3 = vec4<i32>(-1i, ~(~(-var_0.a)), 0i, -18237i);
    let var_4 = var_3.zxx;
    return select(!select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(var_0.b.x, var_0.b.x, true, false)), var_1.a, arg_1, true), false), vec4<bool>(all(var_0.b), u_input.c.x > _wgslsmith_dot_vec4_u32(vec4<u32>(13470u, var_2.x, 72352u, u_input.c.x), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, 40396u, u_input.a), vec4<u32>(39259u, u_input.c.x, 1u, 4294967295u))), all(var_0.b.zz), var_0.b.x), select(vec4<bool>(false, false, select(var_0.b.x, 20248u <= var_2.x, var_0.b.x), var_1.a), select(!vec4<bool>(false, var_0.b.x, arg_1, var_1.a), select(vec4<bool>(false, false, true, var_0.b.x), vec4<bool>(true, true, true, true), var_1.a), false), vec4<bool>(any(vec4<bool>(var_1.a, true, var_0.b.x, arg_1)) || !var_1.a, false, all(!vec3<bool>(var_1.a, var_1.a, true)), var_0.b.x)));
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> vec3<bool> {
    var var_0 = arg_0.e & (all(select(func_3(vec3<i32>(u_input.b, 2147483647i, arg_0.b), arg_0.e), vec4<bool>(arg_0.e, arg_0.e, arg_0.e, arg_0.e), false)) || true);
    var_0 = any(vec3<bool>(any(func_3(vec3<i32>(-26895i, 30811i, -24522i), false)), false, true)) && arg_0.e;
    var_0 = any(!vec2<bool>(!all(vec2<bool>(arg_0.e, arg_0.e)), arg_0.c == _wgslsmith_f_op_f32(min(arg_1, 142f))));
    var var_1 = !vec4<bool>(false, any(!vec4<bool>(false, true, arg_0.e, true)), true, all(!select(vec4<bool>(arg_0.e, true, false, false), vec4<bool>(false, arg_0.e, false, false), vec4<bool>(false, true, false, arg_0.e))));
    var var_2 = Struct_4(all(!vec4<bool>(true, arg_0.e, u_input.a >= u_input.c.x, all(vec2<bool>(var_1.x, arg_0.e)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1622f, 208f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-144f, -1000f)))) - vec2<f32>(_wgslsmith_f_op_f32(arg_0.c * arg_1), arg_1)), all(select(select(vec4<bool>(false, var_1.x, arg_0.e, arg_0.e), vec4<bool>(arg_0.e, var_1.x, arg_0.e, var_1.x), false), vec4<bool>(var_1.x, arg_0.e, true, false), !vec4<bool>(arg_0.e, arg_0.e, var_1.x, arg_0.e))))));
    return var_1.wxx;
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_3(max(-22476i, (u_input.b | _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 10077i, u_input.b, u_input.b), vec4<i32>(u_input.b, 25738i, 2147483647i, u_input.b))) << (u_input.c.x % 32u)), Struct_1(21303i, !select(vec3<bool>(true, false, true), func_2(Struct_2(-1i, -12554i, arg_0, 1i, true), arg_0), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false)), ~4294967295u, _wgslsmith_f_op_f32(-541f * arg_0)));
    return Struct_1(1i, select(vec3<bool>(!(50863u < var_0.b.c), true, func_3(vec3<i32>(-1334i, 55379i, 1i), -34815i >= u_input.b).x), var_0.b.b, any(select(!vec4<bool>(var_0.b.b.x, var_0.b.b.x, var_0.b.b.x, var_0.b.b.x), vec4<bool>(var_0.b.b.x, var_0.b.b.x, true, var_0.b.b.x), select(vec4<bool>(var_0.b.b.x, true, var_0.b.b.x, true), vec4<bool>(var_0.b.b.x, var_0.b.b.x, var_0.b.b.x, false), var_0.b.b.x)))), var_0.b.c << ((select(~0u, 55443u, true && var_0.b.b.x) & u_input.a) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-237f)) - var_0.b.d)));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-1242f, 351f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-679f - 502f)))))));
    var var_1 = -_wgslsmith_div_vec4_i32(abs(vec4<i32>(i32(-1i) * -32908i, abs(2147483647i), ~arg_3.a, arg_3.a)), vec4<i32>(_wgslsmith_add_i32(abs(arg_3.a), 1i), _wgslsmith_mod_i32(arg_3.a, abs(arg_3.a)), -u_input.b, -24142i));
    let var_2 = select(~min(~reverseBits(vec3<u32>(arg_3.c, 69340u, 72156u)), _wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(arg_1, u_input.a, 1u)), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, arg_3.c, u_input.a), vec3<u32>(1u, u_input.c.x, arg_1)))), vec3<u32>(~107695u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(9650u, arg_1)), ~arg_3.c), 43810u), false & arg_3.b.x);
    var_1 = firstLeadingBit(vec4<i32>(_wgslsmith_sub_i32(abs(i32(-1i) * -48878i), u_input.b), reverseBits(~(-33502i)), firstTrailingBit(1i), _wgslsmith_div_i32(firstLeadingBit(arg_3.a), -u_input.b)));
    var_1 = -vec4<i32>(~(~var_1.x) & _wgslsmith_mod_i32(u_input.b, arg_3.a), -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.a, u_input.b, u_input.b, var_1.x), ~vec4<i32>(var_1.x, arg_3.a, u_input.b, 30837i)), select(-(arg_3.a & var_1.x), -1i, true), -59085i);
    return firstTrailingBit(countOneBits(-var_1.xy));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!(!(!(22713i == u_input.b))), false, all(select(vec2<bool>(any(vec3<bool>(true, false, true)), false), vec2<bool>(false, true), true)));
    let var_1 = -18100i;
    var_0 = true;
    var_0 = false;
    var var_2 = select(!vec3<bool>(all(vec4<bool>(true, false, false, true)), true, true), select(vec3<bool>(firstTrailingBit(u_input.a) != ~4294967295u, false, true), vec3<bool>(true, true, true), ((1u >> (u_input.c.x % 32u)) ^ 4294967295u) != ~(~1u)), vec3<bool>(true, all(vec3<bool>(true, true, true)), true));
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1007f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-246f, 820f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(113f)) + -1112f)))) >= -1000f;
    let var_3 = var_2.xz;
    let var_4 = _wgslsmith_mod_vec2_i32(select(vec2<i32>(-(~u_input.b), ~(~var_1)), _wgslsmith_add_vec2_i32(vec2<i32>(12811i, max(2147483647i, u_input.b)), ~(vec2<i32>(2147483647i, var_1) | vec2<i32>(2147483647i, -7520i))), true), _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_1, firstTrailingBit(u_input.b)), firstTrailingBit(vec2<i32>(1i, -2147483647i))), -func_4(!var_3.x, 5711u, _wgslsmith_div_f32(-204f, 337f), func_1(1440f))));
    var var_5 = ~_wgslsmith_mod_vec2_u32(select(~vec2<u32>(u_input.a, 4294967295u), ~(vec2<u32>(u_input.c.x, u_input.a) << (vec2<u32>(u_input.a, u_input.c.x) % vec2<u32>(32u))), var_2.xy), _wgslsmith_add_vec2_u32(~(vec2<u32>(u_input.a, 4875u) & u_input.c), u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_dot_vec4_u32(max(vec4<u32>(var_5.x, 4294967295u, var_5.x, var_5.x), vec4<u32>(var_5.x, 42259u, u_input.c.x, u_input.c.x)), vec4<u32>(var_5.x, 0u, u_input.c.x, u_input.c.x)) & _wgslsmith_mult_u32(~u_input.a, u_input.c.x ^ 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(11507u, 46299u, 1u) & _wgslsmith_div_vec3_u32(vec3<u32>(var_5.x, 81249u, 1u), vec3<u32>(0u, var_5.x, 1u)), vec3<u32>(~u_input.c.x, _wgslsmith_mod_u32(120836u, u_input.a), _wgslsmith_add_u32(u_input.a, var_5.x))), ~(~var_5.x)), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -199f))).d, vec2<i32>(0i, u_input.b), 16714u);
}

