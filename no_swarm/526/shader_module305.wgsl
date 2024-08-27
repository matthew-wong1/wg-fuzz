struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14>;

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec2<f32>(1182f, 752f), vec4<u32>(0u, 35500u, 33399u, 4294967295u)), Struct_1(vec2<f32>(278f, -1192f), vec4<u32>(4294967295u, 4294967295u, 3110u, 4294967295u)), Struct_1(vec2<f32>(-690f, 544f), vec4<u32>(62495u, 82930u, 0u, 1u)), Struct_1(vec2<f32>(1613f, 914f), vec4<u32>(14195u, 802u, 0u, 4294967295u)), Struct_1(vec2<f32>(1060f, 568f), vec4<u32>(0u, 38841u, 56317u, 1u)), Struct_1(vec2<f32>(-556f, 983f), vec4<u32>(4294967295u, 1u, 23879u, 4281u)), Struct_1(vec2<f32>(-2478f, -1863f), vec4<u32>(70510u, 29706u, 707u, 4294967295u)), Struct_1(vec2<f32>(463f, 1282f), vec4<u32>(4294967295u, 4294967295u, 1u, 625u)), Struct_1(vec2<f32>(976f, -1664f), vec4<u32>(607u, 101426u, 4294967295u, 22u)), Struct_1(vec2<f32>(330f, -522f), vec4<u32>(4294967295u, 4294967295u, 54475u, 52877u)), Struct_1(vec2<f32>(2924f, 461f), vec4<u32>(0u, 0u, 65814u, 40811u)), Struct_1(vec2<f32>(267f, 502f), vec4<u32>(74401u, 4294967295u, 0u, 19441u)), Struct_1(vec2<f32>(1422f, -1046f), vec4<u32>(116231u, 21328u, 4294967295u, 39388u)), Struct_1(vec2<f32>(159f, 231f), vec4<u32>(4294967295u, 1u, 7778u, 4294967295u)), Struct_1(vec2<f32>(478f, -2203f), vec4<u32>(9055u, 4294967295u, 116356u, 1u)), Struct_1(vec2<f32>(510f, 935f), vec4<u32>(20125u, 0u, 41759u, 120698u)), Struct_1(vec2<f32>(-1000f, 1000f), vec4<u32>(2974u, 0u, 8701u, 31336u)), Struct_1(vec2<f32>(-773f, 1239f), vec4<u32>(0u, 13290u, 4294967295u, 0u)), Struct_1(vec2<f32>(1000f, -1000f), vec4<u32>(69480u, 46u, 4294967295u, 21201u)), Struct_1(vec2<f32>(945f, 1706f), vec4<u32>(0u, 34660u, 36487u, 56172u)), Struct_1(vec2<f32>(906f, -1000f), vec4<u32>(4294967295u, 4809u, 21778u, 0u)), Struct_1(vec2<f32>(-855f, 109f), vec4<u32>(3196u, 14460u, 4294967295u, 0u)), Struct_1(vec2<f32>(421f, 435f), vec4<u32>(20813u, 4294967295u, 0u, 6898u)), Struct_1(vec2<f32>(-893f, 100f), vec4<u32>(14555u, 0u, 88823u, 12937u)), Struct_1(vec2<f32>(-1584f, 1309f), vec4<u32>(0u, 0u, 65509u, 22034u)), Struct_1(vec2<f32>(1000f, -905f), vec4<u32>(0u, 4294967295u, 0u, 78433u)));

var<private> global2: array<bool, 9>;

