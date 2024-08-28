struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: f32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: bool,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-804f, 190f);

var<private> global1: array<vec2<f32>, 3>;

var<private> global2: vec2<i32> = vec2<i32>(1i, 0i);

var<private> global3: Struct_2 = Struct_2(vec4<bool>(false, false, false, true), -572f, true, vec3<f32>(231f, -300f, 359f), Struct_1(-32525i, 66493i, vec3<f32>(385f, -1000f, 1000f), -1230f, vec3<bool>(true, true, false)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> f32 {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0), -1000f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global3.d.xy, vec2<f32>(-1180f, 1703f)))))));
    var var_0 = all(!vec4<bool>(select(false, global3.a.x, global3.c) & !global3.e.e.x, true, !all(global3.a.xy), false));
    let var_1 = global3.e;
    global3 = arg_1;
    let var_2 = global3.e;
    return var_1.d;
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.d.x >> (~(~u_input.a) % 32u);
    let var_1 = vec2<f32>(global3.e.c.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0.x)), global0.x) + _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global0.x)))), Struct_2(select(global3.a, vec4<bool>(true, false, false, true), global3.a.x), -906f, !global3.e.e.x, _wgslsmith_div_vec3_f32(global3.d, global3.e.c), Struct_1(-2147483647i, u_input.d.x, vec3<f32>(global3.d.x, global3.e.c.x, global0.x), global3.d.x, vec3<bool>(global3.e.e.x, true, global3.e.e.x)))))));
    var var_2 = Struct_2(select(select(global3.a, vec4<bool>(global3.e.e.x, u_input.c != 1u, any(global3.e.e.xx), true), (i32(-1i) * -1603i) >= global3.e.b), !(!global3.a), global3.e.e.x), _wgslsmith_f_op_f32(func_3(917f, Struct_2(select(!global3.a, global3.a, select(global3.a, global3.a, global3.a)), _wgslsmith_div_f32(global3.d.x, 1f), global3.a.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global3.d + vec3<f32>(194f, 444f, var_1.x)) + vec3<f32>(var_1.x, -753f, var_1.x)), Struct_1(_wgslsmith_mod_i32(global3.e.a, u_input.d.x), 62482i, vec3<f32>(var_1.x, -402f, 1000f), _wgslsmith_f_op_f32(-var_1.x), global3.e.e)))), !(!select(!global3.a.x, 2147483647i >= global3.e.a, global3.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.x), 529f, -1181f)), global3.e);
    let var_3 = Struct_2(vec4<bool>(!(!(55265u < u_input.a)), true || any(global3.e.e), true, true), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * 115f) + _wgslsmith_f_op_f32(ceil(var_1.x))), Struct_2(var_2.a, 200f, global3.e.e.x, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-208f, global3.b, var_1.x))), var_2.e)))), all(!(!vec3<bool>(true, var_2.c, true))), _wgslsmith_f_op_vec3_f32(floor(var_2.d)), global3.e);
    var var_4 = u_input.c ^ u_input.c;
    return Struct_1(var_2.e.b, 1i, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_3.d.x, -301f, -815f))) * _wgslsmith_f_op_vec3_f32(max(var_2.e.c, vec3<f32>(-764f, 1266f, -180f)))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-440f - var_3.b)), var_3.a.xwx);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<bool>) -> vec3<f32> {
    let var_0 = select(min(vec4<u32>(u_input.a, u_input.c, ~u_input.a, _wgslsmith_mult_u32(~u_input.b, arg_0.x)), firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, arg_0.x, 20066u), vec3<u32>(u_input.c, arg_0.x, 1u)), 41133u, 45605u, 26551u))), _wgslsmith_div_vec4_u32(min(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.b, 1u, arg_0.x, 4294967295u), vec4<u32>(21938u, arg_0.x, u_input.b, 1u) >> (vec4<u32>(u_input.a, 44004u, u_input.c, 36733u) % vec4<u32>(32u)), select(vec4<u32>(16201u, u_input.b, arg_0.x, 1u), vec4<u32>(arg_0.x, arg_0.x, 25545u, arg_0.x), vec4<bool>(global3.e.e.x, true, false, global3.e.e.x))), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 1u, 8921u), _wgslsmith_add_vec4_u32(vec4<u32>(22880u, u_input.a, 63096u, 1u), vec4<u32>(4294967295u, 7391u, arg_0.x, arg_0.x)), ~vec4<u32>(2345u, arg_0.x, 58794u, u_input.b))), ~vec4<u32>(0u, 4294967295u, ~0u, u_input.c | arg_0.x)), true);
    let var_1 = Struct_2(global3.a, global3.e.c.x, true, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(208f, global3.d.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.e.c.x) + 129f)), -142f, global0.x), func_2());
    let var_2 = var_1;
    let var_3 = select(select(select(!(!var_2.a), select(!var_1.a, select(vec4<bool>(global3.c, global3.a.x, false, global3.e.e.x), var_1.a, vec4<bool>(global3.e.e.x, true, arg_1.x, true)), global0.x > global0.x), !arg_1.x), vec4<bool>(any(vec2<bool>(global3.a.x, false)), u_input.c != firstLeadingBit(0u), true, var_1.e.e.x), !var_1.e.e.x), vec4<bool>(!var_1.a.x, !(!any(vec4<bool>(true, true, true, true))), !all(vec3<bool>(var_1.e.e.x, global3.a.x, var_1.c)), firstLeadingBit(_wgslsmith_clamp_u32(var_0.x, u_input.a, var_0.x)) >= ~20223u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-241f - var_2.e.c.x)))) >= _wgslsmith_div_f32(global3.e.d, _wgslsmith_f_op_f32(trunc(-1102f))));
    var var_4 = _wgslsmith_clamp_i32(-67297i, global2.x, func_2().b);
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_2.d.x), 1224f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.e.c.x, var_2.b)) + 266f)))) * func_2().c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.x;
    global2 = u_input.d << (~_wgslsmith_mult_vec2_u32(~(~vec2<u32>(u_input.b, u_input.b)), vec2<u32>(u_input.b, firstLeadingBit(48891u))) % vec2<u32>(32u));
    var var_1 = Struct_2(vec4<bool>(global3.e.e.x && global3.c, true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1461f - _wgslsmith_f_op_f32(-global3.b)), -602f))), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3.b, -1175f, global3.e.c.x), global3.d))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -2220f, 299f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_1(vec2<u32>(4294967295u, 1u), vec2<bool>(global3.e.e.x, global3.a.x))), vec3<f32>(-333f, global0.x, 1724f), !global3.a.xww)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, 1064f, 788f), global3.e.c) - _wgslsmith_f_op_vec3_f32(round(global3.d))))), func_2());
    var var_2 = _wgslsmith_clamp_u32(u_input.c, min(~62552u | u_input.b, u_input.b), _wgslsmith_mod_u32(u_input.b, ~min(u_input.a, u_input.c))) >= 51124u;
    var var_3 = Struct_1(-2147483647i, 1i, _wgslsmith_f_op_vec3_f32(-global3.d), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1646f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * 650f)))))), !global3.e.e);
    let var_4 = Struct_1(~_wgslsmith_mult_i32(countOneBits(-7161i), ~var_1.e.b) | firstTrailingBit(-(~var_1.e.a)), firstLeadingBit((_wgslsmith_mult_i32(global2.x, global2.x) << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, u_input.b)) % 32u)) & ~(-u_input.d.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.d, global3.d.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), global0.x)))), 134f, select(select(!vec3<bool>(global3.a.x, true, false), !(!vec3<bool>(global3.e.e.x, true, var_1.a.x)), global3.e.e.x), !(!vec3<bool>(global3.e.e.x, var_1.c, true)), !any(!var_1.e.e)));
    var var_5 = Struct_2(var_1.a, 1f, all(var_3.e.zy), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1240f) - _wgslsmith_f_op_vec3_f32(func_1(vec2<u32>(0u, 1u), var_1.a.wx)).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1624f + 739f))), var_4.d, var_1.e.d), var_4);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.d)))), select(max(var_3.b, _wgslsmith_clamp_i32(-2147483647i, global2.x, global2.x)), 1i, var_5.e.e.x) & ~(-(~(-36741i))), var_4.a | 1i);
}

