struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4>;

var<private> global1: array<bool, 31> = array<bool, 31>(false, false, true, false, true, false, false, true, false, false, false, true, false, true, false, false, false, false, true, true, true, false, true, true, true, true, true, false, false, false, true);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> vec3<bool> {
    var var_0 = arg_0.a;
    var var_1 = Struct_5(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1f, 117f)), -841f)), Struct_3(arg_0.b));
    global1 = array<bool, 31>();
    var var_2 = !vec4<bool>(arg_1, select(true, all(arg_0.b.a.wxw) || (-79862i < u_input.a), any(!vec2<bool>(var_1.b.a.a.x, false))), arg_0.a, true);
    let var_3 = vec2<i32>(u_input.a, u_input.d.x);
    return select(!vec3<bool>(!all(var_1.b.a.a.yx), !var_1.b.a.a.x, var_3.x > _wgslsmith_mult_i32(var_3.x, -38060i)), vec3<bool>(var_3.x > -9745i, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(countOneBits(3641u), u_input.c.x << (4294967295u % 32u)), u_input.c.x, 1u), 31u)], var_2.x), true);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec3<bool>) -> bool {
    var var_0 = ~(-13513i);
    var_0 = u_input.d.x;
    let var_1 = Struct_4(arg_0.zxw, u_input.c.zy, Struct_2(arg_1.a.a.x, arg_1.a));
    global1 = array<bool, 31>();
    let var_2 = arg_1;
    return any(func_3(var_1.c, all(!var_1.c.b.a.wx)));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_4, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = arg_2.a.x;
    let var_1 = ~(~vec4<u32>(arg_2.b.x ^ arg_2.b.x, ~arg_2.b.x, _wgslsmith_mult_u32(0u, u_input.c.x), 4294967295u) | u_input.c);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(516f))) + 820f);
    let var_3 = Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -802f), Struct_3(arg_2.c.b));
    var var_4 = vec3<i32>(_wgslsmith_mod_i32(firstLeadingBit(9243i), -1i), _wgslsmith_dot_vec3_i32(-arg_2.a, ~(-vec3<i32>(8954i, 1i, arg_2.a.x))), _wgslsmith_dot_vec3_i32(vec3<i32>(~2147483647i, arg_2.a.x, arg_2.a.x), select(_wgslsmith_mod_vec3_i32(vec3<i32>(-29058i, u_input.a, -1134i), arg_2.a), -arg_2.a, vec3<bool>(false, arg_0, false)) & vec3<i32>(countOneBits(u_input.a), -1i, arg_2.a.x)));
    return arg_2.c.b;
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_2(any(select(vec2<bool>(true, true), vec2<bool>(true, false), select(!vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 4u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 31u)]), !vec2<bool>(global1[_wgslsmith_index_u32(4908u, 31u)], global0[_wgslsmith_index_u32(1u, 4u)])))), func_4(~(u_input.e.x >> (u_input.c.x % 32u)) > u_input.e.x, func_2(reverseBits(min(vec4<i32>(u_input.a, u_input.b, -1i, 27096i), vec4<i32>(-45931i, u_input.a, u_input.a, u_input.b))), Struct_3(Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 31u)], false, global0[_wgslsmith_index_u32(87062u, 4u)], false))), select(!vec3<bool>(global1[_wgslsmith_index_u32(40108u, 31u)], false, false), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 31u)], global1[_wgslsmith_index_u32(0u, 31u)], false), vec3<bool>(true, true, false), global1[_wgslsmith_index_u32(u_input.e.x, 31u)]), true)), Struct_4(abs(-vec3<i32>(-76179i, u_input.d.x, 9426i)), u_input.e.xw, Struct_2(global1[_wgslsmith_index_u32(u_input.e.x, 31u)], Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 31u)], global1[_wgslsmith_index_u32(u_input.e.x, 31u)], global0[_wgslsmith_index_u32(u_input.c.x, 4u)], global0[_wgslsmith_index_u32(u_input.c.x, 4u)])))), u_input.c));
    let var_1 = Struct_1(vec4<bool>(func_3(Struct_2(true, Struct_1(var_0.b.a)), true).x, global1[_wgslsmith_index_u32(~1u, 31u)], true, any(select(func_3(Struct_2(global0[_wgslsmith_index_u32(1382u, 4u)], var_0.b), global1[_wgslsmith_index_u32(u_input.e.x, 31u)]).zz, var_0.b.a.zw, false))));
    let var_2 = arg_0.x;
    var_0 = Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(arg_0.x)))) != var_2, Struct_1(var_0.b.a));
    var var_3 = var_0.b.a.x;
    return Struct_1(vec4<bool>(true, global1[_wgslsmith_index_u32(min(_wgslsmith_mult_u32(u_input.e.x, u_input.e.x), _wgslsmith_sub_u32(u_input.e.x, 1u)), 31u)] && true, all(select(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 4u)], false, global0[_wgslsmith_index_u32(u_input.e.x, 4u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 31u)], var_1.a.x), true)), !(!(u_input.c.x >= 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 4>();
    global1 = array<bool, 31>();
    let var_0 = func_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(953f, -503f, -425f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-703f, -1179f, 459f))))));
    let var_1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -328f)), -1967f)), Struct_3(Struct_1(select(!var_0.a, var_0.a, false))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * _wgslsmith_f_op_f32(step(var_1.a, var_1.a))))));
    let var_3 = -726f;
    var var_4 = Struct_1(!vec4<bool>(var_0.a.x, var_0.a.x, any(func_4(global1[_wgslsmith_index_u32(55927u, 31u)], true, Struct_4(vec3<i32>(u_input.d.x, 8748i, -2147483647i), vec2<u32>(u_input.c.x, 0u), Struct_2(false, var_1.b.a)), u_input.c).a.yyw), var_0.a.x));
    global0 = array<bool, 4>();
    var_4 = var_1.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.e.x, 1u), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_1.a)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-866f, var_1.a), vec2<f32>(var_2, 299f))))))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.a, _wgslsmith_f_op_f32(-714f - -997f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-475f * var_1.a) * var_2), _wgslsmith_f_op_f32(select(var_2, _wgslsmith_f_op_f32(-var_1.a), true)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_3, var_1.a, false)))))));
}

