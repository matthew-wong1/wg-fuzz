struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(0u, 10732u, vec4<i32>(-10175i, -26639i, -40545i, i32(-2147483648)), vec2<i32>(-80554i, 1i), false), Struct_1(30275u, 4294967295u, vec4<i32>(1i, i32(-2147483648), -6928i, 2147483647i), vec2<i32>(30492i, -3820i), false), Struct_1(78623u, 81872u, vec4<i32>(0i, 2147483647i, 52170i, 2147483647i), vec2<i32>(1i, 1i), false), Struct_1(26504u, 5647u, vec4<i32>(1i, 3338i, -21226i, 16684i), vec2<i32>(1i, 0i), false), Struct_1(6069u, 12695u, vec4<i32>(0i, 46248i, 7599i, -1i), vec2<i32>(1i, 23205i), true), Struct_1(12781u, 0u, vec4<i32>(-50995i, 1i, -9363i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -17064i), true), Struct_1(12705u, 67148u, vec4<i32>(2147483647i, -1i, -16232i, 38923i), vec2<i32>(2147483647i, i32(-2147483648)), true), Struct_1(56679u, 4294967295u, vec4<i32>(-1i, 37950i, -1884i, 0i), vec2<i32>(0i, -49948i), false), Struct_1(4004u, 66013u, vec4<i32>(0i, 0i, 2147483647i, -18011i), vec2<i32>(41377i, 33601i), false), Struct_1(4294967295u, 0u, vec4<i32>(22383i, -1i, -34943i, 1i), vec2<i32>(-39025i, -35529i), true), Struct_1(0u, 16999u, vec4<i32>(8547i, 11702i, 19550i, -47221i), vec2<i32>(-19536i, 59802i), false), Struct_1(4294967295u, 4294967295u, vec4<i32>(-68567i, 1i, -30973i, 31948i), vec2<i32>(1i, 7281i), false), Struct_1(4294967295u, 0u, vec4<i32>(-1i, 4954i, 0i, 0i), vec2<i32>(29225i, 39604i), true), Struct_1(4294967295u, 4294967295u, vec4<i32>(-4420i, 29609i, i32(-2147483648), 2147483647i), vec2<i32>(-20632i, 11024i), true), Struct_1(93831u, 4294967295u, vec4<i32>(4522i, 2147483647i, i32(-2147483648), -12306i), vec2<i32>(1i, 2147483647i), true), Struct_1(100270u, 4294967295u, vec4<i32>(1i, -7602i, -18016i, 0i), vec2<i32>(3341i, -44395i), true), Struct_1(43162u, 26368u, vec4<i32>(18828i, i32(-2147483648), 2147483647i, 1i), vec2<i32>(1i, 2147483647i), false), Struct_1(32409u, 4294967295u, vec4<i32>(2147483647i, i32(-2147483648), 1i, 1i), vec2<i32>(-28112i, 13680i), true), Struct_1(18060u, 68633u, vec4<i32>(-26331i, i32(-2147483648), 1i, 22003i), vec2<i32>(1i, -1i), true), Struct_1(1u, 4294967295u, vec4<i32>(-1i, 19747i, -1i, 1i), vec2<i32>(15090i, 1i), false), Struct_1(4294967295u, 4294967295u, vec4<i32>(1i, -25741i, -8045i, 0i), vec2<i32>(1i, 0i), true), Struct_1(4294967295u, 5059u, vec4<i32>(i32(-2147483648), -1i, 1i, 12133i), vec2<i32>(0i, i32(-2147483648)), true), Struct_1(39827u, 78213u, vec4<i32>(0i, 39891i, 12633i, i32(-2147483648)), vec2<i32>(-1i, 1i), true), Struct_1(1u, 18375u, vec4<i32>(7715i, i32(-2147483648), 25822i, 2147483647i), vec2<i32>(0i, i32(-2147483648)), false), Struct_1(3670u, 30735u, vec4<i32>(-10184i, -1486i, 45596i, i32(-2147483648)), vec2<i32>(2147483647i, 4941i), true), Struct_1(4294967295u, 63664u, vec4<i32>(31094i, -13684i, 22199i, 1i), vec2<i32>(-1i, -48181i), true), Struct_1(61236u, 24804u, vec4<i32>(i32(-2147483648), 0i, 34065i, -48043i), vec2<i32>(-10648i, 2147483647i), false), Struct_1(0u, 4294967295u, vec4<i32>(4451i, 36407i, 0i, 1i), vec2<i32>(30395i, -1i), true), Struct_1(4294967295u, 29251u, vec4<i32>(-1i, -7656i, -1i, 1i), vec2<i32>(2147483647i, -1i), false), Struct_1(104662u, 4294967295u, vec4<i32>(2147483647i, i32(-2147483648), 19872i, -1i), vec2<i32>(1i, 0i), true), Struct_1(4294967295u, 1u, vec4<i32>(-31410i, 2147483647i, -1i, 6361i), vec2<i32>(-33651i, 1321i), false), Struct_1(0u, 16629u, vec4<i32>(1i, -25968i, 7289i, i32(-2147483648)), vec2<i32>(0i, -36886i), true));

