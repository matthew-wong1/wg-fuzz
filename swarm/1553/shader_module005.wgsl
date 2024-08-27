struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_2,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: i32,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 31>;

var<private> global1: array<bool, 21>;

var<private> global2: array<Struct_4, 12> = array<Struct_4, 12>(Struct_4(vec4<i32>(41876i, -1i, -1i, 0i), vec3<i32>(38199i, -55838i, -24891i), vec3<f32>(-2371f, 691f, -1486f), i32(-2147483648)), Struct_4(vec4<i32>(0i, -8183i, 2147483647i, -36723i), vec3<i32>(-41612i, 7766i, 15465i), vec3<f32>(900f, -498f, 154f), 49533i), Struct_4(vec4<i32>(0i, -1i, 8501i, 2147483647i), vec3<i32>(7224i, 23511i, -1i), vec3<f32>(-190f, -344f, -1387f), -7390i), Struct_4(vec4<i32>(7440i, -1i, 0i, 2147483647i), vec3<i32>(1i, 7519i, -18579i), vec3<f32>(-1131f, -725f, 621f), -1i), Struct_4(vec4<i32>(2147483647i, -1i, 1i, i32(-2147483648)), vec3<i32>(-52047i, -1i, 0i), vec3<f32>(1602f, -1505f, 1217f), -28157i), Struct_4(vec4<i32>(54253i, 1i, i32(-2147483648), i32(-2147483648)), vec3<i32>(2147483647i, -1i, i32(-2147483648)), vec3<f32>(-1000f, 648f, 1000f), 10138i), Struct_4(vec4<i32>(45550i, 1i, -1i, -15383i), vec3<i32>(2147483647i, 547i, 1i), vec3<f32>(2551f, -667f, -623f), -1i), Struct_4(vec4<i32>(-1106i, 1649i, 19947i, i32(-2147483648)), vec3<i32>(0i, 1i, i32(-2147483648)), vec3<f32>(-1000f, 382f, -1119f), 32870i), Struct_4(vec4<i32>(37283i, -1i, 1i, 3054i), vec3<i32>(-38761i, 5804i, -7992i), vec3<f32>(127f, -415f, 1025f), 32046i), Struct_4(vec4<i32>(i32(-2147483648), 0i, -1i, 826i), vec3<i32>(2147483647i, 26820i, 15067i), vec3<f32>(-376f, 506f, 162f), 8041i), Struct_4(vec4<i32>(37726i, -7725i, 24039i, 17701i), vec3<i32>(-46867i, 47450i, -23319i), vec3<f32>(357f, -744f, -193f), -1i), Struct_4(vec4<i32>(0i, -21696i, -1i, 43817i), vec3<i32>(63405i, -34085i, 0i), vec3<f32>(-316f, -2591f, 1311f), -33981i));

var<private> global3: vec2<i32> = vec2<i32>(0i, 21242i);

var<private> global4: Struct_2;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: bool, arg_1: i32) -> i32 {
    let var_0 = Struct_2(global3.x);
    let var_1 = _wgslsmith_dot_vec4_i32(~(~(-vec4<i32>(global3.x, -2147483647i, -6056i, u_input.c))), abs(vec4<i32>(1i, global3.x, -45119i, -2147483647i)) ^ vec4<i32>(2147483647i, _wgslsmith_clamp_i32(var_0.a, 0i, global4.a), 1i, -1i)) | var_0.a;
    let var_2 = vec3<bool>((~(~0u) > ~_wgslsmith_div_u32(u_input.a, 4294967295u)) && (all(select(vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.a, 21u)], false), vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 21u)], arg_0, arg_0), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 21u)], arg_0, false))) & true), true, any(!vec3<bool>(arg_0, false, arg_0)) & false);
    global1 = array<bool, 21>();
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(264f, 709f, 823f, -559f) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-839f, -443f, -213f, -1760f), vec4<f32>(-1154f, -1178f, -306f, -1588f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1553f, 279f, 562f) * vec4<f32>(-1554f, -651f, -1151f, -1659f))))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1003f, -461f, -1339f, -860f)))) - vec4<f32>(697f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-595f)), _wgslsmith_f_op_f32(sign(1370f)), true)), _wgslsmith_f_op_f32(f32(-1f) * -1958f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1054f, 199f)))))));
    return ~arg_1;
}

