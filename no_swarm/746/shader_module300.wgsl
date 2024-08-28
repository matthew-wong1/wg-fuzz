struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec4<i32>(72536i, 0i, -15631i, 0i), 934f, -1159f, false), Struct_1(vec4<i32>(-32199i, 0i, -7281i, -2179i), 297f, -1122f, true), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, -7874i, -1i), 828f, -1401f, false), Struct_1(vec4<i32>(-1i, -1i, 42186i, -1i), -336f, 568f, false), Struct_1(vec4<i32>(3016i, 1i, 72152i, -171i), -609f, 1000f, false), Struct_1(vec4<i32>(i32(-2147483648), -1i, 1i, 2147483647i), 225f, 1177f, false), Struct_1(vec4<i32>(-1i, 11249i, i32(-2147483648), 26080i), -2302f, 2465f, true), Struct_1(vec4<i32>(23630i, i32(-2147483648), 1i, i32(-2147483648)), -523f, 107f, false), Struct_1(vec4<i32>(0i, 2147483647i, 0i, -9195i), 950f, 230f, false), Struct_1(vec4<i32>(1i, -25909i, i32(-2147483648), 1i), -566f, -1128f, true), Struct_1(vec4<i32>(i32(-2147483648), -26821i, -6968i, 0i), -868f, 1259f, true), Struct_1(vec4<i32>(-1i, -1i, -34772i, 32953i), -139f, -1276f, false), Struct_1(vec4<i32>(1i, -19317i, i32(-2147483648), 0i), 967f, -336f, true), Struct_1(vec4<i32>(33949i, -13175i, 8901i, -57992i), -436f, 310f, false), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 83209i), 175f, -1136f, true), Struct_1(vec4<i32>(1i, -43326i, 33093i, 1i), -1000f, 361f, false), Struct_1(vec4<i32>(2147483647i, 1i, 1i, 34780i), -198f, -458f, false), Struct_1(vec4<i32>(-31217i, i32(-2147483648), -58740i, 2147483647i), 1000f, -493f, true), Struct_1(vec4<i32>(7053i, -42170i, -39167i, i32(-2147483648)), 1060f, -235f, true), Struct_1(vec4<i32>(-62864i, 2147483647i, 10649i, 31653i), 988f, -138f, true), Struct_1(vec4<i32>(i32(-2147483648), -29185i, -86539i, 0i), -146f, -1771f, true), Struct_1(vec4<i32>(-7329i, 5934i, -6902i, -19495i), 1051f, -1141f, false), Struct_1(vec4<i32>(12824i, 0i, -1i, 0i), 932f, -284f, false), Struct_1(vec4<i32>(i32(-2147483648), 0i, 1i, 0i), -807f, 155f, false));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    global0 = array<Struct_1, 24>();
    var var_0 = arg_0.c;
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-531f + arg_0.b) + _wgslsmith_f_op_f32(arg_0.a + 1000f)))), arg_0.b, _wgslsmith_add_vec4_i32(~vec4<i32>(arg_0.c.x, abs(1i), var_0.x ^ arg_0.c.x, -2032i), arg_0.c));
}

fn func_3() -> vec3<u32> {
    let var_0 = firstLeadingBit(~(vec4<u32>(u_input.d.x, u_input.d.x, 1u, u_input.d.x) ^ ~vec4<u32>(u_input.d.x, 507u, 4294967295u, 0u))) & ~(~(~vec4<u32>(1u, u_input.d.x, u_input.d.x, 1u)));
    var var_1 = true;
    var var_2 = vec4<i32>(abs(45215i), (u_input.b.x >> (u_input.d.x % 32u)) | (firstLeadingBit(65946i) & u_input.c.x), _wgslsmith_dot_vec3_i32(-u_input.c, vec3<i32>(-26701i, _wgslsmith_div_i32(2147483647i, u_input.e) & firstLeadingBit(0i), u_input.e)), _wgslsmith_mult_i32(42830i & u_input.c.x, _wgslsmith_add_i32(firstLeadingBit(_wgslsmith_mod_i32(-1i, 13078i)), 6659i)));
    let var_3 = ((var_2.x & var_2.x) | (-47006i << (~u_input.d.x % 32u))) << (u_input.d.x % 32u);
    var_2 = vec4<i32>(var_3, firstTrailingBit(var_2.x), 0i, 4667i) >> ((reverseBits(_wgslsmith_add_vec4_u32(var_0, vec4<u32>(var_0.x, u_input.d.x, 0u, 1u)) & ~var_0) & var_0) % vec4<u32>(32u));
    return var_0.xzx;
}

