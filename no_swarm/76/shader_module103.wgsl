struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 14> = array<vec4<u32>, 14>(vec4<u32>(52473u, 69662u, 21816u, 4294967295u), vec4<u32>(23776u, 48915u, 0u, 41903u), vec4<u32>(1u, 1u, 0u, 1u), vec4<u32>(1u, 18535u, 4454u, 10716u), vec4<u32>(1u, 56541u, 35255u, 834u), vec4<u32>(0u, 4294967295u, 0u, 110565u), vec4<u32>(4294967295u, 14999u, 15425u, 52358u), vec4<u32>(0u, 9160u, 10541u, 1u), vec4<u32>(4294967295u, 0u, 10608u, 44112u), vec4<u32>(8987u, 11844u, 4294967295u, 13930u), vec4<u32>(4294967295u, 15456u, 91123u, 1u), vec4<u32>(1u, 1u, 4294967295u, 0u), vec4<u32>(1u, 23270u, 1u, 61002u), vec4<u32>(4294967295u, 84096u, 1u, 775u));

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec4<u32>(1u, 0u, 1u, 4294967295u), vec3<u32>(0u, 16661u, 788u)), Struct_1(vec4<u32>(23921u, 1u, 0u, 0u), vec3<u32>(17949u, 15729u, 112741u)), Struct_1(vec4<u32>(4294967295u, 9846u, 1542u, 1u), vec3<u32>(0u, 4294967295u, 37177u)), Struct_1(vec4<u32>(3942u, 8404u, 1u, 0u), vec3<u32>(0u, 69488u, 72469u)), Struct_1(vec4<u32>(5861u, 18187u, 1u, 0u), vec3<u32>(113469u, 0u, 1u)), Struct_1(vec4<u32>(96711u, 4294967295u, 0u, 4294967295u), vec3<u32>(91733u, 4294967295u, 30887u)), Struct_1(vec4<u32>(2404u, 4294967295u, 38756u, 17708u), vec3<u32>(46934u, 13738u, 46026u)), Struct_1(vec4<u32>(13963u, 1u, 25514u, 3848u), vec3<u32>(97170u, 4294967295u, 0u)), Struct_1(vec4<u32>(0u, 36734u, 29082u, 4294967295u), vec3<u32>(0u, 39490u, 76257u)), Struct_1(vec4<u32>(4294967295u, 1u, 0u, 1u), vec3<u32>(4294967295u, 0u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 25811u, 12333u, 4294967295u), vec3<u32>(47712u, 0u, 4294967295u)), Struct_1(vec4<u32>(1u, 32261u, 2278u, 4294967295u), vec3<u32>(67843u, 17585u, 59104u)), Struct_1(vec4<u32>(20384u, 54407u, 22773u, 4294967295u), vec3<u32>(30346u, 46612u, 47006u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 51147u, 4294967295u), vec3<u32>(26572u, 50638u, 78216u)), Struct_1(vec4<u32>(4294967295u, 31961u, 44718u, 22343u), vec3<u32>(57683u, 0u, 8508u)), Struct_1(vec4<u32>(54652u, 4294967295u, 1u, 26873u), vec3<u32>(1u, 4294967295u, 11190u)), Struct_1(vec4<u32>(70235u, 41955u, 0u, 31428u), vec3<u32>(4294967295u, 78590u, 12146u)), Struct_1(vec4<u32>(1u, 1u, 94269u, 4294967295u), vec3<u32>(4294967295u, 0u, 36792u)), Struct_1(vec4<u32>(0u, 70746u, 61075u, 0u), vec3<u32>(88230u, 4294967295u, 59749u)), Struct_1(vec4<u32>(14422u, 49218u, 25799u, 17931u), vec3<u32>(92863u, 0u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 51522u, 68182u, 63960u), vec3<u32>(61839u, 4294967295u, 78461u)), Struct_1(vec4<u32>(0u, 1u, 50236u, 2266u), vec3<u32>(1u, 5257u, 4294967295u)), Struct_1(vec4<u32>(1u, 0u, 0u, 25036u), vec3<u32>(4749u, 5951u, 74931u)), Struct_1(vec4<u32>(0u, 1u, 16709u, 25115u), vec3<u32>(28646u, 32531u, 4294967295u)), Struct_1(vec4<u32>(1u, 40739u, 31297u, 7707u), vec3<u32>(4294967295u, 73990u, 113468u)), Struct_1(vec4<u32>(1u, 9292u, 25780u, 4294967295u), vec3<u32>(52013u, 3074u, 28252u)), Struct_1(vec4<u32>(1914u, 4294967295u, 48973u, 72039u), vec3<u32>(23512u, 4294967295u, 58281u)), Struct_1(vec4<u32>(1691u, 0u, 4294967295u, 30192u), vec3<u32>(1u, 6781u, 4294967295u)), Struct_1(vec4<u32>(1u, 26289u, 1u, 7358u), vec3<u32>(70434u, 0u, 84253u)), Struct_1(vec4<u32>(0u, 0u, 40257u, 0u), vec3<u32>(48907u, 19198u, 30927u)));

var<private> global2: vec4<bool> = vec4<bool>(true, false, true, false);

var<private> global3: Struct_2;

