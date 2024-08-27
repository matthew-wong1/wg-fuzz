struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<f32, 16>;

var<private> global2: Struct_2;

var<private> global3: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(vec2<f32>(723f, 199f), Struct_1(vec2<f32>(513f, -1835f), vec4<i32>(-1i, -1i, 2147483647i, i32(-2147483648)), 38203u), Struct_1(vec2<f32>(883f, -1039f), vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, -1i), 0u)), Struct_2(vec2<f32>(588f, 600f), Struct_1(vec2<f32>(336f, 130f), vec4<i32>(-45755i, 1642i, 10544i, -1i), 0u), Struct_1(vec2<f32>(-101f, 1196f), vec4<i32>(i32(-2147483648), -1i, 4305i, 0i), 4294967295u)), Struct_2(vec2<f32>(974f, -173f), Struct_1(vec2<f32>(-297f, 1339f), vec4<i32>(2147483647i, 0i, -1i, -6558i), 48340u), Struct_1(vec2<f32>(-1059f, -660f), vec4<i32>(-28057i, -4267i, 0i, -41559i), 97220u)), Struct_2(vec2<f32>(-553f, 2289f), Struct_1(vec2<f32>(-628f, 1147f), vec4<i32>(i32(-2147483648), 29065i, -2833i, -1i), 19146u), Struct_1(vec2<f32>(-2195f, 1584f), vec4<i32>(2147483647i, i32(-2147483648), 26838i, 14002i), 1u)), Struct_2(vec2<f32>(434f, -813f), Struct_1(vec2<f32>(-116f, 617f), vec4<i32>(19298i, -26803i, 3621i, 0i), 1u), Struct_1(vec2<f32>(-657f, 532f), vec4<i32>(-12521i, 0i, -21172i, 24308i), 34012u)), Struct_2(vec2<f32>(256f, -634f), Struct_1(vec2<f32>(1040f, -334f), vec4<i32>(-21905i, 1i, -1i, 15724i), 95355u), Struct_1(vec2<f32>(580f, -1750f), vec4<i32>(5089i, 2147483647i, 15569i, -3518i), 58917u)), Struct_2(vec2<f32>(-1215f, -679f), Struct_1(vec2<f32>(-565f, 296f), vec4<i32>(-15862i, 17401i, 25524i, 38194i), 42586u), Struct_1(vec2<f32>(915f, -582f), vec4<i32>(-1i, 55323i, 20043i, 28651i), 58692u)), Struct_2(vec2<f32>(1230f, 154f), Struct_1(vec2<f32>(2454f, -526f), vec4<i32>(19839i, i32(-2147483648), 2147483647i, -33137i), 29849u), Struct_1(vec2<f32>(1124f, 737f), vec4<i32>(9784i, -1i, 0i, -5512i), 1u)), Struct_2(vec2<f32>(-494f, -1181f), Struct_1(vec2<f32>(419f, 1206f), vec4<i32>(-32717i, i32(-2147483648), -29615i, i32(-2147483648)), 1405u), Struct_1(vec2<f32>(-1000f, 940f), vec4<i32>(22922i, 1i, 44709i, 58536i), 63768u)), Struct_2(vec2<f32>(-1000f, 1067f), Struct_1(vec2<f32>(-633f, -881f), vec4<i32>(1i, 2147483647i, 34976i, -1i), 140989u), Struct_1(vec2<f32>(521f, 1332f), vec4<i32>(2147483647i, 1i, 47092i, -29274i), 1u)), Struct_2(vec2<f32>(-722f, 1791f), Struct_1(vec2<f32>(-273f, -1772f), vec4<i32>(-32920i, -16114i, 1i, 1i), 1u), Struct_1(vec2<f32>(1431f, 711f), vec4<i32>(0i, i32(-2147483648), -24233i, 19944i), 4294967295u)), Struct_2(vec2<f32>(-1000f, -1466f), Struct_1(vec2<f32>(263f, 688f), vec4<i32>(-1i, 1i, -958i, 1i), 16239u), Struct_1(vec2<f32>(-659f, 1378f), vec4<i32>(0i, 1i, 17336i, 1298i), 44383u)), Struct_2(vec2<f32>(-589f, -817f), Struct_1(vec2<f32>(1131f, -1787f), vec4<i32>(i32(-2147483648), 0i, -33678i, 2147483647i), 48125u), Struct_1(vec2<f32>(1000f, 270f), vec4<i32>(-1i, -25806i, 2147483647i, -1204i), 0u)), Struct_2(vec2<f32>(-2557f, -600f), Struct_1(vec2<f32>(322f, 323f), vec4<i32>(2147483647i, 1i, -58665i, -1i), 4294967295u), Struct_1(vec2<f32>(1133f, -2850f), vec4<i32>(1i, i32(-2147483648), 19038i, 2147483647i), 1u)), Struct_2(vec2<f32>(645f, -303f), Struct_1(vec2<f32>(-1379f, 1436f), vec4<i32>(43324i, 2147483647i, i32(-2147483648), -5731i), 9927u), Struct_1(vec2<f32>(-605f, 1221f), vec4<i32>(-1i, i32(-2147483648), -1i, -1i), 1u)), Struct_2(vec2<f32>(-1811f, -921f), Struct_1(vec2<f32>(-377f, -1000f), vec4<i32>(-25601i, -28438i, -1i, -7196i), 4294967295u), Struct_1(vec2<f32>(422f, 1696f), vec4<i32>(-1i, 1i, -1i, 54290i), 64070u)));

