struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool;

var<private> global2: array<u32, 4>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = vec3<u32>(~global0.c.x, ~(~arg_0.a.x), 37628u);
    global0 = arg_0.c;
    let var_1 = Struct_1(global0.a, vec3<i32>(2147483647i, global0.b.x, 22221i), ~(~reverseBits(vec2<u32>(1u, 68895u)) ^ _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.d.x, global0.c.x), u_input.c.yz & vec2<u32>(var_0.x, var_0.x))), global0.d, _wgslsmith_f_op_vec2_f32(global0.d.yz - _wgslsmith_f_op_vec2_f32(-arg_0.c.d.yx)));
    let var_2 = vec4<u32>(firstLeadingBit(arg_0.a.x), ~var_0.x, ~global0.c.x, ~(~(arg_0.a.x ^ 4294967295u) | ~(~global2[_wgslsmith_index_u32(global0.c.x, 4u)])));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1030f, 1647f, 1066f, var_1.e.x), vec4<f32>(1000f, 152f, -1520f, 373f)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1507f, 223f, 410f, global0.d.x), vec4<f32>(842f, -2131f, var_1.e.x, arg_0.c.e.x)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.e.x, arg_0.c.d.x, global0.d.x, arg_0.c.d.x), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.e.x, 640f, global0.e.x, arg_0.c.d.x))), select(var_1.a.x, false, false))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(298f, -497f, -1063f, var_1.d.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.e.x, 837f, -2379f, 800f))))));
    return vec4<bool>(arg_0.c.a.x, false, arg_0.b, any(select(!arg_0.c.a, global0.a, select(!vec4<bool>(var_1.a.x, false, false, true), !arg_0.c.a, select(arg_0.c.a.x, true, global0.a.x)))));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: i32, arg_3: Struct_1) -> vec4<f32> {
    var var_0 = Struct_1(func_3(arg_1), _wgslsmith_mult_vec3_i32(arg_1.c.b, abs(abs(vec3<i32>(-7577i, arg_2, arg_2)))), arg_3.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1488f, -686f, _wgslsmith_f_op_f32(678f * global0.e.x)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global0.d), arg_3.d, vec3<bool>(false, arg_3.a.x, arg_3.a.x))))), global0.e);
    global2 = array<u32, 4>();
    global0 = arg_1.c;
    let var_1 = Struct_1(global0.a, -arg_1.c.b, vec2<u32>(0u, 4294967295u << (global0.c.x % 32u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_0.d)), vec3<f32>(-377f, _wgslsmith_f_op_f32(-var_0.d.x), 1f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(arg_1.c.e)), _wgslsmith_f_op_vec2_f32(arg_1.c.e + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.d.yx, vec2<f32>(1221f, arg_1.c.e.x)))))));
    let var_2 = arg_3;
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, _wgslsmith_f_op_f32(ceil(var_0.e.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-514f, -266f)), _wgslsmith_f_op_f32(900f - _wgslsmith_f_op_f32(global0.e.x + -2206f)), any(arg_1.c.a.ww))), -645f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.e.x - global0.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x)), -507f, _wgslsmith_f_op_f32(-global0.d.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.x, 1198f, 1502f, -1296f)) * vec4<f32>(arg_1.c.d.x, -801f, arg_3.d.x, -1058f)), vec4<bool>(!all(var_1.a.zw), false, arg_3.a.x, !(true && arg_1.b)))));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.e.x, _wgslsmith_f_op_f32(f32(-1f) * -769f), -709f, _wgslsmith_f_op_f32(-485f - -1000f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(vec2<i32>(18902i, 0i), Struct_2(u_input.c.zx, true, Struct_1(vec4<bool>(global0.a.x, global0.a.x, global0.a.x, false), global0.b, vec2<u32>(1u, u_input.e.x), vec3<f32>(global0.e.x, global0.e.x, 856f), global0.d.zz)), global0.b.x, Struct_1(vec4<bool>(true, true, global0.a.x, false), vec3<i32>(global0.b.x, u_input.b, -2147483647i), vec2<u32>(u_input.a, global0.c.x), global0.d, global0.d.zy)))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.x, 1437f, -1281f, global0.d.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.e.x, 454f, global0.e.x, 354f)), func_3(Struct_2(u_input.d.yz, true, Struct_1(global0.a, global0.b, vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(u_input.c.x, 4u)]), vec3<f32>(global0.e.x, global0.e.x, -475f), global0.e))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.x, 477f, global0.e.x, -3121f) - vec4<f32>(508f, global0.d.x, -133f, 917f)))), vec4<f32>(global0.e.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.d.x - -961f))), _wgslsmith_f_op_f32(f32(-1f) * -158f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.x) + _wgslsmith_div_f32(global0.e.x, global0.e.x))), global0.a)));
    global0 = Struct_1(select(global0.a, global0.a, all(vec2<bool>(any(vec3<bool>(global0.a.x, global0.a.x, true)), !global0.a.x))), firstLeadingBit(vec3<i32>(-1i) * -abs(vec3<i32>(1i, 12568i, global0.b.x))), vec2<u32>(global2[_wgslsmith_index_u32(1u, 4u)], ~(global0.c.x | 27918u)) & select(vec2<u32>(u_input.a, abs(17534u)), abs(_wgslsmith_add_vec2_u32(global0.c, global0.c)), global0.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.d - _wgslsmith_div_vec3_f32(global0.d, vec3<f32>(-1281f, 1316f, -370f)))), vec2<f32>(_wgslsmith_f_op_f32(abs(global0.d.x)), _wgslsmith_div_f32(var_0.x, 153f)));
    global2 = array<u32, 4>();
    let var_1 = ~(~vec4<i32>(firstLeadingBit(u_input.b), global0.b.x << (0u % 32u), abs(global0.b.x), _wgslsmith_div_i32(24460i, global0.b.x))) & vec4<i32>(-2147483647i, abs(-1i ^ _wgslsmith_mult_i32(-1i, u_input.b)), 35679i, abs(~(u_input.b >> (u_input.d.x % 32u))));
    var var_2 = var_0;
    return Struct_1(select(func_3(Struct_2(firstLeadingBit(u_input.e.yx), true, Struct_1(vec4<bool>(global0.a.x, true, global0.a.x, true), global0.b, global0.c, var_2.yxz, var_2.zz))), select(global0.a, func_3(Struct_2(global0.c, global0.a.x, Struct_1(global0.a, var_1.xwy, vec2<u32>(global0.c.x, global2[_wgslsmith_index_u32(global0.c.x, 4u)]), global0.d, vec2<f32>(-511f, -635f)))), select(vec4<bool>(global0.a.x, false, global0.a.x, global0.a.x), vec4<bool>(global0.a.x, global0.a.x, global0.a.x, false), select(vec4<bool>(false, global0.a.x, global0.a.x, false), vec4<bool>(global0.a.x, false, true, global0.a.x), vec4<bool>(true, global0.a.x, global0.a.x, true)))), vec4<bool>(func_3(Struct_2(vec2<u32>(global2[_wgslsmith_index_u32(global0.c.x, 4u)], global2[_wgslsmith_index_u32(40171u, 4u)]), true, Struct_1(vec4<bool>(false, global0.a.x, true, global0.a.x), var_1.zwx, vec2<u32>(37524u, 4294967295u), vec3<f32>(var_2.x, var_0.x, global0.d.x), var_2.zz))).x, global0.a.x, true, true)), -vec3<i32>(2147483647i, var_1.x, -51553i) | -(~(var_1.yzx >> (vec3<u32>(global0.c.x, 1u, 1u) % vec3<u32>(32u)))), vec2<u32>(firstTrailingBit(~15977u & (global0.c.x | global2[_wgslsmith_index_u32(35522u, 4u)])), ~82302u), _wgslsmith_f_op_vec3_f32(-global0.d), _wgslsmith_f_op_vec2_f32(abs(global0.d.zy)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = func_1();
    var var_1 = arg_0.c.b;
    let var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(-691f, _wgslsmith_f_op_f32(round(1216f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-435f, -1978f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.c.d.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - var_0.e.x), global0.e.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.d), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-727f, global0.e.x, 137f) - var_0.d)))) * arg_0.c.d), true));
    global2 = array<u32, 4>();
    var var_3 = Struct_1(vec4<bool>(u_input.b < _wgslsmith_add_i32(-var_1.x, _wgslsmith_mult_i32(var_0.b.x, -27687i)), true, arg_1.a.x, !global0.a.x), arg_1.b, ~(~arg_1.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.d, var_2)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-448f, 602f, -834f), arg_1.d))), func_3(Struct_2(arg_0.a, global0.a.x, Struct_1(vec4<bool>(false, var_0.a.x, global0.a.x, global0.a.x), vec3<i32>(-2147483647i, 2147483647i, -1i), u_input.c.xz, var_0.d, arg_1.e))).yzy)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-829f, _wgslsmith_div_f32(1317f, var_0.d.x), 1661f))), arg_0.c.e);
    return StorageBuffer(_wgslsmith_clamp_i32(28274i, max(_wgslsmith_mult_i32(arg_0.c.b.x, _wgslsmith_dot_vec3_i32(arg_1.b, global0.b)), -2147483647i), countOneBits(-_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.b.x, -1i, 2147483647i, 0i), vec4<i32>(var_0.b.x, 0i, arg_1.b.x, 1i)))), vec3<f32>(-210f, _wgslsmith_f_op_f32(-arg_0.c.e.x), _wgslsmith_f_op_f32(1364f + _wgslsmith_f_op_f32(-1f))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(Struct_2(global0.c, false, func_1()), Struct_1(vec4<bool>(any(func_1().a.xwy), global0.a.x, global0.a.x, global0.a.x & (2147483647i < global0.b.x)), -_wgslsmith_mult_vec3_i32(global0.b, -global0.b), _wgslsmith_add_vec2_u32(u_input.d.xz, _wgslsmith_sub_vec2_u32(u_input.c.zy, vec2<u32>(0u, u_input.c.x)) ^ vec2<u32>(9800u, 1u)), vec3<f32>(_wgslsmith_div_f32(-795f, 930f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.e.x), _wgslsmith_f_op_f32(global0.e.x - global0.d.x))), 940f), global0.d.xz));
}

