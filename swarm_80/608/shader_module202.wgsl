struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: array<bool, 3> = array<bool, 3>(false, false, false);

var<private> global2: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(vec2<i32>(0i, 2147483647i), vec3<f32>(1000f, -961f, 1414f), 0u), Struct_2(vec2<i32>(0i, 0i), vec3<f32>(310f, 350f, 2049f), 4294967295u), Struct_2(vec2<i32>(-18772i, 14794i), vec3<f32>(-1426f, -634f, -1000f), 4294967295u), Struct_2(vec2<i32>(i32(-2147483648), 23812i), vec3<f32>(1000f, 1000f, 1067f), 12755u), Struct_2(vec2<i32>(-1i, -1i), vec3<f32>(-666f, 600f, -1186f), 118008u), Struct_2(vec2<i32>(-65712i, -1i), vec3<f32>(316f, 795f, 582f), 33923u), Struct_2(vec2<i32>(-2036i, -63027i), vec3<f32>(1000f, 1656f, -297f), 1u), Struct_2(vec2<i32>(47273i, 2147483647i), vec3<f32>(-757f, 1000f, -1295f), 54481u), Struct_2(vec2<i32>(-1i, -24933i), vec3<f32>(-1690f, 419f, 917f), 17044u));

var<private> global3: array<i32, 11>;