var<private> global4: array<f32, 6>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: f32, arg_3: vec2<bool>) -> u32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-1000f + arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, global4[_wgslsmith_index_u32(3613u, 6u)]) * _wgslsmith_f_op_f32(abs(1214f))))));
    global3 = Struct_2(global3.b, global3.a, firstLeadingBit(min(global3.c, global3.c | vec2<i32>(-41231i, u_input.a))) ^ vec2<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(-13927i, -2147483647i), -1i | u_input.a), -countOneBits(u_input.a)), ~(~(~abs(global3.d))));
    let var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(1u), global3.d, 4294967295u), ~firstTrailingBit(~(~global3.b.a.xxy)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-628f, global4[_wgslsmith_index_u32(~(~0u), 6u)]), _wgslsmith_f_op_f32(round(651f)), _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    global4 = array<f32, 6>();
    return 17355u;
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(func_3(countOneBits(vec4<u32>(4294967295u, ~_wgslsmith_add_u32(58789u, 0u), global3.b.b.x, 4294967295u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2272f - 340f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1233f + 1644f)))), global2.wy), 30u)];
    global1 = array<Struct_1, 30>();
    var var_1 = min(~(~vec3<u32>(arg_0.b.x, 1u, 15392u) << (select(vec3<u32>(1u, global3.d, 4294967295u), vec3<u32>(0u, arg_0.a.x, arg_0.a.x), global2.x) % vec3<u32>(32u))), var_0.a.zyx) >> (var_0.b % vec3<u32>(32u));
    var var_2 = !global2.x;
    var var_3 = 4294967295u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_1.zz << (var_0.a.xz % vec2<u32>(32u)), var_0.b.yx), 6u)] + -375f)));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> vec2<u32> {
    let var_0 = true;
    global4 = array<f32, 6>();
    global4 = array<f32, 6>();
    let var_1 = !(!(!global2.xx));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(arg_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_1(vec4<u32>(global3.b.b.x, 1u, arg_1.b.x, global3.b.b.x), vec3<u32>(1u, global3.d, arg_1.b.x)))), 2222f), true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_3 + arg_3))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3))), true)), -1054f, 126f);
    return abs(_wgslsmith_mult_vec2_u32(arg_1.b.zx, ~(vec2<u32>(arg_1.b.x, 1u) & vec2<u32>(arg_1.b.x, global3.a.b.x))) >> (~arg_1.a.yx % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.c.x;
    let var_1 = min(func_1(firstLeadingBit(abs(vec3<i32>(u_input.a, -2147483647i, 0i)) << (firstLeadingBit(global3.a.b) % vec3<u32>(32u))), Struct_1(~(vec4<u32>(0u, 0u, global3.b.b.x, global3.a.a.x) << (global3.b.a % vec4<u32>(32u))), ~vec3<u32>(global3.b.a.x, global3.a.a.x, 0u)), _wgslsmith_add_i32(40501i, ~u_input.a) == u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(global3.d, 6u)]) + 964f)), ~vec2<u32>(1155u, _wgslsmith_add_u32(22485u, func_1(vec3<i32>(global3.c.x, 2147483647i, u_input.a), Struct_1(vec4<u32>(26675u, global3.a.a.x, global3.d, 12269u), global3.a.b), true, global4[_wgslsmith_index_u32(global3.d, 6u)]).x)));
    let var_2 = global3.c.x;
    global0 = array<vec4<u32>, 14>();
    var var_3 = Struct_2(global1[_wgslsmith_index_u32(func_1(vec3<i32>(43323i, 18198i, global3.c.x) << (global3.b.b % vec3<u32>(32u)), Struct_1(select(global0[_wgslsmith_index_u32(1u, 14u)], vec4<u32>(29258u, global3.b.b.x, global3.b.a.x, var_1.x), global2.x), global3.a.a.wzy), all(vec2<bool>(global2.x, global2.x)), _wgslsmith_f_op_f32(max(-1715f, _wgslsmith_f_op_f32(floor(2265f))))).x << (~min(4294967295u, func_3(global0[_wgslsmith_index_u32(global3.d, 14u)], 326f, -529f, global2.zx)) % 32u), 30u)], Struct_1(vec4<u32>(var_1.x, 18613u, min(4294967295u, var_1.x) ^ _wgslsmith_sub_u32(var_1.x, 4294967295u), ~global3.a.b.x & global3.a.a.x), vec3<u32>(0u, var_1.x, ~min(global3.a.a.x, 34101u))), max(_wgslsmith_clamp_vec2_i32(~min(vec2<i32>(2147483647i, -2147483647i), global3.c), vec2<i32>(u_input.a, abs(-1905i)), ~(~vec2<i32>(7980i, u_input.a))), vec2<i32>(global3.c.x, global3.c.x)), ~(~26323u));
    global0 = array<vec4<u32>, 14>();
    global2 = vec4<bool>(all(!global2.wy), global2.x, true, (1000f < global4[_wgslsmith_index_u32(1u, 6u)]) == all(global2.yzy));
    var var_4 = global3.b;
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.c.x, _wgslsmith_dot_vec2_u32(countOneBits(func_1(~vec3<i32>(u_input.a, 26127i, var_3.c.x), var_3.b, global4[_wgslsmith_index_u32(global3.d, 6u)] >= global4[_wgslsmith_index_u32(4294967295u, 6u)], 1f)), var_4.a.yx), firstLeadingBit(~_wgslsmith_sub_i32(var_3.c.x, -32065i)));
}

