struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: i32,
    d: vec4<bool>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12>;

var<private> global1: array<Struct_1, 14>;

var<private> global2: array<u32, 28> = array<u32, 28>(3083u, 0u, 1u, 4294967295u, 0u, 0u, 1u, 11394u, 1u, 31400u, 4294967295u, 1u, 37781u, 0u, 57768u, 1u, 0u, 13950u, 129726u, 53551u, 1u, 1u, 41799u, 81981u, 0u, 13551u, 1u, 0u);

var<private> global3: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec4<f32>(1702f, -1696f, 988f, 991f), vec3<f32>(-1091f, -486f, -2527f), -1i, vec4<bool>(true, false, true, true), vec2<f32>(-867f, -275f)), Struct_1(vec4<f32>(-1396f, -1274f, -368f, 474f), vec3<f32>(-2050f, 565f, 1309f), -5227i, vec4<bool>(true, false, false, false), vec2<f32>(469f, -233f)), Struct_1(vec4<f32>(-1935f, -408f, -2838f, -125f), vec3<f32>(-488f, 326f, 1913f), 2147483647i, vec4<bool>(true, false, false, false), vec2<f32>(2997f, 486f)), Struct_1(vec4<f32>(-1000f, -115f, -900f, 639f), vec3<f32>(107f, 890f, -865f), i32(-2147483648), vec4<bool>(true, false, false, false), vec2<f32>(-1000f, -2487f)), Struct_1(vec4<f32>(-161f, -329f, 641f, 552f), vec3<f32>(-458f, 1063f, 310f), i32(-2147483648), vec4<bool>(true, true, true, false), vec2<f32>(512f, -893f)), Struct_1(vec4<f32>(191f, 653f, 193f, 120f), vec3<f32>(-1000f, 412f, -1127f), 6095i, vec4<bool>(false, true, true, true), vec2<f32>(-225f, -699f)), Struct_1(vec4<f32>(-625f, -1000f, -383f, -198f), vec3<f32>(2314f, 904f, -510f), i32(-2147483648), vec4<bool>(true, true, false, true), vec2<f32>(-1844f, 730f)), Struct_1(vec4<f32>(-902f, 432f, 579f, 434f), vec3<f32>(-1868f, -206f, 517f), 2147483647i, vec4<bool>(false, false, false, false), vec2<f32>(-624f, -417f)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-arg_0.a), vec4<f32>(arg_0.e.x, _wgslsmith_f_op_f32(-927f * -1000f), _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(0u, 12u)])), -120f))) * arg_0.a), arg_0.b, -2147483647i, !(!vec4<bool>(true | arg_0.d.x, true, arg_1 | false, false)), _wgslsmith_f_op_vec2_f32(min(arg_0.e, arg_0.e)));
    var var_1 = 4294967295u;
    let var_2 = arg_0.a.xyy;
    var var_3 = arg_0.c;
    let var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(var_0.b.x + var_2.x), arg_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1013f)), var_0.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-163f, -1000f, global0[_wgslsmith_index_u32(u_input.d.x, 12u)]), vec3<f32>(var_2.x, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d.x, 28u)], 12u)], var_0.e.x)) + _wgslsmith_f_op_vec3_f32(-arg_0.a.xxz)))), 23402i, select(vec4<bool>(var_0.d.x || true, select(false, var_0.d.x, !arg_0.d.x), !(-2147483647i != var_0.c), (u_input.a.x ^ arg_0.c) < ~1i), vec4<bool>(all(var_0.d) & true, true, true, true), !vec4<bool>(false, arg_1, select(true, true, arg_0.d.x), true)), _wgslsmith_f_op_vec2_f32(var_0.e * _wgslsmith_f_op_vec2_f32(ceil(var_2.zx))));
    return 1501u;
}

