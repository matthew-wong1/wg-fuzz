struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<f32>,
    d: Struct_1,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 15>;

var<private> global1: vec2<f32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>) -> vec2<f32> {
    var var_0 = true;
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(383f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1297f), _wgslsmith_f_op_f32(max(2087f, 1960f)))) - vec2<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.x, global1.x, false))))));
    var var_1 = select(select(vec3<bool>(true, true, true), vec3<bool>(true || any(vec3<bool>(true, true, false)), false, false), select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), ~4294967295u < _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(1u, u_input.b)))), select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), true), !vec3<bool>(true, any(vec2<bool>(true, false)), true), !vec3<bool>(all(vec2<bool>(false, true)), all(vec3<bool>(true, true, true)), all(vec4<bool>(false, false, true, true)))), !(u_input.a.x == _wgslsmith_mod_i32(1i, u_input.a.x)) & !all(vec4<bool>(true, true, true, true)));
    return vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(round(arg_0.x)));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: i32) -> Struct_2 {
    global1 = _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_f_op_f32(-827f - _wgslsmith_f_op_f32(-1473f + global1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global1.x, global1.x)), -296f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 883f) * _wgslsmith_div_f32(global1.x, global1.x))))));
    var var_0 = firstLeadingBit(firstTrailingBit(_wgslsmith_add_u32(u_input.b, select(0u, countOneBits(u_input.b), true))));
    var var_1 = 1u;
    var var_2 = ~(~(~_wgslsmith_mod_u32(max(0u, 4294967295u), reverseBits(62638u))));
    global0 = array<vec2<i32>, 15>();
    return Struct_2(Struct_1(vec3<bool>(true, true, true)), !all(vec3<bool>(true, true, true)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(global1.x * global1.x)) + -326f), -685f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(889f)))), Struct_1(select(vec3<bool>(true, any(vec3<bool>(false, true, true)), arg_2 != -2147483647i), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true))), select(abs(vec4<u32>(0u, arg_0, 0u, 52074u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 26916u, arg_0, u_input.b), vec4<u32>(u_input.b, 91279u, arg_0, arg_0)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false))) >> (select(countOneBits(vec4<u32>(u_input.b, arg_0, 791u, 3624u)), vec4<u32>(u_input.b, u_input.b, _wgslsmith_sub_u32(4294967295u, arg_0), min(u_input.b, 53712u)), vec4<bool>(false, any(vec3<bool>(true, true, true)), true, true)) % vec4<u32>(32u)));
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> vec2<bool> {
    global1 = arg_0.c.xz;
    let var_0 = Struct_1(vec3<bool>(func_2(func_2(_wgslsmith_add_u32(1u, u_input.b), countOneBits(u_input.a.x), arg_1).e.x, u_input.a.x, -arg_1).b, true, true));
    global0 = array<vec2<i32>, 15>();
    global0 = array<vec2<i32>, 15>();
    let var_1 = -(~(~(vec3<i32>(arg_1, 2147483647i, -32733i) >> (arg_0.e.xyx % vec3<u32>(32u)))));
    return arg_0.a.a.yy;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: i32) -> f32 {
    var var_0 = Struct_1(!vec3<bool>(true, select(true, arg_1.b, arg_3 != u_input.c.x), true));
    var var_1 = ~(arg_2.x | firstLeadingBit(u_input.b));
    var var_2 = arg_1;
    let var_3 = select(var_2.a.a.yx, !arg_1.a.a.zz, any(func_4(func_2(var_2.e.x, firstLeadingBit(arg_3), _wgslsmith_mod_i32(arg_3, 6757i)), -40796i)));
    let var_4 = !vec4<bool>(all(func_2(min(arg_2.x, 0u), u_input.a.x, ~0i).a.a), var_0.a.x, countOneBits(-718i) >= _wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(~arg_2.x, 15u)], arg_0.yy), !any(var_0.a) == var_0.a.x);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(arg_1.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1246f)), _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(ceil(arg_1.c.x))), true)), all(vec3<bool>(any(var_0.a.yy), true, var_3.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(func_1(u_input.c, Struct_2(Struct_1(vec3<bool>(false, false, true)), false, vec3<f32>(global1.x, -101f, -427f), Struct_1(vec3<bool>(false, false, false)), vec4<u32>(12827u, 0u, u_input.b, 0u)), vec4<u32>(1u, u_input.b, 4294967295u, u_input.b), u_input.c.x))), _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, global1.x)))).x) - vec2<f32>(1452f, -1203f))));
    global0 = array<vec2<i32>, 15>();
    global0 = array<vec2<i32>, 15>();
    let var_0 = reverseBits(20666u);
    var var_1 = any(!vec4<bool>(false, all(vec3<bool>(true, true, true)), false, !(905f == global1.x)));
    let var_2 = true;
    var var_3 = reverseBits(u_input.c.xyz);
    var var_4 = Struct_2(func_2(_wgslsmith_mod_u32(~(~4294967295u), u_input.b), ~max(min(1i, u_input.c.x), u_input.c.x & -51490i), -18183i).d, var_2, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-1237f, _wgslsmith_f_op_f32(func_1(u_input.c, Struct_2(Struct_1(vec3<bool>(true, false, var_2)), false, vec3<f32>(464f, 255f, -329f), Struct_1(vec3<bool>(true, var_2, true)), vec4<u32>(var_0, 36817u, var_0, u_input.b)), vec4<u32>(1u, 0u, u_input.b, 20785u), u_input.a.x)), _wgslsmith_f_op_f32(global1.x - global1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1354f, global1.x, global1.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, global1.x, global1.x)))))), select(!vec3<bool>(var_2, true, true), !vec3<bool>(var_2, true, var_2), false))), func_2(u_input.b, select(_wgslsmith_dot_vec4_i32(-u_input.c, u_input.c), u_input.a.x & (var_3.x & 35056i), !var_2), -max(var_3.x, var_3.x)).d, vec4<u32>(u_input.b, var_0, select(func_2(var_0, u_input.a.x, 0i).e.x, _wgslsmith_clamp_u32(u_input.b, u_input.b, 1u), func_4(Struct_2(Struct_1(vec3<bool>(false, true, var_2)), var_2, vec3<f32>(global1.x, global1.x, global1.x), Struct_1(vec3<bool>(false, var_2, true)), vec4<u32>(4294967295u, 16128u, var_0, 0u)), var_3.x).x) | _wgslsmith_add_u32(4294967295u, ~var_0), ~(~firstLeadingBit(18884u))));
    global0 = array<vec2<i32>, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-245f)) * _wgslsmith_f_op_f32(-global1.x)), var_4.c.x, _wgslsmith_f_op_f32(global1.x - 686f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1769f + 222f) - func_2(var_0, var_3.x, -19460i).c.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(625f, -1853f, var_4.c.x, var_4.c.x) + vec4<f32>(global1.x, _wgslsmith_f_op_f32(floor(-969f)), var_4.c.x, -1000f))), ~_wgslsmith_add_vec4_u32(abs(firstLeadingBit(var_4.e)), vec4<u32>(_wgslsmith_mod_u32(var_0, 0u), var_0, ~4294967295u, 1u)), vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(~1u, 0u & var_4.e.x), countOneBits(4294967295u & var_0)), firstLeadingBit(1u), (~var_0 | reverseBits(4294967295u)) << (~(~4294967295u) % 32u)));
}

