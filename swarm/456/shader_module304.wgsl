struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(false, true, Struct_1(vec4<bool>(true, true, true, true), true)), Struct_2(true, false, Struct_1(vec4<bool>(false, false, true, true), true)), Struct_2(true, false, Struct_1(vec4<bool>(false, false, true, false), false)), Struct_2(false, true, Struct_1(vec4<bool>(false, true, true, false), true)), Struct_2(true, false, Struct_1(vec4<bool>(false, true, false, true), false)), Struct_2(true, true, Struct_1(vec4<bool>(true, true, true, false), true)), Struct_2(false, true, Struct_1(vec4<bool>(false, true, false, true), true)), Struct_2(true, true, Struct_1(vec4<bool>(false, false, false, true), true)), Struct_2(true, false, Struct_1(vec4<bool>(true, false, true, true), false)), Struct_2(true, false, Struct_1(vec4<bool>(false, true, true, true), false)), Struct_2(false, false, Struct_1(vec4<bool>(false, false, false, false), false)), Struct_2(true, true, Struct_1(vec4<bool>(false, true, false, false), true)), Struct_2(false, false, Struct_1(vec4<bool>(false, false, true, true), true)), Struct_2(false, true, Struct_1(vec4<bool>(true, true, true, true), false)));

var<private> global1: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec4<bool>(true, false, false, true), false), Struct_1(vec4<bool>(false, false, false, true), false), Struct_1(vec4<bool>(true, false, true, true), false), Struct_1(vec4<bool>(true, false, true, false), false), Struct_1(vec4<bool>(false, false, false, false), false));

var<private> global2: array<f32, 11>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_2) -> bool {
    global2 = array<f32, 11>();
    let var_0 = abs(vec2<u32>(_wgslsmith_mult_u32(u_input.a.x, 4294967295u), ~_wgslsmith_sub_u32(arg_0.x, _wgslsmith_sub_u32(u_input.c, 0u))));
    var var_1 = arg_1;
    let var_2 = 4294967295u;
    var_1 = Struct_1(select(vec4<bool>(true, !(u_input.b.x != u_input.e.x), true, select(!var_1.a.x, true, arg_1.a.x)), vec4<bool>(var_0.x <= 1u, arg_1.b, var_1.b, arg_3.a), vec4<bool>(false, !arg_3.c.b, firstTrailingBit(arg_0.x) <= arg_2, arg_3.b && all(var_1.a.wxw))), all(!var_1.a.yx));
    return any(select(!arg_1.a.yyz, select(var_1.a.xyz, vec3<bool>(any(vec4<bool>(true, false, false, arg_1.b)), arg_3.b, arg_1.b | false), true), var_1.a.yww));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_1) -> i32 {
    var var_0 = Struct_2(arg_2.b, all(vec4<bool>(true, any(arg_2.a.wzy), abs(u_input.a.x) == ~4294967295u, func_3(vec2<u32>(u_input.c, u_input.a.x), Struct_1(vec4<bool>(true, arg_1, true, arg_1), arg_1), u_input.a.x, Struct_2(true, arg_1, arg_2)) & false)), Struct_1(!arg_2.a, !(select(false, arg_2.a.x, arg_1) | true)));
    var var_1 = arg_2;
    global2 = array<f32, 11>();
    global0 = array<Struct_2, 14>();
    let var_2 = Struct_2(arg_1, true, global1[_wgslsmith_index_u32(~(~min(~0u, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a))), 5u)]);
    return -1i;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec3<i32>) -> vec2<bool> {
    return select(arg_0.c.a.xz, vec2<bool>(all(vec3<bool>(func_3(vec2<u32>(0u, u_input.a.x), global1[_wgslsmith_index_u32(u_input.a.x, 5u)], 24824u, arg_0), true, any(arg_0.c.a))), true), false);
}

fn func_1(arg_0: i32, arg_1: i32) -> u32 {
    global1 = array<Struct_1, 5>();
    let var_0 = !func_4(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global2[_wgslsmith_index_u32(64783u, 11u)])) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(u_input.c, 11u)], 1000f)))), _wgslsmith_add_vec3_i32(vec3<i32>(func_2(u_input.b.zz, true, Struct_1(vec4<bool>(true, false, false, true), true)), -13623i, 1i), max(vec3<i32>(arg_0, u_input.b.x, u_input.e.x) | u_input.e.yyw, vec3<i32>(2147483647i, -1i, u_input.b.x) >> (vec3<u32>(15472u, 21070u, 1u) % vec3<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 11u)], 724f, -424f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2048f, -306f, global2[_wgslsmith_index_u32(u_input.c, 11u)]) + vec3<f32>(global2[_wgslsmith_index_u32(u_input.d, 11u)], 743f, global2[_wgslsmith_index_u32(1u, 11u)]))))), _wgslsmith_div_vec3_f32(vec3<f32>(1170f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 11u)]), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(u_input.c, 11u)], 1000f)), _wgslsmith_f_op_f32(1294f - global2[_wgslsmith_index_u32(u_input.a.x, 11u)]), true))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1684f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1056f) * 801f), global2[_wgslsmith_index_u32(~(~31724u), 11u)])), !(-2841i != arg_0)));
    var var_2 = -1i;
    global2 = array<f32, 11>();
    return reverseBits(u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_u32(firstLeadingBit(~_wgslsmith_mod_u32(4294967295u, 1u)), _wgslsmith_sub_u32(~(~u_input.c), _wgslsmith_sub_u32(func_1(-26046i, -1i), ~u_input.a.x))) & min(~min(_wgslsmith_add_u32(u_input.c, u_input.d), 0u), u_input.a.x);
    var var_1 = 2147483647i;
    global1 = array<Struct_1, 5>();
    global2 = array<f32, 11>();
    var var_2 = firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.a.yw, select(vec2<u32>(36296u, u_input.a.x), vec2<u32>(0u, 80907u), true)), 4294967295u, _wgslsmith_dot_vec2_u32(~reverseBits(u_input.a.wy), u_input.a.yy)));
    var_1 = -1i;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(0u, 11u)], global2[_wgslsmith_index_u32(var_2.x, 11u)], -1213f) - vec3<f32>(global2[_wgslsmith_index_u32(var_2.x, 11u)], 2163f, global2[_wgslsmith_index_u32(var_2.x, 11u)])))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2[_wgslsmith_index_u32(67525u, 11u)], -1000f, global2[_wgslsmith_index_u32(var_0, 11u)]), vec3<f32>(global2[_wgslsmith_index_u32(u_input.d, 11u)], global2[_wgslsmith_index_u32(var_2.x, 11u)], global2[_wgslsmith_index_u32(u_input.a.x, 11u)]), vec3<bool>(true, true, false)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-484f, -1000f, global2[_wgslsmith_index_u32(u_input.a.x, 11u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(select(select(-vec4<i32>(-8899i, u_input.b.x, u_input.b.x, 1i), u_input.e, !(var_0 == var_2.x)), ~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.e.x, u_input.e.x, 0i, u_input.b.x), ~vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, u_input.b.x)), any(vec4<bool>(true, true, true, true))), firstLeadingBit(_wgslsmith_mod_u32(u_input.d, 170601u) << (var_2.x % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1781f, 851f, global2[_wgslsmith_index_u32(4294967295u, 11u)]))))));
}

