struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
    c: Struct_2,
    d: u32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 11> = array<vec2<bool>, 11>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global1: array<Struct_3, 32>;

var<private> global2: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(vec2<i32>(0i, 2147483647i), vec4<f32>(793f, -800f, -323f, -574f), vec3<i32>(-1i, 2147483647i, 38902i), Struct_1(vec2<u32>(27254u, 78930u), true, false)), Struct_2(vec2<i32>(2147483647i, -4468i), vec4<f32>(-1000f, 493f, -1006f, -904f), vec3<i32>(0i, -41155i, 11745i), Struct_1(vec2<u32>(1u, 1u), false, true)), Struct_2(vec2<i32>(-8108i, 17526i), vec4<f32>(1044f, 1337f, -166f, 1476f), vec3<i32>(0i, i32(-2147483648), 0i), Struct_1(vec2<u32>(29060u, 15096u), true, true)), Struct_2(vec2<i32>(29381i, -28316i), vec4<f32>(312f, -158f, 896f, 830f), vec3<i32>(2147483647i, i32(-2147483648), 6009i), Struct_1(vec2<u32>(17073u, 1u), false, true)), Struct_2(vec2<i32>(722i, 0i), vec4<f32>(-640f, -1069f, 757f, 316f), vec3<i32>(-3228i, -1i, -1i), Struct_1(vec2<u32>(1u, 11372u), true, true)), Struct_2(vec2<i32>(1i, -1i), vec4<f32>(-1000f, 244f, -560f, 612f), vec3<i32>(0i, 2147483647i, -40558i), Struct_1(vec2<u32>(1u, 4294967295u), true, true)), Struct_2(vec2<i32>(0i, 1i), vec4<f32>(-1000f, 319f, -542f, -1131f), vec3<i32>(11544i, -5456i, 13918i), Struct_1(vec2<u32>(1u, 18385u), false, false)), Struct_2(vec2<i32>(-17507i, 2147483647i), vec4<f32>(-1000f, 688f, -347f, 1189f), vec3<i32>(2147483647i, 62045i, 0i), Struct_1(vec2<u32>(99848u, 4294967295u), true, true)), Struct_2(vec2<i32>(-1i, 1i), vec4<f32>(-1333f, -401f, 614f, 385f), vec3<i32>(30089i, -6679i, 16634i), Struct_1(vec2<u32>(3845u, 0u), false, true)), Struct_2(vec2<i32>(-28135i, 1i), vec4<f32>(1872f, -320f, -1526f, -425f), vec3<i32>(-1i, 2147483647i, -29665i), Struct_1(vec2<u32>(18215u, 0u), true, false)), Struct_2(vec2<i32>(37858i, -1i), vec4<f32>(536f, 122f, -264f, 731f), vec3<i32>(i32(-2147483648), 5688i, 7893i), Struct_1(vec2<u32>(28805u, 4294967295u), true, false)), Struct_2(vec2<i32>(-24280i, 1i), vec4<f32>(-719f, -479f, 566f, 308f), vec3<i32>(-17500i, 55144i, 51246i), Struct_1(vec2<u32>(0u, 28704u), true, false)), Struct_2(vec2<i32>(21844i, 18491i), vec4<f32>(-1000f, 644f, -304f, -637f), vec3<i32>(-18681i, i32(-2147483648), 2147483647i), Struct_1(vec2<u32>(0u, 0u), false, true)), Struct_2(vec2<i32>(2147483647i, i32(-2147483648)), vec4<f32>(1791f, -1296f, -140f, 176f), vec3<i32>(1i, 35857i, -1i), Struct_1(vec2<u32>(39873u, 0u), true, true)), Struct_2(vec2<i32>(0i, 1i), vec4<f32>(483f, -210f, 517f, 1000f), vec3<i32>(0i, 0i, -1i), Struct_1(vec2<u32>(4294967295u, 4294967295u), true, false)), Struct_2(vec2<i32>(-38488i, -32777i), vec4<f32>(-717f, -123f, -421f, 1220f), vec3<i32>(-1007i, -31941i, 0i), Struct_1(vec2<u32>(28865u, 0u), true, true)), Struct_2(vec2<i32>(-4947i, 0i), vec4<f32>(1667f, 1000f, -2044f, 1018f), vec3<i32>(-1i, 0i, 0i), Struct_1(vec2<u32>(304u, 0u), false, false)), Struct_2(vec2<i32>(i32(-2147483648), -1i), vec4<f32>(1658f, -600f, 224f, -2378f), vec3<i32>(43834i, 0i, 1i), Struct_1(vec2<u32>(35270u, 58519u), false, true)), Struct_2(vec2<i32>(-1i, -92206i), vec4<f32>(-501f, -342f, 831f, -302f), vec3<i32>(2147483647i, 31269i, i32(-2147483648)), Struct_1(vec2<u32>(7619u, 66067u), true, true)), Struct_2(vec2<i32>(-1i, 0i), vec4<f32>(-505f, 1222f, 634f, -1139f), vec3<i32>(24259i, -5879i, 78391i), Struct_1(vec2<u32>(47677u, 0u), false, false)), Struct_2(vec2<i32>(0i, -8956i), vec4<f32>(-259f, -567f, -143f, -1512f), vec3<i32>(53747i, 45483i, 2147483647i), Struct_1(vec2<u32>(70063u, 29344u), false, true)), Struct_2(vec2<i32>(1i, -45296i), vec4<f32>(-389f, -134f, 523f, 2453f), vec3<i32>(1i, i32(-2147483648), -61094i), Struct_1(vec2<u32>(46413u, 4294967295u), false, true)), Struct_2(vec2<i32>(-10976i, 2066i), vec4<f32>(-1494f, -130f, -1296f, -1461f), vec3<i32>(1i, 1i, 7483i), Struct_1(vec2<u32>(20261u, 26445u), true, true)), Struct_2(vec2<i32>(i32(-2147483648), -1i), vec4<f32>(411f, -172f, -766f, -2386f), vec3<i32>(-2629i, 46966i, 34246i), Struct_1(vec2<u32>(1777u, 0u), false, false)), Struct_2(vec2<i32>(46614i, -59633i), vec4<f32>(-331f, -522f, -225f, 532f), vec3<i32>(2187i, i32(-2147483648), i32(-2147483648)), Struct_1(vec2<u32>(46239u, 35478u), false, false)), Struct_2(vec2<i32>(1i, 76145i), vec4<f32>(-1000f, -620f, 835f, 1000f), vec3<i32>(2147483647i, 4892i, -38149i), Struct_1(vec2<u32>(16325u, 0u), true, true)), Struct_2(vec2<i32>(31505i, 0i), vec4<f32>(535f, 1106f, -1000f, 139f), vec3<i32>(33344i, 2147483647i, 47453i), Struct_1(vec2<u32>(99893u, 39169u), false, true)), Struct_2(vec2<i32>(23875i, 2256i), vec4<f32>(1000f, 1206f, 871f, -1000f), vec3<i32>(-1i, 2147483647i, -29696i), Struct_1(vec2<u32>(41355u, 1u), true, true)), Struct_2(vec2<i32>(30971i, 1i), vec4<f32>(-684f, -520f, -959f, -1761f), vec3<i32>(0i, 59048i, 1i), Struct_1(vec2<u32>(4294967295u, 4294967295u), true, false)), Struct_2(vec2<i32>(14429i, 27524i), vec4<f32>(416f, -1551f, 1075f, -108f), vec3<i32>(0i, 0i, -33092i), Struct_1(vec2<u32>(7701u, 309u), true, false)), Struct_2(vec2<i32>(-14928i, 21479i), vec4<f32>(959f, 307f, -798f, -105f), vec3<i32>(-1i, 16073i, -6673i), Struct_1(vec2<u32>(36018u, 4294967295u), false, false)));

