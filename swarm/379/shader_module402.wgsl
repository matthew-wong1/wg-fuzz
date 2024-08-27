struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: f32,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_3,
    d: i32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> i32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-593f, -324f, 645f, -1126f), vec4<f32>(231f, 2013f, 216f, 2165f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(467f, 1611f, 1891f, 2028f))), arg_0.a.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-507f, -378f, 800f, -640f) - vec4<f32>(393f, -195f, -480f, 592f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-216f, 1013f, -268f, 338f)))), -_wgslsmith_sub_vec3_i32(~vec3<i32>(-2147483647i, 25540i, arg_1), vec3<i32>(arg_1, arg_1, arg_1)) | -vec3<i32>(1i, -4916i, _wgslsmith_div_i32(1i, arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(f32(-1f) * -324f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1311f))))), select(!select(vec3<bool>(false, arg_0.a.x, false), arg_0.a, vec3<bool>(arg_0.a.x, false, false)), vec3<bool>(false, firstTrailingBit(u_input.d) == 1u, 4294967295u < _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 12278u, 9609u, 4294967295u), vec4<u32>(0u, u_input.d, u_input.b.x, u_input.b.x))), arg_0.a.x), Struct_1(arg_0.a));
    var var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.a.x)), -287f, -1196f, 1639f), _wgslsmith_add_vec3_i32(var_0.b, u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), !arg_0.a, Struct_1(!select(select(vec3<bool>(var_0.d.x, arg_0.a.x, var_0.e.a.x), arg_0.a, arg_0.a.x), !vec3<bool>(false, arg_0.a.x, arg_0.a.x), !var_0.d)));
    let var_2 = var_1.d.x;
    var_1 = var_0;
    let var_3 = u_input.d & 25409u;
    return var_0.b.x;
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_sub_i32(countOneBits(u_input.c.x), func_3(Struct_1(vec3<bool>(true, true, true)), countOneBits(_wgslsmith_div_i32(1i, u_input.c.x))));
    var var_1 = select(select(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), true)), vec4<bool>(true, all(vec4<bool>(true, true, true, true)), false, false), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true)), vec4<bool>(-36361i >= countOneBits(_wgslsmith_sub_i32(2147483647i, u_input.c.x)), 626f < _wgslsmith_f_op_f32(sign(-445f)), all(vec3<bool>(true, u_input.e < u_input.e, any(vec4<bool>(true, true, true, true)))), true), !(!vec4<bool>(u_input.c.x > u_input.a.x, true, any(vec3<bool>(false, false, false)), true)));
    let var_2 = ~select(~(~vec2<u32>(u_input.b.x, u_input.e)), abs(u_input.b), all(vec2<bool>(true, !var_1.x)));
    let var_3 = Struct_1(select(select(var_1.xwz, !var_1.yww, !(!var_1.x)), select(vec3<bool>(var_1.x, select(true, var_1.x, true), any(vec4<bool>(false, false, false, var_1.x))), select(vec3<bool>(false, true, var_1.x), select(var_1.xww, vec3<bool>(true, false, false), var_1.yzy), !vec3<bool>(var_1.x, var_1.x, false)), false), vec3<bool>(!any(vec2<bool>(var_1.x, false)), true, true)));
    var_0 = -939i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(327f * 212f), _wgslsmith_f_op_f32(-2366f + -1000f))) - 1530f));
}

