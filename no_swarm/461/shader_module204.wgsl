struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26>;

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec2<u32>(50040u, 0u)), Struct_1(vec2<u32>(9169u, 23301u)), Struct_1(vec2<u32>(37820u, 24295u)), Struct_1(vec2<u32>(26149u, 4294967295u)), Struct_1(vec2<u32>(0u, 49718u)), Struct_1(vec2<u32>(0u, 0u)), Struct_1(vec2<u32>(1u, 0u)), Struct_1(vec2<u32>(69074u, 4294967295u)), Struct_1(vec2<u32>(1u, 4906u)), Struct_1(vec2<u32>(4294967295u, 5165u)), Struct_1(vec2<u32>(4294967295u, 11645u)), Struct_1(vec2<u32>(131955u, 7116u)), Struct_1(vec2<u32>(4294967295u, 1u)), Struct_1(vec2<u32>(15283u, 5777u)), Struct_1(vec2<u32>(1u, 0u)), Struct_1(vec2<u32>(29993u, 118559u)), Struct_1(vec2<u32>(5297u, 4294967295u)), Struct_1(vec2<u32>(3754u, 1u)), Struct_1(vec2<u32>(86930u, 1u)), Struct_1(vec2<u32>(0u, 2242u)), Struct_1(vec2<u32>(0u, 106461u)), Struct_1(vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec2<u32>(4294967295u, 0u)), Struct_1(vec2<u32>(0u, 1u)), Struct_1(vec2<u32>(68036u, 23450u)), Struct_1(vec2<u32>(1u, 128132u)), Struct_1(vec2<u32>(1u, 1u)));

var<private> global2: u32;

var<private> global3: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec2<u32>(84779u, 4294967295u)), Struct_1(vec2<u32>(106874u, 0u)), Struct_1(vec2<u32>(4294967295u, 44749u)), Struct_1(vec2<u32>(51144u, 93956u)), Struct_1(vec2<u32>(4294967295u, 1u)), Struct_1(vec2<u32>(0u, 0u)), Struct_1(vec2<u32>(0u, 19987u)), Struct_1(vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec2<u32>(36586u, 23582u)), Struct_1(vec2<u32>(0u, 36416u)), Struct_1(vec2<u32>(29856u, 1u)), Struct_1(vec2<u32>(50000u, 0u)), Struct_1(vec2<u32>(20475u, 59600u)), Struct_1(vec2<u32>(95767u, 64208u)), Struct_1(vec2<u32>(41895u, 23925u)), Struct_1(vec2<u32>(22811u, 0u)));

var<private> global4: Struct_1 = Struct_1(vec2<u32>(73196u, 2216u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2() -> u32 {
    global2 = ~4294967295u;
    let var_0 = Struct_1(abs(~_wgslsmith_div_vec2_u32(vec2<u32>(24734u, 1u), _wgslsmith_add_vec2_u32(global4.a, vec2<u32>(global4.a.x, 1u)))));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -192f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1213f))))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(700f, var_1, 686f))), vec3<f32>(736f, var_1, 831f), all(vec4<bool>(false, false, false, false))))))));
    let var_3 = vec2<bool>(!(!all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)))), false);
    return 4294967295u;
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: Struct_1) -> u32 {
    var var_0 = 1878f;
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_3.a.x, ~firstLeadingBit(_wgslsmith_add_u32(global4.a.x, u_input.c))), 27u)];
    let var_2 = max(_wgslsmith_clamp_vec2_u32(~(~vec2<u32>(global4.a.x, 10885u)), max(~(~vec2<u32>(4294967295u, arg_0.x)), ~_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.c), arg_0.xx)), arg_3.a), vec2<u32>(1u, 13707u));
    let var_3 = -1058f;
    var var_4 = 61172i;
    return 4294967295u;
}

