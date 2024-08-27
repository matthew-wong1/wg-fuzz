struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<f32>,
    d: i32,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
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

var<private> global0: array<vec2<f32>, 19> = array<vec2<f32>, 19>(vec2<f32>(197f, 1192f), vec2<f32>(544f, 371f), vec2<f32>(-1653f, 356f), vec2<f32>(1055f, -939f), vec2<f32>(-421f, -535f), vec2<f32>(1095f, -859f), vec2<f32>(288f, 596f), vec2<f32>(1374f, 1751f), vec2<f32>(-352f, -629f), vec2<f32>(-922f, -166f), vec2<f32>(330f, 854f), vec2<f32>(-465f, -1300f), vec2<f32>(-936f, -581f), vec2<f32>(-730f, -258f), vec2<f32>(569f, -793f), vec2<f32>(572f, 1000f), vec2<f32>(-272f, 390f), vec2<f32>(-438f, 307f), vec2<f32>(1340f, 516f));

var<private> global1: array<vec3<i32>, 9>;

var<private> global2: array<vec3<i32>, 28>;

var<private> global3: i32 = 0i;

var<private> global4: vec4<f32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: u32) -> vec4<f32> {
    let var_0 = select(-2147483647i, 34321i, -(~(~(-38360i))) != (-(~(-2147483647i)) | _wgslsmith_mod_i32(~(-27787i), firstTrailingBit(-27123i))));
    return vec4<f32>(global4.x, _wgslsmith_f_op_f32(-global4.x), 611f, 799f);
}

fn func_3(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_4, arg_3: Struct_3) -> f32 {
    var var_0 = ~(arg_3.b.x ^ _wgslsmith_clamp_i32(~(-7991i) | _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_3.b.x, arg_3.b.x, 0i), vec4<i32>(arg_3.b.x, arg_3.b.x, arg_3.b.x, arg_3.b.x)), -2928i, -arg_3.b.x));
    global0 = array<vec2<f32>, 19>();
    let var_1 = Struct_4(Struct_1(_wgslsmith_mult_u32(~0u, ~arg_2.a.a) & ~u_input.b), arg_3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1219f - -1192f))) - _wgslsmith_f_op_vec4_f32(func_2(arg_2.a.a)).x));
    global1 = array<vec3<i32>, 9>();
    global2 = array<vec3<i32>, 28>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global4.x)) * _wgslsmith_f_op_f32(var_1.c - var_1.c))))), _wgslsmith_f_op_f32(sign(var_1.c)));
}

fn func_1() -> f32 {
    global4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_2(75029u)))), vec4<f32>(global4.x, _wgslsmith_f_op_f32(global4.x + -100f), _wgslsmith_f_op_vec4_f32(func_2(0u)).x, global4.x))) + vec4<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(abs(806f))), vec3<bool>(true, true, all(vec3<bool>(false, false, true))), Struct_4(Struct_1(4294967295u), false, _wgslsmith_f_op_f32(f32(-1f) * -106f)), Struct_3(true, vec2<i32>(1i, 1i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -665f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(597f, 518f) - _wgslsmith_f_op_f32(func_3(global4.x, vec3<bool>(true, false, true), Struct_4(Struct_1(27362u), true, global4.x), Struct_3(true, vec2<i32>(-2147483647i, -1i)))))), -436f, -148f));
    global3 = -_wgslsmith_dot_vec2_i32(vec2<i32>(1i, _wgslsmith_add_i32(1i << (u_input.b % 32u), 0i)), ~(-vec2<i32>(61917i, 21668i)));
    let var_0 = Struct_1(firstLeadingBit(u_input.b));
    let var_1 = Struct_3(all(select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true)), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)))), vec2<i32>(-1i) * -vec2<i32>(1i, 1i));
    global1 = array<vec3<i32>, 9>();
    return _wgslsmith_f_op_f32(select(-656f, _wgslsmith_f_op_f32(floor(-1368f)), !all(vec4<bool>(false, true, false, all(vec4<bool>(var_1.a, true, var_1.a, var_1.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_sub_i32(13532i, -19634i);
    let var_0 = Struct_1(select(u_input.a, 12746u, false));
    let var_1 = _wgslsmith_f_op_f32(global4.x * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - -1330f))));
    let var_2 = Struct_4(Struct_1(_wgslsmith_mult_u32(~u_input.a, var_0.a)), true, _wgslsmith_f_op_f32(func_1()));
    let var_3 = max(vec3<u32>(min(u_input.a, _wgslsmith_sub_u32(u_input.a & 46258u, ~u_input.a)), ~(~52972u), 4294967295u), select(~vec3<u32>(u_input.b ^ 26180u, ~19095u, countOneBits(var_2.a.a)), vec3<u32>(~(~3730u), var_2.a.a, var_0.a), !var_2.b));
    var var_4 = var_0;
    global2 = array<vec3<i32>, 28>();
    var var_5 = select(_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(1i, 1i, 1i, 1i)), select(vec4<i32>(firstTrailingBit(11267i), i32(-1i) * -83036i, ~1i, 0i), reverseBits(vec4<i32>(-15055i, 10166i, -22712i, -2147483647i)), true)), ~(vec4<i32>(-1i) * -select(vec4<i32>(24808i, 2147483647i, -71362i, 58787i), vec4<i32>(-90737i, -1i, 2147483647i, 47156i), var_2.b)), vec4<bool>(true, any(vec2<bool>(var_2.b, false)), !(u_input.a >= var_3.x) | var_2.b, var_2.b));
    var var_6 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c);
}

