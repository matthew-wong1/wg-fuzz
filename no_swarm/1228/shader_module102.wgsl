struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec4<bool>,
    d: Struct_1,
    e: bool,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_4,
    c: bool,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 28> = array<vec3<i32>, 28>(vec3<i32>(-51766i, 29120i, -46741i), vec3<i32>(1i, 0i, -1i), vec3<i32>(-6892i, -11162i, 1i), vec3<i32>(12748i, -4155i, -12978i), vec3<i32>(10576i, 1i, 2147483647i), vec3<i32>(5464i, -17522i, 49784i), vec3<i32>(1i, -24704i, -16068i), vec3<i32>(44151i, 0i, -27632i), vec3<i32>(i32(-2147483648), 2147483647i, 1i), vec3<i32>(-32169i, -44512i, i32(-2147483648)), vec3<i32>(71310i, -1i, 0i), vec3<i32>(17181i, -48662i, -1i), vec3<i32>(4259i, i32(-2147483648), 14821i), vec3<i32>(0i, -38095i, -46062i), vec3<i32>(0i, 2937i, -4654i), vec3<i32>(1024i, 41631i, -25513i), vec3<i32>(2147483647i, 1i, 776i), vec3<i32>(13001i, -12061i, -16832i), vec3<i32>(-12915i, 36248i, -1i), vec3<i32>(-23023i, 24032i, i32(-2147483648)), vec3<i32>(26401i, -30762i, -19340i), vec3<i32>(i32(-2147483648), 1i, 2147483647i), vec3<i32>(-45240i, 24745i, 1i), vec3<i32>(4596i, 2147483647i, 2147483647i), vec3<i32>(2147483647i, -16438i, 2147483647i), vec3<i32>(29583i, -1i, 2147483647i), vec3<i32>(-25332i, 19199i, i32(-2147483648)), vec3<i32>(24757i, 19647i, 0i));

var<private> global1: Struct_5;

var<private> global2: array<vec2<i32>, 23> = array<vec2<i32>, 23>(vec2<i32>(-18493i, 23826i), vec2<i32>(-1i, -6850i), vec2<i32>(-27780i, 2147483647i), vec2<i32>(1i, -28561i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-39196i, -1i), vec2<i32>(-1857i, i32(-2147483648)), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-27921i, -54295i), vec2<i32>(2147483647i, -30065i), vec2<i32>(17495i, 22662i), vec2<i32>(0i, -1i), vec2<i32>(18739i, 2147483647i), vec2<i32>(2147483647i, 5644i), vec2<i32>(2147483647i, -1i), vec2<i32>(0i, 2147483647i), vec2<i32>(1i, 8709i), vec2<i32>(8335i, 1i), vec2<i32>(1i, -8582i), vec2<i32>(-23273i, 22837i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(0i, 0i));

var<private> global3: array<Struct_5, 2>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: bool, arg_3: Struct_5) -> vec3<u32> {
    global1 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0.a.a.x, (0u << (1u % 32u)) << ((7876u | _wgslsmith_mod_u32(~global1.b.d.a.x, 1u)) % 32u)), 2u)];
    let var_0 = arg_3.b.d;
    global3 = array<Struct_5, 2>();
    let var_1 = _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(select(abs(global2[_wgslsmith_index_u32(19416u, 23u)]), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.c.x, 1u), 23u)], select(arg_3.b.c.xx, arg_3.b.c.xz, vec2<bool>(true, true))), -global1.b.b.a), global1.a.wz);
    var var_2 = vec2<u32>(4294967295u >> (global1.b.a.a.a.x % 32u), ~(~(~countOneBits(var_0.a.x))));
    return vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(21928u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(79705u, arg_0.a.a.x, var_0.a.x, arg_0.a.a.x), vec4<u32>(var_0.a.x, global1.b.d.a.x, arg_3.b.d.a.x, 4294967295u)), 1u), arg_3.b.a.a.a.x), vec3<u32>(var_2.x, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.a.x, var_2.x), vec2<u32>(0u, 59672u)), ~vec2<u32>(11391u, var_0.a.x)), arg_0.a.a.x)), 1u, ~_wgslsmith_dot_vec2_u32(abs(abs(vec2<u32>(4294967295u, 23594u))), var_0.a.yy));
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = 209f;
    global3 = array<Struct_5, 2>();
    var var_1 = _wgslsmith_sub_vec3_u32(func_3(Struct_3(Struct_1(global1.b.a.a.a)), vec2<f32>(var_0, -1137f), !arg_0.x, global3[_wgslsmith_index_u32(~u_input.c.x, 2u)]), ~global1.b.a.a.a);
    var var_2 = _wgslsmith_dot_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(2147483647i, global1.d.a.x), -1i, -global1.b.b.a.x), ~vec3<i32>(-1i, global1.e.a.x, 1i)), u_input.a);
    let var_3 = ~(-max(vec3<i32>(-u_input.a.x, 17512i, u_input.a.x & global1.a.x), vec3<i32>(select(2147483647i, u_input.a.x, arg_0.x), u_input.a.x, _wgslsmith_clamp_i32(0i, u_input.a.x, u_input.a.x))));
    return global1.b.a.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_5, arg_2: Struct_3, arg_3: Struct_4) -> Struct_4 {
    let var_0 = false;
    let var_1 = firstLeadingBit(((_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b.a.a.a.x, arg_0.a.x, 0u), vec3<u32>(1344u, 15080u, 1u)) << (~arg_3.a.a.a.x % 32u)) << (arg_3.d.a.x % 32u)) ^ (82745u | arg_1.b.a.a.a.x));
    var var_2 = arg_1.b.c.x;
    global1 = global3[_wgslsmith_index_u32(~(arg_1.b.d.a.x & _wgslsmith_mod_u32(1u, global1.b.a.a.a.x & 1u)), 2u)];
    let var_3 = arg_1.b.a;
    return arg_1.b;
}

