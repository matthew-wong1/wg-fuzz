struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: f32,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<u32>(8467u, 0u), vec4<f32>(-2062f, 658f, 722f, 1558f), Struct_1(vec4<i32>(-3270i, 2147483647i, 1i, 0i), false, 1056f, -31363i, vec4<u32>(0u, 31297u, 1u, 123126u)), vec2<f32>(-376f, 1000f));

var<private> global1: array<Struct_2, 20>;

var<private> global2: f32 = 1278f;

var<private> global3: i32;

var<private> global4: array<bool, 8>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global0.b), _wgslsmith_f_op_vec4_f32(global0.b - global0.b), global0.c.b && true)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(global0.b)) * vec4<f32>(885f, global0.d.x, 878f, global0.d.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1166f, _wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(step(-279f, global0.c.c)), _wgslsmith_f_op_f32(sign(global0.b.x))) + vec4<f32>(1453f, _wgslsmith_f_op_f32(ceil(global0.d.x)), -645f, _wgslsmith_f_op_f32(-global0.b.x)))))));
    let var_1 = global0.c.a;
    var var_2 = _wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(15078u, ~min(30479u, u_input.a)), ~min(firstLeadingBit(global0.c.e.x), u_input.a & global0.a.x)), _wgslsmith_mod_u32(~_wgslsmith_add_u32(_wgslsmith_mod_u32(global0.c.e.x, 51371u), 4294967295u), _wgslsmith_div_u32(firstLeadingBit(4294967295u), global0.c.e.x ^ global0.a.x)));
    var var_3 = ~vec2<i32>(-_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-10137i, var_1.x), vec2<i32>(var_1.x, 31043i)), var_1.yx), 35978i);
    global3 = abs(~(var_1.x & _wgslsmith_dot_vec2_i32(vec2<i32>(global0.c.a.x, var_1.x) & vec2<i32>(-2147483647i, -2147483647i), global0.c.a.yy)));
    return vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x * var_0.x) - _wgslsmith_div_f32(var_0.x, var_0.x)))), var_0.x, any(select(select(vec4<bool>(true, global4[_wgslsmith_index_u32(u_input.a, 8u)], global0.c.b, true), vec4<bool>(true, false, global4[_wgslsmith_index_u32(global0.c.e.x, 8u)], false), true), vec4<bool>(false, true, global0.c.b, global4[_wgslsmith_index_u32(global0.c.e.x, 8u)]), global4[_wgslsmith_index_u32(~26154u, 8u)])))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-235f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-829f)))), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(670f, 275f)) + _wgslsmith_f_op_f32(step(774f, -115f)))))));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> f32 {
    global1 = array<Struct_2, 20>();
    global4 = array<bool, 8>();
    var var_0 = Struct_2(~vec2<u32>(1u, ~(~arg_1.e.x)), vec4<f32>(_wgslsmith_f_op_f32(ceil(-206f)), arg_1.c, arg_1.c, global0.d.x), global0.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global0.b.xw)) - vec2<f32>(312f, -1338f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b.yz), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(915f, arg_1.c) - global0.b.zw), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.c, arg_1.c)))))));
    let var_1 = select(~arg_1.e, ~(global0.c.e & var_0.c.e) << (vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(arg_1.e.xy, arg_1.e.zy), min(19404u, global0.c.e.x)), 4294967295u, ~_wgslsmith_mod_u32(1u, 1u), var_0.a.x & firstLeadingBit(29731u)) % vec4<u32>(32u)), vec4<bool>(any(select(vec3<bool>(var_0.c.b, true, false), select(vec3<bool>(global4[_wgslsmith_index_u32(arg_1.e.x, 8u)], true, global0.c.b), vec3<bool>(false, true, global0.c.b), true), select(vec3<bool>(arg_0, true, true), vec3<bool>(false, arg_1.b, false), vec3<bool>(arg_1.b, false, true)))), global4[_wgslsmith_index_u32(47438u, 8u)], global4[_wgslsmith_index_u32(var_0.c.e.x | ~global0.a.x, 8u)], !(u_input.a > 64585u)));
    var var_2 = reverseBits(~(-var_0.c.a.x ^ 40589i));
    return _wgslsmith_f_op_f32(var_0.d.x * _wgslsmith_f_op_f32(select(global0.c.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(436f, global0.b.x))))), false)));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: u32) -> u32 {
    var var_0 = Struct_2(vec2<u32>(1u, 1u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.d.x * arg_0), _wgslsmith_f_op_f32(ceil(global0.c.c))), -1468f, _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(func_2(true, global0.c))))), Struct_1(~(vec4<i32>(-1i) * -global0.c.a), global4[_wgslsmith_index_u32(u_input.a, 8u)], 513f, arg_1, select(global0.c.e, vec4<u32>(1u, firstTrailingBit(arg_2), 20354u, ~u_input.a), vec4<bool>(true, !global4[_wgslsmith_index_u32(4294967295u, 8u)], all(vec4<bool>(true, global4[_wgslsmith_index_u32(0u, 8u)], false, false)), true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-556f, -1047f)))))));
    var var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~(~var_0.a.x) & ~0u, global0.a.x), 20u)];
    let var_2 = 33230u;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-208f)) + _wgslsmith_f_op_f32(-1544f - 978f));
    let var_4 = true;
    return countOneBits(max(var_2, _wgslsmith_div_u32(u_input.a, u_input.a >> (~0u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global0.c.d;
    global4 = array<bool, 8>();
    global0 = Struct_2(vec2<u32>(reverseBits(1u), 48849u), global0.b, global0.c, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(global0.d, global0.d, vec2<bool>(false, false))))) + vec2<f32>(_wgslsmith_f_op_f32(floor(152f)), -593f)), global0.d, select(vec2<bool>(true, true), select(vec2<bool>(global4[_wgslsmith_index_u32(1u, 8u)], global4[_wgslsmith_index_u32(global0.c.e.x, 8u)]), !vec2<bool>(global4[_wgslsmith_index_u32(0u, 8u)], false), vec2<bool>(true, global4[_wgslsmith_index_u32(global0.c.e.x, 8u)])), select(select(vec2<bool>(global4[_wgslsmith_index_u32(1u, 8u)], global4[_wgslsmith_index_u32(u_input.a, 8u)]), vec2<bool>(false, global4[_wgslsmith_index_u32(1u, 8u)]), vec2<bool>(global0.c.b, false)), vec2<bool>(global4[_wgslsmith_index_u32(55610u, 8u)], global0.c.b), global0.b.x >= -347f)))));
    var var_0 = ~vec2<u32>(1u, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(940f))), 10871i >> (u_input.a % 32u), 1u));
    let var_1 = global0.c.c;
    var_0 = select(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x >> (4294967295u % 32u), u_input.a), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, global0.c.e.x), vec2<u32>(u_input.a, 1u)), ~global0.a), ~_wgslsmith_div_vec2_u32(vec2<u32>(14224u, 0u), vec2<u32>(1u, 32069u))) | ~(~(~global0.c.e.xx)), firstTrailingBit(~(vec2<u32>(4294967295u, 54544u) << (global0.c.e.zy % vec2<u32>(32u)))) << (firstTrailingBit(_wgslsmith_mult_vec2_u32(~vec2<u32>(var_0.x, var_0.x), _wgslsmith_div_vec2_u32(global0.c.e.yy, vec2<u32>(4294967295u, global0.a.x)))) % vec2<u32>(32u)), global0.c.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(38086i, -max(41789i, firstLeadingBit(global0.c.a.x)), max(min(-54427i, 16022i), _wgslsmith_sub_i32(-11615i, global0.c.d)) & _wgslsmith_clamp_i32(global0.c.d, 36076i, global0.c.d << (var_0.x % 32u))), global0.b.zz);
}

