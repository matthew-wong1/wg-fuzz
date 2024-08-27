struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: bool,
    d: f32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: i32;

var<private> global2: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global3: vec2<bool>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<bool> {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~u_input.d.x), 4294967295u), 15u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, 251f, var_0.d, var_0.d))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, var_0.d, var_0.d, var_0.d)))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 837f, var_0.d, var_1.x) * vec4<f32>(-912f, 2066f, 492f, 1041f)))))))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(654f, 146f, 313f, 1000f), vec4<f32>(-396f, -1408f, var_0.d, var_0.d))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_0.d, var_1.x))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, 555f, 845f, -333f))))))));
    global0 = array<Struct_1, 15>();
    let var_2 = var_1.zyw;
    return !var_0.b;
}

fn func_2() -> Struct_1 {
    return Struct_1(~reverseBits(u_input.a), select(func_3(), global2.xw, global2.wz), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1335f) - _wgslsmith_f_op_f32(-1224f + -379f)) - _wgslsmith_f_op_f32(-443f - -2023f))), vec2<bool>(true, !func_3().x));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(~3203i, func_2().e, min(96570u, _wgslsmith_dot_vec2_u32(~u_input.c, u_input.d.xy)) <= ~(~u_input.d.x << (u_input.d.x % 32u)), arg_0.d, !(!(!arg_0.b)));
    var_0 = Struct_1(arg_0.a, func_3(), 1u != abs(_wgslsmith_mult_u32(18499u, firstTrailingBit(u_input.c.x))), _wgslsmith_f_op_f32(arg_0.d + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(1675f, -1553f)))), func_2().b);
    global3 = select(arg_0.e, func_3(), vec2<bool>(false, !(!(710f == var_0.d))));
    global2 = !vec4<bool>((any(global2.xz) != any(global2.xy)) != true, true, any(vec2<bool>(true, true)), true);
    global2 = select(select(select(!(!vec4<bool>(true, true, true, var_0.b.x)), vec4<bool>(false, func_2().c, global3.x, true), !select(vec4<bool>(global3.x, false, global2.x, global3.x), vec4<bool>(global3.x, false, true, global3.x), vec4<bool>(false, false, var_0.c, false))), !select(!vec4<bool>(var_0.c, global2.x, true, false), vec4<bool>(var_0.e.x, var_0.e.x, true, true), select(vec4<bool>(arg_0.b.x, false, true, true), vec4<bool>(global3.x, global3.x, arg_0.c, global2.x), vec4<bool>(arg_0.c, var_0.b.x, true, global2.x))), !select(!vec4<bool>(true, false, true, var_0.b.x), vec4<bool>(var_0.b.x, false, true, arg_0.c), vec4<bool>(false, arg_0.c, var_0.b.x, global3.x))), select(!vec4<bool>(false, var_0.d < -590f, any(vec4<bool>(true, global2.x, true, var_0.e.x)), func_2().e.x), vec4<bool>(!(global2.x & arg_0.b.x), func_2().e.x, true, true), var_0.b.x && true), all(!(!global2.xyx)));
    return global0[_wgslsmith_index_u32(43620u, 15u)];
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec3<f32>) -> vec2<u32> {
    let var_0 = -_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-1i) * -u_input.e), u_input.e);
    let var_1 = _wgslsmith_f_op_f32(arg_1.d - arg_2.x);
    global3 = arg_0.ww;
    let var_2 = arg_1;
    global0 = array<Struct_1, 15>();
    return u_input.c;
}

fn func_1() -> Struct_1 {
    var var_0 = ~max(abs(vec4<u32>(~7896u, ~19934u, ~31851u, 65631u)), _wgslsmith_add_vec4_u32(u_input.d >> (u_input.d % vec4<u32>(32u)), abs(u_input.d) | _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 71512u, u_input.d.x, u_input.d.x), vec4<u32>(4294967295u, u_input.d.x, 16220u, u_input.c.x))));
    var_0 = ~u_input.d;
    global1 = 0i;
    let var_1 = ~reverseBits(_wgslsmith_mod_u32(0u, ~7329u));
    var var_2 = func_5(vec4<bool>(false, false, true, global3.x | true), func_4(func_2()), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-259f, _wgslsmith_f_op_f32(-771f - 457f))) - _wgslsmith_f_op_f32(-270f + -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(725f * -966f))) * 1685f), _wgslsmith_f_op_f32(step(-788f, _wgslsmith_f_op_f32(-1610f - -1252f)))));
    return func_4(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(max(select(countOneBits(11104u), _wgslsmith_dot_vec4_u32(u_input.d, u_input.d), func_2().e.x), ~(24391u ^ var_1)), ~(~firstTrailingBit(50285u))), 15u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(-1128f, u_input.d.zzw, ~(~(func_5(vec4<bool>(global2.x, var_0.e.x, false, global3.x), Struct_1(1i, vec2<bool>(true, global3.x), false, var_0.d, var_0.b), vec3<f32>(2376f, 844f, var_0.d)).x & _wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, u_input.d.x))));
}

