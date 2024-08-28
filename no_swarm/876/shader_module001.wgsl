struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<i32>, 20> = array<vec3<i32>, 20>(vec3<i32>(-21107i, i32(-2147483648), 0i), vec3<i32>(45452i, 1674i, 2147483647i), vec3<i32>(1i, -20009i, -1i), vec3<i32>(-1i, 28853i, -49599i), vec3<i32>(1i, 2147483647i, 111956i), vec3<i32>(0i, -1i, 1i), vec3<i32>(42116i, 32142i, 37168i), vec3<i32>(-3698i, -4611i, 1i), vec3<i32>(34522i, i32(-2147483648), 66893i), vec3<i32>(2927i, -1282i, -17390i), vec3<i32>(51341i, 1i, 0i), vec3<i32>(-1i, 42829i, 2167i), vec3<i32>(i32(-2147483648), i32(-2147483648), 102666i), vec3<i32>(-3156i, -1860i, 54272i), vec3<i32>(-56522i, -18180i, -1i), vec3<i32>(14726i, -35349i, 1946i), vec3<i32>(-12649i, -58393i, 32821i), vec3<i32>(1i, 2147483647i, 2147483647i), vec3<i32>(0i, 2147483647i, -28362i), vec3<i32>(10554i, i32(-2147483648), 69701i));

var<private> global2: array<u32, 26> = array<u32, 26>(4294967295u, 1u, 1u, 0u, 1u, 1u, 71002u, 21948u, 40359u, 4294967295u, 0u, 0u, 1u, 17560u, 6312u, 54736u, 1u, 15957u, 61612u, 17584u, 0u, 673u, 14142u, 61169u, 1u, 4294967295u);

var<private> global3: array<vec2<f32>, 21>;

var<private> global4: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(vec2<bool>(false, true), Struct_2(Struct_1(vec3<i32>(31331i, 1i, 42963i), 45628u, 20387u, vec2<f32>(-260f, -273f)), 17508i), vec2<u32>(1u, 28007u)), Struct_3(vec2<bool>(true, true), Struct_2(Struct_1(vec3<i32>(49044i, i32(-2147483648), 42157i), 39653u, 54445u, vec2<f32>(-2061f, -383f)), -2000i), vec2<u32>(1u, 26285u)), Struct_3(vec2<bool>(false, true), Struct_2(Struct_1(vec3<i32>(-1i, 1i, i32(-2147483648)), 9238u, 16257u, vec2<f32>(-461f, -1624f)), -1i), vec2<u32>(9088u, 66436u)), Struct_3(vec2<bool>(false, true), Struct_2(Struct_1(vec3<i32>(2147483647i, 0i, 12171i), 48230u, 28722u, vec2<f32>(-2418f, 1000f)), 2147483647i), vec2<u32>(6530u, 1u)), Struct_3(vec2<bool>(true, false), Struct_2(Struct_1(vec3<i32>(1i, -1i, 1i), 1u, 4294967295u, vec2<f32>(-1242f, 2648f)), 1i), vec2<u32>(0u, 32142u)), Struct_3(vec2<bool>(false, true), Struct_2(Struct_1(vec3<i32>(1i, -5288i, 57480i), 1u, 15583u, vec2<f32>(1970f, -1850f)), 1i), vec2<u32>(0u, 48260u)), Struct_3(vec2<bool>(false, false), Struct_2(Struct_1(vec3<i32>(2194i, -14043i, -37488i), 84841u, 16082u, vec2<f32>(-1475f, 360f)), i32(-2147483648)), vec2<u32>(61546u, 45779u)), Struct_3(vec2<bool>(true, false), Struct_2(Struct_1(vec3<i32>(-18438i, 13379i, 2147483647i), 4294967295u, 12181u, vec2<f32>(-1272f, -1829f)), 9657i), vec2<u32>(17741u, 9989u)), Struct_3(vec2<bool>(false, true), Struct_2(Struct_1(vec3<i32>(0i, 0i, -5336i), 1686u, 1u, vec2<f32>(620f, -247f)), -7414i), vec2<u32>(4294967295u, 1u)), Struct_3(vec2<bool>(true, true), Struct_2(Struct_1(vec3<i32>(1i, i32(-2147483648), 5852i), 9162u, 4294967295u, vec2<f32>(1008f, -1088f)), -35637i), vec2<u32>(4294967295u, 1u)), Struct_3(vec2<bool>(false, false), Struct_2(Struct_1(vec3<i32>(0i, 2147483647i, -56702i), 17725u, 4294967295u, vec2<f32>(-277f, 207f)), -15510i), vec2<u32>(44758u, 4294967295u)), Struct_3(vec2<bool>(false, false), Struct_2(Struct_1(vec3<i32>(-8334i, -2933i, 0i), 31906u, 1u, vec2<f32>(1126f, 722f)), 23869i), vec2<u32>(4294967295u, 0u)), Struct_3(vec2<bool>(true, false), Struct_2(Struct_1(vec3<i32>(2147483647i, i32(-2147483648), -567i), 17767u, 10199u, vec2<f32>(-581f, 357f)), -23667i), vec2<u32>(4294967295u, 0u)), Struct_3(vec2<bool>(false, false), Struct_2(Struct_1(vec3<i32>(9110i, -15359i, -1i), 16737u, 1u, vec2<f32>(1000f, -260f)), -9948i), vec2<u32>(19069u, 1u)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec2<u32> {
    global4 = array<Struct_3, 14>();
    var var_0 = Struct_1(reverseBits(global1[_wgslsmith_index_u32(~(arg_0.b ^ (0u | arg_0.b)), 20u)]), 1898u, 4294967295u, arg_0.d);
    var var_1 = Struct_3(vec2<bool>(any(vec2<bool>(any(vec4<bool>(arg_1, true, false, true)), true)), arg_1), Struct_2(arg_0, var_0.a.x), ~reverseBits(vec2<u32>(global2[_wgslsmith_index_u32(u_input.b, 26u)], global2[_wgslsmith_index_u32(1u, 26u)] ^ var_0.b)));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.x + 110f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x))))));
    var_2 = _wgslsmith_f_op_f32(max(arg_0.d.x, 134f));
    return ~vec2<u32>(0u, 1u);
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: Struct_3) -> vec3<i32> {
    let var_0 = arg_1.b;
    global3 = array<vec2<f32>, 21>();
    return vec3<i32>(55627i ^ u_input.a.x, 0i, arg_1.b.a.a.x);
}

