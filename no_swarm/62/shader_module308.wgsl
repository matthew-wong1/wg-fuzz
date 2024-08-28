struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1;

var<private> global2: Struct_2 = Struct_2(vec2<i32>(-36082i, 12128i), 1i);

var<private> global3: i32;

var<private> global4: f32 = -550f;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> bool {
    let var_0 = Struct_2(vec2<i32>(_wgslsmith_mod_i32(1i, global1.a.x), -29346i), global1.a.x);
    let var_1 = Struct_2(-firstTrailingBit(global2.a), reverseBits((u_input.b << (~0u % 32u)) >> ((countOneBits(global1.c) & ~0u) % 32u)));
    let var_2 = ~global1.d.wyx << ((abs(vec3<u32>(global1.d.x, ~global1.d.x, global1.d.x)) ^ _wgslsmith_mod_vec3_u32(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(17706u, global1.d.x, global1.c), vec3<u32>(25927u, 43799u, 26742u))), global1.d.zyz >> (~vec3<u32>(global1.d.x, global1.d.x, 81101u) % vec3<u32>(32u)))) % vec3<u32>(32u));
    var var_3 = Struct_1(_wgslsmith_mod_vec4_i32(min(_wgslsmith_add_vec4_i32(~vec4<i32>(var_0.a.x, 29244i, 20883i, 1i), -global1.a), _wgslsmith_sub_vec4_i32(global1.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a.x, global1.a.x, 8723i, var_0.b), global1.a, vec4<i32>(var_1.a.x, var_0.b, var_1.b, 1i)))), ~firstLeadingBit(-vec4<i32>(-12508i, -10690i, 1i, global2.a.x))), any(select(!vec3<bool>(global1.b, false, true), select(vec3<bool>(global1.b, global1.b, global1.b), !vec3<bool>(global1.b, true, global1.b), !vec3<bool>(global1.b, global1.b, true)), !vec3<bool>(global1.b, global1.b, true))), select(_wgslsmith_mult_u32(~var_2.x ^ _wgslsmith_dot_vec2_u32(global1.d.yz, vec2<u32>(var_2.x, 0u)), _wgslsmith_add_u32(~var_2.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, 137348u, var_2.x), vec3<u32>(global1.d.x, 1u, var_2.x)))), ~countOneBits(_wgslsmith_dot_vec4_u32(global1.d, global1.d)), false), global1.d);
    return select(global1.b, var_3.b, any(vec3<bool>(var_3.b, !global1.b == false, global1.b)));
}

fn func_4(arg_0: vec2<bool>) -> i32 {
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-219f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2483f * -888f))), true)));
    var var_0 = Struct_1(global1.a, false, 0u, max(vec4<u32>(1u, ~global1.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(11956u, global1.d.x) ^ global1.d.xz, min(vec2<u32>(52942u, 4294967295u), vec2<u32>(4294967295u, 30197u))), countOneBits(4294967295u)), global1.d));
    global0 = u_input.a;
    global3 = ~(76236i << (global1.d.x % 32u));
    let var_1 = Struct_2(countOneBits(abs(u_input.d)), global1.a.x);
    return abs(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -global1.a.x, ~_wgslsmith_mod_i32(u_input.a, 27648i), 0i), max(abs(-global1.a), firstLeadingBit(var_0.a))));
}

fn func_2(arg_0: vec4<u32>) -> bool {
    global3 = -1i;
    let var_0 = func_4(select(select(vec2<bool>(func_3(), !global1.b), !vec2<bool>(global1.b, true), vec2<bool>(func_3(), any(vec4<bool>(global1.b, global1.b, false, false)))), vec2<bool>(true, true), select(vec2<bool>(!global1.b, !global1.b), select(!vec2<bool>(true, global1.b), vec2<bool>(global1.b, global1.b), !global1.b), !any(vec3<bool>(global1.b, global1.b, global1.b)))));
    var var_1 = !(!global1.b) == !any(vec3<bool>(global1.b, global1.b, global1.b));
    let var_2 = Struct_2(u_input.d, 0i);
    var var_3 = countOneBits(arg_0.x);
    return global1.b & any(vec3<bool>(global1.b, !(arg_0.x < global1.c), global1.b));
}

