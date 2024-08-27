struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: bool = false;

var<private> global2: Struct_2;

var<private> global3: vec2<u32>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: bool) -> u32 {
    let var_0 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(global2.c.b, firstTrailingBit(vec4<u32>(7217u, global3.x, global2.b.b.x, 8753u))), min(global2.c.b, vec4<u32>(global2.b.b.x, global3.x, u_input.a.x, global3.x) & select(vec4<u32>(70388u, 0u, 4294967295u, global2.c.b.x), vec4<u32>(u_input.a.x, 0u, global2.c.b.x, global2.c.b.x), true)));
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-1113f * -259f), 411f), global2.b.b, _wgslsmith_div_f32(global2.c.a.x, 217f));
    global1 = any(select(arg_0.a.xw, arg_0.a.xz, any(vec4<bool>(arg_2, true, !arg_0.a.x, true))));
    let var_2 = _wgslsmith_f_op_f32(-696f * _wgslsmith_f_op_f32(-global2.a.x));
    global2 = Struct_2(vec2<f32>(var_1.c, _wgslsmith_f_op_f32(ceil(var_1.c))), Struct_1(vec2<f32>(1694f, _wgslsmith_f_op_f32(abs(var_1.a.x))), ~global2.b.b, var_1.a.x), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(146f, var_2))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.a) + var_1.a)), vec4<u32>(~(~0u), u_input.a.x, global2.b.b.x, global2.c.b.x), _wgslsmith_f_op_f32(var_1.c + 367f)));
    return ~0u;
}

fn func_4(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: u32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(global2.b.a * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, arg_0.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, global2.b.c)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, 172f) - vec2<f32>(-833f, global2.c.c))))), ~_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(global2.b.b, ~vec4<u32>(arg_2, global3.x, 21302u, arg_2)), select(global2.b.b, vec4<u32>(1u, 32710u, 87805u, global2.c.b.x), true)), 1229f);
    global0 = -((countOneBits(vec2<i32>(2147483647i, global0.x) << (global2.b.b.yz % vec2<u32>(32u))) << (vec2<u32>(abs(u_input.a.x), u_input.a.x) % vec2<u32>(32u))) ^ max(~(vec2<i32>(-1i, 92i) ^ vec2<i32>(2147483647i, global0.x)), countOneBits(~vec2<i32>(global0.x, global0.x))));
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.a.x))))), _wgslsmith_div_f32(-219f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -378f), global2.b.a.x), 1000f, !(false && arg_0.d.a.x)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-838f, global2.a.x, global2.a.x, -570f), vec4<f32>(842f, 669f, arg_0.c, 876f)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-285f, global2.b.a.x, arg_0.a, global2.c.a.x), vec4<f32>(global2.c.a.x, global2.b.c, -1000f, arg_0.c)))))))));
    var var_2 = !(_wgslsmith_f_op_f32(-var_1.x) >= 281f);
    var var_3 = 21139i;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-117f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.b.a.x)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)));
}

fn func_2(arg_0: bool) -> vec2<i32> {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1135f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global2.c.c)), global2.a.x)))), global2.b.b.yz, global2.c.a.x, Struct_3(!vec4<bool>(arg_0, arg_0, true, any(vec3<bool>(arg_0, arg_0, false)))));
    global2 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1175f) * _wgslsmith_f_op_f32(-1170f - _wgslsmith_f_op_f32(-global2.a.x))), _wgslsmith_f_op_f32(func_4(var_0, !(!vec4<bool>(false, arg_0, false, var_0.d.a.x)), func_3(Struct_3(var_0.d.a), -vec4<i32>(global0.x, global0.x, global0.x, 32396i), select(var_0.d.a.x, false, arg_0))))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, global2.b.c))), global2.c.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_0.a)), var_0.c, true))), global2.c);
    let var_1 = Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.c), 1354f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(global2.b.a * global2.c.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1774f, var_0.c)))))), Struct_1(global2.a, abs(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, global2.c.b.x, var_0.b.x), vec4<u32>(49639u, global3.x, 4294967295u, global3.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(Struct_4(-1000f, u_input.a, -1616f, Struct_3(var_0.d.a)), vec4<bool>(true, true, false, var_0.d.a.x), u_input.a.x)))), _wgslsmith_f_op_f32(-var_0.a))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.b.a))), max(~global2.b.b, ~global2.b.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a)))))));
    global2 = Struct_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1304f, global2.b.a.x)))))), global2.b, Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1326f, 1000f))))), vec4<u32>(5830u, 1u, 18931u, 4294967295u), -1327f));
    var var_2 = _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(global2.c.b, abs(vec4<u32>(u_input.a.x, var_1.b.b.x, 34388u, 1u))), min(~vec4<u32>(41838u, 4294967295u, global2.b.b.x, var_0.b.x), var_1.b.b)) & _wgslsmith_dot_vec2_u32(~(~firstTrailingBit(global2.b.b.zz)), _wgslsmith_mod_vec2_u32(~vec2<u32>(17471u, 0u), global2.b.b.wz));
    return max(-_wgslsmith_add_vec2_i32(abs(vec2<i32>(global0.x, global0.x)), vec2<i32>(2147483647i, global0.x) | vec2<i32>(2147483647i, -4599i)), countOneBits(~reverseBits(vec2<i32>(global0.x, global0.x)))) ^ (min(~vec2<i32>(global0.x, 0i), -vec2<i32>(2147483647i, 25983i)) << (vec2<u32>(abs(var_0.b.x), ~global3.x) % vec2<u32>(32u)));
}

