struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_5 {
    a: vec4<u32>,
    b: f32,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: f32 = 175f;

var<private> global2: array<i32, 12> = array<i32, 12>(1i, -37901i, 0i, -1i, 1163i, 12947i, 2147483647i, i32(-2147483648), 2147483647i, -29749i, 21129i, i32(-2147483648));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<f32>) -> i32 {
    global0 = -(~arg_1.a.x);
    var var_0 = arg_1;
    var var_1 = Struct_1(1000f, u_input.c, _wgslsmith_f_op_f32(f32(-1f) * -2150f));
    let var_2 = Struct_4(Struct_1(var_1.c, ~_wgslsmith_add_u32(14427u, _wgslsmith_clamp_u32(55654u, u_input.c, var_1.b)), 2409f), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-var_1.c))) + arg_2.x), 50773u, 245f));
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -154f))))))));
    return global2[_wgslsmith_index_u32(0u, 12u)] ^ arg_1.a.x;
}

fn func_2() -> Struct_4 {
    let var_0 = vec3<i32>(u_input.b, abs(~abs(func_3(Struct_3(vec2<i32>(u_input.a, global2[_wgslsmith_index_u32(0u, 12u)]), vec3<bool>(false, false, false)), Struct_3(vec2<i32>(u_input.a, -2147483647i), vec3<bool>(true, false, false)), vec2<f32>(1115f, -1547f)))), -_wgslsmith_mod_i32(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(u_input.c, 12u)], -42718i), vec4<i32>(global2[_wgslsmith_index_u32(u_input.c, 12u)], -1i, u_input.a, global2[_wgslsmith_index_u32(32185u, 12u)]))) ^ 13737i);
    global2 = array<i32, 12>();
    let var_1 = Struct_3(vec2<i32>(-1i) * -(~vec2<i32>(-1i, var_0.x)), vec3<bool>(true, true, all(vec4<bool>(any(vec4<bool>(true, false, false, true)), true, true, true))));
    global0 = i32(-1i) * -(~var_0.x);
    let var_2 = u_input.c;
    return Struct_4(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -582f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-360f)) - _wgslsmith_f_op_f32(1140f + 1152f))), 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f * -760f), _wgslsmith_f_op_f32(ceil(-1671f)))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(477f - 1000f), -237f)))), Struct_1(-624f, 0u, _wgslsmith_f_op_f32(f32(-1f) * -607f)));
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = abs(vec2<u32>(~arg_0, u_input.c));
    let var_1 = func_2();
    var var_2 = Struct_5(~min(vec4<u32>(~u_input.c, firstLeadingBit(4294967295u), ~45672u, ~18228u), ~vec4<u32>(4294967295u, u_input.c, u_input.c, arg_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-382f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.b.c - var_1.a.a), _wgslsmith_f_op_f32(var_1.b.a * 180f)))), var_1.b.a), false, ~(~0u));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(1078f)), _wgslsmith_f_op_f32(trunc(-197f)), true)), -368f)), _wgslsmith_f_op_f32(-var_1.b.a))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.c - var_1.a.c) + _wgslsmith_div_f32(252f, var_2.b)));
    global2 = array<i32, 12>();
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(firstTrailingBit(firstLeadingBit(~u_input.c))))));
    var var_1 = ~2147483647i;
    let var_2 = Struct_3(_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.a, global2[_wgslsmith_index_u32(27221u, 12u)]), vec2<i32>(-35973i, u_input.b)), vec2<i32>(1i >> (0u % 32u), _wgslsmith_div_i32(-2147483647i, global2[_wgslsmith_index_u32(u_input.c, 12u)])), ~vec2<i32>(-4061i, global2[_wgslsmith_index_u32(u_input.c, 12u)])), _wgslsmith_clamp_vec2_i32(vec2<i32>(~(-1i), i32(-1i) * -1i), vec2<i32>(u_input.a, _wgslsmith_div_i32(global2[_wgslsmith_index_u32(u_input.c, 12u)], 57622i)), vec2<i32>(-global2[_wgslsmith_index_u32(u_input.c, 12u)], -u_input.b)), max(_wgslsmith_mult_vec2_i32(max(vec2<i32>(u_input.a, global2[_wgslsmith_index_u32(1u, 12u)]), vec2<i32>(2147483647i, u_input.b)), vec2<i32>(2147483647i, 0i)), select(-vec2<i32>(1i, u_input.a), reverseBits(vec2<i32>(-13661i, 43053i)), select(vec2<bool>(false, true), vec2<bool>(true, false), false)))), vec3<bool>(!any(vec3<bool>(true, true, true)), u_input.c > 4294967295u, any(vec4<bool>(true, true, true, true))));
    let var_3 = Struct_3(var_2.a, vec3<bool>(u_input.b != ~(global2[_wgslsmith_index_u32(u_input.c, 12u)] | var_2.a.x), select(true, var_2.b.x, true) || true, true));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(func_1(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, u_input.c), max(vec2<u32>(u_input.c, 29097u), vec2<u32>(4294967295u, 69486u))) >> (1u % 32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-576f * 270f), _wgslsmith_f_op_f32(-1000f + var_0))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0)))) + _wgslsmith_f_op_f32(func_1(36523u))));
    var var_5 = Struct_4(Struct_1(_wgslsmith_f_op_f32(floor(var_0)), ~1u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(var_0 + 659f)))), func_2().a);
    var_5 = func_2();
    global0 = 34312i;
    let var_6 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(select(0u, 0u, any(vec2<bool>(2147483647i != var_3.a.x, var_3.b.x))));
}

