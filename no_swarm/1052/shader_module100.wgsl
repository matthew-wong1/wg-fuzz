struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> vec2<i32> {
    var var_0 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(~(~2428u), _wgslsmith_clamp_u32(u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, 1u), vec4<u32>(u_input.c, 1u, 27642u, 0u)), 0u), 29223u), u_input.c), 1u);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(trunc(1743f)), _wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-209f))), -1980f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -506f) + _wgslsmith_f_op_f32(trunc(-683f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(929f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(2082f - 990f))), -1000f))));
    var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, 45864u, 116500u, 27247u), vec4<u32>(u_input.c, 4294967295u, u_input.c, 0u) << (vec4<u32>(u_input.c, var_0.x, 103094u, var_0.x) % vec4<u32>(32u)))), vec2<u32>(0u, var_0.x), select(~_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, 1u), vec2<u32>(18555u, var_0.x) ^ vec2<u32>(var_0.x, u_input.c)), select(~vec2<u32>(418u, var_0.x), ~vec2<u32>(var_0.x, 47559u), select(vec2<bool>(true, false), vec2<bool>(true, false), true)) & vec2<u32>(~46023u, max(u_input.c, 4294967295u)), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), !select(vec2<bool>(false, true), vec2<bool>(true, false), false), any(vec4<bool>(true, true, false, true)) && false)));
    var_0 = _wgslsmith_div_vec2_u32(~reverseBits(~(vec2<u32>(4294967295u, var_0.x) ^ vec2<u32>(1u, 5825u))), vec2<u32>(1u, u_input.c));
    let var_2 = !vec3<bool>(true, any(vec4<bool>(any(vec4<bool>(false, true, false, true)), true, true, true)), true);
    return u_input.d.yy;
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec3<f32>) -> vec4<f32> {
    let var_0 = u_input.b.zwx;
    var var_1 = u_input.c;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(185f, 271f, arg_2.x, arg_2.x))) - _wgslsmith_f_op_vec4_f32(round(arg_1.a))));
    var var_3 = arg_1;
    let var_4 = arg_1.a.yzx;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, var_2.a.x, arg_2.x, 385f)), var_2.a)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, arg_1.a.x, var_3.a.x, arg_1.a.x))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(121f, var_4.x)) + _wgslsmith_f_op_f32(281f * var_2.a.x)), 1279f, var_4.x, _wgslsmith_f_op_f32(max(-865f, _wgslsmith_div_f32(-239f, 2383f))))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = ~18179u;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-276f, arg_1.a.x, arg_1.a.x, arg_1.a.x)), arg_1.a, true))));
    var var_2 = ~var_0;
    var var_3 = Struct_1(vec4<f32>(arg_1.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_1.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1636f + var_1.a.x), var_1.a.x))), _wgslsmith_f_op_f32(sign(arg_1.a.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_div_i32(u_input.d.x, u_input.b.x), arg_1, vec3<f32>(var_1.a.x, var_1.a.x, var_1.a.x))).x))));
    var_3 = arg_1;
    return ~(~(~(~countOneBits(vec4<u32>(1u, 7177u, var_0, u_input.c)))));
}

fn func_2(arg_0: u32, arg_1: vec2<i32>) -> vec3<bool> {
    let var_0 = func_4(select(vec3<u32>(~arg_0, ~31758u, u_input.c) >> (select(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 1u, 24579u), vec3<u32>(arg_0, arg_0, 49557u)), reverseBits(vec3<u32>(6347u, arg_0, u_input.c)), u_input.a != -44324i) % vec3<u32>(32u)), max(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, u_input.c, 0u), vec3<u32>(13637u, 1u, u_input.c)), _wgslsmith_clamp_vec3_u32(vec3<u32>(59129u, u_input.c, u_input.c), vec3<u32>(u_input.c, arg_0, arg_0), vec3<u32>(arg_0, 64701u, u_input.c))), (vec3<u32>(arg_0, 0u, u_input.c) << (vec3<u32>(8679u, arg_0, 0u) % vec3<u32>(32u))) & ~vec3<u32>(83316u, u_input.c, 0u)), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true))), Struct_1(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_div_i32(-2147483647i, -2147483647i), Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-999f, -709f, 303f, 339f), vec4<f32>(2407f, -997f, -2064f, -1088f), true))), vec3<f32>(_wgslsmith_f_op_f32(-283f * -720f), -962f, _wgslsmith_f_op_f32(443f - -712f))))));
    var var_1 = select(!(!(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true))), vec3<bool>(!select(true, false, true) != all(vec2<bool>(false, true)), true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1064f, 642f)), _wgslsmith_f_op_vec4_f32(func_3(2147483647i, Struct_1(vec4<f32>(-938f, 362f, 127f, 1270f)), vec3<f32>(-1000f, 1480f, -1658f))).x) != _wgslsmith_f_op_f32(sign(-342f))), select(true, !select(u_input.a <= arg_1.x, true, true), all(select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), all(vec2<bool>(false, true))))));
    let var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2392f), 1f, any(vec4<bool>(true, var_1.x, false, var_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(695f + 595f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(832f - -1655f), -1788f)), 712f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-870f + _wgslsmith_f_op_f32(f32(-1f) * -802f)) - -747f)));
    var var_3 = var_2.a.wwz;
    let var_4 = true == select(!all(vec2<bool>(false, false)), true, var_1.x);
    return select(select(select(select(!vec3<bool>(true, true, var_1.x), !vec3<bool>(false, false, var_4), vec3<bool>(var_1.x, var_1.x, var_1.x)), vec3<bool>(var_4, !var_1.x, var_4), var_1.x), vec3<bool>(true, var_1.x, var_4), var_1.x), vec3<bool>(var_4, all(vec2<bool>(var_4, true)), true), select(vec3<bool>(any(select(vec4<bool>(var_1.x, false, var_4, var_1.x), vec4<bool>(true, var_4, var_1.x, var_1.x), var_1.x)), !(!var_4), var_4), vec3<bool>(-788f <= var_2.a.x, ~(-2147483647i) > _wgslsmith_dot_vec2_i32(u_input.b.zw, u_input.d.xy), false), select(!vec3<bool>(var_1.x, true, false), vec3<bool>(all(vec3<bool>(true, var_4, var_1.x)), var_1.x && false, true), 1000f != _wgslsmith_div_f32(-1290f, var_3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~firstTrailingBit(u_input.b.yw));
    let var_1 = select(func_2(17078u, func_1()), !vec3<bool>(true, all(select(vec2<bool>(false, false), vec2<bool>(true, false), false)), _wgslsmith_f_op_f32(-1066f + -341f) != _wgslsmith_f_op_f32(step(-573f, 727f))), !vec3<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true))), true, true));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-237f, -2071f, 1571f, 1537f), vec4<f32>(-579f, -1542f, -558f, 1465f), var_1.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(433f, -155f, -2085f, -1069f) + vec4<f32>(-210f, -1401f, -954f, -381f))))));
    let var_3 = abs(u_input.d.x);
    let var_4 = false;
    var_0 = vec2<i32>(i32(-1i) * -1i, 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec2<u32>(min(0u, 14407u), 0u) >> (~vec2<u32>(4294967295u, u_input.c) % vec2<u32>(32u))), u_input.c, _wgslsmith_f_op_f32(var_2.a.x - _wgslsmith_f_op_f32(step(var_2.a.x, _wgslsmith_f_op_vec4_f32(func_3(2147483647i << (u_input.c % 32u), Struct_1(var_2.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(218f, 1216f, var_2.a.x)))).x))));
}

