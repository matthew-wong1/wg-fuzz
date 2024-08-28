struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: f32,
}

struct Struct_3 {
    a: u32,
    b: vec3<f32>,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17> = array<u32, 17>(0u, 20042u, 1u, 4294967295u, 40285u, 69229u, 0u, 1u, 40780u, 1u, 66137u, 39797u, 1u, 49539u, 1u, 4294967295u, 4294967295u);

var<private> global1: array<bool, 20>;

var<private> global2: array<u32, 25> = array<u32, 25>(37488u, 60470u, 44084u, 2563u, 4294967295u, 1u, 22165u, 1u, 33783u, 1341u, 56937u, 4294967295u, 53948u, 0u, 1u, 67137u, 1u, 4294967295u, 0u, 28886u, 4294967295u, 4294967295u, 60679u, 5263u, 1u);

var<private> global3: array<f32, 26>;

var<private> global4: array<f32, 20>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: f32, arg_3: u32) -> u32 {
    global1 = array<bool, 20>();
    global0 = array<u32, 17>();
    global1 = array<bool, 20>();
    var var_0 = vec2<f32>(arg_1, global3[_wgslsmith_index_u32(arg_3, 26u)]);
    global4 = array<f32, 20>();
    return _wgslsmith_dot_vec4_u32(vec4<u32>((global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29133u, 17u)], 25u)] | 4795u) | reverseBits(1u), u_input.c, _wgslsmith_mod_u32(~u_input.c, ~arg_3), global0[_wgslsmith_index_u32(~u_input.c, 17u)]) | vec4<u32>(~_wgslsmith_clamp_u32(u_input.c, 18702u, 4294967295u), ~(~arg_3), _wgslsmith_div_u32(0u, 27756u), 1u), vec4<u32>(105818u, ~global0[_wgslsmith_index_u32(u_input.c, 17u)], ~reverseBits(u_input.c), ~(_wgslsmith_clamp_u32(1u, 54192u, arg_3) & 28454u)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: i32) -> u32 {
    let var_0 = Struct_3(func_3(_wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(~1u, 20u)], 1000f)), _wgslsmith_f_op_f32(sign(global4[_wgslsmith_index_u32(abs(4294967295u), 20u)])), _wgslsmith_f_op_f32(f32(-1f) * -1422f), u_input.c << (~81221u % 32u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(4294967295u, 20u)] + global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.b, 17u)], 20u)]), global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(21833u, 25u)], arg_0.b), 20u)], 1000f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3[_wgslsmith_index_u32(1u, 26u)], global4[_wgslsmith_index_u32(u_input.c, 20u)], global4[_wgslsmith_index_u32(39220u, 20u)]), vec3<f32>(-1566f, 469f, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1.x, 17u)], 20u)]), arg_0.a.x)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3[_wgslsmith_index_u32(u_input.c, 26u)], 532f, global3[_wgslsmith_index_u32(4294967295u, 26u)]), vec3<f32>(global4[_wgslsmith_index_u32(0u, 20u)], global4[_wgslsmith_index_u32(1u, 20u)], 2026f), true)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u >> (0u % 32u), 17u)], 20u)])), 817f, 730f)), Struct_1(select(select(vec3<bool>(true, true, true), arg_0.a, u_input.b.x >= -13257i), vec3<bool>(global1[_wgslsmith_index_u32(abs(0u), 20u)], false, any(arg_0.a.zz)), any(vec2<bool>(false, global1[_wgslsmith_index_u32(54515u, 20u)]))), firstTrailingBit(func_3(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(59430u, 25u)], 20u)]), -365f, -434f, 3165u & arg_1.x))), 4294967295u);
    global4 = array<f32, 20>();
    global2 = array<u32, 25>();
    var var_1 = arg_2;
    global4 = array<f32, 20>();
    return 0u;
}

