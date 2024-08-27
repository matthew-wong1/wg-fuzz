struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<u32>,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: u32,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 29> = array<Struct_4, 29>(Struct_4(Struct_2(true, -1000f, 4294967295u, vec4<u32>(4294967295u, 0u, 1u, 4294967295u), Struct_1(true, 0i, vec2<u32>(4294967295u, 1u), -1414f)), Struct_1(true, 1i, vec2<u32>(9012u, 1u), -174f)), Struct_4(Struct_2(false, -128f, 4474u, vec4<u32>(0u, 1u, 1u, 4294967295u), Struct_1(true, 0i, vec2<u32>(21130u, 1u), 1435f)), Struct_1(false, -30942i, vec2<u32>(0u, 0u), -155f)), Struct_4(Struct_2(false, 1398f, 25539u, vec4<u32>(4294967295u, 4294967295u, 73027u, 25887u), Struct_1(true, -32495i, vec2<u32>(4294967295u, 21771u), -1949f)), Struct_1(true, 16988i, vec2<u32>(24235u, 0u), 244f)), Struct_4(Struct_2(true, 2578f, 51197u, vec4<u32>(0u, 0u, 22852u, 0u), Struct_1(true, -1i, vec2<u32>(41008u, 4294967295u), -3784f)), Struct_1(false, i32(-2147483648), vec2<u32>(0u, 59996u), 807f)), Struct_4(Struct_2(true, 245f, 4294967295u, vec4<u32>(1u, 4294967295u, 4294967295u, 0u), Struct_1(false, -32445i, vec2<u32>(67843u, 4294967295u), 1158f)), Struct_1(true, -35534i, vec2<u32>(56281u, 7714u), -2186f)), Struct_4(Struct_2(true, 102f, 51316u, vec4<u32>(13099u, 1u, 18549u, 58426u), Struct_1(false, 19684i, vec2<u32>(20047u, 67557u), -546f)), Struct_1(true, 52642i, vec2<u32>(105399u, 43575u), -550f)), Struct_4(Struct_2(true, -986f, 33016u, vec4<u32>(16854u, 83678u, 1u, 0u), Struct_1(true, 18155i, vec2<u32>(0u, 76378u), 800f)), Struct_1(false, -29495i, vec2<u32>(0u, 1768u), -2131f)), Struct_4(Struct_2(true, -1177f, 4294967295u, vec4<u32>(26374u, 54662u, 0u, 0u), Struct_1(true, -28905i, vec2<u32>(59150u, 4294967295u), -1222f)), Struct_1(true, 45316i, vec2<u32>(0u, 1249u), 538f)), Struct_4(Struct_2(false, -111f, 11187u, vec4<u32>(0u, 4294967295u, 2214u, 13234u), Struct_1(true, -1i, vec2<u32>(0u, 4294967295u), -1629f)), Struct_1(false, 71294i, vec2<u32>(0u, 7811u), -1238f)), Struct_4(Struct_2(true, -830f, 4294967295u, vec4<u32>(93917u, 4294967295u, 1u, 413u), Struct_1(false, 0i, vec2<u32>(0u, 1u), 719f)), Struct_1(false, 1i, vec2<u32>(17461u, 5074u), 1693f)), Struct_4(Struct_2(true, -907f, 11316u, vec4<u32>(52856u, 1u, 33627u, 0u), Struct_1(true, 49746i, vec2<u32>(4294967295u, 54780u), 130f)), Struct_1(true, 0i, vec2<u32>(7929u, 21695u), 806f)), Struct_4(Struct_2(true, -201f, 41263u, vec4<u32>(56950u, 131838u, 1u, 1u), Struct_1(false, 1i, vec2<u32>(13542u, 4294967295u), -500f)), Struct_1(false, 2147483647i, vec2<u32>(17084u, 1447u), -823f)), Struct_4(Struct_2(true, -2647f, 0u, vec4<u32>(29242u, 18306u, 23755u, 12682u), Struct_1(true, 51815i, vec2<u32>(4294967295u, 0u), 668f)), Struct_1(true, 0i, vec2<u32>(0u, 3127u), 558f)), Struct_4(Struct_2(true, -175f, 0u, vec4<u32>(4294967295u, 58743u, 100567u, 5000u), Struct_1(true, -37016i, vec2<u32>(4294967295u, 0u), 445f)), Struct_1(true, 0i, vec2<u32>(4294967295u, 1u), 253f)), Struct_4(Struct_2(false, -725f, 2983u, vec4<u32>(27708u, 2431u, 13575u, 39925u), Struct_1(false, -1i, vec2<u32>(10122u, 62811u), 1339f)), Struct_1(false, -4927i, vec2<u32>(4445u, 4294967295u), 1193f)), Struct_4(Struct_2(true, -606f, 44271u, vec4<u32>(24946u, 43562u, 1u, 82642u), Struct_1(true, 2147483647i, vec2<u32>(0u, 0u), 1000f)), Struct_1(true, 1i, vec2<u32>(48832u, 61240u), 2062f)), Struct_4(Struct_2(false, 241f, 83356u, vec4<u32>(1u, 1u, 4294967295u, 12401u), Struct_1(false, 1i, vec2<u32>(0u, 15628u), -1324f)), Struct_1(false, -25277i, vec2<u32>(48237u, 25448u), 643f)), Struct_4(Struct_2(false, 134f, 0u, vec4<u32>(45501u, 46561u, 1u, 4294967295u), Struct_1(true, 0i, vec2<u32>(1u, 25989u), -633f)), Struct_1(true, 23239i, vec2<u32>(923u, 68595u), 486f)), Struct_4(Struct_2(true, -335f, 80153u, vec4<u32>(76661u, 1u, 53712u, 5587u), Struct_1(false, 1i, vec2<u32>(17550u, 1u), 105f)), Struct_1(false, 8261i, vec2<u32>(1u, 44922u), -897f)), Struct_4(Struct_2(false, -1772f, 4294967295u, vec4<u32>(12319u, 0u, 34923u, 0u), Struct_1(true, 1i, vec2<u32>(0u, 64681u), 3104f)), Struct_1(false, -23862i, vec2<u32>(1u, 1u), -955f)), Struct_4(Struct_2(true, 481f, 49295u, vec4<u32>(59780u, 4294967295u, 1u, 1u), Struct_1(true, 9742i, vec2<u32>(71319u, 1u), -110f)), Struct_1(true, 1i, vec2<u32>(21853u, 43083u), -888f)), Struct_4(Struct_2(true, -276f, 51885u, vec4<u32>(40825u, 4294967295u, 1u, 1u), Struct_1(true, -15629i, vec2<u32>(1u, 4294967295u), -680f)), Struct_1(false, 1661i, vec2<u32>(11789u, 4294967295u), 1062f)), Struct_4(Struct_2(false, -970f, 16193u, vec4<u32>(4294967295u, 14260u, 1855u, 0u), Struct_1(false, -21657i, vec2<u32>(35064u, 1u), -452f)), Struct_1(true, 35803i, vec2<u32>(62759u, 18829u), 1099f)), Struct_4(Struct_2(true, -1735f, 0u, vec4<u32>(40574u, 1u, 1u, 1u), Struct_1(true, 2147483647i, vec2<u32>(91103u, 1u), -534f)), Struct_1(true, 2147483647i, vec2<u32>(0u, 56610u), -1047f)), Struct_4(Struct_2(false, -564f, 4294967295u, vec4<u32>(62256u, 1u, 0u, 1u), Struct_1(false, 7794i, vec2<u32>(0u, 27137u), -406f)), Struct_1(false, 0i, vec2<u32>(4294967295u, 4294967295u), 959f)), Struct_4(Struct_2(false, -428f, 10059u, vec4<u32>(5939u, 4294967295u, 0u, 14773u), Struct_1(false, 9890i, vec2<u32>(76066u, 0u), -600f)), Struct_1(true, -56540i, vec2<u32>(39347u, 4294967295u), 230f)), Struct_4(Struct_2(true, 916f, 50139u, vec4<u32>(13411u, 38623u, 4294967295u, 4556u), Struct_1(false, -1i, vec2<u32>(32832u, 40095u), -1108f)), Struct_1(false, -1i, vec2<u32>(2279u, 43367u), -176f)), Struct_4(Struct_2(true, 325f, 4294967295u, vec4<u32>(84602u, 94519u, 4294967295u, 1u), Struct_1(true, 2147483647i, vec2<u32>(16750u, 0u), -868f)), Struct_1(false, 16233i, vec2<u32>(4294967295u, 0u), -295f)), Struct_4(Struct_2(false, 850f, 0u, vec4<u32>(22900u, 69394u, 90071u, 1u), Struct_1(false, -16019i, vec2<u32>(1u, 58246u), -980f)), Struct_1(false, 0i, vec2<u32>(0u, 1u), 1000f)));

