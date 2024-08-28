struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(1422f), Struct_1(-2121f), Struct_1(1229f), Struct_1(1475f), Struct_1(430f), Struct_1(195f), Struct_1(392f), Struct_1(252f), Struct_1(1674f), Struct_1(-870f), Struct_1(-242f), Struct_1(142f), Struct_1(2238f), Struct_1(-2259f), Struct_1(-682f), Struct_1(-812f), Struct_1(292f), Struct_1(726f), Struct_1(405f), Struct_1(-108f), Struct_1(492f), Struct_1(193f), Struct_1(253f), Struct_1(-626f), Struct_1(1049f), Struct_1(1000f), Struct_1(-2936f), Struct_1(-611f), Struct_1(2013f), Struct_1(-1704f), Struct_1(151f), Struct_1(-271f));

var<private> global1: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(vec2<bool>(false, false)), Struct_4(vec2<bool>(false, true)), Struct_4(vec2<bool>(true, true)), Struct_4(vec2<bool>(false, true)), Struct_4(vec2<bool>(false, false)), Struct_4(vec2<bool>(true, true)), Struct_4(vec2<bool>(true, false)), Struct_4(vec2<bool>(true, true)));

var<private> global2: array<u32, 1> = array<u32, 1>(1u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> bool {
    return select(any(vec3<bool>(true, true, true)) & true, false, !(!(global2[_wgslsmith_index_u32(select(u_input.a, 6528u, true), 1u)] != ~4606u)));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: u32, arg_3: vec4<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(ceil(arg_0));
    let var_1 = abs(arg_1);
    global2 = array<u32, 1>();
    let var_2 = global0[_wgslsmith_index_u32(~(_wgslsmith_add_u32(57456u, _wgslsmith_div_u32(var_1.x, ~0u)) << (53680u % 32u)), 32u)];
    let var_3 = _wgslsmith_clamp_vec3_u32(~countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(arg_2, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, arg_2) ^ vec3<u32>(arg_2, 50549u, 4294967295u))), ~_wgslsmith_add_vec3_u32(vec3<u32>(87621u, global2[_wgslsmith_index_u32(u_input.a, 1u)], arg_2) | countOneBits(vec3<u32>(var_1.x, var_1.x, 1u)), _wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(4951u, arg_2, 30457u)), vec3<u32>(13829u, global2[_wgslsmith_index_u32(u_input.a, 1u)], u_input.a) ^ vec3<u32>(global2[_wgslsmith_index_u32(82451u, 1u)], 0u, global2[_wgslsmith_index_u32(arg_1.x, 1u)]))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_1.x, 4294967295u, 55889u) >> (firstLeadingBit(vec3<u32>(arg_1.x, 4294967295u, 1u)) % vec3<u32>(32u)), ~min(vec3<u32>(4294967295u, 46212u, var_1.x), vec3<u32>(arg_1.x, 14879u, arg_2)), min(abs(vec3<u32>(4294967295u, 134770u, arg_1.x)), _wgslsmith_div_vec3_u32(vec3<u32>(1u, arg_2, 93377u), vec3<u32>(arg_2, var_1.x, 41747u)))) << (vec3<u32>(~4294967295u, ~abs(arg_2), 31870u) % vec3<u32>(32u)));
    return select(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_1.x, 1u, _wgslsmith_clamp_u32(var_1.x, _wgslsmith_sub_u32(67662u, arg_1.x), var_1.x)), _wgslsmith_sub_u32(u_input.a, 4294967295u)), var_3.x, _wgslsmith_f_op_f32(-2377f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-253f))))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.a, -1099f))) * -479f));
}

