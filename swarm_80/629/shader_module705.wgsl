struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: Struct_1,
    d: vec3<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

var<private> global1: Struct_2 = Struct_2(vec3<i32>(-23146i, -5448i, 33761i), vec3<i32>(-41539i, -6527i, i32(-2147483648)), Struct_1(vec2<i32>(i32(-2147483648), 28806i), vec3<f32>(-473f, -171f, 1696f)), vec3<i32>(2147483647i, 0i, i32(-2147483648)), vec3<bool>(true, true, false));

var<private> global2: array<bool, 17>;

var<private> global3: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(vec3<i32>(31724i, -37387i, -11695i), vec3<i32>(i32(-2147483648), -37872i, 0i), Struct_1(vec2<i32>(0i, 45811i), vec3<f32>(798f, -132f, 210f)), vec3<i32>(1i, 1i, -1i), vec3<bool>(false, true, false)), Struct_2(vec3<i32>(-15369i, 1i, -82708i), vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), Struct_1(vec2<i32>(-28608i, 0i), vec3<f32>(-183f, -1004f, -328f)), vec3<i32>(i32(-2147483648), -1i, -1i), vec3<bool>(false, true, false)), Struct_2(vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), vec3<i32>(i32(-2147483648), -1i, 1i), Struct_1(vec2<i32>(-2282i, 0i), vec3<f32>(1211f, 1028f, -880f)), vec3<i32>(2147483647i, -1i, -12962i), vec3<bool>(false, true, true)), Struct_2(vec3<i32>(1i, -1728i, 0i), vec3<i32>(2147483647i, -28323i, -29412i), Struct_1(vec2<i32>(-34068i, 1i), vec3<f32>(-945f, -1000f, 943f)), vec3<i32>(i32(-2147483648), -22860i, 0i), vec3<bool>(true, false, true)), Struct_2(vec3<i32>(1i, -23633i, i32(-2147483648)), vec3<i32>(10232i, i32(-2147483648), 2147483647i), Struct_1(vec2<i32>(1i, 9658i), vec3<f32>(-456f, -155f, 291f)), vec3<i32>(i32(-2147483648), -16102i, 2147483647i), vec3<bool>(false, true, false)), Struct_2(vec3<i32>(1i, 54333i, -13921i), vec3<i32>(2147483647i, 2147483647i, 14628i), Struct_1(vec2<i32>(44443i, -3209i), vec3<f32>(208f, -538f, -1000f)), vec3<i32>(1i, 0i, -1i), vec3<bool>(true, true, false)), Struct_2(vec3<i32>(-1i, 1i, i32(-2147483648)), vec3<i32>(-1i, 13340i, 0i), Struct_1(vec2<i32>(0i, -42876i), vec3<f32>(1818f, -604f, -1256f)), vec3<i32>(i32(-2147483648), -15365i, 3112i), vec3<bool>(false, true, true)), Struct_2(vec3<i32>(i32(-2147483648), 2147483647i, -61893i), vec3<i32>(-1i, 27720i, -42239i), Struct_1(vec2<i32>(20546i, -1i), vec3<f32>(1000f, -622f, -799f)), vec3<i32>(-1i, 58096i, 1i), vec3<bool>(true, true, true)), Struct_2(vec3<i32>(-44729i, 1i, 1i), vec3<i32>(0i, -1i, i32(-2147483648)), Struct_1(vec2<i32>(0i, -27492i), vec3<f32>(-231f, -1918f, -451f)), vec3<i32>(-10301i, -34102i, 0i), vec3<bool>(false, true, false)), Struct_2(vec3<i32>(31729i, 0i, -1i), vec3<i32>(-14540i, -1094i, 0i), Struct_1(vec2<i32>(9588i, 0i), vec3<f32>(-158f, 1821f, 1760f)), vec3<i32>(-20802i, 10145i, -10176i), vec3<bool>(false, false, true)), Struct_2(vec3<i32>(-3281i, -19207i, 2147483647i), vec3<i32>(-6195i, 2147483647i, 0i), Struct_1(vec2<i32>(2147483647i, 1i), vec3<f32>(-113f, -1268f, 1000f)), vec3<i32>(-1i, 0i, 25742i), vec3<bool>(false, true, true)), Struct_2(vec3<i32>(2147483647i, 3806i, 1i), vec3<i32>(-1i, 71190i, -1i), Struct_1(vec2<i32>(-2748i, 7690i), vec3<f32>(1000f, 151f, -947f)), vec3<i32>(i32(-2147483648), -5589i, -27360i), vec3<bool>(false, true, true)), Struct_2(vec3<i32>(2147483647i, 0i, -20743i), vec3<i32>(-60341i, 0i, 0i), Struct_1(vec2<i32>(2147483647i, -1i), vec3<f32>(1454f, -347f, -633f)), vec3<i32>(-27894i, -33575i, -13453i), vec3<bool>(false, true, true)), Struct_2(vec3<i32>(0i, 6124i, 0i), vec3<i32>(-39424i, -26735i, 2147483647i), Struct_1(vec2<i32>(-22291i, 1i), vec3<f32>(1730f, 1402f, 268f)), vec3<i32>(44185i, i32(-2147483648), -47210i), vec3<bool>(true, false, false)), Struct_2(vec3<i32>(0i, 13605i, -1i), vec3<i32>(i32(-2147483648), -1i, -1i), Struct_1(vec2<i32>(-24985i, 11182i), vec3<f32>(620f, -1487f, -406f)), vec3<i32>(-34493i, -1i, 2147483647i), vec3<bool>(true, false, false)), Struct_2(vec3<i32>(40922i, -39191i, 2147483647i), vec3<i32>(29083i, 31511i, -6652i), Struct_1(vec2<i32>(2147483647i, 5729i), vec3<f32>(1647f, -167f, 313f)), vec3<i32>(-1i, 10137i, -20874i), vec3<bool>(true, false, false)), Struct_2(vec3<i32>(-12165i, 2147483647i, -19066i), vec3<i32>(i32(-2147483648), -1i, 8590i), Struct_1(vec2<i32>(2147483647i, 1i), vec3<f32>(1695f, -188f, 403f)), vec3<i32>(1i, 14749i, -28013i), vec3<bool>(true, true, false)), Struct_2(vec3<i32>(44438i, 2147483647i, 1i), vec3<i32>(i32(-2147483648), 2147483647i, -35024i), Struct_1(vec2<i32>(2147483647i, 0i), vec3<f32>(1012f, -1823f, 861f)), vec3<i32>(i32(-2147483648), 1i, 13819i), vec3<bool>(true, false, true)), Struct_2(vec3<i32>(-1i, -1i, 1i), vec3<i32>(-1i, 1i, -47340i), Struct_1(vec2<i32>(0i, -24941i), vec3<f32>(2132f, 155f, 1040f)), vec3<i32>(-30036i, 1575i, 59344i), vec3<bool>(true, true, false)), Struct_2(vec3<i32>(0i, -29126i, -9285i), vec3<i32>(43301i, -66039i, 0i), Struct_1(vec2<i32>(-58265i, -7978i), vec3<f32>(208f, 430f, 104f)), vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i), vec3<bool>(false, true, true)), Struct_2(vec3<i32>(1i, 2147483647i, 2147483647i), vec3<i32>(51139i, 0i, 38385i), Struct_1(vec2<i32>(43416i, 30834i), vec3<f32>(1375f, -905f, -219f)), vec3<i32>(-31208i, -1i, -26978i), vec3<bool>(false, false, true)), Struct_2(vec3<i32>(-11307i, 1i, -2755i), vec3<i32>(-31497i, -15691i, 19098i), Struct_1(vec2<i32>(9727i, 22950i), vec3<f32>(1083f, -1297f, -950f)), vec3<i32>(48999i, -1i, i32(-2147483648)), vec3<bool>(true, true, false)), Struct_2(vec3<i32>(19744i, 10231i, -8103i), vec3<i32>(17335i, i32(-2147483648), 1i), Struct_1(vec2<i32>(39459i, -9102i), vec3<f32>(-1225f, -2161f, 625f)), vec3<i32>(55238i, -18155i, -1i), vec3<bool>(true, true, false)), Struct_2(vec3<i32>(-1i, 26536i, 2147483647i), vec3<i32>(i32(-2147483648), 0i, 113302i), Struct_1(vec2<i32>(-6332i, -1i), vec3<f32>(1098f, -651f, -1000f)), vec3<i32>(-23817i, 28803i, -1i), vec3<bool>(false, true, true)), Struct_2(vec3<i32>(2147483647i, 1i, 22816i), vec3<i32>(5111i, 2147483647i, -1i), Struct_1(vec2<i32>(0i, -5744i), vec3<f32>(-1248f, 877f, -148f)), vec3<i32>(i32(-2147483648), 0i, -31117i), vec3<bool>(true, false, true)), Struct_2(vec3<i32>(35880i, 24507i, -1i), vec3<i32>(-39436i, 1i, -19451i), Struct_1(vec2<i32>(-6779i, -45542i), vec3<f32>(546f, -1000f, -163f)), vec3<i32>(-6548i, 2147483647i, 1i), vec3<bool>(false, false, true)), Struct_2(vec3<i32>(-8392i, -26862i, -28742i), vec3<i32>(-1i, 34685i, 45687i), Struct_1(vec2<i32>(-1i, 0i), vec3<f32>(982f, -495f, -152f)), vec3<i32>(i32(-2147483648), 0i, 91268i), vec3<bool>(true, false, true)), Struct_2(vec3<i32>(2147483647i, 9257i, -1i), vec3<i32>(-56310i, 2599i, 2147483647i), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec3<f32>(-1338f, 866f, 1579f)), vec3<i32>(2147483647i, -11861i, -57862i), vec3<bool>(false, true, false)), Struct_2(vec3<i32>(-1i, 2147483647i, 0i), vec3<i32>(3038i, -13668i, 43967i), Struct_1(vec2<i32>(2147483647i, 1i), vec3<f32>(-215f, -1032f, -1765f)), vec3<i32>(36881i, 49759i, 50685i), vec3<bool>(true, true, false)), Struct_2(vec3<i32>(21281i, 2147483647i, 5695i), vec3<i32>(51407i, 0i, 5159i), Struct_1(vec2<i32>(-12930i, -61842i), vec3<f32>(806f, 884f, -674f)), vec3<i32>(66805i, 6973i, 16293i), vec3<bool>(true, true, false)), Struct_2(vec3<i32>(67837i, 1i, 1i), vec3<i32>(9168i, 19137i, -36361i), Struct_1(vec2<i32>(2147483647i, 8704i), vec3<f32>(1498f, -691f, 2325f)), vec3<i32>(i32(-2147483648), 1i, 1i), vec3<bool>(true, true, true)));

