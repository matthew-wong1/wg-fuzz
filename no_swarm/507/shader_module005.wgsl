struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: i32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<Struct_5, 13> = array<Struct_5, 13>(Struct_5(Struct_4(vec2<u32>(29202u, 77162u), 1014f)), Struct_5(Struct_4(vec2<u32>(4294967295u, 4294967295u), 1120f)), Struct_5(Struct_4(vec2<u32>(4734u, 8502u), -414f)), Struct_5(Struct_4(vec2<u32>(3818u, 74128u), 966f)), Struct_5(Struct_4(vec2<u32>(0u, 57565u), 596f)), Struct_5(Struct_4(vec2<u32>(4294967295u, 52178u), 257f)), Struct_5(Struct_4(vec2<u32>(1u, 4294967295u), -1000f)), Struct_5(Struct_4(vec2<u32>(1u, 50969u), 1000f)), Struct_5(Struct_4(vec2<u32>(4294967295u, 0u), 208f)), Struct_5(Struct_4(vec2<u32>(0u, 1u), -283f)), Struct_5(Struct_4(vec2<u32>(5625u, 4294967295u), 943f)), Struct_5(Struct_4(vec2<u32>(25726u, 0u), 1952f)), Struct_5(Struct_4(vec2<u32>(1u, 32837u), 1829f)));

var<private> global2: array<i32, 16> = array<i32, 16>(-1i, 2147483647i, -34351i, -21894i, -30516i, 18164i, -31745i, -1i, -1i, -23728i, 1i, i32(-2147483648), 0i, -5609i, -8358i, 0i);

var<private> global3: array<vec2<f32>, 28> = array<vec2<f32>, 28>(vec2<f32>(1078f, 1000f), vec2<f32>(1226f, -417f), vec2<f32>(-130f, 468f), vec2<f32>(296f, 1672f), vec2<f32>(-1008f, 874f), vec2<f32>(801f, 139f), vec2<f32>(-770f, -1736f), vec2<f32>(-1224f, -551f), vec2<f32>(-1000f, -1021f), vec2<f32>(1278f, -393f), vec2<f32>(688f, 204f), vec2<f32>(618f, 564f), vec2<f32>(1558f, 244f), vec2<f32>(1008f, -506f), vec2<f32>(-1558f, 1245f), vec2<f32>(2240f, -884f), vec2<f32>(1000f, 989f), vec2<f32>(-806f, -750f), vec2<f32>(290f, -417f), vec2<f32>(-904f, 1000f), vec2<f32>(309f, -858f), vec2<f32>(619f, -328f), vec2<f32>(-916f, 1525f), vec2<f32>(371f, -226f), vec2<f32>(980f, -302f), vec2<f32>(952f, -191f), vec2<f32>(1206f, -644f), vec2<f32>(455f, 318f));

