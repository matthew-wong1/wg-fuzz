struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: f32 = 266f;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> vec4<bool> {
    global0 = u_input.d.x;
    let var_0 = vec4<i32>(u_input.c.x ^ -(i32(-1i) * -u_input.c.x), ~(-21857i), 80356i, ~(-u_input.c.x));
    let var_1 = Struct_2(abs(u_input.b), Struct_1(vec4<bool>(true, true, true, all(vec3<bool>(false, true, false)) || true), ~abs(var_0) | var_0), u_input.b, -(~(var_0.zz | u_input.c.yx)) << ((~_wgslsmith_mult_vec2_u32(u_input.b.xw, u_input.b.yy) | _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u) >> (vec2<u32>(u_input.b.x, u_input.a) % vec2<u32>(32u)), reverseBits(vec2<u32>(44514u, 30407u)))) % vec2<u32>(32u)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(min(459f, _wgslsmith_f_op_f32(-180f - -889f)))));
    let var_3 = 0i;
    return vec4<bool>(var_1.b.a.x, true, select(all(vec2<bool>(select(true, false, var_1.b.a.x), any(vec4<bool>(true, var_1.b.a.x, false, false)))), false, false), var_1.b.a.x);
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: u32, arg_3: vec2<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0))) * -184f)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) + -318f))));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_1(!select(select(func_2(), vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), true)), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), false), !(-1i <= u_input.d.x)), vec4<i32>(u_input.d.x, min(1i, 1i) >> (u_input.a % 32u), -max(8459i, u_input.d.x) ^ -1i, min(-1i, _wgslsmith_add_i32(-1i, u_input.d.x))));
    var var_1 = -724f;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(1607f, var_0.b.x, u_input.a, u_input.b.wy)))), -1777f))));
    let var_2 = -429f;
    var_0 = Struct_1(vec4<bool>(true | (u_input.b.x != _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u), vec4<u32>(u_input.a, 0u, u_input.a, u_input.b.x))), true, (true | all(var_0.a.zz)) | !var_0.a.x, false), -vec4<i32>(u_input.c.x, var_0.b.x, u_input.d.x, _wgslsmith_mult_i32(-1i, 0i) | u_input.c.x));
    return Struct_2(u_input.b, Struct_1(!func_2(), vec4<i32>(12716i, u_input.d.x, ~(~2147483647i), _wgslsmith_add_i32(~(-1i), select(u_input.c.x, 1i, false)))), ~vec4<u32>(_wgslsmith_add_u32(2341u, ~u_input.b.x), firstTrailingBit(~1u), u_input.a, u_input.b.x), vec2<i32>(~u_input.c.x, _wgslsmith_mult_i32(-9633i, u_input.c.x) ^ firstLeadingBit(_wgslsmith_add_i32(u_input.c.x, u_input.d.x))));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: i32) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(109f + 442f)), arg_0.b.a.x))));
    global0 = func_1().b.b.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), 834f), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(940f, var_0.x, var_0.x) - vec3<f32>(-500f, 410f, 377f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1486f, var_0.x, 950f), vec3<f32>(1216f, var_0.x, -559f)))))))) + vec3<f32>(_wgslsmith_f_op_f32(721f - 456f), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-491f)))));
    global0 = ~_wgslsmith_sub_i32(firstTrailingBit(~(1i & arg_0.b.b.x)), _wgslsmith_dot_vec4_i32(select(vec4<i32>(1i, arg_0.b.b.x, -19727i, -50724i), -arg_0.b.b, vec4<bool>(false, false, arg_0.b.a.x, false)), vec4<i32>(_wgslsmith_sub_i32(59383i, arg_2), _wgslsmith_sub_i32(arg_2, u_input.d.x), arg_1 ^ u_input.d.x, -1i)));
    global1 = 658f;
    return arg_0.b.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), -4172i, u_input.c.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-320f, 1000f) + vec2<f32>(2540f, -1023f)))), vec2<f32>(666f, _wgslsmith_f_op_f32(f32(-1f) * -135f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, -1267f))))))));
    var var_2 = var_1.x;
    global1 = var_1.x;
    let var_3 = Struct_2(countOneBits(vec4<u32>(select(max(u_input.b.x, 12667u), 1u, true), u_input.b.x, ~u_input.a, _wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, u_input.b.x), u_input.a))), func_1().b, firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(countOneBits(4294967295u), u_input.a & u_input.a, abs(u_input.b.x), abs(24020u)), firstTrailingBit(u_input.b))), vec2<i32>(-_wgslsmith_sub_i32(-50564i, abs(u_input.c.x)), -(u_input.c.x ^ u_input.c.x)));
    let var_4 = -u_input.c.x;
    let var_5 = ~reverseBits(~(var_3.a.x >> (22712u % 32u)));
    var var_6 = abs(~(select(u_input.c.x, var_3.b.b.x, var_3.b.a.x) & var_4) & _wgslsmith_div_i32(select(i32(-1i) * -11025i, -var_3.b.b.x, var_3.b.a.x), var_4));
    global1 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(~10834u, _wgslsmith_mod_u32(~(~u_input.a), firstLeadingBit(1u)), false), _wgslsmith_mod_vec2_u32(u_input.b.ww & select(var_3.a.yz, vec2<u32>(1u, 0u), var_0), u_input.b.yz));
}