fn func_2(arg_0: i32, arg_1: f32) -> Struct_1 {
    var var_0 = ~4294967295u ^ ~func_3(global3[_wgslsmith_index_u32(~u_input.d.x << ((u_input.d.x & u_input.d.x) % 32u), 8u)], all(vec4<bool>(true, true, true, true)));
    let var_1 = u_input.c;
    global3 = array<Struct_1, 8>();
    var var_2 = global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~(_wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.b, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 28u)], 28u)], 28u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 32217u), vec4<u32>(30899u, 10299u, u_input.b, u_input.b) | vec4<u32>(4294967295u, 0u, global2[_wgslsmith_index_u32(u_input.d.x, 28u)], u_input.d.x)), _wgslsmith_sub_vec4_u32(u_input.d, vec4<u32>(11224u, 1u, 25057u, 55017u))) ^ 1u), 28u)], 28u)];
    var var_3 = false;
    return global3[_wgslsmith_index_u32(u_input.b, 8u)];
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> u32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 12u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(u_input.b, 12u)], global0[_wgslsmith_index_u32(0u, 12u)], false))))), _wgslsmith_div_f32(-1908f, global0[_wgslsmith_index_u32(1u, 12u)]), arg_1.e.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(1014f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.e.x - arg_1.b.x) * 1241f))))));
    let var_1 = global3[_wgslsmith_index_u32(~arg_0, 8u)];
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_1.a, vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 12u)], -542f, 996f, -1030f))) + func_2(var_1.c | 20662i, 750f).a) - arg_1.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1992f * _wgslsmith_f_op_f32(-678f + 1974f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-var_0.x)), -966f) - arg_1.a.wxx), var_1.c, !(!vec4<bool>(var_1.c >= -17962i, true, true, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.wz * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_1.a.wx), _wgslsmith_f_op_vec2_f32(round(var_0.yx))))) - var_1.e));
    var var_3 = !arg_1.d.wz;
    global2 = array<u32, 28>();
    return ~max(u_input.d.x, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~8976u, global2[_wgslsmith_index_u32(40077u, 28u)] << (1104u % 32u)) << (u_input.d.x % 32u), 28u)]);
}

fn func_1(arg_0: Struct_1) -> u32 {
    global0 = array<f32, 12>();
    global2 = array<u32, 28>();
    let var_0 = arg_0;
    global1 = array<Struct_1, 14>();
    let var_1 = !(!((-u_input.c ^ ~(-1i)) > var_0.c));
    return func_4(abs(12835u), func_2(firstTrailingBit(16331i), var_0.e.x));
}

fn func_5(arg_0: f32, arg_1: bool) -> Struct_1 {
    global1 = array<Struct_1, 14>();
    let var_0 = select(select(vec4<bool>(all(!vec4<bool>(arg_1, true, arg_1, arg_1)), arg_1, !arg_1, select(any(vec3<bool>(arg_1, arg_1, false)), arg_1, arg_1 || arg_1)), !(!vec4<bool>(arg_1, false, arg_1, false)), !select(select(vec4<bool>(false, true, arg_1, arg_1), vec4<bool>(true, arg_1, arg_1, true), vec4<bool>(true, true, true, true)), !vec4<bool>(arg_1, arg_1, true, true), vec4<bool>(arg_1, false, arg_1, arg_1))), select(vec4<bool>(arg_1 & true, !arg_1 != (false || arg_1), false, true), !vec4<bool>(false, arg_1, any(vec4<bool>(true, arg_1, false, true)), all(vec3<bool>(false, arg_1, arg_1))), true), false);
    global0 = array<f32, 12>();
    var var_1 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~4294967295u, 12u)]);
    global2 = array<u32, 28>();
    return global1[_wgslsmith_index_u32(abs(u_input.d.x), 14u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -503f;
    var var_1 = func_5(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(max(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(u_input.d.x, 28u)] >> (0u % 32u), func_1(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 28u)], 8u)])), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(40750u, global2[_wgslsmith_index_u32(11966u, 28u)], global2[_wgslsmith_index_u32(4294967295u, 28u)])), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 28u)], 28u)], 2930u, 1u))), 12u)]), !(!(global0[_wgslsmith_index_u32(1u, 12u)] >= _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(14829u, 12u)])))));
    var var_2 = u_input.d.ywz;
    var var_3 = -1i;
    let var_4 = var_1.d.x;
    var_3 = -1i;
    var_2 = u_input.d.xxy;
    var var_5 = global3[_wgslsmith_index_u32(~50101u, 8u)];
    global3 = array<Struct_1, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(var_5.e.x);
}

