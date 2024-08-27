struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<vec2<i32>, 6> = array<vec2<i32>, 6>(vec2<i32>(-6297i, 21703i), vec2<i32>(0i, -44957i), vec2<i32>(-16755i, 0i), vec2<i32>(1i, 61984i), vec2<i32>(-27212i, 9165i), vec2<i32>(36649i, 0i));

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(-1000f, 353f), Struct_1(658f, 1307f), Struct_1(-848f, -324f), Struct_1(-1129f, -1029f), Struct_1(-960f, -939f), Struct_1(146f, 1715f), Struct_1(1328f, -328f), Struct_1(2229f, 747f), Struct_1(-811f, 174f), Struct_1(1079f, -1707f), Struct_1(293f, 892f), Struct_1(888f, -750f), Struct_1(836f, 1437f), Struct_1(666f, -271f), Struct_1(1514f, -501f), Struct_1(799f, -102f), Struct_1(-603f, 490f), Struct_1(818f, 1109f), Struct_1(583f, -402f), Struct_1(971f, 332f), Struct_1(204f, 1103f), Struct_1(397f, -1000f), Struct_1(828f, 1758f), Struct_1(-966f, 156f), Struct_1(-442f, 618f), Struct_1(-1071f, -792f), Struct_1(-245f, -1267f), Struct_1(-1225f, 1010f), Struct_1(1337f, -512f));

