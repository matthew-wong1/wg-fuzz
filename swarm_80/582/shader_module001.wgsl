struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: vec4<i32>;

var<private> global2: array<Struct_2, 7>;

var<private> global3: array<u32, 25> = array<u32, 25>(1298u, 0u, 44299u, 120259u, 20578u, 4294967295u, 31278u, 11767u, 26155u, 1u, 24815u, 4294967295u, 25184u, 96987u, 0u, 0u, 40344u, 32706u, 0u, 0u, 13386u, 28967u, 4294967295u, 81902u, 15548u);

var<private> global4: array<vec4<u32>, 15>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>) -> bool {
    var var_0 = global2[_wgslsmith_index_u32(59008u, 7u)];
    var var_1 = Struct_2(var_0.d, var_0.c, 151f, arg_1);
    let var_2 = true;
    global0 = -1i;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, var_1.b, var_1.b) * vec3<f32>(-1000f, var_1.b, 132f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(977f, var_1.c, var_1.c) - vec3<f32>(-1011f, var_1.c, var_0.b))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-179f, 110f, var_0.b) - vec3<f32>(1027f, var_1.c, 814f)) * vec3<f32>(var_1.c, var_0.c, -1166f)), var_2)));
    return false;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1836f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(897f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(416f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(675f * -252f) - 1f)))));
    var var_1 = global2[_wgslsmith_index_u32(abs(32487u), 7u)];
    let var_2 = global2[_wgslsmith_index_u32(4294967295u, 7u)];
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1816f, 964f));
    var var_4 = abs(_wgslsmith_sub_u32(arg_1.c.x, 41044u));
    return ~(-(~(-1i)));
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1786f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1803f)))))));
    global0 = firstLeadingBit(_wgslsmith_add_i32(arg_0 & 0i, func_4(vec3<bool>(true, func_3(Struct_1(-1995i, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(27107u, 25u)], 25u)], vec3<u32>(global3[_wgslsmith_index_u32(0u, 25u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(20958u, 25u)], 25u)], global3[_wgslsmith_index_u32(4294967295u, 25u)])), Struct_1(0i, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(43842u, 25u)], 25u)], vec3<u32>(31657u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 32553u)), vec4<bool>(false, false, true, true)), true), Struct_1(~arg_0, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(18958u, 25u)], 25u)] | global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(17454u, 25u)], 25u)], 25u)], 25u)], 25u)], vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 25u)], 25u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 25u)], 25u)], 0u)))));
    var var_1 = all(!select(vec2<bool>(any(vec2<bool>(false, false)), any(vec4<bool>(false, false, false, false))), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), select(false, false, false)), !select(vec2<bool>(false, true), vec2<bool>(false, true), true)));
    var_0 = -2647f;
    global3 = array<u32, 25>();
    return _wgslsmith_mod_u32(global3[_wgslsmith_index_u32(firstLeadingBit(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(16887u, 25u)], 25u)]), 25u)], global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~(~global3[_wgslsmith_index_u32(0u, 25u)])), abs(_wgslsmith_sub_u32(0u, global3[_wgslsmith_index_u32(1u, 25u)])) | 66340u), 25u)]);
}

fn func_5(arg_0: u32, arg_1: vec3<bool>, arg_2: vec4<bool>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = arg_2.wy;
    global3 = array<u32, 25>();
    var var_1 = _wgslsmith_f_op_f32(-arg_3.c);
    var var_2 = !(!arg_2.xxy);
    var_0 = select(!vec2<bool>(any(arg_2.yx), !var_2.x | true), arg_1.zx, select(!vec2<bool>(!arg_2.x, !arg_2.x), arg_1.yz, true));
    return Struct_2(Struct_1(-1i, ~arg_0, select(abs(arg_3.d.c) << (arg_3.a.c % vec3<u32>(32u)), arg_3.a.c, arg_1)), _wgslsmith_f_op_f32(-arg_3.b), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_3.b))), Struct_1(arg_3.a.a, 1u, select(_wgslsmith_div_vec3_u32(vec3<u32>(64670u, 4294967295u, 1u), arg_3.a.c) & ~arg_3.a.c, ~(~arg_3.d.c), vec3<bool>(true, any(var_2.xx), !var_0.x))));
}

