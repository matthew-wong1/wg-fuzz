struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: i32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: u32, arg_3: vec4<u32>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -337f))), -1780f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f - 180f))), _wgslsmith_f_op_f32(ceil(-1000f)))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, 1f, 1f, 1f))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1240f)))) + 238f));
    var var_2 = max(abs(~48169u | u_input.e), ~(~_wgslsmith_add_u32(arg_2, arg_2)));
    var var_3 = arg_1;
    let var_4 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(var_0.zy, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-101f, 1000f), vec2<f32>(var_1, var_1))))))))));
    return var_3.b;
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_1(select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), func_3(vec4<i32>(2564i, u_input.b.x, u_input.d.x, u_input.b.x), Struct_1(vec3<bool>(true, false, false), vec3<bool>(true, true, false), 0i, u_input.b, vec3<i32>(u_input.b.x, u_input.b.x, 63560i)), _wgslsmith_mult_u32(0u, u_input.e), ~vec4<u32>(u_input.c, u_input.c, 15017u, u_input.a)), false), func_3(vec4<i32>(-1i) * -vec4<i32>(-1i, -51081i, u_input.b.x, u_input.d.x), Struct_1(vec3<bool>(false, false, true), vec3<bool>(true, true, true), ~u_input.b.x, countOneBits(u_input.b), vec3<i32>(u_input.d.x, 2698i, 1i) ^ vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x)), u_input.c >> (52735u % 32u), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 1u, 58206u), vec4<u32>(u_input.e, 4294967295u, u_input.e, u_input.a) << (vec4<u32>(u_input.e, u_input.a, u_input.e, u_input.c) % vec4<u32>(32u)))), !vec3<bool>(any(vec4<bool>(false, false, false, true)), true, any(vec3<bool>(false, false, true)))), vec3<bool>(true, true, true), u_input.b.x, select(-firstLeadingBit(_wgslsmith_div_vec3_i32(u_input.d, u_input.d)), select(-vec3<i32>(2147483647i, u_input.b.x, u_input.b.x) ^ (u_input.b | vec3<i32>(u_input.d.x, u_input.d.x, u_input.b.x)), ~_wgslsmith_sub_vec3_i32(u_input.b, u_input.b), true), func_3(~(-vec4<i32>(0i, u_input.b.x, 1i, 45715i)), Struct_1(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), 1i, countOneBits(vec3<i32>(u_input.b.x, -3684i, u_input.b.x)), countOneBits(u_input.d)), ~(u_input.c | u_input.c), vec4<u32>(u_input.e, ~1u, u_input.a ^ u_input.a, 4294967295u))), -vec3<i32>(-u_input.d.x, 2147483647i, -firstTrailingBit(u_input.b.x)));
    var var_1 = select(vec4<bool>(var_0.a.x, true, true, var_0.b.x), select(vec4<bool>(!(!var_0.a.x), true, true, any(vec2<bool>(true, true))), select(vec4<bool>(true, any(vec2<bool>(true, var_0.b.x)), true, true), !vec4<bool>(var_0.b.x, var_0.b.x, true, var_0.b.x), select(vec4<bool>(false, var_0.b.x, var_0.a.x, var_0.a.x), select(vec4<bool>(var_0.a.x, var_0.b.x, false, var_0.b.x), vec4<bool>(false, var_0.b.x, var_0.b.x, var_0.b.x), var_0.b.x), !vec4<bool>(var_0.b.x, true, false, false))), var_0.b.x), any(var_0.b.xz));
    var var_2 = _wgslsmith_clamp_vec4_i32(select(vec4<i32>(u_input.b.x, -(var_0.d.x | -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.d.x, var_0.e.x, u_input.d.x, -2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, -1i, u_input.b.x, -1i), vec4<i32>(-1i, 0i, u_input.d.x, u_input.b.x))), u_input.d.x), vec4<i32>(~_wgslsmith_dot_vec2_i32(var_0.e.zy, u_input.d.zx), var_0.e.x, -(u_input.b.x ^ -23536i), u_input.d.x), !(!select(vec4<bool>(true, false, var_0.b.x, var_0.b.x), vec4<bool>(var_0.b.x, var_0.b.x, var_1.x, var_0.a.x), vec4<bool>(var_0.a.x, false, var_1.x, var_1.x)))), vec4<i32>(~1i, ~min(1i, u_input.b.x) >> (u_input.c % 32u), var_0.d.x, ~_wgslsmith_clamp_i32(~0i, ~0i, u_input.d.x)), max(vec4<i32>(30230i, -4438i, var_0.c, 1i), _wgslsmith_mult_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(-2980i, -42228i, u_input.b.x, -8284i), vec4<i32>(-41112i, u_input.b.x, u_input.d.x, u_input.b.x)), firstTrailingBit(vec4<i32>(var_0.e.x, -1i, -1i, -2147483647i)))));
    var var_3 = var_0;
    let var_4 = var_1.x;
    return vec3<bool>(var_0.a.x, all(!vec2<bool>(false, !var_0.a.x)), !any(vec4<bool>(true != var_3.a.x, var_3.b.x, all(vec2<bool>(false, false)), var_3.b.x)));
}

