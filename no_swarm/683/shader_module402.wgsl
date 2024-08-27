struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: f32,
}

struct Struct_3 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(vec3<u32>(55085u, 69858u, 0u), 1u, -147f, 831f), Struct_2(vec3<u32>(79167u, 0u, 67614u), 86712u, 1198f, 119f), Struct_2(vec3<u32>(4294967295u, 59899u, 13926u), 4294967295u, 1921f, 802f), Struct_2(vec3<u32>(4294967295u, 4294967295u, 8930u), 14614u, 1679f, -977f), Struct_2(vec3<u32>(51082u, 80545u, 52030u), 18300u, -708f, -505f), Struct_2(vec3<u32>(4294967295u, 0u, 32353u), 1u, 744f, 1089f), Struct_2(vec3<u32>(36194u, 42943u, 4294967295u), 0u, -455f, -442f), Struct_2(vec3<u32>(38848u, 36864u, 0u), 39660u, 1756f, 259f), Struct_2(vec3<u32>(4294967295u, 51148u, 1u), 0u, 423f, 631f), Struct_2(vec3<u32>(4294967295u, 1u, 4294967295u), 4294967295u, 996f, -595f));

var<private> global1: array<Struct_2, 32>;

var<private> global2: i32 = -1i;

var<private> global3: array<bool, 8> = array<bool, 8>(false, true, false, false, false, false, false, false);

var<private> global4: vec3<bool> = vec3<bool>(true, true, true);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(~4294967295u, 32u)];
    var var_1 = u_input.e ^ _wgslsmith_sub_i32(-u_input.b, ~firstTrailingBit(abs(0i)));
    global2 = -5153i;
    var var_2 = Struct_1(~abs(~_wgslsmith_mod_u32(u_input.a.x, 40729u)), all(select(vec3<bool>(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, 1u), 8u)], select(global4.x, global3[_wgslsmith_index_u32(var_0.a.x, 8u)], false), true), vec3<bool>(false, true, false), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.a.x, abs(81229u)), 8u)])), select(global4.yx, global4.zz, vec2<bool>(all(!vec4<bool>(global4.x, true, false, true)), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, var_0.a.x, 48027u), ~u_input.d.xxz), 8u)])), ~(~var_0.a));
    var_2 = Struct_1(9662u, global4.x, vec2<bool>(var_2.b, !(!global4.x)), var_2.d);
    return var_0.b;
}

fn func_2() -> vec3<bool> {
    global4 = !(!(!vec3<bool>(global4.x, all(vec3<bool>(true, true, global3[_wgslsmith_index_u32(5883u, 8u)])), false)));
    global4 = !(!vec3<bool>(!global4.x, true, !select(false, true, global3[_wgslsmith_index_u32(u_input.a.x, 8u)])));
    var var_0 = Struct_1(_wgslsmith_div_u32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1255f)) + 1692f)), ~_wgslsmith_dot_vec2_u32(~u_input.a.xx, ~vec2<u32>(0u, 11425u))), global3[_wgslsmith_index_u32(~u_input.d.x, 8u)], vec2<bool>(true, global4.x), _wgslsmith_mult_vec3_u32(~abs(vec3<u32>(0u, 8644u, 4294967295u)), vec3<u32>(~max(u_input.a.x, u_input.d.x), ~func_3(-1473f), ~1u)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1600f * 924f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -683f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -698f)), _wgslsmith_f_op_f32(f32(-1f) * -793f)))));
    var var_2 = global0[_wgslsmith_index_u32(~var_0.d.x, 10u)];
    return select(select(select(!(!vec3<bool>(false, var_0.c.x, global3[_wgslsmith_index_u32(32933u, 8u)])), !select(vec3<bool>(global4.x, false, global3[_wgslsmith_index_u32(u_input.a.x, 8u)]), vec3<bool>(false, var_0.c.x, global3[_wgslsmith_index_u32(56551u, 8u)]), vec3<bool>(false, false, true)), global4.x), !(!(!vec3<bool>(true, global4.x, global4.x))), var_0.c.x | (221f == _wgslsmith_f_op_f32(var_1.x * -1400f))), !select(vec3<bool>(var_0.c.x, global4.x, false), vec3<bool>(true, all(var_0.c), true), max(0u, 1u) < var_2.a.x), vec3<bool>(any(select(!vec4<bool>(false, global3[_wgslsmith_index_u32(var_2.a.x, 8u)], true, var_0.c.x), !vec4<bool>(false, var_0.b, global4.x, var_0.b), true | var_0.c.x)), all(select(!vec4<bool>(global3[_wgslsmith_index_u32(1u, 8u)], global4.x, true, false), select(vec4<bool>(true, false, global3[_wgslsmith_index_u32(u_input.a.x, 8u)], false), vec4<bool>(true, false, true, false), vec4<bool>(false, global3[_wgslsmith_index_u32(13886u, 8u)], global4.x, true)), true)), any(vec2<bool>(true, true))));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_3) -> i32 {
    global4 = func_2();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c - 1432f)) + -1430f);
    var var_1 = !global4.x;
    var var_2 = _wgslsmith_div_f32(-147f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.d, -624f))));
    global2 = -12730i;
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~_wgslsmith_sub_i32(-1502i, -1i) >> (u_input.c % 32u);
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-573f, _wgslsmith_f_op_f32(-1573f * _wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1412f))));
    let var_1 = reverseBits(max(vec4<i32>(0i, u_input.b, func_1(global0[_wgslsmith_index_u32(u_input.d.x, 10u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(190f, 543f, 205f)), Struct_3(-1i, -1i)), u_input.e), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(-1i, u_input.e, 0i, -13402i)), select(vec4<i32>(u_input.e, -36702i, u_input.b, -7264i), vec4<i32>(-25754i, u_input.b, u_input.e, -8994i), false)) & ~(-vec4<i32>(u_input.b, -2147483647i, 0i, u_input.b))));
    let var_2 = ~2953u;
    let var_3 = _wgslsmith_mult_u32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(478f, 1342f)) * _wgslsmith_f_op_f32(1000f - var_0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, var_0.x, global4.x))))), 1u);
    var var_4 = Struct_2(abs(u_input.d.wyx), var_2, var_0.x, -524f);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, var_4.a.x, u_input.c) >> (~vec3<u32>(1u, func_3(1000f), ~38930u) % vec3<u32>(32u)));
}