fn func_2(arg_0: vec4<u32>) -> f32 {
    let var_0 = Struct_1(15755u);
    var var_1 = !vec3<bool>(false, true, _wgslsmith_mod_u32(1u, u_input.b.x) < 1u);
    let var_2 = vec2<i32>(-27020i, ~func_3(true, max(global3.x, -55888i)));
    var var_3 = all(vec2<bool>(global1[_wgslsmith_index_u32(var_0.a, 21u)], true)) == !(!any(vec4<bool>(global1[_wgslsmith_index_u32(15898u, 21u)], global1[_wgslsmith_index_u32(7721u, 21u)], true, true)));
    global3 = vec2<i32>(global4.a, global3.x);
    return -345f;
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(min(-1229f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1320f + 216f)) + _wgslsmith_f_op_f32(func_2(vec4<u32>(u_input.a, 47350u, 1u, 0u)))))), Struct_3(Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -1i, -75443i), -vec3<i32>(2147483647i, u_input.c, global4.a))), select(!(!vec2<bool>(false, global1[_wgslsmith_index_u32(29098u, 21u)])), vec2<bool>(!global1[_wgslsmith_index_u32(78694u, 21u)], select(false, true, global1[_wgslsmith_index_u32(30091u, 21u)])), vec2<bool>(true, true)), Struct_2(~u_input.c ^ _wgslsmith_clamp_i32(0i, u_input.c, global4.a)), Struct_2(u_input.c), global1[_wgslsmith_index_u32(~21468u, 21u)]), Struct_1(1u), Struct_3(Struct_2(~u_input.c & (1i & global4.a)), !(!select(vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 21u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 21u)], global1[_wgslsmith_index_u32(u_input.a, 21u)]), vec2<bool>(global1[_wgslsmith_index_u32(1u, 21u)], false))), Struct_2(global3.x), Struct_2(global4.a), u_input.c > ~(~global3.x)));
    var var_1 = var_0.b.c;
    var var_2 = vec2<u32>(1u, ~reverseBits(1u));
    let var_3 = Struct_5(var_0.a, var_0.b, var_0.c, Struct_3(Struct_2(var_1.a ^ -2147483647i), vec2<bool>(false, false), Struct_2(1i), var_0.d.a, !(!global1[_wgslsmith_index_u32(u_input.b.x, 21u)] & all(vec3<bool>(false, false, true)))));
    global0 = array<vec2<i32>, 31>();
    return var_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = -(~vec4<i32>(~var_0.a.a, 18967i, -9331i, 36834i << (u_input.a % 32u))) | (-vec4<i32>(-var_0.a.a, -5610i, func_1().d.a, firstLeadingBit(var_0.c.a)) << (vec4<u32>(~(~u_input.a), _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a, u_input.a), ~u_input.b.x), ~reverseBits(u_input.b.x), _wgslsmith_mod_u32(u_input.a, 42615u)) % vec4<u32>(32u)));
    var var_2 = ~(~vec3<u32>(~0u, u_input.b.x, 4294967295u));
    let var_3 = select(firstTrailingBit(vec3<i32>(global4.a ^ 1i, 97599i, u_input.c)), vec3<i32>(global4.a, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_0.d.a, -37755i, func_3(global1[_wgslsmith_index_u32(u_input.b.x, 21u)], global3.x)), -vec4<i32>(global4.a, global4.a, global4.a, 0i)), var_1.x), vec3<bool>(var_0.e, select(!any(vec3<bool>(var_0.b.x, false, global1[_wgslsmith_index_u32(var_2.x, 21u)])), !(!global1[_wgslsmith_index_u32(u_input.a, 21u)]), true), var_0.e));
    var_2 = ~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 93520u), var_2.yz) | u_input.b.x, 9650u, var_2.x);
    let var_4 = select(select(vec4<bool>(select(all(var_0.b), global1[_wgslsmith_index_u32(~1030u, 21u)], all(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 21u)], false))), !any(vec4<bool>(true, var_0.b.x, global1[_wgslsmith_index_u32(0u, 21u)], true)), any(vec2<bool>(var_0.e, var_0.b.x)), false), vec4<bool>(false, any(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true)), true), any(!vec2<bool>(var_0.e, true))), vec4<bool>(var_0.b.x, all(!select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 21u)], var_0.e, false, global1[_wgslsmith_index_u32(u_input.b.x, 21u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 21u)], var_0.b.x, false, false), vec4<bool>(var_0.b.x, global1[_wgslsmith_index_u32(var_2.x, 21u)], var_0.e, var_0.b.x))), false, true), !global1[_wgslsmith_index_u32(u_input.b.x, 21u)]);
    let var_5 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1639f, 680f, 929f) + vec3<f32>(1000f, 454f, -833f)))))));
    global3 = -var_3.zx ^ _wgslsmith_mult_vec2_i32(select(var_3.yx, -vec2<i32>(u_input.c, 1i) & ~vec2<i32>(0i, var_1.x), _wgslsmith_sub_i32(var_1.x, 2147483647i) == 1i), reverseBits(vec2<i32>(var_3.x, reverseBits(-2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, countOneBits(~0u), reverseBits(vec3<u32>(~(~37825u), ~max(0u, var_2.x), var_2.x)), 1i);
}