fn func_2() -> u32 {
    let var_0 = Struct_2(Struct_1(func_4(-(u_input.d | 64993i), Struct_3(vec2<bool>(true, true), Struct_2(Struct_1(vec3<i32>(u_input.a.x, -1722i, u_input.e), global2[_wgslsmith_index_u32(u_input.b, 26u)], 0u, vec2<f32>(470f, 1442f)), u_input.c.x), func_3(Struct_1(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(60966u, 26u)], 20u)], u_input.b, global2[_wgslsmith_index_u32(0u, 26u)], global3[_wgslsmith_index_u32(u_input.b, 21u)]), true)), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(19081u, 26u)], 26u)], 4294967295u, 69796u) << (~vec3<u32>(global2[_wgslsmith_index_u32(u_input.b, 26u)], global2[_wgslsmith_index_u32(u_input.b, 26u)], 15547u) % vec3<u32>(32u)), Struct_3(vec2<bool>(true, true), Struct_2(Struct_1(global1[_wgslsmith_index_u32(12578u, 20u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 26u)], 26u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(89955u, 26u)], 26u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(86162u, 26u)], 21u)]), 1i), ~vec2<u32>(u_input.b, u_input.b))), _wgslsmith_mod_u32(u_input.b, u_input.b ^ firstLeadingBit(global2[_wgslsmith_index_u32(4294967295u, 26u)])), 1u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(252f)), _wgslsmith_f_op_f32(sign(-979f))))), firstLeadingBit(_wgslsmith_add_i32(u_input.d, _wgslsmith_div_i32(abs(-2618i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 3239i, u_input.e, u_input.c.x), vec4<i32>(u_input.d, 2147483647i, u_input.e, 25463i))))));
    var var_1 = true;
    global1 = array<vec3<i32>, 20>();
    global3 = array<vec2<f32>, 21>();
    var var_2 = u_input.a ^ firstTrailingBit(max(vec4<i32>(1i, var_0.a.a.x, ~(-8037i), -2147483647i), -countOneBits(u_input.a)));
    return global2[_wgslsmith_index_u32(~0u, 26u)];
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    global2 = array<u32, 26>();
    var var_0 = arg_1.d.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.x * _wgslsmith_f_op_f32(-arg_0.d.x)));
    let var_2 = 34454u;
    let var_3 = Struct_1(abs(abs(vec3<i32>(-2147483647i, u_input.c.x, ~(-12640i)))), countOneBits(0u), 1u, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.d.x), 1f))))));
    return Struct_2(Struct_1(~vec3<i32>(arg_0.a.x, var_3.a.x, var_3.a.x) >> (~(~vec3<u32>(0u, var_2, 43515u)) % vec3<u32>(32u)), u_input.b, _wgslsmith_dot_vec2_u32(select(~vec2<u32>(global2[_wgslsmith_index_u32(265u, 26u)], 25155u), abs(vec2<u32>(4294967295u, var_3.b)), vec2<bool>(true, true)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 135858u), ~vec2<u32>(var_3.b, global2[_wgslsmith_index_u32(1u, 26u)]), vec2<u32>(4294967295u, 95630u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_0.d)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.d.x, arg_0.d.x) + vec2<f32>(-675f, arg_0.d.x))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.d.x, 247f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1979f, -976f))))), -reverseBits(arg_1.a.x));
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = func_5(Struct_1(reverseBits(-select(vec3<i32>(u_input.a.x, 30159i, -58027i), vec3<i32>(u_input.e, u_input.a.x, -7736i), vec3<bool>(true, true, false))), _wgslsmith_div_u32(arg_0, _wgslsmith_dot_vec4_u32(select(vec4<u32>(55137u, 4294967295u, arg_0, arg_0), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(40443u, 26u)], 26u)], u_input.b, 0u, arg_0), vec4<bool>(false, false, true, true)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, global2[_wgslsmith_index_u32(9081u, 26u)], 1u, arg_0), vec4<u32>(arg_0, 0u, global2[_wgslsmith_index_u32(6042u, 26u)], 0u)))), 1u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2218f, 2707f) * global3[_wgslsmith_index_u32(u_input.b, 21u)]))), Struct_1(global1[_wgslsmith_index_u32(u_input.b, 20u)], _wgslsmith_add_u32(u_input.b, func_2()), 1u, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-335f * 1000f), -1687f) + global3[_wgslsmith_index_u32(_wgslsmith_add_u32(25941u, _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(4294967295u, 26u)], global2[_wgslsmith_index_u32(0u, 26u)])), 21u)])));
    let var_1 = -4124i | _wgslsmith_clamp_i32(u_input.e, u_input.a.x, var_0.a.a.x);
    let var_2 = Struct_3(vec2<bool>(true, 5356i != (u_input.a.x | min(u_input.c.x, var_1))), Struct_2(Struct_1(vec3<i32>(u_input.c.x, -24426i, -4153i) | _wgslsmith_div_vec3_i32(vec3<i32>(var_0.a.a.x, var_1, 2147483647i), vec3<i32>(var_1, var_0.b, var_1)), ~17647u, abs(1u), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(898f, -1497f) - vec2<f32>(var_0.a.d.x, 143f)), _wgslsmith_f_op_vec2_f32(var_0.a.d + vec2<f32>(var_0.a.d.x, var_0.a.d.x)), vec2<bool>(true, true)))), _wgslsmith_mod_i32(u_input.d, func_5(Struct_1(vec3<i32>(-1i, -20065i, u_input.d), 1u, 40085u, var_0.a.d), var_0.a).b)), ~firstLeadingBit(~vec2<u32>(var_0.a.b, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 26u)], 26u)])));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.b.a.d.x + -821f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1170f)) * _wgslsmith_f_op_f32(max(var_0.a.d.x, var_0.a.d.x))))));
    var var_4 = Struct_3(!var_2.a, Struct_2(var_0.a, 0i), vec2<u32>(~(~(~var_0.a.b)), ~(~arg_0)));
    return Struct_1(var_2.b.a.a, (_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(var_2.b.a.b, 26u)], 1u) & 18902u) >> (global2[_wgslsmith_index_u32(var_0.a.c, 26u)] % 32u), _wgslsmith_mod_u32(~(~(~64314u)), 4294967295u), _wgslsmith_f_op_vec2_f32(floor(var_4.b.a.d)));
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_1) -> vec2<bool> {
    global4 = array<Struct_3, 14>();
    var var_0 = _wgslsmith_div_u32(_wgslsmith_add_u32(4294967295u, ~_wgslsmith_add_u32(min(arg_1.c, 0u), min(0u, arg_1.c))), _wgslsmith_mod_u32(u_input.b, global2[_wgslsmith_index_u32(~13753u, 26u)]));
    global1 = array<vec3<i32>, 20>();
    let var_1 = ~_wgslsmith_mod_u32(38600u, reverseBits(_wgslsmith_add_u32(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(5390u, arg_1.b, 4294967295u, arg_1.c), vec4<u32>(1u, 4294967295u, 47688u, global2[_wgslsmith_index_u32(arg_1.b, 26u)])))));
    let var_2 = false;
    return select(select(vec2<bool>(false, var_2), !(!(!vec2<bool>(var_2, true))), !vec2<bool>(var_2, select(false, true, true))), select(!(!select(vec2<bool>(var_2, false), vec2<bool>(true, false), true)), vec2<bool>(true, true), select(select(vec2<bool>(var_2, true), select(vec2<bool>(true, false), vec2<bool>(var_2, false), vec2<bool>(var_2, var_2)), false), vec2<bool>(u_input.e < u_input.c.x, true), true)), vec2<bool>(func_5(arg_1, arg_1).a.b <= arg_1.c, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x;
    let var_1 = vec4<bool>(select(!(-2437f > _wgslsmith_f_op_f32(round(-1289f))), (abs(global2[_wgslsmith_index_u32(70863u, 26u)]) & 1u) <= u_input.b, 839u < ~u_input.b), true, false, any(!func_6(global3[_wgslsmith_index_u32(~66871u, 21u)], func_1(1u))));
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -130f))) * -321f), func_1(global2[_wgslsmith_index_u32(func_3(func_1(~u_input.b), select(all(var_1.xy), false, all(var_1.yz))).x, 26u)]).d.x));
    global2 = array<u32, 26>();
    global0 = -690f;
    let var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(0u), abs(firstTrailingBit(2969u))), 21u)], global3[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(40209u, 11531u & u_input.b)), 21u)])));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, ~reverseBits(u_input.b), 1u));
}