fn func_1() -> Struct_1 {
    var var_0 = ~(~vec4<u32>(global4.a.x, 1u, u_input.c, func_2()));
    var_0 = vec4<u32>(~(~(~(~0u))), ~_wgslsmith_mult_u32(global4.a.x, _wgslsmith_mod_u32(1u, abs(4294967295u))), ~func_3(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 29478u, var_0.x, var_0.x) ^ vec4<u32>(49061u, 0u, 1u, u_input.c), max(vec4<u32>(var_0.x, var_0.x, global4.a.x, 12444u), vec4<u32>(u_input.c, global4.a.x, global4.a.x, global4.a.x))), vec4<bool>(true, true, true, true), vec2<i32>(1i, global0[_wgslsmith_index_u32(global4.a.x, 26u)]) & u_input.b.zz, Struct_1(var_0.ww)), _wgslsmith_add_u32(u_input.c, func_2()));
    var var_1 = Struct_1(vec2<u32>(~global4.a.x, 33275u));
    let var_2 = true;
    global1 = array<Struct_1, 27>();
    return Struct_1(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(~(~vec2<u32>(u_input.c, 9406u)), var_1.a), vec2<u32>(func_3(vec4<u32>(global4.a.x, 0u, 5992u, 18237u), vec4<bool>(var_2, var_2, var_2, var_2), u_input.b.yx, Struct_1(vec2<u32>(var_1.a.x, 0u))) | (var_0.x ^ 1u), 4294967295u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = select(select(select(select(select(vec3<bool>(arg_1.x, false, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), arg_1.x), !vec3<bool>(arg_1.x, true, arg_1.x), false), vec3<bool>(u_input.a >= -24265i, !arg_1.x, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, true)), vec3<bool>(true == select(arg_1.x, arg_1.x, true), false, select(true, true, arg_1.x)), !any(arg_1)), !(!select(select(vec3<bool>(arg_1.x, arg_1.x, true), vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(true, false, arg_1.x)), vec3<bool>(true, false, arg_1.x), true)), !vec3<bool>(true, !(false || arg_1.x), any(vec3<bool>(true, true, true))));
    let var_1 = func_1();
    var var_2 = var_1.a.x;
    var var_3 = global1[_wgslsmith_index_u32(global4.a.x, 27u)];
    global0 = array<i32, 26>();
    return select(!select(!vec3<bool>(var_0.x, arg_1.x, false), select(select(vec3<bool>(arg_1.x, true, false), vec3<bool>(false, var_0.x, arg_1.x), vec3<bool>(true, arg_1.x, var_0.x)), vec3<bool>(var_0.x, arg_1.x, arg_1.x), !arg_1.x), vec3<bool>(arg_1.x, true, any(vec4<bool>(var_0.x, false, arg_1.x, arg_1.x)))), !select(vec3<bool>(true, true, var_0.x || var_0.x), select(vec3<bool>(var_0.x, var_0.x, arg_1.x), vec3<bool>(false, arg_1.x, arg_1.x), false), true != all(vec3<bool>(arg_1.x, true, false))), vec3<bool>(true, false && all(vec2<bool>(arg_1.x, var_0.x)), select(!var_0.x, true, arg_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    global1 = array<Struct_1, 27>();
    let var_1 = u_input.c;
    var var_2 = Struct_1(firstTrailingBit(vec2<u32>(u_input.c, _wgslsmith_mod_u32(37274u, var_1) & _wgslsmith_dot_vec4_u32(vec4<u32>(52704u, var_1, 21447u, 4294967295u), vec4<u32>(global4.a.x, 1u, var_1, 621u)))));
    let var_3 = -518f;
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-679f, var_3, var_3)))))));
    let var_5 = 2147483647i;
    var var_6 = !all(func_4(func_1(), !select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), func_1(), global3[_wgslsmith_index_u32(u_input.c, 16u)]));
    var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.x, var_3, var_4.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, var_4.x, 1901f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_4.x, var_4.x, -1539f), vec3<f32>(1343f, -1222f, var_4.x))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_3), var_3, _wgslsmith_f_op_f32(var_4.x + 1484f)))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.c, 74525u, 1555u, 1u), _wgslsmith_sub_vec4_u32(select(vec4<u32>(var_1, var_2.a.x, global4.a.x, u_input.c), vec4<u32>(0u, 21752u, 2670u, 15511u), vec4<bool>(true, true, false, false)), vec4<u32>(u_input.c, global4.a.x, 4294967295u, 1u))), vec4<u32>(_wgslsmith_sub_u32(func_3(vec4<u32>(30853u, 4294967295u, 1u, var_1), vec4<bool>(true, true, false, true), vec2<i32>(global0[_wgslsmith_index_u32(12013u, 26u)], -31983i), Struct_1(vec2<u32>(u_input.c, global4.a.x))), ~var_2.a.x), 18161u, 0u, _wgslsmith_add_u32(44826u, reverseBits(var_2.a.x)))), (abs(~0i) >> (_wgslsmith_sub_u32(global4.a.x, _wgslsmith_add_u32(u_input.c, 75402u)) % 32u)) ^ ~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(23681u, 4294967295u, global4.a.x, 10689u), vec4<u32>(var_2.a.x, 1u, 9408u, var_2.a.x) | vec4<u32>(45053u, var_2.a.x, 0u, 1u)), 26u)], ~(~(~var_1 & (var_1 ^ var_2.a.x))), ~(~vec4<i32>(26827i, global0[_wgslsmith_index_u32(global4.a.x, 26u)], -2147483647i, -8558i) ^ (vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, -2147483647i, var_0, u_input.b.x))));
}