fn func_1(arg_0: vec3<f32>) -> f32 {
    var var_0 = vec4<bool>(all(select(func_2(), vec3<bool>(true, true, true), func_2())), false, true, !(!select(true, true, true)));
    var var_1 = ~u_input.e;
    var_1 = u_input.a;
    var_0 = !vec4<bool>(var_0.x, arg_0.x <= 378f, var_0.x && true, ~countOneBits(u_input.c) >= u_input.e);
    let var_2 = Struct_1(var_0.xwz, vec3<bool>(-288f >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x * 385f), _wgslsmith_f_op_f32(-arg_0.x))), func_3(firstTrailingBit(~vec4<i32>(9509i, u_input.b.x, u_input.b.x, u_input.d.x)), Struct_1(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(true, false, var_0.x), u_input.b.x, _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.d.x), u_input.b), vec3<i32>(u_input.b.x, -1i, u_input.b.x)), _wgslsmith_div_u32(u_input.e, u_input.e >> (1u % 32u)), ~vec4<u32>(u_input.e, u_input.c, 1u, 39706u)).x, true), -28201i, u_input.d, max(~u_input.b, u_input.b));
    return arg_0.x;
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> f32 {
    var var_0 = Struct_1(arg_3.a, vec3<bool>(select((64692i << (1u % 32u)) >= (arg_2 >> (3140u % 32u)), func_2().x, !arg_3.b.x), !any(arg_3.b), arg_3.b.x), reverseBits(arg_2), u_input.d, select(firstTrailingBit(max(vec3<i32>(-2147483647i, 1i, u_input.d.x), u_input.b)) >> (select(~vec3<u32>(u_input.c, 4294967295u, 21077u), abs(vec3<u32>(u_input.e, u_input.a, u_input.c)), arg_3.a.x) % vec3<u32>(32u)), ~min(~arg_3.d, vec3<i32>(arg_3.e.x, -2147483647i, 1i) << (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))), select(arg_3.a, arg_3.a, select(func_2(), !vec3<bool>(false, arg_3.b.x, false), false))));
    let var_1 = true;
    var var_2 = select(abs(vec3<u32>(1u, 33626u, 1u) << (vec3<u32>(104435u, u_input.e, u_input.a) % vec3<u32>(32u))) >> (_wgslsmith_div_vec3_u32(select(vec3<u32>(1189u, 1u, u_input.e), vec3<u32>(u_input.e, 7674u, u_input.a), vec3<bool>(arg_3.b.x, var_0.a.x, true)), countOneBits(vec3<u32>(0u, u_input.c, 10833u))) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(~select(vec3<u32>(24587u, 1371u, 2209u), vec3<u32>(u_input.a, u_input.e, u_input.a), vec3<bool>(true, true, arg_3.a.x)), ~(~vec3<u32>(10726u, 1u, 1u))), !(!(!vec3<bool>(var_0.a.x, var_1, false)))) << (vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(26293u, u_input.e), u_input.e), max(_wgslsmith_clamp_u32(31724u, 104186u, u_input.c), 11293u)), 4294967295u, _wgslsmith_mult_u32(u_input.e, _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 23244u), ~vec2<u32>(4294967295u, 9987u)))) % vec3<u32>(32u));
    var var_3 = true;
    var_2 = vec3<u32>(~13523u, ~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.e, 1u, 0u, 66733u)), firstTrailingBit(~vec4<u32>(1u, u_input.e, 4294967295u, u_input.a))), ~var_2.x);
    return -141f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(func_1(vec3<f32>(1531f, 284f, -376f))), -928f, -4041i, Struct_1(vec3<bool>(false, false, false), vec3<bool>(false, true, true), -1i, u_input.d, u_input.b))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-690f + -1624f)))))), _wgslsmith_f_op_f32(-1105f + _wgslsmith_f_op_f32(max(1000f, _wgslsmith_div_f32(-956f, 507f)))));
    let var_1 = Struct_1(vec3<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true)), !(!all(vec4<bool>(false, true, true, false))), select(func_3(vec4<i32>(-52886i, u_input.b.x, 5099i, u_input.d.x) & vec4<i32>(-12848i, 1i, -2147483647i, u_input.b.x), Struct_1(vec3<bool>(false, false, true), vec3<bool>(false, true, false), 1i, vec3<i32>(46861i, -1i, u_input.b.x), vec3<i32>(1i, 29353i, u_input.b.x)), firstLeadingBit(u_input.c), vec4<u32>(4294967295u, u_input.a, 33515u, u_input.e) & vec4<u32>(40023u, 0u, 4294967295u, 51682u)).x, any(func_3(vec4<i32>(u_input.d.x, 9004i, 1i, u_input.b.x), Struct_1(vec3<bool>(true, true, true), vec3<bool>(true, false, false), u_input.d.x, u_input.d, vec3<i32>(u_input.d.x, u_input.b.x, 1i)), u_input.c, vec4<u32>(28792u, u_input.a, 14822u, 2121u))), false)), !vec3<bool>(any(vec3<bool>(true, false, false)), true, true), u_input.d.x, _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(2147483647i, -2147483647i), _wgslsmith_clamp_i32(u_input.b.x, u_input.d.x, u_input.b.x), abs(u_input.b.x)) >> (_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.c, u_input.a), vec3<u32>(973u, 23743u, u_input.a)), vec3<u32>(0u, u_input.a, 4294967295u) << (vec3<u32>(0u, 24296u, u_input.c) % vec3<u32>(32u))) % vec3<u32>(32u)), u_input.d), ~u_input.d);
    var var_2 = var_1;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), -326f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-794f))))));
    let var_4 = vec3<u32>(4005u, _wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.e, u_input.e, 4294967295u) & vec4<u32>(1u, u_input.e, 1u, u_input.a), ~vec4<u32>(u_input.a, 0u, 9887u, 44687u))), firstLeadingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.e, u_input.a, u_input.e), vec4<u32>(u_input.a, u_input.e, 1u, u_input.c)))) >> (abs(firstLeadingBit(vec3<u32>(u_input.a, u_input.c, u_input.a))) % vec3<u32>(32u));
    let var_5 = var_0.xz;
    var var_6 = vec2<i32>(abs(-40504i), u_input.b.x << (33560u % 32u));
    var var_7 = _wgslsmith_f_op_vec3_f32(var_0 * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0, vec3<f32>(var_0.x, var_0.x, -278f)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-253f, -746f, 552f))))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_3 - vec3<f32>(var_5.x, var_0.x, var_0.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(var_4.x & u_input.e), ~vec4<u32>(var_4.x, var_4.x & 33781u, var_4.x, u_input.a) | abs(countOneBits(select(vec4<u32>(u_input.a, u_input.a, var_4.x, 53711u), vec4<u32>(1u, 0u, 13916u, var_4.x), vec4<bool>(true, false, true, var_1.b.x)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_7.x, var_5.x, var_7.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -113f, var_7.x, 1662f)) - vec4<f32>(325f, -153f, var_3.x, var_0.x)), var_2.b.x)))));
}

