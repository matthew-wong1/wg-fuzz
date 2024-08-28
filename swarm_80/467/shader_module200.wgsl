struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: f32) -> vec2<u32> {
    let var_0 = abs(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(7398i, 1i, 2147483647i, 7764i), vec4<i32>(arg_0.c.x, 2147483647i, 1i, u_input.c.x) & vec4<i32>(0i, arg_0.c.x, -17358i, -25462i)), _wgslsmith_add_vec4_i32(max(vec4<i32>(19264i, 6496i, -15710i, arg_0.c.x), vec4<i32>(-45666i, 26691i, u_input.c.x, -2147483647i)), vec4<i32>(u_input.c.x, arg_0.c.x, u_input.c.x, arg_0.c.x))), vec4<i32>(_wgslsmith_clamp_i32(-22163i, -arg_0.c.x, ~1i), _wgslsmith_dot_vec3_i32(select(arg_0.c, vec3<i32>(u_input.c.x, u_input.c.x, arg_0.c.x), true), vec3<i32>(2147483647i, u_input.c.x, arg_0.c.x)), -1i, arg_0.c.x)));
    var var_1 = _wgslsmith_f_op_f32(-arg_0.b.x);
    var var_2 = -countOneBits(vec4<i32>(18802i, var_0, ~(-1i >> (u_input.a.x % 32u)), abs(arg_0.c.x << (arg_0.a.x % 32u))));
    var var_3 = Struct_3(reverseBits(~vec2<u32>(0u, u_input.b.x) ^ ~reverseBits(u_input.b.zx)), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.b.x * arg_0.b.x), 934f)))), -649f, _wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(step(arg_0.b.x, _wgslsmith_f_op_f32(-317f * arg_0.b.x))))), max(vec3<i32>((i32(-1i) * -23891i) & var_0, i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(u_input.c, u_input.c)), _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_2.x, arg_0.c.x, 0i), arg_0.c), vec3<i32>(var_2.x, 13472i, _wgslsmith_mult_i32(var_2.x, 28553i)))));
    var var_4 = Struct_1(arg_0.c.x != 2147483647i, 774f, ~arg_0.a | u_input.d, vec2<bool>(!((var_0 == arg_0.c.x) == true), true));
    return abs(~(~var_3.a));
}

fn func_2(arg_0: bool) -> Struct_3 {
    var var_0 = u_input.d & abs(u_input.d);
    var_0 = firstLeadingBit(firstLeadingBit(~select(func_3(Struct_3(u_input.a.zy, vec3<f32>(-596f, 1765f, -1554f), vec3<i32>(1i, u_input.c.x, u_input.c.x)), 1762f), u_input.d & vec2<u32>(4294967295u, 97042u), select(vec2<bool>(true, true), vec2<bool>(true, arg_0), vec2<bool>(arg_0, false)))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -755f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(min(901f, -1414f)), select(true, false, any(vec4<bool>(true, arg_0, arg_0, true))))));
    var_0 = vec2<u32>(4294967295u, _wgslsmith_dot_vec2_u32(select(vec2<u32>(_wgslsmith_mod_u32(0u, var_0.x), 2952u), vec2<u32>(reverseBits(31827u), ~u_input.a.x), arg_0), ~vec2<u32>(_wgslsmith_div_u32(var_0.x, var_0.x), 30947u)));
    var var_2 = var_1;
    return Struct_3(~vec2<u32>(max(var_0.x, u_input.b.x) << (max(u_input.b.x, 20568u) % 32u), select(func_3(Struct_3(u_input.a.zz, vec3<f32>(var_1, 1138f, 339f), vec3<i32>(u_input.c.x, u_input.c.x, 1i)), 1312f).x, 1u, arg_0)), vec3<f32>(var_1, 550f, _wgslsmith_f_op_f32(sign(-343f))), ~(~vec3<i32>(2147483647i, -1i, u_input.c.x) ^ -firstLeadingBit(vec3<i32>(u_input.c.x, u_input.c.x, -1i))));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: Struct_3, arg_3: vec2<u32>) -> StorageBuffer {
    let var_0 = false;
    var var_1 = func_2(all(vec4<bool>(any(!vec2<bool>(arg_0, arg_0)), var_0, !(!var_0), true)));
    let var_2 = Struct_3(~firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(78025u, arg_2.a.x), vec2<u32>(4835u, arg_2.a.x)) | arg_2.a), arg_2.b, arg_2.c & (var_1.c | vec3<i32>(_wgslsmith_sub_i32(10912i, 34467i), u_input.c.x, arg_2.c.x)));
    let var_3 = func_2(any(select(vec4<bool>(arg_0, var_0, !var_0, arg_0), vec4<bool>(true, false, true, true), select(vec4<bool>(arg_0, var_0, var_0, false), !vec4<bool>(var_0, arg_0, var_0, false), arg_1 < u_input.c.x))));
    var var_4 = all(!select(select(!vec2<bool>(arg_0, true), vec2<bool>(var_0, arg_0), 1160f <= var_1.b.x), !(!vec2<bool>(arg_0, false)), vec2<bool>(false, !arg_0)));
    return StorageBuffer(~(~var_1.a), vec2<i32>(-62414i >> (~(~var_1.a.x) % 32u), min(~(-33298i), 2147483647i)), reverseBits(18340u), ~(-reverseBits(1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(false, -(i32(-1i) * -2147483647i), Struct_3(abs(vec2<u32>(u_input.b.x, u_input.b.x)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-613f, 716f, -1029f)))))), reverseBits(select(vec3<i32>(u_input.c.x, 0i, u_input.c.x) ^ vec3<i32>(u_input.c.x, 13242i, 16439i), ~vec3<i32>(u_input.c.x, -31665i, u_input.c.x), true))), countOneBits(u_input.b.yz));
}