fn func_5(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: f32) -> Struct_4 {
    let var_0 = select(max(~(-vec2<i32>(18064i, global1.b.b.a.x)), -vec2<i32>(1i, -51328i >> (arg_2.a.a.a.x % 32u))), abs(u_input.a.xy), vec2<bool>(false, false));
    global2 = array<vec2<i32>, 23>();
    let var_1 = countOneBits(vec2<i32>(-64383i, _wgslsmith_div_i32(-2147483647i, global1.d.a.x) << (u_input.c.x % 32u)) << (min(arg_1, countOneBits(arg_1)) % vec2<u32>(32u)));
    global1 = Struct_5(vec4<i32>(global1.d.a.x, -1i, global1.b.b.a.x ^ var_0.x, 5070i), Struct_4(func_4(global1.b.a.a, Struct_5(countOneBits(vec4<i32>(var_0.x, var_1.x, u_input.a.x, u_input.a.x)), arg_2, global1.c, global1.d, Struct_2(vec2<i32>(arg_2.b.a.x, global1.d.a.x))), func_4(arg_2.a.a, global3[_wgslsmith_index_u32(~38174u, 2u)], global1.b.a, Struct_4(arg_2.a, global1.b.b, vec4<bool>(false, arg_2.c.x, false, global1.c), Struct_1(arg_2.a.a.a), arg_2.e)).a, Struct_4(global1.b.a, global1.d, vec4<bool>(true, global1.b.e, global1.b.c.x, false), global1.b.a.a, func_4(Struct_1(arg_2.d.a), Struct_5(global1.a, arg_2, true, global1.b.b, arg_2.b), global1.b.a, arg_2).e)).a, arg_2.b, vec4<bool>(all(global1.b.c.zx), func_4(global1.b.d, Struct_5(global1.a, global1.b, arg_2.e, arg_2.b, Struct_2(var_1)), global1.b.a, global1.b).c.x, !(!global1.c), false), Struct_1(vec3<u32>(~9757u, 0u, countOneBits(0u))), false), any(!vec4<bool>(global1.c, !arg_2.c.x, true, !global1.b.e)), func_4(arg_2.d, global3[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(arg_0, global1.b.a.a.a.x)), 2u)], Struct_3(global1.b.a.a), arg_2).b, Struct_2(~firstLeadingBit(vec2<i32>(global1.b.b.a.x, 17742i))));
    var var_2 = vec4<i32>(u_input.a.x, -_wgslsmith_clamp_i32(var_1.x, u_input.a.x, -1i), 69637i, global1.b.b.a.x);
    return Struct_4(func_4(arg_2.d, Struct_5(_wgslsmith_div_vec4_i32(-vec4<i32>(arg_2.b.a.x, var_2.x, 0i, -37367i), vec4<i32>(-2147483647i, -1i, var_0.x, var_2.x)), arg_2, !arg_2.e, Struct_2(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, 1i), vec2<i32>(arg_2.b.a.x, var_1.x))), Struct_2(var_2.yz)), global1.b.a, Struct_4(Struct_3(func_2(arg_2.c.zx)), func_4(func_4(arg_2.d, global3[_wgslsmith_index_u32(0u, 2u)], Struct_3(Struct_1(global1.b.d.a)), Struct_4(Struct_3(arg_2.a.a), global1.b.b, global1.b.c, Struct_1(vec3<u32>(6296u, 71026u, u_input.b)), global1.b.e)).a.a, global3[_wgslsmith_index_u32(~23898u, 2u)], Struct_3(global1.b.a.a), func_4(global1.b.d, global3[_wgslsmith_index_u32(arg_1.x, 2u)], Struct_3(Struct_1(vec3<u32>(4294967295u, 30936u, global1.b.a.a.a.x))), global1.b)).b, !select(global1.b.c, global1.b.c, vec4<bool>(arg_2.e, true, arg_2.e, false)), func_2(vec2<bool>(arg_2.c.x, false)), true)).a, Struct_2(-firstLeadingBit(~u_input.a.xz)), vec4<bool>(arg_2.e, all(!arg_2.c.yzx), global1.c, true), Struct_1(~(~_wgslsmith_add_vec3_u32(vec3<u32>(5669u, arg_2.d.a.x, arg_1.x), arg_2.a.a.a))), true);
}

