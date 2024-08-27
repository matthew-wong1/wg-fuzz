struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10> = array<f32, 10>(368f, -468f, 242f, 169f, -927f, -1054f, -1106f, -575f, -403f, 734f);

var<private> global1: array<bool, 15> = array<bool, 15>(false, true, true, false, false, false, false, false, true, true, false, false, true, false, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>) -> bool {
    var var_0 = arg_0;
    var var_1 = ~(~1u);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-112f, 459f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c.x, 10u)] - 746f)))) <= _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(39410u, 10u)]);
    var_0 = arg_0;
    var_1 = firstTrailingBit(1u);
    return ~select(~50237u, 1u, any(select(vec3<bool>(var_2, true, global1[_wgslsmith_index_u32(u_input.c.x, 15u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 15u)], true, false), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 15u)], var_2, true)))) <= (u_input.c.x | 1u);
}

fn func_2() -> Struct_1 {
    global1 = array<bool, 15>();
    let var_0 = !select(!vec4<bool>(true, all(vec4<bool>(global1[_wgslsmith_index_u32(18644u, 15u)], global1[_wgslsmith_index_u32(u_input.c.x, 15u)], global1[_wgslsmith_index_u32(0u, 15u)], false)), !global1[_wgslsmith_index_u32(u_input.c.x, 15u)], !global1[_wgslsmith_index_u32(8277u, 15u)]), select(vec4<bool>(true, true, true, !global1[_wgslsmith_index_u32(u_input.c.x, 15u)]), !vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 15u)], false, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 10u)] != 1453f, global1[_wgslsmith_index_u32(72341u, 15u)] != false, func_3(Struct_1(u_input.b.zxw, vec3<f32>(139f, 396f, 726f), global0[_wgslsmith_index_u32(u_input.c.x, 10u)], u_input.b.zy), vec3<f32>(global0[_wgslsmith_index_u32(11107u, 10u)], -668f, global0[_wgslsmith_index_u32(25930u, 10u)])), any(vec2<bool>(false, true)))), !(!select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 15u)], true, false), vec4<bool>(global1[_wgslsmith_index_u32(0u, 15u)], true, global1[_wgslsmith_index_u32(u_input.c.x, 15u)], global1[_wgslsmith_index_u32(u_input.c.x, 15u)]), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 15u)], true, false, global1[_wgslsmith_index_u32(10261u, 15u)]))));
    return Struct_1(vec3<i32>(firstLeadingBit(18055i), _wgslsmith_mod_i32(u_input.b.x, -(~u_input.b.x)), -1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(794f, 1371f, global0[_wgslsmith_index_u32(1u, 10u)])) * _wgslsmith_f_op_vec3_f32(vec3<f32>(517f, -1361f, global0[_wgslsmith_index_u32(u_input.c.x, 10u)]) + vec3<f32>(1804f, global0[_wgslsmith_index_u32(31663u, 10u)], global0[_wgslsmith_index_u32(u_input.c.x, 10u)]))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(145f, global0[_wgslsmith_index_u32(u_input.c.x, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(-715f, -1000f, global0[_wgslsmith_index_u32(u_input.c.x, 10u)]) + vec3<f32>(-222f, -1634f, global0[_wgslsmith_index_u32(29042u, 10u)]))))), 149f, u_input.b.wx);
}

fn func_1(arg_0: i32) -> Struct_1 {
    global1 = array<bool, 15>();
    let var_0 = _wgslsmith_mod_i32(-1i, abs(18056i)) << (u_input.c.x % 32u);
    global0 = array<f32, 10>();
    global1 = array<bool, 15>();
    var var_1 = u_input.b.x;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~abs(u_input.c);
    global1 = array<bool, 15>();
    var var_1 = Struct_2(func_1(firstTrailingBit(-24749i)), func_2(), func_2(), Struct_1(vec3<i32>(0i, _wgslsmith_clamp_i32(~(-2147483647i), _wgslsmith_sub_i32(-9283i, u_input.a), _wgslsmith_add_i32(u_input.a, 37141i)), u_input.b.x | u_input.b.x), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1515f), _wgslsmith_f_op_f32(sign(-275f)), func_2().c), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(9408u, 10u)]))), u_input.b.zw), Struct_1(u_input.b.wxy, _wgslsmith_f_op_vec3_f32(vec3<f32>(-604f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 10u)]), _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(23615u, 10u)], -806f))) + vec3<f32>(global0[_wgslsmith_index_u32(var_0.x >> (71440u % 32u), 10u)], _wgslsmith_f_op_f32(1811f * 944f), 666f)), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 10u)], _wgslsmith_f_op_f32(round(1381f))), vec2<i32>(-1i, u_input.a | ~u_input.a)));
    var_1 = Struct_2(Struct_1(vec3<i32>(~u_input.b.x, -(~var_1.b.a.x), -u_input.a), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(func_1(u_input.b.x).b)))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 10u)] + _wgslsmith_f_op_f32(294f * _wgslsmith_div_f32(-1107f, 1139f))), vec2<i32>(var_1.c.d.x, -var_1.b.d.x)), Struct_1(vec3<i32>(u_input.a, 2147483647i, var_1.e.a.x), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(1338f, var_1.c.c, var_1.d.c), vec3<f32>(-407f, -301f, 1000f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1096f, 1251f, -548f)) * vec3<f32>(var_1.a.b.x, -339f, global0[_wgslsmith_index_u32(u_input.c.x, 10u)])))), _wgslsmith_f_op_f32(f32(-1f) * -1879f), var_1.b.d), func_1(_wgslsmith_mod_i32(abs(_wgslsmith_clamp_i32(-3096i, 1i, -8069i)), _wgslsmith_sub_i32(-2147483647i, -u_input.a))), func_1(func_2().a.x), func_1(_wgslsmith_sub_i32(_wgslsmith_mod_i32(var_1.b.d.x, u_input.a), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(var_1.d.a, vec3<i32>(u_input.a, u_input.b.x, -2147483647i), u_input.b.xzx), u_input.b.wwy | u_input.b.yxy))));
    var var_2 = func_1(~min(firstLeadingBit(0i), _wgslsmith_mod_i32(1i, var_1.b.a.x)) & 0i);
    var_1 = Struct_2(var_1.d, func_1(var_2.d.x), Struct_1(vec3<i32>(~u_input.a, 40746i, -14857i), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -561f))), var_1.e.a.zy ^ var_1.b.d), func_2(), var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(479f, _wgslsmith_f_op_f32(exp2(func_2().c)))), var_0.yy, ~var_0.x);
}