var<private> global2: array<f32, 20> = array<f32, 20>(499f, -652f, 2093f, -947f, 1925f, -416f, -871f, 1049f, -2472f, -2032f, 605f, 262f, 1385f, -1374f, 1052f, -1747f, -443f, -165f, 1923f, -1702f);

var<private> global3: array<Struct_1, 10>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, 265f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-232f, global2[_wgslsmith_index_u32(10443u, 20u)], global0.a.x)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_2.a, 20u)]))))))));
    global1 = array<Struct_1, 32>();
    let var_1 = Struct_2(arg_0.a, global0.b);
    global1 = array<Struct_1, 32>();
    return arg_1;
}

fn func_3() -> u32 {
    global2 = array<f32, 20>();
    let var_0 = global0.b;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1337f))))) - global2[_wgslsmith_index_u32(u_input.a, 20u)]) * _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a & 1u, 1u, ~32535u), 20u)] + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.a, u_input.a), 20u)])));
    var var_2 = global3[_wgslsmith_index_u32(943u, 10u)];
    let var_3 = func_1(func_1(func_1(func_1(func_1(Struct_2(vec4<bool>(var_2.e, true, false, false), global0.b), Struct_2(vec4<bool>(true, var_2.e, false, true), vec4<i32>(1i, var_0.x, -2147483647i, 0i)), Struct_1(u_input.a, 12705u, vec4<i32>(1514i, -37738i, 2147483647i, var_0.x), vec2<i32>(var_0.x, var_2.d.x), false)), Struct_2(vec4<bool>(var_2.e, var_2.e, false, var_2.e), vec4<i32>(2147483647i, var_0.x, 63502i, 34488i)), global1[_wgslsmith_index_u32(1u, 32u)]), Struct_2(!global0.a, vec4<i32>(var_2.d.x, -4827i, -2147483647i, 0i)), Struct_1(var_2.b, var_2.b, global0.b | vec4<i32>(var_0.x, 18430i, 2147483647i, var_2.c.x), vec2<i32>(-31713i, 1i), var_2.e | true)), Struct_2(global0.a, reverseBits(vec4<i32>(global0.b.x, var_2.c.x, var_0.x, -38591i))), Struct_1(u_input.a, ~u_input.a, vec4<i32>(-1i) * -global0.b, var_0.zz, all(!global0.a.wzz))), Struct_2(global0.a, _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(21179i, u_input.b, var_2.c.x, u_input.b), vec4<i32>(var_2.d.x, 0i, var_0.x, 6550i)), u_input.b, var_2.d.x, global0.b.x), firstLeadingBit(var_2.c & var_2.c))), Struct_1(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(select(0u, 0u, global0.a.x), _wgslsmith_div_u32(var_2.b, u_input.a)), vec2<u32>(11501u, var_2.a)), var_2.c, vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(1i, 8556i), 1i), _wgslsmith_dot_vec2_i32(~var_2.d, ~vec2<i32>(var_0.x, -27310i))), !all(vec2<bool>(false, global0.a.x))));
    return var_2.a;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec2<bool>) -> vec2<bool> {
    let var_0 = 1000f;
    global0 = arg_0;
    let var_1 = arg_1.x;
    global2 = array<f32, 20>();
    var var_2 = func_3();
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_div_vec2_u32(~(~vec2<u32>(u_input.a, 48068u)), abs(vec2<u32>(_wgslsmith_mod_u32(u_input.a, u_input.a), _wgslsmith_sub_u32(1u, u_input.a))));
    var var_1 = global2[_wgslsmith_index_u32((_wgslsmith_add_u32(_wgslsmith_div_u32(0u << (var_0.x % 32u), ~u_input.a), _wgslsmith_clamp_u32(~43303u, 1u, _wgslsmith_clamp_u32(1u, 4294967295u, u_input.a))) ^ 4294967295u) << (_wgslsmith_mod_u32(~(~(~u_input.a)), _wgslsmith_add_u32(~_wgslsmith_mod_u32(u_input.a, var_0.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(var_0.x, var_0.x, 5757u)))) % 32u), 20u)];
    var var_2 = _wgslsmith_f_op_f32(min(1348f, global2[_wgslsmith_index_u32(0u, 20u)]));
    var var_3 = select(select(global0.a.wx, func_2(func_1(Struct_2(global0.a, vec4<i32>(7584i, 21360i, global0.b.x, u_input.b)), Struct_2(global0.a, global0.b), Struct_1(var_0.x, u_input.a, global0.b, global0.b.xz, global0.a.x)), ~vec3<u32>(u_input.a, u_input.a, 0u), global0.a.ww), select(select(select(vec2<bool>(true, false), vec2<bool>(global0.a.x, true), false), func_1(Struct_2(global0.a, global0.b), Struct_2(vec4<bool>(true, true, true, false), vec4<i32>(global0.b.x, global0.b.x, -25777i, u_input.b)), Struct_1(16629u, 42317u, vec4<i32>(2147483647i, global0.b.x, u_input.b, -1i), vec2<i32>(u_input.b, 44254i), false)).a.yz, func_1(Struct_2(global0.a, global0.b), Struct_2(vec4<bool>(global0.a.x, true, true, global0.a.x), global0.b), Struct_1(59525u, 15567u, vec4<i32>(1i, -2147483647i, 1i, u_input.b), global0.b.yw, true)).a.zy), select(!global0.a.zy, select(global0.a.yw, vec2<bool>(global0.a.x, false), false), vec2<bool>(global0.a.x, global0.a.x)), func_1(Struct_2(vec4<bool>(true, global0.a.x, true, global0.a.x), vec4<i32>(-2147483647i, 5529i, 30798i, -1i)), func_1(Struct_2(vec4<bool>(global0.a.x, false, true, false), vec4<i32>(u_input.b, -2147483647i, global0.b.x, global0.b.x)), Struct_2(vec4<bool>(global0.a.x, global0.a.x, global0.a.x, global0.a.x), vec4<i32>(u_input.b, global0.b.x, u_input.b, u_input.b)), global1[_wgslsmith_index_u32(var_0.x, 32u)]), global1[_wgslsmith_index_u32(countOneBits(var_0.x), 32u)]).a.xy)), !(!func_2(func_1(Struct_2(global0.a, global0.b), Struct_2(vec4<bool>(global0.a.x, global0.a.x, global0.a.x, global0.a.x), vec4<i32>(u_input.b, -29639i, global0.b.x, -1i)), global3[_wgslsmith_index_u32(1u, 10u)]), vec3<u32>(1u, 1u, 5809u) ^ vec3<u32>(4294967295u, u_input.a, 1u), !global0.a.ww)), !global0.a.x);
    global2 = array<f32, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(65915u, 20u)], -1319f) - vec2<f32>(-898f, global2[_wgslsmith_index_u32(0u, 20u)]))) - vec2<f32>(global2[_wgslsmith_index_u32(var_0.x, 20u)], global2[_wgslsmith_index_u32(~var_0.x, 20u)])))), ~(-max(global0.b, global0.b)), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(var_0.x << (~0u % 32u)), var_0.x, u_input.a), 20u)]);
}

