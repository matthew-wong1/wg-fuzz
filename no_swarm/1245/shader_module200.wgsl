struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

var<private> global1: array<vec2<f32>, 20> = array<vec2<f32>, 20>(vec2<f32>(1000f, 120f), vec2<f32>(-573f, 1000f), vec2<f32>(1300f, -307f), vec2<f32>(-693f, -1204f), vec2<f32>(300f, 1212f), vec2<f32>(-966f, 959f), vec2<f32>(275f, -1368f), vec2<f32>(-805f, -197f), vec2<f32>(-441f, -879f), vec2<f32>(1026f, -558f), vec2<f32>(-144f, -1000f), vec2<f32>(-576f, 386f), vec2<f32>(2532f, -1857f), vec2<f32>(359f, -593f), vec2<f32>(1000f, 632f), vec2<f32>(-997f, 1413f), vec2<f32>(-227f, -1103f), vec2<f32>(-202f, 831f), vec2<f32>(-1106f, -1394f), vec2<f32>(271f, -1395f));

var<private> global2: i32 = -8303i;

var<private> global3: array<f32, 22>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32) -> i32 {
    global0 = array<Struct_1, 29>();
    return (u_input.a << (0u % 32u)) ^ ~2147483647i;
}

fn func_2() -> i32 {
    var var_0 = Struct_2(true, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(u_input.b, 20u)])), vec3<i32>(-43996i, ~u_input.a, u_input.a)), -11110i);
    var var_1 = ~var_0.b.b.yx;
    global3 = array<f32, 22>();
    var_0 = Struct_2(!(!(!any(vec4<bool>(var_0.a, true, var_0.a, var_0.a)))), var_0.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-43781i, 1i, func_3(_wgslsmith_mult_u32(u_input.b, 1u))), vec3<i32>(var_0.b.b.x, _wgslsmith_div_i32(u_input.a, u_input.a << (u_input.c % 32u)), -(var_1.x | 2147483647i))));
    return ~(func_3(_wgslsmith_sub_u32(106532u, countOneBits(u_input.c))) ^ var_1.x);
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> vec3<bool> {
    var var_0 = arg_0.a;
    global0 = array<Struct_1, 29>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-260f, arg_0.b.a.x)), arg_0.b.a.x, _wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.c, 22u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b, 22u)])), arg_0.b.a.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.a.x, global3[_wgslsmith_index_u32(arg_1, 22u)], 823f, arg_0.b.a.x) - vec4<f32>(arg_0.b.a.x, -1745f, arg_0.b.a.x, 571f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(225f, 1000f, arg_0.b.a.x, arg_0.b.a.x) - vec4<f32>(global3[_wgslsmith_index_u32(1u, 22u)], 1543f, 1000f, global3[_wgslsmith_index_u32(4294967295u, 22u)])), vec4<f32>(arg_0.b.a.x, -559f, global3[_wgslsmith_index_u32(u_input.b, 22u)], 593f), vec4<bool>(arg_0.a, arg_0.a, arg_0.a, false))), vec4<f32>(_wgslsmith_f_op_f32(trunc(-1814f)), _wgslsmith_f_op_f32(758f * -273f), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, u_input.c), 22u)], _wgslsmith_f_op_f32(196f + global3[_wgslsmith_index_u32(u_input.b, 22u)])), vec4<bool>(arg_0.a, 37326u <= arg_1, true, false)))));
    var var_2 = u_input.b;
    var var_3 = vec3<i32>(u_input.a, u_input.a, -2147483647i & u_input.a) & vec3<i32>(func_2(), 0i, abs(u_input.a & u_input.a) | -arg_0.b.b.x);
    return select(select(vec3<bool>(arg_0.a, arg_0.a, !(!arg_0.a)), vec3<bool>(all(select(vec4<bool>(arg_0.a, false, arg_0.a, true), vec4<bool>(true, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a))), arg_0.a, !(!arg_0.a)), arg_1 < (arg_1 & reverseBits(0u))), select(!select(!vec3<bool>(arg_0.a, true, arg_0.a), vec3<bool>(arg_0.a, true, true), false), select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(arg_0.a, arg_0.a)), arg_0.a, true), !select(vec3<bool>(true, arg_0.a, arg_0.a), vec3<bool>(false, false, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, arg_0.a))), all(select(select(vec2<bool>(arg_0.a, true), vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(true, arg_0.a)), vec2<bool>(arg_0.a, arg_0.a), select(vec2<bool>(arg_0.a, true), vec2<bool>(true, arg_0.a), vec2<bool>(arg_0.a, arg_0.a))))), arg_0.a);
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> f32 {
    var var_0 = func_1(Struct_2(arg_1, arg_0.b, min(func_3(_wgslsmith_div_u32(u_input.b, u_input.c)), 2147483647i)), ~abs(firstLeadingBit(0u))).zx;
    var var_1 = select(!select(select(select(vec4<bool>(arg_3, arg_3, true, false), vec4<bool>(false, false, arg_0.a, false), vec4<bool>(true, false, arg_3, var_0.x)), vec4<bool>(var_0.x, true, true, arg_3), true), vec4<bool>(true, true, false, arg_3), select(!vec4<bool>(arg_0.a, arg_3, true, arg_3), select(vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(arg_3, arg_1, arg_3, arg_1), vec4<bool>(arg_0.a, false, false, false)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(arg_0.a, true, false, false)))), !vec4<bool>(true, false || any(vec2<bool>(true, false)), arg_3, true), !(!(!arg_3)));
    var_1 = select(!vec4<bool>(true | (arg_0.a | arg_0.a), select(false, func_1(Struct_2(false, arg_0.b, 14727i), u_input.b).x, true), true & all(var_1.xyy), !func_1(arg_0, u_input.b).x), vec4<bool>(true, false, select(true, !arg_0.a, true) | false, true), !(!(_wgslsmith_add_i32(arg_0.c, -19337i) <= _wgslsmith_div_i32(2147483647i, 1i))));
    var_0 = select(select(vec2<bool>(arg_1 && all(var_1.zx), all(vec3<bool>(true, arg_3, false))), func_1(Struct_2(arg_0.a, Struct_1(vec2<f32>(arg_2.a.x, 1112f), vec3<i32>(10425i, -2147483647i, 0i)), _wgslsmith_add_i32(arg_0.c, 11649i)), u_input.b).xy, func_1(arg_0, ~(~17463u)).xz), !vec2<bool>(!arg_3, all(!var_1.zz)), !(!var_1.zw));
    global1 = array<vec2<f32>, 20>();
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(513f + arg_0.b.a.x), arg_0.b.a.x, false));
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: vec4<f32>) -> Struct_2 {
    var var_0 = Struct_2(true, Struct_1(arg_2.yz, vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -4879i), vec2<i32>(u_input.a, u_input.a)) >> (~4294967295u % 32u), -31435i, max(u_input.a, func_2()))), 0i);
    var var_1 = min(~_wgslsmith_mod_u32(abs(u_input.b), 0u) << (min(~_wgslsmith_sub_u32(77083u, u_input.c), _wgslsmith_add_u32(1u, 8112u)) % 32u), arg_0);
    var_1 = ~11208u;
    let var_2 = var_0.c;
    var var_3 = Struct_2(false, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.x), -329f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1[_wgslsmith_index_u32(u_input.b, 20u)], global1[_wgslsmith_index_u32(4294967295u, 20u)]))), var_0.b.b), -1i);
    return Struct_2(!(~0u >= (u_input.c ^ arg_0)) | false, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, var_0.b.a.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(234f, 1255f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1066f, -1025f) - vec2<f32>(-728f, -2308f)))), firstTrailingBit(vec3<i32>(_wgslsmith_sub_i32(1i, u_input.a), 1i, var_0.c))), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(u_input.c & select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 94228u, 4294967295u), vec3<u32>(u_input.b, u_input.c, 9990u)) << (countOneBits(u_input.c) % 32u), ~0u, u_input.c < firstTrailingBit(0u)), _wgslsmith_f_op_f32(func_4(Struct_2(true, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(1u, 22u)], global3[_wgslsmith_index_u32(0u, 22u)]) - global1[_wgslsmith_index_u32(106645u, 20u)]), ~vec3<i32>(-57799i, u_input.a, -17678i)), u_input.a), any(!func_1(Struct_2(false, Struct_1(vec2<f32>(global3[_wgslsmith_index_u32(0u, 22u)], global3[_wgslsmith_index_u32(u_input.c, 22u)]), vec3<i32>(-19905i, u_input.a, u_input.a)), 30681i), 55415u)), global0[_wgslsmith_index_u32(countOneBits(reverseBits(abs(u_input.c))), 29u)], true)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-105f, global3[_wgslsmith_index_u32(1u, 22u)])), _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(4294967295u, 22u)])), _wgslsmith_f_op_f32(sign(-1148f)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(90070u, 22u)] * 282f))))));
    global1 = array<vec2<f32>, 20>();
    let var_1 = 533f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(639f, _wgslsmith_f_op_f32(var_0.b.a.x * global3[_wgslsmith_index_u32(52579u, 22u)]))));
    let var_2 = func_5(abs(u_input.b), global3[_wgslsmith_index_u32(~abs(~(~u_input.c)), 22u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-233f, -191f, -2121f, global3[_wgslsmith_index_u32(0u, 22u)])), vec4<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(17604u, 22u)]), _wgslsmith_f_op_f32(min(var_0.b.a.x, global3[_wgslsmith_index_u32(4294967295u, 22u)])), _wgslsmith_f_op_f32(f32(-1f) * -595f), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(64063u, u_input.b, u_input.b), vec3<u32>(u_input.c, u_input.b, 25031u)), 22u)])) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-737f, -2084f, global3[_wgslsmith_index_u32(u_input.b, 22u)], var_0.b.a.x) - vec4<f32>(global3[_wgslsmith_index_u32(1u, 22u)], var_0.b.a.x, 1553f, 579f)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.b.a.x, 1136f, global3[_wgslsmith_index_u32(4294967295u, 22u)], var_0.b.a.x))))))).b.b.zz;
    let var_3 = ~0u;
    global0 = array<Struct_1, 29>();
    let var_4 = firstTrailingBit(4294967295u);
    let var_5 = vec3<bool>(!var_0.a, false, var_1 | !func_1(var_0, _wgslsmith_add_u32(var_4, 74452u)).x);
    let var_6 = var_0.b.b.xx;
    let x = u_input.a;
    s_output = StorageBuffer((min(vec2<u32>(var_3, var_3), vec2<u32>(1u, 1u)) ^ firstTrailingBit(~vec2<u32>(var_3, 17790u))) & firstTrailingBit(vec2<u32>(u_input.b, 4294967295u)));
}