fn func_5(arg_0: i32, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_2(u_input.d, _wgslsmith_mult_i32(u_input.a, min(abs(_wgslsmith_sub_i32(2147483647i, u_input.a)), _wgslsmith_dot_vec2_i32(global2.a, vec2<i32>(68716i, global2.b)))));
    return Struct_1(reverseBits(vec4<i32>(global2.a.x, 1i, max(0i, global1.a.x), firstLeadingBit(arg_0)) << (vec4<u32>(~1u, 0u, global1.d.x, 0u) % vec4<u32>(32u))), all(select(select(!vec4<bool>(global1.b, global1.b, global1.b, true), vec4<bool>(false, false, false, true), all(vec3<bool>(global1.b, global1.b, global1.b))), !select(vec4<bool>(global1.b, global1.b, false, global1.b), vec4<bool>(global1.b, global1.b, true, global1.b), vec4<bool>(global1.b, true, global1.b, global1.b)), select(!vec4<bool>(global1.b, false, false, global1.b), vec4<bool>(false, true, true, false), !vec4<bool>(false, global1.b, true, true)))), ~(global1.c | 1u), (vec4<u32>(_wgslsmith_add_u32(global1.d.x, global1.c), global1.d.x, ~4294967295u, abs(71457u)) ^ abs(vec4<u32>(0u, 4294967295u, 49261u, 1u))) << (global1.d % vec4<u32>(32u)));
}

fn func_1(arg_0: vec3<i32>) -> f32 {
    var var_0 = -(~_wgslsmith_add_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, arg_0.x), vec2<i32>(-17687i, global2.a.x)) ^ global2.a.x));
    var var_1 = func_5(~min(-38655i, -2147483647i), _wgslsmith_f_op_f32(select(-1469f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(481f + _wgslsmith_f_op_f32(-2331f - 1000f))), any(!vec3<bool>(global1.b, false, true)) | func_2(global1.d ^ vec4<u32>(1u, 48489u, global1.d.x, 1316u)))));
    let var_2 = Struct_2(_wgslsmith_add_vec2_i32((~vec2<i32>(arg_0.x, -15359i) | global1.a.zy) << (~(~global1.d.wx) % vec2<u32>(32u)), u_input.d), max(~(-2147483647i), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-40949i, 32181i), var_1.a.yy) ^ _wgslsmith_mod_i32(0i, 29918i), 2147483647i)));
    global2 = var_2;
    let var_3 = _wgslsmith_mod_vec4_u32(vec4<u32>(~(~(var_1.c & global1.d.x)), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(~50482u, 34757u, var_1.c & var_1.c), vec3<u32>(0u, ~1u, 0u)), _wgslsmith_clamp_u32(~firstTrailingBit(var_1.d.x), global1.c, _wgslsmith_dot_vec3_u32(vec3<u32>(29761u, 1596u, global1.c), ~vec3<u32>(global1.c, global1.c, 0u)))), select(global1.d, ~(~abs(global1.d)), func_3() != var_1.b));
    return -1070f;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-896f)) * 709f)));
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1181f, 2060f, _wgslsmith_f_op_f32(func_1(min(vec3<i32>(global1.a.x, -1i, 2147483647i), vec3<i32>(24680i, -1i, global1.a.x))))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-974f + 1740f) + _wgslsmith_f_op_f32(1000f + 1678f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -900f)), _wgslsmith_f_op_f32(-459f * -1561f)));
    global4 = -829f;
    global3 = global1.a.x;
    global0 = u_input.b | -firstTrailingBit(abs(i32(-1i) * -36453i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1198f, -141f))));
}