fn func_4(arg_0: f32, arg_1: vec4<u32>) -> Struct_2 {
    let var_0 = u_input.a;
    let var_1 = true || (!any(select(vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_1.x, 25u)], 17u)], 20u)], global1[_wgslsmith_index_u32(arg_1.x, 20u)], global1[_wgslsmith_index_u32(arg_1.x, 20u)]), vec3<bool>(global1[_wgslsmith_index_u32(0u, 20u)], true, global1[_wgslsmith_index_u32(67310u, 20u)]), true)) || !global1[_wgslsmith_index_u32(1u, 20u)]);
    let var_2 = vec4<i32>(_wgslsmith_sub_i32(i32(-1i) * -34310i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.d, u_input.a.x), 1i)), ~(-var_0.x), -2147483647i, reverseBits(u_input.a.x)) | select(u_input.a, select(u_input.a, vec4<i32>(_wgslsmith_add_i32(-9046i, 3772i), _wgslsmith_mod_i32(2147483647i, -1i), u_input.b.x, -2147483647i), true), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(~11573u, 17u)], arg_1.x & 0u), 26u)] <= -204f);
    let var_3 = Struct_2(Struct_1(select(select(!vec3<bool>(false, global1[_wgslsmith_index_u32(34923u, 20u)], true), !vec3<bool>(true, true, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(29168u, 25u)], 20u)]), select(vec3<bool>(true, false, true), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(17936u, 20u)], true), true)), select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 20u)], true, false), !vec3<bool>(false, false, var_1), true), true), reverseBits(~global0[_wgslsmith_index_u32(~88925u, 17u)])), vec4<u32>(1u, u_input.c, 2063u, 39001u), global4[_wgslsmith_index_u32(~(~global2[_wgslsmith_index_u32(~0u, 25u)] & 4294967295u), 20u)]);
    var var_4 = !(!(!(!var_1)));
    return var_3;
}

fn func_5(arg_0: Struct_4, arg_1: i32) -> Struct_1 {
    var var_0 = arg_0.e;
    var var_1 = select(false, any(vec4<bool>(any(select(vec4<bool>(arg_0.b, false, arg_0.e.a.a.x, false), vec4<bool>(true, var_0.a.a.x, false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 17u)], 20u)]), global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 25u)], 20u)])), true, all(arg_0.c.a.xy) & func_4(global4[_wgslsmith_index_u32(4294967295u, 20u)], arg_0.e.b).a.a.x, arg_0.e.a.a.x)), arg_0.a.a.a.x);
    var var_2 = -u_input.a.wwz;
    var_1 = false;
    var_1 = var_0.a.a.x;
    return func_4(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_0.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d))), -1725f), (vec4<u32>(~66189u, _wgslsmith_clamp_u32(var_0.a.b, 19749u, var_0.a.b), ~111325u, u_input.c) << ((reverseBits(vec4<u32>(arg_0.a.b.x, 4294967295u, 23472u, 41080u)) & _wgslsmith_sub_vec4_u32(vec4<u32>(62336u, 1u, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.a.b, 25u)], 17u)], 4561u), vec4<u32>(1u, 12221u, arg_0.e.a.b, 22587u))) % vec4<u32>(32u))) >> (~arg_0.a.b % vec4<u32>(32u))).a;
}

