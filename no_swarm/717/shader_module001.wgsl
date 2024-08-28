struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -528f;

var<private> global1: array<u32, 7>;

var<private> global2: array<f32, 20>;

var<private> global3: array<f32, 6>;

var<private> global4: array<f32, 25>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> u32 {
    var var_0 = true;
    global4 = array<f32, 25>();
    var var_1 = Struct_3(Struct_1(-1000f), Struct_2(~global1[_wgslsmith_index_u32(0u, 7u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, arg_0, -860f, 209f) * vec4<f32>(856f, arg_3, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 7u)], 7u)], 6u)], global4[_wgslsmith_index_u32(48641u, 25u)])), vec4<f32>(arg_3, 1213f, 517f, -1408f))), arg_2), Struct_2((1u | min(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3521u, 7u)], 7u)])) << (~28593u % 32u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(606f * arg_0), -1575f, 799f, _wgslsmith_f_op_f32(step(1905f, 1000f)))), arg_2), Struct_2(firstTrailingBit(~1u), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 7u)], 7u)], 20u)] + global3[_wgslsmith_index_u32(7639u, 6u)]), -1544f, _wgslsmith_f_op_f32(arg_0 + arg_2.a), -1687f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 275f, -1770f, arg_0) * vec4<f32>(arg_3, 621f, arg_2.a, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(25912u, 7u)], 7u)], 25u)]))), false)), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_2.a, -2321f)), _wgslsmith_f_op_f32(arg_2.a - 2214f)))));
    let var_2 = u_input.a.x;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, -494f))))) + 1071f);
    return firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~72454u, 7u)], 7u)] << (_wgslsmith_mult_u32(var_1.d.a, 59804u) % 32u));
}

