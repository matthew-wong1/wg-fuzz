struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: vec3<bool>,
    e: bool,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 19>;

var<private> global2: vec2<u32> = vec2<u32>(30554u, 20325u);

var<private> global3: array<u32, 1> = array<u32, 1>(10665u);

var<private> global4: array<vec3<i32>, 17> = array<vec3<i32>, 17>(vec3<i32>(38950i, 1i, 2147483647i), vec3<i32>(2147483647i, -1i, 22846i), vec3<i32>(11650i, -19439i, 13713i), vec3<i32>(2147483647i, 18123i, -27994i), vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), vec3<i32>(-14489i, -20186i, 0i), vec3<i32>(-23160i, -12109i, i32(-2147483648)), vec3<i32>(-1i, i32(-2147483648), 3998i), vec3<i32>(1333i, i32(-2147483648), 27400i), vec3<i32>(3814i, -20346i, i32(-2147483648)), vec3<i32>(3646i, -1i, 0i), vec3<i32>(1i, 1i, -58337i), vec3<i32>(7348i, -4539i, 2147483647i), vec3<i32>(-63304i, 22485i, 1i), vec3<i32>(-9930i, 1i, -27221i), vec3<i32>(i32(-2147483648), 52757i, 0i), vec3<i32>(i32(-2147483648), 2147483647i, -62415i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(reverseBits(0i), 2147483647i, u_input.c, ~(0i & u_input.c)), ~(~vec4<i32>(u_input.c, -75235i, u_input.b, u_input.c) | firstLeadingBit(vec4<i32>(u_input.b, u_input.c, u_input.c, 2147483647i)))) & ~abs(select(~vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<i32>(1i, 18612i, -2147483647i, -1i) | vec4<i32>(-40299i, 48528i, u_input.b, u_input.b), true));
    global3 = array<u32, 1>();
    global2 = vec2<u32>(global3[_wgslsmith_index_u32(~arg_0, 1u)], 1u);
    let var_1 = Struct_3(Struct_1(arg_0, global3[_wgslsmith_index_u32(0u, 1u)], vec3<u32>(global3[_wgslsmith_index_u32(~(~6532u), 1u)], u_input.a.x, min(firstLeadingBit(global2.x), 4294967295u & arg_0))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1006f - -140f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(964f, 2887f)), -806f) + 549f)), Struct_1(global2.x, 0u, vec3<u32>(global2.x, 0u, 65109u)), vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, false), false)) != true, any(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))), false), true);
    let var_2 = abs(global2.x);
    return abs(u_input.a.x);
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_2 {
    return Struct_2(vec3<u32>(8633u & global3[_wgslsmith_index_u32(global2.x, 1u)], _wgslsmith_sub_u32(1u, ~u_input.a.x >> (abs(u_input.a.x) % 32u)), _wgslsmith_mod_u32(_wgslsmith_sub_u32(global2.x, _wgslsmith_mult_u32(0u, u_input.a.x)), firstLeadingBit(global2.x))), Struct_1(abs(func_3(_wgslsmith_dot_vec3_u32(vec3<u32>(46201u, u_input.a.x, global2.x), vec3<u32>(47335u, global2.x, 10726u)), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2.x, 1u), 19u)])), ~18823u, ~firstLeadingBit(vec3<u32>(7257u, 37256u, 1u))), u_input.c, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_mult_u32(min(global2.x, 4840u) & ~18072u, global2.x)), 1u)], 19u)], vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-803f - -913f) - _wgslsmith_f_op_f32(abs(962f))))), -2648f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(839f * -340f), -1415f))))));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_4) -> vec2<f32> {
    let var_0 = any(vec2<bool>(true, true));
    let var_1 = Struct_3(Struct_1(arg_0.b.b, _wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global2.x, global3[_wgslsmith_index_u32(u_input.a.x, 1u)], 4294967295u), vec4<u32>(42961u, 21848u, arg_0.b.c.x, 0u))), ~vec4<u32>(1u, global3[_wgslsmith_index_u32(1u, 1u)], 0u, 89312u)), abs(~arg_0.b.c)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-890f, arg_2.a.x)) + func_2(!var_0, arg_1 & 31763i).e.xz), arg_2.a)), Struct_1(arg_0.d.b, ~u_input.a.x, abs(arg_0.d.c)), select(vec3<bool>(var_0, all(!vec2<bool>(var_0, true)), true), select(select(vec3<bool>(false, true, var_0), !vec3<bool>(false, var_0, var_0), true), select(!vec3<bool>(var_0, false, var_0), select(vec3<bool>(true, true, true), vec3<bool>(var_0, false, false), true), select(vec3<bool>(false, true, var_0), vec3<bool>(var_0, true, false), vec3<bool>(var_0, var_0, var_0))), true), true), !any(select(select(vec2<bool>(false, true), vec2<bool>(var_0, var_0), true), vec2<bool>(true, true), !vec2<bool>(var_0, var_0))));
    var var_2 = select(u_input.a.x, ~firstLeadingBit(4294967295u), select((var_1.d.x | true) != !any(vec3<bool>(true, var_0, var_1.d.x)), var_1.e, var_1.e));
    var var_3 = func_2(all(vec4<bool>(all(select(var_1.d.yy, var_1.d.xy, true)), true, all(!var_1.d.zx), any(select(vec3<bool>(var_1.e, true, var_1.e), vec3<bool>(var_1.d.x, var_0, false), var_1.d.x)))), -20468i);
    let var_4 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.e.x, 1000f))));
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -644f), -1142f)))), vec2<f32>(1529f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(544f, _wgslsmith_f_op_f32(abs(-218f))))))), all(vec2<bool>(any(!vec4<bool>(true, false, true, var_1.d.x)), all(!var_1.d)))));
}

