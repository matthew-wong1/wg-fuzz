struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<f32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19>;

var<private> global1: array<vec4<i32>, 20>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec3<i32>) -> vec3<bool> {
    var var_0 = -1i;
    let var_1 = select(select(!(!select(vec4<bool>(false, global0[_wgslsmith_index_u32(79301u, 19u)], global0[_wgslsmith_index_u32(arg_0, 19u)], global0[_wgslsmith_index_u32(18590u, 19u)]), vec4<bool>(arg_1.a.x, true, true, true), true)), select(select(!vec4<bool>(true, global0[_wgslsmith_index_u32(arg_0, 19u)], arg_1.a.x, true), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], arg_1.a.x, global0[_wgslsmith_index_u32(31850u, 19u)], true), !global0[_wgslsmith_index_u32(arg_0, 19u)]), vec4<bool>(true, all(arg_1.a.zz), true, !arg_1.a.x), !(!vec4<bool>(true, true, arg_1.a.x, true))), vec4<bool>(any(vec3<bool>(false, true, arg_1.a.x)), any(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 19u)], arg_1.a.x, global0[_wgslsmith_index_u32(arg_0, 19u)])), arg_1.a.x, all(select(vec4<bool>(false, arg_1.a.x, global0[_wgslsmith_index_u32(u_input.b, 19u)], false), vec4<bool>(false, false, arg_1.a.x, global0[_wgslsmith_index_u32(0u, 19u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(78157u, 19u)], global0[_wgslsmith_index_u32(0u, 19u)], arg_1.a.x))))), select(vec4<bool>(true, true, true, true), vec4<bool>(~u_input.a.x >= _wgslsmith_mod_u32(22645u, 4294967295u), all(vec2<bool>(true, global0[_wgslsmith_index_u32(arg_0, 19u)])), global0[_wgslsmith_index_u32(min(~arg_0, arg_0), 19u)], arg_1.a.x || any(vec2<bool>(arg_1.a.x, false))), false), global0[_wgslsmith_index_u32(0u, 19u)]);
    let var_2 = Struct_1(!vec3<bool>(!all(vec3<bool>(arg_1.a.x, true, global0[_wgslsmith_index_u32(u_input.a.x, 19u)])), any(arg_1.a.xx), select(arg_0, arg_0, true) < _wgslsmith_mod_u32(47087u, 1u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b), arg_1.b) - arg_1.b));
    var var_3 = _wgslsmith_div_vec2_u32(vec2<u32>(abs(11438u), ~u_input.a.x), _wgslsmith_sub_vec2_u32(abs(~vec2<u32>(15266u, 4294967295u)), vec2<u32>(_wgslsmith_clamp_u32(1u, arg_0, 33761u), _wgslsmith_mod_u32(arg_0, arg_0)) >> (reverseBits(u_input.a.xy) % vec2<u32>(32u))));
    global0 = array<bool, 19>();
    return select(var_2.a, var_1.zxw, !var_2.a);
}

fn func_2() -> Struct_1 {
    global0 = array<bool, 19>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-470f + 1000f), Struct_1(!select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 19u)], false), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 19u)], false), global0[_wgslsmith_index_u32(4294967295u, 19u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 19u)], global0[_wgslsmith_index_u32(u_input.a.x, 19u)], false), func_3(u_input.b, Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], global0[_wgslsmith_index_u32(112150u, 19u)], true), 494f), vec3<i32>(1i, -2147483647i, 27754i))), _wgslsmith_f_op_f32(499f - 1303f)), Struct_1(select(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 19u)], false, true), vec3<bool>(global0[_wgslsmith_index_u32(firstLeadingBit(0u), 19u)], true, true), true), _wgslsmith_f_op_f32(floor(-1079f))));
    global1 = array<vec4<i32>, 20>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -935f), 1076f), var_0.b.b, _wgslsmith_f_op_f32(max(2308f, var_0.c.b))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.b.b * 1000f), _wgslsmith_f_op_f32(-var_0.a), -1987f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.b, -771f, var_0.c.b)))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1025f, 135f, var_0.b.b), vec3<f32>(548f, 490f, -221f))), vec3<f32>(662f, 525f, 1000f), true))))));
    let var_2 = vec2<i32>(12617i, 37014i);
    return Struct_1(!(!(!var_0.c.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.x)) - var_1.x))));
}