fn func_2() -> Struct_3 {
    global2 = array<f32, 20>();
    let var_0 = false;
    let var_1 = Struct_1(-1000f);
    let var_2 = ~(-(~firstLeadingBit(vec3<i32>(u_input.a.x, -2147483647i, -2147483647i)))) >> (countOneBits(firstTrailingBit(abs(select(vec3<u32>(1u, 0u, 0u), vec3<u32>(global1[_wgslsmith_index_u32(0u, 7u)], 75056u, 0u), vec3<bool>(var_0, false, var_0))))) % vec3<u32>(32u));
    let var_3 = global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(77799u, 7u)], 25u)];
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1749f))))), Struct_2(26121u, _wgslsmith_f_op_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(52918u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11533u, 7u)], 7u)]), 7u)], 25u)], -1030f, global4[_wgslsmith_index_u32(func_3(var_1.a, true, var_1, global2[_wgslsmith_index_u32(4294967295u, 20u)]), 25u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 6u)])) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-643f, 1000f, global2[_wgslsmith_index_u32(4294967295u, 20u)], 556f) + vec4<f32>(global2[_wgslsmith_index_u32(44757u, 20u)], var_1.a, global4[_wgslsmith_index_u32(0u, 25u)], 875f)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -151f)))), Struct_2(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 7u)], 7u)], 7u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-450f, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17862u, 7u)], 7u)], 25u)], -492f, 190f))))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 6u)], 125f, global3[_wgslsmith_index_u32(66246u, 6u)], -853f))))), var_1), Struct_2(global1[_wgslsmith_index_u32(1u, 7u)] | 0u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global3[_wgslsmith_index_u32(13441u, 6u)], 713f, -275f, var_1.a)))), Struct_1(global4[_wgslsmith_index_u32(abs(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)]), 25u)])));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    var var_1 = !select(select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), all(vec3<bool>(false, true, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), 4294967295u < ~var_0.b.a);
    var_1 = select(select(!select(vec3<bool>(var_1.x, var_1.x, var_1.x), !vec3<bool>(true, var_1.x, var_1.x), select(vec3<bool>(false, true, false), vec3<bool>(true, var_1.x, var_1.x), var_1.x)), vec3<bool>(var_1.x, true, _wgslsmith_f_op_f32(round(-1302f)) >= _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_0.d.a, 20u)] + var_0.a.a)), !vec3<bool>(true, true, all(vec3<bool>(false, var_1.x, false)))), !vec3<bool>(true, var_1.x, any(var_1.yy)), any(!vec4<bool>(!var_1.x, false, !var_1.x, all(vec3<bool>(var_1.x, var_1.x, var_1.x)))));
    var_1 = select(!select(select(!vec3<bool>(false, false, var_1.x), vec3<bool>(var_1.x, true, false), select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(true, false, true), var_1.x)), !(!vec3<bool>(var_1.x, true, false)), var_1.x), select(vec3<bool>(u_input.a.x <= ~1i, var_1.x && true, func_2().d.c.a >= _wgslsmith_f_op_f32(abs(770f))), select(select(select(vec3<bool>(true, false, var_1.x), vec3<bool>(var_1.x, false, false), var_1.x), select(vec3<bool>(var_1.x, true, true), vec3<bool>(var_1.x, var_1.x, false), true), false | var_1.x), vec3<bool>(global1[_wgslsmith_index_u32(var_0.d.a, 7u)] != var_0.c.a, true, any(vec2<bool>(var_1.x, true))), !(!vec3<bool>(var_1.x, true, true))), !select(vec3<bool>(var_1.x, var_1.x, var_1.x), select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, true)), select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, true, false), false))), var_1.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(var_0.b.b.xy + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.d.b.zw)));
    return func_2().d.c;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: u32) -> u32 {
    var var_0 = ~global1[_wgslsmith_index_u32(~64255u, 7u)];
    var var_1 = !select(!(!vec2<bool>(arg_1, arg_1)), vec2<bool>(_wgslsmith_f_op_f32(-arg_0.c.a) != _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 20u)] + global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_2, 7u)], 20u)]), all(vec2<bool>(false, arg_1)) | (global1[_wgslsmith_index_u32(1u, 7u)] < 4294967295u)), select(select(select(vec2<bool>(arg_1, true), vec2<bool>(false, arg_1), arg_1), !vec2<bool>(arg_1, false), false), vec2<bool>(true, arg_1), true));
    let var_2 = all(select(vec3<bool>(true, !(global1[_wgslsmith_index_u32(arg_0.a, 7u)] >= 72070u), any(select(vec4<bool>(false, false, var_1.x, true), vec4<bool>(true, false, true, arg_1), arg_1))), select(!(!vec3<bool>(false, arg_1, true)), !select(vec3<bool>(var_1.x, arg_1, arg_1), vec3<bool>(false, var_1.x, true), arg_1), !(!vec3<bool>(true, arg_1, arg_1))), arg_1));
    let var_3 = func_2().d;
    global3 = array<f32, 6>();
    return _wgslsmith_sub_u32(arg_2, global1[_wgslsmith_index_u32(4294967295u, 7u)] >> (abs(_wgslsmith_sub_u32(~39583u, reverseBits(var_3.a))) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 7>();
    global1 = array<u32, 7>();
    global2 = array<f32, 20>();
    global0 = global4[_wgslsmith_index_u32(_wgslsmith_add_u32(func_4(Struct_2(35339u, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 7u)], 7u)], 7u)], 7u)], 7u)], 7u)], 25u)], -860f, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(12444u, 7u)], 25u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(32u, 7u)], 7u)], 20u)]) + vec4<f32>(global3[_wgslsmith_index_u32(27673u, 6u)], global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(24988u, 7u)], 7u)], 7u)], 25u)], global2[_wgslsmith_index_u32(0u, 20u)], 230f)))), func_1()), true, 1u), ~abs(399u)), 25u)];
    var var_0 = Struct_2(select(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(~4294967295u, 7u)] << (1u % 32u), global1[_wgslsmith_index_u32(abs(max(34766u, 13772u)), 7u)]), 7u)], _wgslsmith_mult_u32(func_2().c.a, _wgslsmith_add_u32(max(4294967295u, global1[_wgslsmith_index_u32(4294967295u, 7u)]), 0u)), (1i != firstTrailingBit(u_input.a.x)) != false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(37831u, 6u)]), _wgslsmith_f_op_f32(239f * global4[_wgslsmith_index_u32(1u, 25u)])), 341f, -1053f, _wgslsmith_f_op_f32(abs(-608f)))), func_2().d.c);
    var_0 = Struct_2(1u << (_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(var_0.a, 7u)], var_0.a & var_0.a), max(select(vec2<u32>(global1[_wgslsmith_index_u32(24995u, 7u)], 58453u), vec2<u32>(var_0.a, global1[_wgslsmith_index_u32(0u, 7u)]), vec2<bool>(true, true)), vec2<u32>(var_0.a, 24782u) | vec2<u32>(39413u, var_0.a))) % 32u), _wgslsmith_div_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10446u, 7u)] >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~37897u, 7u)], 7u)] % 32u), 6u)], -2056f, _wgslsmith_div_f32(-1488f, global4[_wgslsmith_index_u32(~var_0.a, 25u)]), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-609f, 919f))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(var_0.a, 25u)]))), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(var_0.a, 7u)], 8641u), 6u)] * -213f), _wgslsmith_f_op_f32(trunc(func_2().b.b.x)), global3[_wgslsmith_index_u32(var_0.a, 6u)])), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xz);
}