var<private> global4: vec4<f32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> bool {
    global3 = array<Struct_2, 31>();
    var var_0 = global0[_wgslsmith_index_u32(u_input.a, 1u)];
    var var_1 = Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c.x, _wgslsmith_mult_i32(~global1.a.x, -var_0.a.x)), global1.d.zy, global1.c.a), global4.xxw);
    let var_2 = global1.c.b.x;
    var_1 = global0[_wgslsmith_index_u32(u_input.a, 1u)];
    return all(vec2<bool>(false, !(!(!global1.e.x))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> vec2<i32> {
    let var_0 = false;
    var var_1 = -_wgslsmith_mod_vec2_i32(arg_0.c.a, vec2<i32>(-u_input.c.x, -(arg_1.a.x | u_input.c.x)));
    var var_2 = vec4<i32>(-36766i, -u_input.c.x, -var_1.x, global1.a.x) & _wgslsmith_mod_vec4_i32(~firstTrailingBit(vec4<i32>(-1i, 0i, var_1.x, var_1.x) >> (vec4<u32>(u_input.b.x, u_input.a, 33943u, u_input.e.x) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, 2147483647i, global1.c.a.x, -2147483647i), vec4<i32>(var_1.x, 1i, var_1.x, -14392i)), select(-vec4<i32>(-1i, arg_0.b.x, -2147483647i, 49982i), vec4<i32>(-10582i, global1.d.x, var_1.x, arg_1.a.x), vec4<bool>(true, var_0, false, arg_0.e.x))));
    let var_3 = all(!vec4<bool>(!(var_1.x == 1i), 0u >= select(u_input.b.x, 68184u, arg_0.e.x), true, select(false, func_3(), any(vec4<bool>(true, global1.e.x, global1.e.x, true)))));
    let var_4 = _wgslsmith_f_op_f32(-arg_1.b.x);
    return abs(-(~vec2<i32>(select(arg_0.d.x, arg_1.a.x, true), -1i)));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global4.wz), _wgslsmith_f_op_vec2_f32(-global1.c.b.xy)))), _wgslsmith_f_op_vec2_f32(round(global1.c.b.zy)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1.c.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.c.b.yz) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-802f, -2227f))))), !select(select(vec2<bool>(true, false), arg_0.xy, false | arg_0.x), global1.e.yz, global1.e.xx)));
    global1 = Struct_2(-global1.d, ~u_input.c, global1.c, global1.a, !(!(!vec3<bool>(arg_0.x, true, arg_0.x))));
    let var_1 = global1.c;
    global2 = array<bool, 17>();
    var var_2 = 0u;
    return countOneBits(u_input.b.x);
}

