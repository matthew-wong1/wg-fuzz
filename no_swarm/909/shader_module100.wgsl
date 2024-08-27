struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec3<u32>,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    global0 = Struct_3(10516i, global0.b);
    var var_0 = arg_0.d != arg_0.d;
    let var_1 = _wgslsmith_sub_u32(((arg_0.d >> (abs(arg_0.d) % 32u)) | _wgslsmith_div_u32(~27418u, 50372u)) ^ arg_0.d, _wgslsmith_sub_u32(~(59057u >> (_wgslsmith_div_u32(0u, arg_0.d) % 32u)), 54261u));
    var_0 = global0.b.x;
    var var_2 = _wgslsmith_div_i32(u_input.a, -abs(-2147483647i)) & _wgslsmith_mod_i32(-_wgslsmith_div_i32(-1i, firstLeadingBit(-3084i)), u_input.a);
    return _wgslsmith_mod_vec3_u32(abs(countOneBits(vec3<u32>(arg_0.d, 72193u, 4294967295u) ^ (vec3<u32>(var_1, arg_0.d, arg_0.d) >> (vec3<u32>(arg_0.d, 1u, 63650u) % vec3<u32>(32u))))), max(min(select(vec3<u32>(4294967295u, arg_0.d, arg_0.d), vec3<u32>(1u, arg_0.d, arg_0.d), false), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, arg_0.d, 4294967295u), vec3<u32>(var_1, 4294967295u, arg_0.d))), ~vec3<u32>(0u, 4294967295u, 1u)) ^ countOneBits(select(_wgslsmith_add_vec3_u32(vec3<u32>(var_1, var_1, 91913u), vec3<u32>(0u, arg_0.d, var_1)), ~vec3<u32>(arg_0.d, var_1, 30281u), global0.b.x)));
}

fn func_2() -> vec2<f32> {
    var var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-920f, 1511f) - 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1765f * 927f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-545f * -776f) + 359f)))), global0.b, _wgslsmith_add_vec3_u32(func_3(Struct_1(-vec4<i32>(global0.a, 20591i, -12524i, global0.a), vec4<i32>(-19811i, 0i, -2147483647i, -2147483647i), _wgslsmith_f_op_f32(f32(-1f) * -156f), 1u)), vec3<u32>(1u, 22337u, ~(~11693u))), Struct_1(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(select(vec4<i32>(global0.a, global0.a, global0.a, -1i), vec4<i32>(-2147483647i, -2147483647i, -1i, u_input.a), global0.b.x), -vec4<i32>(30971i, -8941i, global0.a, -1i)), countOneBits(vec4<i32>(-2147483647i, global0.a, u_input.a, -59903i)) ^ ~vec4<i32>(global0.a, -1i, 37218i, 0i)), firstLeadingBit(vec4<i32>(_wgslsmith_sub_i32(-10597i, 1i), abs(u_input.a), global0.a >> (1u % 32u), 12228i)), -1000f, 5284u), ~vec4<u32>(~min(10956u, 53020u), ~16638u, ~28840u, _wgslsmith_clamp_u32(~51339u, _wgslsmith_div_u32(29862u, 5293u), abs(32412u))));
    let var_1 = var_0.d;
    let var_2 = Struct_3(select(reverseBits(firstTrailingBit(-2147483647i)), 0i, false), vec2<bool>(all(!(!vec2<bool>(var_0.b.x, true))), false));
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(167f, -836f, var_0.a.x) + _wgslsmith_f_op_vec3_f32(floor(var_0.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1546f, 744f, var_0.d.c)))))), vec2<bool>(select(all(!vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x)), !(!global0.b.x), true), var_2.b.x && ((var_1.c < -1000f) || true)), var_0.e.wyx, Struct_1(var_1.b, abs(_wgslsmith_sub_vec4_i32(min(var_0.d.b, vec4<i32>(-1656i, -4595i, -51869i, -1i)), var_0.d.a)), _wgslsmith_div_f32(var_0.a.x, -532f), var_1.d << (var_1.d % 32u)), var_0.e);
    var_0 = Struct_2(var_0.a, select(global0.b, select(!var_0.b, !var_0.b, select(vec2<bool>(var_2.b.x, var_2.b.x), select(var_0.b, vec2<bool>(var_2.b.x, true), var_0.b), !vec2<bool>(global0.b.x, global0.b.x))), global0.b), var_0.e.zzy, var_0.d, ~(vec4<u32>(var_1.d ^ var_1.d, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.d, 0u, 1u, 0u), vec4<u32>(var_0.e.x, 13896u, var_0.e.x, 17023u)), 4294967295u, _wgslsmith_add_u32(4294967295u, var_0.e.x)) ^ ~(var_0.e >> (var_0.e % vec4<u32>(32u)))));
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1279f, var_1.c))), var_0.a.yz)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1032f, 2438f) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.d.c, var_0.d.c), var_0.a.yz, var_0.b)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1427f, 771f) - var_0.a.yx)), vec2<f32>(_wgslsmith_f_op_f32(2542f * var_1.c), -1000f))))));
}