var<private> global4: array<vec4<i32>, 27> = array<vec4<i32>, 27>(vec4<i32>(5669i, i32(-2147483648), -1i, 1i), vec4<i32>(0i, 1i, 42900i, 24973i), vec4<i32>(0i, -1i, i32(-2147483648), 15084i), vec4<i32>(13440i, 1i, -7292i, -3831i), vec4<i32>(-19685i, -40236i, -23466i, i32(-2147483648)), vec4<i32>(74513i, 44198i, 6182i, 2147483647i), vec4<i32>(i32(-2147483648), -14090i, 34561i, 1i), vec4<i32>(-1i, 15408i, 1i, 1i), vec4<i32>(40806i, i32(-2147483648), 2147483647i, 2147483647i), vec4<i32>(-31631i, 0i, 2147483647i, -50760i), vec4<i32>(0i, 12200i, 26299i, 1i), vec4<i32>(-1i, i32(-2147483648), -15817i, 41844i), vec4<i32>(2147483647i, -1i, i32(-2147483648), 2147483647i), vec4<i32>(2147483647i, 1i, 2005i, 43957i), vec4<i32>(2147483647i, 26854i, -34672i, 2147483647i), vec4<i32>(2774i, 0i, 17133i, -54191i), vec4<i32>(2147483647i, 2147483647i, 2147483647i, 0i), vec4<i32>(18496i, 6539i, 0i, 1i), vec4<i32>(39895i, -20453i, 1i, 2147483647i), vec4<i32>(20267i, i32(-2147483648), 53318i, -1i), vec4<i32>(0i, 0i, -1i, 22953i), vec4<i32>(2147483647i, -30746i, -24691i, -1i), vec4<i32>(26422i, -19930i, 1i, 2147483647i), vec4<i32>(-1i, i32(-2147483648), -1i, 2147483647i), vec4<i32>(-1i, -6938i, 16963i, 2147483647i), vec4<i32>(i32(-2147483648), 912i, 21698i, i32(-2147483648)), vec4<i32>(-1i, -1i, -1i, -19085i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: bool, arg_1: Struct_4) -> vec2<bool> {
    return vec2<bool>(arg_0, true);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_add_i32(max(_wgslsmith_mod_i32(arg_1.b, _wgslsmith_dot_vec2_i32(u_input.c.zz, vec2<i32>(-2147483647i, u_input.c.x))), -abs(arg_1.b)), -global2[_wgslsmith_index_u32(5379u, 16u)]) >> (arg_0.b % 32u);
    global2 = array<i32, 16>();
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(-arg_1.c)), _wgslsmith_f_op_f32(-339f + arg_1.c), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(164f, 788f)))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-349f, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -656f)), global0.x)));
    let var_1 = _wgslsmith_add_vec2_i32(max(~_wgslsmith_add_vec2_i32(u_input.c.yy, ~vec2<i32>(arg_1.b, 3836i)), u_input.c.yz), reverseBits(vec2<i32>(global2[_wgslsmith_index_u32(abs(~arg_2.a), 16u)], global2[_wgslsmith_index_u32(arg_2.a << (59944u % 32u), 16u)] | u_input.c.x)));
    global4 = array<vec4<i32>, 27>();
    return _wgslsmith_f_op_f32(f32(-1f) * -740f);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: bool) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(Struct_1(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b.b, 1u, 1u, 1u), vec4<u32>(arg_1.b.a, 52611u, 13374u, 32561u))), Struct_2(arg_1.b, 48264i, global0.x, Struct_1(1u, 0u)), arg_1.b)))), -657f));
    let var_1 = 0u << (arg_0.b.a % 32u);
    var var_2 = vec3<u32>(max(~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_1, var_1, 63518u), 1u), ~(~1u)), 48789u, arg_1.b.b);
    var var_3 = Struct_2(arg_0.b, arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(634f, global0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, 1674f)))), Struct_1(arg_0.b.b, ~(1u << ((u_input.b.x & 4294967295u) % 32u))));
    return Struct_4(reverseBits(vec2<u32>(u_input.a | firstTrailingBit(var_1), arg_0.b.b)), _wgslsmith_f_op_f32(round(global0.x)));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_5, arg_2: vec3<i32>, arg_3: f32) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(arg_0.a.a.x & arg_0.a.a.x, u_input.b.x), arg_2.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_3(-73849i, Struct_1(arg_0.a.a.x, arg_1.a.a.x), false, -1i), Struct_3(u_input.c.x, Struct_1(0u, 1u), true, -19384i), false).b * _wgslsmith_f_op_f32(f32(-1f) * -1133f)) - arg_0.a.b))), Struct_1(select(~57516u, _wgslsmith_div_u32(~arg_1.a.a.x, 26519u), true), u_input.a));
    global4 = array<vec4<i32>, 27>();
    let var_1 = _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.a.a.x, _wgslsmith_dot_vec3_u32(abs(u_input.b), ~u_input.b)), _wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(15955u, 4294967295u)), arg_0.a.a)), _wgslsmith_mult_vec2_u32(~vec2<u32>(arg_1.a.a.x, 8751u), ~arg_1.a.a));
    var var_2 = ~1i;
    let var_3 = arg_1;
    return Struct_2(Struct_1(45547u, reverseBits(var_3.a.a.x & 25280u)), 0i, _wgslsmith_div_f32(func_2(Struct_3(~2147483647i, var_0.a, any(vec4<bool>(true, false, false, false)), 2147483647i << (u_input.b.x % 32u)), Struct_3(u_input.c.x, Struct_1(46401u, 0u), false, 17828i), any(vec2<bool>(false, false))).b, arg_0.a.b), Struct_1(abs(_wgslsmith_mod_u32(1u, ~99078u)), u_input.a));
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: Struct_2, arg_3: Struct_2) -> Struct_5 {
    global2 = array<i32, 16>();
    global0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-722f, -256f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(func_4(global1[_wgslsmith_index_u32(arg_3.a.b, 13u)], Struct_5(Struct_4(vec2<u32>(15766u, arg_3.a.b), -1000f)), vec3<i32>(arg_3.b, -15209i, 16315i), 1493f).c, _wgslsmith_div_f32(763f, arg_2.c)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.x - arg_3.c))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-612f, arg_3.c, global0.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_2.c, -654f))))), !vec3<bool>(true, !all(vec2<bool>(false, true)), true)));
    var var_0 = vec2<u32>(abs(_wgslsmith_mod_u32(arg_3.a.b, u_input.a)), ~arg_3.a.a);
    var var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global0.x, global0.x))) - _wgslsmith_f_op_f32(f32(-1f) * -497f)), -648f), _wgslsmith_f_op_f32(f32(-1f) * -622f));
    return global1[_wgslsmith_index_u32(20956u, 13u)];
}

