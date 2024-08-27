struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
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

var<private> global0: array<Struct_3, 23>;

var<private> global1: array<i32, 11>;

var<private> global2: Struct_3 = Struct_3(vec3<i32>(-1561i, -1i, 2147483647i), vec3<f32>(1000f, -910f, 401f), vec3<i32>(1i, -48891i, 11243i), vec4<bool>(true, true, false, true));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec4<u32> {
    var var_0 = Struct_2(-11743i, 105830u);
    let var_1 = firstLeadingBit(-max(-2147483647i, reverseBits(_wgslsmith_sub_i32(u_input.b.x, -2147483647i))));
    var var_2 = vec2<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(abs(min(vec2<i32>(2147483647i, var_0.a), vec2<i32>(global2.a.x, -44435i))), ~vec2<i32>(16433i, 2147483647i)), countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, global1[_wgslsmith_index_u32(4294967295u, 11u)], var_0.a, u_input.c), vec4<i32>(-2147483647i, u_input.a, var_0.a, var_1)))), global2.a.x);
    var_0 = Struct_2(1i ^ global1[_wgslsmith_index_u32(min(var_0.b, ~(~var_0.b)), 11u)], abs(min(_wgslsmith_sub_u32(var_0.b, ~20737u), ~(4294967295u >> (var_0.b % 32u)))));
    var_2 = vec2<i32>(0i, firstLeadingBit(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(firstTrailingBit(global2.a), global2.c), global2.c)));
    return reverseBits(~(_wgslsmith_mod_vec4_u32(vec4<u32>(35305u, var_0.b, 49861u, var_0.b), vec4<u32>(54918u, 1u, 0u, var_0.b)) << (vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, 1999u, 65371u), vec3<u32>(var_0.b, 4294967295u, var_0.b)), abs(29142u), select(1u, 125015u, false), var_0.b) % vec4<u32>(32u))));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: bool, arg_3: bool) -> Struct_3 {
    var var_0 = reverseBits(_wgslsmith_sub_vec4_u32(~(~(vec4<u32>(arg_1.x, 88291u, 4294967295u, arg_1.x) | vec4<u32>(1u, 37142u, 1u, arg_1.x))), ~(~vec4<u32>(arg_1.x, 42409u, 100734u, arg_1.x))));
    let var_1 = Struct_1(_wgslsmith_sub_vec2_i32(-vec2<i32>(2147483647i, global2.a.x) << (_wgslsmith_mod_vec2_u32(var_0.wx, _wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.x, 0u), vec2<u32>(var_0.x, var_0.x))) % vec2<u32>(32u)), ~max(vec2<i32>(12060i, global1[_wgslsmith_index_u32(var_0.x, 11u)]), firstLeadingBit(u_input.b.yz))), abs(1i) >> (_wgslsmith_dot_vec4_u32(func_3(), firstTrailingBit(select(vec4<u32>(4294967295u, arg_1.x, 26697u, arg_1.x), vec4<u32>(arg_1.x, 0u, 15123u, var_0.x), false))) % 32u));
    global2 = Struct_3(vec3<i32>(max(var_1.a.x, ~min(var_1.b, global2.a.x)), global2.c.x, _wgslsmith_add_i32(firstTrailingBit(13419i), global2.a.x)), vec3<f32>(1677f, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.b.x, -1723f, arg_2))))), -select(vec3<i32>(-global1[_wgslsmith_index_u32(4294967295u, 11u)], u_input.a << (1u % 32u), -53686i), vec3<i32>(global1[_wgslsmith_index_u32(23692u, 11u)], global1[_wgslsmith_index_u32(0u, 11u)], 4854i) & ~global2.c, !global2.d.wxz), select(global2.d, select(select(!global2.d, select(vec4<bool>(arg_2, false, global2.d.x, true), vec4<bool>(false, arg_3, false, arg_3), vec4<bool>(arg_3, arg_2, arg_3, true)), arg_3), global2.d, !arg_2), vec4<bool>(select(all(global2.d.xz), true, 1u != var_0.x), true, !arg_3, all(global2.d.yz))));
    global2 = Struct_3(vec3<i32>(countOneBits(~max(-2147483647i, var_1.a.x)), _wgslsmith_div_i32(~(-2147483647i), firstTrailingBit(u_input.a)), var_1.a.x & firstLeadingBit(u_input.b.x | 4922i)), vec3<f32>(-338f, 205f, _wgslsmith_f_op_f32(abs(-1599f))), ~(-(~(vec3<i32>(var_1.a.x, var_1.b, 32643i) << (var_0.zxx % vec3<u32>(32u))))), select(global2.d, !select(select(vec4<bool>(false, arg_2, arg_3, global2.d.x), global2.d, vec4<bool>(true, false, arg_2, true)), global2.d, !vec4<bool>(false, false, true, arg_3)), all(vec2<bool>(true, true))));
    var var_2 = var_0.yxx;
    return Struct_3(u_input.b.yyz, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.b) - vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(max(-2897f, arg_0.x)))), vec3<f32>(-1074f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(max(692f, _wgslsmith_f_op_f32(f32(-1f) * -142f))))), _wgslsmith_add_vec3_i32(vec3<i32>(-(~global1[_wgslsmith_index_u32(1u, 11u)]), ~_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(0u, 11u)], -17336i, global1[_wgslsmith_index_u32(19321u, 11u)]), _wgslsmith_dot_vec3_i32(-global2.c, _wgslsmith_sub_vec3_i32(u_input.b.wzy, global2.c))), vec3<i32>(global1[_wgslsmith_index_u32(46629u, 11u)], _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(global2.a, vec3<i32>(-1i, global2.a.x, -2147483647i)), var_1.a.x ^ 28986i), u_input.a)), !select(select(global2.d, select(global2.d, global2.d, arg_3), global2.d), global2.d, vec4<bool>(!arg_2, global2.d.x, all(global2.d.xxx), !arg_3)));
}

fn func_1(arg_0: bool) -> f32 {
    global2 = func_2(vec3<f32>(2223f, 519f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global2.b.x, global2.b.x))), -587f)), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 1u, 1u), select(vec3<u32>(0u, 10321u, 33515u), vec3<u32>(23795u, 4294967295u, 16230u), false)), -1829f >= _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.b.x), -604f), global2.b.x, arg_0)), true);
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1098f - _wgslsmith_f_op_f32(-global2.b.x)), global2.b.x)));
    let var_1 = -834f;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(119f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1020f, global2.b.x)))), 756f, true)), -906f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + 1f));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1181f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.x), -136f)), _wgslsmith_f_op_f32(448f - var_1), true))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(125f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(false)), global2.b.x), _wgslsmith_f_op_f32(235f - 1097f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-675f * global2.b.x)))))));
    var var_1 = !(!global2.d.wx);
    global0 = array<Struct_3, 23>();
    let var_2 = Struct_2(u_input.a << (4294967295u % 32u), _wgslsmith_sub_u32(countOneBits(1u), 0u));
    var_1 = vec2<bool>(true, global2.d.x);
    var var_3 = Struct_1(u_input.b.yw & ~(~global2.a.yz & global2.c.xy), _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(var_2.b, 11u)] | global2.c.x, 1i));
    global2 = global0[_wgslsmith_index_u32(var_2.b, 23u)];
    var var_4 = Struct_2(1i, ~_wgslsmith_sub_u32(var_2.b, firstLeadingBit(_wgslsmith_div_u32(32896u, var_2.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(var_0.yw)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.x, -581f)), !global2.d.zy)), _wgslsmith_f_op_f32(max(1586f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.x * var_0.x))))));
}

