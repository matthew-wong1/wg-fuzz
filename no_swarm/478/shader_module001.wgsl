struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 6>;

var<private> global1: array<i32, 18> = array<i32, 18>(1i, -23644i, 2147483647i, 26347i, 1i, -1i, -27367i, -29265i, i32(-2147483648), i32(-2147483648), i32(-2147483648), 54205i, 2147483647i, -34856i, 0i, 0i, 0i, 25267i);

var<private> global2: Struct_1;

var<private> global3: array<i32, 6>;

var<private> global4: array<i32, 6> = array<i32, 6>(-54381i, -1i, 2737i, -6216i, 42563i, -1i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-209f, _wgslsmith_f_op_f32(abs(arg_1.c))) * _wgslsmith_f_op_vec2_f32(-arg_0.zx))), ~(~(u_input.a >> (~u_input.a % vec3<u32>(32u)))), arg_1, Struct_1(~(u_input.c & (u_input.c >> (arg_1.a % vec4<u32>(32u)))), -520i, _wgslsmith_f_op_f32(global2.c + _wgslsmith_div_f32(_wgslsmith_div_f32(global2.c, 553f), -451f)), -_wgslsmith_sub_vec4_i32(countOneBits(global2.d), global2.d)));
    global2 = arg_1;
    let var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(~global2.a.x, min(1u, _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(global2.a.x, u_input.c.x, 48923u, 4294967295u)) | 1u), global2.a.x, arg_1.a.x), vec4<u32>(4294967295u, _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec2_u32(min(vec2<u32>(4294967295u, global2.a.x), global2.a.xx), vec2<u32>(var_0.d.a.x, 51846u) ^ vec2<u32>(4294967295u, 7959u))), 4294967295u, ~u_input.c.x));
    let var_2 = var_0.c;
    let var_3 = vec4<bool>(!any(vec4<bool>(any(vec2<bool>(true, true)), true, false, true)), true, true, any(vec4<bool>(true, true, true, true)));
    return ~4294967295u << (var_0.d.a.x % 32u);
}

