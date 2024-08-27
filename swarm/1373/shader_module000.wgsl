struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 799f;

var<private> global1: vec4<u32>;

var<private> global2: array<vec3<bool>, 7> = array<vec3<bool>, 7>(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false));

var<private> global3: Struct_3 = Struct_3(Struct_2(9099u, 4294967295u, vec3<bool>(false, true, true)), vec2<bool>(false, true), vec4<u32>(93360u, 0u, 68211u, 0u), Struct_1(vec3<f32>(1001f, 712f, 718f), vec4<u32>(4294967295u, 4294967295u, 291u, 4294967295u)));

var<private> global4: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(4294967295u, 0u, vec3<bool>(false, false, true)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(min(global3.d.b.x, 84259u), 7u)];
    global3 = Struct_3(Struct_2(firstTrailingBit(abs(13907u)), ~4294967295u, global3.a.c), vec2<bool>(true, all(global3.a.c)), ~(~_wgslsmith_mod_vec4_u32(global3.c, vec4<u32>(4294967295u, u_input.a, 0u, 23404u))) ^ firstTrailingBit(vec4<u32>(global3.c.x ^ u_input.a, 106079u, firstTrailingBit(global1.x), 56379u)), Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-559f, 331f, global3.d.a.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1231f, global3.d.a.x, 293f))), vec3<f32>(-595f, -1000f, global3.d.a.x))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(global3.c.x, u_input.b.x, u_input.b.x, 4294967295u), reverseBits(global3.d.b), ~global3.d.b)));
    let var_1 = global3.d.a;
    let var_2 = global3.d;
    var var_3 = _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(round(596f)));
    return global1.x;
}

fn func_2(arg_0: i32) -> Struct_3 {
    let var_0 = global3.d.b;
    var var_1 = reverseBits(vec4<i32>(-72570i, ~min(_wgslsmith_sub_i32(arg_0, 18003i), ~(-1i)), 0i, 1i));
    let var_2 = 46965u;
    let var_3 = Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global3.d.a.x)) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(274f - global3.d.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -687f), -752f), reverseBits(max(vec4<u32>(_wgslsmith_mod_u32(var_0.x, 39598u), var_2 ^ var_0.x, ~var_0.x, 1u), abs(vec4<u32>(u_input.b.x, 35342u, 85172u, var_2)))));
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.d.a) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a.x, -2564f, _wgslsmith_div_f32(var_3.a.x, -1000f)) - vec3<f32>(var_3.a.x, _wgslsmith_f_op_f32(-global3.d.a.x), global3.d.a.x))), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(35657u, var_2), select(vec2<u32>(0u, 67210u), vec2<u32>(0u, var_2), global3.a.c.x)), var_0.x, min(global3.c.x, ~11570u), 20543u) | abs(global3.c ^ vec4<u32>(0u, 0u, 4294967295u, 69824u)));
    return Struct_3(Struct_2(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.b.x, global3.d.b.x, var_0.x, var_3.b.x), var_3.b), 1u, global2[_wgslsmith_index_u32(var_3.b.x, 7u)]), !select(!select(global3.b, vec2<bool>(global3.a.c.x, true), true), vec2<bool>(!global3.b.x, !global3.b.x), vec2<bool>(true, global3.b.x & true)), max(min(vec4<u32>(_wgslsmith_mult_u32(var_4.b.x, global3.d.b.x), _wgslsmith_add_u32(var_0.x, u_input.a), _wgslsmith_mult_u32(1u, u_input.b.x), func_3()), ~vec4<u32>(var_3.b.x, 0u, 0u, 0u) & ~var_4.b), global3.d.b), global3.d);
}

fn func_1(arg_0: vec4<i32>) -> bool {
    global3 = func_2(abs(~firstLeadingBit(~(-31100i))));
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global3.d.a.x)) + -1895f) + global3.d.a.x) - global3.d.a.x) + _wgslsmith_f_op_f32(-global3.d.a.x));
    global4 = array<Struct_2, 1>();
    global2 = array<vec3<bool>, 7>();
    return any(!(!select(vec3<bool>(global3.b.x, global3.a.c.x, false), global2[_wgslsmith_index_u32(59884u, 7u)], true)));
}

fn func_4(arg_0: u32, arg_1: vec2<bool>) -> vec2<bool> {
    var var_0 = ~(~abs(4294967295u));
    var var_1 = true;
    let var_2 = global3.d.b.zx;
    let var_3 = _wgslsmith_div_f32(global3.d.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1833f + global3.d.a.x)));
    global1 = global3.c;
    return select(vec2<bool>(false, (true == global3.a.c.x) || true), vec2<bool>(false, false), !(!any(vec4<bool>(arg_1.x, global3.a.c.x, arg_1.x, global3.a.c.x)) && global3.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_2(~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(4294967295u, 8346u, global1.x), 1u), select(29663u, 1u, global3.b.x), global3.a.c), global4[_wgslsmith_index_u32(global1.x, 1u)]);
    let var_1 = func_4(0u, vec2<bool>(true, !func_1(u_input.c) & global3.a.c.x));
    global1 = global3.d.b;
    let var_2 = func_2(_wgslsmith_mult_i32(u_input.c.x, ~u_input.c.x)).d;
    global3 = func_2(reverseBits(_wgslsmith_dot_vec4_i32(-u_input.c, abs(u_input.c))));
    var var_3 = func_2(-1i);
    global1 = func_2(u_input.d | u_input.c.x).d.b;
    global4 = array<Struct_2, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.d.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.a.x, var_2.a.x)))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1125f, global3.d.a.x)))), func_3(), _wgslsmith_f_op_f32(var_2.a.x * global3.d.a.x), 1i, var_2.b.x);
}