var<private> global4: i32;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: u32, arg_3: vec2<bool>) -> u32 {
    global0 = array<Struct_1, 31>();
    var var_0 = 53102u | countOneBits(min(firstTrailingBit(31763u) >> (abs(u_input.b.x) % 32u), 1u));
    global3 = array<i32, 11>();
    var var_1 = global2[_wgslsmith_index_u32(abs(~(arg_2 | (16731u ^ ~arg_2))), 9u)];
    global2 = array<Struct_2, 9>();
    return countOneBits(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(~8778u, 0u, _wgslsmith_div_u32(83483u, var_1.c))), u_input.b >> (_wgslsmith_add_vec3_u32(vec3<u32>(var_1.c, 2054u, var_1.c) | vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(arg_2, arg_2, 4294967295u) >> (u_input.a.xwy % vec3<u32>(32u))) % vec3<u32>(32u))));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> vec2<bool> {
    global1 = array<bool, 3>();
    var var_0 = -1i;
    var var_1 = -(~select(_wgslsmith_sub_vec3_i32(-vec3<i32>(0i, -1i, global3[_wgslsmith_index_u32(68339u, 11u)]), vec3<i32>(arg_0.a.x, 2147483647i, -48267i)), ~(-vec3<i32>(-7395i, 2147483647i, 1i)), select(!vec3<bool>(global1[_wgslsmith_index_u32(arg_0.c, 3u)], global1[_wgslsmith_index_u32(arg_1, 3u)], global1[_wgslsmith_index_u32(u_input.a.x, 3u)]), select(vec3<bool>(true, true, global1[_wgslsmith_index_u32(arg_1, 3u)]), vec3<bool>(global1[_wgslsmith_index_u32(arg_1, 3u)], global1[_wgslsmith_index_u32(55286u, 3u)], true), false), vec3<bool>(false, global1[_wgslsmith_index_u32(arg_1, 3u)], global1[_wgslsmith_index_u32(arg_0.c, 3u)]))));
    let var_2 = -499f;
    let var_3 = _wgslsmith_sub_vec3_u32(u_input.b, u_input.b);
    return select(select(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 3u)], global1[_wgslsmith_index_u32(~var_3.x, 3u)]), !select(vec2<bool>(global1[_wgslsmith_index_u32(var_3.x, 3u)], global1[_wgslsmith_index_u32(var_3.x, 3u)]), vec2<bool>(true, true), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 3u)], global1[_wgslsmith_index_u32(u_input.b.x, 3u)])), !global1[_wgslsmith_index_u32(firstLeadingBit(1u), 3u)]), !vec2<bool>(-52401i <= global3[_wgslsmith_index_u32(1u, 11u)], global1[_wgslsmith_index_u32(abs(arg_1), 3u)]), select(select(select(vec2<bool>(global1[_wgslsmith_index_u32(arg_1, 3u)], false), vec2<bool>(true, global1[_wgslsmith_index_u32(arg_0.c, 3u)]), vec2<bool>(false, false)), select(vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 3u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(43104u, 3u)]), vec2<bool>(global1[_wgslsmith_index_u32(arg_0.c, 3u)], false)), true), vec2<bool>(global1[_wgslsmith_index_u32(max(var_3.x, 4294967295u), 3u)], false), !(false != global1[_wgslsmith_index_u32(4294967295u, 3u)]))), !(!(!vec2<bool>(global1[_wgslsmith_index_u32(723u, 3u)], global1[_wgslsmith_index_u32(var_3.x, 3u)]))), any(vec2<bool>(!(var_1.x >= var_1.x), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~45866u, 4294967295u | var_3.x), 3u)])));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: vec3<f32>, arg_3: vec2<u32>) -> vec3<u32> {
    var var_0 = all(select(!vec2<bool>(!global1[_wgslsmith_index_u32(u_input.b.x, 3u)], global1[_wgslsmith_index_u32(arg_0, 3u)] || true), func_3(global2[_wgslsmith_index_u32(u_input.b.x, 9u)], func_2(any(vec4<bool>(global1[_wgslsmith_index_u32(27020u, 3u)], true, true, false)), vec2<i32>(-63040i, arg_1.x), arg_3.x & 85395u, vec2<bool>(true, true))), !(true || any(vec2<bool>(global1[_wgslsmith_index_u32(39130u, 3u)], global1[_wgslsmith_index_u32(82427u, 3u)])))));
    return abs(u_input.a.zzz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a >> (_wgslsmith_mod_vec4_u32(abs(_wgslsmith_mod_vec4_u32(u_input.a, ~vec4<u32>(u_input.b.x, 2878u, 16681u, 87073u))), ~u_input.a) % vec4<u32>(32u));
    var var_1 = 4294967295u;
    var var_2 = func_1(u_input.b.x, _wgslsmith_mod_vec3_i32(min(max(vec3<i32>(-672i, 1i, global3[_wgslsmith_index_u32(4294967295u, 11u)]), vec3<i32>(-2147483647i, -531i, 1078i)), vec3<i32>(global3[_wgslsmith_index_u32(var_0.x, 11u)], 2147483647i, global3[_wgslsmith_index_u32(u_input.a.x, 11u)])), ~(~vec3<i32>(global3[_wgslsmith_index_u32(var_0.x, 11u)], 16643i, 1i))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1357f), _wgslsmith_f_op_f32(f32(-1f) * -1849f))), 665f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2213f) + 1000f)), vec2<u32>(u_input.b.x, 3016u)) | u_input.a.yxz;
    var var_3 = (4294967295u << (abs(max(abs(79958u), var_0.x)) % 32u)) >> (max(_wgslsmith_mult_u32(1u, ~0u), var_0.x | firstTrailingBit(~1u)) % 32u);
    let var_4 = reverseBits(u_input.b.x & (var_0.x | ~(var_0.x | 89642u)));
    let var_5 = -17733i;
    global2 = array<Struct_2, 9>();
    let var_6 = all(!(!select(!vec3<bool>(global1[_wgslsmith_index_u32(68783u, 3u)], global1[_wgslsmith_index_u32(u_input.a.x, 3u)], global1[_wgslsmith_index_u32(0u, 3u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 3u)], false, false), select(vec3<bool>(true, global1[_wgslsmith_index_u32(var_2.x, 3u)], true), vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 3u)], global1[_wgslsmith_index_u32(46097u, 3u)], true), false))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.yy);
}

