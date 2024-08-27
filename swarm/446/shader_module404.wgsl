struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 25> = array<bool, 25>(false, false, false, true, true, true, true, true, false, true, true, true, true, false, false, false, true, false, true, false, true, false, false, true, true);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<i32> {
    let var_0 = Struct_1(select(!select(!vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 25u)], false, global1[_wgslsmith_index_u32(18698u, 25u)]), !vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 25u)], global1[_wgslsmith_index_u32(u_input.c, 25u)], global1[_wgslsmith_index_u32(u_input.a, 25u)]), !vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 25u)], global1[_wgslsmith_index_u32(48683u, 25u)], global1[_wgslsmith_index_u32(141197u, 25u)])), vec4<bool>(global1[_wgslsmith_index_u32(1u, 25u)], !any(vec2<bool>(true, false)), abs(u_input.b) != _wgslsmith_mult_u32(16375u, 19284u), global1[_wgslsmith_index_u32(4294967295u, 25u)]), !vec4<bool>(true, true, any(vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 25u)], global1[_wgslsmith_index_u32(0u, 25u)])), !global1[_wgslsmith_index_u32(u_input.b, 25u)])), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(41103i, -38160i, _wgslsmith_clamp_i32(0i, -1i, -2147483647i))), 433f);
    var var_1 = _wgslsmith_add_vec2_u32(max(~abs(vec2<u32>(0u, u_input.a)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, 1u), vec2<u32>(1u, u_input.d)) >> (~vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u))) << (_wgslsmith_mult_vec2_u32(~max(vec2<u32>(u_input.d, 27611u), vec2<u32>(u_input.a, 4294967295u)), select(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 46945u), vec2<u32>(4294967295u, 24042u)), ~vec2<u32>(28182u, 77018u), false)) % vec2<u32>(32u)), reverseBits(~(~vec2<u32>(u_input.d, 0u))));
    var var_2 = ~abs(~firstLeadingBit(~(-1i)));
    var var_3 = min(-25361i, var_0.b.x);
    let var_4 = Struct_1(!select(vec4<bool>(var_0.a.x, all(vec3<bool>(true, false, false)), true, var_0.a.x), var_0.a, !var_0.a), select(vec3<i32>((var_0.b.x >> (u_input.a % 32u)) & ~var_0.b.x, var_0.b.x, ~_wgslsmith_dot_vec3_i32(var_0.b, var_0.b)), vec3<i32>(-18974i, var_0.b.x, _wgslsmith_add_i32(~(-1i), -2147483647i)), all(vec3<bool>(true, true, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_1.x, 23303u), 25u)]))), var_0.c);
    return var_0.b;
}

