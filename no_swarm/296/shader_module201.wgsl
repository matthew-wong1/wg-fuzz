struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: bool,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12>;

var<private> global1: vec2<f32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<f32>, arg_1: u32) -> u32 {
    var var_0 = Struct_1(select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), u_input.a.x < u_input.a.x), false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec2<bool>(true, false)))), vec4<bool>(!(!(u_input.d.x <= 1u)), !any(vec2<bool>(false, true)), !(!any(vec2<bool>(false, true))), any(vec3<bool>(any(vec4<bool>(false, true, false, false)), all(vec4<bool>(true, false, true, false)), any(vec2<bool>(false, true))))), true, u_input.a.yz, ~abs(abs(~vec4<u32>(arg_1, u_input.d.x, arg_1, 93839u))));
    var var_1 = Struct_2(Struct_1(!(!select(vec2<bool>(var_0.b.x, true), vec2<bool>(false, false), var_0.a)), vec4<bool>(var_0.d.x >= _wgslsmith_add_i32(-43237i, var_0.d.x), select(true, false, all(var_0.b)), true, true), true, countOneBits(max(vec2<i32>(-27908i, u_input.a.x), vec2<i32>(u_input.e.x, u_input.e.x)) << (~var_0.e.zz % vec2<u32>(32u))), var_0.e), Struct_1(vec2<bool>(var_0.b.x, 224f > _wgslsmith_f_op_f32(-global1.x)), select(select(vec4<bool>(false, false, true, false), var_0.b, var_0.b), var_0.b, !any(var_0.a)), true, u_input.a.zx, vec4<u32>(var_0.e.x, _wgslsmith_dot_vec3_u32(var_0.e.ywy, _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 22584u), vec3<u32>(var_0.e.x, var_0.e.x, 62499u))), reverseBits(arg_1), abs(_wgslsmith_sub_u32(1u, var_0.e.x)))), u_input.a, Struct_1(var_0.a, select(select(select(vec4<bool>(var_0.b.x, var_0.a.x, true, false), vec4<bool>(var_0.c, var_0.b.x, var_0.c, false), vec4<bool>(var_0.a.x, false, var_0.c, var_0.a.x)), !var_0.b, vec4<bool>(var_0.c, false, true, false)), var_0.b, var_0.b), all(!select(vec2<bool>(var_0.a.x, true), var_0.b.wy, var_0.b.yy)), select(select(vec2<i32>(var_0.d.x, u_input.e.x), vec2<i32>(0i, u_input.e.x), vec2<bool>(false, true)) >> (var_0.e.ww % vec2<u32>(32u)), vec2<i32>(-u_input.e.x, 0i), false), ~var_0.e), ~(~0u));
    global0 = array<Struct_2, 12>();
    var_0 = Struct_1(vec2<bool>(all(select(select(var_0.b.yzw, var_0.b.wyw, vec3<bool>(true, false, var_1.a.a.x)), vec3<bool>(var_1.a.a.x, true, var_0.b.x), select(vec3<bool>(false, var_0.b.x, var_1.a.c), var_1.b.b.wxw, var_1.d.b.wzw))), u_input.d.x <= 4294967295u), var_1.a.b, var_1.d.b.x, _wgslsmith_add_vec2_i32(vec2<i32>(i32(-1i) * -24231i, u_input.e.x), min(abs(var_1.a.d), var_1.d.d >> (var_1.d.e.wz % vec2<u32>(32u)))) & -firstTrailingBit(vec2<i32>(var_1.b.d.x, 2147483647i)), countOneBits(reverseBits(var_1.a.e)));
    let var_2 = -1393f;
    return 60222u;
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(463f)), global1.x) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(451f, global1.x), vec2<f32>(2115f, -674f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global1.x + 724f), 1739f)))));
    var var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_mod_u32(1u, ~(~u_input.b.x)), u_input.d.x), 12u)];
    let var_1 = global0[_wgslsmith_index_u32(func_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), 1f), _wgslsmith_add_u32(0u, u_input.d.x)), 12u)];
    var_0 = Struct_2(var_0.b, var_1.b, u_input.a, Struct_1(vec2<bool>(all(vec3<bool>(true, var_1.d.c, var_1.a.a.x)), (global1.x <= 942f) || (global1.x < -2054f)), !(!select(vec4<bool>(var_0.b.c, false, var_0.d.b.x, false), vec4<bool>(var_0.d.a.x, var_1.b.a.x, var_0.a.c, true), vec4<bool>(true, true, true, false))), var_1.d.a.x, arg_0.yw, _wgslsmith_clamp_vec4_u32(var_0.b.e, var_1.d.e, abs(~var_0.a.e))), ~(~(reverseBits(0u) | var_1.a.e.x)));
    var var_2 = var_0.a;
    return select(var_1.e, _wgslsmith_sub_u32(min(~4294967295u, ~1u), select(var_2.e.x, 24966u, !var_2.c)) ^ 8048u, var_1.b.b.x);
}

