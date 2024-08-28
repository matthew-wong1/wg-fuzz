struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: Struct_1,
    d: vec3<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_3) -> bool {
    let var_0 = all(!vec4<bool>(true, true, any(vec4<bool>(true, true, arg_0.c.a, false)), all(vec4<bool>(false, arg_0.c.b.x, arg_0.c.a, true)))) || (u_input.b.x == ~(-1i));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.b, 1398f)) - _wgslsmith_f_op_f32(f32(-1f) * -2934f));
    var var_2 = arg_0.b;
    var var_3 = !(!vec2<bool>(arg_0.c.b.x, arg_0.c.b.x));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1439f - _wgslsmith_f_op_f32(413f - 226f)) - arg_0.a))));
    return var_3.x;
}

fn func_2(arg_0: i32) -> vec3<bool> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(-126f - 2297f), -468f))), Struct_1(all(vec3<bool>(all(vec2<bool>(true, false)), true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), arg_0, Struct_1(select(!(-50184i < arg_0), true, func_3(Struct_3(1049f, 221f, Struct_1(false, vec3<bool>(false, false, true))))), select(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), false), vec3<bool>(true, true, true))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + var_0.a.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-710f, _wgslsmith_f_op_f32(f32(-1f) * -729f), var_1, var_1));
    var var_3 = vec2<bool>(all(select(vec2<bool>(false, var_0.d.a), var_0.d.b.yy, !vec2<bool>(false, var_0.d.a))), var_0.b.b.x);
    let var_4 = 0i;
    return vec3<bool>(!var_3.x, any(var_0.b.b.yz), !(!var_3.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_div_u32(~28995u, _wgslsmith_mult_u32(1u, ~13121u));
    var_0 = ~_wgslsmith_div_u32(69828u, 33254u);
    var var_1 = arg_1.c.a;
    let var_2 = _wgslsmith_mod_vec4_i32(min(_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.b.x, u_input.b.x, -38841i, -44458i), u_input.b), ~(~vec4<i32>(32740i, u_input.b.x, -23647i, u_input.b.x))) << (~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u), vec2<u32>(u_input.a.x, 1u)), max(u_input.a.x, u_input.a.x), 12573u, 0u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(~u_input.b.x & -u_input.b.x, 0i, u_input.b.x >> (7127u % 32u), _wgslsmith_dot_vec2_i32(u_input.b.xy, vec2<i32>(u_input.b.x, u_input.b.x)) >> (abs(u_input.a.x) % 32u)), min(_wgslsmith_clamp_vec4_i32(~vec4<i32>(2147483647i, -1i, u_input.b.x, 34136i), ~u_input.b, -u_input.b), abs(u_input.b & vec4<i32>(u_input.b.x, 0i, -11152i, -1i)))));
    let var_3 = ~vec3<u32>(1u, _wgslsmith_add_u32(countOneBits(min(68399u, u_input.a.x)), firstTrailingBit(u_input.a.x) >> ((741u ^ u_input.a.x) % 32u)), u_input.a.x);
    return arg_0;
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: vec3<f32>, arg_3: bool) -> f32 {
    var var_0 = Struct_5(func_4(Struct_1(all(vec4<bool>(arg_3, arg_3, arg_0.a.x, arg_3)), select(func_2(-17182i), vec3<bool>(arg_0.b.c.a, arg_0.a.x, arg_0.b.c.a), arg_0.b.c.b)), Struct_3(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(abs(arg_0.b.a)), arg_0.b.c)), arg_0, arg_0.b.c, firstLeadingBit(vec3<i32>(arg_1, _wgslsmith_clamp_i32(arg_1, 2147483647i, arg_1), -_wgslsmith_sub_i32(u_input.b.x, arg_1))), arg_0.b.c.b);
    var var_1 = ~u_input.a.x;
    var var_2 = vec3<u32>(39565u, u_input.a.x, 1u);
    var_2 = firstLeadingBit(reverseBits(vec3<u32>(0u, u_input.a.x & (26129u | var_2.x), ~min(u_input.a.x, u_input.a.x))));
    var_2 = vec3<u32>(select(13823u, var_2.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, u_input.b.x, u_input.b.x), abs(vec3<i32>(-52189i, 42863i, u_input.b.x))) != var_0.d.x), 4294967295u, var_2.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.b.b.a), arg_2.x)) + 1000f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_4(vec2<bool>(true, true), Struct_3(_wgslsmith_f_op_f32(abs(-735f)), 1073f, Struct_1(true, vec3<bool>(false, false, false)))), u_input.b.x, vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-209f * 1454f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -695f), _wgslsmith_f_op_f32(f32(-1f) * -636f))), _wgslsmith_f_op_f32(abs(950f))), select(false, false, false))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_4(vec2<bool>(u_input.a.x == 0u, func_2(u_input.b.x).x), Struct_3(1562f, 1f, func_4(Struct_1(true, vec3<bool>(false, true, false)), Struct_3(-258f, -972f, Struct_1(true, vec3<bool>(true, false, true)))))), firstTrailingBit(u_input.b.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-777f, -378f, _wgslsmith_f_op_f32(select(378f, 145f, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), true)), !all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), true)))), -1642f);
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(-var_1))));
    var_2 = _wgslsmith_f_op_f32(step(var_1, -839f));
    var var_3 = Struct_3(-404f, -188f, Struct_1(!(any(vec3<bool>(true, false, true)) & true), vec3<bool>(false, false, select(u_input.a.x < 2552u, true, func_4(Struct_1(false, vec3<bool>(true, false, true)), Struct_3(-1289f, var_1, Struct_1(false, vec3<bool>(true, false, false)))).b.x))));
    let var_4 = Struct_4(vec2<bool>(true, true), Struct_3(var_3.a, var_1, func_4(func_4(func_4(var_3.c, Struct_3(var_1, -1539f, var_3.c)), Struct_3(var_1, var_3.b, var_3.c)), Struct_3(_wgslsmith_f_op_f32(sign(var_1)), 662f, Struct_1(var_3.c.a, var_3.c.b)))));
    var var_5 = Struct_5(var_4.b.c, var_4, Struct_1(func_2(1i).x, var_4.b.c.b), vec3<i32>(u_input.b.x, 1i, i32(-1i) * -2147483647i), vec3<bool>(!(var_1 == 1000f), true, true));
    let var_6 = -7680i;
    var_3 = var_5.b.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(var_4.b.a, _wgslsmith_f_op_f32(-var_3.a)), _wgslsmith_f_op_f32(-var_3.a)))), u_input.b.x, 4294967295u, vec2<f32>(_wgslsmith_f_op_f32(-1187f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-960f * -922f)))), 1541f));
}