fn func_6(arg_0: Struct_5, arg_1: vec3<bool>, arg_2: f32) -> Struct_4 {
    let var_0 = vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(select(29482u, 4294967295u, arg_1.x), arg_0.a.a.x), firstTrailingBit(~122464u), func_5(max(1u, 1u), select(0i, 0i, arg_1.x), func_4(Struct_5(arg_0.a), Struct_5(Struct_4(arg_0.a.a, arg_0.a.b)), u_input.c, -1000f), func_4(Struct_5(arg_0.a), arg_0, vec3<i32>(-3263i, global2[_wgslsmith_index_u32(6303u, 16u)], global2[_wgslsmith_index_u32(arg_0.a.a.x, 16u)]), -386f)).a.a.x, 10790u), ~_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(29526u, u_input.a, 51u, arg_0.a.a.x), vec4<u32>(arg_0.a.a.x, 5069u, 1201u, arg_0.a.a.x), vec4<u32>(16692u, 39512u, 4294967295u, u_input.b.x)), vec4<u32>(0u, 1u, arg_0.a.a.x, 1u), vec4<u32>(arg_0.a.a.x, u_input.a, u_input.a, arg_0.a.a.x))), arg_0.a.a.x);
    global4 = array<vec4<i32>, 27>();
    let var_1 = ~arg_0.a.a.x;
    global4 = array<vec4<i32>, 27>();
    var var_2 = _wgslsmith_dot_vec2_i32(-vec2<i32>(~global2[_wgslsmith_index_u32(31370u, 16u)], -global2[_wgslsmith_index_u32(0u, 16u)]) << (u_input.b.yz % vec2<u32>(32u)), u_input.c.yz);
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 16>();
    var var_0 = _wgslsmith_clamp_u32(17615u, 1u, ~(u_input.a & countOneBits(37618u)));
    var_0 = 90210u;
    var var_1 = 1230f;
    let var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, reverseBits(12063u)), reverseBits(select(u_input.b.xy, _wgslsmith_mod_vec2_u32(u_input.b.zz, vec2<u32>(1u, 1u)), func_1(true, Struct_4(u_input.b.xx, -1000f)))));
    let var_3 = func_6(func_5(var_2.x, ~(-2147483647i), func_4(Struct_5(func_2(Struct_3(u_input.c.x, Struct_1(4294967295u, 4294967295u), true, 1770i), Struct_3(global2[_wgslsmith_index_u32(u_input.b.x, 16u)], Struct_1(var_2.x, 4294967295u), true, -1i), true)), Struct_5(Struct_4(vec2<u32>(u_input.a, 0u), 1970f)), u_input.c, global0.x), Struct_2(Struct_1(~u_input.a, func_2(Struct_3(global2[_wgslsmith_index_u32(1u, 16u)], Struct_1(var_2.x, 1u), true, global2[_wgslsmith_index_u32(var_2.x, 16u)]), Struct_3(33893i, Struct_1(14455u, 17138u), false, 2147483647i), true).a.x), 35087i, -1754f, Struct_1(var_2.x, 0u))), !select(vec3<bool>(true, any(vec3<bool>(false, true, false)), select(true, true, false)), vec3<bool>(true, true, false), true), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_4 = Struct_2(Struct_1(firstTrailingBit(1u >> (var_2.x % 32u)), var_3.a.x), ~(-u_input.c.x), global0.x, Struct_1(_wgslsmith_add_u32(43549u, countOneBits(var_3.a.x)) & _wgslsmith_add_u32(_wgslsmith_clamp_u32(var_3.a.x, var_2.x, 8488u), func_6(global1[_wgslsmith_index_u32(24499u, 13u)], vec3<bool>(true, false, false), 1432f).a.x), 41726u));
    let var_5 = var_4.d;
    let x = u_input.a;
    s_output = StorageBuffer(1000f, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.c) + var_3.b), 1227f), _wgslsmith_sub_vec4_u32(~vec4<u32>(countOneBits(4294967295u), var_3.a.x, 1u, ~var_3.a.x), select(abs(~vec4<u32>(var_5.a, var_4.a.b, var_3.a.x, 0u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, var_4.a.b, 1u, var_3.a.x), vec4<u32>(0u, 4294967295u, var_3.a.x, var_2.x), vec4<u32>(var_5.b, 4294967295u, var_5.b, 4294967295u)), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false))))));
}