fn func_1() -> f32 {
    global0 = u_input.c;
    let var_0 = abs(abs(u_input.a.x ^ u_input.a.x));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(768f)) - _wgslsmith_f_op_f32(-761f * 593f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-830f * -417f) - -689f)))));
    var var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(func_4(func_2(true || any(vec2<bool>(false, true)), _wgslsmith_clamp_i32(~132i, firstLeadingBit(-22691i), _wgslsmith_mod_i32(1463i, u_input.b))), ~0i, Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-414f, 1130f))))));
    global2 = u_input.a;
    return -756f;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec3<i32>, 17>();
    let var_0 = vec2<bool>(~0u != _wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.a ^ vec2<u32>(global2.x, 52142u)), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], u_input.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(3089f, 540f)), _wgslsmith_f_op_f32(f32(-1f) * -871f)), _wgslsmith_f_op_f32(-1188f - _wgslsmith_f_op_f32(f32(-1f) * -327f)), true)) <= _wgslsmith_f_op_f32(func_1()));
    let var_1 = vec3<bool>(select(true, true, any(!vec3<bool>(false, true, var_0.x))), select(any(var_0), !((var_0.x | false) == false), !var_0.x), false);
    var var_2 = _wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_mult_u32(global2.x, ~1u), _wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(42297u, 1u)], 4294967295u, global3[_wgslsmith_index_u32(1u, 1u)], 0u), abs(vec4<u32>(1u, 4294967295u, global2.x, 56234u)))), u_input.a);
    var var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-455f, 274f), vec2<f32>(-1350f, -1035f)), vec2<f32>(1f, 1f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-190f, 616f), vec2<f32>(1995f, 462f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(min(vec3<u32>(1u, 41278u, 1u), ~vec3<u32>(0u, 27454u, global2.x)) & abs(vec3<u32>(global2.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 1u)], 1u)], 4294967295u)), ~vec3<u32>(global2.x ^ 4294967295u, global2.x, 0u)), abs(global3[_wgslsmith_index_u32(0u, 1u)]), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 21307i), ~max(~vec2<i32>(u_input.b, u_input.c), select(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, -7485i), vec2<bool>(var_0.x, false)))), _wgslsmith_f_op_f32(f32(-1f) * -1229f));
}

