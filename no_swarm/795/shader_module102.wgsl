struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<f32>,
    d: bool,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: i32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25> = array<u32, 25>(0u, 74841u, 7060u, 12911u, 33588u, 48707u, 4294967295u, 4294967295u, 83889u, 1u, 1u, 64149u, 49362u, 4294967295u, 0u, 1u, 11318u, 4294967295u, 1u, 0u, 22313u, 1u, 4294967295u, 1u, 39054u);

var<private> global1: i32 = i32(-2147483648);

var<private> global2: Struct_2;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<bool> {
    var var_0 = 2241u;
    var var_1 = Struct_4(Struct_3(78832u, vec3<i32>(-1i) * -select(vec3<i32>(481i, 2147483647i, -2147483647i), vec3<i32>(2147483647i, 54467i, 0i), global2.a.a), vec3<bool>(!select(true, global2.a.a, false), true, any(!vec4<bool>(true, true, global2.a.a, global2.d)))), Struct_3(_wgslsmith_div_u32(_wgslsmith_mod_u32(0u, global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16764u, 25u)], 25u)], 25u)]), ~1u), vec3<i32>(1i, 1i, 1i), vec3<bool>(all(vec4<bool>(global2.d, false, false, false)) | false, global2.a.a, false)), 4913i, u_input.b.xx);
    return select(select(vec3<bool>(var_1.a.c.x, !(!global2.a.a), false), select(vec3<bool>(!var_1.a.c.x, global2.d, global2.a.a), !var_1.b.c, 0u < _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, global0[_wgslsmith_index_u32(0u, 25u)]), vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 25u)], 1u, 4294967295u))), true || !(!global2.d)), select(var_1.a.c, vec3<bool>(_wgslsmith_f_op_f32(-global2.c.x) < -1365f, all(select(vec4<bool>(global2.a.a, true, var_1.b.c.x, global2.d), vec4<bool>(global2.a.a, false, global2.a.a, var_1.a.c.x), vec4<bool>(global2.d, global2.d, global2.d, global2.a.a))), global2.a.a), select(var_1.b.c, !vec3<bool>(var_1.b.c.x, false, var_1.b.c.x), select(vec3<bool>(true, true, true), var_1.b.c, select(global2.a.a, false, true)))), all(!(!vec4<bool>(true, true, global2.a.a, false))));
}

fn func_2(arg_0: vec2<u32>) -> bool {
    let var_0 = Struct_3(_wgslsmith_div_u32(0u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), ~vec2<u32>(arg_0.x, global0[_wgslsmith_index_u32(4922u, 25u)])) % 32u), 0u), ~(abs(vec3<i32>(1i, 1i, 1i)) ^ _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-17267i, -1i, 0i), vec3<i32>(-13927i, -2147483647i, -1i), vec3<i32>(1i, 14422i, 18383i)), vec3<i32>(1i, 1i, 1i))), !(!func_3()));
    global1 = _wgslsmith_div_i32(min(_wgslsmith_sub_i32(1431i, -(~var_0.b.x)), _wgslsmith_div_i32(~min(-43888i, -1i), 2147483647i)), var_0.b.x);
    global2 = Struct_2(Struct_1(true), _wgslsmith_f_op_f32(round(global2.c.x)), global2.c, true);
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(global2.b, _wgslsmith_f_op_f32(388f * global2.c.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.c.wx)) + global2.c.ww) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(2870f, _wgslsmith_f_op_f32(f32(-1f) * -577f)))));
    var var_2 = !(!var_0.c.zy);
    return !any(select(!select(vec4<bool>(true, true, true, var_2.x), vec4<bool>(false, var_0.c.x, false, global2.d), true), select(!vec4<bool>(global2.d, true, false, false), !vec4<bool>(var_2.x, global2.a.a, var_0.c.x, global2.d), !vec4<bool>(true, var_2.x, false, false)), select(select(vec4<bool>(true, false, var_0.c.x, false), vec4<bool>(false, var_2.x, true, true), false), !vec4<bool>(var_2.x, false, var_0.c.x, true), vec4<bool>(global2.d, true, false, var_2.x))));
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: Struct_3) -> Struct_3 {
    let var_0 = global0[_wgslsmith_index_u32(~countOneBits(~(arg_2.d.x ^ arg_2.a.a)) | select(0u, ~(~firstTrailingBit(global0[_wgslsmith_index_u32(u_input.b.x, 25u)])), true), 25u)];
    global2 = Struct_2(Struct_1(func_2(~(~arg_2.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-451f, global2.c.x, arg_3.c.x))), global2.c, arg_3.c.x || true);
    return arg_2.a;
}