fn func_1(arg_0: vec4<u32>) -> vec4<u32> {
    let var_0 = u_input.b.x;
    var var_1 = max(_wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(var_0, 32310u), arg_0.x), 1u, 9860u), u_input.d >> ((~countOneBits(arg_0.x) ^ func_4(global1.e, func_2(Struct_2(vec3<i32>(33883i, 1i, 22012i), global1.b, Struct_1(u_input.c.yx, global1.c.b), vec3<i32>(u_input.c.x, 2147483647i, u_input.c.x), global1.e), global1.c))) % 32u));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-699f)) - _wgslsmith_f_op_f32(global4.x - _wgslsmith_f_op_f32(350f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(275f))))));
    var_1 = _wgslsmith_clamp_u32(_wgslsmith_mod_u32(min(1u, _wgslsmith_sub_u32(60695u, var_0) | _wgslsmith_div_u32(21309u, 4294967295u)), 34050u), ~var_0, arg_0.x | 35251u);
    global0 = array<Struct_1, 1>();
    return ~countOneBits(arg_0);
}

fn func_5(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = ~vec2<i32>(global1.b.x, func_2(global3[_wgslsmith_index_u32(u_input.d, 31u)], Struct_1(u_input.c.xy, vec3<f32>(global1.c.b.x, 496f, 1000f))).x ^ abs(global1.c.a.x));
    global2 = array<bool, 17>();
    var var_1 = global3[_wgslsmith_index_u32(~firstLeadingBit(min(u_input.b.x, u_input.b.x)), 31u)];
    global4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.c.b.x, global4.x, -197f, -797f), vec4<f32>(global1.c.b.x, global4.x, global4.x, global1.c.b.x))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(319f, 197f, global4.x, -1747f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1428f, global1.c.b.x, global4.x, -1988f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, global1.c.b.x, global1.c.b.x, global4.x) * vec4<f32>(global4.x, -549f, var_1.c.b.x, 757f)))), select(!vec4<bool>(false, var_1.e.x, global1.e.x, var_1.e.x), !vec4<bool>(var_1.e.x, true, true, false), !vec4<bool>(false, false, var_1.e.x, global1.e.x)))))));
    global1 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~4294967295u, firstTrailingBit(~0u)), 31u)];
    return Struct_1(firstLeadingBit(u_input.c.zy), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(664f, _wgslsmith_f_op_f32(-var_1.c.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.c.b.x, global1.c.b.x)) + _wgslsmith_f_op_f32(min(1212f, global4.x))), global1.c.b.x) + vec3<f32>(global4.x, -941f, global1.c.b.x)));
}

