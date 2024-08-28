struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(step(-2099f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1579f * _wgslsmith_f_op_f32(trunc(112f))))) * 688f)));
    let var_1 = Struct_3(Struct_1(1230f, vec2<f32>(_wgslsmith_f_op_f32(min(-1121f, _wgslsmith_f_op_f32(floor(-1365f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-871f, 744f, global0[_wgslsmith_index_u32(13986u, 18u)]))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1992f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(500f, 332f)), vec2<f32>(201f, 1769f), select(vec2<bool>(true, false), vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 18u)]), vec2<bool>(global0[_wgslsmith_index_u32(26758u, 18u)], global0[_wgslsmith_index_u32(0u, 18u)])))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(237f, -2025f)))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -133f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - -906f), _wgslsmith_f_op_f32(f32(-1f) * -1584f))), vec2<f32>(_wgslsmith_f_op_f32(ceil(-581f)), _wgslsmith_f_op_f32(sign(554f)))));
    global0 = array<bool, 18>();
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(var_1.c.b, var_1.b.b)));
    var var_3 = true;
    return _wgslsmith_sub_u32(countOneBits(~(~1u)), 1u);
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_1 {
    let var_0 = (global0[_wgslsmith_index_u32(_wgslsmith_add_u32(93998u, min(_wgslsmith_mod_u32(52190u, 43345u), func_3())), 18u)] || !global0[_wgslsmith_index_u32(select(1u, ~0u, true), 18u)]) || arg_1;
    let var_1 = true;
    global0 = array<bool, 18>();
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1869f, 1250f)))), vec2<f32>(_wgslsmith_f_op_f32(-514f * _wgslsmith_f_op_f32(f32(-1f) * -540f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -373f)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -559f) + -569f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1092f) - _wgslsmith_f_op_f32(-630f - 1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-650f, -712f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(378f, 669f))))), Struct_1(_wgslsmith_div_f32(-359f, _wgslsmith_f_op_f32(f32(-1f) * -129f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-554f, -352f)), vec2<f32>(1f, 1f)))));
    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(abs(-1323f)), var_2.b.b), var_2.c, var_2.b);
    return var_2.b;
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = -1304f;
    var var_1 = true;
    global0 = array<bool, 18>();
    let var_2 = !global0[_wgslsmith_index_u32(~(~0u), 18u)];
    var_1 = _wgslsmith_div_f32(arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1905f + -733f), _wgslsmith_f_op_f32(select(arg_0.a, -222f, false))))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1621f))));
    return _wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(select(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a * arg_0.b.x)), u_input.b.x >= -u_input.a)));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: vec4<bool>) -> i32 {
    global0 = array<bool, 18>();
    global0 = array<bool, 18>();
    global0 = array<bool, 18>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(func_4(func_2(-23258i, !(u_input.b.x <= u_input.b.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(870f, -492f) + vec2<f32>(539f, arg_1)) * vec2<f32>(-214f, arg_1)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-300f, arg_1)))))));
    var var_1 = Struct_3(Struct_1(_wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(-142f * -1254f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(559f, -2444f)), _wgslsmith_f_op_f32(arg_0.a - -885f)))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1315f), var_0.b), func_2(~u_input.a, false != global0[_wgslsmith_index_u32(firstLeadingBit(0u), 18u)]));
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(_wgslsmith_mod_i32(min(~u_input.b.x, func_1(Struct_2(163f), 863f, vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 18u)], false, false, global0[_wgslsmith_index_u32(15213u, 18u)]))), min(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, u_input.c.x, u_input.b.x), vec4<i32>(-2427i, 19771i, 12089i, -2147483647i)))), _wgslsmith_add_i32(u_input.a, u_input.a << (4294967295u % 32u)) >> (abs(~0u) % 32u), u_input.b.x) << (_wgslsmith_mult_vec3_u32(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(33248u, 11044u, 0u), vec3<u32>(4778u, 4294967295u, 76888u))), countOneBits(firstTrailingBit(firstTrailingBit(vec3<u32>(1u, 10289u, 0u))))) % vec3<u32>(32u));
    global0 = array<bool, 18>();
    var var_1 = 109507u;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(-u_input.b.x, global0[_wgslsmith_index_u32(select(30411u, 1u, global0[_wgslsmith_index_u32(61858u, 18u)]), 18u)]).b.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-289f)), func_2(-30016i, true).a)), -1000f)));
    var var_3 = Struct_3(func_2(~var_0.x, -firstTrailingBit(var_0.x) != -1i), Struct_1(552f, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -717f), _wgslsmith_f_op_f32(var_2.a - var_2.a))))), func_2(_wgslsmith_sub_i32(0i, u_input.a), !(!any(vec4<bool>(global0[_wgslsmith_index_u32(42717u, 18u)], global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(61673u, 18u)], false)))));
    let var_4 = -u_input.b;
    var_3 = Struct_3(func_2(~var_0.x, true), var_3.b, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2727f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.b.b) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.a, 447f), var_3.b.b))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_3.b.b + var_3.a.b), _wgslsmith_f_op_vec2_f32(exp2(var_3.c.b))))));
    let var_5 = (-39494i & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, firstLeadingBit(4325i), i32(-1i) * -2196i, 0i), reverseBits(-vec4<i32>(-19464i, var_0.x, -46499i, -1i)))) & abs(~(-var_4.x));
    let var_6 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-111f * 1790f) + _wgslsmith_f_op_f32(-var_2.a)) + var_2.a), var_3.a.b), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-330f, var_2.a))))), Struct_1(var_2.a, var_3.a.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1384f - -1000f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-873f, -365f)) - 454f), _wgslsmith_f_op_f32(var_3.a.a - _wgslsmith_f_op_f32(ceil(var_6.a.a)))))));
}