fn func_2(arg_0: bool) -> bool {
    var var_0 = Struct_1(vec4<bool>(true, arg_0 | global1[_wgslsmith_index_u32(~u_input.c, 25u)], arg_0 | !global1[_wgslsmith_index_u32(1u, 25u)], !select(all(vec3<bool>(arg_0, true, arg_0)), all(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 25u)], false)), true)), select(func_3(), ~_wgslsmith_sub_vec3_i32(vec3<i32>(3398i, 25286i, -1i), countOneBits(vec3<i32>(-2147483647i, 27448i, 2147483647i))), select(vec3<bool>(false, select(arg_0, global1[_wgslsmith_index_u32(u_input.c, 25u)], global1[_wgslsmith_index_u32(u_input.c, 25u)]), global1[_wgslsmith_index_u32(u_input.c, 25u)] == true), !select(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 25u)], global1[_wgslsmith_index_u32(19885u, 25u)], true), vec3<bool>(false, arg_0, global1[_wgslsmith_index_u32(0u, 25u)]), global1[_wgslsmith_index_u32(1u, 25u)]), !vec3<bool>(global1[_wgslsmith_index_u32(15504u, 25u)], true, false))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-201f + -1138f), -100f)));
    var var_1 = select(vec2<bool>(!((true || global1[_wgslsmith_index_u32(u_input.a, 25u)]) | global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, 0u), 25u)]), _wgslsmith_add_i32(abs(var_0.b.x), 1i) == -2147483647i), select(!vec2<bool>(global1[_wgslsmith_index_u32(1u, 25u)], true), !var_0.a.yx, select(select(!vec2<bool>(var_0.a.x, false), vec2<bool>(false, global1[_wgslsmith_index_u32(90339u, 25u)]), !var_0.a.x), vec2<bool>(var_0.a.x & false, true), arg_0 | true)), false);
    let var_2 = vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(firstTrailingBit(u_input.d), ~u_input.c, u_input.a), _wgslsmith_add_u32(1u, ~49103u), u_input.a), u_input.c, 59704u, u_input.c << (firstLeadingBit(1u) % 32u)) ^ firstLeadingBit(~min(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.b, 1u), vec4<u32>(0u, u_input.a, u_input.d, 1467u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 0u, u_input.a, 20930u), vec4<u32>(36345u, u_input.d, 27522u, u_input.c))));
    let var_3 = Struct_1(var_0.a, -select(abs(-vec3<i32>(21883i, var_0.b.x, var_0.b.x)), max(func_3(), _wgslsmith_mod_vec3_i32(var_0.b, var_0.b)), _wgslsmith_add_i32(-1i, 33190i) <= -var_0.b.x), 929f);
    var_1 = select(var_0.a.xy, var_3.a.xw, select(var_0.a.xy, vec2<bool>(arg_0, false), var_0.a.yw));
    return var_0.a.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec2<i32>) -> vec2<bool> {
    let var_0 = all(vec2<bool>(all(!(!arg_0.a)), true));
    global1 = array<bool, 25>();
    global1 = array<bool, 25>();
    var var_1 = arg_1.a.zw;
    var_1 = vec2<bool>(!(!(!(false & arg_1.a.x))), func_2(~(~arg_2.x) != -64105i));
    return select(!arg_0.a.yx, select(arg_1.a.yy, arg_1.a.zw, all(!arg_0.a.yz)), func_3().x != (_wgslsmith_div_i32(arg_1.b.x, abs(arg_3.x)) & -max(arg_2.x, arg_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-218f * 2043f) + 701f), _wgslsmith_f_op_f32(-828f + _wgslsmith_f_op_f32(sign(-897f))))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-192f - -545f), _wgslsmith_f_op_f32(1766f + 1326f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1300f, 541f))), global1[_wgslsmith_index_u32(u_input.d, 25u)]))));
    var var_0 = ~u_input.a;
    global0 = -475f;
    var_0 = u_input.a;
    let var_1 = _wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(u_input.c, _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, u_input.a), vec2<u32>(1u, u_input.b) | vec2<u32>(19099u, 123366u)))), ~(~select(vec2<u32>(22604u, u_input.c) | vec2<u32>(56479u, u_input.c), ~vec2<u32>(u_input.b, u_input.d), func_1(Struct_1(vec4<bool>(true, global1[_wgslsmith_index_u32(69522u, 25u)], false, global1[_wgslsmith_index_u32(1u, 25u)]), vec3<i32>(-1i, -2147483647i, -2147483647i), 1200f), Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 25u)], false, global1[_wgslsmith_index_u32(1589u, 25u)], global1[_wgslsmith_index_u32(0u, 25u)]), vec3<i32>(-1i, -30334i, -1i), 1604f), vec2<i32>(2147483647i, 42014i), vec2<i32>(-3692i, 1i)))));
    global0 = 974f;
    var var_2 = Struct_1(vec4<bool>(true, true, var_1.x >= countOneBits(abs(u_input.d)), !global1[_wgslsmith_index_u32(select(13747u, 0u, !global1[_wgslsmith_index_u32(0u, 25u)]), 25u)]), ~(-vec3<i32>(_wgslsmith_clamp_i32(21005i, 10874i, -39983i), -1i, -2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-569f - -785f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -354f), 1081f)))));
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -726f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.c - _wgslsmith_f_op_f32(round(var_2.c))))))));
    var var_3 = Struct_1(var_2.a, var_2.b, var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-1889f, var_2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(var_2.c)), 1f)) + -2313f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3.c), var_3.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(select(var_2.c, 482f, false))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.c + 596f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_2.c, var_3.c)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.c, var_3.c, var_2.c, var_3.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.c, var_3.c, var_2.c, 1245f)), func_1(Struct_1(var_2.a, vec3<i32>(var_3.b.x, var_2.b.x, 6173i), -736f), Struct_1(var_2.a, var_3.b, -2475f), vec2<i32>(2147483647i, 7865i), var_3.b.yy).x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.c, var_2.c, var_2.c, 395f))))), ~min(~vec4<u32>(0u, 1u, u_input.a, 10686u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 16564u, 0u, u_input.d), vec4<u32>(u_input.c, 28u, var_1.x, 56113u))) << (vec4<u32>(~countOneBits(var_1.x), ~reverseBits(4294967295u), var_1.x, select(var_1.x, 0u, any(vec4<bool>(var_3.a.x, true, false, true)))) % vec4<u32>(32u)));
}

