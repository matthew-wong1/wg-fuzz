struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(firstTrailingBit(~u_input.b.x), select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true))), true), true), vec3<i32>(u_input.a.x, u_input.b.x, -_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-25955i, u_input.a.x, -36355i)), u_input.b.zxw)));
    var var_1 = Struct_3(var_0, Struct_1((~u_input.a.x >> (4294967295u % 32u)) | (i32(-1i) * -1i), !(!vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x)), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-10723i, -9005i, u_input.a.x), vec3<i32>(var_0.a, 0i, -48287i), vec3<i32>(-2147483647i, var_0.a, 5800i)), var_0.c) | max(vec3<i32>(2147483647i, u_input.a.x, -1i) << (vec3<u32>(77886u, 6106u, 4294967295u) % vec3<u32>(32u)), ~vec3<i32>(var_0.c.x, -23488i, var_0.c.x))), Struct_2(_wgslsmith_clamp_u32(37246u, ~1u, select(78403u, 5653u, var_0.b.x) & _wgslsmith_div_u32(0u, 20839u)), firstLeadingBit(_wgslsmith_add_i32(var_0.a, -14203i | var_0.c.x)), Struct_1(max(-2147483647i, ~u_input.b.x), var_0.b, -var_0.c), var_0, var_0));
    let var_2 = 1i < ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c.e.a, u_input.a.x, var_1.a.c.x, ~var_1.a.c.x), u_input.a);
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(314f * 357f) + _wgslsmith_f_op_f32(-1251f * -455f)))) + 650f)));
    var var_4 = Struct_1(var_0.a, vec3<bool>(var_1.b.a <= -_wgslsmith_mult_i32(2147483647i, u_input.b.x), true, all(select(!var_1.c.c.b.zy, var_0.b.yy, true))), var_0.c);
    return reverseBits(_wgslsmith_add_i32(select(abs(~var_0.c.x), -var_4.c.x, var_2), var_0.a));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1, arg_3: Struct_4) -> vec4<u32> {
    var var_0 = arg_2;
    let var_1 = arg_2.b.x;
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1032f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1283f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-100f)), _wgslsmith_f_op_f32(f32(-1f) * -463f)) - _wgslsmith_f_op_f32(-141f * 319f))));
    var var_3 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -724f), 1f, true)), 250f)));
    var var_4 = arg_3;
    return vec4<u32>(_wgslsmith_dot_vec2_u32(~(~(~vec2<u32>(0u, arg_1))), ~(~abs(vec2<u32>(arg_1, 80063u)))), arg_0.a, ~0u, 33989u);
}

fn func_2(arg_0: vec2<bool>, arg_1: bool, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = vec4<u32>(_wgslsmith_mult_u32(arg_3.a, 0u), arg_3.a, 3095u, ~((arg_3.a ^ 1u) << (arg_3.a % 32u)));
    var_0 = vec4<u32>(_wgslsmith_sub_u32(var_0.x, 14459u), var_0.x, (arg_3.a & max(4294967295u, arg_3.a)) ^ arg_3.a, _wgslsmith_div_u32(min(arg_3.a, 27387u), 41126u)) ^ func_4(arg_3, ~arg_3.a, Struct_1(func_3(), vec3<bool>(arg_2.x, !arg_1, false), vec3<i32>(36840i, 1i, ~u_input.a.x)), Struct_4(arg_2, ~(~arg_3.c.c.x)));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, -1166f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(739f - -1000f) + -553f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1096f + 445f), _wgslsmith_f_op_f32(-659f + 2119f), arg_1)))));
    var_0 = _wgslsmith_mod_vec4_u32(~min(~vec4<u32>(8096u, 4294967295u, 1u, 39684u), vec4<u32>(10164u, arg_3.a, arg_3.a, var_0.x)) & _wgslsmith_div_vec4_u32(~vec4<u32>(7729u, var_0.x, var_0.x, var_0.x), ~vec4<u32>(0u, arg_3.a, arg_3.a, arg_3.a) << (vec4<u32>(4294967295u, var_0.x, var_0.x, var_0.x) % vec4<u32>(32u))), ~(~(~vec4<u32>(13857u, var_0.x, var_0.x, var_0.x) & ~vec4<u32>(var_0.x, var_0.x, arg_3.a, var_0.x))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(1000f)), var_1.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(561f, 170f), vec2<f32>(767f, var_1.x))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(var_1.x + var_1.x)), -1354f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.x, -1194f))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(392f, 864f) - vec2<f32>(585f, -1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(746f, -1000f) - vec2<f32>(var_1.x, var_1.x)), vec2<bool>(arg_2.x, false))))));
    return arg_3.c;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: Struct_1) -> f32 {
    let var_0 = func_2(arg_3.b.xz, !(!arg_3.b.x), vec2<bool>(!arg_1.a.b.x, any(!(!vec4<bool>(true, arg_0.b.x, arg_0.b.x, false)))), arg_1.c);
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.c.a, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_1.c.a, arg_1.c.a, 4294967295u, 26359u)), ~vec4<u32>(arg_1.c.a, 55859u, arg_1.c.a, arg_1.c.a) << (~vec4<u32>(1u, 0u, arg_1.c.a, 4294967295u) % vec4<u32>(32u))), ~_wgslsmith_sub_u32(4294967295u, _wgslsmith_sub_u32(13093u, 0u)), ~arg_1.c.a), abs(select(vec4<u32>(11416u, ~1u, arg_1.c.a, _wgslsmith_dot_vec4_u32(vec4<u32>(26339u, 52885u, 0u, 10151u), vec4<u32>(0u, arg_1.c.a, arg_1.c.a, 55243u))), vec4<u32>(30671u, _wgslsmith_div_u32(36062u, 7385u), arg_1.c.a, 4294967295u), arg_3.b.x)));
    var_1 = ~_wgslsmith_sub_u32(reverseBits(1u), 9025u);
    var var_2 = arg_1.c;
    var_1 = min(~4294967295u, ~((arg_1.c.a & firstLeadingBit(arg_1.c.a)) << (select(var_2.a, var_2.a, arg_3.b.x && false) % 32u)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x * -1564f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - _wgslsmith_f_op_f32(-2263f - -1596f)))), _wgslsmith_f_op_f32(-106f * arg_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-561f, -880f)) + _wgslsmith_f_op_f32(-1213f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(u_input.b.x, vec3<bool>(false, false, false), u_input.b.wwy), Struct_3(Struct_1(u_input.a.x, vec3<bool>(true, false, true), vec3<i32>(0i, u_input.b.x, 2147483647i)), Struct_1(u_input.a.x, vec3<bool>(true, true, true), u_input.b.yww), Struct_2(0u, 21631i, Struct_1(1i, vec3<bool>(true, true, false), u_input.b.wyz), Struct_1(u_input.b.x, vec3<bool>(true, true, true), u_input.a.yyz), Struct_1(u_input.b.x, vec3<bool>(true, false, true), u_input.b.ywy))), vec2<f32>(-1036f, 108f), Struct_1(8584i, vec3<bool>(true, false, false), vec3<i32>(1i, u_input.a.x, -1i))))))));
}