var<private> global1: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(true, -6883i, vec2<u32>(27540u, 35542u), -392f), Struct_1(false, i32(-2147483648), vec2<u32>(15915u, 0u), -940f), Struct_1(false, 36085i, vec2<u32>(0u, 3322u), -254f), Struct_1(false, 1i, vec2<u32>(4294967295u, 4294967295u), 854f), Struct_1(false, -29429i, vec2<u32>(0u, 4294967295u), -163f), Struct_1(false, 0i, vec2<u32>(28976u, 68091u), -1296f), Struct_1(true, 20421i, vec2<u32>(1u, 0u), -877f), Struct_1(false, -25231i, vec2<u32>(4294967295u, 4294967295u), -1375f), Struct_1(false, 2147483647i, vec2<u32>(13617u, 1u), 1254f), Struct_1(false, 0i, vec2<u32>(40728u, 14388u), -730f));

var<private> global2: array<Struct_4, 12>;

var<private> global3: i32;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> vec3<u32> {
    var var_0 = Struct_4(Struct_2(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.d))) + -546f), ~30535u, ~vec4<u32>(u_input.c.x, 55407u, min(0u, 32315u), 50331u), global1[_wgslsmith_index_u32(30092u, 10u)]), Struct_1(true || all(select(vec2<bool>(false, false), vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_0.a, true))), arg_0.b, vec2<u32>(~(4294967295u >> (u_input.c.x % 32u)), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.a.xz, vec2<u32>(0u, 0u), vec2<u32>(38217u, u_input.c.x)), u_input.a.yy & u_input.a.xz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1442f + 1000f))))));
    let var_1 = !select(!select(!vec2<bool>(var_0.a.e.a, arg_0.a), !vec2<bool>(arg_0.a, false), -1308f >= arg_2), !vec2<bool>(true && arg_0.a, arg_0.a), !vec2<bool>(var_0.a.e.a, !arg_0.a));
    var var_2 = _wgslsmith_div_vec2_u32(u_input.a.xz | ~countOneBits(vec2<u32>(u_input.c.x, u_input.c.x)), var_0.b.c);
    var var_3 = _wgslsmith_mult_u32(~u_input.c.x, var_0.a.d.x);
    let var_4 = Struct_3(arg_2, ~var_0.a.c | max(~_wgslsmith_sub_u32(arg_1, 0u), var_0.b.c.x));
    return _wgslsmith_add_vec3_u32(abs(u_input.a), ~(~_wgslsmith_sub_vec3_u32(var_0.a.d.yyw, var_0.a.d.zzx)) | vec3<u32>(43578u, firstLeadingBit(~14888u), ~arg_0.c.x));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(430i, u_input.b.x, u_input.b.x, u_input.b.x), firstTrailingBit(-vec4<i32>(u_input.b.x, 59714i, u_input.b.x, u_input.b.x))), ~_wgslsmith_div_i32(i32(-1i) * -7193i, select(u_input.b.x, u_input.b.x, false))), vec3<i32>(~firstTrailingBit(-1i), abs(_wgslsmith_clamp_i32(abs(u_input.b.x), -2147483647i, ~u_input.b.x)), u_input.b.x));
    var_0 = (~vec3<i32>(-92695i, -2147483647i, 0i) << (func_3(Struct_1(true, 2147483647i, ~u_input.c.zz, -552f), 41099u, _wgslsmith_div_f32(-941f, _wgslsmith_div_f32(-1048f, 1269f))) % vec3<u32>(32u))) ^ _wgslsmith_sub_vec3_i32(-abs(vec3<i32>(u_input.b.x, var_0.x, -2147483647i) & vec3<i32>(-25086i, -26969i, u_input.b.x)), vec3<i32>(-2147483647i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-8683i, var_0.x, var_0.x), vec3<i32>(16715i, var_0.x, var_0.x)), -66610i));
    let var_1 = ~(~(~(~(u_input.a.yx >> (u_input.c.wz % vec2<u32>(32u))))));
    global0 = array<Struct_4, 29>();
    let var_2 = select(vec4<bool>(true, false || (_wgslsmith_mult_i32(var_0.x, -6106i) < ~u_input.b.x), true, all(vec2<bool>(true, true))), select(vec4<bool>(true, true, false, !(4294967295u >= u_input.a.x)), !select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true)), true), !(_wgslsmith_dot_vec3_i32(u_input.b, u_input.b) == u_input.b.x)), select(select(vec4<bool>(all(vec3<bool>(true, true, true)), true, all(vec3<bool>(true, true, true)), true), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), false), all(vec2<bool>(false, false))), vec4<bool>(true, true, true, true), vec4<bool>(false, all(vec2<bool>(true, true)), true, true)), select(vec4<bool>(select(false, false, true), true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), true))));
    return ~firstTrailingBit(u_input.a.x);
}

