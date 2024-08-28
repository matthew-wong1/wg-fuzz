struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_2;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_2) -> vec2<f32> {
    var var_0 = arg_2;
    var var_1 = Struct_1(vec2<f32>(174f, _wgslsmith_f_op_f32(floor(arg_1))));
    let var_2 = firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(firstLeadingBit(1i), arg_2.a.x, 3883i << (global1.e % 32u)), -vec3<i32>(-50035i, -27481i << (0u % 32u), ~global1.a.x)));
    var var_3 = Struct_1(vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x * 931f) - 628f)));
    let var_4 = arg_2;
    return _wgslsmith_f_op_vec2_f32(arg_2.c.a + var_0.c.a);
}

fn func_2() -> Struct_2 {
    global1 = Struct_2(global1.a, global1.b, Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(abs(-537f)), _wgslsmith_f_op_f32(exp2(global1.b.a.x)), Struct_2(global1.a, global1.b, global1.b, -12480i, 1u)))))), global1.a.x, 1396u);
    var var_0 = Struct_2(-((u_input.b.xxx >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.e, global1.e, global1.e), vec3<u32>(8898u, 1u, global1.e), vec3<u32>(global1.e, global1.e, global1.e)) % vec3<u32>(32u))) >> (firstLeadingBit(~vec3<u32>(u_input.a, global1.e, 1u)) % vec3<u32>(32u))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global1.b.a)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1340f, -1659f), vec2<f32>(2864f, global1.c.a.x), vec2<bool>(false, false)))))), global1.b, u_input.d, 25927u);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.c.a.x, var_0.b.a.x, -633f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-247f, -907f, var_0.c.a.x))), any(vec2<bool>(false, true)))), _wgslsmith_div_vec3_f32(vec3<f32>(-1389f, var_0.c.a.x, global1.b.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1095f, global1.b.a.x))), !all(vec4<bool>(false, true, false, false))))));
    var_0 = Struct_2(vec3<i32>(_wgslsmith_dot_vec3_i32(~reverseBits(var_0.a), -vec3<i32>(-35670i, var_0.d, 2147483647i)), u_input.d, -var_0.d), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -964f), var_0.b.a.x)), var_0.b, firstTrailingBit(-(~u_input.d)), ~abs(var_0.e));
    let var_2 = _wgslsmith_f_op_f32(min(var_0.c.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.b.a.x + 1624f), _wgslsmith_f_op_f32(trunc(1428f))))))))));
    return Struct_2(_wgslsmith_mod_vec3_i32(~vec3<i32>(_wgslsmith_sub_i32(var_0.d, -13899i), select(25186i, -1i, true), 0i), var_0.a), Struct_1(vec2<f32>(103f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.a.x), _wgslsmith_f_op_f32(-var_2)))), Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.c.a.x, 1304f), global1.b.a)))))), u_input.b.x & 17247i, global1.e);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: i32) -> u32 {
    return firstLeadingBit(~_wgslsmith_sub_u32(463u, u_input.a));
}

fn func_1(arg_0: Struct_1) -> bool {
    var var_0 = -(~_wgslsmith_add_vec4_i32(vec4<i32>(10268i, 2147483647i, firstLeadingBit(-10289i), global1.d), _wgslsmith_mod_vec4_i32(vec4<i32>(global1.d, global1.a.x, -1158i, global1.a.x), abs(vec4<i32>(-2147483647i, -31305i, u_input.b.x, u_input.d)))));
    let var_1 = min(165218u, ~firstLeadingBit(0u));
    let var_2 = vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(func_4(func_2(), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true), 1i), 82369u, ~18132u, firstTrailingBit(~4294967295u)), ~vec4<u32>(4294967295u, var_1, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, 44253u), vec3<u32>(global1.e, u_input.a, var_1)), global1.e)), 0u);
    var_0 = vec4<i32>(countOneBits(0i), _wgslsmith_mod_i32(global1.d ^ -max(-2147483647i, global1.a.x), 2147483647i), 22334i, reverseBits(1i));
    global0 = _wgslsmith_div_u32(firstLeadingBit(~_wgslsmith_div_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(58927u, 1u, var_2.x), vec3<u32>(u_input.c.x, global1.e, var_2.x)))), 1u);
    return any(vec3<bool>(!all(vec3<bool>(true, true, true)), true, -(~u_input.b.x) > -63866i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 0u;
    let var_0 = vec2<bool>(func_1(global1.c), 1u < (global1.e & ~func_4(Struct_2(vec3<i32>(28529i, 1487i, global1.a.x), global1.b, global1.b, -1i, 5345u), vec3<bool>(true, true, false), 2147483647i)));
    var var_1 = ~u_input.a;
    global0 = u_input.c.x | (~firstLeadingBit(u_input.a) | 1u);
    var var_2 = vec2<u32>(~(~(~(58820u & global1.e))), firstTrailingBit(_wgslsmith_div_u32(0u, u_input.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(func_2(), vec3<bool>(true, !var_0.x, true | var_0.x), min(u_input.d, 2147483647i)), _wgslsmith_div_i32(countOneBits(u_input.b.x), -11653i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1.c.a.x * 143f), global1.c.a.x, -245f)) + vec3<f32>(-2183f, _wgslsmith_div_f32(264f, global1.b.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1111f, global1.b.a.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.b.a * _wgslsmith_f_op_vec2_f32(-global1.c.a))));
}