fn func_1(arg_0: Struct_3) -> i32 {
    var var_0 = true;
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(2102f - 289f), _wgslsmith_f_op_f32(f32(-1f) * -509f)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_2()))))), vec2<f32>(_wgslsmith_f_op_f32(round(-181f)), _wgslsmith_f_op_f32(-985f - -635f))))));
    var var_3 = Struct_1(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.a, u_input.a, global0.a, -3730i) | _wgslsmith_div_vec4_i32(vec4<i32>(global0.a, -6425i, -2147483647i, global0.a), vec4<i32>(u_input.a, 6625i, arg_0.a, global0.a)), countOneBits(abs(vec4<i32>(1256i, -1i, arg_0.a, global0.a))))), select(vec4<i32>(1i << (min(0u, 1u) % 32u), u_input.a, select(reverseBits(arg_0.a), abs(global0.a), true), 59797i), vec4<i32>(2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-4278i, u_input.a, -13605i, u_input.a), vec4<i32>(0i, global0.a, 1i, -1i)), vec4<i32>(arg_0.a, u_input.a, 0i, -2147483647i)), _wgslsmith_mult_i32(~(-2147483647i), global0.a), firstLeadingBit(arg_0.a)), select(select(vec4<bool>(true, arg_0.b.x, var_1, global0.b.x), !vec4<bool>(true, var_1, arg_0.b.x, arg_0.b.x), !vec4<bool>(false, global0.b.x, var_1, true)), !vec4<bool>(var_1, var_1, false, arg_0.b.x), true)), _wgslsmith_f_op_vec2_f32(func_2()).x, max(func_3(Struct_1(vec4<i32>(1i, -16128i, arg_0.a, 1i), -vec4<i32>(arg_0.a, arg_0.a, u_input.a, global0.a), _wgslsmith_f_op_f32(abs(-713f)), abs(4294967295u))).x, firstLeadingBit(~func_3(Struct_1(vec4<i32>(arg_0.a, u_input.a, global0.a, 2147483647i), vec4<i32>(u_input.a, 23576i, u_input.a, 41151i), 294f, 15642u)).x)));
    global0 = Struct_3(arg_0.a, select(!select(select(global0.b, vec2<bool>(false, global0.b.x), false), select(vec2<bool>(false, false), arg_0.b, arg_0.b), var_1), select(!arg_0.b, arg_0.b, global0.b.x), any(select(!vec3<bool>(var_1, true, arg_0.b.x), select(vec3<bool>(var_1, global0.b.x, global0.b.x), vec3<bool>(arg_0.b.x, true, true), true), global0.b.x))));
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-10253i, -9246i, u_input.a), -vec3<i32>(global0.a, u_input.a, global0.a)), u_input.a, 0i, -7629i), ~min(select(vec4<i32>(u_input.a, 5235i, 1i, u_input.a), vec4<i32>(global0.a, u_input.a, global0.a, -2225i), global0.b.x), vec4<i32>(1i, 58751i, -1i, -53663i))), vec4<i32>(2147483647i, abs(func_1(Struct_3(u_input.a, global0.b))), u_input.a, reverseBits(~u_input.a)) & abs(vec4<i32>(global0.a, ~52248i, -2147483647i, _wgslsmith_clamp_i32(u_input.a, -1i, global0.a))), -960f, ~(~(~(0u >> (0u % 32u)))));
    var var_1 = var_0;
    var var_2 = vec4<bool>(false, (false & any(vec4<bool>(false, false, global0.b.x, global0.b.x))) | !any(vec2<bool>(global0.b.x, false)), !global0.b.x, global0.b.x);
    let var_3 = !(!(!(!var_2.xzw)));
    var var_4 = any(select(!(!select(var_3, var_3, false)), vec3<bool>(all(var_3), global0.b.x, false), true));
    let var_5 = Struct_3(2147483647i, select(vec2<bool>(false, any(var_2.xxw)), !select(!vec2<bool>(false, var_2.x), var_2.wz, vec2<bool>(true, var_3.x)), select(!vec2<bool>(true, var_2.x), select(vec2<bool>(global0.b.x, var_3.x), var_2.xx, select(global0.b, global0.b, var_3.zy)), vec2<bool>(true, select(var_2.x, var_2.x, true)))));
    let var_6 = Struct_3(reverseBits(_wgslsmith_add_i32(func_1(Struct_3(var_0.a.x, vec2<bool>(false, false))), var_0.b.x)), var_5.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.zwy);
}

