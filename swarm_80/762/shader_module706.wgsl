struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: bool,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<f32>,
    d: u32,
    e: vec3<i32>,
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

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_2(Struct_1(select(~90304u, abs(u_input.a.x ^ 16394u), true), u_input.a.zz, all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(228f, 796f))))), ~min(71065u, u_input.a.x) >> (u_input.a.x % 32u)));
    var var_1 = var_0.a;
    var var_2 = Struct_2(var_0.a);
    let var_3 = vec4<f32>(var_0.a.d.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.d.x * _wgslsmith_f_op_f32(-var_0.a.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1981f * -187f)) - -263f))), _wgslsmith_div_f32(_wgslsmith_div_f32(-1054f, -413f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1486f) + _wgslsmith_f_op_f32(889f + var_2.a.d.x)))), -2212f);
    let var_4 = var_0;
    return vec3<u32>(~0u, ~(~0u), 1u);
}

fn func_2(arg_0: vec4<f32>) -> i32 {
    let var_0 = Struct_1(0u, ~u_input.a.yy, true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(arg_0.yz + _wgslsmith_f_op_vec2_f32(-arg_0.zw))))), u_input.a.x);
    var var_1 = firstTrailingBit(_wgslsmith_mod_vec3_u32(abs(func_3()), countOneBits(vec3<u32>(var_0.e, 4294967295u, u_input.a.x) << (u_input.a.zxw % vec3<u32>(32u)))));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(505f * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1061f + arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1028f)), _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(ceil(arg_0.x))))))));
    var var_3 = -_wgslsmith_clamp_i32(u_input.b & _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 427i, -1i, u_input.c), vec4<i32>(-23566i, u_input.c, u_input.c, 2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.c, u_input.c, -4854i), vec4<i32>(2147483647i, u_input.b, u_input.c, u_input.b))), _wgslsmith_dot_vec2_i32(select(~vec2<i32>(u_input.b, 35690i), vec2<i32>(u_input.b, -1i), all(vec2<bool>(var_0.c, var_0.c))), min(vec2<i32>(u_input.c, u_input.c), vec2<i32>(32286i, u_input.b)) << (_wgslsmith_clamp_vec2_u32(var_0.b, var_0.b, vec2<u32>(u_input.a.x, 38782u)) % vec2<u32>(32u))), u_input.b);
    var var_4 = 977f;
    return _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, ~(-26426i), (~16191i | _wgslsmith_add_i32(u_input.b, u_input.c)) & min(countOneBits(u_input.b), _wgslsmith_div_i32(-1i, -2147483647i)), u_input.b >> (abs(var_0.e) % 32u)), vec4<i32>(u_input.b, -min(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 1i, -5132i), vec3<i32>(u_input.b, u_input.b, u_input.b)), 1i), -2147483647i, -min(_wgslsmith_div_i32(u_input.c, 61573i), firstLeadingBit(1i))));
}

fn func_1(arg_0: u32) -> vec3<bool> {
    var var_0 = Struct_3(u_input.c ^ -(~func_2(vec4<f32>(137f, -674f, -1103f, 315f))), Struct_1(abs(_wgslsmith_clamp_u32(~12255u, 4294967295u, 8343u)), u_input.a.yy, false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-353f, -707f))) + vec2<f32>(1f, 1f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-746f, 1000f))) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-354f, -903f))))), ~_wgslsmith_mod_u32(abs(u_input.a.x), 4294967295u)), u_input.a.xx, -((vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.b) | vec4<i32>(0i, 1i, u_input.c, -1i)) & abs(vec4<i32>(2147483647i, 31739i, u_input.c, -18500i))));
    var_0 = Struct_3(~(-1i), Struct_1(65824u, u_input.a.wx, true, var_0.b.d, ~_wgslsmith_sub_u32(abs(arg_0), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0, 4294967295u, 1480u), vec4<u32>(var_0.c.x, u_input.a.x, 39530u, 46253u)))), ~(~u_input.a.xz), min(-vec4<i32>(u_input.b, 2147483647i, u_input.b, var_0.a), -firstTrailingBit(var_0.d)) << (((u_input.a ^ firstTrailingBit(u_input.a)) ^ u_input.a) % vec4<u32>(32u)));
    var var_1 = Struct_2(var_0.b);
    var var_2 = u_input.b;
    var_0 = Struct_3(u_input.c, Struct_1(arg_0, reverseBits(vec2<u32>(4294967295u, 4294967295u)), select(false, !var_1.a.c != (2257i < var_0.d.x), any(select(vec3<bool>(var_0.b.c, var_0.b.c, false), vec3<bool>(var_1.a.c, var_1.a.c, false), false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.d.x, _wgslsmith_f_op_f32(-538f + -470f))), ~1u), vec2<u32>(arg_0, ~var_0.c.x & arg_0), var_0.d);
    return vec3<bool>(all(select(!(!vec4<bool>(true, var_0.b.c, true, true)), select(select(vec4<bool>(var_1.a.c, var_1.a.c, false, false), vec4<bool>(var_0.b.c, true, false, true), true), !vec4<bool>(var_0.b.c, var_0.b.c, false, false), select(vec4<bool>(true, var_0.b.c, var_0.b.c, true), vec4<bool>(true, true, var_1.a.c, true), true)), var_0.b.c)), var_0.b.c, all(!(!select(vec2<bool>(true, var_1.a.c), vec2<bool>(true, var_1.a.c), true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(5523u);
    let var_1 = Struct_3(u_input.b, Struct_1(~5403u, vec2<u32>(func_3().x, abs(u_input.a.x)), true == (_wgslsmith_dot_vec4_u32(u_input.a, u_input.a) >= min(u_input.a.x, u_input.a.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1277f)), _wgslsmith_f_op_f32(-1f)), 123658u), _wgslsmith_div_vec2_u32(~func_3().zy, ~firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 38783u), vec2<u32>(49058u, 9202u)))), vec4<i32>(50162i, u_input.b, -8051i, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, -2147483647i), vec3<i32>(u_input.c, -32323i, -1i)), 48696i) | countOneBits(22511i & u_input.b)));
    var var_2 = 1u;
    let var_3 = !func_1(4294967295u).x;
    var_0 = !vec3<bool>(true, -var_1.a < ~_wgslsmith_mod_i32(var_1.a, u_input.b), false);
    let var_4 = func_1(12924u).zy;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_1.d.zyx >> (vec3<u32>(43074u, ~var_1.c.x, ~u_input.a.x) % vec3<u32>(32u))), var_1.b.d.x, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.b.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.d.x) * _wgslsmith_f_op_f32(-213f + var_1.b.d.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -166f)))))), u_input.a.x, var_1.d.yzx);
}