fn func_4(arg_0: i32, arg_1: vec2<i32>, arg_2: vec4<i32>, arg_3: Struct_1) -> vec3<f32> {
    let var_0 = ~(~u_input.b);
    var var_1 = firstTrailingBit(20362u);
    return vec3<f32>(634f, _wgslsmith_f_op_f32(ceil(func_2().b)), _wgslsmith_f_op_f32(arg_3.b - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(467f - -501f)), -1890f)));
}

fn func_1(arg_0: bool, arg_1: u32) -> Struct_2 {
    global1 = array<vec4<i32>, 20>();
    var var_0 = arg_0;
    let var_1 = ~_wgslsmith_mod_vec3_u32(~vec3<u32>(~arg_1, countOneBits(4294967295u), abs(79424u)), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(arg_1, 1u, u_input.a.x)), u_input.a) | ~vec3<u32>(u_input.a.x, u_input.b, arg_1));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(2147483647i, -vec2<i32>(1i, 1i), reverseBits(global1[_wgslsmith_index_u32(49201u << (1u % 32u), 20u)]), func_2()))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-626f, -712f, 189f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-369f, 292f, 1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(2602f, -1000f, -192f) - vec3<f32>(-649f, 1124f, -565f))), !(!vec3<bool>(global0[_wgslsmith_index_u32(27802u, 19u)], global0[_wgslsmith_index_u32(38864u, 19u)], false)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(147f, 1101f, -1332f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(140f, -2546f, 489f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1272f, -1681f, 572f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-335f, -715f, -1201f) + vec3<f32>(2686f, 899f, -146f))))));
    let var_3 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(~var_1), var_1), u_input.b, 1u);
    return Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-571f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.x)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-281f - 1466f)))))), Struct_1(vec3<bool>(!all(vec3<bool>(false, true, false)), arg_0, any(!vec4<bool>(false, true, arg_0, global0[_wgslsmith_index_u32(u_input.b, 19u)]))), 888f), Struct_1(!vec3<bool>(global0[_wgslsmith_index_u32(1147u, 19u)] & arg_0, true, global0[_wgslsmith_index_u32(~2307u, 19u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2082f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(true, u_input.b);
    var var_1 = func_1(true, 1u).c;
    let var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1332f, var_0.b.b, var_0.c.b, 251f), vec4<f32>(var_0.b.b, var_1.b, -442f, 875f))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b + var_1.b) * func_1(global0[_wgslsmith_index_u32(46110u, 19u)], u_input.b).b.b), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_1.b, var_1.b), _wgslsmith_div_f32(var_1.b, var_0.a))), _wgslsmith_f_op_f32(var_0.b.b + _wgslsmith_f_op_vec3_f32(func_4(0i, vec2<i32>(-13182i, -4827i), vec4<i32>(-78694i, -1i, 0i, -73291i), var_0.c)).x))))));
    var_1 = func_1(var_1.a.x, ~(~firstLeadingBit(~1u))).c;
    let x = u_input.a;
    s_output = StorageBuffer(min(abs(vec3<i32>(abs(12179i), ~(-1i), 1i)), ~vec3<i32>(1i, 1i, 1i)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, 38726u), vec4<u32>(u_input.b, 0u, u_input.a.x, u_input.a.x), true), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, u_input.a.x, u_input.b), vec4<u32>(4294967295u, 0u, u_input.a.x, u_input.a.x))), (vec4<u32>(u_input.b, u_input.a.x, 7700u, u_input.b) >> (vec4<u32>(u_input.b, 4294967295u, u_input.a.x, 0u) % vec4<u32>(32u))) | ~vec4<u32>(u_input.b, 1u, 0u, u_input.b)), 6178u, countOneBits(u_input.a.x)), vec4<f32>(_wgslsmith_f_op_f32(var_2.x - 298f), var_2.x, _wgslsmith_f_op_f32(235f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1246f + var_2.x) + var_1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_4(~6894i, ~vec2<i32>(-2147483647i, 2147483647i), -vec4<i32>(51856i, -1i, 1i, 7951i), func_2())).x - -846f)), -(countOneBits(vec3<i32>(-2147483647i, -2147483647i, -56421i)) << (~vec3<u32>(499u, 4294967295u, u_input.b) % vec3<u32>(32u))) & countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 30401i, 41926i), vec3<i32>(20746i, -1i, -1i))), var_0.b.b);
}

