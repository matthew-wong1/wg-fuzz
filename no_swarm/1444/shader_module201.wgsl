struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec3<f32>, 32>;

var<private> global2: array<vec3<i32>, 25> = array<vec3<i32>, 25>(vec3<i32>(41679i, 1i, 33461i), vec3<i32>(i32(-2147483648), 2147483647i, 13771i), vec3<i32>(40130i, 1i, 2825i), vec3<i32>(-41416i, -5226i, -9110i), vec3<i32>(1i, -19003i, 2147483647i), vec3<i32>(1i, -13783i, -31871i), vec3<i32>(0i, i32(-2147483648), 110142i), vec3<i32>(23745i, i32(-2147483648), 0i), vec3<i32>(0i, 0i, -12496i), vec3<i32>(29828i, -1i, 49831i), vec3<i32>(-29244i, 14190i, -30156i), vec3<i32>(1i, 2147483647i, 18148i), vec3<i32>(1i, -14820i, 0i), vec3<i32>(18461i, -1i, 71718i), vec3<i32>(i32(-2147483648), 40885i, 8452i), vec3<i32>(-8473i, 1i, 0i), vec3<i32>(2147483647i, 15765i, 3522i), vec3<i32>(1i, i32(-2147483648), 80977i), vec3<i32>(-8595i, 46238i, -26378i), vec3<i32>(-58867i, 64183i, 1905i), vec3<i32>(5546i, -33915i, 2147483647i), vec3<i32>(-4010i, 33746i, 0i), vec3<i32>(0i, 1i, 65894i), vec3<i32>(31856i, i32(-2147483648), 17543i), vec3<i32>(16994i, 2147483647i, 17453i));

var<private> global3: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(-1i, vec4<bool>(false, false, false, false), vec2<u32>(0u, 124787u)), Struct_1(13705i, vec4<bool>(false, true, false, true), vec2<u32>(1u, 44985u)), Struct_1(-13651i, vec4<bool>(true, false, false, false), vec2<u32>(1u, 16547u)), Struct_1(i32(-2147483648), vec4<bool>(false, true, false, false), vec2<u32>(1u, 1u)), Struct_1(-9486i, vec4<bool>(false, true, false, false), vec2<u32>(1u, 40310u)), Struct_1(-28116i, vec4<bool>(true, true, false, false), vec2<u32>(4294967295u, 89218u)), Struct_1(i32(-2147483648), vec4<bool>(true, false, false, false), vec2<u32>(61244u, 1u)), Struct_1(-1i, vec4<bool>(true, false, false, true), vec2<u32>(10477u, 1u)), Struct_1(-1i, vec4<bool>(false, false, false, false), vec2<u32>(16776u, 1u)), Struct_1(-1i, vec4<bool>(true, true, true, true), vec2<u32>(10275u, 4294967295u)), Struct_1(643i, vec4<bool>(true, false, true, false), vec2<u32>(4294967295u, 52001u)), Struct_1(26841i, vec4<bool>(false, false, true, true), vec2<u32>(15301u, 81674u)), Struct_1(-1i, vec4<bool>(false, true, false, false), vec2<u32>(13738u, 4294967295u)), Struct_1(-38307i, vec4<bool>(false, false, false, true), vec2<u32>(1u, 6433u)), Struct_1(-73037i, vec4<bool>(false, true, true, true), vec2<u32>(66394u, 0u)), Struct_1(2147483647i, vec4<bool>(false, false, false, false), vec2<u32>(4294967295u, 1u)), Struct_1(0i, vec4<bool>(true, true, false, true), vec2<u32>(4294967295u, 18045u)), Struct_1(-1i, vec4<bool>(false, false, false, false), vec2<u32>(4294967295u, 29465u)), Struct_1(51650i, vec4<bool>(true, false, true, true), vec2<u32>(4294967295u, 48030u)), Struct_1(0i, vec4<bool>(false, true, true, true), vec2<u32>(18702u, 1u)), Struct_1(-6631i, vec4<bool>(false, false, false, true), vec2<u32>(4294967295u, 28048u)), Struct_1(58580i, vec4<bool>(false, false, false, true), vec2<u32>(4294967295u, 64129u)), Struct_1(11244i, vec4<bool>(true, false, true, false), vec2<u32>(38694u, 0u)), Struct_1(46555i, vec4<bool>(true, true, false, true), vec2<u32>(26381u, 9983u)), Struct_1(1452i, vec4<bool>(false, true, false, false), vec2<u32>(38901u, 0u)), Struct_1(1i, vec4<bool>(true, false, true, false), vec2<u32>(4294967295u, 0u)));