fn func_1() -> vec2<bool> {
    global2 = array<u32, 25>();
    var var_0 = func_5(Struct_4(func_4(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(func_2(Struct_1(vec3<bool>(false, global1[_wgslsmith_index_u32(100340u, 20u)], true), 0u), vec4<u32>(11224u, u_input.c, u_input.c, 4294967295u), u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c), vec2<u32>(u_input.c, global0[_wgslsmith_index_u32(4294967295u, 17u)]))), 26u)], _wgslsmith_mod_vec4_u32(~vec4<u32>(global2[_wgslsmith_index_u32(0u, 25u)], u_input.c, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(19134u, 17u)], 25u)], 25u)]), vec4<u32>(global2[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(1u, 17u)], u_input.c, 43147u) ^ vec4<u32>(1u, 51475u, 32946u, 4294967295u))), func_4(1000f, abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(52044u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 25u)], 17u)], 17u)], 17u)], global0[_wgslsmith_index_u32(1u, 17u)], global2[_wgslsmith_index_u32(u_input.c, 25u)]), vec4<u32>(1141u, global0[_wgslsmith_index_u32(u_input.c, 17u)], global2[_wgslsmith_index_u32(u_input.c, 25u)], global2[_wgslsmith_index_u32(1u, 25u)]), vec4<u32>(u_input.c, global0[_wgslsmith_index_u32(u_input.c, 17u)], global2[_wgslsmith_index_u32(u_input.c, 25u)], u_input.c)))).a.a.x, Struct_1(select(select(vec3<bool>(false, true, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 25u)], 17u)], 17u)], 25u)], 20u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 20u)], global1[_wgslsmith_index_u32(u_input.c, 20u)], global1[_wgslsmith_index_u32(400u, 20u)]), true), !vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 20u)], false), select(vec3<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 25u)], 20u)], global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(1u, 20u)]), vec3<bool>(global1[_wgslsmith_index_u32(4739u, 20u)], false, true), true)), 67029u), -388f, func_4(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c | 4294967295u, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(5835u, global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(8739u, 17u)]), vec3<u32>(23528u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 25u)], 17u)], 17u)], global2[_wgslsmith_index_u32(4294967295u, 25u)])), 25u)]), 20u)], vec4<u32>(1286u, 0u, ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(115500u, 25u)], 25u)], 25u)], 25u)], 0u))), u_input.b.x);
    global0 = array<u32, 17>();
    global4 = array<f32, 20>();
    global0 = array<u32, 17>();
    return !var_0.a.yx;
}

