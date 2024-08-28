struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9> = array<bool, 9>(false, false, true, false, false, true, true, false, true);

var<private> global1: array<Struct_4, 25> = array<Struct_4, 25>(Struct_4(2147483647i, Struct_1(vec3<i32>(13844i, 35641i, 2147483647i), 26116i), 0u, Struct_1(vec3<i32>(-70261i, 59199i, 40084i), 24165i)), Struct_4(-3057i, Struct_1(vec3<i32>(i32(-2147483648), -16089i, -45002i), 0i), 1u, Struct_1(vec3<i32>(2147483647i, -47456i, 1i), 1i)), Struct_4(-1i, Struct_1(vec3<i32>(-22088i, 1i, 0i), -40141i), 4294967295u, Struct_1(vec3<i32>(i32(-2147483648), -1i, -46948i), i32(-2147483648))), Struct_4(-8685i, Struct_1(vec3<i32>(2147483647i, 1i, 0i), -1518i), 0u, Struct_1(vec3<i32>(1i, -6863i, 11331i), -14779i)), Struct_4(i32(-2147483648), Struct_1(vec3<i32>(1i, 68866i, 35058i), 1i), 0u, Struct_1(vec3<i32>(-29433i, 0i, -43144i), -24929i)), Struct_4(-2320i, Struct_1(vec3<i32>(4515i, -32801i, 0i), 5120i), 4294967295u, Struct_1(vec3<i32>(-51123i, 0i, -6340i), 2147483647i)), Struct_4(2147483647i, Struct_1(vec3<i32>(1653i, -41406i, i32(-2147483648)), -35438i), 1u, Struct_1(vec3<i32>(1i, -1i, 2147483647i), -11198i)), Struct_4(33680i, Struct_1(vec3<i32>(0i, 0i, 47308i), 49454i), 20902u, Struct_1(vec3<i32>(1i, 15470i, i32(-2147483648)), -41420i)), Struct_4(i32(-2147483648), Struct_1(vec3<i32>(1i, 0i, i32(-2147483648)), -1i), 32259u, Struct_1(vec3<i32>(31283i, 2147483647i, -38228i), 33668i)), Struct_4(0i, Struct_1(vec3<i32>(-1i, 1i, 30322i), -34244i), 27772u, Struct_1(vec3<i32>(2147483647i, 13176i, 35513i), 2147483647i)), Struct_4(-42285i, Struct_1(vec3<i32>(19349i, -1i, 0i), 20305i), 1u, Struct_1(vec3<i32>(-1i, 5603i, 2147483647i), -38239i)), Struct_4(-37166i, Struct_1(vec3<i32>(27132i, -13393i, 2147483647i), 12044i), 3551u, Struct_1(vec3<i32>(0i, -45167i, 0i), 2147483647i)), Struct_4(5463i, Struct_1(vec3<i32>(2147483647i, -51361i, -37282i), 0i), 1u, Struct_1(vec3<i32>(38544i, 2569i, -1i), i32(-2147483648))), Struct_4(2670i, Struct_1(vec3<i32>(-6426i, 0i, 2147483647i), -1i), 3985u, Struct_1(vec3<i32>(912i, 1i, 1i), -140i)), Struct_4(-22184i, Struct_1(vec3<i32>(-12345i, 80710i, -5487i), -75243i), 14720u, Struct_1(vec3<i32>(-7402i, i32(-2147483648), 43534i), -1i)), Struct_4(1i, Struct_1(vec3<i32>(-19026i, 2147483647i, 9990i), 2147483647i), 4294967295u, Struct_1(vec3<i32>(1i, -1i, 0i), 2165i)), Struct_4(14062i, Struct_1(vec3<i32>(1i, 35550i, 15905i), i32(-2147483648)), 64343u, Struct_1(vec3<i32>(-1i, -13842i, 44414i), 2147483647i)), Struct_4(-102011i, Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, -1i), 2147483647i), 1u, Struct_1(vec3<i32>(-42500i, -1i, 6072i), 0i)), Struct_4(-1i, Struct_1(vec3<i32>(-31706i, -1i, -34451i), i32(-2147483648)), 4294967295u, Struct_1(vec3<i32>(1i, -17797i, -1i), 0i)), Struct_4(2147483647i, Struct_1(vec3<i32>(2147483647i, 70836i, 6780i), -1i), 0u, Struct_1(vec3<i32>(2402i, 2147483647i, i32(-2147483648)), 9444i)), Struct_4(-70079i, Struct_1(vec3<i32>(1i, 2147483647i, i32(-2147483648)), 2147483647i), 0u, Struct_1(vec3<i32>(0i, 2147483647i, i32(-2147483648)), -74802i)), Struct_4(-1i, Struct_1(vec3<i32>(14500i, 10098i, -53980i), 988i), 15377u, Struct_1(vec3<i32>(16954i, -7145i, 1i), i32(-2147483648))), Struct_4(-36606i, Struct_1(vec3<i32>(-26116i, -16344i, i32(-2147483648)), 2147483647i), 4294967295u, Struct_1(vec3<i32>(0i, -6014i, 33606i), 1i)), Struct_4(1404i, Struct_1(vec3<i32>(48372i, 0i, 1i), -22389i), 0u, Struct_1(vec3<i32>(36052i, i32(-2147483648), 0i), -1i)), Struct_4(1i, Struct_1(vec3<i32>(2676i, i32(-2147483648), -28615i), -7669i), 12641u, Struct_1(vec3<i32>(94604i, -8328i, 42843i), -19475i)));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec3<f32>) -> f32 {
    var var_0 = select(vec3<u32>(_wgslsmith_mod_u32(10917u, u_input.c.x) | 17770u, max(_wgslsmith_div_u32(u_input.c.x, ~1u), ~(~u_input.c.x)), reverseBits(u_input.d.x)), ~firstTrailingBit(min(vec3<u32>(u_input.d.x, 17221u, u_input.b), max(u_input.c, u_input.c))), select(!(!(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 9u)], false, global0[_wgslsmith_index_u32(11361u, 9u)]))), select(!(!vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 9u)], true, global0[_wgslsmith_index_u32(u_input.c.x, 9u)])), !(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 9u)], false, global0[_wgslsmith_index_u32(u_input.c.x, 9u)])), vec3<bool>(true, true, global0[_wgslsmith_index_u32(18253u, 9u)])), any(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 9u)] || global0[_wgslsmith_index_u32(u_input.b, 9u)], true, !global0[_wgslsmith_index_u32(30552u, 9u)]))));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.x, u_input.d.x), 9u)];
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1537f, arg_2.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -649f))), _wgslsmith_f_op_f32(sign(141f))))));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec2<i32>) -> Struct_1 {
    global1 = array<Struct_4, 25>();
    var var_0 = global0[_wgslsmith_index_u32(u_input.c.x, 9u)];
    global0 = array<bool, 9>();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(695f, -218f, 1208f, -1306f) * vec4<f32>(1086f, 603f, -129f, 1000f))) * vec4<f32>(_wgslsmith_f_op_f32(trunc(-1203f)), _wgslsmith_f_op_f32(floor(-1722f)), 2658f, _wgslsmith_f_op_f32(func_3(-2147483647i, Struct_1(vec3<i32>(-2147483647i, arg_0.b, arg_1), 18656i), vec4<f32>(692f, -1511f, 2259f, 604f), vec3<f32>(155f, -421f, 423f))))) + vec4<f32>(_wgslsmith_f_op_f32(-181f * -310f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(196f - -2439f))), _wgslsmith_f_op_f32(f32(-1f) * -1024f), -1634f)) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-939f)), _wgslsmith_f_op_f32(-540f - -1477f), -513f, _wgslsmith_div_f32(-160f, -509f)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 123f, 1621f, 520f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1860f, -538f, -841f, 282f) - vec4<f32>(1000f, 403f, 101f, -1437f)), !vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.b, 9u)], global0[_wgslsmith_index_u32(0u, 9u)])))))));
    var var_2 = Struct_3(u_input.c, var_1.x, any(vec3<bool>(true, true, any(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 9u)], false)))));
    return arg_0;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: u32) -> u32 {
    let var_0 = func_2(Struct_1(reverseBits(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(7149i, 27133i, -1i), vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, -6268i), vec3<i32>(-17363i, 2147483647i, u_input.a.x)))), ~1i), ~u_input.a.x, _wgslsmith_add_vec2_i32(u_input.a, u_input.a));
    global0 = array<bool, 9>();
    let var_1 = select(vec3<bool>(true, global0[_wgslsmith_index_u32(~arg_2, 9u)], global0[_wgslsmith_index_u32(arg_2, 9u)]), !vec3<bool>(true, global0[_wgslsmith_index_u32(~abs(arg_0), 9u)], global0[_wgslsmith_index_u32(~abs(u_input.b), 9u)]), select(select(select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(34971u, 9u)]), select(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(arg_1, 9u)]), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(7429u, 9u)], false), true), vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(28729u, 9u)])), !vec3<bool>(global0[_wgslsmith_index_u32(arg_1, 9u)], global0[_wgslsmith_index_u32(u_input.c.x, 9u)], false), select(!vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 9u)], false), !vec3<bool>(false, global0[_wgslsmith_index_u32(arg_1, 9u)], true), global0[_wgslsmith_index_u32(~72354u, 9u)])), vec3<bool>(true, all(select(vec2<bool>(true, global0[_wgslsmith_index_u32(123032u, 9u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 9u)], global0[_wgslsmith_index_u32(16467u, 9u)]), global0[_wgslsmith_index_u32(4294967295u, 9u)])), any(!vec3<bool>(false, true, global0[_wgslsmith_index_u32(1u, 9u)]))), select(!vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)]), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 9u)], global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(arg_2, 9u)]), select(select(vec3<bool>(global0[_wgslsmith_index_u32(arg_0, 9u)], global0[_wgslsmith_index_u32(13551u, 9u)], global0[_wgslsmith_index_u32(61482u, 9u)]), vec3<bool>(true, true, true), true), !vec3<bool>(true, global0[_wgslsmith_index_u32(arg_1, 9u)], global0[_wgslsmith_index_u32(arg_0, 9u)]), any(vec4<bool>(global0[_wgslsmith_index_u32(arg_0, 9u)], false, global0[_wgslsmith_index_u32(u_input.b, 9u)], global0[_wgslsmith_index_u32(0u, 9u)]))))));
    let var_2 = _wgslsmith_clamp_vec2_i32(var_0.a.xy, u_input.a, reverseBits(-u_input.a & ~(vec2<i32>(-2147483647i, 2147483647i) & vec2<i32>(u_input.a.x, var_0.b))));
    var var_3 = Struct_1(vec3<i32>(1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a.x, var_2.x, var_2.x)), var_0.a), firstLeadingBit(~u_input.a.x)), -1i), i32(-1i) * -var_0.a.x);
    return arg_1 << (arg_1 % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 9>();
    var var_0 = func_1(~0u, ~(~(_wgslsmith_div_u32(u_input.b, 52968u) | abs(u_input.b))), u_input.b);
    var var_1 = 783f;
    let var_2 = -u_input.a.x;
    let var_3 = _wgslsmith_sub_vec3_i32(select(vec3<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(-48803i, u_input.a.x, var_2, var_2), select(vec4<i32>(u_input.a.x, 0i, 1i, var_2), vec4<i32>(u_input.a.x, var_2, u_input.a.x, var_2), global0[_wgslsmith_index_u32(u_input.b, 9u)])), max(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), -var_2)), vec3<i32>(i32(-1i) * -var_2, ~var_2, _wgslsmith_div_i32(-var_2, firstTrailingBit(-1i))), vec3<bool>(false, any(!vec2<bool>(false, global0[_wgslsmith_index_u32(18387u, 9u)])), true)), select((vec3<i32>(-976i, var_2, -1i) ^ select(vec3<i32>(u_input.a.x, u_input.a.x, 26944i), vec3<i32>(65733i, 0i, -2147483647i), false)) | vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_2, u_input.a.x), vec3<i32>(u_input.a.x, var_2, 0i)), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), func_2(Struct_1(vec3<i32>(var_2, var_2, 0i), var_2), var_2, u_input.a).a.x), reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, var_2, -1i), vec3<i32>(0i, var_2, 0i)) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, var_2, var_2), vec3<i32>(var_2, -39955i, u_input.a.x))), global0[_wgslsmith_index_u32(u_input.d.x, 9u)]));
    var var_4 = func_2(func_2(func_2(func_2(Struct_1(var_3, -2147483647i), _wgslsmith_dot_vec2_i32(var_3.zz, u_input.a), vec2<i32>(var_3.x, -32399i)), -_wgslsmith_mod_i32(-40623i, -16981i), u_input.a), u_input.a.x, var_3.yx), max(-var_3.x, firstLeadingBit(-24583i)), u_input.a);
    var var_5 = Struct_3(_wgslsmith_div_vec3_u32(vec3<u32>(~1u, u_input.b, min(6316u, 12027u) >> ((u_input.b << (u_input.b % 32u)) % 32u)), _wgslsmith_div_vec3_u32(max(u_input.c, u_input.c) & vec3<u32>(1u, 43863u, 12063u), countOneBits(vec3<u32>(0u, 1u, 0u)) & vec3<u32>(u_input.c.x, 22548u, u_input.b))), 951f, -min(var_3.x, -25341i) < (-func_2(Struct_1(var_3, var_3.x), var_2, var_3.zy).b | var_4.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(-(~vec4<i32>(var_3.x, 0i, 1i, u_input.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1027f));
}

