struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec2<f32> = vec2<f32>(189f, 237f);

var<private> global2: vec4<f32> = vec4<f32>(-657f, 1281f, -740f, 357f);

var<private> global3: array<bool, 1>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<u32> {
    global1 = _wgslsmith_f_op_vec2_f32(-global2.yx);
    var var_0 = select(select(vec3<bool>(global3[_wgslsmith_index_u32(27149u, 1u)], any(vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.b, 1u)])), !(global3[_wgslsmith_index_u32(u_input.b, 1u)] || false)), select(select(vec3<bool>(true, true, true), vec3<bool>(global3[_wgslsmith_index_u32(67873u, 1u)], false, true), select(vec3<bool>(true, false, false), vec3<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 1u)], false, false), vec3<bool>(global3[_wgslsmith_index_u32(1u, 1u)], true, global3[_wgslsmith_index_u32(u_input.b, 1u)]))), select(select(vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.b, 1u)], false), vec3<bool>(global3[_wgslsmith_index_u32(u_input.c, 1u)], true, global3[_wgslsmith_index_u32(u_input.b, 1u)]), true), select(vec3<bool>(global3[_wgslsmith_index_u32(32658u, 1u)], global3[_wgslsmith_index_u32(0u, 1u)], global3[_wgslsmith_index_u32(u_input.c, 1u)]), vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.c, 1u)], false), true), select(vec3<bool>(true, false, global3[_wgslsmith_index_u32(1u, 1u)]), vec3<bool>(global3[_wgslsmith_index_u32(20443u, 1u)], global3[_wgslsmith_index_u32(u_input.b, 1u)], global3[_wgslsmith_index_u32(1u, 1u)]), true)), all(vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.b, 1u)], global3[_wgslsmith_index_u32(1u, 1u)], global3[_wgslsmith_index_u32(1u, 1u)]))), select(select(select(vec3<bool>(true, true, false), vec3<bool>(global3[_wgslsmith_index_u32(0u, 1u)], false, true), global3[_wgslsmith_index_u32(u_input.c, 1u)]), select(vec3<bool>(true, false, true), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 1u)], true, global3[_wgslsmith_index_u32(32117u, 1u)]), global3[_wgslsmith_index_u32(u_input.b, 1u)]), any(vec2<bool>(false, global3[_wgslsmith_index_u32(72506u, 1u)]))), vec3<bool>(true, all(vec2<bool>(true, global3[_wgslsmith_index_u32(11258u, 1u)])), global3[_wgslsmith_index_u32(4294967295u, 1u)]), false)), !(!(!select(vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.b, 1u)], true), vec3<bool>(global3[_wgslsmith_index_u32(u_input.c, 1u)], global3[_wgslsmith_index_u32(81641u, 1u)], false), vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.b, 1u)], global3[_wgslsmith_index_u32(u_input.c, 1u)])))), any(select(vec2<bool>(true, global3[_wgslsmith_index_u32(1u, 1u)] && true), !select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.c, 1u)], global3[_wgslsmith_index_u32(0u, 1u)]), vec2<bool>(global3[_wgslsmith_index_u32(34931u, 1u)], false), vec2<bool>(true, false)), !vec2<bool>(false, global3[_wgslsmith_index_u32(11638u, 1u)]))));
    let var_1 = !vec4<bool>(all(vec4<bool>(true, true, var_0.x, var_0.x)), any(!vec4<bool>(var_0.x, false, global3[_wgslsmith_index_u32(u_input.b, 1u)], var_0.x)), !all(!vec2<bool>(var_0.x, true)), global3[_wgslsmith_index_u32(reverseBits(u_input.a.x | u_input.c) >> (max(1u, abs(u_input.c)) % 32u), 1u)]);
    let var_2 = u_input.b;
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global2.xw, global2.xw) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-493f, -501f) - global2.zz)), global2.wz, var_0.zx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global2.wx))))) * global2.yz);
    return _wgslsmith_mult_vec4_u32(vec4<u32>(select(~(u_input.a.x >> (0u % 32u)), 27976u, true || global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, var_2, var_2), vec4<u32>(0u, var_2, var_2, 79145u)), 1u)]), ~(~var_2) >> (1u % 32u), countOneBits(u_input.c), ~min(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 67599u), u_input.a), 0u)), min(_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(85667u, var_2, var_2, 1u)), abs(reverseBits(vec4<u32>(1u, 17149u, 4294967295u, u_input.b)))), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(38946u, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.a.x, 4294967295u, var_2, u_input.c), global3[_wgslsmith_index_u32(39180u, 1u)]), vec4<u32>(_wgslsmith_mod_u32(var_2, var_2), _wgslsmith_mod_u32(var_2, 1u), _wgslsmith_sub_u32(33363u, 19553u), 13560u), ~vec4<u32>(u_input.c, u_input.c, var_2, u_input.b))));
}

