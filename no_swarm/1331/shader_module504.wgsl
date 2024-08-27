struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10> = array<f32, 10>(931f, 650f, 215f, 467f, -329f, -1000f, -1170f, 1000f, 1075f, 298f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(168f, global0[_wgslsmith_index_u32(u_input.c.x, 10u)])))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, u_input.c.x), 10u)]))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-295f, global0[_wgslsmith_index_u32(56374u, 10u)]), vec2<f32>(1067f, -987f))))))));
    let var_1 = Struct_2(select(_wgslsmith_sub_vec2_i32(abs(vec2<i32>(u_input.e.x, u_input.b.x)), _wgslsmith_div_vec2_i32(~vec2<i32>(u_input.b.x, -49422i), vec2<i32>(u_input.b.x, -47651i))), firstTrailingBit(vec2<i32>(u_input.e.x, -u_input.b.x)), vec2<bool>(true || (-2045f == var_0.x), any(vec3<bool>(true, false, true)))), Struct_1(u_input.e.x, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(503f, global0[_wgslsmith_index_u32(u_input.d.x, 10u)], 353f), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, -118f), vec3<f32>(1198f, var_0.x, -2097f))))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(abs(1378f)), 1f, _wgslsmith_f_op_f32(-var_0.x)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], -1419f)), var_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(224f, global0[_wgslsmith_index_u32(u_input.d.x, 10u)])))), -559f), any(vec2<bool>(any(vec4<bool>(true, false, true, true)), true))), any(vec4<bool>(!(4294967295u < u_input.c.x), all(vec3<bool>(true, true, true)), global0[_wgslsmith_index_u32(u_input.a.x, 10u)] < global0[_wgslsmith_index_u32(~4294967295u, 10u)], true)));
    let var_2 = all(!select(select(vec2<bool>(var_1.c, true), vec2<bool>(var_1.c, var_1.b.e), vec2<bool>(var_1.b.e, var_1.b.e)), select(!vec2<bool>(false, var_1.b.e), select(vec2<bool>(false, true), vec2<bool>(var_1.b.e, false), false), !var_1.b.e), vec2<bool>(false, true)));
    let var_3 = Struct_2(abs(vec2<i32>(i32(-1i) * -var_1.b.a, -3712i)), Struct_1(var_1.a.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-244f, 508f, var_0.x)) - vec3<f32>(-296f, var_1.b.d.x, var_1.b.c.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-164f, 2057f, var_0.x), var_1.b.c)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b.c)), _wgslsmith_f_op_vec4_f32(trunc(var_1.b.d)), all(vec2<bool>(any(vec2<bool>(var_2, var_1.c)), all(vec4<bool>(var_1.c, false, false, var_2))))), false & (var_0.x >= _wgslsmith_f_op_f32(-1465f + -327f)));
    let var_4 = 2147483647i;
    return u_input.e.x;
}

fn func_2() -> Struct_1 {
    global0 = array<f32, 10>();
    global0 = array<f32, 10>();
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.d.x), u_input.d.yx)), 10u)] + 1000f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-789f)) - -372f))), _wgslsmith_f_op_f32(f32(-1f) * -124f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -761f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], -233f, -884f, global0[_wgslsmith_index_u32(u_input.d.x, 10u)])), vec4<f32>(-237f, global0[_wgslsmith_index_u32(u_input.c.x, 10u)], global0[_wgslsmith_index_u32(u_input.a.x, 10u)], 682f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 10u)], -1247f, global0[_wgslsmith_index_u32(u_input.a.x, 10u)], -602f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 10u)], 252f, 803f, 389f))) - _wgslsmith_div_vec4_f32(vec4<f32>(838f, global0[_wgslsmith_index_u32(u_input.a.x, 10u)], global0[_wgslsmith_index_u32(46798u, 10u)], global0[_wgslsmith_index_u32(21108u, 10u)]), vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 10u)], -1789f, -770f, global0[_wgslsmith_index_u32(4294967295u, 10u)])))));
    var var_1 = u_input.c.x;
    var var_2 = _wgslsmith_mult_vec2_u32(firstTrailingBit(u_input.c), _wgslsmith_div_vec2_u32(u_input.c, _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a.x, u_input.a.x), u_input.d.zw)));
    return Struct_1(min(func_3(), -1i), var_0.yzz, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(1u, 10u)], 1257f, -119f) - vec3<f32>(-1340f, -1000f, 186f)), _wgslsmith_f_op_vec3_f32(-var_0.wyw)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_0.yxy * var_0.xww))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(round(-2782f)), var_0.x)), !vec3<bool>(-1166f != var_0.x, true, true))), vec4<f32>(_wgslsmith_f_op_f32(ceil(-720f)), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.c.x, 10u)])), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(184f * global0[_wgslsmith_index_u32(var_2.x, 10u)])))), true);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    let var_0 = 429f;
    global0 = array<f32, 10>();
    let var_1 = arg_0.a;
    var var_2 = any(!vec4<bool>(arg_1.e, false, all(vec4<bool>(true, true, true, true)), arg_0.c));
    let var_3 = _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(~u_input.c, vec2<u32>(u_input.a.x, u_input.d.x)), firstLeadingBit(u_input.d.xz)), vec2<u32>(min(firstLeadingBit(42765u), u_input.c.x), ~(4294967295u & u_input.a.x))) << (u_input.d.xx % vec2<u32>(32u));
    return 1u << (abs(firstLeadingBit(89772u)) % 32u);
}