var<private> global4: array<i32, 6> = array<i32, 6>(-1i, -1i, 22987i, -19196i, 20896i, 2147483647i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_2, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = global3[_wgslsmith_index_u32(arg_0.x, 26u)];
    var var_1 = vec3<i32>(~1i, u_input.b.x, var_0.a);
    var var_2 = Struct_1(_wgslsmith_div_i32(1i, ~659i), !var_0.b, countOneBits(abs(vec2<u32>(arg_0.x << (var_0.c.x % 32u), ~var_0.c.x))));
    let var_3 = Struct_2(~u_input.a, !(!var_0.b.yy));
    let var_4 = ~(arg_0.xy | _wgslsmith_mult_vec2_u32(~vec2<u32>(arg_0.x, arg_2.a) >> (var_0.c % vec2<u32>(32u)), var_2.c));
    return Struct_2(min(~(_wgslsmith_dot_vec2_u32(var_4, vec2<u32>(4294967295u, 0u)) & (u_input.a >> (var_4.x % 32u))), 47537u), select(!vec2<bool>(!var_2.b.x, any(vec2<bool>(true, true))), var_3.b, !(abs(var_2.c.x) < ~arg_2.a)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: u32) -> vec3<bool> {
    let var_0 = arg_0.a;
    global4 = array<i32, 6>();
    global1 = array<vec3<f32>, 32>();
    global2 = array<vec3<i32>, 25>();
    global2 = array<vec3<i32>, 25>();
    return select(!vec3<bool>(true, arg_0.b.x, true), !select(!(!arg_0.b.yyy), !select(vec3<bool>(false, arg_2.b.x, true), arg_0.b.ywx, arg_2.b.x), select(arg_0.b.zzx, vec3<bool>(true, false, true), select(vec3<bool>(false, false, arg_0.b.x), vec3<bool>(true, arg_2.b.x, arg_2.b.x), false))), arg_0.b.zwz);
}

fn func_4(arg_0: vec3<bool>) -> i32 {
    global4 = array<i32, 6>();
    let var_0 = select(u_input.b, vec4<i32>(-2147483647i, min(~firstTrailingBit(global0.x), 2147483647i), i32(-1i) * -1i, _wgslsmith_mod_i32(-(i32(-1i) * -28962i), ~u_input.b.x)), !vec4<bool>(arg_0.x, !arg_0.x, any(func_2(vec3<u32>(u_input.a, u_input.a, u_input.a), u_input.a, Struct_2(u_input.a, arg_0.xy), vec4<f32>(490f, -1424f, 656f, 1295f)).b), _wgslsmith_f_op_f32(round(875f)) != _wgslsmith_f_op_f32(round(-461f))));
    global2 = array<vec3<i32>, 25>();
    let var_1 = vec4<u32>(4294967295u, u_input.a, _wgslsmith_mod_u32(reverseBits(~1u), ~(~1u)), 25708u);
    var var_2 = Struct_2(41430u, !func_2(~var_1.zwz, ~(~u_input.a), Struct_2(4294967295u, !vec2<bool>(false, arg_0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 379f, -197f, 781f) * vec4<f32>(-825f, -189f, -668f, -2323f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-420f, -1000f, 1236f, 972f)))).b);
    return 80920i;
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> vec2<f32> {
    let var_0 = ~(~(_wgslsmith_add_vec4_u32(~vec4<u32>(1u, arg_2.a, 29425u, 75784u), ~vec4<u32>(arg_2.a, 0u, arg_2.a, arg_2.a)) ^ _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.a, 1u, 80775u, arg_0.a), vec4<u32>(0u, u_input.a, 53704u, 0u)), vec4<u32>(80399u, arg_0.a, 28261u, arg_0.a))));
    var var_1 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~(var_0 | vec4<u32>(4294967295u, 26714u, 92842u, arg_0.a)), firstLeadingBit(vec4<u32>(arg_0.a, u_input.a, var_0.x, 4294967295u))), ~min(vec4<u32>(20293u, var_0.x, 39398u, arg_2.a), vec4<u32>(u_input.a, arg_2.a, 29864u, arg_2.a)));
    var var_2 = vec2<i32>(arg_1, func_4(func_3(Struct_1(~(-125146i), !vec4<bool>(true, false, arg_2.b.x, false), var_0.zz ^ var_0.yw), ~max(var_0, vec4<u32>(29834u, 16703u, u_input.a, 0u)), func_2(~var_0.xxz, arg_2.a, Struct_2(u_input.a, arg_2.b), vec4<f32>(-259f, 609f, 730f, -428f)), u_input.a)));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-2192f)))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(1795f, -864f))))))), -335f);
    var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1964f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -582f), _wgslsmith_f_op_f32(607f + -115f)))))));
    return vec2<f32>(384f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1884f))) * _wgslsmith_f_op_f32(-1f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 32>();
    global2 = array<vec3<i32>, 25>();
    global3 = array<Struct_1, 26>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-467f, 588f), vec2<f32>(-612f, 932f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(Struct_2(u_input.a, vec2<bool>(false, false)), -1i, Struct_2(11196u, vec2<bool>(false, false)))), vec2<f32>(517f, 1594f)))));
    var var_1 = global3[_wgslsmith_index_u32(33750u, 26u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c | (var_1.c & vec2<u32>(~1u, min(var_1.c.x, 14102u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_0.x)))))), _wgslsmith_f_op_f32(round(-652f))));
}

