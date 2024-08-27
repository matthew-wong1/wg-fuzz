struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 23> = array<Struct_4, 23>(Struct_4(Struct_1(vec4<i32>(i32(-2147483648), -20855i, 0i, 1i)), Struct_2(-31848i, -358f)), Struct_4(Struct_1(vec4<i32>(4848i, -17594i, -49480i, 28265i)), Struct_2(39518i, -942f)), Struct_4(Struct_1(vec4<i32>(15670i, -1517i, -12211i, 0i)), Struct_2(-10957i, 1000f)), Struct_4(Struct_1(vec4<i32>(-84976i, i32(-2147483648), 2147483647i, -843i)), Struct_2(10739i, 2392f)), Struct_4(Struct_1(vec4<i32>(17806i, i32(-2147483648), 0i, 1i)), Struct_2(-26004i, 125f)), Struct_4(Struct_1(vec4<i32>(-19276i, 19991i, 1i, 10022i)), Struct_2(-28567i, 1000f)), Struct_4(Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, 0i, 26625i)), Struct_2(0i, -542f)), Struct_4(Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, 29539i, 1773i)), Struct_2(i32(-2147483648), 445f)), Struct_4(Struct_1(vec4<i32>(0i, 1i, -1i, -1i)), Struct_2(-1i, 136f)), Struct_4(Struct_1(vec4<i32>(-30460i, 60593i, 0i, 46143i)), Struct_2(1i, 950f)), Struct_4(Struct_1(vec4<i32>(-2397i, 2765i, -34213i, 58136i)), Struct_2(0i, -1064f)), Struct_4(Struct_1(vec4<i32>(24500i, 2147483647i, 2704i, 1i)), Struct_2(15769i, 1583f)), Struct_4(Struct_1(vec4<i32>(2147483647i, i32(-2147483648), -1i, i32(-2147483648))), Struct_2(-21416i, 1175f)), Struct_4(Struct_1(vec4<i32>(26719i, 2147483647i, 2147483647i, 0i)), Struct_2(i32(-2147483648), -554f)), Struct_4(Struct_1(vec4<i32>(28239i, 29193i, -22231i, 4191i)), Struct_2(-36917i, -549f)), Struct_4(Struct_1(vec4<i32>(36334i, -1i, -53434i, i32(-2147483648))), Struct_2(-40604i, -795f)), Struct_4(Struct_1(vec4<i32>(-5524i, -97370i, 2147483647i, -46480i)), Struct_2(790i, 472f)), Struct_4(Struct_1(vec4<i32>(2147483647i, -30216i, i32(-2147483648), -13037i)), Struct_2(0i, 1202f)), Struct_4(Struct_1(vec4<i32>(1i, 0i, -6443i, -11519i)), Struct_2(-26897i, 683f)), Struct_4(Struct_1(vec4<i32>(-36458i, 2147483647i, 2210i, -51593i)), Struct_2(2147483647i, -1466f)), Struct_4(Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), 33940i, -16585i)), Struct_2(-1i, 2620f)), Struct_4(Struct_1(vec4<i32>(1i, 2147483647i, 91696i, 0i)), Struct_2(37729i, -130f)), Struct_4(Struct_1(vec4<i32>(-1i, -18844i, -25409i, -25553i)), Struct_2(-1i, 1162f)));

var<private> global1: array<Struct_1, 28>;

var<private> global2: array<Struct_3, 20>;

var<private> global3: array<bool, 10>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<bool> {
    var var_0 = 1u;
    var var_1 = countOneBits(~u_input.a);
    var var_2 = Struct_4(global1[_wgslsmith_index_u32(4294967295u, 28u)], Struct_2(0i, _wgslsmith_f_op_f32(-1791f - -930f)));
    var var_3 = vec3<f32>(var_2.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-945f)) * var_2.b.b), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1681f + -1153f))), _wgslsmith_f_op_f32(abs(var_2.b.b)), u_input.a.x < var_2.a.a.x)));
    let var_4 = global0[_wgslsmith_index_u32(u_input.e.x, 23u)];
    return !vec4<bool>((-u_input.d | u_input.d) == ~(~(-24737i)), !(_wgslsmith_f_op_f32(-var_3.x) < 2228f), global3[_wgslsmith_index_u32(~(~(u_input.e.x & 2020u)), 10u)], false);
}

fn func_2(arg_0: vec4<f32>) -> vec4<i32> {
    var var_0 = Struct_5(func_3());
    var var_1 = Struct_2(u_input.a.x, -331f);
    var var_2 = -u_input.a.zx;
    var var_3 = firstLeadingBit(select(_wgslsmith_mod_vec2_u32(u_input.e.zy, u_input.e.xy), vec2<u32>(~0u, max(~u_input.e.x, u_input.e.x)), !select(vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.e.x, 10u)]), func_3().yz, vec2<bool>(false, true))));
    let var_4 = -vec2<i32>(var_1.a, var_1.a);
    return countOneBits(vec4<i32>(var_1.a, var_1.a, u_input.c.x, _wgslsmith_clamp_i32(var_1.a >> (_wgslsmith_sub_u32(u_input.e.x, 4294967295u) % 32u), var_4.x, ~min(var_4.x, 2147483647i))));
}

fn func_1(arg_0: vec4<f32>) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(u_input.e.x, 20u)];
    let var_1 = Struct_1(func_2(arg_0));
    let var_2 = Struct_4(var_1, Struct_2(0i, arg_0.x));
    let var_3 = global0[_wgslsmith_index_u32(~4294967295u, 23u)];
    let var_4 = var_1;
    return min(abs(~u_input.e.x), firstTrailingBit(50973u));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec2<f32>) -> StorageBuffer {
    var var_0 = -1078f;
    global1 = array<Struct_1, 28>();
    var var_1 = 57343u;
    global0 = array<Struct_4, 23>();
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(-arg_1.b)))) * _wgslsmith_f_op_f32(691f * _wgslsmith_f_op_f32(f32(-1f) * -602f))), _wgslsmith_f_op_f32(sign(arg_2.x)), false);
    return StorageBuffer(u_input.e.xxz, _wgslsmith_clamp_vec4_u32(u_input.e, reverseBits(vec4<u32>(u_input.e.x, ~u_input.e.x, min(12439u, 31797u), countOneBits(u_input.e.x))), ~(~(~u_input.e))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(abs(u_input.e.x) | 4294967295u);
    let var_1 = Struct_5(!(!select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 10u)], true, false), vec4<bool>(global3[_wgslsmith_index_u32(u_input.e.x, 10u)], false, false, false)), vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.e.x, 10u)], false, true), select(global3[_wgslsmith_index_u32(u_input.e.x, 10u)], global3[_wgslsmith_index_u32(u_input.e.x, 10u)], true))));
    var var_2 = var_1.a.x;
    let var_3 = true;
    var_0 = 0u;
    let var_4 = ~vec2<i32>(~_wgslsmith_dot_vec4_i32(-u_input.c, _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, 1i, -869i, -53483i), vec4<i32>(12612i, u_input.d, u_input.c.x, u_input.b))), reverseBits(-6315i));
    let x = u_input.a;
    s_output = func_4(1u >= func_1(vec4<f32>(1394f, -493f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1160f)), Struct_2(~1i, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -465f) * _wgslsmith_f_op_f32(round(-2077f))))), vec2<f32>(301f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1190f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(324f, 1351f))))));
}

