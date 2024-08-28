struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 25> = array<vec3<bool>, 25>(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true));

var<private> global1: vec2<bool>;

var<private> global2: bool = true;

var<private> global3: array<vec3<bool>, 19> = array<vec3<bool>, 19>(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false));

var<private> global4: bool = true;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = ~vec3<u32>(abs(abs(_wgslsmith_mult_u32(4294967295u, arg_0))), ~u_input.c.x, abs(31149u));
    global4 = all(select(vec3<bool>((arg_0 << (var_0.x % 32u)) <= countOneBits(arg_0), false, select(true, all(vec4<bool>(false, false, global1.x, false)), !global1.x)), vec3<bool>(true, -32620i == _wgslsmith_mod_i32(-1i, u_input.d.x), global1.x), true));
    let var_1 = Struct_3(Struct_2(vec3<f32>(1f, 1f, 1f), Struct_1(~(~var_0.x), abs(u_input.a.x) >> (u_input.c.x % 32u), ~(~u_input.c.wx), global1.x), Struct_1(firstTrailingBit(_wgslsmith_div_u32(30218u, 114632u)), min(1i, _wgslsmith_mult_i32(-1i, 1i)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.c.x, 1u), var_0.zx << (vec2<u32>(arg_0, u_input.c.x) % vec2<u32>(32u)), reverseBits(vec2<u32>(arg_0, 12207u))), global1.x), false & !(!global1.x)));
    let var_2 = abs(-firstLeadingBit(_wgslsmith_div_i32(~1i, 1i)));
    global4 = true;
    return 1125f;
}

fn func_2() -> i32 {
    var var_0 = ~abs(6342u) | u_input.c.x;
    var var_1 = true;
    global4 = _wgslsmith_f_op_f32(-872f * _wgslsmith_f_op_f32(func_3(~u_input.c.x ^ 78189u))) < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1859f) * _wgslsmith_f_op_f32(f32(-1f) * -320f)))), -1000f));
    var var_2 = true;
    var var_3 = 71467u;
    return ~(-(-u_input.b.x & -13401i));
}

fn func_1() -> u32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1043f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-565f * _wgslsmith_f_op_f32(max(205f, 1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(208f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -220f), _wgslsmith_f_op_f32(trunc(-1462f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(223f, 700f)) - _wgslsmith_f_op_f32(461f + 916f)))), 1f);
    let var_1 = -(~countOneBits(404i)) != func_2();
    var var_2 = Struct_5(_wgslsmith_f_op_vec2_f32(-var_0.zx), ~reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.c.x), _wgslsmith_mult_vec3_u32(u_input.c.xwy, u_input.c.xyw))), firstLeadingBit(firstLeadingBit(_wgslsmith_dot_vec3_u32(countOneBits(u_input.c.zwx), vec3<u32>(97375u, u_input.c.x, u_input.c.x)))), max(vec4<u32>(min(_wgslsmith_div_u32(u_input.c.x, 4294967295u), u_input.c.x), 1u & (u_input.c.x | 4294967295u), 34128u, 0u), vec4<u32>(~72282u, u_input.c.x, firstLeadingBit(_wgslsmith_div_u32(u_input.c.x, 11932u)), 0u)));
    return 38753u ^ var_2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(846f, 644f))), vec2<bool>(true, global1.x)))) - vec2<f32>(_wgslsmith_f_op_f32(-172f - _wgslsmith_f_op_f32(select(770f, -142f, global1.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-289f * -1127f), _wgslsmith_f_op_f32(round(1295f)))))), firstLeadingBit(u_input.c.xxz), 0u, ~(~_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c.x, 0u, u_input.c.x, 1u), _wgslsmith_clamp_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, 61823u, u_input.c.x, u_input.c.x), u_input.c))));
    global2 = global1.x;
    var var_1 = true | global1.x;
    var var_2 = ~4294967295u;
    global4 = true;
    global4 = ~(firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.c.xx, vec2<u32>(4294967295u, u_input.c.x))) >> (_wgslsmith_clamp_u32(_wgslsmith_div_u32(var_0.d.x, 50472u), firstLeadingBit(26244u), var_0.d.x << (u_input.c.x % 32u)) % 32u)) > _wgslsmith_dot_vec4_u32(vec4<u32>(abs(abs(var_0.c)), func_1(), 4294967295u, abs(1u) ^ ~u_input.c.x), ~abs(~var_0.d));
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1969f * _wgslsmith_f_op_f32(func_3(~1u))))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(abs(-1000f)), false))));
    let x = u_input.a;
    s_output = StorageBuffer(1i, vec3<f32>(-1000f, 260f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * 160f))))), reverseBits(~(~_wgslsmith_dot_vec2_u32(u_input.c.xw, u_input.c.wz))), ~u_input.c.x);
}

