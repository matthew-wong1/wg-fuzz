struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<bool>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: bool, arg_3: Struct_1) -> u32 {
    var var_0 = arg_3;
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), 1057f);
    let var_1 = Struct_1(~7268i, !(!vec3<bool>(arg_3.b.x, false, false)));
    var var_2 = ~firstTrailingBit(_wgslsmith_div_u32(~u_input.c, ~max(u_input.d.x, 27803u)));
    let var_3 = var_1;
    return u_input.c;
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = arg_0;
    global1 = select(vec4<bool>(arg_0.b.x, ~u_input.d.x > 1u, !(global1.x && var_0.b.x) != false, true), !(!vec4<bool>(global1.x, var_0.b.x, global1.x | false, true)), select(vec4<bool>(firstTrailingBit(2147483647i) == 2911i, arg_0.b.x, var_0.a == arg_0.a, true), !(!(!vec4<bool>(global1.x, var_0.b.x, var_0.b.x, global1.x))), select(!select(vec4<bool>(true, global1.x, arg_0.b.x, var_0.b.x), vec4<bool>(true, false, arg_0.b.x, true), true), !vec4<bool>(global1.x, false, global1.x, global1.x), select(!vec4<bool>(arg_0.b.x, false, false, false), !vec4<bool>(true, true, global1.x, false), !global1.x))));
    global1 = select(!select(!select(vec4<bool>(false, arg_0.b.x, true, true), vec4<bool>(global1.x, true, global1.x, global1.x), vec4<bool>(var_0.b.x, true, global1.x, true)), !vec4<bool>(true, false, arg_0.b.x, var_0.b.x), !vec4<bool>(var_0.b.x, false, arg_0.b.x, arg_0.b.x)), vec4<bool>(~u_input.c != ~min(1u, 0u), true, !(!(var_0.b.x | arg_0.b.x)), any(select(arg_0.b, vec3<bool>(global1.x, global1.x, true), var_0.b.x))), var_0.b.x);
    var var_1 = ~(vec3<i32>(0i, 1i, -2147483647i) | ~vec3<i32>(-var_0.a, 13244i, min(-2147483647i, u_input.b)));
    var var_2 = arg_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-1000f)), -269f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(510f - _wgslsmith_div_f32(-1448f, -928f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(2142f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-763f, -310f)) - _wgslsmith_f_op_f32(f32(-1f) * -820f)))));
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: f32) -> i32 {
    global1 = select(vec4<bool>(true, all(vec4<bool>(false, false, global1.x != global1.x, false)), global1.x, arg_2 > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(Struct_1(-7009i, global1.xxw)))))), select(!(!vec4<bool>(true, global1.x, global1.x, false)), select(!select(vec4<bool>(true, global1.x, true, true), vec4<bool>(true, false, global1.x, global1.x), true), !(!vec4<bool>(true, global1.x, false, true)), true), false), vec4<bool>(!(true | any(vec2<bool>(global1.x, false))), all(!(!global1.ww)), !(arg_1.x == 0u), 1i < u_input.a.x));
    let var_0 = vec4<i32>(i32(-1i) * -reverseBits(u_input.a.x), abs(_wgslsmith_div_i32(9564i, -37639i)), firstTrailingBit(u_input.b), countOneBits(~(-18802i))) << (vec4<u32>(func_1(_wgslsmith_f_op_f32(func_3(Struct_1(2147483647i, vec3<bool>(false, true, false)))), 0i, !all(vec4<bool>(global1.x, global1.x, global1.x, false)), Struct_1(~u_input.a.x, global1.yww)), select(_wgslsmith_mult_u32(42051u, 1u) & arg_1.x, abs(~u_input.d.x), global1.x), arg_1.x, select(u_input.c, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, arg_1.x, arg_1.x), vec3<u32>(u_input.c, 4580u, arg_1.x))), any(global1.zwx) & any(vec2<bool>(false, false)))) % vec4<u32>(32u));
    var var_1 = !global1.x;
    var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2844f))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    return _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.x, ~firstTrailingBit(16500i)), ~(vec2<i32>(-1i) * -u_input.a)), firstTrailingBit(_wgslsmith_mult_vec2_i32(min(-vec2<i32>(var_0.x, u_input.b), vec2<i32>(58153i, var_0.x)), vec2<i32>(min(6620i, u_input.a.x), max(u_input.b, var_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = i32(-1i) * -(0i ^ u_input.b);
    var var_1 = Struct_1(2147483647i, !global1.xzw);
    var var_2 = _wgslsmith_div_u32(_wgslsmith_sub_u32(~min(func_1(293f, 1i, global1.x, Struct_1(var_1.a, vec3<bool>(false, true, false))), 1u), _wgslsmith_div_u32(u_input.c, 27627u)), 0u);
    let var_3 = vec2<bool>(69368u != u_input.c, !any(!var_1.b.xy));
    var_1 = Struct_1(-14770i, global1.zzw);
    let var_4 = vec2<i32>(9211i, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(790f, 722f) - _wgslsmith_div_f32(-2437f, 2099f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1108f, 445f)) - -133f)), u_input.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1467f)) - _wgslsmith_f_op_f32(f32(-1f) * -846f))));
    var var_5 = Struct_1(var_1.a | -7596i, select(global1.xwy, global1.ywy, !select(global1.xzy, vec3<bool>(true, var_3.x, global1.x), var_1.b)));
    global1 = vec4<bool>(var_3.x, true, true, var_5.b.x);
    let var_6 = Struct_1(var_4.x, select(!select(var_1.b, var_1.b, !var_1.b), vec3<bool>(~u_input.c <= _wgslsmith_mult_u32(u_input.d.x, u_input.d.x), !any(vec3<bool>(global1.x, var_1.b.x, var_1.b.x)), !var_3.x), !all(vec2<bool>(true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(433f, 857f, 1000f, 719f))))), _wgslsmith_mult_vec2_i32(vec2<i32>(-(2147483647i >> (u_input.d.x % 32u)), 1i ^ var_1.a), ~var_4), countOneBits(vec4<i32>(var_0, 2147483647i, -33933i, _wgslsmith_dot_vec2_i32(~vec2<i32>(-49087i, var_0), u_input.a & u_input.a))));
}