fn func_6(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = arg_2.a;
    var var_1 = select(vec2<bool>(global1.e.x, !(u_input.b.x >= ~54349u)), !(!global1.e.yy), global1.e.zx);
    let var_2 = !(!select(all(!vec3<bool>(global2[_wgslsmith_index_u32(44956u, 17u)], global2[_wgslsmith_index_u32(u_input.d, 17u)], global1.e.x)), true, !(!var_1.x)));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1508f, -1095f), global1.c.b.x, arg_1, _wgslsmith_f_op_f32(977f + global4.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, -179f, arg_1, 1846f) + vec4<f32>(-386f, 2656f, 307f, global1.c.b.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1526f, 536f, arg_2.b.x, global4.x)))))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -138f)), -925f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2.b.x + global1.c.b.x), -1288f, all(vec2<bool>(false, global1.e.x)))), 374f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, global4.x, -1862f, -590f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-251f, 1541f, arg_2.b.x, 911f))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(607f, 2260f, arg_2.b.x, global1.c.b.x))))), any(select(!vec4<bool>(false, var_2, true, true), select(vec4<bool>(false, true, true, global1.e.x), vec4<bool>(false, true, global1.e.x, global1.e.x), vec4<bool>(false, true, true, true)), !vec4<bool>(false, false, global2[_wgslsmith_index_u32(70607u, 17u)], true))))));
    var_1 = select(global1.e.yy, global1.e.xx, vec2<bool>(global2[_wgslsmith_index_u32(~u_input.d, 17u)], global1.e.x));
    return select(vec4<u32>(firstTrailingBit(u_input.d), u_input.e.x, _wgslsmith_add_u32(u_input.b.x >> ((42929u & u_input.a) % 32u), u_input.a), u_input.e.x), u_input.e, !select(select(vec4<bool>(true, global1.e.x, var_1.x, true), !vec4<bool>(true, var_2, global1.e.x, true), vec4<bool>(true, var_1.x, false, global1.e.x)), !vec4<bool>(false, false, global2[_wgslsmith_index_u32(6854u, 17u)], global1.e.x), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global1.e.x;
    var var_1 = global0[_wgslsmith_index_u32(~(countOneBits(~(~1u)) << (_wgslsmith_dot_vec3_u32((u_input.b | u_input.e.wyx) ^ ~vec3<u32>(10642u, u_input.d, 58428u), _wgslsmith_mult_vec3_u32(vec3<u32>(60841u, u_input.e.x, u_input.d) >> (u_input.b % vec3<u32>(32u)), u_input.e.yxy)) % 32u)), 1u)];
    let var_2 = reverseBits(func_6(vec3<i32>(36762i, ~_wgslsmith_mult_i32(-3886i, -1i), (i32(-1i) * -36i) | u_input.c.x), -594f, func_5(func_1(u_input.e))));
    let var_3 = global1.e;
    var var_4 = !vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1487f)) < _wgslsmith_div_f32(-474f, _wgslsmith_f_op_f32(-global4.x)), all(!vec3<bool>(true, global1.e.x, global1.e.x)), !(_wgslsmith_div_i32(global1.a.x, global1.a.x) <= func_5(u_input.e).a.x), any(vec4<bool>(false, !global2[_wgslsmith_index_u32(u_input.b.x, 17u)], any(vec3<bool>(var_3.x, true, false)), -15667i != u_input.c.x)));
    var var_5 = Struct_1(vec2<i32>(-22649i, u_input.c.x), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b) - global4.zyx)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(-52205i, _wgslsmith_mult_i32(u_input.c.x, u_input.c.x) << (u_input.a % 32u), reverseBits(func_2(Struct_2(vec3<i32>(2147483647i, global1.c.a.x, -2147483647i), vec3<i32>(-27094i, var_1.a.x, 3645i), global0[_wgslsmith_index_u32(var_2.x, 1u)], vec3<i32>(u_input.c.x, 0i, u_input.c.x), vec3<bool>(var_3.x, var_4.x, true)), Struct_1(u_input.c.zx, vec3<f32>(var_5.b.x, -106f, -995f))).x)) >> (~(~(~1u)) % 32u), global4.x);
}

