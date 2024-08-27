struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: bool,
    d: bool,
    e: bool,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: vec3<u32>;

var<private> global1: array<i32, 15> = array<i32, 15>(2147483647i, -26612i, 1i, -1i, -2589i, i32(-2147483648), -16740i, -4043i, 1i, -31286i, -1i, 65884i, -1i, -33496i, i32(-2147483648));

var<private> global2: u32 = 3993u;

var<private> global3: array<Struct_4, 1>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: bool) -> i32 {
    global3 = array<Struct_4, 1>();
    let var_0 = arg_0.yw;
    var var_1 = true;
    let var_2 = vec4<bool>(true, !(global1[_wgslsmith_index_u32(global0.x, 15u)] >= -14535i), true, select(arg_2, all(select(arg_0.wzx, arg_0.yzz, arg_1)) | false, true));
    global3 = array<Struct_4, 1>();
    return 2147483647i;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<bool>) -> Struct_2 {
    var var_0 = Struct_2(arg_0.x);
    let var_1 = select(_wgslsmith_mod_vec2_i32(firstTrailingBit(_wgslsmith_clamp_vec2_i32(max(vec2<i32>(72301i, global1[_wgslsmith_index_u32(1u, 15u)]), vec2<i32>(12181i, global1[_wgslsmith_index_u32(0u, 15u)])), vec2<i32>(global1[_wgslsmith_index_u32(var_0.a, 15u)], global1[_wgslsmith_index_u32(var_0.a, 15u)]), max(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 15u)], global1[_wgslsmith_index_u32(4294967295u, 15u)]), vec2<i32>(1i, global1[_wgslsmith_index_u32(4294967295u, 15u)])))), reverseBits(vec2<i32>(-31247i, global1[_wgslsmith_index_u32(~28889u, 15u)]))), -vec2<i32>(-2147483647i, _wgslsmith_clamp_i32(func_3(vec4<bool>(true, arg_1.x, arg_1.x, true), arg_1.x, true), global1[_wgslsmith_index_u32(global0.x << (arg_0.x % 32u), 15u)], ~(-19863i))), all(vec4<bool>(any(!arg_1), false, true, true)));
    let var_2 = true;
    var var_3 = !select(select(vec4<bool>(select(arg_1.x, var_2, arg_1.x), true, var_2, true), select(select(vec4<bool>(true, arg_1.x, false, var_2), vec4<bool>(false, arg_1.x, false, false), true), select(vec4<bool>(false, arg_1.x, var_2, true), vec4<bool>(true, var_2, true, false), vec4<bool>(var_2, var_2, true, arg_1.x)), !vec4<bool>(false, false, var_2, true)), !(arg_1.x & var_2)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, var_2, true, false), !arg_1.x), arg_1.x);
    let var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -179f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-449f + -806f), _wgslsmith_f_op_f32(sign(174f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1915f, 922f))))))));
    return Struct_2(_wgslsmith_div_u32(~u_input.a, _wgslsmith_sub_u32(_wgslsmith_mult_u32(global0.x, var_0.a), ~global0.x) & ((global0.x ^ var_0.a) | ~1996u)));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec3<i32>) -> vec3<u32> {
    var var_0 = vec2<u32>(1u, select(~(~8582u), 4964u, arg_1));
    global2 = ~(~abs(u_input.a | var_0.x));
    global2 = arg_0.a;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + 1000f));
    var_0 = reverseBits(abs(vec2<u32>(global0.x, 17609u)));
    return countOneBits(abs(_wgslsmith_clamp_vec3_u32(~vec3<u32>(24358u, 18537u, 85106u) & vec3<u32>(7573u, 4294967295u, global0.x), _wgslsmith_sub_vec3_u32(vec3<u32>(12213u, var_0.x, arg_0.a), vec3<u32>(24333u, 1u, 1u) | vec3<u32>(1u, 85014u, arg_0.a)), vec3<u32>(global0.x, 0u & var_0.x, ~global0.x))));
}

