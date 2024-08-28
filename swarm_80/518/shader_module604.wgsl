struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: i32,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10> = array<f32, 10>(-674f, 240f, 311f, -849f, 1144f, 687f, 247f, -143f, -1566f, 574f);

var<private> global1: array<f32, 1> = array<f32, 1>(479f);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3) -> f32 {
    global0 = array<f32, 10>();
    let var_0 = Struct_2(Struct_1(~firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.d.a.x, u_input.a.x, arg_0.d.a.x, u_input.a.x), u_input.a)), vec3<f32>(_wgslsmith_f_op_f32(floor(875f)), -1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(1231u, 10u)])))))), 211f);
    var var_1 = var_0.a;
    global1 = array<f32, 1>();
    var var_2 = false;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_1.b.x))))))));
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: f32, arg_3: Struct_4) -> bool {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-556f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 1u)]))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-123f, arg_2), arg_2))))));
    var var_1 = -1415f;
    var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(vec3<bool>(true, true, true), u_input.c.zzx, 20137i, Struct_1(vec4<u32>(0u, u_input.a.x, u_input.b, u_input.b), vec3<f32>(645f, arg_1, 541f)), vec3<bool>(true, true, true)))) + global0[_wgslsmith_index_u32(~u_input.b, 10u)]))));
    let var_2 = vec2<bool>(true, any(vec2<bool>(true, true)));
    var var_3 = Struct_3(vec3<bool>(true & var_2.x, !(any(vec4<bool>(var_2.x, false, true, true)) || var_2.x), var_2.x), u_input.c.yyz, 1i, Struct_1(_wgslsmith_mod_vec4_u32(u_input.a, u_input.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1, global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(u_input.a.x, 10u)]))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(u_input.a.x, 10u)], -448f), vec3<f32>(-1000f, arg_2, -922f))), select(var_2.x, false, true))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_2, global1[_wgslsmith_index_u32(0u, 1u)]) * vec3<f32>(global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(u_input.a.x, 1u)], global1[_wgslsmith_index_u32(0u, 1u)]))))), vec3<bool>(var_2.x, var_2.x, !((var_2.x != false) || any(vec3<bool>(var_2.x, var_2.x, true)))));
    return true;
}

fn func_1(arg_0: Struct_4, arg_1: u32) -> vec3<bool> {
    return vec3<bool>(!(u_input.c.x <= (u_input.c.x | arg_0.a)) || true, any(!vec4<bool>(func_2(vec3<i32>(u_input.c.x, 1i, 49513i), -626f, global1[_wgslsmith_index_u32(4294967295u, 1u)], Struct_4(-2147483647i)), true, true, true)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.wy, ~vec2<u32>(arg_1, u_input.b)), 10u)] != global0[_wgslsmith_index_u32(~46908u, 10u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(3240u, 10u)]))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1000f, 465f)), _wgslsmith_f_op_f32(f32(-1f) * -893f), true)), _wgslsmith_f_op_f32(f32(-1f) * -761f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(7217u, 10u)]))));
    let var_2 = -u_input.c;
    var var_3 = Struct_3(select(select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), select(false, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), !func_1(Struct_4(u_input.c.x), 0u), func_1(Struct_4(abs(var_2.x)), 47214u)), var_2.xzz, u_input.c.x, Struct_1(u_input.a, var_1.ywx), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, any(vec2<bool>(true, true))), func_1(Struct_4(var_2.x), _wgslsmith_sub_u32(~57666u, 1u))));
    var var_4 = 0u;
    let var_5 = _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(abs(var_3.b), reverseBits(_wgslsmith_sub_vec3_i32(u_input.c.xzx, vec3<i32>(-2147483647i, var_2.x, var_2.x)) << (_wgslsmith_div_vec3_u32(vec3<u32>(110u, var_3.d.a.x, var_3.d.a.x), var_3.d.a.yxz) % vec3<u32>(32u)))), vec3<i32>(_wgslsmith_add_i32(var_3.b.x, max(-55833i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2647i, var_2.x), u_input.c.zy))), var_2.x, ~abs(~(-2147483647i))));
    var var_6 = vec3<bool>(func_1(Struct_4(-1i), 0u).x, any(!vec4<bool>(var_3.a.x, var_3.e.x, false, true)) || any(select(!vec4<bool>(true, true, true, var_3.a.x), vec4<bool>(false, false, false, true), false)), false);
    let x = u_input.a;
    s_output = StorageBuffer(~(vec3<u32>(var_3.d.a.x, var_3.d.a.x, ~var_0.x) ^ firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(54085u, var_3.d.a.x, var_3.d.a.x), var_3.d.a.yzz))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(4294967295u, 10u)]))), -461f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 1u)]) - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_3.d.a.x, 1u)] + global1[_wgslsmith_index_u32(12031u, 1u)]))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.d.b * var_3.d.b) + _wgslsmith_f_op_vec3_f32(select(var_3.d.b, var_1.zwy, var_3.e))), vec3<f32>(global1[_wgslsmith_index_u32(~92399u, 1u)], 831f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(24215u, 10u)])), false & var_6.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(1u, 10u)])), global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.b, firstTrailingBit(26192u)), 1u)]), _wgslsmith_mult_i32(_wgslsmith_add_i32(~2147483647i, u_input.c.x), var_3.c), ~_wgslsmith_add_u32(11963u, var_3.d.a.x & min(0u, 27921u)));
}

