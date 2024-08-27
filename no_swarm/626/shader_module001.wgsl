struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: bool,
    d: i32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec3<i32>,
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

var<private> global0: array<vec3<u32>, 9> = array<vec3<u32>, 9>(vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(7027u, 35543u, 1u), vec3<u32>(18583u, 0u, 54249u), vec3<u32>(23978u, 12051u, 32175u), vec3<u32>(0u, 14281u, 1u), vec3<u32>(9121u, 29425u, 9874u), vec3<u32>(79213u, 0u, 0u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(0u, 1u, 34626u));

var<private> global1: bool;

var<private> global2: array<u32, 4>;

var<private> global3: vec3<u32> = vec3<u32>(45456u, 84638u, 0u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_2) -> vec4<i32> {
    let var_0 = Struct_1(vec3<f32>(705f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1497f, arg_0.x), arg_2.b.a.x)), _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.b.a.x))))), -(vec4<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(u_input.a, arg_2.e.xx), firstLeadingBit(u_input.a.x), abs(arg_2.b.d.x)) & -vec4<i32>(u_input.d.x, u_input.d.x, arg_2.d, 1i)), any(vec3<bool>(all(select(vec4<bool>(true, arg_1, arg_2.c, false), vec4<bool>(arg_2.a.x, arg_2.c, false, arg_1), vec4<bool>(arg_1, arg_2.a.x, true, false))), true, true)), vec4<i32>(~2147483647i, 22244i, select(u_input.a.x, _wgslsmith_mod_i32(u_input.d.x, 1i), arg_2.b.c), ~(u_input.a.x & arg_2.b.b.x)) << (vec4<u32>(_wgslsmith_div_u32(1u, global3.x) >> (_wgslsmith_mult_u32(global3.x, 4294967295u) % 32u), 25799u, global3.x, _wgslsmith_mod_u32(u_input.b.x >> (u_input.b.x % 32u), global2[_wgslsmith_index_u32(~u_input.b.x, 4u)])) % vec4<u32>(32u)));
    global0 = array<vec3<u32>, 9>();
    global0 = array<vec3<u32>, 9>();
    global0 = array<vec3<u32>, 9>();
    global3 = ~min(~u_input.b, vec3<u32>(global2[_wgslsmith_index_u32(reverseBits(global3.x ^ 0u), 4u)], 7053u, countOneBits(countOneBits(global3.x))));
    return var_0.b;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec4<i32>, arg_3: i32) -> vec4<bool> {
    return vec4<bool>(true, arg_0.b.c, arg_0.b.c, abs(u_input.b.x) < 4294967295u);
}

