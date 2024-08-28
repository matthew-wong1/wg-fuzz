struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<bool>;

var<private> global2: u32 = 1u;

var<private> global3: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(519f, Struct_1(vec2<bool>(false, false), true, vec2<u32>(4294967295u, 36491u), vec2<bool>(true, false)), 1u), Struct_2(312f, Struct_1(vec2<bool>(false, true), false, vec2<u32>(30526u, 4294967295u), vec2<bool>(false, false)), 61280u), Struct_2(-1000f, Struct_1(vec2<bool>(true, false), true, vec2<u32>(22012u, 202u), vec2<bool>(false, true)), 0u), Struct_2(-598f, Struct_1(vec2<bool>(true, true), false, vec2<u32>(1u, 1u), vec2<bool>(false, true)), 0u), Struct_2(-1768f, Struct_1(vec2<bool>(true, true), false, vec2<u32>(4294967295u, 16463u), vec2<bool>(false, true)), 25775u), Struct_2(-1323f, Struct_1(vec2<bool>(true, false), false, vec2<u32>(1u, 0u), vec2<bool>(true, false)), 35528u), Struct_2(875f, Struct_1(vec2<bool>(false, true), true, vec2<u32>(4294967295u, 65944u), vec2<bool>(true, false)), 1u), Struct_2(-1000f, Struct_1(vec2<bool>(false, true), true, vec2<u32>(56200u, 1u), vec2<bool>(false, false)), 37576u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: u32) -> u32 {
    var var_0 = arg_2.a;
    let var_1 = Struct_1(!(!(!(!vec2<bool>(arg_2.b.d.x, false)))), true, ~(~reverseBits(vec2<u32>(arg_2.c, 7120u))), arg_2.b.d);
    var var_2 = vec3<bool>(global1.x, arg_2.b.d.x, any(vec3<bool>(true, true, true)));
    let var_3 = select(global1.yxz, !(!vec3<bool>(true, var_1.a.x, u_input.b.x != -6404i)), select(vec3<bool>(all(!vec3<bool>(false, var_2.x, false)), arg_2.b.b, all(select(vec4<bool>(false, true, var_2.x, true), vec4<bool>(false, true, false, var_1.b), var_2.x))), global1.zyx, true));
    let var_4 = 4294967295u;
    return 4294967295u;
}