fn func_6(arg_0: Struct_4, arg_1: u32, arg_2: bool) -> f32 {
    var var_0 = !arg_0.c;
    let var_1 = vec2<f32>(-579f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-397f + -857f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1156f, -665f)) + -273f), 149f, func_5(abs(0u), vec2<u32>(global1.b.a.a.a.x, 1u), Struct_4(arg_0.a, Struct_2(global2[_wgslsmith_index_u32(36451u, 23u)]), global1.b.c, Struct_1(global1.b.d.a), arg_0.e), _wgslsmith_div_f32(129f, -401f)).e))));
    let var_2 = global1.b.a.a;
    var var_3 = all(vec2<bool>(!arg_2 && arg_2, false));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(2544f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1142f)))) + 627f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -870f));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(func_6(func_5(1u, u_input.c, func_4(func_2(global1.b.c.zz), Struct_5(vec4<i32>(-40606i, global1.b.b.a.x, 1i, global1.b.b.a.x), global1.b, false, Struct_2(u_input.a.xy), Struct_2(global1.a.zx)), global1.b.a, Struct_4(global1.b.a, Struct_2(global1.d.a), select(global1.b.c, vec4<bool>(true, true, global1.b.c.x, global1.b.e), false), func_2(vec2<bool>(true, global1.b.c.x)), true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1500f))))), _wgslsmith_mult_u32(_wgslsmith_sub_u32(global1.b.a.a.a.x, global1.b.a.a.a.x), ~func_3(func_4(Struct_1(vec3<u32>(global1.b.d.a.x, u_input.b, 31486u)), Struct_5(global1.a, global1.b, global1.b.e, Struct_2(vec2<i32>(global1.e.a.x, u_input.a.x)), Struct_2(u_input.a.xz)), Struct_3(global1.b.a.a), global1.b).a, _wgslsmith_f_op_vec2_f32(vec2<f32>(405f, 1635f) * vec2<f32>(-879f, 1426f)), global1.b.c.x, Struct_5(global1.a, global1.b, global1.b.c.x, global1.e, global1.b.b)).x), global1.c));
    let var_1 = Struct_2(vec2<i32>(-2147483647i, -4779i));
    var var_2 = func_4(global1.b.a.a, global3[_wgslsmith_index_u32(func_4(Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 0u, global1.b.a.a.a.x) & vec3<u32>(55120u, 31391u, 14264u), vec3<u32>(28434u, u_input.c.x, 20638u) << (global1.b.a.a.a % vec3<u32>(32u)))), Struct_5(vec4<i32>(1i, -1i, 1i, abs(26515i)), Struct_4(func_4(global1.b.a.a, global3[_wgslsmith_index_u32(u_input.c.x, 2u)], Struct_3(Struct_1(global1.b.a.a.a)), global1.b).a, func_4(Struct_1(vec3<u32>(u_input.c.x, 1u, 9221u)), Struct_5(global1.a, global1.b, global1.b.c.x, var_1, global1.d), Struct_3(global1.b.a.a), global1.b).b, func_4(global1.b.a.a, Struct_5(vec4<i32>(global1.b.b.a.x, var_1.a.x, 1i, -36381i), global1.b, global1.c, Struct_2(vec2<i32>(-48218i, global1.b.b.a.x)), global1.d), global1.b.a, Struct_4(Struct_3(Struct_1(global1.b.a.a.a)), Struct_2(global2[_wgslsmith_index_u32(6547u, 23u)]), global1.b.c, Struct_1(vec3<u32>(u_input.b, 4294967295u, u_input.b)), global1.b.e)).c, func_5(50753u, u_input.c, global1.b, -1961f).a.a, all(global1.b.c.xx)), true, Struct_2(_wgslsmith_mult_vec2_i32(vec2<i32>(var_1.a.x, var_1.a.x), global1.b.b.a)), global1.d), global1.b.a, Struct_4(global1.b.a, func_5(global1.b.d.a.x | u_input.c.x, ~vec2<u32>(64587u, global1.b.d.a.x), Struct_4(Struct_3(Struct_1(global1.b.a.a.a)), Struct_2(global2[_wgslsmith_index_u32(global1.b.d.a.x, 23u)]), vec4<bool>(global1.b.c.x, global1.b.e, true, global1.c), global1.b.d, global1.b.e), _wgslsmith_f_op_f32(1773f - -762f)).b, vec4<bool>(true, false || global1.c, select(false, global1.c, global1.c), false), func_4(global1.b.d, Struct_5(global1.a, global1.b, true, Struct_2(global2[_wgslsmith_index_u32(u_input.c.x, 23u)]), global1.d), Struct_3(global1.b.a.a), Struct_4(global1.b.a, Struct_2(global1.a.xx), global1.b.c, Struct_1(vec3<u32>(1u, global1.b.a.a.a.x, global1.b.d.a.x)), global1.b.c.x)).a.a, any(global1.b.c.zwy))).d.a.x, 2u)], global1.b.a, Struct_4(func_5(global1.b.a.a.a.x, ~vec2<u32>(9773u, u_input.c.x), func_5(global1.b.d.a.x, abs(vec2<u32>(41659u, u_input.b)), Struct_4(global1.b.a, var_1, global1.b.c, global1.b.d, false), _wgslsmith_f_op_f32(step(-150f, 264f))), _wgslsmith_div_f32(-1067f, -1571f)).a, Struct_2(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.x, -1i, var_1.a.x, var_1.a.x), global1.a), 315i ^ u_input.a.x)), select(!(!vec4<bool>(false, global1.c, true, global1.b.c.x)), vec4<bool>(global1.c, true, any(vec3<bool>(true, global1.b.e, true)), global1.c), !all(global1.b.c.yw)), func_2(vec2<bool>(global1.c, !global1.b.e)), true)).b;
    var var_3 = func_5(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, global1.b.d.a.x, global1.b.d.a.x) >> (vec3<u32>(25271u, u_input.b, 32727u) % vec3<u32>(32u)), func_3(global1.b.a, vec2<f32>(-1144f, -147f), false, Struct_5(global1.a, global1.b, false, Struct_2(global2[_wgslsmith_index_u32(global1.b.a.a.a.x, 23u)]), Struct_2(vec2<i32>(var_2.a.x, -11025i))))) | ~firstLeadingBit(global1.b.d.a), _wgslsmith_div_vec3_u32(abs(global1.b.a.a.a >> (global1.b.d.a % vec3<u32>(32u))), vec3<u32>(u_input.b, 1u, 132203u))), ~vec2<u32>(0u, global1.b.d.a.x), func_5(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(96678u, 91271u), _wgslsmith_mult_u32(1u, 5144u)), global1.b.d.a.zx, global1.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-165f, _wgslsmith_f_op_f32(128f + -380f)) - _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(floor(-762f)))))), 1f).b;
    var var_4 = 1u;
    return Struct_1(select(~(~vec3<u32>(global1.b.a.a.a.x, 4294967295u, 0u)), _wgslsmith_sub_vec3_u32(~max(global1.b.a.a.a, vec3<u32>(1u, 4294967295u, 1u)), ~min(global1.b.a.a.a, global1.b.d.a)), func_4(func_2(select(global1.b.c.xw, global1.b.c.wz, true)), global3[_wgslsmith_index_u32(48139u, 2u)], global1.b.a, Struct_4(func_5(0u, global1.b.a.a.a.xy, Struct_4(global1.b.a, global1.e, global1.b.c, Struct_1(vec3<u32>(global1.b.d.a.x, 4294967295u, u_input.c.x)), true), 594f).a, func_5(1u, vec2<u32>(global1.b.d.a.x, u_input.b), Struct_4(Struct_3(Struct_1(vec3<u32>(global1.b.d.a.x, global1.b.a.a.a.x, global1.b.d.a.x))), var_1, vec4<bool>(global1.c, global1.c, global1.c, true), Struct_1(vec3<u32>(47096u, 11559u, u_input.b)), global1.b.c.x), -1000f).b, vec4<bool>(global1.b.e, false, global1.c, true), global1.b.d, global1.b.e & global1.b.e)).c.zxz));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 28>();
    let var_0 = func_1();
    var var_1 = !any(global1.b.c.xzw);
    let var_2 = any(vec3<bool>(true, u_input.b >= ~max(u_input.b, 0u), _wgslsmith_f_op_f32(2608f - -721f) >= _wgslsmith_f_op_f32(func_6(func_4(Struct_1(vec3<u32>(26062u, 0u, 85871u)), global3[_wgslsmith_index_u32(global1.b.d.a.x, 2u)], global1.b.a, global1.b), global1.b.d.a.x, true))));
    let var_3 = !select(func_5(_wgslsmith_mult_u32(112356u >> (var_0.a.x % 32u), global1.b.d.a.x), global1.b.a.a.a.zz, Struct_4(func_5(0u, var_0.a.xz, Struct_4(Struct_3(var_0), Struct_2(u_input.a.xy), global1.b.c, Struct_1(global1.b.a.a.a), true), -2175f).a, Struct_2(global2[_wgslsmith_index_u32(15778u, 23u)]), !global1.b.c, global1.b.d, global1.c | global1.b.e), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2620f, -639f))).c.xx, global1.b.c.yy, var_2);
    let var_4 = func_5(_wgslsmith_add_u32(0u, 97137u), vec2<u32>(~u_input.c.x & ~var_0.a.x, ~0u) << (vec2<u32>(~53138u, 1u) % vec2<u32>(32u)), Struct_4(global1.b.a, global1.e, global1.b.c, Struct_1(global1.b.d.a), u_input.a.x <= u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-925f * -629f)))))).c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-250f, -1800f, true)))), _wgslsmith_f_op_f32(f32(-1f) * -163f))), func_4(Struct_1(_wgslsmith_add_vec3_u32(var_0.a, vec3<u32>(u_input.c.x, var_0.a.x, 4294967295u))), global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.c.x, 1u)), ~u_input.c), 2u)], func_4(Struct_1(var_0.a), Struct_5(global1.a, global1.b, true, global1.b.b, global1.b.b), Struct_3(Struct_1(vec3<u32>(1u, u_input.c.x, 14925u))), func_4(func_2(vec2<bool>(false, var_2)), Struct_5(global1.a, global1.b, var_2, global1.b.b, Struct_2(vec2<i32>(u_input.a.x, -1i))), func_5(1u, vec2<u32>(u_input.c.x, u_input.c.x), global1.b, 649f).a, Struct_4(Struct_3(global1.b.d), global1.b.b, var_4, Struct_1(var_0.a), false))).a, func_5(45552u, vec2<u32>(abs(u_input.c.x), global1.b.d.a.x), func_4(global1.b.a.a, Struct_5(vec4<i32>(global1.d.a.x, 0i, 2147483647i, 1i), global1.b, true, global1.b.b, global1.e), func_5(4294967295u, u_input.c, global1.b, -1543f).a, func_4(global1.b.a.a, global3[_wgslsmith_index_u32(global1.b.d.a.x, 2u)], global1.b.a, global1.b)), _wgslsmith_f_op_f32(f32(-1f) * -577f))).b.a.x, max(_wgslsmith_mod_vec4_i32(vec4<i32>(global1.e.a.x & global1.d.a.x, u_input.a.x, -1i, min(-2451i, 2147483647i)), vec4<i32>(_wgslsmith_mod_i32(global1.d.a.x, -385i), 0i, -2147483647i, 23501i)), vec4<i32>(0i, u_input.a.x, _wgslsmith_div_i32(~global1.a.x, 1i), 1i)), ~u_input.c.x);
}