var<private> global4: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec4<bool>) -> u32 {
    let var_0 = -1207f;
    global0 = Struct_2(global0.c.a, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0 - global2.b.a.x), global0.c.a.x)), arg_1), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_div_i32(-1i, 1i), -68171i, min(74808i, global0.c.b.x)), vec4<i32>(u_input.a.x, 1i, global0.c.b.x, global0.b.b.x | -2147483647i), ~(vec4<i32>(global0.c.b.x, 0i, 28308i, u_input.a.x) | global2.c.b)), 38843u), global0.c);
    global2 = Struct_2(global2.c.a, global2.c, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global0.b.a, vec2<f32>(1361f, arg_1)))), global2.b.b, ~19504u));
    global4 = _wgslsmith_dot_vec2_u32(vec2<u32>(global0.c.c, 63034u), vec2<u32>(~global2.c.c, ~min(global0.c.c, _wgslsmith_clamp_u32(20391u, global0.c.c, 26674u))));
    global4 = ~_wgslsmith_mod_u32(0u, _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(16608u, 1u, u_input.b, 1u), vec4<u32>(u_input.b, global0.c.c, global2.c.c, global2.b.c)), vec4<u32>(global2.c.c, u_input.b & global0.b.c, 1u, firstLeadingBit(u_input.b))));
    return u_input.c;
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~(~u_input.c), 16u)]), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -265f), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(~4472u, 16u)], _wgslsmith_div_f32(-1892f, global2.a.x)))))));
    global2 = global3[_wgslsmith_index_u32(select(_wgslsmith_div_u32(global2.c.c, reverseBits(~arg_1 ^ firstLeadingBit(54563u))), _wgslsmith_add_u32(~(~4294967295u) >> (min(~arg_1, global0.c.c) % 32u), ~abs(_wgslsmith_add_u32(arg_1, 2788u))), true), 16u)];
    let var_1 = global2.b;
    global3 = array<Struct_2, 16>();
    global0 = Struct_2(var_1.a, arg_2, arg_2);
    return vec2<f32>(-790f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.a.x, 1067f)) * _wgslsmith_f_op_f32(-1464f + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 16u)] - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0.x, 16u)])))));
}

fn func_1(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_2) -> vec2<f32> {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(234f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1199f * global1[_wgslsmith_index_u32(7895u, 16u)]), global2.b.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.x - 1230f)))), ((!arg_0.x && (-2147483647i <= global2.c.b.x)) | all(!vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x))) && arg_0.x));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-298f, -489f) + global0.b.a) * vec2<f32>(366f, arg_2.c.a.x)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, 730f) * _wgslsmith_f_op_vec2_f32(-global2.c.a))) * _wgslsmith_f_op_vec2_f32(func_3(vec2<u32>(~global0.c.c, select(global2.c.c, 4294967295u, true)), func_2(select(true, false, false), -1425f, vec4<bool>(arg_0.x, arg_0.x, true, false)), Struct_1(vec2<f32>(-550f, -440f), abs(vec4<i32>(1i, -27192i, arg_2.c.b.x, -2147483647i)), ~arg_2.c.c)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1094f, global2.c.a.x, arg_0.x)) * global2.b.a.x)) + _wgslsmith_f_op_vec2_f32(-global2.b.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 5394u;
    let var_1 = -global2.b.b ^ -(abs(vec4<i32>(u_input.a.x, 1i, -33476i, 1i)) & select(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.c.b.x, u_input.a.x, global0.b.b.x, 2147483647i), global0.c.b, vec4<i32>(22040i, -74655i, global2.b.b.x, global2.c.b.x)), vec4<i32>(-2147483647i, global2.b.b.x, u_input.a.x, global2.b.b.x), false));
    global4 = u_input.c;
    let var_2 = global2.c.b.x;
    global2 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-2262f * global2.b.a.x), _wgslsmith_f_op_f32(-global0.b.a.x)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(320f, 245f)) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_1(vec2<bool>(false, true), global1[_wgslsmith_index_u32(var_0, 16u)], global3[_wgslsmith_index_u32(global0.b.c, 16u)]))))), _wgslsmith_mod_vec4_i32(global2.c.b, vec4<i32>(max(u_input.a.x, u_input.a.x), _wgslsmith_mod_i32(u_input.a.x, global2.c.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a.x), var_1.yz), firstTrailingBit(var_1.x))), ~(var_0 << (u_input.b % 32u))), global0.c);
    var var_3 = global2.b;
    var var_4 = !select(select(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, true), true));
    var var_5 = vec2<bool>(any(vec2<bool>(var_4.x, true)), !var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.x, 1744f, -456f, -509f))), _wgslsmith_div_vec4_f32(vec4<f32>(global2.c.a.x, -811f, 1452f, global1[_wgslsmith_index_u32(global0.c.c, 16u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(1374f, -191f, global0.b.a.x, -1000f) - vec4<f32>(-736f, global1[_wgslsmith_index_u32(18338u, 16u)], var_3.a.x, global0.a.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-135f, global2.a.x, -1000f, 1200f) - vec4<f32>(1978f, 1788f, global0.c.a.x, global1[_wgslsmith_index_u32(global0.b.c, 16u)]))))), firstLeadingBit(vec4<u32>(1u, _wgslsmith_add_u32(~4294967295u, 4294967295u), var_0, reverseBits(global0.c.c))), var_3.c, func_2(all(vec2<bool>(var_4.x, false)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(global0.a.x, -1088f, var_5.x)), _wgslsmith_f_op_f32(sign(global0.a.x)))))), vec4<bool>(var_5.x, false, true, any(select(vec2<bool>(var_4.x, true), vec2<bool>(var_4.x, true), true)))));
}