fn func_1() -> Struct_4 {
    let var_0 = global2.a;
    let var_1 = func_4(~u_input.b.x, vec4<bool>(true, global2.d, func_2(~vec2<u32>(0u, 1u)), var_0.a), Struct_4(Struct_3(u_input.a, _wgslsmith_div_vec3_i32(vec3<i32>(1i, -2147483647i, -2147483647i), vec3<i32>(-23907i, 1i, 3196i)), !(!vec3<bool>(global2.a.a, var_0.a, var_0.a))), Struct_3(select(~0u, ~35212u, any(vec2<bool>(false, var_0.a))), _wgslsmith_sub_vec3_i32(vec3<i32>(20489i, 30898i, -2147483647i), vec3<i32>(2147483647i, 20441i, 58823i) << (u_input.b % vec3<u32>(32u))), vec3<bool>(true, 25608u == u_input.a, var_0.a)), reverseBits(abs(-17882i)), _wgslsmith_clamp_vec2_u32(u_input.b.xz, vec2<u32>(_wgslsmith_mult_u32(12537u, u_input.a), _wgslsmith_div_u32(46705u, u_input.b.x)), vec2<u32>(4294967295u, 0u) & vec2<u32>(u_input.b.x, global0[_wgslsmith_index_u32(50095u, 25u)]))), Struct_3(u_input.a, reverseBits(vec3<i32>(abs(-21293i), -20800i, _wgslsmith_mod_i32(-22801i, -1i))), func_3()));
    let var_2 = Struct_4(func_4(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(30439u, u_input.a, 4294967295u), u_input.b), ~global0[_wgslsmith_index_u32(3697u, 25u)]), 1u, 43942u), !vec4<bool>(var_1.c.x, func_3().x, var_0.a, true), Struct_4(Struct_3(0u, abs(vec3<i32>(var_1.b.x, -12946i, 0i)), vec3<bool>(var_1.c.x, var_0.a, true)), Struct_3(~4294967295u, firstLeadingBit(var_1.b), func_3()), firstTrailingBit(var_1.b.x), u_input.b.xy), Struct_3(4294967295u, ~vec3<i32>(var_1.b.x, var_1.b.x, var_1.b.x), func_3())), var_1, var_1.b.x, vec2<u32>(~u_input.a, _wgslsmith_dot_vec2_u32(countOneBits(firstTrailingBit(u_input.b.zx)), select(~u_input.b.yy, vec2<u32>(u_input.a, 17269u), 0u > global0[_wgslsmith_index_u32(u_input.b.x, 25u)]))));
    var var_3 = true;
    let var_4 = Struct_4(var_2.a, var_2.a, firstTrailingBit(var_1.b.x), u_input.b.yz);
    return var_2;
}

fn func_5(arg_0: i32, arg_1: Struct_4, arg_2: Struct_4) -> f32 {
    global0 = array<u32, 25>();
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-201f * -456f), global2.b)))) * global2.c.xz);
    var var_1 = Struct_1(func_1().a.c.x);
    global1 = abs(38014i << (reverseBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, arg_2.b.a), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.a.a, arg_2.a.a), vec2<u32>(arg_1.d.x, arg_1.b.a)))) % 32u));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_0)) + vec2<f32>(1440f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1058f)), _wgslsmith_f_op_f32(min(-1041f, _wgslsmith_f_op_f32(global2.b + global2.b)))))));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!select(select(vec3<bool>(false, false, global2.a.a), vec3<bool>(true, global2.d, global2.d), global2.d), select(vec3<bool>(global2.a.a, true, true), vec3<bool>(global2.a.a, global2.d, global2.a.a), vec3<bool>(true, global2.d, global2.d)), global2.d)));
    let var_1 = Struct_2(Struct_1(true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_5(1i, func_1(), func_1())))) * -271f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.c.x, _wgslsmith_div_f32(1117f, global2.b), -2286f, 1000f)))), true);
    let var_2 = select(!(!(!vec4<bool>(var_0.x, var_0.x, false, true))), vec4<bool>(all(vec2<bool>(var_0.x | global2.d, var_0.x)), true, false || global2.d, true), vec4<bool>(true, func_3().x, func_2(_wgslsmith_mod_vec2_u32(u_input.b.xz >> (vec2<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 25u)], 25u)]) % vec2<u32>(32u)), u_input.b.yy)), any(!select(vec4<bool>(true, global2.d, true, true), vec4<bool>(var_0.x, global2.d, var_0.x, true), false))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(-2147483647i, -1i, 1i)) >> (~u_input.b % vec3<u32>(32u)), reverseBits(select(min(-vec3<i32>(61040i, -2147483647i, -50614i), ~vec3<i32>(-2147483647i, 0i, 38867i)), ~vec3<i32>(1i, 1i, 1i), func_3().x)));
}