fn func_2() -> vec2<bool> {
    let var_0 = Struct_1(vec3<f32>(-286f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-602f, 1000f))), 1000f), firstTrailingBit(abs(min(vec4<i32>(u_input.e.x, u_input.a.x, 0i, u_input.d.x), u_input.d))), any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))) || select(true, true, true), -(vec4<i32>(firstLeadingBit(-2147483647i), -35606i, u_input.e.x, -2147483647i) << (max(vec4<u32>(global3.x, 16886u, 85620u, 28688u), vec4<u32>(89735u, global3.x, 1u, u_input.b.x)) % vec4<u32>(32u))));
    var var_1 = func_4(Struct_2(vec2<bool>(true, true), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1119f, var_0.a.x, var_0.a.x), vec3<f32>(220f, var_0.a.x, -1000f)))), -select(u_input.d, var_0.b, vec4<bool>(false, true, var_0.c, var_0.c)), !select(var_0.c, var_0.c, var_0.c), vec4<i32>(u_input.a.x, _wgslsmith_div_i32(0i, -18495i), ~54315i, countOneBits(u_input.e.x))), var_0.c, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-7795i, 1i, u_input.d.x, u_input.d.x)), -vec4<i32>(var_0.d.x, -28854i, u_input.e.x, 13867i)) ^ abs(1i), vec3<i32>(38048i, u_input.d.x | 0i, min(1i ^ var_0.d.x, -43449i))), true, min(max(select(func_3(var_0.a.xx, true, Struct_2(vec2<bool>(var_0.c, var_0.c), Struct_1(vec3<f32>(var_0.a.x, -1161f, -406f), var_0.d, false, vec4<i32>(var_0.d.x, 0i, var_0.b.x, u_input.d.x)), var_0.c, var_0.b.x, var_0.b.xzz)), min(var_0.b, u_input.d), true), ~select(u_input.d, vec4<i32>(var_0.b.x, 1i, u_input.a.x, var_0.d.x), vec4<bool>(true, true, var_0.c, true))), max(~_wgslsmith_clamp_vec4_i32(vec4<i32>(63140i, -15577i, 2147483647i, 0i), vec4<i32>(26645i, var_0.b.x, 2786i, var_0.b.x), u_input.d), vec4<i32>(2147483647i, -1i, i32(-1i) * -13640i, u_input.a.x))), var_0.b.x);
    let var_2 = vec3<u32>(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, global3.x), 4u)], ~1u, ~select(u_input.b.x, 4294967295u, all(!vec4<bool>(var_1.x, false, true, var_1.x))));
    global3 = ~vec3<u32>(0u, global2[_wgslsmith_index_u32(1u, 4u)] >> (0u % 32u), ~global2[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(u_input.b.x, 4u)], 1u)), 4u)]);
    let var_3 = select(95051u, reverseBits(1u), var_1.x);
    return func_4(Struct_2(!select(!var_1.xx, select(vec2<bool>(true, true), vec2<bool>(var_0.c, var_0.c), var_1.zw), vec2<bool>(true, true)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, -1445f, var_0.a.x))), u_input.d, !var_0.c || (u_input.a.x > u_input.e.x), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.d.x, 3487i, -35898i, -2147483647i), vec4<i32>(-34685i, u_input.c, var_0.b.x, var_0.b.x)) | _wgslsmith_mult_vec4_i32(vec4<i32>(72387i, -1i, -2147483647i, 16204i), vec4<i32>(10969i, -44425i, u_input.a.x, -31488i))), var_0.c, u_input.a.x, ~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, -54831i, var_0.b.x) >> (vec3<u32>(global3.x, 17475u, 44977u) % vec3<u32>(32u)), u_input.e)), var_0.c, var_0.b, _wgslsmith_mult_i32(var_0.b.x, 37534i)).xz;
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec4<i32>) -> u32 {
    global1 = all(!(!func_2()));
    let var_0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -161f) - _wgslsmith_f_op_f32(f32(-1f) * -617f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2749f - -517f) + -542f) - _wgslsmith_f_op_f32(trunc(1674f))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-717f - 677f) + 889f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(745f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(581f - -997f) + _wgslsmith_div_f32(-415f, -724f))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-2233f + -2447f), _wgslsmith_f_op_f32(round(-1094f)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1333f))))))));
    var var_1 = arg_0;
    global2 = array<u32, 4>();
    let var_2 = vec3<i32>(firstLeadingBit(~arg_2.x) | -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(func_3(var_0.wy, true, Struct_2(vec2<bool>(arg_0, arg_0), Struct_1(var_0.xww, vec4<i32>(arg_2.x, u_input.d.x, arg_2.x, arg_1), arg_0, arg_2), arg_0, u_input.e.x, vec3<i32>(u_input.a.x, 26883i, 1i))).x, 2147483647i), arg_2.ww), ~5858i);
    return 0u;
}

