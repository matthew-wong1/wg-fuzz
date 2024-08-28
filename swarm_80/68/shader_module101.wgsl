struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: f32,
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

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32, arg_3: vec2<i32>) -> vec4<bool> {
    var var_0 = vec3<i32>(-1i) * -vec3<i32>(-5598i, 21023i, i32(-1i) * -arg_3.x);
    var var_1 = Struct_2(arg_0.a, vec3<bool>(arg_0.b.x || true, !select(arg_0.b.x, arg_0.b.x, true), true));
    let var_2 = vec4<i32>(~(12768i >> (~4294967295u % 32u)), _wgslsmith_sub_i32(~(~arg_2), 1i), -2147483647i, -(~_wgslsmith_sub_i32(1i, min(u_input.d, u_input.d))));
    var var_3 = vec3<i32>(-61290i, u_input.d | _wgslsmith_sub_i32(reverseBits(-u_input.d), max(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.x, 6808i, 1i), var_2.zxx), -23191i)), _wgslsmith_mult_i32(~2147483647i, ~_wgslsmith_mult_i32(var_2.x, var_0.x) >> ((max(u_input.a.x, 62666u) >> (~0u % 32u)) % 32u)));
    var_0 = var_2.yzx;
    return select(!select(select(!vec4<bool>(var_1.b.x, true, arg_0.b.x, true), select(vec4<bool>(false, var_1.b.x, false, arg_0.b.x), vec4<bool>(true, var_1.b.x, arg_0.b.x, var_1.b.x), vec4<bool>(false, true, var_1.b.x, false)), false), select(vec4<bool>(var_1.b.x, var_1.b.x, false, true), select(vec4<bool>(arg_0.b.x, false, var_1.b.x, true), vec4<bool>(arg_0.b.x, arg_0.b.x, var_1.b.x, var_1.b.x), vec4<bool>(true, true, arg_0.b.x, arg_0.b.x)), vec4<bool>(true, true, true, true)), select(!vec4<bool>(true, var_1.b.x, true, var_1.b.x), !vec4<bool>(var_1.b.x, arg_0.b.x, arg_0.b.x, var_1.b.x), !vec4<bool>(false, var_1.b.x, false, var_1.b.x))), select(!(!(!vec4<bool>(false, false, arg_0.b.x, var_1.b.x))), vec4<bool>(u_input.c.x >= ~1u, true, false, var_1.b.x & var_1.b.x), select(vec4<bool>(var_1.b.x && false, false, true, true), !select(vec4<bool>(arg_0.b.x, arg_0.b.x, false, var_1.b.x), vec4<bool>(var_1.b.x, true, arg_0.b.x, arg_0.b.x), var_1.b.x), !(!vec4<bool>(true, var_1.b.x, false, true)))), all(!select(vec4<bool>(false, true, var_1.b.x, true), vec4<bool>(arg_0.b.x, true, false, true), true)));
}