var<private> global3: Struct_2 = Struct_2(Struct_1(vec2<f32>(-139f, 653f), vec4<u32>(50944u, 4294967295u, 38239u, 0u)), Struct_1(vec2<f32>(-442f, -712f), vec4<u32>(56772u, 93617u, 32871u, 0u)), Struct_1(vec2<f32>(-1000f, -371f), vec4<u32>(3626u, 1006u, 3008u, 19605u)), -16674i, false);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> vec3<u32> {
    global1 = array<Struct_1, 26>();
    let var_0 = global3.a;
    let var_1 = Struct_2(global3.a, Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_2.a))), _wgslsmith_mod_vec4_u32(~vec4<u32>(0u, var_0.b.x, 37907u, var_0.b.x), ~arg_2.b >> (~arg_2.b % vec4<u32>(32u)))), global1[_wgslsmith_index_u32((arg_2.b.x ^ firstLeadingBit(~1u)) << (firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_sub_u32(1u, 1u), _wgslsmith_mult_u32(arg_1, 13643u))) % 32u), 26u)], global3.d, !global3.e);
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.b.a.x), -755f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.a.x, -687f)) + -606f)));
    var_2 = _wgslsmith_f_op_f32(arg_3 + -247f);
    return ~vec3<u32>(var_1.c.b.x, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(var_1.c.b.x, 35874u, 1u, 47648u)), firstTrailingBit(vec4<u32>(4294967295u, u_input.d.x, var_0.b.x, arg_2.b.x) & vec4<u32>(global3.c.b.x, 17231u, 4294967295u, 38783u))), ~(u_input.c.x & var_0.b.x) >> (select(0u, ~global3.c.b.x, all(vec2<bool>(false, true))) % 32u));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: bool) -> u32 {
    var var_0 = Struct_1(global3.a.a, countOneBits(~(vec4<u32>(1u, 1u, 0u, arg_0.x) << (vec4<u32>(global3.c.b.x, 1u, u_input.a.x, arg_0.x) % vec4<u32>(32u))) << (vec4<u32>(global3.c.b.x, _wgslsmith_dot_vec3_u32(global3.a.b.wxw, vec3<u32>(u_input.c.x, global3.c.b.x, 1u)), 138444u, 56241u) % vec4<u32>(32u))));
    let var_1 = Struct_2(global3.a, global3.a, Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_0.a)) * var_0.a), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global3.b.a.x, 183f))), var_0.a, vec2<bool>(global2[_wgslsmith_index_u32(0u, 9u)], global2[_wgslsmith_index_u32(17804u, 9u)]))), any(vec4<bool>(false, false, arg_2, true)))), vec4<u32>(~var_0.b.x ^ ~107030u, var_0.b.x, 1u, ~var_0.b.x ^ ~u_input.a.x)), _wgslsmith_dot_vec2_i32(-(~arg_1.zz), arg_1.xx), !arg_2);
    var var_2 = var_0.b;
    var var_3 = -abs(vec4<i32>(arg_1.x, 1i & var_1.d, 2147483647i, _wgslsmith_dot_vec2_i32(-arg_1.yx, vec2<i32>(u_input.e.x, -42215i))));
    var_0 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~var_2.x, abs(3168u), ~(~var_0.b.x) >> (32313u % 32u)), 26u)];
    return _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(47138u, var_0.b.x, var_1.a.b.x, var_0.b.x), global3.b.b) & global3.a.b, global3.a.b) << (u_input.d.x % 32u), 0u);
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = 23796u << (func_3(~func_2(global3.c.a.x, u_input.b, global1[_wgslsmith_index_u32(~u_input.d.x, 26u)], _wgslsmith_f_op_f32(-global3.c.a.x)), u_input.e, any(!arg_0)) % 32u);
    global3 = Struct_2(Struct_1(global3.b.a, vec4<u32>(~var_0, 4294967295u, 12670u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, u_input.c.x, var_0), global3.c.b.wxx))), global1[_wgslsmith_index_u32(u_input.b, 26u)], global1[_wgslsmith_index_u32(~var_0 & (_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0, global3.b.b.x, u_input.a.x), global3.a.b), 52774u) & global3.b.b.x), 26u)], u_input.e.x, all(vec3<bool>(!arg_0.x && arg_0.x, !all(vec2<bool>(false, false)), false)));
    global2 = array<bool, 9>();
    let var_1 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.c.a.x - global3.b.a.x)), -966f), vec4<u32>(var_0, u_input.c.x, ~global3.a.b.x, _wgslsmith_mult_u32(0u, _wgslsmith_mult_u32(1u, var_0)))), Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(681f, global3.c.a.x) + global3.b.a), vec2<f32>(_wgslsmith_f_op_f32(step(998f, -195f)), _wgslsmith_f_op_f32(-global3.a.a.x)))), select(~(~vec4<u32>(u_input.c.x, var_0, 81020u, 1u)), ~global3.c.b, !vec4<bool>(global2[_wgslsmith_index_u32(10178u, 9u)], arg_0.x, global3.e, global3.e))), Struct_1(vec2<f32>(_wgslsmith_div_f32(640f, _wgslsmith_f_op_f32(trunc(global3.b.a.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-1000f))))), global3.b.b), _wgslsmith_add_i32(_wgslsmith_add_i32(33364i, countOneBits(global3.d)), u_input.e.x), !global2[_wgslsmith_index_u32(~(~var_0) << (1767u % 32u), 9u)]);
    var var_2 = select(vec4<bool>(true, true, all(select(vec3<bool>(global2[_wgslsmith_index_u32(1u, 9u)], global3.e, true), vec3<bool>(false, global2[_wgslsmith_index_u32(0u, 9u)], global2[_wgslsmith_index_u32(1u, 9u)]), true)), !var_1.e), select(vec4<bool>(all(!vec3<bool>(arg_0.x, var_1.e, global2[_wgslsmith_index_u32(0u, 9u)])), select(true, var_1.e, all(vec2<bool>(var_1.e, global3.e))), var_1.e, true), !select(vec4<bool>(arg_0.x, arg_0.x, var_1.e, global2[_wgslsmith_index_u32(global3.b.b.x, 9u)]), vec4<bool>(var_1.e, arg_0.x, global2[_wgslsmith_index_u32(var_0, 9u)], true), select(vec4<bool>(var_1.e, false, false, arg_0.x), vec4<bool>(global3.e, global2[_wgslsmith_index_u32(u_input.c.x, 9u)], var_1.e, false), var_1.e)), true), !select(!select(vec4<bool>(global2[_wgslsmith_index_u32(26361u, 9u)], var_1.e, global3.e, false), vec4<bool>(global3.e, var_1.e, true, global2[_wgslsmith_index_u32(global3.b.b.x, 9u)]), false), !vec4<bool>(false, var_1.e, var_1.e, global3.e), vec4<bool>(select(true, global2[_wgslsmith_index_u32(global3.b.b.x, 9u)], true), any(vec2<bool>(true, true)), true, any(arg_0))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(sign(var_1.c.a)), global3.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.b.a.x, -256f))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3.a.a.x + 932f), _wgslsmith_f_op_f32(global3.a.a.x + -691f), true))), global3.a.a.x)), _wgslsmith_f_op_f32(ceil(1059f)));
    let var_1 = global3.c.a.x <= 1000f;
    let var_2 = u_input.e;
    global0 = array<Struct_2, 14>();
    let var_3 = func_1(vec2<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0))) != 747f, all(!(!vec4<bool>(global3.e, var_1, global3.e, true)))));
    global2 = array<bool, 9>();
    let var_4 = vec4<u32>(_wgslsmith_dot_vec2_u32(~u_input.c.zy, u_input.c.zz), ~_wgslsmith_add_u32(~var_3.b.x, 2050u), 0u, 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(_wgslsmith_add_i32(global3.d, u_input.e.x) & -49931i), _wgslsmith_dot_vec4_u32(countOneBits(firstTrailingBit(~var_4)), vec4<u32>(func_3(~vec3<u32>(1u, var_4.x, global3.b.b.x), vec3<i32>(global3.d, var_2.x, -8599i), !global2[_wgslsmith_index_u32(u_input.c.x, 9u)]), ~countOneBits(4294967295u), firstTrailingBit(0u), ~(~global3.b.b.x))), var_3.a, -u_input.e.x);
}

