struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: bool, arg_3: bool) -> vec4<bool> {
    let var_0 = arg_0.a.x;
    global0 = select(vec4<bool>(false, !(!(!arg_3)), all(!vec3<bool>(arg_2, arg_2, global0.x)), global0.x), select(select(vec4<bool>(true, global0.x, arg_2 && arg_3, any(global0.wx)), select(!vec4<bool>(true, arg_2, arg_3, global0.x), vec4<bool>(true, true, true, true), var_0 == u_input.c.x), !(!vec4<bool>(false, false, true, global0.x))), select(vec4<bool>(any(vec4<bool>(false, false, arg_3, true)), true, arg_3 && false, true), vec4<bool>(global0.x, false, !global0.x, all(global0.xwy)), !global0.x & false), all(vec4<bool>(true, !arg_2, select(false, arg_2, arg_2), !arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x - 162f) - arg_0.c.x)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(692f))));
    let var_1 = Struct_1(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(30222u, 4294967295u, u_input.a.x, arg_1.x)), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(arg_0.a, _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, var_0, 49179u), vec4<u32>(arg_0.a.x, arg_0.a.x, 1u, 0u))), select(arg_0.a | vec4<u32>(40485u, 0u, 24687u, var_0), vec4<u32>(arg_1.x, var_0, arg_1.x, 50900u), !vec4<bool>(arg_2, arg_3, true, global0.x)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, -618f, arg_0.c.x) * vec3<f32>(arg_0.b.x, -2827f, arg_0.b.x))), vec3<f32>(651f, _wgslsmith_f_op_f32(abs(-495f)), arg_0.b.x), true)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_0.c, vec4<f32>(arg_0.c.x, _wgslsmith_div_f32(arg_0.b.x, arg_0.b.x), 1379f, _wgslsmith_f_op_f32(exp2(arg_0.b.x))), arg_3)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(select(arg_0.c.x, 823f, true)), -735f, _wgslsmith_f_op_f32(-arg_0.c.x), arg_0.c.x), arg_0.c))));
    let var_2 = Struct_1(~arg_0.a, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-605f, var_1.c.x, var_1.c.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, 1069f, 2100f, var_1.c.x)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_1.c)), var_1.c))));
    let var_3 = true;
    return select(select(vec4<bool>(all(global0.wyz), true, select(any(vec2<bool>(arg_2, arg_2)), false, select(false, true, arg_3)), true), vec4<bool>(any(vec4<bool>(global0.x, arg_3, true, false)), false == all(vec2<bool>(var_3, arg_2)), var_3, true), all(vec2<bool>(var_1.b.x >= var_1.c.x, false))), select(select(select(select(vec4<bool>(var_3, var_3, false, var_3), vec4<bool>(var_3, true, false, global0.x), global0.x), vec4<bool>(false, true, false, var_3), select(vec4<bool>(arg_2, false, global0.x, false), vec4<bool>(false, arg_3, arg_3, arg_2), vec4<bool>(false, true, arg_2, arg_3))), vec4<bool>(true, 14403i < u_input.b.x, global0.x | global0.x, global0.x), select(!vec4<bool>(global0.x, var_3, var_3, arg_3), vec4<bool>(false, true, arg_3, arg_2), select(vec4<bool>(global0.x, true, arg_2, arg_2), vec4<bool>(var_3, false, arg_2, false), vec4<bool>(global0.x, true, var_3, arg_2)))), vec4<bool>(global0.x, true, true, (var_3 | true) == (0u <= var_0)), select(!vec4<bool>(true, false, true, var_3), select(select(vec4<bool>(true, arg_2, global0.x, true), vec4<bool>(true, false, arg_2, false), vec4<bool>(arg_2, arg_3, arg_2, arg_2)), !vec4<bool>(arg_3, false, var_3, var_3), !var_3), select(select(vec4<bool>(global0.x, var_3, global0.x, arg_2), vec4<bool>(false, arg_3, global0.x, arg_3), vec4<bool>(true, arg_3, false, false)), select(vec4<bool>(false, arg_2, var_3, var_3), vec4<bool>(false, false, true, var_3), true), false | var_3))), !select(true, false, !any(vec4<bool>(arg_2, true, arg_2, false))));
}

