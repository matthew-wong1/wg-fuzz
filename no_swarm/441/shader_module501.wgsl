struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(Struct_1(vec3<u32>(15269u, 25513u, 0u), 6089u, 391f), 21908i, 48705u), Struct_2(Struct_1(vec3<u32>(13344u, 6740u, 12487u), 0u, -430f), i32(-2147483648), 1u), Struct_2(Struct_1(vec3<u32>(42794u, 42849u, 1u), 4294967295u, 1603f), 0i, 4294967295u), Struct_2(Struct_1(vec3<u32>(44016u, 40984u, 31174u), 0u, 1590f), 38034i, 18428u), Struct_2(Struct_1(vec3<u32>(54046u, 66965u, 1u), 22593u, -1289f), i32(-2147483648), 4294967295u), Struct_2(Struct_1(vec3<u32>(2462u, 1u, 7796u), 12725u, 767f), 39726i, 31460u), Struct_2(Struct_1(vec3<u32>(7916u, 1u, 28215u), 15934u, 1832f), 39305i, 0u), Struct_2(Struct_1(vec3<u32>(44451u, 35591u, 26392u), 49290u, -678f), 50906i, 1u), Struct_2(Struct_1(vec3<u32>(81515u, 6361u, 0u), 4843u, 860f), -1i, 54540u), Struct_2(Struct_1(vec3<u32>(32925u, 4294967295u, 1u), 57609u, -510f), 70750i, 18010u), Struct_2(Struct_1(vec3<u32>(62258u, 112950u, 4294967295u), 1u, 934f), -7324i, 1u), Struct_2(Struct_1(vec3<u32>(22034u, 4294967295u, 78821u), 0u, -234f), -27444i, 4294967295u), Struct_2(Struct_1(vec3<u32>(66931u, 4294967295u, 1u), 60353u, -302f), 0i, 4294967295u), Struct_2(Struct_1(vec3<u32>(14216u, 1u, 62818u), 0u, -1288f), 0i, 102371u), Struct_2(Struct_1(vec3<u32>(1u, 47292u, 4294967295u), 4294967295u, -1370f), 1i, 0u), Struct_2(Struct_1(vec3<u32>(15945u, 35198u, 37946u), 4294967295u, 601f), i32(-2147483648), 1934u), Struct_2(Struct_1(vec3<u32>(1u, 43587u, 2274u), 1u, 322f), -30259i, 0u), Struct_2(Struct_1(vec3<u32>(3506u, 4294967295u, 1u), 0u, -238f), 5885i, 0u), Struct_2(Struct_1(vec3<u32>(4294967295u, 0u, 17664u), 50704u, 687f), 1i, 47254u), Struct_2(Struct_1(vec3<u32>(1u, 7909u, 13711u), 44957u, -357f), 2147483647i, 61251u), Struct_2(Struct_1(vec3<u32>(26869u, 4294967295u, 49596u), 0u, 1000f), -45442i, 27700u), Struct_2(Struct_1(vec3<u32>(48511u, 1557u, 4294967295u), 50251u, 647f), 0i, 7429u));

var<private> global1: u32 = 1u;

