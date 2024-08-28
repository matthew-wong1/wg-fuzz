struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<f32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec3<f32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>) -> i32 {
    global0 = -61592i;
    global1 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-221f + global1.x))), global1.x, 1000f);
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.x, -1097f, 399f, global1.x), vec4<f32>(global1.x, global1.x, global1.x, -1642f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.x, -1386f, global1.x, global1.x))))))));
    let var_1 = arg_0;
    let var_2 = Struct_1(_wgslsmith_div_vec3_i32(-var_1.d.a, var_1.d.a) & _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, u_input.b, arg_0.c), vec3<i32>(arg_0.c, -1i, 0i)), arg_0.d.a));
    return i32(-1i) * -u_input.b;
}

fn func_3(arg_0: Struct_1) -> u32 {
    global0 = arg_0.a.x;
    var var_0 = Struct_2(reverseBits(~vec2<u32>(42722u, 4294967295u)), ~(~(~(vec3<u32>(u_input.a, 0u, u_input.a) & vec3<u32>(u_input.a, 0u, 20134u)))), min(min(firstTrailingBit(-u_input.b), arg_0.a.x | arg_0.a.x), 20032i), Struct_1(-vec3<i32>(0i, 4899i, u_input.b) | abs(reverseBits(arg_0.a))));
    global0 = _wgslsmith_dot_vec3_i32(-(~vec3<i32>(reverseBits(arg_0.a.x), ~arg_0.a.x, arg_0.a.x)), vec3<i32>(~(-_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.b, 21336i, -9300i), vec4<i32>(var_0.c, var_0.d.a.x, 0i, -6719i))), -u_input.b, arg_0.a.x));
    let var_1 = Struct_1(reverseBits(firstTrailingBit(var_0.d.a)));
    var var_2 = ~vec2<u32>(u_input.a, u_input.a) & (~reverseBits(vec2<u32>(54438u, u_input.a)) | ~var_0.b.zy);
    return _wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(~min(vec2<u32>(1u, var_2.x), vec2<u32>(var_0.b.x, var_0.a.x)), min(~var_0.a, vec2<u32>(var_0.a.x, 4294967295u)))), ~min(u_input.a, var_0.a.x) & 11031u);
}

fn func_1() -> vec2<bool> {
    let var_0 = vec3<u32>(max(~(u_input.a ^ _wgslsmith_mod_u32(0u, 20412u)), abs(27922u)), u_input.a, 4294967295u);
    global0 = u_input.b ^ _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(-countOneBits(vec2<i32>(u_input.b, u_input.b)), vec2<i32>(func_2(Struct_2(var_0.xz, var_0, -1i, Struct_1(vec3<i32>(-6721i, u_input.b, 1i))), vec2<bool>(true, false)), u_input.b >> (4294967295u % 32u))), vec2<i32>(u_input.b, -54391i) | ~reverseBits(vec2<i32>(2679i, u_input.b)));
    let var_1 = u_input.a;
    let var_2 = Struct_1(vec3<i32>(abs(u_input.b), 4130i, u_input.b));
    let var_3 = Struct_2(_wgslsmith_mult_vec2_u32(select(var_0.zy, max(var_0.yz, vec2<u32>(4294967295u, 64211u)), vec2<bool>(true, true)), vec2<u32>(u_input.a, 0u)) | min(firstLeadingBit(~var_0.yz), var_0.yx >> (~vec2<u32>(22607u, u_input.a) % vec2<u32>(32u))), vec3<u32>(firstLeadingBit(func_3(var_2)), _wgslsmith_div_u32(~(~1u), (0u >> (var_1 % 32u)) << (u_input.a % 32u)), var_0.x & 46669u), ~(~u_input.b), var_2);
    return select(!select(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), true), select(vec2<bool>(true, true), !vec2<bool>(false, select(true, true, true)), vec2<bool>(any(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, false)))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(func_1(), vec2<bool>(!all(vec2<bool>(false, true)), true), select(vec2<bool>(any(vec4<bool>(true, true, true, false)), func_1().x), vec2<bool>(false, true), false));
    var var_1 = Struct_1(vec3<i32>(_wgslsmith_mult_i32(7453i, u_input.b) ^ u_input.b, 1i, u_input.b) | _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(min(vec3<i32>(u_input.b, 6521i, 1i), vec3<i32>(u_input.b, u_input.b, u_input.b)), max(vec3<i32>(1i, u_input.b, u_input.b), vec3<i32>(u_input.b, -1i, u_input.b))), -(vec3<i32>(-21958i, u_input.b, u_input.b) >> (vec3<u32>(1u, 11278u, u_input.a) % vec3<u32>(32u)))));
    let var_2 = _wgslsmith_mult_i32(~1i, ~_wgslsmith_mult_i32(-_wgslsmith_clamp_i32(-2147483647i, var_1.a.x, -2147483647i), u_input.b));
    global0 = i32(-1i) * -(~abs(var_2) >> (20456u % 32u));
    var var_3 = min(vec3<u32>(_wgslsmith_dot_vec2_u32(countOneBits(~vec2<u32>(u_input.a, 41266u)), vec2<u32>(u_input.a, u_input.a)), min(u_input.a | ~u_input.a, 1080u), 1u ^ u_input.a), vec3<u32>(u_input.a, reverseBits(~1u) ^ u_input.a, select(_wgslsmith_mult_u32(firstTrailingBit(2429u), 4294967295u), min(62181u, u_input.a), var_0.x)));
    var var_4 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1286f, 780f, global1.x, -1037f) * vec4<f32>(807f, -1862f, global1.x, -749f))))))));
    let var_5 = Struct_1(~vec3<i32>(2147483647i, -2147483647i, select(_wgslsmith_dot_vec3_i32(var_1.a, var_1.a), -1i ^ var_2, var_0.x)));
    let var_6 = -(~countOneBits(-2147483647i));
    let var_7 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(~0u, select(1u, 77195u, true), 35607u), vec3<u32>(47703u ^ var_3.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.x, 4294967295u, var_3.x, var_3.x), vec4<u32>(4294967295u, 7970u, var_3.x, 0u)), _wgslsmith_sub_u32(137875u, var_3.x))), firstTrailingBit(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(0u, 1u, u_input.a)), vec3<u32>(0u, u_input.a, 17576u) & vec3<u32>(var_3.x, var_3.x, 10082u)))), u_input.a, vec3<f32>(var_4.x, _wgslsmith_f_op_f32(ceil(var_4.x)), _wgslsmith_div_f32(1155f, _wgslsmith_f_op_f32(trunc(var_4.x)))), select(min(_wgslsmith_div_vec2_u32(var_3.zz, var_3.yy), vec2<u32>(var_3.x, 15295u)), _wgslsmith_mod_vec2_u32(vec2<u32>(16426u, 1u), vec2<u32>(var_3.x, 9513u)), vec2<bool>(u_input.a != var_3.x, all(vec3<bool>(false, false, false)))) >> (_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(abs(vec2<u32>(var_3.x, 18330u)), ~var_3.xx), ~vec2<u32>(0u, 34439u)) % vec2<u32>(32u)), firstTrailingBit(-_wgslsmith_add_i32(var_5.a.x, var_7)));
}