fn func_1() -> u32 {
    var var_0 = u_input.a.x;
    var var_1 = func_5(~func_2(-(~global1.x)), select(select(vec3<bool>(true, all(vec3<bool>(true, false, true)), true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), func_3(Struct_1(-1i, 1u, vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(1u, 25u)], 25499u)), Struct_1(2147483647i, 10612u, vec3<u32>(24135u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 25u)], 1u)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)))), vec4<bool>(!func_3(Struct_1(25418i, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 25u)], vec3<u32>(global3[_wgslsmith_index_u32(13917u, 25u)], 20471u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 25u)], 25u)])), Struct_1(-1i, 17808u, vec3<u32>(4294967295u, 0u, 9322u)), vec4<bool>(true, true, true, false)), true, true, true), select(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), false)), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true))))), Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, global1.x, u_input.a.x), firstTrailingBit(global1.zwy)), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(1u, 25u)], 25u)], 25u)], ~(~vec3<u32>(global3[_wgslsmith_index_u32(0u, 25u)], global3[_wgslsmith_index_u32(1u, 25u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1559u, 25u)], 25u)]))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1370f, _wgslsmith_f_op_f32(670f + -357f))), -507f, _wgslsmith_sub_i32(u_input.a.x, global1.x) != u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1029f), _wgslsmith_f_op_f32(757f + -414f)))), Struct_1(firstLeadingBit(0i), func_2(~0i), ~vec3<u32>(global3[_wgslsmith_index_u32(11491u, 25u)], 1u, 64293u))));
    let var_2 = var_1.a;
    global0 = ~53318i;
    global0 = ~(~min(1i >> (global3[_wgslsmith_index_u32(26128u, 25u)] % 32u), min(-2147483647i, var_1.a.a)) ^ (reverseBits(u_input.a.x) << (_wgslsmith_mod_u32(44928u, 22399u) % 32u)));
    return 0u;
}

fn func_6(arg_0: f32, arg_1: i32) -> Struct_2 {
    global2 = array<Struct_2, 7>();
    global0 = func_5(func_1(), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), 393f != arg_0), vec3<bool>(13441u <= global3[_wgslsmith_index_u32(4294967295u, 25u)], false, true), !(arg_1 > u_input.a.x)), select(select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), func_3(Struct_1(global1.x, global3[_wgslsmith_index_u32(27981u, 25u)], vec3<u32>(31329u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 1u)), Struct_1(arg_1, global3[_wgslsmith_index_u32(7549u, 25u)], vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 25u)], 25u)], 25u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 25u)], 25u)], 25u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(38787u, 25u)], 25u)], 25u)])), vec4<bool>(true, true, true, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), false), vec4<bool>(false, false, true, true)), arg_0 >= arg_0), select(vec4<bool>(false, true, true, all(vec3<bool>(true, true, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false)), true), (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(5884u, 25u)], 25u)] ^ global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 25u)], 25u)]) > global3[_wgslsmith_index_u32(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 25u)], 1u), 25u)]), any(select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, false), true))), func_5(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(3014u, countOneBits(1u)), 25u)], select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, 4294967295u > global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 25u)], 25u)], all(vec3<bool>(false, true, true)), any(vec2<bool>(false, true))), func_3(func_5(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 25u)], 25u)], 25u)], 25u)], 25u)], vec3<bool>(true, true, true), vec4<bool>(false, true, false, false), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(57u, 25u)], 7u)]).d, func_5(1u, vec3<bool>(true, true, true), vec4<bool>(true, false, false, true), Struct_2(Struct_1(2147483647i, 88148u, vec3<u32>(global3[_wgslsmith_index_u32(0u, 25u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(33813u, 25u)], 25u)], 1u)), arg_0, arg_0, Struct_1(global1.x, 4294967295u, vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(8070u, 25u)], 25u)], 1u, 0u)))).d, select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), true))), func_5(~_wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(53876u, 25u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 25u)], 25u)], global3[_wgslsmith_index_u32(1u, 25u)]), vec3<u32>(global3[_wgslsmith_index_u32(17124u, 25u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 25u)], 25u)], 25u)], 25u)], 62625u)), vec3<bool>(any(vec4<bool>(true, false, true, true)), true, global3[_wgslsmith_index_u32(235u, 25u)] >= 4294967295u), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false)), true), global2[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 25u)], 25u)], 25u)], global3[_wgslsmith_index_u32(15795u, 25u)]), 25u)], 7u)]))).d.a;
    global4 = array<vec4<u32>, 15>();
    let var_0 = min(min(vec4<u32>(~(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 25u)], 25u)]), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(func_2(24653i), 25u)], 25u)], 25u)], 25u)] ^ global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(25495u, 25u)], 25u)], 21543u << ((4294967295u ^ global3[_wgslsmith_index_u32(4046u, 25u)]) % 32u), firstLeadingBit(0u)), global4[_wgslsmith_index_u32(13695u ^ global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(29507u, 25u)], 52481u), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 25u)], 25u)], global3[_wgslsmith_index_u32(4294967295u, 25u)])), 25u)], 15u)] | (vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 25u)], 25u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 25u)], 25u)], 25u)], 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 25u)], 25u)], 25u)]) | reverseBits(global4[_wgslsmith_index_u32(10015u, 15u)]))), global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(firstTrailingBit(0u), 25u)], 15u)]);
    global2 = array<Struct_2, 7>();
    return Struct_2(func_5(1u, !vec3<bool>(all(vec2<bool>(true, true)), true, true), vec4<bool>(any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(f32(-1f) * -490f) <= _wgslsmith_f_op_f32(-arg_0), _wgslsmith_div_f32(arg_0, arg_0) < _wgslsmith_div_f32(-1545f, -1222f), false), Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), var_0.x, min(var_0.xwy, var_0.wwz)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -893f)), func_5(global3[_wgslsmith_index_u32(reverseBits(var_0.x), 25u)], vec3<bool>(true, true, true), vec4<bool>(false, false, true, false), func_5(var_0.x, vec3<bool>(true, false, true), vec4<bool>(true, false, true, true), Struct_2(Struct_1(arg_1, 20740u, vec3<u32>(var_0.x, 29358u, global3[_wgslsmith_index_u32(39848u, 25u)])), 268f, arg_0, Struct_1(16306i, 109656u, var_0.wxw)))).d)).a, arg_0, _wgslsmith_f_op_f32(1051f * _wgslsmith_div_f32(-396f, _wgslsmith_f_op_f32(abs(332f)))), func_5(25578u, vec3<bool>(true, true, true), vec4<bool>(true, any(vec4<bool>(false, false, false, false)), all(vec4<bool>(true, true, false, false)), false), Struct_2(func_5(~var_0.x, select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), false), global2[_wgslsmith_index_u32(31007u << (var_0.x % 32u), 7u)]).d, 407f, arg_0, func_5(58291u << (global3[_wgslsmith_index_u32(5184u, 25u)] % 32u), vec3<bool>(true, true, false), vec4<bool>(true, true, true, true), Struct_2(Struct_1(arg_1, global3[_wgslsmith_index_u32(1u, 25u)], var_0.zyw), 942f, arg_0, Struct_1(-1i, global3[_wgslsmith_index_u32(54004u, 25u)], var_0.wwx))).d)).d);
}