fn func_1() -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1828f, 510f, 260f, 489f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-754f, -1000f, 1869f, -621f) + vec4<f32>(1076f, 170f, 550f, 1374f))))))), abs(abs(~u_input.c) & vec3<i32>(u_input.c.x, -u_input.a.x, -1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(684f + -275f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), -1521f))), select(select(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), select(vec3<bool>(false, true, false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), all(vec2<bool>(true, true)))), !vec3<bool>(any(vec4<bool>(true, true, false, true)), all(vec2<bool>(true, false)), true), true), Struct_1(select(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true))));
    var var_1 = ~select(abs(vec4<i32>(u_input.c.x, -2147483647i, u_input.c.x, var_0.b.x) >> (vec4<u32>(0u, u_input.b.x, u_input.e, u_input.b.x) % vec4<u32>(32u))) << (vec4<u32>(1u, ~u_input.d, ~u_input.b.x, u_input.d << (u_input.b.x % 32u)) % vec4<u32>(32u)), vec4<i32>(0i, i32(-1i) * -35116i, -u_input.a.x, countOneBits(_wgslsmith_mod_i32(var_0.b.x, 10946i))), select(var_0.e.a.x && true, all(select(vec4<bool>(var_0.d.x, true, var_0.d.x, true), vec4<bool>(var_0.d.x, var_0.e.a.x, false, false), true)), false == all(vec4<bool>(var_0.e.a.x, true, false, var_0.d.x))));
    let var_2 = Struct_4(var_0.e, var_0, Struct_3(!select(!vec4<bool>(var_0.e.a.x, var_0.d.x, var_0.e.a.x, var_0.e.a.x), vec4<bool>(false, var_0.d.x, false, var_0.d.x), !vec4<bool>(var_0.e.a.x, false, true, false)), vec3<f32>(-798f, 1623f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))), Struct_1(var_0.d), _wgslsmith_add_vec2_i32(-_wgslsmith_mod_vec2_i32(vec2<i32>(var_1.x, var_1.x), vec2<i32>(var_0.b.x, 6484i)), vec2<i32>(u_input.a.x, reverseBits(var_1.x)))), func_3(Struct_1(vec3<bool>(true, true, var_0.e.a.x)), -595i));
    var var_3 = (~max(select(vec4<u32>(u_input.e, 28164u, 66331u, u_input.d), vec4<u32>(u_input.e, 1u, u_input.d, 0u), var_2.c.a), ~vec4<u32>(u_input.b.x, u_input.e, 76809u, u_input.e)) | _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, _wgslsmith_sub_u32(59730u, 27222u), u_input.b.x ^ 0u, _wgslsmith_div_u32(u_input.b.x, u_input.e)), (vec4<u32>(u_input.b.x, u_input.e, 56u, u_input.b.x) & vec4<u32>(72547u, u_input.b.x, 1u, 16532u)) >> (~vec4<u32>(u_input.b.x, u_input.d, 18253u, 43087u) % vec4<u32>(32u)))) >> (vec4<u32>(4294967295u, ~(~0u), ~1u, u_input.e) % vec4<u32>(32u));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = any(select(vec3<bool>(true, false, func_1()), vec3<bool>(all(vec3<bool>(false, true, true)), false, false), select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), u_input.c.x != -1i))) || true;
    var_0 = func_1();
    var var_1 = Struct_4(Struct_1(vec3<bool>(true, true, all(vec2<bool>(true, true)))), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-265f, -1151f, 960f, -369f)))) + vec4<f32>(_wgslsmith_f_op_f32(-877f - 1229f), _wgslsmith_f_op_f32(-1558f - -771f), _wgslsmith_f_op_f32(-1000f + 479f), _wgslsmith_f_op_f32(144f * 530f))), ~_wgslsmith_div_vec3_i32(~vec3<i32>(-1i, u_input.a.x, -393i), vec3<i32>(46104i, u_input.c.x, u_input.a.x)), -1000f, !vec3<bool>(all(vec4<bool>(true, false, true, true)), true, all(vec3<bool>(false, false, true))), Struct_1(vec3<bool>(true, true, true))), Struct_3(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-736f, 735f, 1097f) * vec3<f32>(-486f, 373f, -1391f)) - vec3<f32>(2739f, -764f, -1312f))), Struct_1(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true)), firstTrailingBit(vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.c.yy, u_input.c.xz), ~u_input.a.x))), 1i);
    var_1 = Struct_4(Struct_1(vec3<bool>(true, var_1.c.c.a.x, var_1.c.c.a.x)), Struct_2(_wgslsmith_f_op_vec4_f32(sign(var_1.b.a)), max(~u_input.a << (~vec3<u32>(u_input.e, u_input.d, 0u) % vec3<u32>(32u)), var_1.b.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1595f))) * var_1.b.c), vec3<bool>(!var_1.b.d.x, all(var_1.c.a) && true, _wgslsmith_div_u32(u_input.b.x, u_input.e) > ~1u), var_1.a), Struct_3(var_1.c.a, vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-102f, var_1.c.b.x)))), -744f, -744f), Struct_1(select(var_1.b.d, vec3<bool>(false, var_1.b.d.x, var_1.b.e.a.x), u_input.d != u_input.e)), _wgslsmith_sub_vec2_i32((var_1.b.b.zy | vec2<i32>(-2147483647i, u_input.c.x)) & (u_input.c.xz >> (vec2<u32>(0u, 72402u) % vec2<u32>(32u))), vec2<i32>(0i ^ var_1.c.d.x, select(u_input.a.x, -20368i, var_1.c.a.x)))), -1i);
    var_1 = Struct_4(var_1.b.e, Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.b.x, 944f, _wgslsmith_f_op_f32(f32(-1f) * -719f), _wgslsmith_f_op_f32(floor(386f)))), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(13769i, 2147483647i, u_input.c.x), var_1.b.b) & var_1.b.b, vec3<i32>(_wgslsmith_div_i32(u_input.a.x, u_input.c.x), ~u_input.c.x, _wgslsmith_dot_vec2_i32(var_1.b.b.yy, var_1.c.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.b.c + 129f)))), !(!var_1.c.a.zxy), var_1.c.c), Struct_3(select(!var_1.c.a, !var_1.c.a, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1725f, 1408f, -248f) - vec3<f32>(-553f, var_1.c.b.x, 1420f)))), var_1.b.e, vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec2_i32(u_input.a.xz, firstLeadingBit(vec2<i32>(u_input.a.x, var_1.c.d.x))))), ~firstTrailingBit(_wgslsmith_mult_i32(26320i, -16089i) >> (~u_input.d % 32u)));
    var var_2 = !(!(!all(vec4<bool>(false, var_1.c.c.a.x, false, true)) && any(var_1.c.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-192f - var_1.b.c), 1389f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.b.a.x), _wgslsmith_f_op_f32(-var_1.c.b.x)))));
}

