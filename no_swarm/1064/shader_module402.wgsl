struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: f32,
    d: vec4<bool>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
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

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global1: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(44231u, vec4<bool>(true, false, false, true), 460f, vec4<bool>(true, true, false, true), 0u), Struct_1(4294967295u, vec4<bool>(true, true, false, true), -600f, vec4<bool>(true, false, true, true), 46314u), Struct_1(4294967295u, vec4<bool>(true, true, true, true), 500f, vec4<bool>(true, true, true, false), 0u), Struct_1(57578u, vec4<bool>(false, false, false, true), -955f, vec4<bool>(false, true, true, false), 0u), Struct_1(20445u, vec4<bool>(true, false, false, true), -2364f, vec4<bool>(true, false, true, false), 2726u), Struct_1(0u, vec4<bool>(true, false, false, true), -455f, vec4<bool>(false, true, false, false), 1u), Struct_1(37857u, vec4<bool>(true, false, false, false), 246f, vec4<bool>(false, false, false, true), 1u), Struct_1(0u, vec4<bool>(true, false, false, true), 1000f, vec4<bool>(true, true, true, false), 0u), Struct_1(30652u, vec4<bool>(true, true, true, false), 260f, vec4<bool>(false, false, true, false), 21882u), Struct_1(12845u, vec4<bool>(true, false, false, true), -1001f, vec4<bool>(true, true, true, true), 4294967295u), Struct_1(4294967295u, vec4<bool>(false, false, true, true), -1000f, vec4<bool>(true, true, false, false), 36157u), Struct_1(4294967295u, vec4<bool>(false, false, true, false), 372f, vec4<bool>(true, true, false, false), 1u), Struct_1(0u, vec4<bool>(true, false, true, false), 620f, vec4<bool>(true, false, true, true), 68264u), Struct_1(46553u, vec4<bool>(false, true, false, true), 178f, vec4<bool>(false, false, true, false), 54576u), Struct_1(16198u, vec4<bool>(true, false, false, true), 193f, vec4<bool>(false, false, false, false), 31261u), Struct_1(13310u, vec4<bool>(false, false, false, true), 1104f, vec4<bool>(true, true, true, false), 18158u), Struct_1(0u, vec4<bool>(true, false, false, false), -1463f, vec4<bool>(false, false, true, true), 28269u), Struct_1(1u, vec4<bool>(false, false, false, false), 1273f, vec4<bool>(true, true, false, true), 14732u), Struct_1(1u, vec4<bool>(false, true, false, true), 387f, vec4<bool>(false, true, true, false), 1u), Struct_1(1u, vec4<bool>(false, false, false, false), 495f, vec4<bool>(false, false, false, false), 27028u), Struct_1(1u, vec4<bool>(false, true, true, true), -942f, vec4<bool>(true, true, false, false), 15248u), Struct_1(0u, vec4<bool>(true, true, false, true), -733f, vec4<bool>(false, true, false, false), 4294967295u), Struct_1(57646u, vec4<bool>(false, true, false, true), -237f, vec4<bool>(true, true, true, true), 13821u));

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    global0 = vec4<bool>(select(true, global2.b.x, all(global0.zw)), true, true, true);
    var var_0 = Struct_1(~34599u, select(!vec4<bool>(true, select(true, global0.x, global0.x), global2.b.x, select(global0.x, true, true)), select(global2.b, select(select(vec4<bool>(global0.x, false, false, global0.x), global2.d, vec4<bool>(false, global2.b.x, true, true)), vec4<bool>(false, true, global2.b.x, global0.x), true), select(vec4<bool>(global0.x, global0.x, global2.d.x, false), select(vec4<bool>(global2.b.x, global2.b.x, false, global2.d.x), vec4<bool>(global2.d.x, true, global0.x, true), true), global0.x)), vec4<bool>(false, select(global0.x, any(vec4<bool>(global2.b.x, global2.b.x, true, global0.x)), !global0.x), false, true)), _wgslsmith_f_op_f32(-global2.c), global2.b, _wgslsmith_dot_vec3_u32(u_input.c.xwy, max(max(vec3<u32>(62274u, 16189u, 1u) >> (vec3<u32>(19424u, u_input.c.x, global2.a) % vec3<u32>(32u)), u_input.c.zxy), u_input.c.xzw)));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, _wgslsmith_dot_vec3_u32(u_input.c.wxw, vec3<u32>(firstLeadingBit(global2.a), ~global2.e, 1u))), 23u)];
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(664f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c, var_0.c))))));
    let var_3 = !(!select(global0.yxy, vec3<bool>(any(var_0.b.xz), global2.c == 816f, true), !var_0.d.x));
    return select(select(vec4<bool>(false, all(!var_1.d), !select(true, global0.x, false), select(!global0.x, !var_3.x, var_3.x)), var_1.d, !select(vec4<bool>(var_1.b.x, false, global2.d.x, var_3.x), !var_1.b, any(global2.d))), select(var_1.d, select(vec4<bool>(true, var_1.d.x && global0.x, global0.x, true), vec4<bool>(true, true, true, false), any(!vec3<bool>(false, var_3.x, false))), vec4<bool>(true, !var_1.d.x && var_1.d.x, !global2.b.x, all(vec4<bool>(global2.d.x, true, true, false)))), _wgslsmith_dot_vec4_i32(select(abs(vec4<i32>(-1i, u_input.d.x, -1i, u_input.a)), vec4<i32>(u_input.b.x, u_input.d.x, 18390i, u_input.b.x), var_1.d), vec4<i32>(-u_input.a, u_input.d.x, -1i, u_input.a | u_input.d.x)) == u_input.d.x);
}

