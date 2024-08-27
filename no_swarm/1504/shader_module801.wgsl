struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19>;

var<private> global1: array<vec3<bool>, 29>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: vec4<i32>, arg_3: vec3<u32>) -> f32 {
    global1 = array<vec3<bool>, 29>();
    var var_0 = select(vec2<bool>(true, all(vec2<bool>(true, all(vec2<bool>(false, false))))), !vec2<bool>(false, all(!global1[_wgslsmith_index_u32(u_input.a, 29u)])), select(vec2<bool>(true, _wgslsmith_f_op_f32(-1087f * arg_0) <= -1587f), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(true, true)), 1155f > arg_1.x), true));
    let var_1 = 18589u;
    let var_2 = 22153u;
    let var_3 = 8853i;
    return arg_0;
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<u32>) -> f32 {
    let var_0 = arg_1;
    global1 = array<vec3<bool>, 29>();
    global0 = array<u32, 19>();
    global0 = array<u32, 19>();
    let var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(~_wgslsmith_mult_u32(arg_3.x, 1u), ~firstTrailingBit(u_input.a)), _wgslsmith_clamp_vec2_u32(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(60524u, 1u), vec2<u32>(global0[_wgslsmith_index_u32(arg_3.x, 19u)], 53482u))), vec2<u32>(arg_3.x, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, u_input.b), 19u)]), ~vec2<u32>(firstTrailingBit(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), arg_3.xz))));
    return arg_2.b.x;
}

fn func_1(arg_0: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1279f, 581f) + -985f) + _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(784f * -1251f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(907f))), -608f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2178f + _wgslsmith_f_op_f32(-1665f + _wgslsmith_f_op_f32(round(234f)))), _wgslsmith_f_op_f32(2356f * _wgslsmith_f_op_f32(f32(-1f) * -424f))));
    global1 = array<vec3<bool>, 29>();
    global1 = array<vec3<bool>, 29>();
    var var_1 = Struct_2(Struct_1(vec3<f32>(-1000f, _wgslsmith_f_op_f32(func_2(-1000f, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, 677f))), ~vec4<i32>(arg_0, 22453i, 0i, u_input.c.x), vec3<u32>(global0[_wgslsmith_index_u32(42353u, 19u)], 0u, 94397u))), _wgslsmith_f_op_f32(f32(-1f) * -615f)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, var_0, var_0), vec3<f32>(-1000f, -807f, -1265f), vec3<bool>(false, false, true))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-326f, 1713f, var_0), vec3<f32>(var_0, var_0, 465f), global1[_wgslsmith_index_u32(4294967295u, 29u)]))))), any(select(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 0u)), 29u)], vec3<bool>(true, true, true), vec3<bool>(false, true, false))), vec3<bool>(true, true, true & all(vec2<bool>(true, true)))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, var_0) - vec3<f32>(706f, var_0, 774f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-394f, 476f, 397f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-732f, var_0, var_0))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0 * 286f), -1000f)), _wgslsmith_f_op_f32(func_3(u_input.c.zy, Struct_2(Struct_1(vec3<f32>(var_0, -186f, var_0), vec3<f32>(var_0, -1336f, var_0), false, global1[_wgslsmith_index_u32(u_input.a, 29u)]), Struct_1(vec3<f32>(var_0, var_0, var_0), vec3<f32>(var_0, var_0, var_0), true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 19u)], 29u)])), Struct_1(vec3<f32>(var_0, -793f, var_0), vec3<f32>(var_0, var_0, 889f), false, vec3<bool>(false, true, false)), vec3<u32>(4294967295u, 4294967295u, u_input.b) >> (vec3<u32>(0u, global0[_wgslsmith_index_u32(0u, 19u)], u_input.a) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1255f, 520f) * _wgslsmith_f_op_f32(313f + -335f))), all(vec4<bool>(true, true, true, true)), global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_div_u32(u_input.a, 8355u) | ~u_input.a), 29u)]));
    var var_2 = global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(max(abs(0u) >> (abs(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 19u)], 19u)], 65203u)) % 32u), ~max(~u_input.b, global0[_wgslsmith_index_u32(~4294967295u, 19u)])), u_input.b), 19u)], 19u)];
    return 369f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(func_1(u_input.c.x >> (1u % 32u))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f - 640f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(332f + 1494f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1106f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1371f, 1651f, -993f))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1133f, 619f, -525f), vec3<f32>(412f, -593f, 1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(784f, -946f, -2299f) + vec3<f32>(1714f, -122f, 297f)))))), true, !global1[_wgslsmith_index_u32(~u_input.a, 29u)]);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(sign(1312f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f * var_0.a.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b * var_0.a), var_0.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1901f, 2241f, var_0.b.x))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-436f, var_0.a.x, -1372f)), _wgslsmith_f_op_vec3_f32(-var_0.b)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(2036f, var_0.a.x, var_0.b.x), var_0.a)))), any(select(select(vec2<bool>(true, true), var_0.d.yz, var_0.d.x), vec2<bool>(var_0.c, global0[_wgslsmith_index_u32(89415u, 19u)] != 15025u), !var_0.d.zy)), global1[_wgslsmith_index_u32(countOneBits(1u) >> (0u % 32u), 29u)]);
    var var_2 = firstTrailingBit(-u_input.c.zzx);
    global1 = array<vec3<bool>, 29>();
    var var_3 = Struct_2(Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_1.a), vec3<f32>(var_1.b.x, var_0.b.x, -704f))))), ((i32(-1i) * -1i) >= var_2.x) && var_1.d.x, select(!(!var_1.d), select(vec3<bool>(false, var_1.d.x, true), vec3<bool>(true, true, true), select(var_0.d, var_1.d, var_0.c)), var_1.c && true)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(867f, 813f, -758f))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(var_0.b, _wgslsmith_div_vec3_f32(vec3<f32>(var_0.b.x, var_1.a.x, var_0.b.x), vec3<f32>(-941f, var_1.b.x, var_1.a.x))))), any(var_0.d.yy), select(vec3<bool>(true, true, true), vec3<bool>(var_1.c & var_1.d.x, true, true), var_1.d)));
    global0 = array<u32, 19>();
    let var_4 = Struct_2(var_3.b, var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, _wgslsmith_f_op_vec3_f32(-var_0.b), ~abs(46369u), ~(-vec3<i32>(abs(u_input.c.x), var_2.x, _wgslsmith_mult_i32(var_2.x, u_input.c.x))));
}

