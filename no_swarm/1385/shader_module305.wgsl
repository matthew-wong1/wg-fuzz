struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 21> = array<vec3<u32>, 21>(vec3<u32>(0u, 4294967295u, 14881u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(4294967295u, 45521u, 45498u), vec3<u32>(1u, 40363u, 1u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(0u, 22240u, 0u), vec3<u32>(25036u, 14015u, 17806u), vec3<u32>(49526u, 4294967295u, 78761u), vec3<u32>(98097u, 105870u, 0u), vec3<u32>(1u, 0u, 0u), vec3<u32>(7782u, 46519u, 713u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(1u, 1u, 1u), vec3<u32>(4294967295u, 9666u, 64235u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(16380u, 1u, 0u), vec3<u32>(51968u, 0u, 103393u), vec3<u32>(63119u, 17984u, 82575u), vec3<u32>(48101u, 0u, 0u));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -124f);
    global0 = array<vec3<u32>, 21>();
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(1531f * 1000f);
    let var_3 = _wgslsmith_f_op_f32(sign(-1000f));
    return -11039i;
}

fn func_2() -> vec3<bool> {
    var var_0 = true;
    let var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, func_3()), ~(vec2<i32>(max(-56387i, u_input.a.x), func_3()) & (firstTrailingBit(u_input.a.yz) | vec2<i32>(10456i, u_input.c))));
    let var_2 = var_1.x;
    let var_3 = any(select(vec2<bool>(true, true), select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false))), true), false));
    global0 = array<vec3<u32>, 21>();
    return !vec3<bool>(false, any(select(!vec3<bool>(var_3, false, false), vec3<bool>(var_3, true, var_3), any(vec4<bool>(var_3, var_3, true, false)))), var_3);
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> Struct_3 {
    global0 = array<vec3<u32>, 21>();
    global0 = array<vec3<u32>, 21>();
    let var_0 = !func_2();
    let var_1 = 4294967295u;
    var var_2 = Struct_1(-u_input.a.x, firstTrailingBit(-60293i), false, vec3<i32>(_wgslsmith_clamp_i32(~(arg_0.d.x >> (u_input.b.x % 32u)), ~u_input.d, arg_0.d.x), arg_0.b, arg_0.a));
    return Struct_3(var_2.b, 29945u, firstLeadingBit(vec3<i32>(_wgslsmith_clamp_i32(1i, -u_input.d, arg_0.d.x), countOneBits(u_input.a.x), 0i)), min(firstTrailingBit(_wgslsmith_div_u32(~arg_1, arg_1)), _wgslsmith_dot_vec4_u32(u_input.b, ~vec4<u32>(4294967295u, 13067u, var_1, 4294967295u) & vec4<u32>(32178u, 1u, 0u, arg_1))), _wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec4_u32(u_input.b, firstTrailingBit(u_input.b))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec4<u32>) -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(450f * 470f), _wgslsmith_f_op_f32(-908f + -1084f), -2197f, _wgslsmith_f_op_f32(2364f + 631f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(102f, 1005f, -866f, 2473f), vec4<f32>(103f, 1432f, -1848f, -980f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(888f, 292f, 853f, -315f)))))))), arg_1, 0u, Struct_1(u_input.d ^ 0i, arg_1.a, !arg_1.c, vec3<i32>(arg_1.a, reverseBits(func_3()), -1i)), Struct_1(1i, arg_1.a, true, ~arg_1.d));
    let var_1 = var_0;
    global0 = array<vec3<u32>, 21>();
    let var_2 = arg_0;
    global0 = array<vec3<u32>, 21>();
    return var_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-251f + _wgslsmith_f_op_f32(-1612f * _wgslsmith_f_op_f32(select(1744f, -1072f, false)))))), 999f);
    let var_1 = !select(!(!select(vec2<bool>(false, false), vec2<bool>(false, false), true)), !vec2<bool>(var_0 != 1000f, true), vec2<bool>(true, true));
    global0 = array<vec3<u32>, 21>();
    global0 = array<vec3<u32>, 21>();
    global0 = array<vec3<u32>, 21>();
    var var_2 = _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_clamp_i32(0i, -51867i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a.x, 0i) & (u_input.a.x & u_input.a.x), ~_wgslsmith_sub_i32(u_input.d, -58314i))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~firstLeadingBit(min(1u, 4294967295u))), vec4<f32>(_wgslsmith_f_op_f32(func_4(func_1(Struct_1(u_input.d, 47374i, true, u_input.a), ~4294967295u, _wgslsmith_f_op_f32(f32(-1f) * -736f)), Struct_1(firstTrailingBit(-2147483647i), 2147483647i, false, -u_input.a), !select(vec4<bool>(false, false, false, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), false), select(u_input.b, vec4<u32>(u_input.b.x, 18383u, u_input.b.x, u_input.b.x), var_1.x) >> (~vec4<u32>(1u, u_input.b.x, 2932u, 0u) % vec4<u32>(32u)))), -977f, _wgslsmith_f_op_f32(floor(303f)), _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))));
}

