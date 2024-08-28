struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 16> = array<vec3<i32>, 16>(vec3<i32>(-49091i, 0i, 1i), vec3<i32>(-84514i, 29089i, 1i), vec3<i32>(-2072i, -6301i, 2147483647i), vec3<i32>(7496i, 1i, i32(-2147483648)), vec3<i32>(14488i, -43509i, 10361i), vec3<i32>(2147483647i, -30372i, -1i), vec3<i32>(21888i, 1i, i32(-2147483648)), vec3<i32>(-35248i, 0i, -1i), vec3<i32>(-3480i, 37786i, -8781i), vec3<i32>(-3157i, 1i, -14295i), vec3<i32>(i32(-2147483648), 81537i, -1i), vec3<i32>(17216i, i32(-2147483648), 54068i), vec3<i32>(-1i, 0i, -33838i), vec3<i32>(1i, 0i, -28912i), vec3<i32>(-36058i, 0i, 52701i), vec3<i32>(20916i, 1i, 38615i));

var<private> global1: array<vec4<f32>, 17> = array<vec4<f32>, 17>(vec4<f32>(399f, 981f, -733f, 894f), vec4<f32>(-828f, 1320f, 219f, -2356f), vec4<f32>(1000f, -1584f, -1283f, 440f), vec4<f32>(-1479f, -1505f, -1476f, -160f), vec4<f32>(323f, 1246f, 2121f, -407f), vec4<f32>(-534f, 731f, 554f, 204f), vec4<f32>(-1245f, -304f, 557f, 785f), vec4<f32>(-206f, 1111f, 985f, -183f), vec4<f32>(-1502f, 1194f, -173f, 875f), vec4<f32>(158f, 1070f, -286f, 806f), vec4<f32>(-854f, 908f, 1377f, 1927f), vec4<f32>(1000f, -640f, 127f, -820f), vec4<f32>(1000f, 377f, -1282f, 229f), vec4<f32>(578f, -1724f, -1532f, 731f), vec4<f32>(-260f, 526f, -1162f, 333f), vec4<f32>(-762f, 1356f, 949f, 1400f), vec4<f32>(936f, 306f, -1466f, -142f));

var<private> global2: Struct_2;

var<private> global3: i32 = -13124i;

