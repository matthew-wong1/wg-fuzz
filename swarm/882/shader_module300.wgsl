struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: bool,
    d: vec2<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
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

var<private> global0: array<u32, 8> = array<u32, 8>(84800u, 4294967295u, 1u, 60608u, 1u, 1u, 0u, 4315u);

var<private> global1: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec2<bool> {
    var var_0 = arg_0.a;
    global1 = select(select(select(select(select(vec2<bool>(true, global1.x), vec2<bool>(false, false), false), vec2<bool>(true, arg_0.c), all(vec4<bool>(false, global1.x, false, true))), vec2<bool>(true, true), !vec2<bool>(global1.x, arg_0.c)), vec2<bool>(global1.x, true && !arg_0.c), !vec2<bool>(!arg_0.b, false)), select(vec2<bool>(true, all(select(vec4<bool>(global1.x, true, global1.x, global1.x), vec4<bool>(false, false, true, false), global1.x))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), any(vec2<bool>(true, global1.x))), !vec2<bool>(all(vec3<bool>(true, true, arg_0.b)) & select(true, false, true), select(!arg_0.c, false, arg_0.e != global0[_wgslsmith_index_u32(arg_0.e, 8u)])));
    var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-918f * 942f)), arg_0.a.x, 1310f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, -765f, -511f, -982f)) + arg_0.a))), _wgslsmith_f_op_vec4_f32(-arg_0.a)));
    let var_1 = !(!vec2<bool>(all(select(vec3<bool>(true, false, arg_0.c), vec3<bool>(false, true, false), arg_0.c)), !all(vec2<bool>(true, false))));
    global0 = array<u32, 8>();
    return vec2<bool>(true, true);
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global1 = select(select(vec2<bool>(true, true), select(vec2<bool>(true && arg_2.b, any(vec3<bool>(global1.x, global1.x, global1.x))), func_3(arg_3, u_input.b.x), vec2<bool>(true, !arg_0)), select(!(!vec2<bool>(global1.x, arg_3.b)), func_3(Struct_1(arg_2.a, arg_2.b, arg_2.c, vec2<f32>(825f, arg_3.d.x), arg_3.e), abs(u_input.a.x)), all(func_3(arg_2, u_input.a.x)))), !(!(!(!vec2<bool>(arg_3.c, arg_0)))), true);
    global1 = select(func_3(Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.a.x, arg_2.d.x, arg_3.d.x, arg_2.a.x), vec4<f32>(arg_3.d.x, 505f, 672f, -297f))), !(global1.x || false), true, arg_2.a.xy, 4294967295u), u_input.a.x), vec2<bool>(!(select(1u, global0[_wgslsmith_index_u32(4412u, 8u)], global1.x) > ~4294967295u), !arg_0), select(!select(select(vec2<bool>(true, arg_3.b), vec2<bool>(false, true), vec2<bool>(false, false)), func_3(arg_3, u_input.a.x), vec2<bool>(global1.x, false)), select(vec2<bool>(arg_3.c & false, arg_2.c), !func_3(Struct_1(arg_2.a, false, true, arg_2.d, arg_2.e), 0i), func_3(arg_3, -62615i)), vec2<bool>(!(arg_3.c && global1.x), any(!vec2<bool>(arg_0, false)))));
    global0 = array<u32, 8>();
    var var_0 = vec4<u32>(arg_1, ~firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 26984u, 4294967295u, arg_2.e), firstTrailingBit(vec4<u32>(57227u, global0[_wgslsmith_index_u32(arg_2.e, 8u)], arg_1, global0[_wgslsmith_index_u32(0u, 8u)])))), arg_2.e, arg_1);
    var_0 = firstLeadingBit(~vec4<u32>(4294967295u, arg_1, 1u, ~1u) >> (~firstTrailingBit(vec4<u32>(41066u, 34686u, 0u, arg_1) >> (vec4<u32>(arg_2.e, 1u, 0u, arg_2.e) % vec4<u32>(32u))) % vec4<u32>(32u)));
    return 0u & firstTrailingBit(4294967295u >> (~arg_2.e % 32u));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: vec4<u32>, arg_3: u32) -> f32 {
    let var_0 = 2147483647i;
    let var_1 = !(!global1.x);
    global1 = vec2<bool>(false, var_1);
    let var_2 = -u_input.b.x;
    var var_3 = -1i;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-391f, -468f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1046f))), global1.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1497f, 1150f)), _wgslsmith_f_op_f32(-846f - -1000f)))))));
}

