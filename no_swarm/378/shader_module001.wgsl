struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<bool, 10> = array<bool, 10>(false, true, true, false, true, true, false, true, false, false);

var<private> global2: f32 = -1000f;

var<private> global3: array<u32, 8>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec3<u32> {
    let var_0 = ~firstLeadingBit(abs(~1u)) == ~min(~max(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 8u)], 8u)], 8u)], 8u)], 8u)]), ~(32090u >> (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(26211u, 8u)], 8u)] % 32u)));
    global2 = 1464f;
    global2 = 1000f;
    let var_1 = vec4<bool>(all(select(select(vec2<bool>(var_0, true), select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, global0.x), global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(17319u, 8u)], 8u)], 10u)]), !global0.x), vec2<bool>(true, all(vec3<bool>(var_0, global0.x, global0.x))), !(!vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 10u)])))), global0.x, false, u_input.b <= ~u_input.b);
    let var_2 = Struct_1(~vec3<u32>(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~10066u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(11707u, 8u)], 8u)], 8u)]), 8u)], global3[_wgslsmith_index_u32(4294967295u, 8u)], ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(28016u, 8u)], 8u)], 8u)], 8u)] | max(39881u, global3[_wgslsmith_index_u32(6483u, 8u)])));
    return vec3<u32>(~_wgslsmith_clamp_u32(~(global3[_wgslsmith_index_u32(1u, 8u)] | global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_2.a.x, 8u)], 8u)]), select(global3[_wgslsmith_index_u32(33194u, 8u)], _wgslsmith_dot_vec2_u32(var_2.a.yy, vec2<u32>(0u, 1u)), var_0), 4294967295u), global3[_wgslsmith_index_u32(~(~0u), 8u)], ~_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(var_2.a.x << (~var_2.a.x % 32u), 8u)], ~var_2.a.x & _wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 8u)], var_2.a.x, var_2.a.x, 47164u), vec4<u32>(global3[_wgslsmith_index_u32(38215u, 8u)], 4294967295u, 4294967295u, 61269u))));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec3<bool>) -> vec2<bool> {
    var var_0 = (func_3() << (arg_1.a % vec3<u32>(32u))) ^ ~_wgslsmith_mult_vec3_u32(arg_1.a, arg_1.a);
    global3 = array<u32, 8>();
    var var_1 = 0u;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(206f, -1000f, 2306f, 651f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(924f, 316f, -467f, 1941f)), false || global0.x))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -241f)))), _wgslsmith_f_op_f32(f32(-1f) * -1105f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-316f)) + _wgslsmith_f_op_f32(-156f - -1141f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-787f - -1000f), _wgslsmith_f_op_f32(f32(-1f) * -702f), any(arg_2)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-406f, 610f) + 1437f)))));
    let var_3 = Struct_2(~_wgslsmith_add_u32(1u, 26083u));
    return select(arg_2.xx, !arg_2.xz, vec2<bool>(true, true));
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    global1 = array<bool, 10>();
    var var_0 = Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(14178u, 1u), _wgslsmith_sub_vec2_u32(select(vec2<u32>(8040u, global3[_wgslsmith_index_u32(1u, 8u)]) >> (vec2<u32>(7139u, 0u) % vec2<u32>(32u)), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 8u)], 8u)], 8u)], 8u)], 8u)], 8u)], 1u), arg_0.x), select(~vec2<u32>(4294967295u, 76969u), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 33800u), vec2<u32>(71439u, 4294967295u)), func_2(global0.x, Struct_1(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 8u)], 8u)], global3[_wgslsmith_index_u32(1u, 8u)], 4294967295u)), vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(71576u, 10u)]))))));
    let var_1 = Struct_2(reverseBits(countOneBits(4294967295u)));
    let var_2 = !arg_0.x;
    global0 = vec2<bool>(false, global1[_wgslsmith_index_u32(var_1.a, 10u)]);
    return Struct_2(~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(global3[_wgslsmith_index_u32(var_1.a, 8u)], 4294967295u, 53442u, 40479u)), vec4<u32>(abs(var_0.a), 0u, var_1.a, 4247u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 10>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-218f, _wgslsmith_f_op_f32(-762f + -674f), _wgslsmith_f_op_f32(f32(-1f) * -167f))))));
    let var_1 = func_1(vec2<bool>(true, true));
    var var_2 = var_0.yz;
    global0 = select(!select(vec2<bool>(false, !global1[_wgslsmith_index_u32(var_1.a, 10u)]), !(!vec2<bool>(true, global0.x)), !global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 1u), 10u)]), !(!(!vec2<bool>(true, global0.x))), vec2<bool>(true, !(~4294967295u > abs(var_1.a))));
    let var_3 = ~reverseBits(40582u);
    var var_4 = 3333u;
    let var_5 = !((firstTrailingBit(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(0u, 8u)], var_1.a)) != _wgslsmith_add_u32(~var_1.a, _wgslsmith_dot_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(31141u, 8u)], 8u)], 0u), vec2<u32>(var_1.a, 49351u)))) | global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(1u, ~(~var_1.a)), vec3<i32>(u_input.a, min(u_input.c.x, -23195i), -u_input.d.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, _wgslsmith_sub_i32(u_input.b, select(u_input.a, -1162i, global1[_wgslsmith_index_u32(1u, 10u)])), -u_input.c.x << (~75111u % 32u)), vec3<i32>(-14475i, ~u_input.c.x, -1i) | abs(u_input.d), u_input.d));
}

