struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1>;

var<private> global1: array<bool, 13>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: vec3<i32>, arg_3: Struct_2) -> u32 {
    global1 = array<bool, 13>();
    var var_0 = firstLeadingBit(~_wgslsmith_mult_vec4_i32(vec4<i32>(1i, -arg_3.c, ~1i, -2147483647i), reverseBits(-vec4<i32>(0i, -2147483647i, global0[_wgslsmith_index_u32(arg_3.b.c.x, 1u)], 2147483647i))));
    global1 = array<bool, 13>();
    global0 = array<i32, 1>();
    var var_1 = abs(select(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.x, 4294967295u, arg_3.b.c.x, 10672u), vec4<u32>(4294967295u, arg_1.x, 4927u, 0u)), _wgslsmith_div_vec4_u32(arg_3.b.c >> (arg_3.b.c % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(81530u, 0u, 42867u, 1u), arg_3.b.c)), select(true, global1[_wgslsmith_index_u32(arg_3.b.c.x, 13u)], false)) ^ firstLeadingBit(arg_3.b.c));
    return arg_1.x;
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = Struct_2(arg_0, Struct_1(~_wgslsmith_mult_u32(28552u, 0u) <= func_3(~vec2<u32>(1607u, 92430u), vec2<u32>(37641u, 88462u), vec3<i32>(global0[_wgslsmith_index_u32(0u, 1u)], -34158i, -5993i), Struct_2(-1340f, Struct_1(true, -486f, vec4<u32>(1u, 1u, 0u, 3335u)), u_input.a.x)), 847f, max(vec4<u32>(1u, ~1u, ~1793u, _wgslsmith_clamp_u32(0u, 10018u, 56887u)), vec4<u32>(_wgslsmith_add_u32(46568u, 1u), _wgslsmith_clamp_u32(23574u, 1u, 14443u), ~0u, firstLeadingBit(0u)))), -_wgslsmith_add_i32(max(_wgslsmith_sub_i32(6321i, 46009i), _wgslsmith_mod_i32(u_input.a.x, -63252i)), i32(-1i) * -global0[_wgslsmith_index_u32(17179u, 1u)]));
    global0 = array<i32, 1>();
    let var_1 = select(vec2<bool>(any(vec3<bool>(all(vec2<bool>(global1[_wgslsmith_index_u32(var_0.b.c.x, 13u)], var_0.b.a)), any(vec4<bool>(true, global1[_wgslsmith_index_u32(var_0.b.c.x, 13u)], var_0.b.a, true)), true)), 1653u > var_0.b.c.x), !(!vec2<bool>(true, any(vec2<bool>(global1[_wgslsmith_index_u32(var_0.b.c.x, 13u)], false)))), max(_wgslsmith_add_i32(~u_input.a.x, ~global0[_wgslsmith_index_u32(4294967295u, 1u)]), ~_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(var_0.c, 1i))) != 0i);
    let var_2 = Struct_2(-208f, Struct_1(true & !any(var_1), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_0.a, arg_0, var_0.b.a))))), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(var_0.b.c, vec4<u32>(0u, var_0.b.c.x, var_0.b.c.x, var_0.b.c.x)), var_0.b.c) ^ select(~var_0.b.c, var_0.b.c, false)), min(u_input.a.x, -(~(~var_0.c))));
    let var_3 = _wgslsmith_div_i32(var_2.c, _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(1u, 1u)], firstTrailingBit(abs(-18713i))));
    return Struct_1(all(select(vec2<bool>(var_2.b.a, !var_1.x), !select(var_1, var_1, vec2<bool>(true, true)), var_1.x)), 478f, ~_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(var_2.b.c.x, 10688u, 36506u, var_2.b.c.x) & vec4<u32>(var_0.b.c.x, 1u, 21976u, var_2.b.c.x)), _wgslsmith_clamp_vec4_u32(select(var_0.b.c, vec4<u32>(0u, var_2.b.c.x, 56409u, 62604u), vec4<bool>(false, false, false, true)), vec4<u32>(var_2.b.c.x, 12849u, 4294967295u, 4294967295u), var_2.b.c)));
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: vec2<f32>) -> vec4<bool> {
    global1 = array<bool, 13>();
    global1 = array<bool, 13>();
    var var_0 = func_2(_wgslsmith_f_op_f32(1216f - -168f));
    global0 = array<i32, 1>();
    let var_1 = Struct_1(select(arg_1.x, var_0.a | arg_1.x, false), _wgslsmith_f_op_f32(f32(-1f) * -341f), vec4<u32>(_wgslsmith_div_u32(max(var_0.c.x, var_0.c.x) >> (firstLeadingBit(var_0.c.x) % 32u), _wgslsmith_clamp_u32(4294967295u, 21197u, var_0.c.x) & var_0.c.x), 4065u, var_0.c.x, var_0.c.x));
    return vec4<bool>(arg_1.x, all(vec2<bool>(any(arg_1.xx), true)) != all(vec2<bool>(any(arg_1.xy), !var_1.a)), any(arg_1.xx), global1[_wgslsmith_index_u32(var_1.c.x, 13u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -276f;
    let var_1 = any(!select(!vec4<bool>(global1[_wgslsmith_index_u32(1u, 13u)], false, global1[_wgslsmith_index_u32(4294967295u, 13u)], false), func_1(~4294967295u, select(vec3<bool>(false, global1[_wgslsmith_index_u32(6124u, 13u)], global1[_wgslsmith_index_u32(1u, 13u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(43311u, 13u)]), global1[_wgslsmith_index_u32(8625u, 13u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(462f, -1000f))), vec4<bool>(true, true, true, true)));
    let var_2 = u_input.a;
    var var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-691f, 1246f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-268f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1354f, 578f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-241f, 545f), vec2<f32>(1000f, -379f), true))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-569f, -276f) * vec2<f32>(2274f, 783f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(545f, -483f) * vec2<f32>(1337f, -1679f)))))));
    let var_4 = Struct_1(~(-max(0i, var_2.x)) <= countOneBits(-1i), _wgslsmith_f_op_f32(min(var_3.x, var_3.x)), ~vec4<u32>(1u, 1u, 1u, 1u));
    var_0 = _wgslsmith_f_op_f32(var_4.b + _wgslsmith_f_op_f32(-var_4.b));
    var_3 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(905f, -508f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, var_3.x))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-850f, var_3.x) * vec2<f32>(-483f, 1466f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_4.c.zy | firstTrailingBit(var_4.c.yz)) & var_4.c.zz, 2147483647i);
}