fn func_1(arg_0: vec4<u32>, arg_1: f32, arg_2: f32) -> vec2<f32> {
    var var_0 = Struct_2(true, arg_1, 22466u, vec4<u32>(~254u, min(1u, _wgslsmith_sub_u32(u_input.a.x, u_input.c.x)), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, u_input.c.x, 1u), ~u_input.a), 9413u), ~func_2() ^ _wgslsmith_sub_u32(u_input.c.x << (arg_0.x % 32u), ~arg_0.x)), Struct_1(false, -1i, countOneBits(arg_0.wx), -1883f));
    let var_1 = Struct_1((abs(reverseBits(22061i)) ^ u_input.b.x) > _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, -2147483647i, var_0.e.b) >> (vec3<u32>(var_0.d.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u))), abs(select(vec3<i32>(var_0.e.b, 56180i, -1i), vec3<i32>(0i, 2147483647i, var_0.e.b), vec3<bool>(false, false, var_0.a)))), ~(-reverseBits(u_input.b.x)), ~(~firstTrailingBit(vec2<u32>(u_input.c.x, 4294967295u)) << (~vec2<u32>(u_input.a.x, arg_0.x) % vec2<u32>(32u))), 1000f);
    global1 = array<Struct_1, 10>();
    global1 = array<Struct_1, 10>();
    let var_2 = ~(~vec3<u32>(firstLeadingBit(_wgslsmith_dot_vec4_u32(var_0.d, var_0.d)), ~(~1u), 82500u));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(673f, -478f), 462f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-885f, 525f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d, 423f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(946f, -1205f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(56692i, 4294967295u, _wgslsmith_clamp_u32(401u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(abs(u_input.a.zz), u_input.c.zx), max(u_input.c.yy >> (vec2<u32>(u_input.c.x, 0u) % vec2<u32>(32u)), vec2<u32>(u_input.c.x, u_input.c.x) >> (vec2<u32>(48251u, 1997u) % vec2<u32>(32u)))), _wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, firstLeadingBit(1u)), u_input.c.x)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1475f - 933f), _wgslsmith_f_op_f32(abs(1680f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_1(vec4<u32>(u_input.a.x, 1u, 7868u, u_input.c.x), -213f, _wgslsmith_f_op_f32(max(760f, -2209f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1381f, 540f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(218f, 682f))))))), 1i);
}

