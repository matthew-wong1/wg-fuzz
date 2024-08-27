struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: f32,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, vec2<bool>(false, true), 873f, -607f, 43702u);

var<private> global1: u32;

var<private> global2: vec3<bool> = vec3<bool>(true, true, true);

var<private> global3: array<vec3<u32>, 25>;

var<private> global4: array<bool, 24>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: i32) -> vec2<bool> {
    let var_0 = select(~(~firstLeadingBit(vec2<u32>(arg_0.e, 0u) ^ vec2<u32>(39517u, 4294967295u))), vec2<u32>(~105060u, select(arg_0.e, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(global0.e, 749u), 1u, 1u), select(u_input.b.x < arg_2, !global0.b.x, true))), select(global2.xz, vec2<bool>(true, select(true, false, !arg_0.b.x)), vec2<bool>(!global0.b.x & false, true)));
    var var_1 = ~_wgslsmith_div_i32(u_input.c, 75733i);
    var var_2 = true;
    var var_3 = reverseBits(u_input.b.x);
    global1 = arg_1;
    return vec2<bool>(!global4[_wgslsmith_index_u32(reverseBits(~_wgslsmith_add_u32(1u, arg_1)), 24u)], any(vec3<bool>(all(vec2<bool>(false, true)), any(!global0.b), !(u_input.b.x > u_input.c))));
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = arg_0;
    let var_1 = arg_0;
    var var_2 = !vec3<bool>(!any(global0.b), global4[_wgslsmith_index_u32(1u, 24u)], var_1.b.x);
    var_0 = Struct_1(u_input.a.x > ~95341u, func_3(arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.e, 0u, u_input.a.x, var_1.e) << ((u_input.a << (vec4<u32>(4294967295u, u_input.e, var_1.e, 54659u) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(u_input.a, u_input.a), vec4<u32>(16885u, 31047u, 45740u, var_1.e))), 58293i), _wgslsmith_f_op_f32(152f + _wgslsmith_f_op_f32(-250f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.d), global0.c)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(820f, var_1.d)))), _wgslsmith_sub_u32(countOneBits(32593u), ~_wgslsmith_dot_vec3_u32(max(vec3<u32>(var_0.e, 2891u, var_0.e), vec3<u32>(global0.e, arg_0.e, 4294967295u)), vec3<u32>(4294967295u, 4294967295u, 1u) >> (global3[_wgslsmith_index_u32(4294967295u, 25u)] % vec3<u32>(32u)))));
    var var_3 = -firstLeadingBit(-reverseBits(-39139i));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2087f), _wgslsmith_f_op_f32(round(1000f))) * global0.c) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1180f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_0.c, 716f)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -907f)));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = Struct_1(true || arg_1.b.x, !(!(!(!global0.b))), _wgslsmith_f_op_f32(func_2(arg_1)), 684f, ~max(1u, arg_0));
    var var_1 = vec4<u32>(~0u, firstLeadingBit(~u_input.a.x), u_input.a.x, 0u);
    var var_2 = arg_1;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(f32(-1f) * -669f), _wgslsmith_f_op_f32(select(1360f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global0.c, arg_1.c, arg_1.a)), _wgslsmith_div_f32(var_2.d, -1742f)))), any(vec4<bool>(!var_2.b.x, any(vec4<bool>(false, var_2.a, true, false)), true, global2.x & global0.b.x)))));
    var var_4 = u_input.b.x;
    return vec4<bool>(true | arg_1.b.x, any(vec3<bool>(select(all(vec4<bool>(global0.a, false, global0.a, false)), true, true), !global2.x, true)), var_0.b.x, any(!select(!vec4<bool>(false, false, global2.x, false), vec4<bool>(global2.x, global2.x, true, global2.x), select(vec4<bool>(global0.a, var_0.a, global0.a, true), vec4<bool>(global2.x, false, var_2.a, global4[_wgslsmith_index_u32(arg_1.e, 24u)]), global2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    let var_1 = max(u_input.c & _wgslsmith_mod_i32(max(_wgslsmith_add_i32(u_input.b.x, -2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(-100680i, u_input.c, u_input.d), u_input.b)), -10647i), u_input.b.x << (~22056u % 32u));
    let var_2 = select(select(!(!select(vec4<bool>(global0.b.x, global2.x, global2.x, false), vec4<bool>(true, true, false, false), false)), !(!func_1(14253u, Struct_1(global0.b.x, vec2<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 24u)], true), global0.c, 506f, u_input.a.x))), any(select(!vec4<bool>(global4[_wgslsmith_index_u32(global0.e, 24u)], false, false, true), select(vec4<bool>(false, global4[_wgslsmith_index_u32(10527u, 24u)], global4[_wgslsmith_index_u32(u_input.e, 24u)], true), vec4<bool>(true, false, global4[_wgslsmith_index_u32(45127u, 24u)], global2.x), global0.a), global0.b.x))), !func_1(1u, Struct_1(global2.x, !global0.b, _wgslsmith_div_f32(1000f, 390f), _wgslsmith_f_op_f32(global0.c * -1176f), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(0u, 1u, 2049u, 27909u)))), global4[_wgslsmith_index_u32(12018u, 24u)]);
    let var_3 = Struct_1(global0.b.x, vec2<bool>(global2.x, global4[_wgslsmith_index_u32(global0.e, 24u)]), global0.d, -377f, _wgslsmith_mult_u32(~_wgslsmith_sub_u32(4294967295u, global0.e), abs(global0.e)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2042f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.d - var_3.c) - 1000f)) * global0.d), min(vec4<u32>(global0.e, global0.e, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), u_input.a.zw), ~u_input.a.x), reverseBits(abs(u_input.e))), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(55584u, var_3.e, u_input.e, global0.e), reverseBits(u_input.a)), vec4<u32>(_wgslsmith_dot_vec3_u32(global3[_wgslsmith_index_u32(global0.e, 25u)], vec3<u32>(var_3.e, 18094u, 48488u)), firstTrailingBit(1u), var_3.e, ~global0.e))));
}

