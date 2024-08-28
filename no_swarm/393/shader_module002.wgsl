struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
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

var<private> global0: array<vec2<u32>, 15>;

var<private> global1: vec3<f32> = vec3<f32>(-1473f, 104f, -1670f);

var<private> global2: array<f32, 8>;

var<private> global3: array<vec3<u32>, 22>;

var<private> global4: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: Struct_4) -> i32 {
    var var_0 = Struct_1(select(global4.c.xx, global4.e.a, !global4.e.a), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-679f, global2[_wgslsmith_index_u32(5623u, 8u)])) * 812f) + _wgslsmith_f_op_f32(-global1.x)), global4.a.b.x), u_input.a.x, global4.e.d);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(603f, 314f)) - global2[_wgslsmith_index_u32(min(_wgslsmith_mod_u32(_wgslsmith_div_u32(~30098u, u_input.b.x), 4294967295u), u_input.a.x), 8u)]);
    var_0 = global4.e;
    var var_2 = 0i;
    var_0 = global4.a;
    return max(abs(2203i << ((0u << (~arg_0 % 32u)) % 32u)), _wgslsmith_mod_i32(min(~_wgslsmith_mult_i32(-2147483647i, arg_1.a), -arg_1.a), 17737i));
}

fn func_2() -> vec3<i32> {
    var var_0 = global4.e.d.x;
    let var_1 = Struct_4(~(~func_3(u_input.b.x, Struct_4(1i, vec2<i32>(4820i, -20115i)))) & 0i, firstLeadingBit(vec2<i32>(1i, 1i)) ^ (firstLeadingBit(vec2<i32>(-2147483647i, -23322i)) << (global0[_wgslsmith_index_u32(max(1u, ~52860u), 15u)] % vec2<u32>(32u))));
    var var_2 = var_1;
    let var_3 = Struct_3(global4.a);
    let var_4 = var_2.b;
    return vec3<i32>(abs(var_1.a) ^ -25695i, _wgslsmith_div_i32(var_1.b.x, var_4.x), -17876i);
}

fn func_4(arg_0: vec3<f32>, arg_1: f32, arg_2: i32, arg_3: vec3<i32>) -> Struct_3 {
    global2 = array<f32, 8>();
    global1 = global4.e.d.wyy;
    var var_0 = arg_3.yz;
    global4 = Struct_2(global4.b, Struct_1(global4.c.xx, vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.x * -236f), _wgslsmith_f_op_f32(f32(-1f) * -266f))), -428f), 41998u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1612f, -428f, 1738f)))), vec4<bool>(global4.c.x, false, true, false), 56972u, Struct_1(global4.b.a, arg_0.xy, u_input.a.x, vec4<f32>(-653f, 356f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.e.d.x) - _wgslsmith_f_op_f32(-1813f - global1.x)))));
    var var_1 = Struct_4(-_wgslsmith_dot_vec4_i32(~select(vec4<i32>(arg_3.x, -2147483647i, -50620i, 46268i), vec4<i32>(0i, var_0.x, 1i, arg_2), global4.b.a.x), min(vec4<i32>(arg_2, var_0.x, arg_2, var_0.x), vec4<i32>(arg_3.x, arg_2, arg_3.x, arg_2))), ~vec2<i32>(abs(-31133i), i32(-1i) * -15418i));
    return Struct_3(Struct_1(global4.e.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.zz)), 20857u, global4.a.d));
}

