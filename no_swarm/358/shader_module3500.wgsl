struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: u32,
    d: vec3<u32>,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec2<u32>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec4<u32>, 30>;

var<private> global2: i32 = 27268i;

var<private> global3: array<bool, 18>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: vec2<bool>) -> u32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(-1600f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-654f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1815f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(348f)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -115f)), -102f, all(arg_2))));
    global0 = true;
    var var_1 = select(vec3<bool>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~u_input.a), global1[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 30u)] >> (vec4<u32>(u_input.a.x, u_input.c, u_input.c, 86733u) % vec4<u32>(32u))), 18u)], u_input.c < 1u, any(select(vec4<bool>(false, false, false, true), !vec4<bool>(arg_2.x, true, arg_2.x, true), u_input.b < u_input.a.x))), vec3<bool>(true, all(!vec2<bool>(arg_2.x, false)), !(_wgslsmith_f_op_f32(floor(var_0.x)) >= 504f)), !all(vec2<bool>(any(vec3<bool>(arg_2.x, arg_2.x, false)), global3[_wgslsmith_index_u32(~56752u, 18u)])));
    return ~12122u | u_input.b;
}

fn func_2(arg_0: f32, arg_1: Struct_4, arg_2: f32) -> u32 {
    var var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(0u, func_3(arg_1, vec4<i32>(u_input.e.x, u_input.d.x, -2147483647i, 1i) | vec4<i32>(u_input.d.x, arg_1.b.x, -1i, -1i), select(select(vec2<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 18u)]), vec2<bool>(false, false), vec2<bool>(global3[_wgslsmith_index_u32(1u, 18u)], global3[_wgslsmith_index_u32(u_input.a.x, 18u)])), select(vec2<bool>(false, global3[_wgslsmith_index_u32(1139u, 18u)]), vec2<bool>(false, global3[_wgslsmith_index_u32(0u, 18u)]), false), vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 18u)], global3[_wgslsmith_index_u32(1u, 18u)]))), _wgslsmith_dot_vec4_u32(abs(~global1[_wgslsmith_index_u32(4294967295u, 30u)]), vec4<u32>(4294967295u, min(u_input.c, u_input.b), u_input.c, ~u_input.c))), ~u_input.a.wwy);
    global2 = ~_wgslsmith_add_i32(arg_1.b.x, -14138i) | u_input.e.x;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-481f, arg_2)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-194f, 793f))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-288f, -1659f, arg_2, arg_0))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_2, arg_0, 923f, arg_2))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -837f, arg_2, -1000f) - vec4<f32>(arg_0, arg_0, arg_0, arg_0))))))), abs(2343u), firstLeadingBit(vec3<u32>(var_0.x >> (~u_input.b % 32u), ~_wgslsmith_mod_u32(1u, u_input.b), 2765u)), _wgslsmith_f_op_f32(-arg_2));
    let var_2 = ~(~vec4<u32>(reverseBits(1549u & var_0.x), _wgslsmith_mod_u32(abs(var_0.x), var_0.x), ~(~21798u), 0u));
    var_0 = firstTrailingBit(abs(var_1.d));
    return var_2.x;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: vec3<i32>) -> Struct_2 {
    global0 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~60482u, u_input.c >> (func_2(585f, Struct_4(-vec3<i32>(arg_2.x, 0i, -76921i), -u_input.e.xy), _wgslsmith_f_op_f32(-arg_1.x)) % 32u)), 18u)];
    global0 = !all(!(!vec2<bool>(global3[_wgslsmith_index_u32(u_input.b, 18u)], false)));
    global0 = select(true, arg_0.x, !(!(!(arg_1.x < -2116f))));
    var var_0 = Struct_4(_wgslsmith_add_vec3_i32(min(~(arg_2 >> (vec3<u32>(u_input.a.x, 67821u, u_input.a.x) % vec3<u32>(32u))), reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(17527i, 0i, u_input.e.x), vec3<i32>(u_input.d.x, -2251i, 0i)))), vec3<i32>(1i, -arg_2.x, ~(-u_input.d.x))), _wgslsmith_sub_vec2_i32(~(~_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(arg_2.x, 10638i))), max(_wgslsmith_mod_vec2_i32(u_input.e.xz, arg_2.xy), reverseBits(arg_2.zz)) ^ abs(vec2<i32>(40663i, arg_2.x))));
    global0 = true;
    return Struct_2(arg_1.x, global3[_wgslsmith_index_u32(66832u, 18u)], firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, ~91106u), u_input.a.zw)), arg_1);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_3, arg_3: vec2<f32>) -> f32 {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(abs(~arg_0.c.x), arg_2.b.x), vec2<u32>(func_1(select(!vec4<bool>(arg_0.b, global3[_wgslsmith_index_u32(1u, 18u)], arg_2.a.b, true), !vec4<bool>(true, arg_0.b, true, true), false), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.d + arg_2.a.d) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(679f, arg_0.d.x))), ~arg_1.a).c.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(9030u, 24477u), arg_2.a.c) | func_3(var_0, _wgslsmith_mod_vec4_i32(vec4<i32>(0i, 1i, -2147483647i, u_input.d.x), vec4<i32>(-2147483647i, -36076i, 1i, -69942i)), select(vec2<bool>(true, arg_0.b), vec2<bool>(arg_2.a.b, arg_0.b), false))), vec2<u32>(19610u, _wgslsmith_div_u32(~countOneBits(26085u), u_input.a.x)));
    let var_2 = _wgslsmith_div_i32(~1i, arg_1.b.x);
    let var_3 = vec3<bool>(true, !(func_1(vec4<bool>(arg_2.a.b, true, false, arg_0.b), arg_2.a.d, _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -3021i, 1i), u_input.e)).b | !all(vec2<bool>(true, false))), true);
    let var_4 = arg_0.d.x;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.ww, vec2<u32>(_wgslsmith_mod_u32(1u, ~_wgslsmith_add_u32(u_input.c, u_input.b)), u_input.b)), 18u)];
    var var_0 = Struct_4(u_input.e, ~_wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -u_input.e.xy, ~firstLeadingBit(vec2<i32>(-1i, 23339i))));
    var var_1 = _wgslsmith_f_op_f32(ceil(1f));
    var var_2 = firstTrailingBit(u_input.c);
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-713f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1(vec4<bool>(global3[_wgslsmith_index_u32(83759u, 18u)], true, true, false), vec2<f32>(-573f, -436f), var_0.a), Struct_4(var_0.a, u_input.d), Struct_3(Struct_2(1016f, true, u_input.a.yz, vec2<f32>(323f, 610f)), u_input.a.zy, 15860u), vec2<f32>(1f, 1f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-522f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(178f - -1398f))));
    var var_4 = var_3.x;
    let var_5 = Struct_2(_wgslsmith_f_op_f32(-1f), true, _wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(abs(1u), _wgslsmith_add_u32(0u, 19541u))), ~u_input.a.zy, u_input.a.wy), var_3.xx);
    let var_6 = Struct_4(-reverseBits(u_input.e), u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(var_5.c.x, 1u, 4294967295u, u_input.c)), _wgslsmith_mod_u32(1u, ~93129u)), reverseBits(var_5.c), func_1(select(select(vec4<bool>(global3[_wgslsmith_index_u32(1187u, 18u)], true, true, true), vec4<bool>(global3[_wgslsmith_index_u32(var_5.c.x, 18u)], false, global3[_wgslsmith_index_u32(1u, 18u)], global3[_wgslsmith_index_u32(u_input.a.x, 18u)]), global3[_wgslsmith_index_u32(var_5.c.x, 18u)]), !vec4<bool>(global3[_wgslsmith_index_u32(var_5.c.x, 18u)], global3[_wgslsmith_index_u32(95721u, 18u)], false, global3[_wgslsmith_index_u32(u_input.c, 18u)]), !vec4<bool>(true, global3[_wgslsmith_index_u32(var_5.c.x, 18u)], global3[_wgslsmith_index_u32(23950u, 18u)], false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_3.xx)) + var_3.wy), vec3<i32>(-24127i, min(var_6.a.x, -2147483647i), _wgslsmith_sub_i32(0i, u_input.e.x))).c), func_1(select(select(vec4<bool>(true, global3[_wgslsmith_index_u32(0u, 18u)], false, var_5.b), vec4<bool>(false, true, true, false), false), select(!vec4<bool>(true, var_5.b, true, global3[_wgslsmith_index_u32(u_input.c, 18u)]), vec4<bool>(true, true, true, true), true), !all(vec2<bool>(false, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_3.yy)))), var_6.a).d.x);
}

