struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: Struct_2,
    d: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_1() -> f32 {
    global0 = array<Struct_1, 24>();
    global0 = array<Struct_1, 24>();
    global0 = array<Struct_1, 24>();
    var var_0 = !any(vec4<bool>(any(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true)), true, true));
    let var_1 = firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_sub_i32(countOneBits(-u_input.a), -_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -26988i, -1i, u_input.a), vec4<i32>(u_input.a, u_input.a, 1i, u_input.b))), min(-22160i, u_input.b)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(635f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -562f) + _wgslsmith_f_op_f32(select(430f, 739f, true))), any(vec2<bool>(false, true)))), 1900f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1463f - -318f))));
}

fn func_3() -> vec3<bool> {
    global0 = array<Struct_1, 24>();
    var var_0 = -244f;
    let var_1 = 1i;
    var_0 = _wgslsmith_f_op_f32(abs(-1000f));
    let var_2 = Struct_3(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(var_1, 2147483647i)), min(vec2<i32>(36179i, var_1), vec2<i32>(18730i, var_1))), -(~var_1)), min(vec3<i32>(u_input.b, _wgslsmith_add_i32(67901i, var_1), 0i), vec3<i32>(~(-2793i), firstLeadingBit(1i), ~0i))), u_input.c.ywx << (u_input.c.yyz % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1317f, -1160f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1161f, -1114f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(205f, -188f), vec2<f32>(-1272f, -825f), vec2<bool>(false, false)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-816f, -724f) - vec2<f32>(-1442f, -1320f))))), ~vec3<u32>(u_input.c.x, 65436u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, u_input.c.x), 4294967295u)), Struct_1(any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-138f, _wgslsmith_div_f32(-1413f, -580f), _wgslsmith_div_f32(101f, -557f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, 110f, -475f), vec3<f32>(-1488f, -1097f, -536f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1779f, -1835f, -1176f), vec3<f32>(1363f, 1312f, -791f), vec3<bool>(true, false, false))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-172f * -830f) - _wgslsmith_div_f32(-1632f, 143f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-707f + 2355f)), -2058f, _wgslsmith_f_op_f32(ceil(452f))), u_input.c.x));
    return select(!select(!(!vec3<bool>(var_2.e.a, var_2.e.a, false)), !(!vec3<bool>(var_2.e.a, true, true)), vec3<bool>(true, !var_2.e.a, any(vec2<bool>(false, true)))), vec3<bool>(!var_2.e.a, !any(!vec4<bool>(false, true, var_2.e.a, var_2.e.a)), any(!(!vec4<bool>(true, var_2.e.a, var_2.e.a, var_2.e.a)))), vec3<bool>(any(vec4<bool>(false, var_1 >= u_input.b, true, var_2.e.a)), !select(true, true, any(vec3<bool>(var_2.e.a, var_2.e.a, true))), -(~u_input.a) <= 2147483647i));
}

fn func_2() -> StorageBuffer {
    let var_0 = all(func_3());
    global0 = array<Struct_1, 24>();
    var var_1 = !select(func_3().zz, !(!(!vec2<bool>(var_0, true))), select(vec2<bool>(false, any(vec3<bool>(false, true, var_0))), vec2<bool>(any(vec4<bool>(var_0, true, true, false)), any(vec4<bool>(var_0, false, var_0, false))), true));
    var var_2 = !(!vec4<bool>(-578f <= _wgslsmith_f_op_f32(round(726f)), true, var_1.x, false));
    var var_3 = Struct_3(~_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(26092i, 1i, -1i), vec3<i32>(u_input.b, -1077i, u_input.b)), vec3<i32>(u_input.a, u_input.a, 2147483647i)), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, u_input.b, -77503i), vec3<i32>(u_input.a, -71297i, 28590i)), vec3<i32>(0i, -3054i, u_input.b) << (u_input.c.ywx % vec3<u32>(32u))), vec3<i32>(max(u_input.b, u_input.b), 0i, -u_input.b)), u_input.c.wwy, _wgslsmith_div_vec2_f32(vec2<f32>(1060f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1727f - 1192f) * -1826f)), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1642f)), 828f)), -513f)), abs(~u_input.c.xzw), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1()))) > 741f, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1122f, -197f, _wgslsmith_f_op_f32(3722f + 305f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2077f, -2272f, 357f)), u_input.c.x != (38973u & u_input.c.x))), vec4<f32>(-662f, _wgslsmith_f_op_f32(max(-1003f, _wgslsmith_f_op_f32(544f - 1000f))), _wgslsmith_f_op_f32(max(957f, 1371f)), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(ceil(292f)))), 1u));
    return StorageBuffer(~_wgslsmith_mult_vec2_u32(abs(~var_3.d.yz), u_input.c.xz), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.e.b.x * var_3.c.x)))), var_3.e.b.x, var_3.c.x), ~vec4<u32>(_wgslsmith_mult_u32(var_3.e.d, 4294967295u) >> (u_input.c.x % 32u), ~4294967295u, 55758u, _wgslsmith_sub_u32(firstTrailingBit(51892u), 4294967295u)), select(~(~101693u), var_3.b.x, var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global0 = array<Struct_1, 24>();
    global0 = array<Struct_1, 24>();
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * 360f))));
    global0 = array<Struct_1, 24>();
    global0 = array<Struct_1, 24>();
    global0 = array<Struct_1, 24>();
    global0 = array<Struct_1, 24>();
    let x = u_input.a;
    s_output = func_2();
}