fn func_7(arg_0: bool, arg_1: u32, arg_2: vec4<u32>, arg_3: Struct_2) -> StorageBuffer {
    var var_0 = _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(select(vec3<i32>(_wgslsmith_sub_i32(-17588i, u_input.a.x), -9154i >> (arg_3.d.b % 32u), -2147483647i), select(-vec3<i32>(17440i, global1.x, u_input.a.x), select(vec3<i32>(-1i, arg_3.d.a, 0i), vec3<i32>(-41716i, 8256i, -29375i), vec3<bool>(arg_0, false, true)), all(vec4<bool>(false, arg_0, false, arg_0))), !(global1.x == arg_3.a.a)), abs(abs(global1.zwy))), global1.x);
    var var_1 = 18943u;
    var var_2 = _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(29541i, -1i, arg_3.d.a, -2147483647i), u_input.a), arg_3.d.a, arg_3.d.a), select(vec3<i32>(global1.x, arg_3.d.a, 60986i), u_input.a.yyw, !vec3<bool>(false, arg_0, true))) ^ vec3<i32>(0i, 40709i, func_4(vec3<bool>(true, true, arg_0), func_5(16547u, vec3<bool>(false, arg_0, arg_0), vec4<bool>(false, arg_0, false, false), Struct_2(arg_3.d, arg_3.c, 584f, Struct_1(u_input.a.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_2.x, 25u)], 25u)], arg_3.d.c))).d)), global1.zxw);
    var var_3 = _wgslsmith_f_op_f32(ceil(1754f));
    var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1069f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_5(global3[_wgslsmith_index_u32(0u, 25u)], vec3<bool>(true, arg_0, false), vec4<bool>(false, arg_0, true, arg_0), arg_3).c)))), _wgslsmith_f_op_f32(-arg_3.b)));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.c, arg_3.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(954f)) - 152f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_3.c, arg_3.b, arg_3.b), vec3<f32>(805f, arg_3.c, arg_3.b))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1076f, -662f, 1000f) + vec3<f32>(arg_3.c, arg_3.c, arg_3.b))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-301f, -334f, arg_3.b) * vec3<f32>(arg_3.c, 334f, -454f))))), arg_3.a.c.zy, arg_3.a.c.yy << (_wgslsmith_mod_vec2_u32(func_5(9435u, vec3<bool>(false, arg_0, arg_0), !vec4<bool>(arg_0, arg_0, arg_0, true), Struct_2(arg_3.d, arg_3.b, -1000f, arg_3.d)).a.c.yz, ~vec2<u32>(arg_2.x, 16215u)) % vec2<u32>(32u)), func_5(1u, !vec3<bool>(true, true, arg_0), vec4<bool>(!any(vec3<bool>(arg_0, arg_0, false)), all(vec3<bool>(true, true, true)), true, true), func_5(func_2(~(-16411i)), !vec3<bool>(true, arg_0, arg_0), !(!vec4<bool>(arg_0, arg_0, false, false)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(38233u, 25u)], 410u, 115982u), vec3<u32>(arg_3.d.b, arg_2.x, arg_3.d.c.x)), 7u)])).d.c.xx, 663f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(global3[_wgslsmith_index_u32(37808u, 25u)]);
    let x = u_input.a;
    s_output = func_7(true, 15557u, global4[_wgslsmith_index_u32(1u, 15u)], func_6(-863f, -2147483647i << (~func_1() % 32u)));
}

