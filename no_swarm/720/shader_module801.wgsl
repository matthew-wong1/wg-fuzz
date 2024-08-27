struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
    d: f32,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: vec2<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15>;

var<private> global1: array<vec2<u32>, 11> = array<vec2<u32>, 11>(vec2<u32>(1u, 29280u), vec2<u32>(2263u, 3453u), vec2<u32>(56984u, 26460u), vec2<u32>(1u, 89146u), vec2<u32>(30789u, 34035u), vec2<u32>(44336u, 13457u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(55849u, 29887u), vec2<u32>(0u, 42216u), vec2<u32>(1u, 0u));

var<private> global2: array<vec4<f32>, 28>;

var<private> global3: f32;

var<private> global4: array<vec3<f32>, 23>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: vec2<u32>) -> f32 {
    var var_0 = u_input.a.yx;
    let var_1 = var_0.x < _wgslsmith_dot_vec3_i32(u_input.a << (~(~vec3<u32>(arg_0.x, 33167u, arg_0.x)) % vec3<u32>(32u)), vec3<i32>(u_input.a.x, u_input.a.x, firstLeadingBit(i32(-1i) * -1i)));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1888f)))));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: vec4<f32>, arg_3: f32) -> vec4<bool> {
    global0 = array<u32, 15>();
    global3 = arg_3;
    let var_0 = Struct_5(arg_1.x, Struct_1(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), false), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec2<f32>(_wgslsmith_f_op_f32(-1f), 1f), true), !select(vec2<bool>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26379u, 15u)], 15u)] < global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(44363u, 15u)], 15u)], global0[_wgslsmith_index_u32(1u, 15u)] != global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(76634u, 15u)], 15u)]), vec2<bool>(true, true), any(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(1u, 11u)]))))), Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(arg_2 * arg_2))), -14880i, abs(~vec3<u32>(44284u, global0[_wgslsmith_index_u32(6828u, 15u)], global0[_wgslsmith_index_u32(1396u, 15u)])), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-475f, 801f, arg_1.x) * vec3<f32>(-1166f, arg_1.x, arg_2.x)))), Struct_1(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), false), vec2<f32>(-1000f, arg_2.x), any(vec2<bool>(false, false)))), arg_1, Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_div_vec2_f32(vec2<f32>(-508f, -1000f), _wgslsmith_f_op_vec2_f32(arg_2.wy - arg_1.zx)), true)));
    let var_1 = ~global0[_wgslsmith_index_u32(min(reverseBits(1u), global0[_wgslsmith_index_u32(reverseBits(~global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 15u)], 15u)], 15u)]), 15u)]), 15u)]), 15u)];
    var var_2 = global4[_wgslsmith_index_u32(~var_0.e.a.c.x, 23u)];
    return vec4<bool>(_wgslsmith_f_op_f32(arg_1.x - var_2.x) == arg_3, !(true || all(!var_0.c)), true, var_0.c.x);
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(!select(func_3(vec3<i32>(-27809i, u_input.a.x, u_input.a.x), vec3<f32>(arg_1, arg_1, -573f), vec4<f32>(arg_1, arg_1, 1082f, -2193f), -395f), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, false, false, true)), vec2<f32>(arg_1, _wgslsmith_f_op_f32(func_1(abs(arg_0.yy)))), false));
    var var_1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(174f + _wgslsmith_f_op_f32(trunc(1010f))))), Struct_1(!var_0.a.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - 1300f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1063f, arg_1))), all(vec3<bool>(true, !var_0.a.a.x, 0u != arg_0.x))), vec2<bool>(any(!var_0.a.a.xzz) & all(select(vec2<bool>(var_0.a.c, false), var_0.a.a.wx, var_0.a.a.wz)), true), _wgslsmith_f_op_f32(max(var_0.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1272f * _wgslsmith_div_f32(-892f, 1735f)) + 1000f))), Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -750f, var_0.a.b.x, 513f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1142f, arg_1, arg_1, var_0.a.b.x))), _wgslsmith_mod_i32(36807i, -19694i) >> (global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0.yy, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29066u, 15u)], 15u)], 15u)], 11u)]), 15u)] % 32u), ~(~arg_0.wxy), _wgslsmith_f_op_vec3_f32(-global4[_wgslsmith_index_u32(1u & arg_0.x, 23u)]), var_0.a), global4[_wgslsmith_index_u32(89132u, 23u)], var_0.a));
    let var_2 = Struct_2(Struct_1(var_1.b.a, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(368f, 762f))), var_0.a.b)), !var_1.b.a.x));
    let var_3 = _wgslsmith_f_op_f32(-arg_1);
    global1 = array<vec2<u32>, 11>();
    return var_2.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> vec2<f32> {
    let var_0 = func_2(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(27690u, 15u)], countOneBits(36089u), global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(33365u, 15u)]), ~(vec4<u32>(28552u, global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 15u)], 15u)], 67896u) << (vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 15u)], 15u)], 15u)], 15u)], 9602u, global0[_wgslsmith_index_u32(4294967295u, 15u)], 32509u) % vec4<u32>(32u)))), countOneBits(~(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3967u, 15u)], 15u)], 15u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(55048u, 15u)], 15u)], 15u)], 4294967295u, global0[_wgslsmith_index_u32(21113u, 15u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-741f))), -vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 11154i, u_input.a.x, arg_3), vec4<i32>(arg_3, arg_3, -2147483647i, -1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, 1i, 1i), vec4<i32>(u_input.a.x, u_input.a.x, -1i, 2147483647i)) ^ -19277i, 1i)).a.zy;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-218f + arg_2) - -1000f);
    let var_2 = Struct_5(arg_0.b.x, func_2(~vec4<u32>(_wgslsmith_mult_u32(20072u, 0u), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31931u, 15u)], 15u)], 15u)]), ~4294967295u, 12691u), arg_0.b.x, firstTrailingBit(~abs(u_input.a))), arg_0.a.yy, arg_1.b.x, Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 15u)], 28u)]))), _wgslsmith_div_i32(_wgslsmith_mod_i32(67624i, -55555i), i32(-1i) * -24684i), vec3<u32>(49237u, global0[_wgslsmith_index_u32(7746u, 15u)] & global0[_wgslsmith_index_u32(40205u, 15u)], _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 15u)], 15u)], 15u)], 49381u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 15u)], 15u)], 15u)], 23u)]))), func_2(vec4<u32>(global0[_wgslsmith_index_u32(15473u, 15u)], global0[_wgslsmith_index_u32(25323u, 15u)], 49161u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 15u)], 15u)], 15u)], 15u)], 15u)]), _wgslsmith_f_op_f32(-arg_0.b.x), vec3<i32>(0i, u_input.a.x, u_input.a.x) ^ vec3<i32>(u_input.a.x, -14742i, arg_3))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global4[_wgslsmith_index_u32(4294967295u, 23u)])))), func_2(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 15u)], 15u)], 15u)], global0[_wgslsmith_index_u32(71885u, 15u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 15u)], 15u)], 15u)], 15u)], 15u)], 15u)], 15u)]), -1613f, ~u_input.a)));
    var var_3 = vec3<u32>(43661u, var_2.e.a.c.x, ~1u);
    global4 = array<vec3<f32>, 23>();
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(853f, vec2<f32>(_wgslsmith_f_op_f32(func_1(vec2<u32>(4294967295u, 20934u))), 253f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-817f, _wgslsmith_f_op_f32(ceil(1702f))) - -1011f), u_input.a.zz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-712f, -120f), vec2<f32>(-746f, -1000f), vec2<bool>(true, true))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(816f, -851f) - vec2<f32>(309f, 256f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(Struct_1(vec4<bool>(false, true, true, true), vec2<f32>(-951f, 143f), false), func_2(vec4<u32>(global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 15u)], 15u)], global0[_wgslsmith_index_u32(703u, 15u)], 1u), 131f, u_input.a), _wgslsmith_f_op_f32(311f - -1570f), u_input.a.x)))));
}

