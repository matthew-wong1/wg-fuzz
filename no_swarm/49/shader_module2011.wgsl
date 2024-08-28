struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> i32 {
    var var_0 = Struct_1(!arg_0.a.a, arg_0.a.a.xz, arg_0.a.c);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-359f, _wgslsmith_f_op_f32(trunc(1681f)), _wgslsmith_f_op_f32(f32(-1f) * -1114f), var_0.c)))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.c, arg_0.a.c, 721f, arg_0.a.c), vec4<f32>(942f, arg_0.a.c, -304f, var_0.c))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -389f, arg_0.a.c, 1000f) * vec4<f32>(var_0.c, -1772f, arg_0.a.c, -176f))))))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(var_0.c * var_1.x)) - -813f) - _wgslsmith_f_op_f32(trunc(var_1.x))), 349f, _wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.a.c))))), 572f);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(floor(arg_0.a.c)), 1074f, 614f, arg_0.a.c);
    return _wgslsmith_dot_vec4_i32(countOneBits(reverseBits(vec4<i32>(u_input.e, u_input.e, u_input.b, 2147483647i)) >> (~firstLeadingBit(vec4<u32>(0u, 29658u, u_input.d.x, u_input.c.x)) % vec4<u32>(32u))), ~_wgslsmith_sub_vec4_i32(vec4<i32>(~u_input.e, abs(47844i), u_input.e, firstLeadingBit(-1i)), vec4<i32>(reverseBits(-6735i), -u_input.e, select(0i, u_input.b, false), abs(u_input.b))));
}

fn func_2(arg_0: bool, arg_1: vec4<f32>, arg_2: u32) -> vec4<bool> {
    var var_0 = u_input.c.x;
    var var_1 = !(!vec4<bool>(all(!vec2<bool>(arg_0, arg_0)), true, all(vec3<bool>(true, true, true)), (arg_2 < 4294967295u) | false));
    var var_2 = _wgslsmith_div_vec3_i32(((vec3<i32>(-1i) * -vec3<i32>(0i, -62936i, 30080i)) ^ firstTrailingBit(-vec3<i32>(u_input.a, -1i, u_input.a))) ^ (vec3<i32>(-1i) * -(vec3<i32>(u_input.b, u_input.a, -1i) << (u_input.c % vec3<u32>(32u)))), vec3<i32>(-1i, -u_input.b, u_input.a));
    var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(~u_input.e, (var_2.x ^ abs(6359i)) ^ -(~(-1i)), func_3(Struct_2(Struct_1(vec4<bool>(true, false, var_1.x, true), var_1.xy, arg_1.x), ~7449u), true)), firstTrailingBit(vec3<i32>(firstLeadingBit(u_input.e), -2147483647i, var_2.x)));
    var_1 = !vec4<bool>(arg_0, false, all(select(vec4<bool>(true, arg_0, true, arg_0), vec4<bool>(var_1.x, true, false, arg_0), vec4<bool>(var_1.x, false, var_1.x, var_1.x))) && var_1.x, select(any(select(var_1.xxz, vec3<bool>(true, true, true), false)), !(!arg_0), !var_1.x));
    return !(!select(vec4<bool>(arg_0, !arg_0, !arg_0, true), select(select(vec4<bool>(var_1.x, true, arg_0, false), vec4<bool>(true, true, arg_0, arg_0), false), !vec4<bool>(var_1.x, var_1.x, arg_0, true), any(vec4<bool>(arg_0, arg_0, false, arg_0))), !select(vec4<bool>(true, arg_0, arg_0, var_1.x), vec4<bool>(var_1.x, true, var_1.x, true), vec4<bool>(arg_0, arg_0, var_1.x, true))));
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_1(func_2(!any(vec3<bool>(true, true, true)), vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_dot_vec2_u32(vec2<u32>(26033u, 95311u) & vec2<u32>(u_input.d.x, 14518u), u_input.d)), vec2<bool>(true, true), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(432f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-598f, -1139f)), 255f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-323f * 651f))))));
    var var_1 = var_0;
    var_1 = var_0;
    var var_2 = var_0;
    let var_3 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, _wgslsmith_f_op_f32(sign(157f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1179f, var_1.c))))), -100f)));
    return Struct_2(Struct_1(vec4<bool>(!(var_1.b.x | var_0.a.x), any(select(vec2<bool>(true, false), var_2.a.yw, true)), any(var_0.a.xw), any(vec2<bool>(false, var_1.b.x))), var_1.a.ww, var_0.c), 53176u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = min(reverseBits(u_input.e), -22796i);
    var var_2 = _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, var_1) ^ _wgslsmith_div_vec2_i32(vec2<i32>(~(-1i), u_input.b), _wgslsmith_mult_vec2_i32(vec2<i32>(-1416i, 0i) >> (u_input.c.xz % vec2<u32>(32u)), -vec2<i32>(var_1, var_1))), _wgslsmith_add_vec2_i32(vec2<i32>(-10130i, u_input.a), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, var_1), -_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, var_1), vec2<i32>(u_input.a, u_input.e)))));
    var_2 = u_input.e;
    var var_3 = func_1();
    var_2 = -2147483647i;
    let var_4 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, var_0.a.c, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(47121i, ~var_1, -u_input.e)), _wgslsmith_mult_vec3_i32(vec3<i32>(min(u_input.b, var_1), u_input.a, u_input.a), ~vec3<i32>(-46506i, u_input.e, var_1))));
}

