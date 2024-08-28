struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: f32,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_3,
    d: Struct_1,
    e: i32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 20>;

var<private> global1: array<vec2<bool>, 25> = array<vec2<bool>, 25>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true));

var<private> global2: array<u32, 16> = array<u32, 16>(75459u, 4294967295u, 4294967295u, 1u, 4294967295u, 25928u, 0u, 37779u, 0u, 0u, 0u, 0u, 0u, 0u, 14806u, 24701u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<bool>) -> vec3<i32> {
    var var_0 = u_input.b;
    let var_1 = vec2<i32>(firstLeadingBit(u_input.b), u_input.b >> (1812u % 32u)) ^ firstTrailingBit(vec2<i32>(u_input.b, -2147483647i));
    var var_2 = Struct_3(max(min(vec3<i32>(u_input.b, 0i, u_input.b), reverseBits(vec3<i32>(0i, u_input.b, u_input.b))), select(vec3<i32>(u_input.b, -2147483647i, u_input.b), vec3<i32>(var_1.x, var_1.x, -26536i), vec3<bool>(true, arg_0.x, true)) >> (vec3<u32>(global2[_wgslsmith_index_u32(55411u, 16u)], global2[_wgslsmith_index_u32(u_input.a, 16u)], 111488u) % vec3<u32>(32u))) | vec3<i32>(_wgslsmith_mult_i32(abs(var_1.x), 92223i), abs(~(-6281i)), var_1.x), var_1.x, i32(-1i) * -24641i, _wgslsmith_f_op_f32(max(-656f, -1000f)), u_input.b);
    var var_3 = Struct_4(Struct_2(Struct_1(var_1.x, u_input.d, true, vec4<bool>(true, false, true, 142731u > global2[_wgslsmith_index_u32(0u, 16u)]))), Struct_1(u_input.b, 1u, any(select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), arg_0.wzw, true)), !(!select(vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), vec4<bool>(false, false, arg_0.x, false), false))), Struct_3(_wgslsmith_mod_vec3_i32(var_2.a, vec3<i32>(u_input.b, _wgslsmith_dot_vec2_i32(var_2.a.zz, var_2.a.yy), 41411i)), var_1.x >> (select(~19932u, reverseBits(0u), true) % 32u), -(var_2.b | -2147483647i), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_2.d, var_2.d)))), i32(-1i) * -(u_input.b & 2147483647i)), Struct_1(var_1.x, 1u >> (u_input.d % 32u), true, vec4<bool>(~u_input.d == 4294967295u, arg_0.x, all(arg_0), arg_0.x)), u_input.b);
    var var_4 = 37832i;
    return vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(var_1, vec2<i32>(~81517i, var_2.a.x)), var_3.c.a.xz), _wgslsmith_dot_vec2_i32(~countOneBits(var_3.c.a.zz) | -var_1, select(vec2<i32>(-29594i, -2147483647i) & min(vec2<i32>(1443i, var_1.x), var_1), vec2<i32>(-1i, 2147483647i) | firstLeadingBit(var_2.a.yz), _wgslsmith_f_op_f32(var_2.d - var_2.d) < _wgslsmith_f_op_f32(floor(432f)))), 7765i);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: vec3<u32>, arg_3: bool) -> Struct_2 {
    global1 = array<vec2<bool>, 25>();
    var var_0 = Struct_4(Struct_2(Struct_1(2147483647i, abs(~38894u), -25832i <= u_input.b, select(vec4<bool>(arg_0.x, arg_0.x, arg_3, true), vec4<bool>(arg_0.x, true, true, arg_0.x), u_input.d < 60227u))), Struct_1(u_input.b << (~firstTrailingBit(0u) % 32u), ~arg_2.x, arg_0.x, !select(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), !vec4<bool>(false, arg_0.x, false, arg_3), select(vec4<bool>(arg_3, arg_0.x, arg_0.x, arg_3), vec4<bool>(arg_3, false, false, true), arg_0.x))), Struct_3(func_3(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false)) & abs(~vec3<i32>(u_input.b, -2147483647i, 1i)), u_input.b, u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-956f * _wgslsmith_f_op_f32(f32(-1f) * -1480f)) + -470f), countOneBits(-u_input.b)), Struct_1(select(u_input.b, u_input.b, true), ~4294967295u, false, !vec4<bool>(arg_3, !arg_0.x, arg_3, true)), firstTrailingBit(u_input.b) << (81024u % 32u));
    global0 = array<vec2<f32>, 20>();
    let var_1 = func_3(var_0.d.d);
    let var_2 = Struct_4(Struct_2(Struct_1(-1i, u_input.a, _wgslsmith_mult_u32(arg_1.x, 68731u) < ~27317u, select(var_0.b.d, vec4<bool>(arg_0.x, var_0.a.a.c, true, false), select(var_0.a.a.d, vec4<bool>(false, true, true, false), vec4<bool>(false, var_0.d.c, false, true))))), var_0.d, var_0.c, var_0.a.a, ~0i);
    return var_0.a;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_5, arg_2: vec2<f32>) -> bool {
    let var_0 = arg_0.a;
    let var_1 = Struct_4(Struct_2(var_0), Struct_1(-43139i, arg_1.d | ~(arg_1.d & 4294967295u), (_wgslsmith_sub_i32(u_input.b, arg_0.a.a) << (~global2[_wgslsmith_index_u32(1u, 16u)] % 32u)) == max(arg_0.a.a, var_0.a), select(vec4<bool>(any(arg_0.a.d.zy), any(arg_0.a.d.zw), arg_0.a.c, 1538f <= arg_1.b.x), vec4<bool>(all(arg_1.a), true, var_0.c, var_0.c), _wgslsmith_f_op_f32(trunc(arg_1.b.x)) == -478f)), Struct_3(vec3<i32>(-2147483647i << (arg_1.d % 32u), ~(-47689i), _wgslsmith_add_i32(_wgslsmith_div_i32(arg_0.a.a, -30102i), u_input.b)), u_input.b, abs(-2147483647i), arg_1.b.x, var_0.a), Struct_1(_wgslsmith_div_i32(~min(37061i, arg_0.a.a), ~2147483647i), ~(~1u), false, select(vec4<bool>(arg_1.c, select(false, false, false), var_0.d.x, any(vec4<bool>(var_0.c, true, true, false))), vec4<bool>(false & var_0.d.x, false, true, true), true)), firstLeadingBit(var_0.a));
    global1 = array<vec2<bool>, 25>();
    var var_2 = var_1.c;
    var var_3 = ~(~(-2147483647i));
    return true;
}