fn func_6(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: Struct_2) -> Struct_3 {
    global0 = array<u32, 17>();
    global2 = array<u32, 25>();
    var var_0 = Struct_1(arg_2.a.a, _wgslsmith_mod_u32(arg_2.b.x, ~u_input.c ^ ~global0[_wgslsmith_index_u32(17151u, 17u)]) << (((arg_2.a.b & 31268u) << (105361u % 32u)) % 32u));
    var var_1 = Struct_4(Struct_2(func_5(Struct_4(arg_2, true, func_5(Struct_4(arg_2, false, arg_2.a, -1003f, Struct_2(Struct_1(vec3<bool>(true, false, arg_1.x), u_input.c), vec4<u32>(u_input.c, 0u, 0u, 13108u), -734f)), u_input.d), _wgslsmith_f_op_f32(sign(429f)), arg_2), _wgslsmith_dot_vec2_i32(u_input.b, -u_input.b)), _wgslsmith_add_vec4_u32(select(min(arg_2.b, vec4<u32>(0u, 0u, 101538u, u_input.c)), ~vec4<u32>(u_input.c, 11397u, var_0.b, arg_2.a.b), select(vec4<bool>(var_0.a.x, false, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 25u)], 20u)], arg_2.a.a.x), vec4<bool>(arg_1.x, false, true, arg_1.x), true)), arg_2.b), _wgslsmith_f_op_f32(sign(-102f))), !arg_1.x, arg_2.a, global3[_wgslsmith_index_u32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1243f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 26u)]) - _wgslsmith_f_op_f32(f32(-1f) * -940f))), ~abs(vec4<u32>(51465u, var_0.b, 58623u, global0[_wgslsmith_index_u32(4294967295u, 17u)]))).b.x, 26u)], Struct_2(Struct_1(vec3<bool>(var_0.a.x, !arg_2.a.a.x, false & global1[_wgslsmith_index_u32(49881u, 20u)]), reverseBits(func_4(-168f, arg_2.b).b.x)), ~_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 0u, var_0.b, 4340u), arg_2.b), arg_2.b), -537f));
    global0 = array<u32, 17>();
    return Struct_3(_wgslsmith_add_u32(14735u, abs(global2[_wgslsmith_index_u32(u_input.c, 25u)])), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15777u, 17u)], 26u)], 198f, 244f))))))), arg_2.a, 72322u);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<f32, 20>();
    global3 = array<f32, 26>();
    global3 = array<f32, 26>();
    let var_0 = func_6(vec2<bool>(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.c, 26u)] - global4[_wgslsmith_index_u32(1u, 20u)]), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.c, 26u)])) > -2293f), func_1(), Struct_2(Struct_1(!select(vec3<bool>(false, true, global1[_wgslsmith_index_u32(u_input.c, 20u)]), vec3<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(57627u, 25u)], 20u)], global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(75760u, 17u)], 20u)]), vec3<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(46910u, 25u)], 20u)], true, true)), min(u_input.c, _wgslsmith_clamp_u32(40805u, u_input.c, 46814u))), _wgslsmith_sub_vec4_u32(~vec4<u32>(0u, u_input.c, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 25u)], 17u)], 17u)], 25u)], 25u)], 26938u), countOneBits(vec4<u32>(0u, 1u, u_input.c, global2[_wgslsmith_index_u32(u_input.c, 25u)]))) >> (select(firstTrailingBit(vec4<u32>(65492u, global2[_wgslsmith_index_u32(4294967295u, 25u)], 0u, 17705u)), ~vec4<u32>(global2[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2130u, 17u)], 17u)], global0[_wgslsmith_index_u32(51169u, 17u)], 44262u), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 20u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 17u)], 20u)], global1[_wgslsmith_index_u32(u_input.c, 20u)], false)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-499f)), global3[_wgslsmith_index_u32(u_input.c, 26u)])) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(28947u, 17u)], 26u)]))))));
    let var_1 = !var_0.c.a;
    let var_2 = Struct_4(Struct_2(var_0.c, _wgslsmith_sub_vec4_u32(abs(~vec4<u32>(u_input.c, 1u, var_0.c.b, global0[_wgslsmith_index_u32(var_0.c.b, 17u)])), select(vec4<u32>(var_0.a, global0[_wgslsmith_index_u32(0u, 17u)], var_0.a, global2[_wgslsmith_index_u32(var_0.a, 25u)]), vec4<u32>(44780u, 38879u, 37682u, global2[_wgslsmith_index_u32(1u, 25u)]), false) ^ (vec4<u32>(global2[_wgslsmith_index_u32(17088u, 25u)], 64826u, 0u, 1398u) | vec4<u32>(var_0.c.b, 27311u, 22344u, 4294967295u))), 1513f), false, func_6(func_5(Struct_4(func_4(var_0.b.x, vec4<u32>(1u, 4294967295u, global0[_wgslsmith_index_u32(4294967295u, 17u)], global2[_wgslsmith_index_u32(104957u, 25u)])), func_4(global4[_wgslsmith_index_u32(4294967295u, 20u)], vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], global2[_wgslsmith_index_u32(0u, 25u)], 0u, 45398u)).a.a.x, Struct_1(vec3<bool>(var_0.c.a.x, var_1.x, var_0.c.a.x), global2[_wgslsmith_index_u32(28400u, 25u)]), _wgslsmith_f_op_f32(f32(-1f) * -405f), func_4(245f, vec4<u32>(1u, 4294967295u, global2[_wgslsmith_index_u32(16138u, 25u)], 2857u))), -40639i).a.xx, select(vec2<bool>(all(vec3<bool>(false, true, false)), var_1.x), vec2<bool>(!var_0.c.a.x, false), vec2<bool>(true, true)), Struct_2(Struct_1(var_0.c.a, 47501u), reverseBits(vec4<u32>(var_0.a, 61902u, u_input.c, 5221u)), global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(global0[_wgslsmith_index_u32(62235u, 17u)]), 17877u), 20u)])).c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b.x))), func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(global3[_wgslsmith_index_u32(1u, 26u)], -1135f)), var_0.b.x), ~(~vec4<u32>(u_input.c, 4294967295u, global2[_wgslsmith_index_u32(var_0.c.b, 25u)], 4519u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(select(~(-u_input.a.x), u_input.d, true), ~(0i)));
}

