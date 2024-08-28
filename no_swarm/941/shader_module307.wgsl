struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(18363u, vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(-1859i, _wgslsmith_sub_i32(u_input.b, -2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b)))), u_input.b, ~firstTrailingBit(abs(u_input.b))), -_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.b, 0i, u_input.b, u_input.b), vec4<i32>(0i, u_input.b, -5136i, -2147483647i) & vec4<i32>(u_input.b, u_input.b, 2147483647i, -14987i)) ^ ~vec4<i32>(i32(-1i) * -2147483647i, min(u_input.b, u_input.b), 2147483647i, _wgslsmith_mult_i32(29547i, u_input.b)));
    let var_1 = ~(~(~var_0.a) & _wgslsmith_mod_u32(min(select(40358u, var_0.a, true), _wgslsmith_div_u32(u_input.c.x, u_input.a)), ~1u));
    return ~_wgslsmith_mult_i32(_wgslsmith_div_i32(countOneBits(var_0.b.x), -2147483647i), var_0.b.x);
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -188f);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1335f), -729f)), _wgslsmith_f_op_f32(trunc(1f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-224f, -945f)))))));
    var var_2 = u_input.b;
    let var_3 = _wgslsmith_f_op_f32(-var_1.x);
    return Struct_1(1u, vec3<i32>(func_3(), _wgslsmith_clamp_i32(u_input.b, _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(u_input.b, u_input.b)), vec2<i32>(u_input.b, -1i)), u_input.b | (i32(-1i) * -1i)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(-1i, u_input.b) & _wgslsmith_sub_i32(u_input.b, 78606i), -select(u_input.b, u_input.b, true))), select(select(vec4<i32>(i32(-1i) * -38437i, ~(-36153i), ~1i, u_input.b ^ u_input.b), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(259i, u_input.b, 4731i, 1i), vec4<i32>(u_input.b, 0i, 39421i, 0i), vec4<i32>(28266i, u_input.b, u_input.b, -1i)), !(!vec4<bool>(arg_2.x, arg_1.x, arg_2.x, false))), ~(vec4<i32>(u_input.b, 44940i, u_input.b, u_input.b) | vec4<i32>(u_input.b, 26229i, 34746i, -2147483647i)) << (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, arg_0, arg_0, arg_0), vec4<u32>(u_input.a, 4294967295u, 5823u, arg_0)), abs(arg_0), arg_0, abs(arg_0)) % vec4<u32>(32u)), vec4<bool>((i32(-1i) * -70536i) != u_input.b, any(!vec3<bool>(arg_1.x, true, arg_2.x)), any(select(arg_1, arg_2, true)), any(select(vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(true, arg_1.x, arg_2.x), false)))));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(func_2(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a) | vec3<u32>(1u, u_input.a, u_input.a), ~vec3<u32>(72u, 0u, 119511u)), ~(~vec3<u32>(u_input.a, u_input.c.x, 1u))), !(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))), vec2<bool>(true, true)), ~_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, 0i), vec4<i32>(56550i, u_input.b, u_input.b, 1i)), vec4<i32>(1i, u_input.b, u_input.b, u_input.b)) >> (vec4<u32>(~u_input.c.x, countOneBits(u_input.c.x), 0u, firstLeadingBit(4294967295u)) % vec4<u32>(32u)), vec4<i32>(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-46396i, u_input.b, -58810i, u_input.b), vec4<i32>(1i, u_input.b, 0i, u_input.b))), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, -2147483647i), vec4<i32>(-57186i, u_input.b, -1i, u_input.b)), 5562i), firstTrailingBit(_wgslsmith_add_i32(u_input.b, -6783i)), _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.b, u_input.b, -1453i, 12814i), vec4<i32>(1i, u_input.b, u_input.b, 0i), vec4<bool>(true, true, true, false)), func_2(u_input.a, vec2<bool>(false, true), vec2<bool>(false, false)).c)) ^ ~vec4<i32>(~2147483647i, _wgslsmith_sub_i32(1i, 1i), u_input.b, -2147483647i));
    var var_1 = u_input.c.x;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), -988f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2065f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-763f)), _wgslsmith_f_op_f32(max(1680f, 595f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-1205f))))))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, var_2.x) * var_2.x)) + var_2.x) * var_2.x);
    var var_4 = ~(~_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.b, -2147483647i, u_input.b), _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.a.c.x, u_input.b, var_0.a.b.x), vec3<i32>(-1i, -1085i, -22029i))) << (vec3<u32>(~(var_0.a.a | var_0.a.a), _wgslsmith_div_u32(0u, ~13897u), var_0.a.a) % vec3<u32>(32u)));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_1(u_input.c.x, ~firstLeadingBit(_wgslsmith_add_vec3_i32(var_0.c.wwy, vec3<i32>(-57401i, 14155i, 0i))) & ~reverseBits(vec3<i32>(var_0.c.x, u_input.b, u_input.b)), var_0.c);
    var_0 = Struct_1(var_0.a & ~u_input.c.x, ~var_0.c.zzx, select(~var_0.c, -(countOneBits(var_0.c) ^ vec4<i32>(2147483647i, u_input.b, 46835i, u_input.b)), vec4<bool>(!any(vec4<bool>(false, true, false, true)), all(select(vec2<bool>(true, false), vec2<bool>(false, false), false)), false, true)));
    var var_1 = vec4<u32>(firstLeadingBit(max(4294967295u ^ u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, 4294967295u, 14861u, 0u), vec4<u32>(var_0.a, u_input.c.x, u_input.a, 35748u)))), _wgslsmith_div_u32(var_0.a, max(min(1u, u_input.a), 41370u)), var_0.a, u_input.c.x) | ~firstLeadingBit(~(~vec4<u32>(var_0.a, var_0.a, 1u, 5408u)));
    var var_2 = func_1();
    let var_3 = countOneBits(-var_0.b);
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, -252f))) + vec2<f32>(_wgslsmith_f_op_f32(min(-212f, -1232f)), -239f)))));
    let x = u_input.a;
    s_output = StorageBuffer(897f, vec4<u32>(_wgslsmith_add_u32(var_0.a, u_input.c.x << (var_2.a % 32u)), var_1.x, _wgslsmith_mod_u32(1u, u_input.c.x), ~(var_2.a & u_input.a) << (var_0.a % 32u)), ~(~(~vec3<u32>(var_1.x, var_0.a, 8755u))) & _wgslsmith_div_vec3_u32(var_1.zwy, ~vec3<u32>(0u, 45939u, 20916u)), 1470f, select(var_1.x, _wgslsmith_sub_u32(16403u, ~firstTrailingBit(var_2.a)), (true != any(vec3<bool>(false, true, true))) || ((0u & u_input.a) >= reverseBits(var_0.a))));
}

