struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: u32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>) -> i32 {
    let var_0 = Struct_2(Struct_1(vec4<bool>(any(vec2<bool>(true, true)), true, all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true)), ~8638i > abs(u_input.a.x)), !(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)))), arg_1);
    return _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(~(-arg_0), -2147483647i, countOneBits(-_wgslsmith_mod_i32(-1i, 27764i)), select(11989i, -4885i >> (min(u_input.b.x, 4716u) % 32u), any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(var_0.a.a.x, var_0.a.a.x))))));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<bool>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(-arg_0.a);
    let var_1 = _wgslsmith_f_op_f32(-arg_0.a);
    let var_2 = true;
    var var_3 = -15913i;
    let var_4 = any(vec4<bool>(any(vec3<bool>(true, false, var_1 != 165f)), !(-u_input.a.x <= 1679i), func_3(u_input.a.x, abs(vec3<u32>(37337u, u_input.b.x, 74763u))) <= u_input.a.x, var_2));
    return vec3<bool>(any(vec2<bool>(var_2, arg_1.x & false)), !(!select(var_2, arg_0.a > 1709f, 32931u != u_input.d)), !var_2);
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: f32, arg_3: i32) -> Struct_4 {
    var var_0 = Struct_4(Struct_1(vec4<bool>(all(!vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x)), all(vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x)) == true, false, !(u_input.a.x < 0i)), arg_1), vec2<u32>(~abs(u_input.b.x), arg_0 << (u_input.b.x % 32u)), Struct_1(vec4<bool>(!arg_1.x || arg_1.x, arg_1.x, arg_1.x != true, arg_1.x), arg_1), select(u_input.b.x, _wgslsmith_sub_u32(1u, arg_0), true), Struct_3(-347f));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1198f - -447f), _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(-arg_2), -1585f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(833f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2, -523f)) + -642f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) + 405f), _wgslsmith_f_op_f32(-var_0.e.a)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.a, -912f, 1484f, 608f)))) * vec4<f32>(-1603f, -1000f, var_0.e.a, -810f))));
    var var_2 = Struct_2(Struct_1(select(vec4<bool>(true, !var_0.c.a.x, true, true), vec4<bool>(all(vec2<bool>(false, true)), false, all(vec3<bool>(arg_1.x, arg_1.x, var_0.c.b.x)), arg_1.x), arg_1.x), vec3<bool>(_wgslsmith_f_op_f32(arg_2 - -1064f) >= _wgslsmith_f_op_f32(-1269f - -641f), false, true)), u_input.c);
    var var_3 = -u_input.a.wwy;
    var_2 = Struct_2(Struct_1(!(!(!vec4<bool>(true, true, var_0.a.a.x, arg_1.x))), select(!vec3<bool>(var_2.a.a.x, var_2.a.b.x, false), var_2.a.b, !func_2(Struct_3(var_1.x), var_2.a.a.zx))), firstLeadingBit(u_input.c));
    return Struct_4(var_0.a, ~_wgslsmith_clamp_vec2_u32(abs(min(var_0.b, var_0.b)), var_0.b, reverseBits(select(u_input.b.zz, var_2.b.yy, true))), var_2.a, 128291u, Struct_3(281f));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: i32, arg_3: u32) -> bool {
    let var_0 = vec2<bool>(!arg_0.a.x || true, arg_0.a.x == any(!vec4<bool>(arg_0.b.x, arg_0.a.x, arg_0.a.x, false)));
    var var_1 = !(!(!vec3<bool>(!var_0.x, true, var_0.x == false)));
    let var_2 = func_4(~4294967295u, select(func_2(Struct_3(_wgslsmith_f_op_f32(step(-724f, -544f))), !var_0), !arg_0.b, arg_0.b), -402f, _wgslsmith_mod_i32(select(2147483647i, 1i, false), ~_wgslsmith_clamp_i32(arg_1, arg_1, 1i) ^ u_input.a.x));
    var var_3 = arg_1;
    var var_4 = 1000f;
    return any(func_2(var_2.e, func_4(u_input.b.x, !(!arg_0.b), _wgslsmith_f_op_f32(-1f), abs(_wgslsmith_sub_i32(arg_1, arg_1))).c.a.yz).yz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec3<bool>(true, true, all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)))), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false))), true), all(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true)))), !(!vec3<bool>(true, func_1(Struct_1(vec4<bool>(false, true, true, false), vec3<bool>(false, true, true)), u_input.a.x, 413i, 0u), true)), !(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1000f, -1249f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1406f)))));
    var_0 = !vec3<bool>(var_0.x, select(all(select(vec2<bool>(false, var_0.x), var_0.xx, true)), var_0.x, true), true);
    var var_1 = ~(i32(-1i) * -8473i);
    var var_2 = Struct_1(select(vec4<bool>(all(!vec3<bool>(var_0.x, var_0.x, false)), false, u_input.d != ~u_input.b.x, var_0.x), vec4<bool>(false, true, var_0.x, !all(var_0.yz)), !vec4<bool>(false, true, var_0.x && var_0.x, var_0.x & var_0.x)), !func_4(96388u, select(!vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(false, var_0.x, var_0.x), any(vec3<bool>(true, false, false))), _wgslsmith_f_op_f32(-124f * _wgslsmith_f_op_f32(f32(-1f) * -1137f)), 0i).a.b);
    var_1 = abs(1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(2478f, 746f, 592f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1664f, 252f, 308f), vec3<f32>(391f, -2027f, 825f), var_2.a.zxx))), vec3<f32>(-142f, -601f, -1722f), var_2.a.yzy)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-857f, 167f, 469f) + vec3<f32>(1183f, -287f, -1000f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1437f, -197f, -1064f))))), var_0.x))), abs(-u_input.a.yzw), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(trunc(-158f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(198f * 121f) - 1626f)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-1247f * -621f)), 1824f));
}

