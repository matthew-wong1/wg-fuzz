struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<i32>,
    d: f32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> vec3<i32> {
    let var_0 = -2147483647i;
    var var_1 = -790f;
    let var_2 = !vec4<bool>(true, select(select(false, true, false), !all(vec3<bool>(false, true, true)), all(vec4<bool>(true, true, true, true))), false, all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), 0i == u_input.c)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(278f, arg_0, true && var_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(step(-1034f, 542f))) - -323f))) * -828f);
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(788f - arg_0), _wgslsmith_f_op_f32(-arg_0)))));
    return vec3<i32>(2147483647i, _wgslsmith_div_i32(82976i, 1i << (0u % 32u)), _wgslsmith_add_i32(-2147483647i, countOneBits(u_input.c)));
}

fn func_2() -> Struct_1 {
    let var_0 = vec3<u32>(1u, u_input.d, u_input.d);
    return Struct_1(true, true == all(vec3<bool>(true, true, true)), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(175f, 322f) * -613f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1775f, -1000f)))))), _wgslsmith_div_f32(393f, 624f), vec2<u32>(~(~var_0.x) & u_input.b.x, _wgslsmith_clamp_u32(~u_input.b.x, _wgslsmith_mult_u32(u_input.b.x, u_input.b.x), ~37194u ^ ~var_0.x)));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    var_0 = func_2();
    var_0 = Struct_1(!((max(arg_0.e.x, 1u) ^ u_input.d) >= _wgslsmith_mult_u32(~56392u, var_0.e.x)), false, ~(abs(firstLeadingBit(var_0.c)) | ~vec3<i32>(-9087i, 1i, 7526i)), var_0.d, var_0.e);
    var var_1 = arg_0;
    var var_2 = ~var_0.c & (vec3<i32>(_wgslsmith_div_i32(firstLeadingBit(65302i), -25933i), var_0.c.x, _wgslsmith_mult_i32(select(-2147483647i, -1i, arg_0.a), u_input.a)) & _wgslsmith_clamp_vec3_i32(func_3(_wgslsmith_div_f32(var_1.d, var_0.d)), vec3<i32>(countOneBits(u_input.c), reverseBits(-18248i), 1i), _wgslsmith_sub_vec3_i32(firstLeadingBit(var_1.c), -vec3<i32>(1i, var_1.c.x, 0i))));
    return func_2();
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec4<i32>) -> vec3<i32> {
    var var_0 = func_4(func_2());
    var var_1 = Struct_1(true, false, abs(~reverseBits(_wgslsmith_mod_vec3_i32(arg_0.c, arg_2.yzw))), arg_1.x, arg_0.e);
    var_0 = func_2();
    let var_2 = _wgslsmith_mult_vec4_i32(reverseBits(~select(arg_2, countOneBits(vec4<i32>(arg_0.c.x, 52885i, u_input.a, arg_2.x)), !vec4<bool>(var_0.b, arg_0.a, true, arg_0.b))), -(~reverseBits(vec4<i32>(-1i, arg_2.x, -42815i, -1i))));
    var_0 = arg_0;
    return vec3<i32>(_wgslsmith_dot_vec4_i32(arg_2, -vec4<i32>(_wgslsmith_dot_vec2_i32(var_1.c.xy, var_0.c.yx), u_input.a, ~1i, -arg_0.c.x)), _wgslsmith_div_i32(var_2.x, 0i), func_3(_wgslsmith_f_op_f32(-745f + _wgslsmith_f_op_f32(f32(-1f) * -655f))).x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(func_1(Struct_1(true, false, vec3<i32>(u_input.c, 1i, u_input.a), -152f, u_input.b.xx), vec2<f32>(1000f, -1377f), max(vec4<i32>(-1i, -68642i, -2286i, 19385i), vec4<i32>(u_input.c, u_input.a, u_input.c, u_input.c))), min(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, u_input.c, u_input.a), vec3<i32>(u_input.a, u_input.c, -20562i)), min(vec3<i32>(-7772i, u_input.a, u_input.a), vec3<i32>(u_input.a, -34029i, u_input.a)))), vec3<i32>(-2147483647i, u_input.c, 1i) & vec3<i32>(u_input.a, u_input.a, _wgslsmith_clamp_i32(u_input.c, -13914i, 8i)));
    let var_1 = Struct_1(all(vec3<bool>(all(vec3<bool>(true, true, false)) || false, true, all(vec3<bool>(true, false, true)))), all(!select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false)), u_input.b.x >= 0u)), ~(~firstTrailingBit(var_0)), 611f, _wgslsmith_sub_vec2_u32(~vec2<u32>(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), ~u_input.b.x), _wgslsmith_div_vec2_u32(abs(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.d), u_input.b.zy)), vec2<u32>(_wgslsmith_add_u32(3719u, u_input.d), _wgslsmith_add_u32(u_input.b.x, 4294967295u)))));
    var var_2 = _wgslsmith_mod_u32(var_1.e.x, ~(firstLeadingBit(u_input.d) << (var_1.e.x % 32u)));
    var_2 = u_input.b.x;
    var var_3 = func_4(func_2());
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(297f, var_1.d, -239f, _wgslsmith_f_op_f32(ceil(func_4(Struct_1(var_3.a, false, vec3<i32>(-22089i, var_1.c.x, var_0.x), var_3.d, u_input.b.wz)).d))), var_0.zx, 8693u);
}