fn func_2() -> vec4<i32> {
    global2 = select(func_3(-_wgslsmith_clamp_i32(1i, 48793i, u_input.a), vec4<u32>(u_input.d.x, u_input.c | u_input.c, u_input.c, 14086u & u_input.c) ^ select(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, 4575u, 13499u), vec4<u32>(u_input.c, 26380u, u_input.c, 4294967295u)), ~vec4<u32>(65415u, u_input.d.x, 1508u, 0u), vec4<bool>(true, global1.x, true, false)), global3[_wgslsmith_index_u32(u_input.d.x, 8u)], u_input.d.x), _wgslsmith_clamp_u32(u_input.d.x, ~reverseBits(~u_input.d.x), 7928u), select(false, !any(global1.wyy), false));
    var var_0 = Struct_1(select(vec2<bool>(true, true), !(!(!vec2<bool>(global1.x, false))), false), global1.x, _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d.x, u_input.c), u_input.d), ~firstLeadingBit(u_input.d)) | _wgslsmith_mult_vec2_u32(u_input.d, abs(u_input.d)), global1.yx);
    var_0 = Struct_1(var_0.d, all(vec3<bool>(any(vec2<bool>(true, var_0.b)), true, all(vec4<bool>(true, var_0.d.x, true, global1.x)))), reverseBits(abs(u_input.d)), select(global1.wz, select(select(select(vec2<bool>(true, global1.x), global1.xz, true), select(vec2<bool>(false, true), vec2<bool>(var_0.a.x, true), true), select(vec2<bool>(false, global1.x), global1.zz, true)), !var_0.a, select(select(global1.yw, global1.xz, false), vec2<bool>(global1.x, global1.x), global1.xw)), select(vec2<bool>(false, var_0.d.x), vec2<bool>(var_0.b || var_0.b, true), !vec2<bool>(var_0.a.x, false))));
    var var_1 = Struct_1(!vec2<bool>(select(all(var_0.a), var_0.c.x > var_0.c.x, true), false), false, _wgslsmith_div_vec2_u32(max(var_0.c, ~var_0.c) ^ ~_wgslsmith_clamp_vec2_u32(u_input.d, vec2<u32>(5289u, 4294967295u), u_input.d), vec2<u32>(_wgslsmith_div_u32(~u_input.d.x, u_input.d.x & u_input.d.x), ~u_input.d.x ^ (1u ^ u_input.c))), !select(vec2<bool>(all(vec2<bool>(global1.x, global1.x)), !var_0.b), vec2<bool>(global1.x, any(global1.yy)), var_0.b | global1.x));
    global3 = array<Struct_2, 8>();
    return abs(vec4<i32>(54273i, 1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.b, ~vec3<i32>(19133i, u_input.b.x, u_input.b.x)), -33814i), ~(i32(-1i) * -31604i)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_2 {
    let var_0 = !vec4<bool>(true, true, !global1.x, true);
    var var_1 = true;
    global0 = arg_1.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, 1000f, -345f, -2235f))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-635f, -572f, 192f, -2196f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-771f, 432f, -317f, -1906f) + vec4<f32>(-1436f, 1400f, -158f, 1629f)))))));
    let var_3 = arg_0.b;
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(424f, -368f, false))) * -641f)), arg_0, firstTrailingBit(u_input.c));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: u32) -> f32 {
    global2 = ~firstTrailingBit(u_input.d.x) | 45619u;
    global3 = array<Struct_2, 8>();
    global3 = array<Struct_2, 8>();
    var var_0 = vec2<bool>(arg_1.a.x || arg_1.b, !all(!select(vec2<bool>(false, arg_1.d.x), arg_1.d, arg_1.a.x)));
    var var_1 = func_4(arg_1, -_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(func_2(), vec4<i32>(-30548i, -1i, 0i, 13561i) << (vec4<u32>(21355u, 14242u, arg_0.x, u_input.c) % vec4<u32>(32u)), -vec4<i32>(u_input.a, -1i, 1404i, -2147483647i)), vec4<i32>(_wgslsmith_div_i32(u_input.a, u_input.a), 2147483647i, 45385i, u_input.a)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)))) + 377f) - _wgslsmith_f_op_f32(-var_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-726f, -977f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1273f, 1449f)), 280f)), true)) + 1080f));
    var var_1 = global1.x;
    global3 = array<Struct_2, 8>();
    global3 = array<Struct_2, 8>();
    global3 = array<Struct_2, 8>();
    var var_2 = Struct_1(vec2<bool>(global1.x, any(vec2<bool>(true, true))), _wgslsmith_f_op_f32(func_1(~_wgslsmith_sub_vec3_u32(vec3<u32>(51484u, u_input.c, 4294967295u), vec3<u32>(u_input.c, 0u, u_input.c)), Struct_1(vec2<bool>(true, global1.x), global1.x, vec2<u32>(1u, 4294967295u), select(vec2<bool>(true, false), vec2<bool>(global1.x, true), vec2<bool>(global1.x, global1.x))), ~(~4294967295u))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0, 123f, true)))), ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x), u_input.d), !select(select(global1.yw, vec2<bool>(true, global1.x), select(global1.xy, vec2<bool>(global1.x, global1.x), false)), global1.zw, !global1.x));
    global0 = 2147483647i;
    var_2 = Struct_1(!vec2<bool>(all(select(vec4<bool>(true, true, var_2.b, global1.x), vec4<bool>(true, global1.x, global1.x, false), var_2.d.x)), true), any(global1.zzx), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 29286u), vec3<u32>(4294967295u, u_input.d.x, 4294967295u)), var_2.c.x) << (vec2<u32>(~4294967295u ^ (0u << (u_input.d.x % 32u)), 69397u) % vec2<u32>(32u)), var_2.a);
    let var_3 = !global1.x != false;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(select(reverseBits(vec4<i32>(-2147483647i, 2147483647i, 5597i, -6461i)), ~vec4<i32>(0i, u_input.b.x, u_input.b.x, u_input.a), vec4<bool>(false, true, global1.x, false))));
}

