struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: bool;

var<private> global2: array<vec2<u32>, 2>;

var<private> global3: bool;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> f32 {
    var var_0 = abs(_wgslsmith_add_i32(reverseBits(u_input.b.x), u_input.b.x));
    global2 = array<vec2<u32>, 2>();
    var var_1 = !(!vec3<bool>(u_input.b.x > -u_input.b.x, true, any(vec2<bool>(false, false)) | (u_input.a < u_input.c)));
    let var_2 = ~_wgslsmith_mod_u32(3126u, _wgslsmith_dot_vec2_u32(max(_wgslsmith_div_vec2_u32(vec2<u32>(76832u, u_input.c), vec2<u32>(u_input.a, u_input.c)), ~vec2<u32>(u_input.a, u_input.d.x)), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.d.x), vec2<u32>(u_input.a, u_input.a)), _wgslsmith_mult_vec2_u32(global2[_wgslsmith_index_u32(u_input.d.x, 2u)], vec2<u32>(4294967295u, u_input.d.x)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, 1u), global2[_wgslsmith_index_u32(u_input.c, 2u)]))));
    let var_3 = Struct_2(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1804f)) - -292f), 788f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -664f) - _wgslsmith_f_op_f32(1400f * 360f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1417f)) + _wgslsmith_f_op_f32(step(-516f, -631f)))))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(trunc(-494f)), -200f, -1823f)), _wgslsmith_f_op_f32(step(-748f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-886f)))))), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1308f, 1744f, 1710f, 2253f), vec4<f32>(1936f, 745f, 587f, 692f), vec4<bool>(true, false, var_1.x, false))))))), -1123f), Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(floor(971f)), _wgslsmith_f_op_f32(f32(-1f) * -1867f), _wgslsmith_div_f32(112f, 142f), -333f), vec4<f32>(_wgslsmith_f_op_f32(-1000f + 1985f), -1640f, -367f, _wgslsmith_f_op_f32(f32(-1f) * -401f)), var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -106f) - -1071f) + -1000f)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -895f), _wgslsmith_f_op_f32(f32(-1f) * -267f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1360f - 1000f), _wgslsmith_f_op_f32(1359f - -1804f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-861f, -1443f)), -324f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-148f * _wgslsmith_f_op_f32(max(1000f, 783f)))))));
    return _wgslsmith_f_op_f32(-var_3.c.b);
}

fn func_2() -> Struct_2 {
    var var_0 = u_input.d;
    let var_1 = 17064u;
    global1 = (all(vec3<bool>(true, any(vec3<bool>(false, true, true)), any(vec2<bool>(true, true)))) || any(vec4<bool>(2332i != u_input.b.x, true, true, false))) & true;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(133f * -752f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(706f, -1070f)), _wgslsmith_f_op_f32(-676f * -918f))), _wgslsmith_f_op_f32(f32(-1f) * -556f), 1f)), 1460f);
    var var_3 = ~u_input.d;
    return Struct_2(var_2.b, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-462f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-544f))), var_2.b), -390f), Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1267f, var_2.a.x, -347f, -1824f))), -230f), Struct_1(var_2.a, var_2.a.x), Struct_1(_wgslsmith_f_op_vec4_f32(-var_2.a), var_2.a.x));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    global0 = any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), false), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true))), !select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), false))));
    let var_0 = vec4<bool>(true, true, true, true);
    global0 = !(!var_0.x);
    let var_1 = u_input.d.zz;
    return func_2().d;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    global0 = false;
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.a * arg_1.a) - _wgslsmith_f_op_vec4_f32(-arg_1.a))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.d.a.x * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-772f, arg_0.e.a.x))))));
    let var_1 = func_2();
    var var_2 = arg_0.b;
    var var_3 = !select(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), false), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true & select(true, false, true), all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false))), false);
    return func_4(var_1);
}

fn func_1(arg_0: vec3<f32>) -> vec3<bool> {
    global3 = 1u == u_input.d.x;
    let var_0 = Struct_2(1312f, func_5(Struct_2(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(ceil(arg_0.x))), func_4(func_2()), func_4(func_2()), func_2().e, func_2().c), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 548f, -258f, 180f)), arg_0.x)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x))), 572f, _wgslsmith_f_op_f32(f32(-1f) * -936f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -1316f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x) * arg_0.x)), func_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), func_4(func_2()), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1271f, 554f, -1396f, arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -2255f)), func_2().e, Struct_1(vec4<f32>(-1364f, arg_0.x, arg_0.x, arg_0.x), arg_0.x))), func_2().b);
    global0 = ((i32(-1i) * -_wgslsmith_mult_i32(u_input.b.x, 2147483647i)) > ~_wgslsmith_mult_i32(-1i, 20042i ^ u_input.b.x)) & true;
    global0 = select(true || (all(vec2<bool>(true, false)) && true), true, true);
    var var_1 = select(vec2<bool>(select(false, true, any(vec4<bool>(false, false, true, false))), select(-1i, 2147483647i, all(vec4<bool>(true, true, true, false))) > ~u_input.b.x), vec2<bool>(true, !all(select(vec2<bool>(false, false), vec2<bool>(false, false), false))), vec2<bool>(true, true));
    return !select(select(select(select(vec3<bool>(true, true, var_1.x), vec3<bool>(false, false, false), false), vec3<bool>(false, var_1.x, var_1.x), false), !vec3<bool>(var_1.x, var_1.x, var_1.x), select(vec3<bool>(true, var_1.x, var_1.x), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), select(vec3<bool>(var_1.x, false, true), vec3<bool>(true, true, var_1.x), false))), vec3<bool>(var_1.x, true, var_1.x & select(true, var_1.x, var_1.x)), vec3<bool>(!var_1.x, false, firstLeadingBit(u_input.a) > 37379u));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = false;
    var var_0 = true;
    global1 = !select(any(func_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1056f, -452f, 422f), vec3<f32>(726f, 588f, -1000f), vec3<bool>(false, false, false))))), true, !any(vec3<bool>(true, false, true)));
    global3 = !(all(vec3<bool>(true, u_input.b.x != -2147483647i, true)) && true);
    global0 = -25542i == u_input.b.x;
    let var_1 = _wgslsmith_mult_vec3_u32(~min(_wgslsmith_mult_vec3_u32(u_input.d, vec3<u32>(u_input.d.x, 13725u, u_input.d.x)), u_input.d), select(select(firstLeadingBit(u_input.d), vec3<u32>(u_input.a, _wgslsmith_div_u32(u_input.d.x, 42688u), ~4294967295u), vec3<bool>(true, func_1(vec3<f32>(-1000f, -276f, 720f)).x, true)), vec3<u32>(1u, abs(abs(0u)), 0u), !vec3<bool>(all(vec2<bool>(false, false)), any(vec2<bool>(false, false)), false)));
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-37374i << (u_input.d.x % 32u))), min(4294967295u, 48984u), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -149f) - -362f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(932f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(442f - -262f) - 1f))), ~firstLeadingBit(var_1), var_1.x);
}

