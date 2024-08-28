struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 26>;

var<private> global1: array<f32, 18> = array<f32, 18>(-1474f, 321f, 110f, 778f, 890f, -410f, -1052f, -376f, -214f, 559f, -966f, -673f, -371f, 973f, -1479f, 226f, -1000f, 357f);

var<private> global2: Struct_3;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: i32, arg_1: bool) -> Struct_1 {
    var var_0 = Struct_2(global2.b.a, Struct_1(global2.b.b.a, 0u, vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.c))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-772f * -295f), _wgslsmith_f_op_f32(global2.b.c.c.x * 2459f))))), global2.b.c, global2.b.d);
    let var_1 = ~u_input.a;
    var var_2 = ~var_1;
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.c.x, -220f));
    let var_4 = firstLeadingBit(~_wgslsmith_clamp_i32(i32(-1i) * -23351i, -2147483647i, arg_0) << (var_0.b.a % 32u));
    return var_0.b;
}

fn func_3() -> i32 {
    return -6291i;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool, arg_3: Struct_1) -> Struct_2 {
    let var_0 = Struct_3(vec3<bool>(arg_2, false, false), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.b.c.a, 4294967295u, global2.b.c.a, arg_1.b.a), vec4<u32>(5375u, 1699u, 42329u, 35030u)), 18u)] - 1039f) * global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~1u, _wgslsmith_add_u32(25744u, 1u)), 18u)])));
    global0 = array<vec2<u32>, 26>();
    var var_1 = Struct_4(func_3(), Struct_2(var_0.b.a, Struct_1(41019u, arg_3.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-593f, var_0.b.c.c.x))), arg_3, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(arg_1.d, var_0.b.d, false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.c.x, global1[_wgslsmith_index_u32(arg_3.b, 18u)], 267f) * arg_1.d), select(var_0.a, vec3<bool>(arg_2, false, var_0.a.x), vec3<bool>(global2.a.x, var_0.a.x, false)))))), func_1(-39169i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.c.x) + _wgslsmith_f_op_f32(ceil(arg_1.d.x))) >= var_0.b.d.x), Struct_3(var_0.a, global2.b, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1324f)), var_0.c))));
    var var_2 = ~select(_wgslsmith_div_vec2_i32(vec2<i32>(~global2.b.a.x, arg_1.a.x << (u_input.a % 32u)), vec2<i32>(i32(-1i) * -44282i, u_input.c)), ~(-vec2<i32>(-25324i, var_1.a)), select(!var_0.a.yx, select(!global2.a.zz, vec2<bool>(global2.a.x, global2.a.x), !vec2<bool>(var_0.a.x, false)), var_0.a.zx));
    var var_3 = arg_1;
    return global2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(~126047u, 1u << (u_input.a % 32u), global2.b.c.b), vec3<u32>(~18522u, ~global2.b.c.b, global2.b.b.a << (48949u % 32u))), 20595u), _wgslsmith_add_u32(global2.b.b.b, u_input.a), global2.b.c.b);
    var var_1 = true | global2.a.x;
    var var_2 = Struct_4(1i, func_2(Struct_1(global2.b.b.a, max(~global2.b.b.a, 53321u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.b.c.c) + _wgslsmith_f_op_vec2_f32(-global2.b.c.c))), Struct_2(firstLeadingBit(-global2.b.a), Struct_1(max(u_input.a, 32410u), firstLeadingBit(0u), vec2<f32>(-1068f, global1[_wgslsmith_index_u32(u_input.a, 18u)])), func_1(global2.b.a.x, 4294967295u == var_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.b.d * vec3<f32>(global1[_wgslsmith_index_u32(var_0, 18u)], global2.c, 998f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b.b.c.x, global1[_wgslsmith_index_u32(var_0, 18u)], global1[_wgslsmith_index_u32(var_0, 18u)])))), (global2.a.x && false) || (global1[_wgslsmith_index_u32(firstTrailingBit(19058u), 18u)] != -1451f), func_1(_wgslsmith_div_i32(u_input.c, -2147483647i ^ global2.b.a.x), false)), func_2(Struct_1(global2.b.c.a, _wgslsmith_div_u32(global2.b.b.a, 70557u) | global2.b.c.a, global2.b.c.c), func_2(Struct_1(1u, 29207u, global2.b.b.c), global2.b, true, global2.b.b), global2.a.x & all(select(vec4<bool>(global2.a.x, global2.a.x, false, true), vec4<bool>(global2.a.x, global2.a.x, global2.a.x, global2.a.x), vec4<bool>(true, global2.a.x, false, global2.a.x))), Struct_1(0u, (1u << (global2.b.b.b % 32u)) & _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 54153u), vec3<u32>(4294967295u, 1256u, 4294967295u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global1[_wgslsmith_index_u32(var_0, 18u)]))))).c, Struct_3(select(global2.a, select(select(global2.a, vec3<bool>(global2.a.x, true, false), true), global2.a, !vec3<bool>(global2.a.x, global2.a.x, true)), !global2.a.x), Struct_2(-global2.b.a, global2.b.b, global2.b.c, global2.b.d), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(global2.b.c.a, global2.b.b.a, 7519u)), firstLeadingBit(vec3<u32>(1u, var_0, var_0))), 18u)]));
    var_2 = Struct_4(i32(-1i) * -1i, func_2(var_2.b.b, Struct_2(~(vec3<i32>(var_2.b.a.x, -7146i, global2.b.a.x) >> (vec3<u32>(1u, 0u, 1012u) % vec3<u32>(32u))), global2.b.c, global2.b.c, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1045f, -873f, global2.b.b.c.x), vec3<f32>(820f, 239f, -1606f)))))), select(var_2.d.a.x, var_2.d.a.x, 53357u < abs(global2.b.b.a)), var_2.b.b), global2.b.b, var_2.d);
    var var_3 = func_1(-(~firstLeadingBit(_wgslsmith_add_i32(1i, u_input.b))), reverseBits(~_wgslsmith_div_u32(0u, 5013u)) == min(_wgslsmith_mod_u32(var_0, 4294967295u) << (73320u % 32u), 60613u));
    var var_4 = func_1(firstTrailingBit(_wgslsmith_sub_i32(global2.b.a.x, u_input.c)), true).a << (firstLeadingBit(~(~(~var_0))) % 32u);
    let var_5 = var_2.d.b.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(843f, 392f))), _wgslsmith_f_op_f32(-var_3.c.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1407f, -241f, var_2.d.a.x)), func_2(Struct_1(0u, 16955u, var_3.c), var_2.b, global2.a.x, var_2.c).c.c.x) + -813f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.b.d.x * _wgslsmith_f_op_f32(select(global2.c, global1[_wgslsmith_index_u32(4294967295u, 18u)], false))), global2.b.b.c.x))), abs(_wgslsmith_mult_u32(var_0 | var_3.b, ~var_3.a)) << (var_3.b % 32u), select(~abs(_wgslsmith_div_vec2_u32(global0[_wgslsmith_index_u32(539u, 26u)], global0[_wgslsmith_index_u32(1u, 26u)])), vec2<u32>(reverseBits(firstTrailingBit(1u)), 4294967295u), true || var_2.d.a.x));
}

