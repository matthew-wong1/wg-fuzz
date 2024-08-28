struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: bool,
    d: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<f32>,
    c: Struct_3,
    d: Struct_1,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11> = array<i32, 11>(-30405i, -7998i, i32(-2147483648), -1i, -49807i, i32(-2147483648), -24716i, -51166i, 1i, 0i, -1i);

var<private> global1: vec2<bool>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_5) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.c.b - _wgslsmith_div_f32(1000f, arg_0.c.b))))))));
    var var_1 = !(!(!vec3<bool>(true, global1.x, true)));
    global0 = array<i32, 11>();
    var var_2 = Struct_4(Struct_2(arg_0.d), _wgslsmith_add_i32(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.d.a.x, 1695u, u_input.d), vec3<u32>(4294967295u, u_input.d, u_input.d)), 11u)], abs(~(-global0[_wgslsmith_index_u32(arg_0.d.a.x, 11u)]))), false, ~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_0.d.a.x, u_input.d, u_input.d, 7715u)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.d.a.x, arg_0.d.a.x, 1u, 1u), vec4<u32>(40003u, 64839u, 29731u, arg_0.d.a.x))), arg_0.d.a.x));
    return vec3<u32>(var_2.a.a.a.x, ~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, arg_0.d.a.x, 45302u), vec3<u32>(u_input.d, 1u, var_2.d)) & firstLeadingBit(vec3<u32>(1u, 0u, arg_0.d.a.x)), abs(~vec3<u32>(42994u, var_2.d, 1u))), reverseBits(53566u));
}

fn func_2(arg_0: vec4<bool>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1041f)) - -1574f);
    var var_1 = global1.x;
    global0 = array<i32, 11>();
    let var_2 = _wgslsmith_dot_vec3_u32(~func_3(Struct_5(Struct_3(vec2<bool>(true, true), -617f, var_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-855f, var_0, 766f, var_0)), Struct_3(arg_0.xy, var_0, var_0), Struct_1(vec2<u32>(1u, 79198u), global0[_wgslsmith_index_u32(4294967295u, 11u)]), _wgslsmith_add_vec3_i32(vec3<i32>(32816i, global0[_wgslsmith_index_u32(4294967295u, 11u)], 0i), vec3<i32>(593i, u_input.b, global0[_wgslsmith_index_u32(u_input.d, 11u)])))), abs(min(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, 0u, 4294967295u), vec3<u32>(35019u, 13735u, 58942u)), ~vec3<u32>(u_input.d, 4294967295u, 0u))) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 1u, 4294967295u, u_input.d), vec4<u32>(u_input.d, 20024u, 3662u, u_input.d)), u_input.d, func_3(Struct_5(Struct_3(vec2<bool>(false, global1.x), var_0, var_0), vec4<f32>(var_0, var_0, var_0, var_0), Struct_3(arg_0.yw, -1017f, -807f), Struct_1(vec2<u32>(u_input.d, u_input.d), global0[_wgslsmith_index_u32(4294967295u, 11u)]), u_input.c.xyw)).x), ~(vec3<u32>(14721u, u_input.d, u_input.d) ^ vec3<u32>(0u, u_input.d, 0u))));
    var_1 = global1.x;
    return !vec2<bool>(!global1.x, !any(vec4<bool>(arg_0.x, global1.x, true, arg_0.x)));
}

fn func_1() -> f32 {
    let var_0 = Struct_3(!select(!(!vec2<bool>(global1.x, global1.x)), func_2(select(vec4<bool>(true, false, global1.x, true), vec4<bool>(true, global1.x, global1.x, false), true)), vec2<bool>(true, true)), -1957f, -837f);
    let var_1 = Struct_3(var_0.a, _wgslsmith_f_op_f32(-var_0.c), var_0.b);
    let var_2 = reverseBits(vec3<i32>(3232i, u_input.c.x, firstTrailingBit(_wgslsmith_add_i32(2147483647i, -42817i) >> (~u_input.d % 32u))));
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.b))), _wgslsmith_f_op_f32(-var_1.b), -534f, _wgslsmith_f_op_f32(round(var_0.b))), vec4<f32>(_wgslsmith_f_op_f32(step(var_1.c, _wgslsmith_f_op_f32(var_0.b - var_0.b))), -455f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.b, -293f)) * _wgslsmith_f_op_f32(var_1.c - var_0.c)), _wgslsmith_f_op_f32(1054f + var_1.c)), true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(var_0.b * 119f), _wgslsmith_f_op_f32(var_1.c - var_1.b), _wgslsmith_f_op_f32(min(var_0.b, var_0.b)), -352f), vec4<f32>(_wgslsmith_f_op_f32(var_0.b + -150f), _wgslsmith_f_op_f32(ceil(var_1.b)), var_0.c, _wgslsmith_f_op_f32(floor(var_1.b))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1040f, -1121f, -938f, 201f) * vec4<f32>(var_1.b, 436f, var_1.b, var_1.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, -257f, 205f, var_1.b) + vec4<f32>(var_1.c, -1000f, -2703f, var_1.c)), !vec4<bool>(var_0.a.x, global1.x, false, true))) * _wgslsmith_div_vec4_f32(vec4<f32>(var_0.b, -1216f, var_0.b, -1000f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, -290f, -2085f, 1510f) + vec4<f32>(-2012f, 499f, var_1.b, var_1.c))))));
    global0 = array<i32, 11>();
    return _wgslsmith_f_op_f32(-var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-917f + 382f), -583f))), -1801f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(f32(-1f) * -760f))), _wgslsmith_f_op_f32(f32(-1f) * -1231f)));
    global0 = array<i32, 11>();
    global1 = !(!select(select(func_2(vec4<bool>(false, true, global1.x, true)), select(vec2<bool>(global1.x, true), vec2<bool>(global1.x, false), vec2<bool>(true, global1.x)), select(vec2<bool>(false, false), vec2<bool>(global1.x, global1.x), vec2<bool>(false, false))), func_2(vec4<bool>(false, global1.x, global1.x, true)), !(!vec2<bool>(false, global1.x))));
    global1 = vec2<bool>(false, !(!global1.x));
    let var_1 = _wgslsmith_dot_vec3_i32(~u_input.c.xxx, max(vec3<i32>(select(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(u_input.d, 11u)], -2147483647i), global0[_wgslsmith_index_u32(abs(0u), 11u)], true), -1i, u_input.a), -u_input.c.wyw));
    let var_2 = Struct_3(vec2<bool>(global1.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 66871u, 6033u), select(vec3<u32>(u_input.d, u_input.d, 30669u), vec3<u32>(u_input.d, 53446u, 8799u), vec3<bool>(global1.x, global1.x, true))) <= ~3459u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1548f))))), -839f)), _wgslsmith_f_op_f32(-var_0.x));
    let var_3 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(36524u, vec4<i32>(_wgslsmith_dot_vec4_i32(var_3, max(-vec4<i32>(var_3.x, global0[_wgslsmith_index_u32(18971u, 11u)], var_3.x, 20732i), ~vec4<i32>(-2147483647i, 1i, -6120i, 2147483647i))), ~var_1, _wgslsmith_clamp_i32(firstTrailingBit(-2147483647i), abs(u_input.e), countOneBits(0i)) & -1i, select(-var_1, countOneBits(~32656i), true)));
}