var<private> global4: array<bool, 12>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> vec3<u32> {
    return vec3<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(0u, arg_0.a.a), _wgslsmith_dot_vec4_u32(vec4<u32>(select(arg_0.a.a, global2.a.c.x, false), ~global2.a.a, 5890u, ~arg_0.a.c.x), min(vec4<u32>(global2.a.a, 89048u, global2.a.a, 0u), ~vec4<u32>(global2.a.a, global2.a.a, global2.a.a, 1u)))), reverseBits(~abs(_wgslsmith_dot_vec2_u32(global2.a.c, vec2<u32>(arg_0.a.c.x, 19374u)))), ~abs(abs(~5411u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: i32, arg_3: u32) -> f32 {
    var var_0 = global2.a.d;
    var var_1 = vec4<u32>(4294967295u, arg_1.x, 2076u, abs(firstLeadingBit(min(~1u, 11218u))));
    var var_2 = !vec4<bool>(arg_0.a.d, !any(select(vec3<bool>(arg_0.a.d, true, false), vec3<bool>(true, false, arg_0.a.d), true)), false, any(vec2<bool>(true, true)));
    global2 = Struct_2(global2.a, -9839i);
    var var_3 = !any(vec3<bool>(min(-1i, -58097i) <= _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b, global2.b), global0[_wgslsmith_index_u32(arg_3, 16u)]), false, true));
    return _wgslsmith_f_op_f32(max(1000f, arg_0.a.b.x));
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = Struct_1(0u, vec2<f32>(global2.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(global2.a, -2147483647i), vec4<u32>(global2.a.c.x, 0u, global2.a.c.x, global2.a.c.x), -60628i, global2.a.c.x)))), abs(vec2<u32>(0u, ~(~global2.a.c.x))), global2.a.d);
    global0 = array<vec3<i32>, 16>();
    global0 = array<vec3<i32>, 16>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(714f + _wgslsmith_f_op_f32(arg_0 - arg_0)), _wgslsmith_f_op_f32(round(1f))))));
    global1 = array<vec4<f32>, 17>();
    return _wgslsmith_f_op_f32(-978f - arg_0);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: u32) -> i32 {
    global0 = array<vec3<i32>, 16>();
    global0 = array<vec3<i32>, 16>();
    global3 = -_wgslsmith_dot_vec4_i32(~(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, global2.b, arg_1.x, global2.b), vec4<i32>(0i, -12930i, 2147483647i, global2.b)) | vec4<i32>(global2.b, arg_1.x, global2.b, 0i)), vec4<i32>(-1i) * -max(vec4<i32>(2842i, arg_1.x, -67915i, u_input.b), vec4<i32>(1334i, 0i, global2.b, -50455i)));
    var var_0 = !vec2<bool>(all(!select(vec3<bool>(false, global4[_wgslsmith_index_u32(arg_2, 12u)], global2.a.d), vec3<bool>(arg_0.d, false, false), false)), !all(vec2<bool>(false, global4[_wgslsmith_index_u32(global2.a.a, 12u)])));
    let var_1 = ~(-2147483647i);
    return 40557i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -firstTrailingBit(-(~vec3<i32>(u_input.b, 1i, u_input.a))) >> (~_wgslsmith_add_vec3_u32(~firstTrailingBit(vec3<u32>(global2.a.a, global2.a.a, 34492u)), select(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, global2.a.a, global2.a.a), vec3<u32>(global2.a.c.x, 63462u, global2.a.c.x)), func_1(Struct_2(Struct_1(31173u, vec2<f32>(796f, global2.a.b.x), vec2<u32>(20176u, 24148u), global4[_wgslsmith_index_u32(9895u, 12u)]), global2.b), true), select(vec3<bool>(global4[_wgslsmith_index_u32(global2.a.a, 12u)], global4[_wgslsmith_index_u32(1u, 12u)], global4[_wgslsmith_index_u32(global2.a.a, 12u)]), vec3<bool>(global2.a.d, global4[_wgslsmith_index_u32(4294967295u, 12u)], true), vec3<bool>(true, global4[_wgslsmith_index_u32(global2.a.c.x, 12u)], global2.a.d)))) % vec3<u32>(32u));
    global3 = func_4(Struct_1(_wgslsmith_mult_u32(4294967295u | global2.a.c.x, ~_wgslsmith_mod_u32(56443u, global2.a.c.x)), vec2<f32>(global2.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(-218f)) - -1329f)), global2.a.c, _wgslsmith_mult_u32(~53734u, ~global2.a.c.x) <= 1u), -(~abs(var_0.xz)) ^ var_0.xx, reverseBits(_wgslsmith_add_u32(~select(117276u, 5869u, true), global2.a.a)));
    var var_1 = global2.b;
    var var_2 = _wgslsmith_sub_vec4_i32(firstTrailingBit(-vec4<i32>(u_input.a, u_input.b, -1i, i32(-1i) * -2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(26610i, ~global2.b, reverseBits(var_0.x), _wgslsmith_add_i32(-2147483647i, 1i)), vec4<i32>(0i, global2.b, u_input.b, firstLeadingBit(18931i))));
    var_2 = ~min(vec4<i32>(_wgslsmith_dot_vec3_i32(min(vec3<i32>(36275i, var_2.x, u_input.a), vec3<i32>(var_2.x, 15092i, var_2.x)), vec3<i32>(global2.b, var_0.x, var_0.x)), global2.b, 1i, var_0.x), _wgslsmith_div_vec4_i32(~firstLeadingBit(vec4<i32>(global2.b, 2147483647i, global2.b, var_0.x)), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 0i, var_0.x, global2.b), vec4<i32>(1i, u_input.b, 2147483647i, 0i)), vec4<i32>(u_input.a, var_0.x, var_2.x, u_input.a) << (vec4<u32>(30893u, global2.a.a, global2.a.a, 35130u) % vec4<u32>(32u)), ~vec4<i32>(var_0.x, var_2.x, global2.b, var_2.x))));
    global4 = array<bool, 12>();
    var var_3 = _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(global2.a.a, global2.a.c.x, global2.a.c.x, 0u)), ~vec4<u32>(0u, 40782u, global2.a.c.x, 4294967295u)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 71806u, 4294967295u, global2.a.c.x) | vec4<u32>(39383u, global2.a.c.x, global2.a.c.x, global2.a.c.x), ~vec4<u32>(4294967295u, global2.a.c.x, 141312u, global2.a.a))), select(min(_wgslsmith_sub_u32(65815u, global2.a.c.x), ~60830u), global2.a.c.x, !(!global4[_wgslsmith_index_u32(global2.a.c.x, 12u)])), 1u, 0u), vec4<u32>(8253u, ~71744u, 7304u, _wgslsmith_add_u32(global2.a.c.x, global2.a.c.x & global2.a.a)), ~(vec4<u32>(abs(34602u), global2.a.a, global2.a.c.x, global2.a.c.x) & ~(~vec4<u32>(global2.a.c.x, 1u, global2.a.a, global2.a.c.x))));
    var_1 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x | 1u);
}