var<private> global3: bool = false;

var<private> global4: Struct_4;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_1) -> Struct_3 {
    return global4.a;
}

fn func_3(arg_0: vec4<i32>) -> vec2<u32> {
    global1 = array<Struct_3, 32>();
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global4.b.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    global4 = Struct_4(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~select(_wgslsmith_div_vec3_u32(u_input.b, global4.e), _wgslsmith_clamp_vec3_u32(global4.e, u_input.b, vec3<u32>(0u, u_input.b.x, u_input.b.x)), global4.a.a.c || global4.c.d.b), global4.e), 32u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.c.b.x, _wgslsmith_f_op_f32(-global4.c.b.x), global4.c.b.x, _wgslsmith_f_op_f32(round(1350f))) - global4.b)), global4.c, max(_wgslsmith_clamp_u32(~2539u, 63467u, u_input.b.x), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, 15765u, 40392u), ~vec3<u32>(global4.a.a.a.x, u_input.b.x, u_input.b.x))), ~vec3<u32>(func_1(vec2<u32>(global4.e.x, 7597u), true, global4.c.d).a.a.x, 0u, ~_wgslsmith_sub_u32(u_input.b.x, 0u)));
    let var_1 = arg_0.x;
    var var_2 = vec3<i32>(-_wgslsmith_div_i32(var_1 | 2147483647i, global4.c.c.x), ~(-(14131i << (global4.c.d.a.x % 32u))), _wgslsmith_mult_i32(~5102i, global4.a.d.x));
    return _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, global4.e.x) ^ ~global4.c.d.a, ~_wgslsmith_mult_vec2_u32(global4.c.d.a, vec2<u32>(global4.a.a.a.x, global4.a.a.a.x))), _wgslsmith_clamp_vec2_u32(u_input.b.yz, firstTrailingBit(_wgslsmith_sub_vec2_u32(global4.a.a.a, u_input.b.yz)), u_input.b.yx)) >> ((_wgslsmith_sub_vec2_u32(global4.c.d.a, _wgslsmith_sub_vec2_u32(min(u_input.b.xy, vec2<u32>(4294967295u, 129723u)), ~u_input.b.xz)) >> (~(~u_input.b.zx) % vec2<u32>(32u))) % vec2<u32>(32u));
}