var<private> global2: array<bool, 32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> u32 {
    global0 = array<Struct_2, 22>();
    global1 = min(_wgslsmith_dot_vec3_u32(select(reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.e, 1u, u_input.e), vec3<u32>(u_input.c, 4294967295u, u_input.c))), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.e, 1u), vec3<u32>(35463u, u_input.c, 0u) | vec3<u32>(22210u, u_input.c, 50350u)), vec3<bool>(u_input.a <= -2330i, any(vec3<bool>(global2[_wgslsmith_index_u32(u_input.e, 32u)], global2[_wgslsmith_index_u32(17893u, 32u)], global2[_wgslsmith_index_u32(u_input.c, 32u)])), global2[_wgslsmith_index_u32(29066u, 32u)] || global2[_wgslsmith_index_u32(u_input.e, 32u)])), _wgslsmith_clamp_vec3_u32(~countOneBits(vec3<u32>(0u, 1u, 40421u)), ~vec3<u32>(15302u, 1u, 71080u), vec3<u32>(u_input.e, firstLeadingBit(u_input.c), u_input.e))), ~(~_wgslsmith_mult_u32(u_input.c, ~34750u)));
    var var_0 = ~countOneBits(max(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.e, 15041u, u_input.c), vec3<u32>(61793u, 4294967295u, u_input.c) & vec3<u32>(u_input.c, u_input.e, 103136u)), select(~vec3<u32>(4294967295u, u_input.c, 0u), reverseBits(vec3<u32>(34509u, 3203u, 1u)), select(vec3<bool>(true, false, global2[_wgslsmith_index_u32(1u, 32u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(4103u, 32u)], global2[_wgslsmith_index_u32(u_input.c, 32u)]), vec3<bool>(global2[_wgslsmith_index_u32(1432u, 32u)], global2[_wgslsmith_index_u32(0u, 32u)], false)))));
    var var_1 = !select(vec4<bool>(global2[_wgslsmith_index_u32(var_0.x, 32u)], all(vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 32u)], true, false)), global2[_wgslsmith_index_u32(var_0.x, 32u)], global2[_wgslsmith_index_u32(1u, 32u)]), select(select(vec4<bool>(false, true, global2[_wgslsmith_index_u32(20066u, 32u)], global2[_wgslsmith_index_u32(var_0.x, 32u)]), !vec4<bool>(false, false, global2[_wgslsmith_index_u32(17773u, 32u)], false), !vec4<bool>(false, global2[_wgslsmith_index_u32(var_0.x, 32u)], true, global2[_wgslsmith_index_u32(4294967295u, 32u)])), vec4<bool>(!global2[_wgslsmith_index_u32(u_input.c, 32u)], all(vec2<bool>(global2[_wgslsmith_index_u32(u_input.e, 32u)], global2[_wgslsmith_index_u32(u_input.e, 32u)])), true, !global2[_wgslsmith_index_u32(u_input.e, 32u)]), any(vec4<bool>(false, false, true, global2[_wgslsmith_index_u32(u_input.e, 32u)]))), !vec4<bool>(true, global2[_wgslsmith_index_u32(62411u, 32u)], global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.x, 39006u), 32u)], any(vec4<bool>(global2[_wgslsmith_index_u32(u_input.e, 32u)], global2[_wgslsmith_index_u32(1u, 32u)], global2[_wgslsmith_index_u32(32433u, 32u)], global2[_wgslsmith_index_u32(u_input.e, 32u)]))));
    let var_2 = !vec2<bool>(var_1.x, 6807u > _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.e), vec2<u32>(u_input.c, 4294967295u)));
    return ~max(83782u, ~var_0.x);
}

