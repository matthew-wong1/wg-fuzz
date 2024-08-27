struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec4<f32>;

var<private> global2: array<f32, 5> = array<f32, 5>(1139f, 924f, 1399f, 332f, -364f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> bool {
    global2 = array<f32, 5>();
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-917f, -365f, global1.x, global2[_wgslsmith_index_u32(1u, 5u)]), vec4<f32>(global1.x, 405f, 723f, global1.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 5u)], 618f, global2[_wgslsmith_index_u32(u_input.c, 5u)], -158f))), _wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(u_input.d, 5u)], global2[_wgslsmith_index_u32(30226u, 5u)], -156f, global1.x), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.x, -282f, -261f, -982f)))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(u_input.d, 5u)], 545f, 996f, 1393f) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-546f, global1.x, global2[_wgslsmith_index_u32(9073u, 5u)], 291f))))), vec4<f32>(_wgslsmith_f_op_f32(min(global1.x, _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(u_input.c, 5u)])))), -1061f, 1127f, _wgslsmith_f_op_f32(abs(-599f)))));
    let var_0 = Struct_2(vec3<bool>(any(global0.yyx), global0.x & global0.x, global0.x && ((-11973i != u_input.b.x) && all(vec2<bool>(false, global0.x)))));
    var var_1 = Struct_1(u_input.a.x, all(select(!(!vec3<bool>(true, false, global0.x)), global0.wwx, !(var_0.a.x && true))), var_0.a.x, min(max(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, -53883i, u_input.b.x, 0i), vec4<i32>(-27096i, -25617i, u_input.b.x, 2147483647i))), ~(~vec4<i32>(-16534i, u_input.b.x, -58235i, u_input.b.x))) & firstTrailingBit(~(vec4<i32>(14599i, u_input.b.x, u_input.b.x, 9293i) >> (u_input.a % vec4<u32>(32u)))));
    global2 = array<f32, 5>();
    return all(var_0.a.yz);
}