fn func_2() -> vec2<bool> {
    var var_0 = !vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 1u)], true, global3[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_div_u32(4294967295u, u_input.c)), 1u)]);
    let var_1 = Struct_1(select(vec2<bool>(!any(vec4<bool>(true, true, true, global3[_wgslsmith_index_u32(u_input.b, 1u)])), !var_0.x), var_0.zz, vec2<bool>(global2.x != _wgslsmith_f_op_f32(select(-903f, global1.x, false)), global1.x != global1.x)), ~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -1i, -47793i), select(vec3<i32>(2147483647i, 1i, -1i), vec3<i32>(1948i, 41882i, 45398i), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 1u)], var_0.x, false))), 1i >> (~u_input.c % 32u), -1i, 19450i), ~_wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(21741u, 9442u, 4294967295u, u_input.a.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 24194u, 16307u, 4294967295u) >> (vec4<u32>(u_input.a.x, u_input.b, 70740u, u_input.a.x) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 0u, u_input.c, 4294967295u), vec4<u32>(35240u, 101659u, 24468u, u_input.b)), func_3())), vec2<i32>(countOneBits(17780i), -1i));
    global1 = global2.wz;
    let var_2 = var_1.c;
    var_0 = select(!select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, var_0.x, true), vec3<bool>(true, true, true), true), false), select(vec3<bool>(true, true, true), select(vec3<bool>(global3[_wgslsmith_index_u32(0u, 1u)], var_1.a.x, false), vec3<bool>(var_0.x, var_1.a.x, true), false), !var_1.a.x), vec3<bool>(true, all(vec4<bool>(true, true, false, var_1.a.x)), false && var_0.x)), !(!(!select(vec3<bool>(true, false, var_0.x), vec3<bool>(true, true, global3[_wgslsmith_index_u32(45u, 1u)]), vec3<bool>(true, var_0.x, global3[_wgslsmith_index_u32(var_1.c, 1u)])))), !(!(!select(vec3<bool>(true, false, true), vec3<bool>(var_1.a.x, false, global3[_wgslsmith_index_u32(u_input.c, 1u)]), var_1.a.x))));
    return vec2<bool>(true, _wgslsmith_sub_i32(var_1.d.x, abs(~var_1.b.x)) < -17452i);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = ~vec3<u32>(reverseBits(0u), 0u, 11982u);
    global3 = array<bool, 1>();
    global0 = any(vec4<bool>(any(select(arg_0.a, func_2(), !global3[_wgslsmith_index_u32(u_input.c, 1u)])), true, !all(select(vec3<bool>(global3[_wgslsmith_index_u32(arg_0.c, 1u)], true, false), vec3<bool>(arg_0.a.x, arg_0.a.x, global3[_wgslsmith_index_u32(18486u, 1u)]), vec3<bool>(true, arg_0.a.x, true))), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.yy, var_0.zx | vec2<u32>(1u, 37687u)), 1u)] == true));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + -1693f)) - _wgslsmith_f_op_f32(-global1.x));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global2.x, 371f))));
    return Struct_1(vec2<bool>(!select(!global3[_wgslsmith_index_u32(4294967295u, 1u)], false, false), false), reverseBits(_wgslsmith_add_vec4_i32(arg_0.b, arg_0.b)), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(4294967295u, u_input.a.x, abs(arg_0.c) ^ max(u_input.b, 0u)), u_input.b), vec2<i32>(~_wgslsmith_sub_i32(arg_0.d.x, firstLeadingBit(-1i)), arg_0.b.x));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_4, arg_3: vec2<i32>) -> vec2<bool> {
    global3 = array<bool, 1>();
    let var_0 = arg_2;
    var var_1 = global2.wxx;
    var var_2 = !select(select(select(select(vec3<bool>(true, false, arg_1.a.x), vec3<bool>(global3[_wgslsmith_index_u32(24131u, 1u)], true, global3[_wgslsmith_index_u32(arg_1.c, 1u)]), false), !vec3<bool>(global3[_wgslsmith_index_u32(12945u, 1u)], false, false), global3[_wgslsmith_index_u32(1u, 1u)] & global3[_wgslsmith_index_u32(1u, 1u)]), !vec3<bool>(true, true, global3[_wgslsmith_index_u32(u_input.b, 1u)]), global3[_wgslsmith_index_u32(firstTrailingBit(abs(arg_1.c)), 1u)]), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), select(vec3<bool>(false, true, false), vec3<bool>(true, arg_1.a.x, global3[_wgslsmith_index_u32(4294967295u, 1u)]), vec3<bool>(false, true, false))), vec3<bool>(true, true, !arg_1.a.x), global3[_wgslsmith_index_u32(~1u, 1u)] != all(vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 1u)], true, arg_1.a.x, arg_1.a.x))), arg_1.a.x);
    let var_3 = select(select(!select(vec4<bool>(true, global3[_wgslsmith_index_u32(41057u, 1u)], global3[_wgslsmith_index_u32(38552u, 1u)], true), vec4<bool>(false, false, false, arg_1.a.x), select(vec4<bool>(arg_1.a.x, true, false, false), vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 1u)], true, arg_1.a.x, var_2.x), false)), select(!(!vec4<bool>(true, var_2.x, arg_1.a.x, arg_1.a.x)), select(vec4<bool>(var_2.x, var_2.x, true, false), vec4<bool>(var_2.x, global3[_wgslsmith_index_u32(u_input.a.x, 1u)], global3[_wgslsmith_index_u32(arg_1.c, 1u)], global3[_wgslsmith_index_u32(44477u, 1u)]), vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 1u)], false, false, false)), !select(vec4<bool>(true, arg_1.a.x, arg_1.a.x, arg_1.a.x), vec4<bool>(true, false, true, arg_1.a.x), global3[_wgslsmith_index_u32(u_input.c, 1u)])), true), !(!vec4<bool>(true, false, !global3[_wgslsmith_index_u32(u_input.b, 1u)], arg_1.a.x)), func_2().x);
    return select(vec2<bool>(all(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, arg_1.a.x), true)), func_2().x), arg_1.a, !select(vec2<bool>(!var_3.x, true), select(vec2<bool>(false, global3[_wgslsmith_index_u32(17853u, 1u)]), vec2<bool>(true, var_2.x), true), select(select(vec2<bool>(arg_1.a.x, var_2.x), var_3.ww, var_2.zx), vec2<bool>(true, true), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(u_input.a);
    global1 = vec2<f32>(_wgslsmith_div_f32(1509f, _wgslsmith_f_op_f32(-124f - _wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(f32(-1f) * -827f));
    let var_1 = !select(func_4(_wgslsmith_mod_i32(1i, 2147483647i) | _wgslsmith_clamp_i32(-1i, 6345i, -23715i), func_1(Struct_1(vec2<bool>(global3[_wgslsmith_index_u32(u_input.b, 1u)], global3[_wgslsmith_index_u32(var_0.x, 1u)]), vec4<i32>(-1i, -44693i, 2147483647i, -2147483647i), u_input.c, vec2<i32>(20294i, 20535i))), Struct_4(_wgslsmith_f_op_f32(ceil(123f))), select(-vec2<i32>(2147483647i, 20033i), vec2<i32>(35399i, 21080i), false)), vec2<bool>(true, global3[_wgslsmith_index_u32(~3504u, 1u)] | func_4(25968i, Struct_1(vec2<bool>(global3[_wgslsmith_index_u32(var_0.x, 1u)], false), vec4<i32>(11629i, -1i, 0i, 9305i), u_input.a.x, vec2<i32>(-35529i, 1i)), Struct_4(global2.x), vec2<i32>(-2147483647i, 0i)).x), select(func_4(~(-1i), Struct_1(vec2<bool>(false, true), vec4<i32>(15561i, -6937i, 0i, -18803i), u_input.b, vec2<i32>(-66973i, -62466i)), Struct_4(global1.x), firstTrailingBit(vec2<i32>(42725i, 2147483647i))), !vec2<bool>(global3[_wgslsmith_index_u32(41198u, 1u)], false), vec2<bool>(false, true)));
    let var_2 = Struct_1(!var_1, firstLeadingBit(~vec4<i32>(-43120i, 23123i >> (var_0.x % 32u), -27448i, ~1155i)), 4294967295u, vec2<i32>(countOneBits(1i) << (var_0.x % 32u), max(func_1(Struct_1(vec2<bool>(true, true), vec4<i32>(26836i, -18824i, -2856i, 2147483647i), u_input.b, vec2<i32>(0i, -16017i))).d.x, ~48340i) << (~select(var_0.x, 12534u, true) % 32u)));
    let var_3 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.x, vec3<u32>(~98013u, _wgslsmith_div_u32(_wgslsmith_clamp_u32(~156499u, var_0.x, _wgslsmith_div_u32(0u, 17240u)), countOneBits(min(0u, var_3))), (311u >> (~var_0.x % 32u)) | ~var_2.c), ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(firstLeadingBit(var_2.c), _wgslsmith_div_u32(var_0.x, var_3)), ~(~var_0.x)), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-627f + _wgslsmith_f_op_f32(-220f - global2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(global1.x - 1664f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1098f))), 928f));
}