fn func_5(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    let var_0 = arg_1.b;
    let var_1 = !arg_1.c;
    let var_2 = Struct_2(func_2(), Struct_1(_wgslsmith_f_op_vec3_f32(-arg_1.b.a), select(arg_1.b.d, firstLeadingBit(vec4<i32>(-2147483647i, 21133i, 2147483647i, u_input.a.x)) | vec4<i32>(var_0.d.x, 4973i, -2147483647i, var_0.b.x), all(vec4<bool>(var_0.c, arg_1.a.x, false, false))), !any(!vec3<bool>(arg_0, var_1, arg_0)), var_0.b), all(vec2<bool>(true, true)), firstTrailingBit(_wgslsmith_dot_vec2_i32(var_0.b.xx, var_0.d.xw)), ~_wgslsmith_clamp_vec3_i32(select(-arg_1.b.b.xzx, ~var_0.d.yyw, !vec3<bool>(arg_0, false, arg_1.b.c)), reverseBits(-vec3<i32>(var_0.b.x, 1i, -43791i)), ~(var_0.b.zwz & vec3<i32>(u_input.a.x, var_0.b.x, -32349i))));
    global3 = countOneBits(vec3<u32>(global3.x, u_input.b.x, ~_wgslsmith_div_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.x, 4u)], 4u)], 1u) << (1u % 32u)));
    global3 = ~vec3<u32>(19023u, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, 4294967295u ^ global3.x, 4998u, global3.x), reverseBits(min(vec4<u32>(0u, global3.x, 4294967295u, global3.x), vec4<u32>(31065u, global2[_wgslsmith_index_u32(u_input.b.x, 4u)], global3.x, global2[_wgslsmith_index_u32(global3.x, 4u)])))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, 1263f, 1121f))) - _wgslsmith_f_op_vec3_f32(-var_2.b.a))))), u_input.d, !(_wgslsmith_f_op_f32(floor(-1213f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.b.a.x)))), var_2.b.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(select(false, false, true), select(u_input.d.x, u_input.e.x, true), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.e.x, u_input.c, u_input.d.x, u_input.a.x), u_input.d | u_input.d)) < global3.x, Struct_2(!(!select(vec2<bool>(false, false), vec2<bool>(false, true), true)), Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1679f, -233f, 450f)), vec3<f32>(843f, 1765f, 442f))), select(_wgslsmith_mult_vec4_i32(u_input.d, u_input.d), u_input.d, true), true, abs(vec4<i32>(26283i, 45269i, 1i, u_input.d.x))), all(vec3<bool>(u_input.d.x == -6880i, true, true)), -2147483647i, firstTrailingBit(u_input.d.wwz)));
    let var_1 = !(!select(select(vec4<bool>(true, true, true, var_0.c), func_4(Struct_2(vec2<bool>(var_0.c, var_0.c), Struct_1(vec3<f32>(var_0.a.x, 426f, 1036f), var_0.b, var_0.c, u_input.d), var_0.c, -12845i, vec3<i32>(u_input.d.x, u_input.e.x, 30632i)), var_0.c, vec4<i32>(274i, u_input.a.x, 1i, 1i), 39839i), vec4<bool>(var_0.c, true, var_0.c, var_0.c)), !vec4<bool>(true, false, var_0.c, var_0.c), true));
    var var_2 = 2103f;
    let var_3 = Struct_2(func_2(), func_5(var_1.x, Struct_2(!var_1.zw, Struct_1(vec3<f32>(-1542f, -1527f, 2723f), _wgslsmith_mod_vec4_i32(u_input.d, vec4<i32>(u_input.a.x, -26953i, -2147483647i, -12869i)), var_0.c, -vec4<i32>(3586i, u_input.d.x, -20134i, u_input.c)), var_0.c, var_0.b.x, vec3<i32>(u_input.a.x, 1i, u_input.d.x))), false, (i32(-1i) * -max(var_0.d.x, var_0.d.x)) << (min(22415u, 4294967295u) % 32u), ~vec3<i32>(~(-2147483647i), 1i, ~u_input.c) | (~var_0.b.zwz ^ -(var_0.b.wzx & var_0.b.zxx)));
    let var_4 = 40879u != firstTrailingBit(~4294967295u);
    global2 = array<u32, 4>();
    var_2 = var_3.b.a.x;
    let var_5 = _wgslsmith_div_i32(u_input.e.x & var_3.e.x, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(abs(4481u));
}