fn func_2(arg_0: Struct_4, arg_1: bool) -> i32 {
    let var_0 = !(!vec3<bool>(false, arg_0.a.x, true || select(false, arg_0.a.x, arg_0.a.x)));
    let var_1 = (max(~vec4<u32>(global2[_wgslsmith_index_u32(37860u, 1u)], u_input.a, 111842u, 42526u) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(0u, 1u)], 28131u, 20332u, 0u), vec4<u32>(u_input.a, 1u, global2[_wgslsmith_index_u32(u_input.a, 1u)], 4294967295u), vec4<u32>(12920u, u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(83871u, 1u)], 1u)], global2[_wgslsmith_index_u32(0u, 1u)])) % vec4<u32>(32u)), max(firstTrailingBit(vec4<u32>(global2[_wgslsmith_index_u32(1u, 1u)], 65596u, global2[_wgslsmith_index_u32(56877u, 1u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 1u)], 1u)])), vec4<u32>(64506u, 23148u, global2[_wgslsmith_index_u32(11577u, 1u)], u_input.a))) & _wgslsmith_clamp_vec4_u32(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 1u)], 1u)], 1u)], 1u)], u_input.a, global2[_wgslsmith_index_u32(4294967295u, 1u)]), vec4<u32>(global2[_wgslsmith_index_u32(u_input.a, 1u)], 61558u, 52286u, global2[_wgslsmith_index_u32(77721u, 1u)]))), vec4<u32>(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 1u)], 1u)], _wgslsmith_sub_u32(0u, u_input.a), _wgslsmith_div_u32(u_input.a, 1u), _wgslsmith_add_u32(u_input.a, u_input.a)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 47953u, u_input.a, 32508u), vec4<u32>(8129u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 1u)], 1u)], 4294967295u, 0u)) << (min(vec4<u32>(u_input.a, 0u, 50913u, global2[_wgslsmith_index_u32(4294967295u, 1u)]), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 4294967295u, 4294967295u, 34026u)) % vec4<u32>(32u)))) ^ ~vec4<u32>(~u_input.a & _wgslsmith_clamp_u32(u_input.a, global2[_wgslsmith_index_u32(26943u, 1u)], u_input.a), u_input.a, global2[_wgslsmith_index_u32(1u, 1u)], ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(func_3(713f, vec2<u32>(global2[_wgslsmith_index_u32(3616u, 1u)], 3920u), 1u, vec4<i32>(-2147483647i, -2147483647i, -21062i, -1i)), 1u)], 1u)]);
    var var_2 = vec3<i32>(2147483647i, 1i, 11448i | -(69639i << ((var_1.x ^ 63215u) % 32u)));
    var_2 = ~(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(var_2.x, 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<i32>(-47455i, var_2.x, 2147483647i, -1i)), var_2.x), vec3<i32>(var_2.x, var_2.x, 2147483647i) ^ _wgslsmith_div_vec3_i32(vec3<i32>(var_2.x, var_2.x, -59847i), vec3<i32>(2147483647i, 6268i, 0i)), vec3<i32>(~21525i, countOneBits(var_2.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 7520i, var_2.x), vec3<i32>(var_2.x, 2147483647i, var_2.x)))) << (min(_wgslsmith_clamp_vec3_u32(vec3<u32>(22969u, global2[_wgslsmith_index_u32(0u, 1u)], 25788u) << (vec3<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(54508u, 1u)], 1u)], global2[_wgslsmith_index_u32(40106u, 1u)]) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 69608u, 2494u), vec3<u32>(global2[_wgslsmith_index_u32(u_input.a, 1u)], 26160u, 34953u)), _wgslsmith_sub_vec3_u32(vec3<u32>(30147u, var_1.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(49252u, 1u)], 1u)]), vec3<u32>(0u, 4294967295u, global2[_wgslsmith_index_u32(u_input.a, 1u)]))), min(var_1.xxx & var_1.xwx, var_1.zxx)) % vec3<u32>(32u)));
    var var_3 = global0[_wgslsmith_index_u32(u_input.a, 32u)];
    return -(~(13636i & var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 8>();
    var var_0 = func_1();
    var var_1 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(100697u, 1u)], 1u)], u_input.a, 71011u, global2[_wgslsmith_index_u32(58208u, 1u)]), vec4<u32>(23294u, 1u, 84905u, 4294967295u)) << (~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 57850u, 4294967295u, 4294967295u) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_div_u32(22199u, 8228u), ~global2[_wgslsmith_index_u32(u_input.a, 1u)], u_input.a, ~u_input.a)), ~vec4<u32>(~global2[_wgslsmith_index_u32(u_input.a, 1u)], u_input.a, firstLeadingBit(global2[_wgslsmith_index_u32(4294967295u, 1u)]), u_input.a));
    var var_2 = ~(~44837i);
    global1 = array<Struct_4, 8>();
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f)));
    var var_4 = func_2(Struct_4(vec2<bool>(true, any(vec2<bool>(true, false)))), !any(vec2<bool>(true, all(vec4<bool>(true, false, false, false)))));
    let var_5 = !all(select(vec2<bool>(true, true), vec2<bool>(true, true), false));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(61644u, 0u, u_input.a) | vec3<u32>(u_input.a, 3368u, 13533u), vec3<u32>(9162u, 0u, 3164u) & vec3<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 1u)], 1u)], 4294967295u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-846f, -1103f, var_3)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_3, var_3)))));
}

