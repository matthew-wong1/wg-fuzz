struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: bool,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7> = array<i32, 7>(-24549i, 0i, i32(-2147483648), -28103i, 25965i, -1i, 2147483647i);

var<private> global1: Struct_1;

var<private> global2: i32;

var<private> global3: bool;

var<private> global4: Struct_1 = Struct_1(vec4<bool>(false, true, true, false), 4294967295u, false, vec2<f32>(1617f, 167f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<f32>) -> bool {
    let var_0 = ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -global0[_wgslsmith_index_u32(u_input.c.x, 7u)]), vec2<i32>(u_input.a, max(global0[_wgslsmith_index_u32(global1.b, 7u)], -1i))), _wgslsmith_mod_i32(firstTrailingBit(-1i), -(~12241i)), 0i);
    global0 = array<i32, 7>();
    let var_1 = Struct_1(global1.a, ~abs(1u), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global4.d - _wgslsmith_f_op_vec2_f32(-vec2<f32>(740f, global4.d.x))))) * global1.d));
    global2 = 44178i;
    let var_2 = !vec4<bool>(true, global1.a.x, true, global4.a.x);
    return any(vec4<bool>(all(var_2.xw) & !all(vec2<bool>(global1.a.x, true)), !select(all(global1.a), var_1.c, true), global1.c && global4.c, false));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<f32>, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(sign(global1.d.x)), _wgslsmith_f_op_f32(-2200f + global1.d.x), -1000f, arg_0.d.x);
    var var_1 = vec2<bool>(true, global1.a.x);
    var var_2 = select(true, var_1.x, any(select(vec3<bool>(true, true, false), vec3<bool>(func_3(vec3<f32>(1000f, 703f, global4.d.x)), !var_1.x, true), select(vec3<bool>(arg_0.a.x, global4.c, var_1.x), !vec3<bool>(global1.c, true, false), global1.a.wxy))));
    global4 = Struct_1(!arg_0.a, _wgslsmith_sub_u32(~_wgslsmith_mult_u32(arg_1.x, arg_1.x) & global4.b, _wgslsmith_sub_u32(global4.b, _wgslsmith_clamp_u32(49723u, ~global1.b, arg_1.x | arg_0.b))), false && global4.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.zy)));
    let var_3 = global1.d.x;
    return Struct_1(arg_0.a, ~select(_wgslsmith_dot_vec3_u32(abs(u_input.c.xwy), ~u_input.c.zzy), firstLeadingBit(arg_0.b), global1.a.x), !arg_3.x, _wgslsmith_div_vec2_f32(arg_0.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global4.d.x - -190f), _wgslsmith_f_op_f32(-384f - 1575f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-280f, global1.d.x) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(2202f, -1514f))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1) -> bool {
    global3 = !(~firstTrailingBit(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(arg_2.b, 7u)], u_input.a)) < 26557i);
    var var_0 = func_2(arg_2, ~reverseBits(~u_input.c.zx) ^ ~vec2<u32>(global1.b, _wgslsmith_mod_u32(arg_1.x, 1u)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2.d.x, 996f, -1030f)))))))), vec4<bool>(~func_2(Struct_1(vec4<bool>(false, true, global4.a.x, true), 1u, false, vec2<f32>(global1.d.x, 1780f)), vec2<u32>(global4.b, 0u), vec3<f32>(arg_0.d.x, global1.d.x, arg_0.d.x), arg_0.a).b <= 56303u, true, !any(!global1.a), !any(arg_0.a.wzw)));
    var var_1 = Struct_1(arg_2.a, u_input.c.x, any(!vec4<bool>(true, -683f != global1.d.x, true, false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(func_2(Struct_1(var_0.a, arg_1.x, arg_0.c, vec2<f32>(global4.d.x, 463f)), vec2<u32>(4294967295u, 47772u), vec3<f32>(371f, 1397f, global4.d.x), arg_2.a).d.x, global4.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.d.x, arg_2.d.x))))));
    global1 = func_2(func_2(func_2(arg_2, arg_1.yz, vec3<f32>(_wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(f32(-1f) * -185f), _wgslsmith_f_op_f32(round(-538f))), vec4<bool>(false, true && arg_2.a.x, global1.c, global4.a.x)), u_input.c.xz, vec3<f32>(-2697f, -494f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_0.d.x, 646f))))), select(global4.a, func_2(arg_2, u_input.c.xw | arg_1.ww, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 590f, var_0.d.x)), !global1.a).a, vec4<bool>(arg_2.c, true, func_2(arg_0, vec2<u32>(global4.b, 48332u), vec3<f32>(376f, global4.d.x, arg_2.d.x), vec4<bool>(var_1.a.x, global1.a.x, global1.c, arg_0.c)).c, false))), ~(vec2<u32>(global1.b, firstLeadingBit(global4.b)) | _wgslsmith_add_vec2_u32(u_input.c.xz, arg_1.yx ^ arg_1.xw)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, 2202f, var_0.d.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(315f, 940f, -302f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(183f, arg_0.d.x, global1.d.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(739f, -1000f, -383f)), select(arg_0.a.yxy, var_1.a.zzz, arg_2.a.x)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1.d.x, -2818f, global1.d.x), vec3<f32>(-1099f, -222f, -331f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(543f, -833f, 572f) - vec3<f32>(-372f, -655f, arg_2.d.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-483f, global4.d.x, var_0.d.x) + vec3<f32>(arg_0.d.x, var_0.d.x, 238f))))), vec4<bool>(!(!global4.c), arg_2.c, func_2(arg_2, vec2<u32>(global1.b, ~56537u), vec3<f32>(_wgslsmith_f_op_f32(-882f + 1254f), _wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_div_f32(-2031f, 1398f)), arg_2.a).c, any(global1.a.zxw) | true));
    let var_2 = reverseBits(-(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, global0[_wgslsmith_index_u32(arg_2.b, 7u)]), vec3<i32>(global0[_wgslsmith_index_u32(8100u, 7u)], -299i, 1i)) & _wgslsmith_mod_i32(1i, global0[_wgslsmith_index_u32(global1.b, 7u)])) & u_input.a);
    return any(!arg_2.a.ywy);
}