fn func_1(arg_0: bool) -> vec3<u32> {
    let var_0 = func_2(Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-504f - -732f) + _wgslsmith_div_f32(-198f, 737f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(138f * 719f) + _wgslsmith_f_op_f32(step(-1900f, 522f)))), _wgslsmith_div_f32(-1372f, _wgslsmith_f_op_f32(max(-1134f, _wgslsmith_f_op_f32(floor(1315f))))), _wgslsmith_sub_vec4_i32(vec4<i32>(abs(18266i), _wgslsmith_mod_i32(u_input.b.x, -1i), u_input.b.x, u_input.b.x), max(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -1i, u_input.a.x, u_input.e), vec4<i32>(0i, 52442i, 55282i, u_input.c.x)), vec4<i32>(42829i, u_input.c.x, 5602i, u_input.c.x) >> (vec4<u32>(u_input.d.x, u_input.d.x, 1397u, 35969u) % vec4<u32>(32u))))));
    let var_1 = ~0i;
    global0 = array<Struct_1, 24>();
    var var_2 = Struct_1(~var_0.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.b, 412f), _wgslsmith_f_op_f32(-var_0.b))))))), _wgslsmith_f_op_f32(abs(var_0.b)), !(!(var_0.a == var_0.a)));
    var var_3 = var_2.d;
    return _wgslsmith_add_vec3_u32(firstLeadingBit(_wgslsmith_sub_vec3_u32(firstLeadingBit(func_3()), abs(_wgslsmith_add_vec3_u32(vec3<u32>(33956u, 9615u, 1u), vec3<u32>(1u, u_input.d.x, 1u))))), abs(vec3<u32>(func_3().x, 0u, reverseBits(u_input.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 24>();
    global0 = array<Struct_1, 24>();
    var var_0 = _wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(~vec3<u32>(123039u, 62880u, 49672u), _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), firstTrailingBit(vec3<u32>(42855u, u_input.d.x, u_input.d.x)))), func_1(true));
    let var_1 = !vec2<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 1i, 27150i, u_input.c.x) | vec4<i32>(u_input.a.x, -12974i, u_input.b.x, u_input.c.x), vec4<i32>(-13741i, 10458i, u_input.c.x, u_input.e)) == -select(-1i, u_input.c.x, true), false);
    var var_2 = Struct_1(firstLeadingBit(vec4<i32>(u_input.c.x, -1i, func_2(Struct_2(758f, 834f, vec4<i32>(-52350i, u_input.c.x, 33863i, 0i))).c.x, u_input.b.x)), 582f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -431f)))), 619f)), select(var_1.x, var_1.x, -2697i <= _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -60106i, 0i, -16797i), ~vec4<i32>(2147483647i, -1271i, u_input.c.x, 3309i))));
    let var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c, -900f, var_2.b) + vec3<f32>(1297f, var_2.b, 213f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b, -724f, -1785f) - vec3<f32>(-758f, -199f, var_2.c)), !var_1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c, var_2.c, -1756f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c, var_2.c, -1888f) * vec3<f32>(var_2.b, var_2.b, var_2.b))), var_2.d)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1053f, -1522f, _wgslsmith_f_op_f32(floor(2038f))))))));
    let var_4 = global0[_wgslsmith_index_u32(~1u >> (~firstTrailingBit(0u) % 32u), 24u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(var_4.a.wxw, ~countOneBits(max(var_2.a.yyw, var_4.a.wyw))), vec3<i32>(-1i) * -(u_input.b | vec3<i32>(-2147483647i, var_4.a.x, var_2.a.x)), _wgslsmith_dot_vec2_i32(var_2.a.yx, ~(~(u_input.a << (u_input.d % vec2<u32>(32u))))));
}

