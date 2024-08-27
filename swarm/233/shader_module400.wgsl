struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4> = array<i32, 4>(1i, i32(-2147483648), 2147483647i, -4154i);

var<private> global1: vec2<bool>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<f32> {
    let var_0 = Struct_1(-global0[_wgslsmith_index_u32(select(82061u, ~(~1u), all(!vec4<bool>(false, false, global1.x, global1.x))), 4u)], vec4<i32>(~global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, 4294967295u), 4u)] ^ (i32(-1i) * -1i), min(-2147483647i, firstLeadingBit(~u_input.d)), -4007i, -(i32(-1i) * -22430i)), vec4<i32>(_wgslsmith_add_i32(0i, 11107i), firstTrailingBit(global0[_wgslsmith_index_u32(~firstTrailingBit(u_input.a), 4u)]), abs(0i), ~(global0[_wgslsmith_index_u32(~u_input.a, 4u)] << (35755u % 32u))), !global1.x);
    let var_1 = ~(~vec4<u32>(u_input.b, ~17083u, u_input.a, ~u_input.a));
    var var_2 = var_0;
    let var_3 = select(select(!select(vec3<bool>(true, true, true), !vec3<bool>(var_2.d, true, false), true), !select(vec3<bool>(false, var_0.d, true), !vec3<bool>(global1.x, false, false), select(vec3<bool>(global1.x, var_2.d, false), vec3<bool>(var_2.d, global1.x, global1.x), vec3<bool>(var_2.d, global1.x, true))), var_2.d), select(vec3<bool>(false, any(!vec4<bool>(global1.x, true, true, false)), all(select(vec4<bool>(var_2.d, var_0.d, var_2.d, global1.x), vec4<bool>(true, global1.x, var_0.d, false), vec4<bool>(true, true, false, var_0.d)))), vec3<bool>(var_0.d, var_0.d, !(!var_0.d)), true), !vec3<bool>(true, var_2.d, all(!vec2<bool>(global1.x, true))));
    var var_4 = !var_3;
    return vec3<f32>(-1106f, 1084f, 1486f);
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec4<bool>) -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.c.x, global0[_wgslsmith_index_u32(21746u, 4u)]) | vec2<i32>(1i, _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(u_input.a, 4u)], 1i)), vec2<i32>(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(3919u, 4u)], global0[_wgslsmith_index_u32(23779u, 4u)]) ^ u_input.c.x, ~_wgslsmith_dot_vec3_i32(u_input.c.zxy, vec3<i32>(13794i, 0i, 27593i)))), ~u_input.c, -(~_wgslsmith_mod_vec4_i32(u_input.c, _wgslsmith_mult_vec4_i32(u_input.c, vec4<i32>(2960i, global0[_wgslsmith_index_u32(u_input.a, 4u)], 31067i, -5656i)))), any(select(arg_2, !arg_2, arg_2.x)));
    global1 = arg_2.zw;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1));
    var var_2 = select(1u, 84u, global1.x);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3()))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, _wgslsmith_f_op_f32(-arg_1), -635f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -406f, -769f))), select(vec3<bool>(true, true, true), arg_2.zyz, arg_1 >= 282f)))));
}