fn func_4(arg_0: vec3<u32>) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-420f)), -1248f));
    global1 = array<Struct_3, 32>();
    var var_1 = abs(~global4.a.b.zy);
    var var_2 = select(!global4.a.a.c, !global4.a.a.c, select(global4.c.d.b | global4.a.a.b, true, !(!global4.a.a.c) & any(!vec3<bool>(global4.c.d.c, false, global4.c.d.b))));
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global4.a.e.x, _wgslsmith_f_op_f32(global4.c.b.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.a.e.x) + _wgslsmith_f_op_f32(trunc(global4.c.b.x)))), true | !global4.c.d.c)), _wgslsmith_f_op_f32(f32(-1f) * -514f)));
    return vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(328f - -192f) + _wgslsmith_f_op_f32(min(-1292f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))))), 1544f);
}

fn func_2(arg_0: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_4(~vec3<u32>(firstLeadingBit(u_input.b.x), ~45251u, _wgslsmith_dot_vec2_u32(~global4.c.d.a, func_3(vec4<i32>(arg_0.b.x, arg_0.c, arg_0.b.x, 25938i))))));
    var var_1 = vec3<bool>(arg_0.a.c, global4.c.d.b | !global4.c.d.c, (select(func_1(vec2<u32>(36095u, 4294967295u), global4.c.d.b, Struct_1(global4.c.d.a, false, global4.c.d.b)).a.c, any(vec4<bool>(false, false, false, false)), arg_0.a.c) || all(select(vec3<bool>(true, global4.a.a.b, true), vec3<bool>(global4.a.a.b, true, global4.c.d.c), global4.a.a.b))) | global4.c.d.c);
    let var_2 = -2147483647i;
    global3 = true;
    global1 = array<Struct_3, 32>();
    return global4.c;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: bool) -> Struct_4 {
    let var_0 = u_input.b;
    var var_1 = _wgslsmith_div_vec2_i32(arg_0.c.zy, vec2<i32>(1i >> (~_wgslsmith_add_u32(global4.c.d.a.x, 1u) % 32u), -1i));
    var var_2 = func_2(func_1(vec2<u32>(arg_0.d.a.x >> (54732u % 32u), ~(~u_input.b.x)), true, Struct_1(vec2<u32>(abs(global4.d), 1u), false, !(!arg_0.d.c)))).d;
    var_2 = func_1(global4.c.d.a, !arg_1.x, Struct_1(~global4.c.d.a, arg_1.x, func_2(Struct_3(func_2(global1[_wgslsmith_index_u32(u_input.b.x, 32u)]).d, _wgslsmith_div_vec4_i32(global4.a.b, global4.a.b), arg_0.a.x << (4294967295u % 32u), u_input.c.zxz, _wgslsmith_f_op_vec3_f32(func_4(vec3<u32>(0u, 10814u, var_2.a.x))))).d.c)).a;
    global2 = array<Struct_2, 31>();
    return Struct_4(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1199u, u_input.b.x), ~vec2<u32>(u_input.b.x & arg_0.d.a.x, ~global4.a.a.a.x)), 32u)], _wgslsmith_f_op_vec4_f32(ceil(arg_0.b)), global4.c, _wgslsmith_dot_vec4_u32(~vec4<u32>(max(u_input.b.x, global4.e.x), 130922u, 1u, _wgslsmith_add_u32(4294967295u, global4.a.a.a.x)), _wgslsmith_div_vec4_u32(vec4<u32>(~34907u, countOneBits(1u), arg_0.d.a.x, func_3(vec4<i32>(var_1.x, 44093i, -15032i, -2147483647i)).x), _wgslsmith_clamp_vec4_u32(vec4<u32>(30983u, 0u, global4.a.a.a.x, arg_0.d.a.x), vec4<u32>(12733u, var_2.a.x, global4.d, var_0.x), vec4<u32>(u_input.b.x, 0u, 4294967295u, 4294967295u)) << (~vec4<u32>(var_0.x, 26407u, 19682u, 42786u) % vec4<u32>(32u)))), min(var_0, firstTrailingBit(~vec3<u32>(global4.d, 25891u, var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 11>();
    var var_0 = func_1(((~vec2<u32>(global4.a.a.a.x, u_input.b.x) >> (u_input.b.zx % vec2<u32>(32u))) >> ((~global4.c.d.a & vec2<u32>(global4.d, 11621u)) % vec2<u32>(32u))) ^ ~vec2<u32>(4294967295u << (0u % 32u), 1u | global4.d), any(vec2<bool>(global4.a.a.c, true)), global4.c.d);
    global3 = !global4.c.d.c;
    global0 = array<vec2<bool>, 11>();
    global3 = false;
    global4 = func_5(func_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_0.a.a.x) | select(vec2<u32>(u_input.b.x, 4294967295u), var_0.a.a, var_0.a.c), vec2<u32>(min(0u, global4.c.d.a.x), ~1u)), 32u)]), !global0[_wgslsmith_index_u32(0u, 11u)], 65616u == u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2258f, -851f, _wgslsmith_f_op_f32(trunc(global4.c.b.x))) + _wgslsmith_f_op_vec3_f32(-global4.c.b.zxx)), var_0.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.e.x)))));
}

