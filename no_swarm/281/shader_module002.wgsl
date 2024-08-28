struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: u32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(-371f, 18679u, 31883u, vec3<bool>(false, false, false)), Struct_1(1000f, 0u, 48109u, vec3<bool>(false, false, false)), Struct_1(-1566f, 55318u, 0u, vec3<bool>(true, false, true)), Struct_1(-455f, 1u, 60803u, vec3<bool>(true, true, true)));

var<private> global1: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(vec4<f32>(-358f, -115f, 422f, -1237f), vec2<bool>(false, true), Struct_2(vec2<bool>(true, false), 56137u, 63151u, Struct_1(1581f, 37279u, 4294967295u, vec3<bool>(false, true, true)), 0u)));

var<private> global2: array<bool, 3>;

var<private> global3: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(Struct_3(vec4<f32>(677f, -195f, 1629f, -1067f), vec2<bool>(false, false), Struct_2(vec2<bool>(true, false), 0u, 4294967295u, Struct_1(336f, 1u, 17028u, vec3<bool>(false, true, false)), 1u)), 8871i, vec2<u32>(24270u, 1u)), Struct_4(Struct_3(vec4<f32>(-367f, -2078f, 1000f, -890f), vec2<bool>(true, true), Struct_2(vec2<bool>(true, true), 47240u, 0u, Struct_1(838f, 31813u, 0u, vec3<bool>(true, true, false)), 17024u)), -24820i, vec2<u32>(1u, 0u)), Struct_4(Struct_3(vec4<f32>(1595f, 1203f, 2101f, -823f), vec2<bool>(true, true), Struct_2(vec2<bool>(true, true), 0u, 14141u, Struct_1(201f, 0u, 4294967295u, vec3<bool>(true, true, true)), 1255u)), 36i, vec2<u32>(0u, 26031u)), Struct_4(Struct_3(vec4<f32>(-229f, -188f, 1572f, 352f), vec2<bool>(false, true), Struct_2(vec2<bool>(false, false), 4294967295u, 0u, Struct_1(-2006f, 4294967295u, 4294967295u, vec3<bool>(true, true, false)), 0u)), -14062i, vec2<u32>(4294967295u, 22209u)), Struct_4(Struct_3(vec4<f32>(416f, -1295f, -425f, -250f), vec2<bool>(false, true), Struct_2(vec2<bool>(false, false), 1u, 16993u, Struct_1(688f, 1u, 44534u, vec3<bool>(true, true, true)), 1921u)), 2147483647i, vec2<u32>(0u, 22239u)), Struct_4(Struct_3(vec4<f32>(-1599f, -920f, -831f, 895f), vec2<bool>(false, true), Struct_2(vec2<bool>(true, true), 4128u, 42998u, Struct_1(-534f, 0u, 0u, vec3<bool>(true, false, false)), 0u)), 33738i, vec2<u32>(60932u, 95897u)), Struct_4(Struct_3(vec4<f32>(1182f, -2833f, 874f, -533f), vec2<bool>(false, false), Struct_2(vec2<bool>(false, true), 0u, 18005u, Struct_1(-234f, 27793u, 61505u, vec3<bool>(false, false, false)), 2423u)), 1969i, vec2<u32>(0u, 72996u)), Struct_4(Struct_3(vec4<f32>(-1033f, 1362f, 675f, -525f), vec2<bool>(true, true), Struct_2(vec2<bool>(true, false), 58824u, 1u, Struct_1(-1000f, 1u, 0u, vec3<bool>(false, true, true)), 29527u)), 0i, vec2<u32>(4294967295u, 18105u)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    global1 = array<Struct_3, 1>();
    let var_0 = global0[_wgslsmith_index_u32(~u_input.a, 4u)];
    let var_1 = reverseBits(vec2<u32>(~(~_wgslsmith_sub_u32(4294967295u, u_input.a)), 0u));
    global1 = array<Struct_3, 1>();
    var var_2 = vec3<u32>(firstTrailingBit(var_1.x), abs(reverseBits(0u)), u_input.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -836f)))))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> vec4<u32> {
    return firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(~arg_1.c, 38940u, 49472u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, arg_1.c), vec2<u32>(arg_1.b, 41682u))), firstTrailingBit(~firstLeadingBit(vec4<u32>(arg_2, u_input.a, u_input.a, 20495u)))));
}