fn func_2() -> vec2<bool> {
    global2 = Struct_1(firstTrailingBit(17168u) << (4294967295u % 32u), select(select(vec4<bool>(false, !global0.x, any(global2.d), !global0.x), func_3(), !func_3().x), vec4<bool>(any(global2.b.xxy), false, any(select(global0.zzy, global2.b.yyw, vec3<bool>(false, global2.d.x, false))), true), !global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.c, global2.c))) * global2.c), !select(!select(global2.b, vec4<bool>(global2.b.x, true, global2.d.x, global0.x), global2.d), vec4<bool>(true, global2.b.x, true, !global0.x), select(all(global2.d), true || global2.d.x, any(global2.b.yx))), u_input.c.x);
    let var_0 = _wgslsmith_div_i32(~_wgslsmith_add_i32(~u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, u_input.b.x, 20053i, u_input.b.x), vec4<i32>(u_input.b.x, 2147483647i, -1i, 2554i)) & 2147483647i), reverseBits(abs(u_input.a)));
    var var_1 = ~(u_input.b.zx & select(~_wgslsmith_mod_vec2_i32(u_input.b.yx, vec2<i32>(u_input.a, u_input.b.x)), _wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(40911i, u_input.d.x)), -u_input.d.xy), vec2<bool>(true, true)));
    var_1 = vec2<i32>(firstTrailingBit(_wgslsmith_add_i32(-_wgslsmith_clamp_i32(var_1.x, 2147483647i, u_input.a), -2147483647i)), u_input.d.x);
    var_1 = ~_wgslsmith_sub_vec2_i32(~firstTrailingBit(vec2<i32>(56184i, var_1.x)), select(vec2<i32>(countOneBits(var_1.x), -38434i), min(vec2<i32>(u_input.b.x, 1i) ^ vec2<i32>(u_input.b.x, var_0), u_input.b.xy), select(global2.b.xx, global0.wy, !global0.zw)));
    return select(vec2<bool>(!global2.b.x, any(!global2.b.zx)), !(!vec2<bool>(u_input.c.x != global2.e, any(vec4<bool>(false, global0.x, false, false)))), !func_3().yy);
}

fn func_4(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = ~(~_wgslsmith_mod_vec3_i32(max(u_input.b, u_input.d) | (vec3<i32>(u_input.b.x, u_input.d.x, -13873i) ^ vec3<i32>(33382i, 1i, 0i)), vec3<i32>(countOneBits(1i), _wgslsmith_mult_i32(u_input.b.x, u_input.d.x), i32(-1i) * -2454i)));
    var_0 = u_input.b;
    return Struct_1(u_input.c.x, !vec4<bool>(true || (true | global2.d.x), global0.x, func_3().x | all(global2.b.yyx), global0.x), _wgslsmith_f_op_f32(sign(global2.c)), global2.b, 6931u);
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: f32) -> vec4<bool> {
    global1 = array<Struct_1, 23>();
    global2 = func_4(select(!select(!vec2<bool>(global2.b.x, true), select(global2.d.xy, vec2<bool>(global0.x, global2.d.x), global0.zy), global0.x), !func_2(), arg_1.d.ww));
    let var_0 = func_4(func_2());
    global0 = !global2.d;
    let var_1 = global2.a;
    return select(func_3(), vec4<bool>(all(global0.yz), any(select(global2.d.ywy, !arg_1.d.xxz, !vec3<bool>(global2.d.x, true, var_0.d.x))), select(var_0.b.x && true, func_2().x, select(true, true, -633f > global2.c)), false), vec4<bool>(true, !(_wgslsmith_f_op_f32(exp2(global2.c)) <= 440f), global0.x, var_0.d.x & select(arg_1.d.x, var_0.d.x && arg_1.d.x, all(vec3<bool>(true, var_0.d.x, global0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.yy;
    var var_1 = -2269f;
    var var_2 = global2.b.wzz;
    let var_3 = vec3<u32>(u_input.c.x, u_input.c.x, global2.e);
    let var_4 = Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, var_0.x, u_input.c.x), u_input.c) | 4294967295u, global2.d, -333f, select(!global2.b, select(select(global2.d, func_1(u_input.c.xz, Struct_1(4294967295u, vec4<bool>(var_2.x, true, false, var_2.x), global2.c, vec4<bool>(false, var_2.x, global2.d.x, var_2.x), global2.e), global2.c), any(vec2<bool>(var_2.x, false))), !global2.b, !vec4<bool>(global2.d.x, global0.x, false, true)), func_4(var_2.xz).b.x), 0u);
    var var_5 = func_4(var_2.zx);
    var_0 = reverseBits(_wgslsmith_mult_vec2_u32(~u_input.c.yz, var_3.xy));
    global1 = array<Struct_1, 23>();
    var var_6 = func_4(vec2<bool>(global0.x, any(vec4<bool>(!global0.x, var_4.c == -287f, var_2.x, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_6.c, -1043f, -951f, var_6.c)))))));
}