fn func_1() -> vec2<f32> {
    var var_0 = 164f;
    var var_1 = vec4<u32>(_wgslsmith_mod_u32(27981u, u_input.c), ~(~(~u_input.d.x)), firstTrailingBit(1u), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x >> (24186u % 32u), func_2(u_input.a), u_input.d.x | u_input.b.x), vec3<u32>(u_input.c, 2938u, 15552u) ^ vec3<u32>(u_input.d.x, u_input.c, 0u)), abs(firstLeadingBit(~u_input.d.x))));
    var var_2 = Struct_2(Struct_1(vec2<bool>(true, true), vec4<bool>(any(vec2<bool>(true, true)), true, !all(vec3<bool>(true, false, true)), true), !(!all(vec3<bool>(true, false, false))), vec2<i32>(-1i >> (_wgslsmith_div_u32(0u, var_1.x) % 32u), firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.e.x), vec2<i32>(1i, 41301i)))), abs(~select(vec4<u32>(0u, 26749u, var_1.x, var_1.x), vec4<u32>(0u, u_input.d.x, 13171u, u_input.d.x), false))), Struct_1(vec2<bool>(all(vec2<bool>(true, true)), true), vec4<bool>(false, (global1.x >= 768f) && (u_input.a.x != u_input.a.x), true, false), !(451f != _wgslsmith_f_op_f32(209f * global1.x)), u_input.a.yx, vec4<u32>(4294967295u, _wgslsmith_mod_u32(func_3(vec2<f32>(-730f, -1000f), 6329u), _wgslsmith_dot_vec3_u32(u_input.b, u_input.b)), 1u, ~_wgslsmith_mod_u32(19638u, var_1.x))), vec4<i32>(u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, max(u_input.a.x, -u_input.a.x)), min(u_input.e.x, max(0i, u_input.e.x)), -abs(u_input.a.x)), Struct_1(vec2<bool>(true, true), vec4<bool>(true, true, true, true), _wgslsmith_mod_i32(~u_input.e.x, _wgslsmith_div_i32(u_input.a.x, u_input.a.x)) > countOneBits(36751i), u_input.e, firstLeadingBit(min(vec4<u32>(var_1.x, 76509u, 617u, var_1.x), vec4<u32>(u_input.d.x, 4294967295u, var_1.x, u_input.b.x)))), _wgslsmith_mult_u32(abs(min(min(4294967295u, u_input.b.x), _wgslsmith_mod_u32(u_input.d.x, u_input.b.x))), select(reverseBits(u_input.d.x) << (~30126u % 32u), abs(0u), false)));
    var_1 = var_2.b.e;
    var var_3 = vec2<bool>(!var_2.d.b.x, all(select(select(var_2.b.b, var_2.b.b, var_2.a.a.x & var_2.b.b.x), !select(vec4<bool>(var_2.a.b.x, var_2.a.c, var_2.d.a.x, var_2.a.a.x), vec4<bool>(var_2.b.c, var_2.b.b.x, var_2.d.c, var_2.a.c), var_2.b.b.x), false)));
    return _wgslsmith_div_vec2_f32(vec2<f32>(-568f, global1.x), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -2245f) - vec2<f32>(global1.x, -1000f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1079f, global1.x))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-415f, global1.x) + vec2<f32>(global1.x, global1.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 300f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    var_0 = u_input.e.x;
    global0 = array<Struct_2, 12>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1728f, 1078f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-357f, global1.x))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.x, global1.x))))))) - _wgslsmith_f_op_vec2_f32(func_1()));
    var var_2 = ~(vec2<u32>(u_input.d.x, ~(~u_input.d.x)) << ((~u_input.b.yy << (~u_input.d % vec2<u32>(32u))) % vec2<u32>(32u)));
    global1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.x + var_1.x))), _wgslsmith_f_op_f32(sign(-1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(539f))), var_1.x)), global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.x, 807f, -308f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
}