fn func_1() -> Struct_3 {
    var var_0 = ~(~(~(_wgslsmith_div_u32(19889u, global4.b.c) ^ u_input.b.x)));
    var var_1 = abs(min(global0[_wgslsmith_index_u32(62106u << (_wgslsmith_dot_vec4_u32(vec4<u32>(global4.b.c, 0u, 11994u, global4.a.c), vec4<u32>(global4.a.c, 44323u, 0u, 0u)) % 32u), 15u)], vec2<u32>(global4.b.c, max(u_input.a.x, global4.d)))) ^ vec2<u32>(~32994u, global4.e.c);
    var var_2 = true;
    var var_3 = ~var_1.x;
    global3 = array<vec3<u32>, 22>();
    return func_4(vec3<f32>(-1095f, global2[_wgslsmith_index_u32(var_1.x, 8u)], 1280f), 772f, -(~(~(-22626i))), abs(-func_2()));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<f32>) -> bool {
    var var_0 = Struct_2(arg_0.a, func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-298f, arg_1.x, global1.x), global4.a.d.zxx), arg_1) + _wgslsmith_f_op_vec3_f32(arg_1 * _wgslsmith_f_op_vec3_f32(-arg_0.a.d.xyx))), global2[_wgslsmith_index_u32(4294967295u, 8u)], _wgslsmith_div_i32(~func_3(0u, Struct_4(13772i, vec2<i32>(2476i, -2147483647i))), -2147483647i), vec3<i32>(func_3(u_input.b.x, Struct_4(20479i, vec2<i32>(-2147483647i, 1i))), _wgslsmith_div_i32(1i, 1i), _wgslsmith_mod_i32(-26210i >> (arg_0.a.c % 32u), ~34943i))).a, global4.c, arg_0.a.c, arg_0.a);
    var var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(reverseBits(1i), 38368i), -vec2<i32>(-5125i, 2147483647i), -max(vec2<i32>(47053i, 39520i) >> (vec2<u32>(0u, var_0.d) % vec2<u32>(32u)), abs(vec2<i32>(1i, -1i)))) & (max(vec2<i32>(1i, 1i), select(vec2<i32>(0i, 33102i), vec2<i32>(1i, 3818i), var_0.c.yx) | min(vec2<i32>(1i, -39165i), vec2<i32>(2318i, 23673i))) >> (vec2<u32>(0u, 46u) % vec2<u32>(32u)));
    return arg_0.a.a.x;
}

fn func_6(arg_0: bool, arg_1: Struct_4, arg_2: i32, arg_3: f32) -> StorageBuffer {
    let var_0 = vec4<i32>(1i, _wgslsmith_mult_i32(~(-30453i), func_3(~_wgslsmith_mult_u32(4294967295u, global4.a.c), Struct_4(-arg_2, vec2<i32>(29614i, 69223i)))), -37996i, min(_wgslsmith_div_i32(arg_2, ~(~arg_1.a)), _wgslsmith_sub_i32(-1i, arg_1.b.x)));
    global1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global4.a.d.xxx + _wgslsmith_f_op_vec3_f32(exp2(global4.b.d.yzx))), _wgslsmith_f_op_vec3_f32(global4.a.d.wzw + func_4(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(global4.e.d.wyz)))), global1.x, 1i, vec3<i32>(arg_1.b.x, -1i, var_0.x)).a.d.xzz), (select(~1i, min(arg_1.b.x, arg_1.a), func_5(Struct_3(global4.e), global4.a.d.www)) & arg_1.b.x) > -abs(-9060i ^ var_0.x)));
    global3 = array<vec3<u32>, 22>();
    let var_1 = global4.a.c;
    let var_2 = Struct_3(func_1().a);
    return StorageBuffer(global4.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 8>();
    global0 = array<vec2<u32>, 15>();
    let var_0 = _wgslsmith_f_op_f32(-global4.b.b.x);
    let var_1 = select(global4.c.zz, global4.c.yy, u_input.a.x > _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_add_u32(u_input.a.x, 1u) << (10207u % 32u)));
    let var_2 = -1420f;
    var var_3 = ~u_input.a.x;
    var var_4 = false;
    var var_5 = _wgslsmith_div_vec2_f32(global1.yy, _wgslsmith_f_op_vec2_f32(global4.e.b * global4.b.d.zw));
    let x = u_input.a;
    s_output = func_6(func_5(func_1(), vec3<f32>(global2[_wgslsmith_index_u32(~(u_input.b.x >> (u_input.a.x % 32u)), 8u)], _wgslsmith_f_op_f32(-global4.e.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1055f - 1287f)))), Struct_4(_wgslsmith_div_i32(-47205i, ~(-2147483647i)), ~vec2<i32>(select(-23090i, 0i, true), reverseBits(-6798i))), _wgslsmith_div_i32(~0i, ~(-_wgslsmith_mod_i32(-2147483647i, 11168i))), _wgslsmith_f_op_f32(round(-873f)));
}