var<private> global3: array<u32, 25>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> bool {
    let var_0 = -590f;
    global1 = array<vec2<i32>, 6>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -344f)), 213f)), var_0)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(777f)), 349f));
    var var_2 = _wgslsmith_mult_i32(-2147483647i, _wgslsmith_dot_vec4_i32(max(_wgslsmith_mod_vec4_i32(select(vec4<i32>(-11676i, 0i, 0i, -1357i), vec4<i32>(22340i, 2147483647i, 0i, 2147483647i), vec4<bool>(true, true, global0.x, global0.x)), select(vec4<i32>(1i, -2147483647i, -38921i, -14475i), vec4<i32>(3322i, 11636i, 2147483647i, -16010i), vec4<bool>(global0.x, global0.x, global0.x, global0.x))), _wgslsmith_div_vec4_i32(~vec4<i32>(-18821i, -25495i, 0i, -24982i), max(vec4<i32>(-21602i, -21364i, 1i, 6368i), vec4<i32>(-36686i, -32737i, -2147483647i, -32465i)))), vec4<i32>(-1i, 2147483647i, -20893i, -abs(12558i))));
    global3 = array<u32, 25>();
    return any(!global0.zwx);
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = -((-27762i ^ (1i >> ((global3[_wgslsmith_index_u32(u_input.b, 25u)] & 0u) % 32u))) << (~(~_wgslsmith_div_u32(u_input.c, global3[_wgslsmith_index_u32(26110u, 25u)])) % 32u));
    global0 = !vec4<bool>(!global0.x, false, all(!(!vec4<bool>(false, true, global0.x, global0.x))), true);
    var var_1 = _wgslsmith_mult_vec4_u32(~(~vec4<u32>(_wgslsmith_mult_u32(1u, u_input.c), global3[_wgslsmith_index_u32(u_input.a, 25u)], ~4481u, reverseBits(u_input.c))), vec4<u32>(~global3[_wgslsmith_index_u32(1u, 25u)], 4294967295u, 0u, _wgslsmith_sub_u32(~0u, global3[_wgslsmith_index_u32(abs(0u), 25u)])) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.c, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(68651u, 1u), 25u)], u_input.c >> (global3[_wgslsmith_index_u32(82923u, 25u)] % 32u)), vec4<u32>(~u_input.b, _wgslsmith_clamp_u32(u_input.a, 4294967295u, u_input.a), abs(u_input.b), ~4294967295u)) % vec4<u32>(32u)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1398f)), _wgslsmith_f_op_f32(f32(-1f) * -1202f)), arg_0.a, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.a - arg_0.b))) * -796f));
    var var_3 = var_1.yz;
    return !vec4<bool>(global0.x, all(vec4<bool>(func_3(), var_2.b <= 1000f, func_3(), all(global0.ywz))), false, any(select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(true, true, true, true), global0.x)));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: vec3<i32>) -> vec3<f32> {
    let var_0 = abs(arg_1);
    global0 = func_2(global2[_wgslsmith_index_u32(~countOneBits(~global3[_wgslsmith_index_u32(0u, 25u)]), 29u)]);
    global3 = array<u32, 25>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(708f, -548f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-478f)) * -639f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1145f - -652f)))))));
    var var_2 = global2[_wgslsmith_index_u32(firstTrailingBit(global3[_wgslsmith_index_u32(u_input.b, 25u)]), 29u)];
    return vec3<f32>(_wgslsmith_f_op_f32(var_2.b * -866f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-549f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.a)))) + var_2.a), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + var_2.a))), var_2.b)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: i32) -> Struct_1 {
    global0 = select(vec4<bool>(1i < (~13669i ^ _wgslsmith_add_i32(arg_2, arg_2)), !(!(!global0.x)), true, true), !vec4<bool>(all(!global0.zxz), global0.x, _wgslsmith_f_op_f32(889f - -196f) < arg_1.x, !global0.x), global0.x);
    var var_0 = 929u;
    global0 = select(select(!vec4<bool>(global0.x, true, global0.x, false), vec4<bool>(true, true, true | all(global0.zw), any(!global0.wxz)), vec4<bool>(arg_0.b <= -2010f, func_3() || true, false, true && global0.x)), vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.b << (_wgslsmith_clamp_u32(u_input.a, 0u, 64728u) % 32u), 25u)] != ~u_input.b, global0.x, u_input.c == _wgslsmith_mod_u32(0u, abs(u_input.b))), func_2(arg_0));
    var_0 = ~0u;
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(arg_2, arg_2 ^ arg_2, arg_2), -50625i);
    return Struct_1(arg_1.x, _wgslsmith_f_op_f32(min(arg_0.a, -1162f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(global2[_wgslsmith_index_u32(u_input.c, 29u)], _wgslsmith_f_op_vec3_f32(func_1(global1[_wgslsmith_index_u32(13811u >> (1u % 32u), 6u)], countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 12018u, 15164u, 54045u), vec4<u32>(1u, 2964u, 19027u, 61974u), vec4<u32>(u_input.a, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(47291u, 25u)], 25u)], 1u, u_input.c)) >> (~vec4<u32>(u_input.a, global3[_wgslsmith_index_u32(56350u, 25u)], 67941u, 4294967295u) % vec4<u32>(32u))), firstTrailingBit(~(~vec3<i32>(20170i, -1i, 0i))))), ~max(_wgslsmith_mod_i32(~19033i, min(1i, 14388i)), 1i));
    var var_1 = firstTrailingBit(-_wgslsmith_add_i32(min(-1i, 33370i), _wgslsmith_clamp_i32(-50677i, select(15080i, 32983i, global0.x), 1i)));
    var_1 = -_wgslsmith_clamp_i32(abs(~(~34227i)), 1i, _wgslsmith_mod_i32(2147483647i, 58148i));
    let var_2 = vec4<bool>(all(!func_2(func_4(var_0, vec3<f32>(var_0.b, var_0.a, var_0.b), -51066i))), all(vec4<bool>(global0.x, func_2(var_0).x, true, false)), true, global0.x);
    global3 = array<u32, 25>();
    global0 = vec4<bool>(global0.x, !(-2263f < var_0.b), true, false);
    let var_3 = max(-23343i, -2147483647i ^ ~(0i << (~u_input.c % 32u)));
    let var_4 = _wgslsmith_mult_u32(countOneBits(u_input.b), _wgslsmith_add_u32(firstLeadingBit(global3[_wgslsmith_index_u32(select(14203u, 1u, func_2(var_0).x), 25u)]), ~global3[_wgslsmith_index_u32(~firstLeadingBit(0u), 25u)]));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(4294967295u, ~abs(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(47271u, 25u)], 25u)]) >> (u_input.b % 32u), _wgslsmith_add_u32(firstTrailingBit(abs(32467u)), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, var_4, 0u, var_4), vec4<u32>(u_input.b, u_input.a, 45866u, 1u)), 4294967295u))), reverseBits(abs(global1[_wgslsmith_index_u32(firstLeadingBit(var_4), 6u)] >> ((vec2<u32>(var_4, u_input.a) | vec2<u32>(u_input.b, 0u)) % vec2<u32>(32u)))));
}