fn func_5(arg_0: vec4<u32>) -> Struct_1 {
    global0 = array<f32, 10>();
    let var_0 = arg_0.xzx;
    var var_1 = func_2();
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.b.x)) * -1290f) - 1321f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, global0[_wgslsmith_index_u32(4294967295u, 10u)]))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-496f)), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-500f - global0[_wgslsmith_index_u32(u_input.c.x, 10u)])), !(var_1.e & true))) * -447f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_1.d.x))))), var_1.b.x)), global0[_wgslsmith_index_u32(arg_0.x, 10u)]);
    let var_3 = _wgslsmith_f_op_vec4_f32(var_1.d * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.d.x, -1377f, var_2.x, _wgslsmith_div_f32(-1229f, global0[_wgslsmith_index_u32(var_0.x, 10u)])))));
    return func_2();
}

fn func_1() -> vec3<u32> {
    var var_0 = Struct_1(-36778i, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, 176f, global0[_wgslsmith_index_u32(u_input.c.x, 10u)]), vec3<f32>(global0[_wgslsmith_index_u32(28169u, 10u)], -909f, 255f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-710f, 452f, -566f) - vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(26998u, 10u)], -1000f)) + vec3<f32>(global0[_wgslsmith_index_u32(5014u, 10u)], 201f, 282f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(355f, global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(60572u, 10u)]) + vec3<f32>(-407f, global0[_wgslsmith_index_u32(49049u, 10u)], -1000f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, global0[_wgslsmith_index_u32(4294967295u, 10u)], 1000f), vec3<f32>(global0[_wgslsmith_index_u32(113529u, 10u)], -210f, global0[_wgslsmith_index_u32(u_input.d.x, 10u)])), all(vec2<bool>(false, true)))), vec3<f32>(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.d.x, 10u)], -382f)), _wgslsmith_f_op_f32(sign(593f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 10u)]))), vec3<bool>(any(vec3<bool>(false, true, true)), true, true))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(~49037u, 10u)]))), global0[_wgslsmith_index_u32(~22059u, 10u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1777f + -1365f)))), global0[_wgslsmith_index_u32(reverseBits(countOneBits(1u)), 10u)]), true);
    global0 = array<f32, 10>();
    var_0 = func_5(vec4<u32>(_wgslsmith_mult_u32(abs(max(4294967295u, u_input.a.x)), _wgslsmith_sub_u32(~u_input.d.x, u_input.c.x)), func_4(Struct_2(vec2<i32>(-2147483647i, 1i), func_2(), true), func_2()), u_input.c.x, ~4294967295u >> (1u % 32u)));
    let var_1 = var_0.d.x;
    let var_2 = ~_wgslsmith_clamp_u32(firstLeadingBit(1u), ~(~(~21305u)), ~_wgslsmith_mod_u32(1u, u_input.c.x));
    return ~(~select(_wgslsmith_clamp_vec3_u32(u_input.d.xxz, u_input.d.yzz, firstTrailingBit(vec3<u32>(4294967295u, u_input.a.x, var_2))), u_input.a, vec3<bool>(var_0.e, any(vec3<bool>(var_0.e, var_0.e, true)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(min(47980u, u_input.c.x), ~u_input.a.x), u_input.c.x, 1u), ~(~func_1())), _wgslsmith_add_vec3_u32(~(u_input.a ^ select(u_input.a, u_input.a, vec3<bool>(false, false, true))), vec3<u32>(~(~u_input.c.x), u_input.a.x, max(u_input.c.x << (u_input.a.x % 32u), ~u_input.c.x))));
    let var_1 = Struct_2(~(-u_input.e.xx), func_5(_wgslsmith_add_vec4_u32(reverseBits(u_input.d), firstLeadingBit(firstTrailingBit(u_input.d)))), true);
    var var_2 = var_1;
    var_2 = Struct_2(vec2<i32>(abs(_wgslsmith_mod_i32(~(-2147483647i), u_input.e.x)), ~(2147483647i << (select(13947u, 2077u, false) % 32u))), var_2.b, any(select(!(!vec2<bool>(var_2.b.e, var_2.b.e)), vec2<bool>(all(vec4<bool>(var_1.c, var_2.b.e, false, var_2.c)), select(false, var_1.c, var_2.c)), vec2<bool>(true, true))));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_1.b.c.zx + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-873f, var_2.b.d.x))))), func_2().b.xz, !var_2.b.e)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 10u)], var_2.b.b.x))), vec2<f32>(_wgslsmith_f_op_f32(-var_1.b.c.x), _wgslsmith_f_op_f32(round(-318f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1237f - var_1.b.b.x), _wgslsmith_f_op_f32(step(var_1.b.c.x, 1532f))))));
    let var_4 = Struct_1(_wgslsmith_div_i32(-func_5(vec4<u32>(48109u, u_input.c.x, 0u, 1u)).a, u_input.e.x), _wgslsmith_f_op_vec3_f32(-func_2().b), var_2.b.d.yxx, var_2.b.d, !var_1.b.e);
    var_2 = Struct_2(select(firstTrailingBit(u_input.b), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_4.a, 1i), vec2<i32>(var_1.b.a, -1i)) << ((4294967295u & u_input.c.x) % 32u), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_4.a, var_2.a.x), u_input.b), 1i)), vec2<bool>(201f <= _wgslsmith_div_f32(var_1.b.c.x, 1188f), all(vec4<bool>(false, true, var_4.e, false)))), func_2(), !var_1.b.e);
    var var_5 = Struct_2(vec2<i32>(countOneBits(~_wgslsmith_clamp_i32(37146i, 82237i, var_4.a)), -_wgslsmith_sub_i32(select(-2147483647i, var_1.a.x, var_4.e), var_4.a)), var_2.b, var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(56255u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-590f - var_3.x) + var_1.b.c.x)));
}