fn func_1() -> u32 {
    global1 = vec2<bool>(true, false);
    let var_0 = !(!(!(!(!vec3<bool>(false, global1.x, false)))));
    global0 = array<u32, 8>();
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(global0[_wgslsmith_index_u32(53219u, 8u)], 42301u, global0[_wgslsmith_index_u32(1u, 8u)])), ~vec3<u32>(0u, global0[_wgslsmith_index_u32(1914u, 8u)], 1u)), 8u)], 4294967295u), 4303u, ~(~(~vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10312u, 8u)], 8u)], 1u, global0[_wgslsmith_index_u32(4294967295u, 8u)]))), func_2(any(vec4<bool>(false, true, false, true)), 1u, Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(-1082f, 429f, 267f, -1447f), vec4<f32>(-166f, -1301f, 1146f, 593f)), u_input.a.x != -16261i, true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -290f)), _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23663u, 8u)], 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)])), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(1011f, 442f, -229f, -234f), vec4<f32>(308f, 847f, 1777f, -1297f)), true, select(global1.x, var_0.x, true), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(722f, -1590f))), 1u)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1697f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1341f)))), 863f)));
    var var_2 = 0u;
    return global0[_wgslsmith_index_u32(countOneBits(~0u), 8u)];
}

fn func_5(arg_0: vec2<u32>, arg_1: i32) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(func_4(arg_0.x, arg_0.x, vec4<u32>(arg_0.x, arg_0.x, 4294967295u, 0u), 4294967295u)), _wgslsmith_f_op_f32(func_4(0u, 34344u, vec4<u32>(73320u, 21280u, 4294967295u, 4294967295u), 0u)), _wgslsmith_div_f32(127f, -115f)), vec3<f32>(_wgslsmith_f_op_f32(-672f * 1805f), _wgslsmith_f_op_f32(min(-122f, 594f)), _wgslsmith_f_op_f32(f32(-1f) * -1205f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -408f, 1636f) - vec3<f32>(666f, -489f, 455f))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 851f, var_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 824f, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(203f, -950f, 715f, -1135f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1825f, 888f, var_0.x, 1000f))))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1239f, var_0.x, 1016f, var_0.x)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1049f, 296f, var_0.x, var_0.x)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -625f, -529f) - vec4<f32>(var_0.x, -1068f, var_0.x, var_0.x))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, var_0.x, -105f, 841f))))))));
    var_1 = vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-326f)) - _wgslsmith_f_op_f32(-var_1.x))));
    var var_2 = max(arg_0.x, _wgslsmith_add_u32(min(~62114u ^ (arg_0.x >> (61302u % 32u)), 0u), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(arg_0.x, 8u)], reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.x, 8u)], 8u)], 8u)]) >> (~1u % 32u)), 8u)]));
    let var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, -633f), vec4<f32>(-688f, -464f, var_0.x, var_1.x)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1875f * _wgslsmith_f_op_f32(sign(var_1.x))), _wgslsmith_f_op_f32(f32(-1f) * -433f), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_div_f32(1766f, var_1.x)), var_1.x) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1040f, -1254f, -1394f, var_0.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-728f, 388f, -347f, var_0.x), vec4<f32>(var_0.x, -1754f, var_1.x, 476f))), vec4<f32>(230f, var_0.x, 1417f, 1498f), true))))));
    return StorageBuffer(_wgslsmith_div_u32(23425u, ~(~_wgslsmith_add_u32(25324u, global0[_wgslsmith_index_u32(arg_0.x, 8u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -373f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1325f)))))));
    global0 = array<u32, 8>();
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -395f) + 2299f))));
    global0 = array<u32, 8>();
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(458f, _wgslsmith_div_f32(468f, _wgslsmith_f_op_f32(floor(184f)))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1488f, 662f, -767f, var_1.x) + vec4<f32>(var_1.x, var_1.x, -1000f, 837f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(595f, -261f, var_0, var_0) * vec4<f32>(var_0, -955f, var_1.x, var_1.x))) - _wgslsmith_div_vec4_f32(vec4<f32>(1387f, -223f, var_0, var_1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1140f, var_1.x, 1613f, 271f))))), global1.x, false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-334f, var_0))))), (firstLeadingBit(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40882u, 8u)], 8u)], 8u)], 8u)], 8u)], 8u)], global0[_wgslsmith_index_u32(0u, 8u)]), 8u)]) & 0u) << (global0[_wgslsmith_index_u32(0u, 8u)] % 32u));
    let var_3 = -1000f;
    let x = u_input.a;
    s_output = func_5(vec2<u32>(func_1(), 1u), _wgslsmith_dot_vec4_i32(reverseBits(select(select(vec4<i32>(5700i, u_input.a.x, -2147483647i, u_input.a.x), vec4<i32>(30445i, u_input.b.x, u_input.b.x, 0i), false), ~vec4<i32>(u_input.b.x, u_input.b.x, u_input.a.x, -2147483647i), !var_2.c)), -(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, -1557i, -54116i), vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.b.x)) >> (vec4<u32>(4713u, global0[_wgslsmith_index_u32(4294967295u, 8u)], 14266u, 63840u) % vec4<u32>(32u)))));
}