fn func_5(arg_0: u32, arg_1: vec3<u32>, arg_2: vec2<bool>, arg_3: Struct_2) -> vec3<u32> {
    var var_0 = Struct_4(global1[_wgslsmith_index_u32(4294967295u, 15u)], !(_wgslsmith_clamp_u32(45329u, _wgslsmith_dot_vec4_u32(vec4<u32>(7840u, 4294967295u, arg_1.x, 28460u), vec4<u32>(global0.x, global0.x, 4294967295u, 50326u)), arg_1.x) > ~_wgslsmith_div_u32(arg_1.x, arg_3.a)), firstLeadingBit(vec3<i32>(_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(arg_1.x, 15u)], global1[_wgslsmith_index_u32(arg_0, 15u)]) ^ _wgslsmith_sub_i32(0i, global1[_wgslsmith_index_u32(arg_1.x, 15u)]), -global1[_wgslsmith_index_u32(1u, 15u)] ^ ~global1[_wgslsmith_index_u32(u_input.a, 15u)], -91599i)));
    var_0 = global3[_wgslsmith_index_u32(arg_3.a, 1u)];
    global0 = vec3<u32>(1u, _wgslsmith_div_u32(~arg_1.x, arg_3.a), _wgslsmith_dot_vec4_u32(vec4<u32>(~(u_input.a | global0.x), 31996u, func_2(_wgslsmith_add_vec4_u32(vec4<u32>(arg_3.a, 27349u, 59912u, 1u), vec4<u32>(arg_0, global0.x, 1u, global0.x)), vec2<bool>(false, var_0.b)).a, u_input.a << (func_2(vec4<u32>(4294967295u, 0u, arg_1.x, 1u), vec2<bool>(true, true)).a % 32u)), vec4<u32>(1u, ~arg_1.x, _wgslsmith_div_u32(~global0.x, 19369u), 38352u)));
    global0 = select(vec3<u32>(~(~global0.x), 75977u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 35855u), ~arg_1.yx)) | arg_1, ~(~(vec3<u32>(u_input.a, global0.x, 16766u) << (max(arg_1, vec3<u32>(1u, arg_0, arg_3.a)) % vec3<u32>(32u)))), false);
    var var_1 = countOneBits(_wgslsmith_div_i32(0i, global1[_wgslsmith_index_u32(arg_1.x, 15u)] << (reverseBits(19502u) % 32u)));
    return firstLeadingBit(reverseBits(~select(~arg_1, arg_1, !var_0.b)));
}

fn func_1(arg_0: f32) -> f32 {
    var var_0 = true;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(f32(-1f) * -1035f)), _wgslsmith_f_op_f32(trunc(arg_0)), arg_0, -775f);
    var_0 = any(vec2<bool>(true, true));
    let var_2 = _wgslsmith_clamp_vec3_u32(vec3<u32>(~u_input.a, ~reverseBits(global0.x) << (u_input.a % 32u), 4294967295u), vec3<u32>(~(~(~34965u)), (select(global0.x, 0u, false) ^ (u_input.a & global0.x)) << (26393u % 32u), u_input.a), _wgslsmith_clamp_vec3_u32(reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(70425u, 1u, global0.x), vec3<u32>(global0.x, 12487u, global0.x), vec3<u32>(4294967295u, 14579u, 35430u))), vec3<u32>(~28507u, ~10615u, reverseBits(u_input.a)), max(~vec3<u32>(4294967295u, 43068u, 43829u), ~vec3<u32>(u_input.a, u_input.a, 1u))) << (func_5(reverseBits(_wgslsmith_sub_u32(global0.x, u_input.a)), func_4(func_2(vec4<u32>(1u, global0.x, global0.x, 0u), vec2<bool>(true, false)), true, _wgslsmith_mult_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 15u)], -1i, -82349i), vec3<i32>(-2147483647i, 2147483647i, 0i))), vec2<bool>(true, true), Struct_2(54768u)) % vec3<u32>(32u)));
    var var_3 = vec2<bool>(true, true);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = u_input.a;
    global3 = array<Struct_4, 1>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-350f)) - _wgslsmith_f_op_f32(f32(-1f) * -1145f)))), _wgslsmith_f_op_f32(floor(-880f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(1226f)) - -684f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -237f) - -1000f)))));
    var var_1 = var_0.yz;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-var_1.x))), -513f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-var_0.x)))), var_0.x));
    let var_3 = Struct_1(!select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true)), vec3<bool>(true, true, true)), func_5(6627u, ~_wgslsmith_clamp_vec3_u32(vec3<u32>(34106u, u_input.a, 3944u), ~vec3<u32>(12269u, 0u, 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 6506u, global0.x), vec3<u32>(u_input.a, u_input.a, 50754u))), vec2<bool>(!select(false, false, false), true), Struct_2(func_5(~37048u, select(vec3<u32>(global0.x, 14799u, global0.x), vec3<u32>(u_input.a, global0.x, global0.x), true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), func_2(vec4<u32>(24264u, 1u, 31562u, u_input.a), vec2<bool>(true, true))).x)).x);
    var var_4 = Struct_4(global1[_wgslsmith_index_u32(abs(~_wgslsmith_mod_u32(_wgslsmith_sub_u32(var_3.b, global0.x), ~global0.x)), 15u)], global1[_wgslsmith_index_u32(~u_input.a, 15u)] > 0i, ~(-vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(var_3.b, 15u)], 18850i, -6579i, global1[_wgslsmith_index_u32(0u, 15u)]), vec4<i32>(-1i, global1[_wgslsmith_index_u32(u_input.a, 15u)], global1[_wgslsmith_index_u32(var_3.b, 15u)], global1[_wgslsmith_index_u32(4925u, 15u)])), _wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(20612u, 15u)], global1[_wgslsmith_index_u32(global0.x, 15u)]), vec2<i32>(0i, 47122i)), -global1[_wgslsmith_index_u32(29886u, 15u)])));
    global0 = vec3<u32>(117692u, _wgslsmith_div_u32(~global0.x, ~29411u), var_3.b);
    global3 = array<Struct_4, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_add_i32(var_4.c.x, var_4.c.x), reverseBits(var_4.a)), ~(~var_4.c.yy)), reverseBits(vec2<i32>(-1i) * -var_4.c.yy)));
}

