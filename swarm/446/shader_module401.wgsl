struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
    c: vec2<u32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: f32 = 1430f;

var<private> global2: array<bool, 14> = array<bool, 14>(true, false, false, true, false, true, false, false, true, true, false, true, true, true);

var<private> global3: vec4<f32>;

var<private> global4: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(true, true)));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: vec2<f32>, arg_3: vec2<u32>) -> i32 {
    var var_0 = ~vec3<u32>(~(~arg_3.x), 8426u, ~abs(u_input.b));
    var var_1 = Struct_3(~1933u, Struct_1(-vec4<i32>(_wgslsmith_mod_i32(global0.x, global0.x), -1i & global0.x, _wgslsmith_sub_i32(0i, global0.x), global0.x << (u_input.b % 32u)), -557f), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(10264u, var_0.x), 14u)], Struct_2(vec2<bool>(true, true)));
    let var_2 = var_1.b.a.wxw;
    global2 = array<bool, 14>();
    var_0 = select(~max(_wgslsmith_sub_vec3_u32(vec3<u32>(77555u, u_input.b, 4294967295u), vec3<u32>(u_input.b, u_input.a.x, 16461u)), vec3<u32>(0u, ~1u, u_input.a.x)), select(~vec3<u32>(4294967295u, var_0.x, reverseBits(u_input.b)), ~vec3<u32>(var_0.x, var_1.a, arg_3.x) & select(vec3<u32>(0u, 4294967295u, u_input.a.x), vec3<u32>(26605u, 1u, var_0.x), arg_0 | arg_0), !(!(!vec3<bool>(global2[_wgslsmith_index_u32(var_1.a, 14u)], false, var_1.d.a.x)))), !(!(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 14u)], false, true))));
    return var_1.b.a.x;
}

fn func_2(arg_0: vec4<u32>) -> vec2<i32> {
    global0 = abs(-((vec3<i32>(global0.x, -29464i, 26748i) << (_wgslsmith_div_vec3_u32(arg_0.ywx, vec3<u32>(15656u, u_input.b, arg_0.x)) % vec3<u32>(32u))) ^ select(vec3<i32>(1i, global0.x, -2147483647i) ^ vec3<i32>(global0.x, u_input.c, 0i), vec3<i32>(global0.x, u_input.c, -1i), !vec3<bool>(global2[_wgslsmith_index_u32(29541u, 14u)], global2[_wgslsmith_index_u32(arg_0.x, 14u)], global2[_wgslsmith_index_u32(0u, 14u)]))));
    global0 = vec3<i32>(-1i, u_input.c | -func_3(true, _wgslsmith_f_op_vec3_f32(-global3.yxy), global3.xy, vec2<u32>(0u, u_input.b)), ~0i);
    var var_0 = select(vec3<bool>(false, all(vec2<bool>(!global2[_wgslsmith_index_u32(0u, 14u)], true != global2[_wgslsmith_index_u32(65255u, 14u)])), global2[_wgslsmith_index_u32(arg_0.x & _wgslsmith_clamp_u32(abs(27634u), u_input.d, arg_0.x), 14u)]), vec3<bool>(global2[_wgslsmith_index_u32(~arg_0.x, 14u)], true, select(true, true, true) || !(global3.x <= -777f)), !(!select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 14u)], global2[_wgslsmith_index_u32(arg_0.x, 14u)], global2[_wgslsmith_index_u32(arg_0.x, 14u)]), !vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 14u)], global2[_wgslsmith_index_u32(1u, 14u)], global2[_wgslsmith_index_u32(1u, 14u)]), !vec3<bool>(global2[_wgslsmith_index_u32(arg_0.x, 14u)], global2[_wgslsmith_index_u32(4294967295u, 14u)], global2[_wgslsmith_index_u32(arg_0.x, 14u)]))));
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global3.zw))), vec2<f32>(-1000f, _wgslsmith_f_op_f32(-global3.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(3156f, global3.x))))))));
    let var_2 = Struct_1((vec4<i32>(u_input.c, countOneBits(u_input.c), global0.x << (27137u % 32u), u_input.c) ^ _wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.c, -11611i, -11325i, u_input.c), vec4<i32>(16882i, u_input.c, 2147483647i, u_input.c), vec4<i32>(global0.x, 1i, -53440i, 2147483647i) ^ vec4<i32>(global0.x, global0.x, 0i, -1i))) << (arg_0 % vec4<u32>(32u)), var_1.x);
    return vec2<i32>(var_2.a.x ^ _wgslsmith_add_i32(global0.x, ~(u_input.c & var_2.a.x)), -reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(16554i, 19925i, 19563i), vec3<i32>(global0.x, var_2.a.x, var_2.a.x))) ^ -(select(global0.x, global0.x, false) ^ _wgslsmith_dot_vec3_i32(var_2.a.yzy, vec3<i32>(-1i, var_2.a.x, var_2.a.x))));
}

fn func_1() -> f32 {
    global0 = firstLeadingBit(vec3<i32>(0i, 42241i, _wgslsmith_dot_vec2_i32(-select(vec2<i32>(-2147483647i, global0.x), vec2<i32>(u_input.c, -1i), vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.d, 14u)])), func_2(vec4<u32>(1u, 4294967295u, u_input.b, 4294967295u) ^ vec4<u32>(4294967295u, u_input.b, 1u, u_input.d)))));
    global0 = vec3<i32>(13569i >> (~(0u ^ u_input.b) % 32u), max(i32(-1i) * -(~global0.x), _wgslsmith_mult_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, global0.x, 0i, u_input.c), vec4<i32>(-74180i, u_input.c, 0i, -1i)), i32(-1i) * -32640i)), firstLeadingBit(95357i));
    let var_0 = vec2<bool>(true, true);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-805f)), _wgslsmith_f_op_f32(f32(-1f) * -1457f));
    return global3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec2_u32(u_input.a, ~vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1914u, u_input.d), vec3<u32>(u_input.d, 0u, u_input.b)), ~(u_input.b & 0u)));
    global1 = _wgslsmith_f_op_f32(func_1());
    global2 = array<bool, 14>();
    global3 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(180f, -384f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2163f + global3.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1576f * 247f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(global3.x, -1404f)))))));
    var var_1 = 971f;
    let var_2 = global3.x;
    let x = u_input.a;
    s_output = StorageBuffer(-(~1159i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.xx) * vec2<f32>(global3.x, _wgslsmith_f_op_f32(func_1()))));
}

