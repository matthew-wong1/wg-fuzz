struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16> = array<bool, 16>(true, false, true, false, true, true, true, true, true, false, false, false, true, false, false, true);

var<private> global1: array<f32, 22> = array<f32, 22>(353f, 974f, 1245f, 108f, -2777f, 766f, -872f, 982f, -794f, 716f, 716f, -1256f, 841f, 570f, 866f, 230f, 100f, 1253f, 1529f, 1383f, 1491f, 276f);

var<private> global2: array<Struct_3, 1>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: vec2<f32>, arg_1: u32, arg_2: u32) -> u32 {
    return ~u_input.e;
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: f32, arg_3: vec4<u32>) -> vec4<i32> {
    global0 = array<bool, 16>();
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.e | arg_0.x, u_input.b), ~vec2<u32>(arg_1, arg_1)), ~(~min(vec2<u32>(arg_3.x, arg_3.x) & vec2<u32>(1u, arg_3.x), arg_0.yz << (vec2<u32>(1u, arg_1) % vec2<u32>(32u))))), 1u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-467f, -1429f, _wgslsmith_f_op_f32(step(1595f, 148f)), _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.x, -900f, var_0.b.x, -567f), vec4<f32>(-1378f, 896f, 1211f, -1000f))))))));
    global2 = array<Struct_3, 1>();
    let var_2 = vec4<u32>(19495u, _wgslsmith_mult_u32(arg_3.x ^ arg_1, 1u), 1u, ~(~arg_0.x | select(76907u, arg_3.x, true)) ^ arg_0.x);
    return _wgslsmith_add_vec4_i32(-abs(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(2147483647i, u_input.d)), -2147483647i, _wgslsmith_mod_i32(0i, u_input.c), 0i)), vec4<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(-69856i, var_0.c.x), vec2<i32>(2147483647i, 63430i)) & -12896i, _wgslsmith_sub_i32(~0i, u_input.a.x), _wgslsmith_dot_vec4_i32(~vec4<i32>(3292i, u_input.a.x, var_0.c.x, var_0.c.x), firstTrailingBit(vec4<i32>(-2147483647i, u_input.c, -1i, var_0.c.x))) & _wgslsmith_div_i32(~1i, 2147483647i), select(u_input.a.x & ~u_input.c, abs(1i), true)));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> bool {
    var var_0 = Struct_2(~_wgslsmith_dot_vec2_u32(arg_1.b.yx, firstTrailingBit(vec2<u32>(arg_1.b.x, 4294967295u)) << ((vec2<u32>(44365u, 47409u) | arg_1.b.xy) % vec2<u32>(32u))));
    let var_1 = Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(1u, 16u)], arg_1.a.x, false), min(arg_1.b, ~max(vec3<u32>(0u, 80429u, u_input.e), ~vec3<u32>(65263u, 2689u, 0u))), ~(~select(select(vec4<i32>(arg_0, arg_0, 7436i, 1i), arg_1.c, vec4<bool>(false, arg_1.a.x, arg_1.a.x, arg_1.a.x)), func_3(vec4<u32>(20775u, 3927u, u_input.e, arg_1.b.x), arg_2, global1[_wgslsmith_index_u32(u_input.b, 22u)], vec4<u32>(4294967295u, 93310u, 4182u, u_input.e)), arg_2 <= var_0.a)));
    return !(992f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(1u, 22u)])), _wgslsmith_f_op_f32(max(-1000f, -543f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_div_u32(func_1(vec2<f32>(-1262f, global1[_wgslsmith_index_u32(46657u, 22u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.e, u_input.e), vec4<u32>(u_input.e, u_input.b, u_input.e, u_input.e)), u_input.e ^ u_input.b), ~1u)), _wgslsmith_add_u32(70764u, ~_wgslsmith_sub_u32(u_input.e, 1u) & 64885u));
    let var_1 = Struct_1(select(select(vec3<bool>(!global0[_wgslsmith_index_u32(0u, 16u)], u_input.a.x >= 28214i, true), select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, true), vec3<bool>(global0[_wgslsmith_index_u32(var_0, 16u)], global0[_wgslsmith_index_u32(45637u, 16u)], global0[_wgslsmith_index_u32(var_0, 16u)]), false), vec3<bool>(false, global0[_wgslsmith_index_u32(var_0, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)])), true), select(select(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.e, 16u)], global0[_wgslsmith_index_u32(31401u, 16u)], global0[_wgslsmith_index_u32(53996u, 16u)]), select(vec3<bool>(true, true, global0[_wgslsmith_index_u32(0u, 16u)]), vec3<bool>(true, true, true), true), select(vec3<bool>(true, global0[_wgslsmith_index_u32(34013u, 16u)], global0[_wgslsmith_index_u32(var_0, 16u)]), vec3<bool>(global0[_wgslsmith_index_u32(4215u, 16u)], false, false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.e, 16u)], true, true))), !(!vec3<bool>(false, true, global0[_wgslsmith_index_u32(4294967295u, 16u)])), !global0[_wgslsmith_index_u32(min(var_0, 46733u), 16u)]), vec3<bool>(func_2(-u_input.d, Struct_1(vec3<bool>(true, global0[_wgslsmith_index_u32(76489u, 16u)], true), vec3<u32>(u_input.b, u_input.b, var_0), vec4<i32>(-30857i, u_input.c, u_input.d, 2147483647i)), var_0), false, false)), ~(vec3<u32>(10527u, 69262u, ~u_input.e) & select(vec3<u32>(21485u, u_input.b, u_input.b), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, var_0, var_0), vec3<u32>(u_input.e, 34399u, 4294967295u)), select(vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(28621u, 16u)]), vec3<bool>(global0[_wgslsmith_index_u32(40227u, 16u)], false, false), global0[_wgslsmith_index_u32(9696u, 16u)]))), abs(-vec4<i32>(1i, 1i, ~0i, 70979i | u_input.c)));
    let var_2 = var_1;
    var var_3 = !((~(26364u << (u_input.b % 32u)) ^ 1u) >= ~max(28518u, 4294967295u << (var_2.b.x % 32u)));
    var_3 = select(false, any(select(select(!var_1.a.xz, select(vec2<bool>(global0[_wgslsmith_index_u32(var_1.b.x, 16u)], var_2.a.x), var_2.a.zx, var_1.a.x), vec2<bool>(var_1.a.x, global0[_wgslsmith_index_u32(var_1.b.x, 16u)])), !var_1.a.yx, any(select(vec2<bool>(global0[_wgslsmith_index_u32(var_1.b.x, 16u)], var_1.a.x), var_2.a.xx, false)))), ((~(-9780i) | u_input.d) << (abs(var_0) % 32u)) > reverseBits(select(abs(11364i), firstLeadingBit(1i), any(vec3<bool>(true, true, true)))));
    var var_4 = select(!vec4<bool>(global0[_wgslsmith_index_u32(min(1u | var_1.b.x, 0u), 16u)], select(any(var_2.a.xx), true, true), var_2.a.x, !any(var_2.a.zz)), vec4<bool>(var_1.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 22u)] * global1[_wgslsmith_index_u32(u_input.e, 22u)]))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(var_1.b.x, 22u)]))), 1i != var_2.c.x, !(_wgslsmith_f_op_f32(1398f * global1[_wgslsmith_index_u32(0u, 22u)]) > 1699f)), !vec4<bool>(all(vec3<bool>(var_2.a.x, false, false)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0, 22u)] - global1[_wgslsmith_index_u32(44511u, 22u)]) < _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(91995u, 22u)])), select(any(vec2<bool>(false, global0[_wgslsmith_index_u32(41716u, 16u)])), true, global1[_wgslsmith_index_u32(1u, 22u)] < 1549f), any(!vec4<bool>(false, false, var_2.a.x, true))));
    var var_5 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(var_2.b.x), ~(~(~25465u)), countOneBits(max(~var_1.b.x >> (var_0 % 32u), 1u))), 1u)];
    let var_6 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1169f)) - global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1.b.x, ~u_input.b), 22u)]), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-687f + -371f), -1000f)), -378f, _wgslsmith_f_op_f32(-1248f * var_5.b.x))));
    global2 = array<Struct_3, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(-1370f)), 568f) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_6.xy)) + _wgslsmith_f_op_vec2_f32(exp2(var_6.wx))), var_5.b.zz)), -2108f);
}