fn func_2(arg_0: Struct_1) -> f32 {
    global0 = !(!select(select(vec4<bool>(true, false, true, global0.x), func_3(Struct_1(arg_0.a, vec3<f32>(arg_0.b.x, arg_0.c.x, 1081f), vec4<f32>(717f, arg_0.b.x, 1364f, -354f)), vec2<u32>(arg_0.a.x, arg_0.a.x), global0.x, global0.x), true), vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(global0.x, global0.x)), !global0.x, true, all(vec4<bool>(global0.x, global0.x, true, false)))));
    global0 = select(select(vec4<bool>(~u_input.b.x < u_input.b.x, abs(u_input.b.x) <= -2147483647i, false, true), select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(!global0.x, !global0.x, true, true), func_3(Struct_1(vec4<u32>(arg_0.a.x, u_input.c.x, u_input.a.x, 1u), vec3<f32>(arg_0.c.x, arg_0.b.x, arg_0.c.x), arg_0.c), vec2<u32>(1u, u_input.c.x), global0.x, global0.x)), !select(vec4<bool>(false, true, global0.x, false), select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(true, true, true, global0.x), vec4<bool>(true, global0.x, false, true)), vec4<bool>(true, global0.x, global0.x, global0.x))), !select(vec4<bool>(true, global0.x, any(vec4<bool>(global0.x, global0.x, true, global0.x)), true), vec4<bool>(global0.x, true, true, global0.x), true), true);
    let var_0 = u_input.d.x;
    var var_1 = Struct_1(abs(~vec4<u32>(arg_0.a.x ^ 22176u, arg_0.a.x, ~28051u, _wgslsmith_mod_u32(arg_0.a.x, 25165u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-836f, arg_0.b.x, arg_0.b.x) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-2313f, _wgslsmith_f_op_f32(-343f * 119f), _wgslsmith_f_op_f32(arg_0.b.x + -733f))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(259f, _wgslsmith_f_op_f32(1235f * arg_0.b.x), _wgslsmith_f_op_f32(arg_0.b.x * -1233f), _wgslsmith_f_op_f32(arg_0.b.x - 1159f)), arg_0.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, 1062f, arg_0.b.x, 456f)))))));
    global0 = !select(vec4<bool>(global0.x, false, func_3(arg_0, arg_0.a.wz | u_input.a.yz, u_input.a.x > 0u, select(true, global0.x, false)).x, true), vec4<bool>(global0.x != false, all(global0.xyy), any(global0.zxw), true), global0.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x + var_1.b.x));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    global0 = select(vec4<bool>(true, global0.x, arg_1.b.x != _wgslsmith_f_op_f32(func_2(Struct_1(arg_1.a, vec3<f32>(arg_1.b.x, 420f, -130f), vec4<f32>(894f, -121f, 326f, arg_1.b.x)))), arg_0), !(!(!vec4<bool>(arg_0, global0.x, true, false))), func_3(Struct_1(~arg_1.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.x, arg_1.b.x, -1638f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, arg_1.c.x, 685f, arg_1.c.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, arg_1.c.x, arg_1.c.x, -524f) * arg_1.c))), max(~countOneBits(arg_1.a.wx), firstLeadingBit(arg_1.a.yx)), all(!vec3<bool>(arg_0, global0.x, global0.x)), true).x);
    var var_0 = false;
    var var_1 = Struct_1(arg_1.a, arg_1.c.yxz, arg_1.c);
    let var_2 = min(~(~(_wgslsmith_dot_vec3_u32(var_1.a.xzy, var_1.a.wzw) | arg_1.a.x)), 58569u);
    let var_3 = !arg_0;
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    global0 = select(vec4<bool>(!all(global0.wzx) || global0.x, false, u_input.a.x >= arg_1.a.x, global0.x), select(func_3(Struct_1(firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 64321u)), _wgslsmith_f_op_vec3_f32(-arg_0.b), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(762f, arg_0.c.x, arg_1.b.x, -311f)))), vec2<u32>(~arg_1.a.x, ~1u), select(any(vec3<bool>(false, global0.x, global0.x)), false, global0.x), global0.x), func_3(Struct_1(arg_1.a, arg_0.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, arg_0.c.x, arg_0.c.x, 1078f) - arg_1.c)), u_input.a.yx, true, !(false & global0.x)), !func_3(Struct_1(arg_0.a, arg_1.c.xxz, arg_0.c), vec2<u32>(arg_1.a.x, 0u), global0.x || false, global0.x)), !vec4<bool>(true, true, global0.x, func_3(arg_0, select(u_input.c.zy, vec2<u32>(arg_0.a.x, arg_0.a.x), global0.x), u_input.d.x > u_input.d.x, true).x));
    var var_0 = func_1(select(select(true, true, select(true, !global0.x, true || global0.x)), 4356i > _wgslsmith_dot_vec2_i32(u_input.d.yx, ~vec2<i32>(u_input.b.x, u_input.d.x)), true), arg_0);
    var var_1 = !vec4<bool>(true, any(vec4<bool>(true, true, true, true)), any(vec2<bool>(global0.x, !global0.x)), true);
    let var_2 = u_input.d.yx;
    var var_3 = arg_1;
    return global0.xxy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(any(select(func_4(Struct_1(vec4<u32>(0u, 84391u, 0u, 46532u), vec3<f32>(-1550f, 1121f, 891f), vec4<f32>(-1455f, -385f, 644f, 259f)), func_1(global0.x, Struct_1(vec4<u32>(30430u, u_input.a.x, u_input.a.x, u_input.c.x), vec3<f32>(249f, 854f, 661f), vec4<f32>(1962f, -950f, 1019f, -496f)))), vec3<bool>(false, false, all(vec2<bool>(global0.x, global0.x))), all(!global0.xx))), !global0.x, global0.x, true);
    let var_1 = Struct_1(vec4<u32>(39223u, 15905u, _wgslsmith_sub_u32(~106945u, ~u_input.c.x), _wgslsmith_dot_vec2_u32(u_input.c.yy, vec2<u32>(1u, 16246u)) << (countOneBits(u_input.c.x) % 32u)) >> (countOneBits(select(firstLeadingBit(vec4<u32>(19698u, u_input.a.x, u_input.c.x, 25104u)), ~vec4<u32>(u_input.c.x, u_input.a.x, 26182u, 36290u), var_0)) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(2134f)), -166f, _wgslsmith_f_op_f32(max(-568f, 136f))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1663f, 1099f, 2282f)))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(726f, -1013f, 1647f, -143f) - vec4<f32>(-1385f, -1024f, 1480f, -1522f)) - vec4<f32>(303f, 113f, -693f, -360f)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-149f, 130f, -571f, -631f)))), vec4<f32>(117f, _wgslsmith_f_op_f32(ceil(-1482f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-785f + -963f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -581f)))))));
    var var_2 = Struct_1(vec4<u32>(~(~_wgslsmith_mult_u32(var_1.a.x, 4294967295u)), _wgslsmith_mod_u32(4294967295u, 1u), firstTrailingBit(u_input.a.x), 93230u), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.c.zyw)), _wgslsmith_f_op_vec3_f32(select(var_1.c.yxy, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_1.c.yxz)), _wgslsmith_f_op_vec3_f32(-var_1.b)), false)))), var_1.c);
    var var_3 = var_1;
    var_2 = var_1;
    var_3 = Struct_1(vec4<u32>(25909u, func_1(var_0.x | true, var_1).a.x >> (0u % 32u), u_input.c.x, _wgslsmith_add_u32(var_1.a.x | (var_2.a.x ^ var_3.a.x), 42125u)), vec3<f32>(365f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x - var_1.b.x)), _wgslsmith_f_op_f32(trunc(167f))), var_1.c);
    var_3 = var_1;
    let var_4 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_2.b, vec3<f32>(-323f, var_3.b.x, var_2.b.x), var_0.wxz)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-813f, _wgslsmith_f_op_f32(select(var_2.c.x, var_1.b.x, var_0.x)), _wgslsmith_f_op_f32(max(var_1.c.x, var_2.c.x)))))));
    let var_5 = ~(-vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.d, u_input.d), ~(-1i), -u_input.b.x, -u_input.d.x)) | u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(var_2.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a.x, 47908u) | u_input.a.xx, abs(u_input.a.xz))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1047f, _wgslsmith_f_op_f32(var_2.c.x + var_1.b.x))))))), 4294967295u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_4.yy * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.c.x, 814f) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-2788f, -810f), var_3.c.ww)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_1.c.x, var_2.b.x), var_2.b.x))));
}