fn func_2(arg_0: Struct_2) -> i32 {
    let var_0 = 66900u;
    let var_1 = vec2<bool>(false, -1i > global4[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-304f, global2.c, global2.c) - vec3<f32>(-261f, -112f, global2.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(802f, -1196f, global2.c)), any(vec2<bool>(true, true)))), Struct_1(~vec4<u32>(u_input.c.x, 1u, var_0, arg_0.c.a.x), global2.d.x, global2.c, vec4<i32>(arg_0.d.b, -12493i, u_input.b.x, arg_0.d.b))), 6u)]);
    let var_2 = _wgslsmith_clamp_i32(18392i, 0i, global4[_wgslsmith_index_u32(var_0, 6u)]);
    var var_3 = Struct_1(global2.a, _wgslsmith_mod_i32(u_input.b.x, _wgslsmith_dot_vec3_i32(abs(arg_0.d.d.xyz), reverseBits(global2.d.zzy))), _wgslsmith_f_op_f32(f32(-1f) * -680f), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(~var_0, 18u)], arg_0.d.b, firstTrailingBit(12103i), ~35931i), global2.d, vec4<i32>(global2.d.x, 0i, 2147483647i, u_input.b.x)), vec4<i32>(1i, -12940i, firstLeadingBit(_wgslsmith_dot_vec3_i32(arg_0.d.d.yxw, vec3<i32>(global4[_wgslsmith_index_u32(u_input.c.x, 6u)], global1[_wgslsmith_index_u32(4294967295u, 18u)], -2147483647i))), _wgslsmith_clamp_i32(var_2, 1i, i32(-1i) * -18560i))));
    var var_4 = ~abs(vec4<u32>(~global2.a.x, _wgslsmith_sub_u32(32720u, 1u), 1u, 27098u) >> (~arg_0.c.a % vec4<u32>(32u)));
    return abs(select(~_wgslsmith_div_i32(~var_2, global3[_wgslsmith_index_u32(~var_0, 6u)]), _wgslsmith_div_i32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 2147483647i) >> (50102u % 32u), all(!select(vec2<bool>(var_1.x, var_1.x), global0[_wgslsmith_index_u32(10788u, 6u)], vec2<bool>(var_1.x, var_1.x)))));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = arg_0.c.c;
    var_0 = _wgslsmith_f_op_f32(ceil(-312f));
    let var_1 = vec2<bool>(-410f > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -387f))))), false);
    let var_2 = (_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.c.a.x, 4294967295u), vec2<u32>(global2.a.x, 14406u)), ~(~arg_2.d.a.ww)) ^ arg_2.c.a.yy) & ~global2.a.xz;
    global2 = Struct_1(~u_input.c, func_2(arg_0), -886f, select(~_wgslsmith_clamp_vec4_i32(arg_0.d.d, reverseBits(arg_0.c.d), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.b.x, 0i, 1i), vec4<i32>(arg_1.x, -2147483647i, global3[_wgslsmith_index_u32(arg_0.c.a.x, 6u)], -1i))), -select(firstLeadingBit(vec4<i32>(global3[_wgslsmith_index_u32(arg_2.b.x, 6u)], u_input.b.x, -2147483647i, global3[_wgslsmith_index_u32(22450u, 6u)])), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -1i), select(vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, true, false), var_1.x)), vec4<bool>(arg_2.c.a.x != ~4294967295u, all(vec2<bool>(false, true)), var_1.x, any(select(vec2<bool>(false, var_1.x), global0[_wgslsmith_index_u32(79257u, 6u)], vec2<bool>(false, true))))));
    return select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(any(select(!vec3<bool>(true, var_1.x, true), select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(true, var_1.x, true), false), select(vec3<bool>(var_1.x, true, false), vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(true, var_1.x, true)))), all(vec2<bool>(var_1.x, var_1.x)), false), select(vec3<bool>(!select(false, false, var_1.x), all(vec4<bool>(var_1.x, true, var_1.x, true)), !var_1.x), vec3<bool>(all(vec4<bool>(false, false, false, true)), true, true), true));
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec3<i32>) -> StorageBuffer {
    var var_0 = 0u;
    var var_1 = vec2<u32>(abs(_wgslsmith_div_u32(1u, u_input.a.x & 4294967295u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(abs(arg_2.a.x), _wgslsmith_dot_vec3_u32(global2.a.yxw, vec3<u32>(u_input.c.x, 58129u, 9329u)), countOneBits(u_input.c.x)), ~select(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 74990u, 51553u), arg_2.a.yxx), global2.a.zyy, func_1(Struct_2(vec2<f32>(304f, global2.c), global2.a.yzw, Struct_1(vec4<u32>(63920u, 1u, 4294967295u, u_input.a.x), 2147483647i, -1069f, global2.d), arg_2), arg_2.d.yzw, Struct_2(vec2<f32>(1000f, 1103f), vec3<u32>(0u, 7339u, global2.a.x), Struct_1(vec4<u32>(arg_2.a.x, 18393u, u_input.c.x, arg_2.a.x), global4[_wgslsmith_index_u32(20702u, 6u)], global2.c, arg_2.d), Struct_1(u_input.c, global3[_wgslsmith_index_u32(0u, 6u)], 469f, global2.d))))));
    global2 = Struct_1(~global2.a, 0i, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.c, 1278f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-arg_2.c)) * -1000f)), firstTrailingBit(-vec4<i32>(global2.d.x, 39451i, global1[_wgslsmith_index_u32(4294967295u, 18u)], global1[_wgslsmith_index_u32(16813u, 18u)]) << (global2.a % vec4<u32>(32u))));
    let var_2 = countOneBits(firstLeadingBit(arg_3.yz));
    var var_3 = select(!(arg_3.x < 0i), true, arg_1.x);
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1377f)), _wgslsmith_add_vec4_i32(vec4<i32>(~(-1i), u_input.b.x, ~(var_2.x & 17094i), global3[_wgslsmith_index_u32(60573u, 6u)]), -select(~global2.d, select(global2.d, vec4<i32>(global3[_wgslsmith_index_u32(55521u, 6u)], 2147483647i, -1i, u_input.b.x), vec4<bool>(true, true, false, true)), true)), 46063u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c * global2.c)), _wgslsmith_f_op_f32(round(2323f))) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global2.c, _wgslsmith_f_op_f32(-global2.c))))), select(vec3<bool>(true, false, select(true, false, true) | true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(true, false, true)), !func_1(Struct_2(vec2<f32>(1213f, 1482f), global2.a.wzw, Struct_1(u_input.c, 0i, 528f, global2.d), Struct_1(global2.a, global3[_wgslsmith_index_u32(1u, 6u)], global2.c, vec4<i32>(global4[_wgslsmith_index_u32(63142u, 6u)], global3[_wgslsmith_index_u32(68353u, 6u)], 38820i, 0i))), global2.d.yyw, Struct_2(vec2<f32>(-1120f, 694f), u_input.a, Struct_1(vec4<u32>(u_input.c.x, global2.a.x, u_input.a.x, global2.a.x), 39827i, global2.c, global2.d), Struct_1(vec4<u32>(global2.a.x, u_input.c.x, global2.a.x, 57227u), global2.d.x, global2.c, vec4<i32>(global3[_wgslsmith_index_u32(1u, 6u)], global3[_wgslsmith_index_u32(5284u, 6u)], 1i, global2.d.x)))), vec3<bool>(true, true, true)), vec3<bool>(countOneBits(-1379i) < global3[_wgslsmith_index_u32(select(u_input.a.x, 107750u, false), 6u)], false, true)), Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(9681u, 4294967295u, 37441u, 91136u), u_input.c >> (u_input.c % vec4<u32>(32u))), min(~global2.a, ~u_input.c)), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(1u, 18u)], u_input.b.x, -57847i), global2.d.xzx) & countOneBits(vec3<i32>(2147483647i, 12688i, global3[_wgslsmith_index_u32(1u, 6u)])), firstLeadingBit(vec3<i32>(-6587i, u_input.b.x, global4[_wgslsmith_index_u32(43253u, 6u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c)), _wgslsmith_sub_vec4_i32(~vec4<i32>(global4[_wgslsmith_index_u32(global2.a.x, 6u)], 30187i, 1i, global1[_wgslsmith_index_u32(48797u, 18u)]), (vec4<i32>(global4[_wgslsmith_index_u32(global2.a.x, 6u)], global3[_wgslsmith_index_u32(global2.a.x, 6u)], -14934i, global3[_wgslsmith_index_u32(0u, 6u)]) ^ global2.d) >> (vec4<u32>(16083u, 41763u, global2.a.x, 0u) % vec4<u32>(32u)))), abs(global2.d.wyx));
}