fn func_2() -> vec2<i32> {
    var var_0 = vec4<bool>(!(!((1u >= u_input.c.x) & all(vec3<bool>(false, false, false)))), false, !any(vec2<bool>(true, true)), true);
    let var_1 = var_0.x;
    var_0 = !select(!select(!vec4<bool>(false, var_0.x, true, var_0.x), !vec4<bool>(var_0.x, var_0.x, var_0.x, false), true), select(func_3(Struct_2(Struct_1(-1503f), vec3<bool>(true, var_0.x, false)), Struct_1(582f), firstTrailingBit(u_input.d), vec2<i32>(-2147483647i, 0i) >> (vec2<u32>(u_input.c.x, u_input.a.x) % vec2<u32>(32u))), !vec4<bool>(var_0.x, var_0.x, true, true), all(vec4<bool>(false, var_0.x, var_0.x, true))), select(!select(vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, true)), !vec4<bool>(true, var_0.x, var_0.x, var_0.x), !(!vec4<bool>(true, var_0.x, false, var_0.x))));
    let var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1024f, 543f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(899f)), -489f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(868f, 809f, false))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1740f, -479f, -1230f, -1000f) * vec4<f32>(-631f, 301f, 251f, 394f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -291f), -1545f, -680f, _wgslsmith_f_op_f32(f32(-1f) * -596f)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(var_2))));
    return ~reverseBits(min(~vec2<i32>(u_input.d, u_input.d), vec2<i32>(-22967i ^ u_input.d, ~u_input.d)));
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(645f * -1981f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-707f))) * -290f)));
    var var_1 = _wgslsmith_mult_vec2_i32(func_2(), _wgslsmith_mod_vec2_i32(-firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, u_input.d), vec2<i32>(9333i, -18171i))), _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-817i, -23469i), vec2<i32>(u_input.d, 24082i) << (u_input.c.zx % vec2<u32>(32u))), vec2<i32>(u_input.d, 1i))));
    var_1 = firstTrailingBit(_wgslsmith_sub_vec2_i32(firstLeadingBit(firstTrailingBit(firstTrailingBit(vec2<i32>(-9354i, -2147483647i)))), vec2<i32>(1i, _wgslsmith_mod_i32(var_1.x, u_input.d)) ^ vec2<i32>(~1i, _wgslsmith_add_i32(u_input.d, -2147483647i))));
    var var_2 = Struct_3(min(~_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, -2147483647i, u_input.d), vec3<i32>(-6658i, u_input.d, var_1.x), vec3<i32>(var_1.x, 11001i, -1i)), select(vec3<i32>(var_1.x, 12802i, u_input.d), vec3<i32>(-2147483647i, 1i, 57349i), true)), -vec3<i32>(max(1040i, 7587i), u_input.d, min(var_1.x, var_1.x))), -firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(var_1.x, -1i, 2147483647i) ^ vec3<i32>(var_1.x, 1i, u_input.d), min(vec3<i32>(16842i, -1i, var_1.x), vec3<i32>(34915i, 2147483647i, 27993i)))), i32(-1i) * -u_input.d, vec4<i32>(i32(-1i) * -18916i, _wgslsmith_add_i32(-47762i, u_input.d), 13203i, 35555i));
    return Struct_2(Struct_1(575f), vec3<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, 27695i), var_2.a.zx) < reverseBits(abs(-2147483647i)), false, false));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: bool, arg_3: u32) -> Struct_1 {
    let var_0 = select(!func_3(Struct_2(Struct_1(arg_1.a.a), vec3<bool>(true, arg_1.b.x, arg_1.b.x)), func_1(min(11655u, 68625u)).a, firstTrailingBit(_wgslsmith_div_i32(u_input.d, u_input.d)), vec2<i32>(-34429i, _wgslsmith_div_i32(-2147483647i, -2147483647i))), vec4<bool>(true, true, true, true), false);
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(583f, arg_1.a.a) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(267f)))) + _wgslsmith_f_op_f32(select(-191f, -1574f, true)))), 414f, func_1(~arg_3).b.x));
    var var_2 = reverseBits(~vec4<u32>(min(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, arg_3, arg_3), u_input.b), 938u), arg_3, 1u, _wgslsmith_mult_u32(max(85698u, 0u), reverseBits(u_input.a.x))));
    let var_3 = Struct_3(countOneBits(vec3<i32>(-1i) * -(~vec3<i32>(u_input.d, u_input.d, 17932i))), vec3<i32>(_wgslsmith_div_i32(~(-2649i), countOneBits(u_input.d)), _wgslsmith_add_i32(countOneBits(reverseBits(1i)), -countOneBits(-27961i)), _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.d, -2147483647i), _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, -9122i), vec2<i32>(u_input.d, u_input.d))) >> (~52452u % 32u)), 2147483647i, vec4<i32>(_wgslsmith_mult_i32(~_wgslsmith_mod_i32(u_input.d, u_input.d), 0i), firstTrailingBit(_wgslsmith_dot_vec2_i32(~vec2<i32>(38901i, u_input.d), reverseBits(vec2<i32>(u_input.d, 25359i)))), abs(countOneBits(select(3137i, -2147483647i, arg_2))), abs(-1i)));
    var_2 = countOneBits(u_input.b);
    return func_1(4294967295u).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.ww | _wgslsmith_add_vec2_u32(u_input.c.yx, ~u_input.a);
    let var_1 = ~u_input.b.x;
    let var_2 = Struct_2(func_4(-1380f, func_1(countOneBits(countOneBits(3253u))), false, _wgslsmith_mult_u32(u_input.c.x & var_1, ~_wgslsmith_clamp_u32(85206u, 0u, var_1))), vec3<bool>(true, any(vec4<bool>(true, true, true, true)), !select(true, false, true)));
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1019f))))));
    var_0 = u_input.b.zz;
    var var_4 = 0u;
    var var_5 = Struct_3(_wgslsmith_mod_vec3_i32(vec3<i32>(~u_input.d, 20907i, 0i), min(select(-vec3<i32>(-13825i, -1i, u_input.d), ~vec3<i32>(-1i, u_input.d, u_input.d), !var_2.b.x), ~vec3<i32>(-37692i, 2147483647i, -51469i))), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(-19825i << (var_1 % 32u), ~(-9463i)), u_input.d), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.d, _wgslsmith_div_i32(u_input.d, 13807i), max(-1i, u_input.d)), ~vec4<i32>(-67210i, u_input.d, 15289i, u_input.d)), 0i), -2147483647i, _wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.d, 1i, u_input.d), max(abs(_wgslsmith_add_vec4_i32(vec4<i32>(0i, -2147483647i, u_input.d, -1i), vec4<i32>(-27242i, -14727i, -1i, 1i))), vec4<i32>(-u_input.d, -49318i, max(-1i, 903i), _wgslsmith_mult_i32(u_input.d, u_input.d)))));
    var var_6 = Struct_3(~_wgslsmith_mod_vec3_i32(vec3<i32>(abs(u_input.d), -var_5.c, -2147483647i), select(var_5.a, _wgslsmith_mod_vec3_i32(vec3<i32>(var_5.c, -2147483647i, u_input.d), vec3<i32>(-1i, 14834i, 6168i)), select(var_2.b, var_2.b, vec3<bool>(true, var_2.b.x, var_2.b.x)))), var_5.a, 2147483647i, ~_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(abs(var_5.d), _wgslsmith_div_vec4_i32(vec4<i32>(var_5.c, var_5.d.x, -1i, -46853i), vec4<i32>(u_input.d, var_5.a.x, u_input.d, u_input.d))), vec4<i32>(-var_5.c, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, -9592i), vec2<i32>(1i, var_5.b.x)), -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, 31876i, 9945i), var_5.d.xyw))));
    let x = u_input.a;
    s_output = StorageBuffer(min(~(~vec3<u32>(u_input.a.x, var_0.x, u_input.b.x) << (_wgslsmith_mult_vec3_u32(u_input.c, u_input.c) % vec3<u32>(32u))), select(firstLeadingBit(firstLeadingBit(vec3<u32>(76206u, 1u, u_input.a.x))), ~vec3<u32>(var_1, 41341u, 20654u), var_2.b.x)), reverseBits(48107u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1602f)) + var_2.a.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-255f + var_3))), false))));
}