fn func_2(arg_0: vec4<u32>, arg_1: i32) -> vec3<i32> {
    let var_0 = Struct_2(select(select(global0.xzy, global0.wzx, u_input.a.x > 0u), select(select(global0.yxw, vec3<bool>(false, global0.x, global0.x), global0.xzz), select(vec3<bool>(true, global0.x, false), !global0.yyy, false), global0.x), global0.xyx));
    let var_1 = -164f;
    global0 = vec4<bool>(true, !global0.x, var_0.a.x, var_0.a.x);
    global2 = array<f32, 5>();
    global0 = vec4<bool>(true, !(!global0.x), var_0.a.x, func_3());
    return -abs(~abs(firstLeadingBit(vec3<i32>(u_input.b.x, arg_1, 1i))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<i32>) -> i32 {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-686f, global1.x, -197f, arg_0.x))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.x, 996f, 132f, global1.x), vec4<f32>(arg_0.x, global1.x, global1.x, 606f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-992f, _wgslsmith_f_op_f32(-552f * 208f), _wgslsmith_f_op_f32(-366f - 1032f), arg_0.x))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0.x - 849f), global1.x, _wgslsmith_f_op_f32(ceil(940f)), _wgslsmith_f_op_f32(-819f + global2[_wgslsmith_index_u32(u_input.d, 5u)])) - vec4<f32>(-1713f, -2180f, -322f, _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(u_input.a.x, 5u)], arg_0.x)))))));
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-292f, 1594f) - global1.ww);
    global0 = vec4<bool>(_wgslsmith_f_op_f32(abs(global1.x)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x), 5u)])), true, all(!(!vec3<bool>(false, false, global0.x))), global0.x);
    var var_1 = Struct_1(_wgslsmith_add_u32(_wgslsmith_mod_u32(~u_input.d, _wgslsmith_mult_u32(u_input.a.x, ~u_input.a.x)), _wgslsmith_add_u32(~max(1u, 6971u), ~(~u_input.c))), !global0.x, !global0.x, abs(vec4<i32>(~(-arg_1.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -11215i, -1i, 1i), vec4<i32>(u_input.b.x, arg_1.x, u_input.b.x, 29764i)), arg_1.x, u_input.b.x)));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, -119f)), _wgslsmith_f_op_f32(select(961f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_1.a, 5u)] - global2[_wgslsmith_index_u32(var_1.a, 5u)]), var_1.c)), _wgslsmith_f_op_f32(round(-527f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(874f * arg_0.x) - -1652f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, 220f, arg_0.x, -743f))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(459f, arg_0.x, global2[_wgslsmith_index_u32(4294967295u, 5u)], arg_0.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(634f, arg_0.x, -937f, 357f))))));
    return 2147483647i;
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> vec2<i32> {
    global2 = array<f32, 5>();
    let var_0 = global1.wx;
    var var_1 = func_4(global1.wy, -select(max(func_2(vec4<u32>(1u, u_input.a.x, arg_0.a, 15839u), -1i), ~arg_0.d.xwx), arg_0.d.wzx, global0.www));
    var var_2 = vec3<f32>(168f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + -221f)))), _wgslsmith_f_op_f32(abs(var_0.x)));
    global0 = !select(vec4<bool>(arg_0.b && all(vec3<bool>(true, false, global0.x)), ~22602i >= firstLeadingBit(u_input.b.x), false, true), select(select(!vec4<bool>(arg_0.b, true, global0.x, false), vec4<bool>(arg_0.c, global0.x, global0.x, arg_0.c), false), vec4<bool>(arg_0.c & arg_0.b, select(false, false, global0.x), true || global0.x, global0.x), vec4<bool>(true, true, true, false)), !vec4<bool>(true & arg_0.b, all(vec2<bool>(arg_0.c, true)), global2[_wgslsmith_index_u32(arg_0.a, 5u)] <= -886f, true));
    return ~(-(u_input.b & firstTrailingBit(countOneBits(arg_0.d.yw))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(~2810u, _wgslsmith_add_u32(0u, 0u), u_input.a.x), u_input.a.zwx & vec3<u32>(47442u, u_input.d, 56777u)), !global0.x, !global0.x, countOneBits(-vec4<i32>(-29783i, u_input.b.x, -29178i, 2147483647i))), -_wgslsmith_sub_i32(u_input.b.x, -2147483647i));
    var var_1 = Struct_1(19445u, global0.x, false, vec4<i32>(7696i, _wgslsmith_clamp_i32(2147483647i, -22758i, _wgslsmith_div_i32(var_0.x >> (u_input.c % 32u), _wgslsmith_mod_i32(u_input.b.x, var_0.x))), -17890i, ~var_0.x));
    let var_2 = u_input.a.zxx;
    let var_3 = _wgslsmith_f_op_f32(-259f * 722f);
    var_1 = Struct_1(~min(0u, _wgslsmith_add_u32(1u, 1u)), true, !(global0.x != !global0.x), var_1.d << (u_input.a % vec4<u32>(32u)));
    var var_4 = all(select(select(select(select(global0.yyx, vec3<bool>(global0.x, var_1.c, global0.x), true), global0.wzw, true), !global0.xwx, global0.zxw), global0.xyx, var_1.c));
    let var_5 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-994f, global2[_wgslsmith_index_u32(u_input.c, 5u)], var_3), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, global2[_wgslsmith_index_u32(1u, 5u)], global2[_wgslsmith_index_u32(4294967295u, 5u)]), vec3<f32>(808f, global1.x, global2[_wgslsmith_index_u32(10104u, 5u)])))) - vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-170f - 1369f), 536f)), _wgslsmith_f_op_f32(-1346f - _wgslsmith_f_op_f32(986f - global1.x)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_2.x, 22101u), 5u)] * _wgslsmith_f_op_f32(exp2(global1.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.yww) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1231f, -734f, -669f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, var_3)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3, global2[_wgslsmith_index_u32(var_1.a, 5u)], -1009f) * global1.xyy), vec3<f32>(global1.x, global1.x, global2[_wgslsmith_index_u32(35065u, 5u)])), global1.zww, select(!global0.xwz, select(global0.wxw, global0.zzy, global0.zzx), global0.yzy)))), select(!select(!global0.xxy, global0.wwx, !vec3<bool>(global0.x, global0.x, false)), vec3<bool>(!(!global0.x), true, var_1.c), vec3<bool>(all(vec2<bool>(true, true)), !global0.x, global0.x))));
    let var_6 = vec4<bool>(!(!any(!global0.ww)), var_1.c, !any(!(!global0.ww)), false);
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.x, vec3<i32>((1i >> (~var_1.a % 32u)) & -1i, reverseBits(u_input.b.x), -func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(1032f, global2[_wgslsmith_index_u32(var_2.x, 5u)]) + var_5.yy), var_1.d.wyx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.xy) + _wgslsmith_f_op_vec2_f32(vec2<f32>(864f, -392f) + global1.yw)))));
}

