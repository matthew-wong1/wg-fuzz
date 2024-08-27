struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_2,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: bool = false;

var<private> global2: array<i32, 5>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: vec3<i32>, arg_1: f32) -> vec2<bool> {
    var var_0 = Struct_1(arg_1, !vec3<bool>(!any(vec3<bool>(true, false, false)), true, true), vec3<f32>(547f, arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1), arg_1)) * arg_1)));
    global2 = array<i32, 5>();
    var var_1 = any(select(vec2<bool>(!var_0.b.x | (global2[_wgslsmith_index_u32(7504u, 5u)] < -2147483647i), true), var_0.b.zx, var_0.b.yy));
    var var_2 = vec4<f32>(arg_1, _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1))), var_0.a);
    var_1 = !(false & select(u_input.a.x != u_input.a.x, var_0.b.x, var_0.b.x));
    return select(select(vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, 6824u)), 5u)] > 0i, true), select(select(var_0.b.zz, var_0.b.yx, !var_0.b.x), !select(vec2<bool>(var_0.b.x, false), var_0.b.yy, true), vec2<bool>(false, var_0.b.x)), select(var_0.b.yz, var_0.b.zz, all(!vec4<bool>(true, var_0.b.x, var_0.b.x, var_0.b.x)))), !(!(!var_0.b.xy)), (any(vec4<bool>(var_0.b.x, true, var_0.b.x, true)) && all(!var_0.b.yx)) | var_0.b.x);
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec2<i32>) -> vec4<bool> {
    let var_0 = any(vec3<bool>(any(vec4<bool>(arg_2.b.x, false, arg_2.c.b.x, arg_2.b.x)) | (true && any(vec4<bool>(true, arg_2.b.x, arg_1.d.b.b.x, arg_1.c.b.x))), true, max(global2[_wgslsmith_index_u32(~4294967295u, 5u)], u_input.b.x) <= (i32(-1i) * -2147483647i)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-arg_1.d.b.c.yz);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -938f)), vec3<bool>(_wgslsmith_f_op_f32(abs(-664f)) <= _wgslsmith_f_op_f32(floor(163f)), var_0 & true, !select(false, false, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(212f + -1000f), arg_1.e.x) - vec3<f32>(_wgslsmith_f_op_f32(-532f * 1263f), var_1.x, 904f)) - _wgslsmith_f_op_vec3_f32(-arg_1.c.c)));
    var_2 = Struct_1(-1571f, !arg_1.d.b.b, vec3<f32>(var_2.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(f32(-1f) * -2194f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(347f)) - _wgslsmith_div_f32(arg_2.d.b.a, var_2.c.x)))));
    let var_3 = Struct_1(var_1.x, select(vec3<bool>((4294967295u >= arg_1.d.a) & all(vec3<bool>(arg_2.d.b.b.x, var_2.b.x, false)), true, any(select(arg_1.d.b.b, vec3<bool>(arg_2.c.b.x, false, var_2.b.x), arg_1.b.x))), select(vec3<bool>(arg_1.c.b.x || false, any(vec2<bool>(var_0, false)), any(vec3<bool>(false, false, arg_2.d.b.b.x))), !var_2.b, var_2.b.x), !select(select(arg_2.c.b, vec3<bool>(true, true, false), arg_1.c.b.x), arg_1.d.b.b, arg_1.b)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-951f, -858f, _wgslsmith_f_op_f32(round(122f))))));
    return !(!select(vec4<bool>(!var_3.b.x, any(vec2<bool>(true, arg_2.d.b.b.x)), !arg_2.b.x, all(vec4<bool>(var_3.b.x, arg_1.b.x, var_0, false))), !vec4<bool>(var_3.b.x, arg_2.c.b.x, true, false), any(vec2<bool>(false, arg_2.b.x))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: u32, arg_3: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(arg_0.c.x * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(arg_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-392f)) + -153f))))));
    var var_1 = all(select(vec4<bool>(!select(false, arg_1.b.x, true), true, !arg_0.b.x || arg_3, true), vec4<bool>(arg_0.b.x, ~u_input.a.x <= ~0u, any(func_2(vec3<i32>(global2[_wgslsmith_index_u32(1u, 5u)], 1i, -26660i), -388f)), true), func_3(_wgslsmith_sub_u32(~4294967295u, _wgslsmith_div_u32(arg_2, 11714u)), Struct_3(~arg_1.a, vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x), Struct_1(arg_0.a, arg_1.c.b, vec3<f32>(-329f, arg_0.a, -637f)), arg_1.d, arg_0.c.xy), arg_1, -select(vec2<i32>(u_input.b.x, global2[_wgslsmith_index_u32(4790u, 5u)]), u_input.b.yx, false))));
    var_1 = all(vec4<bool>(any(vec4<bool>(all(vec3<bool>(arg_1.c.b.x, true, false)), var_0 >= arg_0.c.x, false, select(arg_3, arg_1.b.x, false))), true | all(select(vec4<bool>(arg_1.d.b.b.x, arg_1.c.b.x, true, false), vec4<bool>(arg_0.b.x, false, arg_1.c.b.x, true), vec4<bool>(false, false, false, arg_1.c.b.x))), true, arg_1.d.b.b.x));
    var var_2 = u_input.a.xx;
    let var_3 = ~60690u;
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(false, true, global2[_wgslsmith_index_u32(firstLeadingBit(1u), 5u)] <= ~2224i), min(0u, func_1(global0[_wgslsmith_index_u32(31784u, 14u)], Struct_3(vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, u_input.b.x), vec3<bool>(true, false, false), global0[_wgslsmith_index_u32(0u, 14u)], Struct_2(36621u, Struct_1(-1000f, vec3<bool>(true, false, false), vec3<f32>(303f, -1179f, -829f))), vec2<f32>(-347f, -1064f)), 1u, true)) >= u_input.a.x), vec3<bool>(all(vec4<bool>(true, true, true, false)), true, any(vec2<bool>(true, true))), vec3<bool>(4294967295u != _wgslsmith_add_u32(4882u ^ u_input.a.x, 4294967295u << (0u % 32u)), false, false));
    global2 = array<i32, 5>();
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -264f), _wgslsmith_f_op_f32(trunc(1f)), -314f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-3149f, -640f)), _wgslsmith_f_op_f32(-1006f + 1958f), true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1009f, 1000f, -447f, 1081f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 438f, 1345f, 800f), vec4<f32>(169f, 272f, -1496f, 447f))))));
    let var_2 = 0u;
    global0 = array<Struct_1, 14>();
    global2 = array<i32, 5>();
    var var_3 = select(!select(func_3(var_2, Struct_3(vec4<i32>(-1i, -1i, u_input.b.x, -3986i), vec3<bool>(var_0.x, true, true), Struct_1(var_1.x, var_0, var_1.zyy), Struct_2(35881u, global0[_wgslsmith_index_u32(u_input.a.x, 14u)]), var_1.xx), Struct_3(vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(52111u, 5u)], -1i, -2147483647i), vec3<bool>(var_0.x, false, true), global0[_wgslsmith_index_u32(u_input.a.x, 14u)], Struct_2(var_2, global0[_wgslsmith_index_u32(0u, 14u)]), var_1.zw), select(vec2<i32>(-31947i, u_input.b.x), u_input.b.xx, var_0.x)), select(select(vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(false, true, var_0.x, false), true), !vec4<bool>(true, var_0.x, true, true), !vec4<bool>(false, var_0.x, var_0.x, var_0.x)), !vec4<bool>(false, var_0.x, false, var_0.x)), !select(func_3(u_input.a.x >> (u_input.a.x % 32u), Struct_3(vec4<i32>(global2[_wgslsmith_index_u32(var_2, 5u)], -20761i, global2[_wgslsmith_index_u32(u_input.a.x, 5u)], global2[_wgslsmith_index_u32(var_2, 5u)]), vec3<bool>(var_0.x, true, var_0.x), global0[_wgslsmith_index_u32(var_2, 14u)], Struct_2(28646u, global0[_wgslsmith_index_u32(0u, 14u)]), vec2<f32>(var_1.x, var_1.x)), Struct_3(vec4<i32>(u_input.b.x, -21330i, -1127i, -26113i), var_0, global0[_wgslsmith_index_u32(u_input.a.x, 14u)], Struct_2(1u, global0[_wgslsmith_index_u32(29067u, 14u)]), vec2<f32>(1067f, 124f)), _wgslsmith_mult_vec2_i32(vec2<i32>(60079i, 0i), u_input.b.zy)), vec4<bool>(var_0.x, false, true, var_0.x), !select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(var_0.x, true, var_0.x, var_0.x))), select(!func_3(min(u_input.a.x, u_input.a.x), Struct_3(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 5u)], -1i, -1i, u_input.b.x), vec3<bool>(var_0.x, var_0.x, var_0.x), Struct_1(-787f, vec3<bool>(var_0.x, var_0.x, true), var_1.zxz), Struct_2(u_input.a.x, Struct_1(var_1.x, var_0, vec3<f32>(var_1.x, var_1.x, var_1.x))), vec2<f32>(var_1.x, -1000f)), Struct_3(vec4<i32>(11956i, global2[_wgslsmith_index_u32(1u, 5u)], u_input.b.x, -54289i), vec3<bool>(true, false, false), Struct_1(var_1.x, vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<f32>(var_1.x, var_1.x, var_1.x)), Struct_2(u_input.a.x, Struct_1(-380f, vec3<bool>(var_0.x, var_0.x, true), vec3<f32>(-549f, var_1.x, var_1.x))), vec2<f32>(var_1.x, var_1.x)), reverseBits(u_input.b.xz)), vec4<bool>(1u == _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 39419u), vec3<u32>(var_2, 70689u, 66558u)), var_0.x, var_0.x, any(vec2<bool>(var_0.x, var_0.x)) || true), func_2(_wgslsmith_mod_vec3_i32(u_input.b, u_input.b), var_1.x).x));
    let var_4 = Struct_3(vec4<i32>(19753i, 1i ^ _wgslsmith_div_i32(global2[_wgslsmith_index_u32(abs(u_input.a.x), 5u)], i32(-1i) * -2147483647i), global2[_wgslsmith_index_u32(var_2, 5u)], -1i), !var_0, Struct_1(var_1.x, !vec3<bool>(var_0.x, var_0.x, var_0.x), var_1.xwz), Struct_2(_wgslsmith_mult_u32(min(2875u, 1u) ^ u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~u_input.a.zy, _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a.x, 4294967295u), u_input.a.zx)), 14u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.zy - _wgslsmith_f_op_vec2_f32(trunc(var_1.zw)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