fn func_1() -> vec4<bool> {
    let var_0 = Struct_1(select(global1.a, global4.a, true), ~u_input.c.x, select(global4.a.x, func_4(func_2(Struct_1(global1.a, 4294967295u, global1.a.x, vec2<f32>(-155f, global4.d.x)), vec2<u32>(u_input.b, global1.b), vec3<f32>(-496f, global4.d.x, global1.d.x), global4.a), ~u_input.c, func_2(Struct_1(vec4<bool>(global1.a.x, false, true, true), global4.b, true, vec2<f32>(416f, global4.d.x)), vec2<u32>(global1.b, global4.b), vec3<f32>(global1.d.x, -326f, global1.d.x), vec4<bool>(global1.a.x, true, false, global4.a.x))), true) || !select(func_4(Struct_1(global4.a, global1.b, true, vec2<f32>(-131f, global4.d.x)), u_input.c, Struct_1(vec4<bool>(global1.c, false, global4.c, false), u_input.c.x, global4.a.x, global1.d)), true, true), _wgslsmith_f_op_vec2_f32(global4.d * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4.d)))));
    return global4.a;
}

fn func_5(arg_0: u32, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = func_2(func_2(Struct_1(vec4<bool>(false, true, global1.a.x, global0[_wgslsmith_index_u32(1u, 7u)] == u_input.a), firstTrailingBit(~1u), !arg_1.x, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 373f))))), (_wgslsmith_div_vec2_u32(vec2<u32>(16754u, arg_0), u_input.c.yy) ^ u_input.c.yx) >> (firstLeadingBit(~u_input.c.yy) % vec2<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(-1161f * global4.d.x))), -225f, -197f), arg_1), countOneBits(_wgslsmith_clamp_vec2_u32(~(~vec2<u32>(38443u, global4.b)), vec2<u32>(u_input.c.x, 1u), countOneBits(u_input.c.ww))), vec3<f32>(1535f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1584f, _wgslsmith_f_op_f32(abs(-1000f)), !arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-336f, global4.d.x)), global1.d.x >= 409f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(global1.d.x)), 434f)), _wgslsmith_f_op_f32(ceil(-742f))))), select(func_2(Struct_1(!global4.a, u_input.c.x, true | global4.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d.x, global4.d.x))), ~vec2<u32>(4294967295u, global4.b), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(global1.d.x, global4.d.x, global1.d.x), vec3<f32>(global4.d.x, global1.d.x, -464f)), _wgslsmith_div_vec3_f32(vec3<f32>(global4.d.x, 690f, 640f), vec3<f32>(global4.d.x, global1.d.x, global4.d.x)))), vec4<bool>(806f == global4.d.x, !arg_1.x, global1.d.x < -1000f, true)).a, !select(vec4<bool>(true, arg_1.x, global1.c, true), !arg_1, arg_1), false));
    var var_1 = func_2(Struct_1(vec4<bool>(true, var_0.a.x, !(-1016f >= global4.d.x), !func_2(Struct_1(global1.a, var_0.b, global1.c, vec2<f32>(-221f, global4.d.x)), u_input.c.wz, vec3<f32>(-967f, 2877f, -349f), vec4<bool>(var_0.a.x, false, var_0.c, true)).a.x), countOneBits(4294967295u), !(all(var_0.a) || false), global1.d), vec2<u32>(select(min(14144u, ~1u), var_0.b & max(4294967295u, var_0.b), arg_1.x), var_0.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1063f, -384f, global4.d.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1041f, global4.d.x, 942f))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.d.x, global1.d.x, -1000f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-124f, global4.d.x, 434f)))))), !(!(!select(global4.a, vec4<bool>(arg_1.x, var_0.c, true, var_0.c), var_0.a.x))));
    global4 = func_2(Struct_1(!(!vec4<bool>(var_0.a.x, true, global4.a.x, global1.a.x)), var_1.b, all(vec2<bool>(var_0.a.x || false, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.d + vec2<f32>(global1.d.x, -1475f)) + _wgslsmith_f_op_vec2_f32(floor(var_0.d))))), ~vec2<u32>(var_1.b, 34305u), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.x + global4.d.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -129f), global1.d.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.x + 727f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(-1003f * var_1.d.x))))), !vec4<bool>(var_0.c, var_0.c && true, func_4(Struct_1(arg_1, 54217u, var_0.a.x, vec2<f32>(var_0.d.x, -759f)), u_input.c, Struct_1(vec4<bool>(arg_1.x, var_1.c, global4.a.x, false), global4.b, global1.c, vec2<f32>(931f, 2350f))), true));
    return func_2(Struct_1(vec4<bool>(arg_1.x, true, true, true), global4.b, func_1().x, vec2<f32>(569f, _wgslsmith_f_op_f32(f32(-1f) * -986f))), vec2<u32>(~_wgslsmith_mult_u32(u_input.c.x >> (arg_0 % 32u), 14900u << (global1.b % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(abs(68949u), var_1.b, global1.b, global1.b), firstTrailingBit(min(u_input.c, vec4<u32>(arg_0, 34025u, 6253u, 24870u))))), vec3<f32>(global1.d.x, _wgslsmith_f_op_f32(377f * _wgslsmith_div_f32(global1.d.x, -468f)), global4.d.x), select(func_2(func_2(Struct_1(global4.a, 9881u, var_0.a.x, vec2<f32>(749f, global4.d.x)), select(u_input.c.wy, vec2<u32>(var_0.b, var_0.b), global1.a.yz), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1058f, 231f, global1.d.x)), vec4<bool>(true, true, var_0.c, global4.c)), abs(~u_input.c.yy), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 905f, var_0.d.x) - vec3<f32>(1067f, var_0.d.x, global1.d.x))), global4.a).a, !vec4<bool>(global4.a.x, global1.a.x & false, false, global1.a.x), !global1.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, u_input.b, global1.b), _wgslsmith_mod_vec3_u32(~(~u_input.c.wyy), ~max(u_input.c.xyw, vec3<u32>(4294967295u, 1u, 0u)))), select(select(func_1(), global1.a, !global1.c), vec4<bool>(global4.c, all(select(vec4<bool>(false, global4.a.x, false, false), global1.a, true)), all(!global1.a), func_1().x), func_1()));
    let var_1 = any(vec3<bool>(func_5(~_wgslsmith_div_u32(var_0.b, global1.b), vec4<bool>(func_4(Struct_1(vec4<bool>(true, global1.c, true, true), var_0.b, global4.c, vec2<f32>(global1.d.x, 414f)), u_input.c, Struct_1(var_0.a, u_input.c.x, true, global4.d)), !var_0.c, func_2(Struct_1(vec4<bool>(var_0.c, false, global4.c, global1.c), 67424u, global4.a.x, var_0.d), vec2<u32>(4294967295u, global1.b), vec3<f32>(global4.d.x, 126f, -1222f), vec4<bool>(global4.c, global1.c, false, global4.c)).a.x, false)).c, global1.c, true));
    let var_2 = -599f;
    var var_3 = Struct_1(!vec4<bool>(!func_1().x, true, func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, 826f, -2588f))), var_0.b < var_0.b), 114848u, func_4(func_2(func_2(Struct_1(vec4<bool>(false, false, true, true), 30681u, false, var_0.d), vec2<u32>(var_0.b, 43240u), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global4.d.x, global1.d.x, -1196f))), global1.a), firstLeadingBit(u_input.c.yw), vec3<f32>(_wgslsmith_f_op_f32(var_2 - global4.d.x), 657f, 2222f), vec4<bool>(true, global1.c, false, any(var_0.a.zzx))), ~countOneBits(u_input.c), Struct_1(vec4<bool>(global1.c, !global4.c, var_0.c, u_input.b > 55141u), global1.b, false, var_0.d)), var_0.d);
    let var_4 = vec3<bool>(true, false | global1.a.x, !any(select(!vec2<bool>(global1.c, global1.c), select(vec2<bool>(true, true), vec2<bool>(global4.c, var_0.a.x), var_3.c), var_0.d.x == 888f)));
    global3 = -478f >= _wgslsmith_f_op_f32(trunc(var_2));
    var var_5 = vec4<f32>(var_2, var_3.d.x, _wgslsmith_f_op_f32(step(func_2(func_2(Struct_1(global4.a, 0u, global1.a.x, global1.d), vec2<u32>(1u, global4.b), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2, var_3.d.x, global4.d.x))), select(var_0.a, vec4<bool>(var_4.x, global1.a.x, var_4.x, global1.a.x), var_0.a)), _wgslsmith_add_vec2_u32(~vec2<u32>(global4.b, var_0.b), vec2<u32>(u_input.c.x, var_0.b)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_3.d.x, -1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(600f, global4.d.x, -602f)))), select(vec4<bool>(global4.a.x, false, true, true), !vec4<bool>(var_4.x, true, global4.a.x, var_0.c), vec4<bool>(var_4.x, false, global1.a.x, global1.a.x))).d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_3.d.x, -303f)), _wgslsmith_f_op_f32(step(global4.d.x, 455f))))))), -1398f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3.d.x, _wgslsmith_f_op_f32(-global1.d.x))))));
}

