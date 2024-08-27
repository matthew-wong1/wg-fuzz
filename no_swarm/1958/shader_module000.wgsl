struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: bool,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1u, 35699u, 8863u);

var<private> global1: array<vec3<i32>, 13>;

var<private> global2: vec2<f32> = vec2<f32>(-1453f, -1991f);

var<private> global3: array<Struct_2, 30>;

var<private> global4: array<Struct_3, 30>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    var var_0 = vec3<bool>(all(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true)), true), vec4<bool>(true, global0.x < u_input.a.x, all(vec4<bool>(false, true, false, true)), true), all(vec3<bool>(true, true, false)) | all(vec2<bool>(true, false)))), !((4294967295u > global0.x) & (abs(9477i) <= u_input.c)), all(vec4<bool>(true, all(vec3<bool>(false, true, false)), _wgslsmith_f_op_f32(min(global2.x, -1596f)) <= _wgslsmith_f_op_f32(-global2.x), false)));
    global4 = array<Struct_3, 30>();
    let var_1 = var_0.x | (abs(u_input.d.x) >= (select(_wgslsmith_sub_i32(u_input.d.x, -63565i), 0i, !var_0.x) | select(1i ^ u_input.c, i32(-1i) * -2147483647i, any(vec2<bool>(false, false)))));
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(_wgslsmith_add_vec3_u32(abs(firstTrailingBit(vec3<u32>(70346u, 1u, 51101u))), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 64695u, 44942u), vec3<u32>(0u, global0.x, u_input.b.x)) | vec3<u32>(global0.x, u_input.a.x, 4294967295u))), _wgslsmith_sub_vec3_u32(~abs(~vec3<u32>(u_input.a.x, 4294967295u, 1u)), select(~vec3<u32>(global0.x, global0.x, global0.x) << ((vec3<u32>(global0.x, u_input.b.x, 4294967295u) | vec3<u32>(global0.x, 1u, global0.x)) % vec3<u32>(32u)), ~vec3<u32>(u_input.a.x, 4294967295u, global0.x) << ((vec3<u32>(u_input.b.x, 38542u, u_input.b.x) >> (vec3<u32>(6627u, global0.x, 0u) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<bool>(var_0.x, all(vec4<bool>(var_1, true, true, true)), true)))), 30u)];
    var_0 = var_2.c.a;
    return ~var_2.e.x;
}

fn func_2() -> u32 {
    var var_0 = global0.zx;
    var var_1 = vec3<bool>(true, true, true);
    var var_2 = global3[_wgslsmith_index_u32(~min(var_0.x, 1u), 30u)];
    var var_3 = var_2.c;
    var var_4 = Struct_4(var_3.a, var_3.c, global4[_wgslsmith_index_u32(func_3() << (_wgslsmith_mult_u32(select(min(u_input.a.x, 37785u), global0.x, true), var_0.x) % 32u), 30u)]);
    return ~_wgslsmith_clamp_u32(var_2.a, 31274u, 70660u);
}

fn func_1() -> vec2<i32> {
    global4 = array<Struct_3, 30>();
    global0 = ~(~(~(~vec3<u32>(0u, u_input.a.x, 15846u)))) >> (vec3<u32>(func_2(), u_input.a.x, 1u) % vec3<u32>(32u));
    let var_0 = !select(vec2<bool>(any(vec3<bool>(true, true, true)), false), vec2<bool>(true, false), any(vec2<bool>(true, true)));
    let var_1 = ~_wgslsmith_dot_vec2_u32(~u_input.a, global0.xy) ^ u_input.b.x;
    global3 = array<Struct_2, 30>();
    return vec2<i32>(0i, -8027i) >> ((vec2<u32>(reverseBits(u_input.b.x), 16195u) ^ vec2<u32>(u_input.b.x, select(var_1, 4294967295u, var_0.x))) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -523f;
    var var_1 = true;
    global4 = array<Struct_3, 30>();
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(global2.x + -1342f), -843f, _wgslsmith_f_op_f32(abs(690f)), _wgslsmith_f_op_f32(f32(-1f) * -668f)), _wgslsmith_div_vec4_f32(vec4<f32>(739f, 998f, -508f, global2.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, -618f) - vec4<f32>(1000f, global2.x, global2.x, global2.x))), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global2.x + 1753f), global2.x, 751f, -419f) - vec4<f32>(-2565f, _wgslsmith_f_op_f32(f32(-1f) * -380f), global2.x, -1465f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -939f, -1740f, 1000f) * vec4<f32>(global2.x, 648f, global2.x, -1270f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(987f, global2.x, global2.x, 1112f) - vec4<f32>(global2.x, global2.x, global2.x, 924f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(355f, 1161f, global2.x, global2.x) - vec4<f32>(global2.x, 119f, -1000f, global2.x)))))));
    let var_3 = Struct_2(0u, ~_wgslsmith_div_vec2_i32(vec2<i32>(~u_input.c, 1i), func_1()), Struct_1(vec3<bool>(true, true, true), vec4<i32>(-u_input.c, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, -1i, 1i, -2147483647i), vec4<i32>(21105i, u_input.d.x, 0i, 0i)), u_input.d.x, ~u_input.c), -54556i, max(u_input.d.x << (44844u % 32u), 1i)), !(!any(vec2<bool>(true, false))), reverseBits(u_input.d), var_2.wwz), Struct_1(!select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), max(vec4<i32>(abs(u_input.c), u_input.d.x & -2147483647i, ~u_input.c, -u_input.c), vec4<i32>(u_input.d.x, _wgslsmith_sub_i32(u_input.d.x, 38109i), firstLeadingBit(u_input.d.x), firstLeadingBit(u_input.c))), !(1i <= u_input.d.x), _wgslsmith_div_vec2_i32(min(vec2<i32>(1i, -1i), u_input.d), u_input.d), vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_div_f32(-761f, _wgslsmith_div_f32(223f, global2.x)), 2623f)), vec3<u32>(reverseBits(u_input.b.x), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.a.x, global0.x, u_input.b.x), vec4<u32>(100980u, global0.x, global0.x, 0u)), 4294967295u));
    let var_4 = vec3<i32>(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-26856i, u_input.d.x, -16377i, -1i), max(var_3.c.b, var_3.d.b)) | -2147483647i), -2147483647i, u_input.c);
    var var_5 = -1000f;
    global0 = countOneBits(vec3<u32>(u_input.a.x >> (4257u % 32u), ~47890u, u_input.a.x));
    global4 = array<Struct_3, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1414f - var_3.d.e.x), var_3.d.e.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_3.c.e.x, -254f)))), 474f, 403f) - var_2));
}