fn func_2() -> Struct_2 {
    global0 = array<Struct_2, 22>();
    let var_0 = Struct_1(select(vec3<u32>(1u, u_input.c, u_input.e) ^ vec3<u32>(u_input.e, 4294967295u, u_input.c), vec3<u32>(u_input.c << (9885u % 32u), func_3(817f), 5553u), select(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 32u)], false, global2[_wgslsmith_index_u32(u_input.c, 32u)]), !vec3<bool>(global2[_wgslsmith_index_u32(15828u, 32u)], global2[_wgslsmith_index_u32(u_input.c, 32u)], global2[_wgslsmith_index_u32(22373u, 32u)]), !global2[_wgslsmith_index_u32(65306u, 32u)])) << (_wgslsmith_div_vec3_u32(select(abs(vec3<u32>(u_input.c, 1u, u_input.c)), ~vec3<u32>(u_input.c, 0u, 0u), select(vec3<bool>(false, false, global2[_wgslsmith_index_u32(0u, 32u)]), vec3<bool>(true, false, global2[_wgslsmith_index_u32(u_input.e, 32u)]), vec3<bool>(true, false, true))), countOneBits(~vec3<u32>(u_input.c, u_input.c, u_input.e))) % vec3<u32>(32u)), 35008u, _wgslsmith_f_op_f32(max(756f, _wgslsmith_f_op_f32(355f - -489f))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.c, 754f, _wgslsmith_f_op_f32(abs(-1421f)), _wgslsmith_f_op_f32(var_0.c - -308f)), vec4<f32>(var_0.c, var_0.c, var_0.c, 1000f), select(select(vec4<bool>(false, true, false, true), vec4<bool>(global2[_wgslsmith_index_u32(1u, 32u)], false, global2[_wgslsmith_index_u32(u_input.c, 32u)], false), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.c, 32u)], true, global2[_wgslsmith_index_u32(var_0.a.x, 32u)])), select(vec4<bool>(global2[_wgslsmith_index_u32(38459u, 32u)], global2[_wgslsmith_index_u32(4294967295u, 32u)], true, global2[_wgslsmith_index_u32(0u, 32u)]), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 32u)], true, global2[_wgslsmith_index_u32(var_0.b, 32u)], global2[_wgslsmith_index_u32(u_input.e, 32u)]), true), true))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(trunc(-264f)), -795f, _wgslsmith_f_op_f32(var_0.c - var_0.c), _wgslsmith_f_op_f32(f32(-1f) * -2011f))))));
    let var_2 = Struct_1(var_0.a, 39101u, 186f);
    var var_3 = ~reverseBits(~(vec4<u32>(28878u, 0u, 784u, u_input.e) | vec4<u32>(1u, 1u, 0u, 0u)));
    return global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, var_0.a.x, var_2.b), var_2.a) << (89812u % 32u)), 22u)];
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -894f));
    let var_1 = false;
    return func_2();
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_2, arg_3: i32) -> vec4<i32> {
    var var_0 = ~(~(~4294967295u));
    global2 = array<bool, 32>();
    global1 = ~1u;
    global0 = array<Struct_2, 22>();
    let var_1 = arg_2.a;
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(_wgslsmith_mod_u32(1u, 1u), u_input.e, 24312u, ~_wgslsmith_clamp_u32(0u, u_input.e, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.e, u_input.c, u_input.e), ~vec4<u32>(83803u, u_input.c, 4294967295u, u_input.c))));
    global2 = array<bool, 32>();
    global0 = array<Struct_2, 22>();
    global0 = array<Struct_2, 22>();
    global0 = array<Struct_2, 22>();
    global0 = array<Struct_2, 22>();
    var var_1 = vec2<bool>(global2[_wgslsmith_index_u32(12845u, 32u)], global2[_wgslsmith_index_u32(~u_input.e, 32u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(vec4<i32>(-56829i, 2147483647i, 1i, u_input.a) ^ reverseBits(u_input.d), min(countOneBits(u_input.d), -vec4<i32>(u_input.b.x, u_input.b.x, -18759i, 1i))) & select(func_4(u_input.d.x, ~119656u, func_1(Struct_1(vec3<u32>(39248u, var_0.x, 0u), 64155u, 233f), u_input.c, Struct_1(vec3<u32>(u_input.c, 4294967295u, u_input.c), 0u, 536f), vec2<bool>(var_1.x, global2[_wgslsmith_index_u32(var_0.x, 32u)])), -38790i), vec4<i32>(u_input.b.x, _wgslsmith_div_i32(u_input.a, u_input.b.x), ~(-1i), -1i), false), var_0.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1478f, 1768f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1382f, 974f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1290f, 372f) + vec2<f32>(-2705f, 494f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1108f, -408f), vec2<f32>(-495f, -701f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(585f, 850f) + vec2<f32>(-1000f, 693f))))));
}