fn func_1() -> vec3<bool> {
    global0 = ~(~func_2(false)) | vec2<i32>(~global0.x, global0.x);
    global3 = _wgslsmith_mult_vec2_u32(select(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(global2.b.b.zx, vec2<u32>(u_input.a.x, u_input.a.x), global2.c.b.wz), min(vec2<u32>(global3.x, global3.x), global2.c.b.xz)) & firstLeadingBit(global2.b.b.yw), _wgslsmith_mult_vec2_u32(~vec2<u32>(global2.b.b.x, 32339u), global2.c.b.yw), !vec2<bool>(any(vec3<bool>(false, true, true)), true)), ~vec2<u32>(~_wgslsmith_sub_u32(global2.b.b.x, global2.c.b.x), ~global2.c.b.x >> ((u_input.a.x ^ 0u) % 32u)));
    var var_0 = 1805u;
    global0 = firstTrailingBit(vec2<i32>(2147483647i, -16500i));
    let var_1 = Struct_3(!vec4<bool>(any(vec3<bool>(true, true, true)), all(vec4<bool>(true, true, true, true)), true, true));
    return vec3<bool>(!(~_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, global0.x), vec2<i32>(global0.x, global0.x)) <= firstTrailingBit(global0.x ^ global0.x)), all(!var_1.a), var_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(1i & global0.x);
    global1 = false | (select(all(vec3<bool>(true, true, false)), true, _wgslsmith_f_op_f32(select(global2.a.x, 251f, true)) == _wgslsmith_f_op_f32(-global2.c.c)) && false);
    var var_1 = any(select(func_1(), func_1(), true));
    global2 = Struct_2(vec2<f32>(-1463f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.a.x), global2.b.c)) - -342f)), global2.b, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(global2.b.c)), 648f) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2.a.x, -1682f), global2.a))), select(global2.c.b, select(vec4<u32>(0u, 31261u, u_input.a.x, u_input.a.x), global2.b.b | global2.b.b, global2.a.x <= global2.b.c), all(vec4<bool>(true, true, true, false)) & (1i > global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1401f)));
    global3 = abs(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(min(global2.c.b.yz, ~vec2<u32>(39814u, 21527u)), countOneBits(~vec2<u32>(0u, 0u))), countOneBits(firstLeadingBit(u_input.a))));
    var_1 = false;
    let var_2 = vec2<bool>(all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, all(vec3<bool>(true, false, true)), true, any(vec4<bool>(false, false, true, false))), vec4<bool>(true, true, true, global2.a.x == 1603f))), true);
    let var_3 = global0.x;
    let var_4 = global2.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.a.x, var_4.a.x, -2725f)), vec3<f32>(global2.a.x, var_4.a.x, 1119f))), vec3<f32>(-1783f, -1063f, -1275f), true))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(326f, -407f), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.x, -869f) * vec2<f32>(var_4.a.x, var_4.a.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b.c, global2.a.x) - vec2<f32>(global2.c.a.x, -1459f)) * vec2<f32>(var_4.c, var_4.a.x))))), vec2<u32>(43364u, 1u) >> (vec2<u32>(~global2.c.b.x, global3.x) % vec2<u32>(32u)), countOneBits(abs(vec2<i32>(35127i, abs(0i)))));
}