fn func_1(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = ~(~vec2<u32>(65751u, u_input.b));
    var var_1 = arg_0;
    global1 = !(!(!(!select(vec2<bool>(false, var_1.d), vec2<bool>(var_1.d, global1.x), vec2<bool>(global1.x, var_1.d)))));
    var var_2 = all(vec3<bool>(true, false, any(vec4<bool>(!arg_0.d, false, !global1.x, !global1.x))));
    let var_3 = vec2<bool>(global1.x, true);
    return _wgslsmith_f_op_vec3_f32(func_2(true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(2010f, _wgslsmith_f_op_f32(select(-1951f, _wgslsmith_div_f32(-1719f, -646f), arg_0.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -460f) + 340f))), !(!vec4<bool>(arg_0.d, var_1.d, global1.x, var_1.d))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: vec4<u32>, arg_3: vec4<i32>) -> vec2<bool> {
    var var_0 = Struct_1(min(u_input.d, ~_wgslsmith_dot_vec2_i32(u_input.c.yy << (vec2<u32>(arg_2.x, 7290u) % vec2<u32>(32u)), vec2<i32>(arg_3.x, global0[_wgslsmith_index_u32(arg_2.x, 4u)]))), abs(abs(arg_3)) << ((arg_2 ^ vec4<u32>(4294967295u, 4294967295u, 1u, ~8063u)) % vec4<u32>(32u)), -vec4<i32>(-select(u_input.d, 1i, arg_0.x), global0[_wgslsmith_index_u32(13060u, 4u)], -global0[_wgslsmith_index_u32(10305u, 4u)] | u_input.d, 1i), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-22594i, 2147483647i, arg_3.x), _wgslsmith_mod_i32(~(-9685i), ~(-2770i))) >= (((i32(-1i) * -1i) | ~u_input.d) << ((_wgslsmith_sub_u32(u_input.b, 0u) >> (reverseBits(0u) % 32u)) % 32u)));
    var var_1 = arg_2.wzy;
    var var_2 = Struct_1(-(~(-10625i)), ~vec4<i32>(-(~arg_3.x), _wgslsmith_mult_i32(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(arg_2.x, 4u)], 2293i), _wgslsmith_mod_i32(arg_3.x, global0[_wgslsmith_index_u32(arg_2.x, 4u)])), u_input.d, arg_3.x), u_input.c, arg_0.x | arg_0.x);
    let var_3 = arg_1;
    let var_4 = -385f;
    return !vec2<bool>(all(!vec3<bool>(false, false, var_2.d)) | (_wgslsmith_f_op_f32(-826f + arg_1.x) == 1896f), false);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(!(!select(select(vec2<bool>(true, false), vec2<bool>(global1.x, global1.x), true), !vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, global1.x))), !select(select(vec2<bool>(true, true), vec2<bool>(global1.x, global1.x), vec2<bool>(true, global1.x)), vec2<bool>(true, true), func_4(!vec4<bool>(false, true, global1.x, true), _wgslsmith_f_op_vec3_f32(func_1(Struct_1(-34274i, vec4<i32>(global0[_wgslsmith_index_u32(93412u, 4u)], 23287i, u_input.d, 63222i), u_input.c, false))), vec4<u32>(0u, u_input.a, 4294967295u, u_input.b), -u_input.c)), true);
    global1 = vec2<bool>(!any(!select(vec3<bool>(global1.x, true, true), vec3<bool>(false, false, true), vec3<bool>(global1.x, global1.x, false))), !(!global1.x));
    global1 = !(!select(select(vec2<bool>(global1.x, false), vec2<bool>(false, global1.x), vec2<bool>(false, global1.x)), !vec2<bool>(global1.x, true), func_4(select(vec4<bool>(true, true, global1.x, true), vec4<bool>(global1.x, false, global1.x, false), global1.x), vec3<f32>(-476f, 786f, 734f), ~vec4<u32>(1u, u_input.b, u_input.a, u_input.a), -vec4<i32>(u_input.c.x, -2147483647i, -15334i, global0[_wgslsmith_index_u32(4294967295u, 4u)]))));
    global0 = array<i32, 4>();
    var var_0 = countOneBits(vec2<u32>(_wgslsmith_div_u32(u_input.a | 120408u, _wgslsmith_mult_u32(u_input.b, u_input.b)), select(u_input.b, u_input.b, true)) | _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a, 83074u), ~abs(vec2<u32>(u_input.b, u_input.b))));
    var var_1 = Struct_1(_wgslsmith_clamp_i32(abs(~(-global0[_wgslsmith_index_u32(var_0.x, 4u)])), ~(-57100i), _wgslsmith_add_i32(-abs(13018i), -min(u_input.d, 0i))), -vec4<i32>(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(25944u, 4u)], 55581i), abs(-global0[_wgslsmith_index_u32(var_0.x, 4u)]), firstLeadingBit(-1i), ~u_input.d), u_input.c & _wgslsmith_clamp_vec4_i32(-(~u_input.c), -u_input.c, _wgslsmith_div_vec4_i32(u_input.c, vec4<i32>(-15341i, 2147483647i, -2147483647i, u_input.d)) ^ (u_input.c | vec4<i32>(-14382i, -11752i, u_input.c.x, -31257i))), ~abs(~var_0.x) > 0u);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -853f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1499f - -261f))), 688f, _wgslsmith_f_op_vec3_f32(func_1(Struct_1(-1i, var_1.c, var_1.b, true))).x), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(191f)), _wgslsmith_f_op_f32(2100f - 388f), _wgslsmith_f_op_f32(abs(-1000f)), 150f) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1491f, 1425f, -1000f, 1884f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(972f, 509f, 172f, 1016f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(func_3()), var_2.x, -543f, _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, u_input.b, 0u, var_0.x), vec4<u32>(_wgslsmith_mult_u32(u_input.b, 1u), ~u_input.b, 1u >> (u_input.b % 32u), _wgslsmith_sub_u32(u_input.b, 61676u))) << (abs(_wgslsmith_clamp_vec4_u32(max(vec4<u32>(0u, 0u, 1u, 41825u), vec4<u32>(u_input.a, 30406u, 0u, var_0.x)), vec4<u32>(u_input.a, var_0.x, u_input.b, 30068u), ~vec4<u32>(var_0.x, 1u, 4294967295u, 13633u))) % vec4<u32>(32u)));
}

