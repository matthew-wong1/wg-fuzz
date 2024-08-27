struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25>;

var<private> global1: f32;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec2<bool> {
    var var_0 = firstTrailingBit(19302i) & _wgslsmith_mult_i32(i32(-1i) * -44957i, select(u_input.a.x ^ _wgslsmith_add_i32(46544i, u_input.a.x), u_input.a.x | -9766i, ~u_input.a.x > u_input.a.x));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 25u)] + 1567f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 25u)] * -135f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(46783u, 25u)]), -1419f))));
    let var_2 = Struct_3(vec2<bool>((any(vec3<bool>(true, true, true)) || all(vec4<bool>(false, false, false, true))) && true, true));
    let var_3 = var_2;
    global0 = array<f32, 25>();
    return var_2.a;
}

fn func_2(arg_0: f32, arg_1: u32) -> Struct_4 {
    let var_0 = Struct_4(min(_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(-5653i, 2147483647i, 10092i, u_input.a.x)), vec4<i32>(u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), u_input.a.x, -1i), u_input.a), -u_input.a), -73028i, ~(~(_wgslsmith_mod_vec4_u32(vec4<u32>(70722u, 1u, arg_1, arg_1), vec4<u32>(0u, 9220u, 62313u, arg_1)) | min(vec4<u32>(arg_1, 37469u, 59349u, arg_1), vec4<u32>(arg_1, 4294967295u, 0u, 18179u)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(830f, _wgslsmith_f_op_f32(252f * global0[_wgslsmith_index_u32(56942u, 25u)])), vec2<f32>(arg_0, arg_0))), vec2<f32>(-244f, arg_0), func_3())), Struct_1(-185f, all(vec3<bool>(true, u_input.a.x != u_input.a.x, any(vec4<bool>(false, false, true, true)))), firstLeadingBit(~(~vec4<u32>(51309u, arg_1, 30397u, arg_1))), u_input.a));
    var var_1 = Struct_3(vec2<bool>(var_0.e.b, !(!all(vec2<bool>(true, var_0.e.b)))));
    return Struct_4(var_0.e.d, _wgslsmith_mult_i32(max(_wgslsmith_dot_vec2_i32(u_input.a.yx << (var_0.c.ww % vec2<u32>(32u)), vec2<i32>(u_input.a.x, 9485i) << (var_0.c.yw % vec2<u32>(32u))), ~(~(-1i))), -min(-16671i, _wgslsmith_clamp_i32(var_0.a.x, -2147483647i, 52844i))), ~countOneBits(countOneBits(~var_0.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.a + arg_0)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(firstTrailingBit(25974u), 25u)] * _wgslsmith_f_op_f32(f32(-1f) * -518f))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_0.d), vec2<f32>(_wgslsmith_f_op_f32(abs(1359f)), _wgslsmith_f_op_f32(ceil(arg_0)))))), var_0.e);
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: u32, arg_3: bool) -> Struct_2 {
    let var_0 = func_2(1403f, _wgslsmith_dot_vec3_u32(abs(~abs(vec3<u32>(21158u, arg_2, arg_2))), firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_2, arg_2, arg_2), vec3<u32>(arg_2, 1u, 30151u)) << (~vec3<u32>(arg_2, arg_2, arg_2) % vec3<u32>(32u)))));
    let var_1 = ~firstLeadingBit(_wgslsmith_div_i32(2147483647i, var_0.a.x));
    let var_2 = var_0;
    global1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -930f))), arg_1));
    var var_3 = arg_0;
    return Struct_2(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-763f + _wgslsmith_div_f32(var_0.d.x, -231f)) - 741f), 0u).e, vec2<u32>(var_2.e.c.x, var_0.c.x), vec4<bool>(true | !func_2(var_0.e.a, 70628u).e.b, var_2.e.b, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(15272u, 5855u, 0u), vec3<u32>(1u, arg_2, arg_2)), reverseBits(vec3<u32>(4294967295u, var_2.c.x, 52857u))) != firstTrailingBit(0u), all(vec2<bool>(var_0.e.b, var_0.e.b)) || !arg_0), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-748f - 283f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -810f))), _wgslsmith_mod_u32(1u, max(1u, arg_2))).e, func_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_mod_u32(1u, arg_2)).e);
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: Struct_2) -> Struct_4 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-539f, -394f)), 36197u > arg_2.a.c.x, vec4<u32>(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.e.a * arg_2.e.a), _wgslsmith_f_op_f32(step(502f, 2924f))), _wgslsmith_sub_u32(~arg_2.b.x, arg_2.d.c.x >> (arg_2.a.c.x % 32u))).e.c.x, _wgslsmith_add_u32(_wgslsmith_mult_u32(firstLeadingBit(4540u), arg_2.b.x), arg_2.b.x), ~(~(31393u >> (arg_2.b.x % 32u))), countOneBits(arg_2.d.c.x)), u_input.a);
    global1 = -1000f;
    var var_1 = Struct_3(func_3());
    let var_2 = _wgslsmith_div_vec4_u32(arg_2.e.c, countOneBits(~vec4<u32>(27886u, 4294967295u, 0u, var_0.c.x))) | ~min(~(~vec4<u32>(12491u, var_0.c.x, 4294967295u, arg_2.e.c.x)), var_0.c);
    global1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1213f, func_1(arg_0.a.x, -1000f, 4434u, var_1.a.x).e.a)))))));
    return Struct_4(vec4<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(~(-var_0.d), -vec4<i32>(arg_1, arg_2.e.d.x, var_0.d.x, -1i)), -1i, -2147483647i), 41282i ^ var_0.d.x, vec4<u32>(98249u, var_2.x, ~15069u, countOneBits(_wgslsmith_div_u32(~4294967295u, abs(arg_2.e.c.x)))), vec2<f32>(_wgslsmith_f_op_f32(-1648f * var_0.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_2.x, 25u)] * var_0.a) + _wgslsmith_div_f32(arg_2.e.a, 128f)), var_0.a))), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a), func_2(447f, var_2.x).d.x)), !(!arg_2.c.x || !arg_2.c.x), func_2(_wgslsmith_f_op_f32(arg_2.a.a - _wgslsmith_f_op_f32(abs(1000f))), 30887u).e.c, u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_3(select(vec2<bool>(u_input.a.x <= u_input.a.x, false), vec2<bool>(true, true), true)), _wgslsmith_mod_i32(max(u_input.a.x, (u_input.a.x << (0u % 32u)) & -1i), firstTrailingBit(abs(u_input.a.x | 1i))), func_1(true, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(reverseBits(min(4294967295u, 0u)), 25u)]), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(22018u, 32899u, 4294967295u, 114356u)), _wgslsmith_mod_vec4_u32(vec4<u32>(38246u, 0u, 0u, 34707u), vec4<u32>(1u, 4294967295u, 48718u, 31355u))), true));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2113f), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.d.x, var_0.e.a))), var_0.e.b))), 847f, global0[_wgslsmith_index_u32(firstLeadingBit(var_0.c.x), 25u)], _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.d.x, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(~var_0.e.c.x, 25u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.c.x, 25u)]))), func_4(Struct_3(vec2<bool>(true, true)), ~func_2(1504f, 37610u).a.x, func_1(var_0.e.b, _wgslsmith_f_op_f32(-var_0.e.a), var_0.c.x, var_0.e.b)).e.b)));
    var var_2 = !(!(!func_1(var_0.e.b, 709f, max(var_0.e.c.x, var_0.c.x), true).c.zzw));
    let var_3 = _wgslsmith_mod_vec4_u32(~max(_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(var_0.c.x, var_0.e.c.x, var_0.e.c.x, var_0.e.c.x)), vec4<u32>(12401u, var_0.c.x, 1u, var_0.c.x) >> (vec4<u32>(35360u, 0u, var_0.e.c.x, 63892u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(var_0.e.c, vec4<u32>(var_0.e.c.x, var_0.c.x, var_0.c.x, var_0.e.c.x)) << ((vec4<u32>(var_0.c.x, 1u, 4294967295u, var_0.c.x) & vec4<u32>(0u, 1u, var_0.c.x, var_0.c.x)) % vec4<u32>(32u))), ~max(~vec4<u32>(var_0.e.c.x, var_0.c.x, var_0.e.c.x, 4294967295u), countOneBits(var_0.c)) ^ var_0.e.c);
    var var_4 = u_input.a.wzy << (func_4(Struct_3(func_3()), var_0.b << (49325u % 32u), func_1(u_input.a.x >= ~(-1888i), _wgslsmith_div_f32(-1107f, _wgslsmith_f_op_f32(-594f + -343f)), ~var_3.x, func_4(Struct_3(var_2.yz), ~(-2147483647i), func_1(var_2.x, var_0.e.a, var_0.c.x, false)).e.b)).e.c.xzy % vec3<u32>(32u));
    global1 = 1703f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_1)))), -1i);
}