fn func_2() -> vec4<bool> {
    var var_0 = vec4<u32>(_wgslsmith_div_u32(u_input.a, 1u), 21654u, u_input.a, 41167u);
    var var_1 = Struct_2(vec2<bool>(any(vec3<bool>(true, true, !global2[_wgslsmith_index_u32(3615u, 3u)])), !any(select(vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 3u)], true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, global2[_wgslsmith_index_u32(var_0.x, 3u)])))), u_input.a, reverseBits(u_input.a), Struct_1(-167f, 24558u, _wgslsmith_clamp_u32(~_wgslsmith_div_u32(var_0.x, u_input.a), 1u, ~u_input.a), !(!vec3<bool>(global2[_wgslsmith_index_u32(31577u, 3u)], global2[_wgslsmith_index_u32(u_input.a, 3u)], global2[_wgslsmith_index_u32(var_0.x, 3u)]))), ~1u);
    global3 = array<Struct_4, 8>();
    var var_2 = var_1.d.d.x;
    var_0 = func_4(_wgslsmith_f_op_f32(func_3()) <= -980f, global0[_wgslsmith_index_u32(~81778u, 4u)], var_1.c);
    return vec4<bool>(!(true | !any(vec4<bool>(true, false, true, true))), true, false, var_1.d.d.x);
}

fn func_5(arg_0: bool, arg_1: i32) -> i32 {
    var var_0 = global3[_wgslsmith_index_u32(select(0u, firstTrailingBit(u_input.a) ^ u_input.a, arg_0), 8u)];
    let var_1 = _wgslsmith_mod_i32(select(-1i, 2147483647i, all(!vec2<bool>(false, arg_0))), -var_0.b);
    global2 = array<bool, 3>();
    let var_2 = global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(~var_0.a.c.c, 0u), var_0.c), 8u)];
    var var_3 = _wgslsmith_div_f32(var_2.a.c.d.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_0.a.c.d.a)), -1856f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(215f - var_0.a.a.x))))));
    return var_0.b;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: Struct_4) -> Struct_2 {
    let var_0 = func_5(all(func_2()) || any(func_2()), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.b, arg_2.b, ~(-10792i), min(abs(8375i), firstTrailingBit(-2147483647i))), firstTrailingBit(vec4<i32>(-2147483647i, -24239i, ~arg_2.b, _wgslsmith_div_i32(44062i, 1323i)))));
    var var_1 = arg_1.c;
    var var_2 = Struct_1(1f, arg_1.c.e, _wgslsmith_mult_u32(34299u, ~(~arg_0.x)), vec3<bool>(true, all(arg_1.b), _wgslsmith_div_i32(func_5(global2[_wgslsmith_index_u32(1u, 3u)], arg_2.b), var_0) != _wgslsmith_clamp_i32(max(arg_2.b, -1i), var_0, arg_2.b)));
    var_1 = arg_2.a.c;
    var var_3 = arg_0.zz;
    return Struct_2(!var_1.d.d.yz, abs(1u), _wgslsmith_mod_u32(0u, _wgslsmith_add_u32(~40714u, arg_1.c.e)) >> (func_4(true, var_1.d, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.x, arg_0.x), vec2<u32>(25165u, 6173u)), ~vec2<u32>(0u, 1u))).x % 32u), arg_2.a.c.d, var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 3545u;
    let var_1 = global1[_wgslsmith_index_u32(var_0, 1u)];
    var var_2 = var_1.c.c;
    var var_3 = func_1(vec3<u32>(~_wgslsmith_mult_u32(_wgslsmith_div_u32(var_0, 4294967295u), var_0), reverseBits(50720u), var_1.c.b), Struct_3(var_1.a, select(vec2<bool>(true, select(false, var_1.b.x, var_1.b.x)), vec2<bool>(true, var_1.c.b == 4294967295u), true), var_1.c), Struct_4(global1[_wgslsmith_index_u32(~(~25263u), 1u)], ~(-1i), vec2<u32>(var_0, min(1u, ~var_0))));
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -1i, vec2<i32>(-1i, ~(~_wgslsmith_dot_vec2_i32(vec2<i32>(27988i, -1i), vec2<i32>(5725i, 2147483647i)))), 52871u);
}