fn func_5(arg_0: bool, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(min(~u_input.b, ~(-1i)) & (u_input.b ^ u_input.b), global2[_wgslsmith_index_u32(~(~u_input.d) & _wgslsmith_clamp_u32(1u, firstTrailingBit(13915u), 1u), 16u)], true, vec4<bool>(any(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 106054u), vec2<u32>(u_input.c, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 16u)], 16u)])), 25u)]), true, arg_0, func_2(global1[_wgslsmith_index_u32(u_input.c, 25u)], vec2<u32>(u_input.a, u_input.c), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 16u)], 16u)], 1u, 64723u), true).a.b == ~u_input.a)));
    var var_1 = var_0;
    global0 = array<vec2<f32>, 20>();
    var var_2 = func_2(vec2<bool>(true, true), firstTrailingBit(vec2<u32>(u_input.c ^ u_input.a, 9032u)) << (~countOneBits(select(vec2<u32>(4294967295u, 1u), vec2<u32>(0u, u_input.a), vec2<bool>(var_1.a.d.x, var_1.a.d.x))) % vec2<u32>(32u)), min(vec3<u32>(~_wgslsmith_clamp_u32(1u, u_input.c, var_1.a.b), 1u, 4294967295u), ~min(vec3<u32>(u_input.d, 0u, 50874u), reverseBits(vec3<u32>(0u, var_0.a.b, u_input.c)))), true).a;
    var var_3 = -(var_0.a.a | var_1.a.a);
    return Struct_1(1i, firstLeadingBit(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(global2[_wgslsmith_index_u32(u_input.c, 16u)], 0u, 2196u, var_1.a.b)), vec4<u32>(_wgslsmith_add_u32(53427u, u_input.c), reverseBits(4294967295u), 0u, global2[_wgslsmith_index_u32(var_2.b, 16u)]))), !arg_0, func_2(select(!(!global1[_wgslsmith_index_u32(1u, 25u)]), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.a.b, ~2007u), 25u)], !func_2(vec2<bool>(true, var_0.a.c), vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(var_1.a.b, 16u)]), vec3<u32>(u_input.a, 1u, u_input.c), var_0.a.c).a.d.yy), ~(reverseBits(vec2<u32>(u_input.a, 19344u)) | vec2<u32>(var_0.a.b, u_input.c)), _wgslsmith_add_vec3_u32(vec3<u32>(var_2.b | global2[_wgslsmith_index_u32(var_0.a.b, 16u)], var_2.b & 4294967295u, global2[_wgslsmith_index_u32(countOneBits(global2[_wgslsmith_index_u32(11648u, 16u)]), 16u)]), ~(~vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 16u)], 4294967295u, var_2.b))), arg_0).a.d);
}

fn func_1() -> StorageBuffer {
    var var_0 = func_5(func_4(func_2(vec2<bool>(true, true), firstLeadingBit(reverseBits(vec2<u32>(40829u, global2[_wgslsmith_index_u32(1u, 16u)]))), _wgslsmith_sub_vec3_u32(vec3<u32>(11869u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)], 14054u), vec3<u32>(32937u, u_input.c, 4294967295u)) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, u_input.d, global2[_wgslsmith_index_u32(14673u, 16u)]), vec3<u32>(2049u, 4294967295u, u_input.c)), false), Struct_5(func_2(vec2<bool>(false, true), vec2<u32>(u_input.c, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(16430u, 16u)], 16u)], 16u)]) << (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u)), vec3<u32>(global2[_wgslsmith_index_u32(19807u, 16u)], global2[_wgslsmith_index_u32(u_input.a, 16u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 16u)], 16u)]), all(vec4<bool>(true, false, false, true))).a.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global0[_wgslsmith_index_u32(58660u, 20u)])) - _wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(4294967295u, 20u)] - global0[_wgslsmith_index_u32(5499u, 20u)])), true, u_input.a), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1165f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1761f, -964f), _wgslsmith_f_op_f32(f32(-1f) * -482f), false)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1244f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1543f), _wgslsmith_f_op_f32(step(802f, -128f)))) * -1960f))));
    var var_1 = var_0.d;
    let var_2 = func_5(func_5(_wgslsmith_div_f32(185f, -174f) > _wgslsmith_f_op_f32(trunc(-1001f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1519f, 1484f)))).b <= ~_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.c, u_input.d), global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(var_0.b, 16u)], 16u)]), 934f).d.wzx;
    global1 = array<vec2<bool>, 25>();
    var_0 = Struct_1(15682i | u_input.b, ~max(1u & (u_input.a ^ 4294967295u), ~global2[_wgslsmith_index_u32(var_0.b, 16u)]), true, vec4<bool>(true & all(vec3<bool>(true, true, false)), true, !var_0.c, var_0.d.x));
    return StorageBuffer(~abs(~vec4<i32>(var_0.a, -51289i, u_input.b, 20839i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

