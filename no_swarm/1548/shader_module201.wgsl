struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 31> = array<vec2<f32>, 31>(vec2<f32>(-1000f, -2198f), vec2<f32>(466f, 773f), vec2<f32>(-902f, 418f), vec2<f32>(1623f, 192f), vec2<f32>(769f, 632f), vec2<f32>(-286f, 1183f), vec2<f32>(-1022f, 1307f), vec2<f32>(-1019f, -758f), vec2<f32>(-849f, -302f), vec2<f32>(147f, 1161f), vec2<f32>(-1904f, -1317f), vec2<f32>(343f, 1612f), vec2<f32>(822f, 1267f), vec2<f32>(-1000f, 336f), vec2<f32>(-262f, 290f), vec2<f32>(-648f, -477f), vec2<f32>(-1006f, 1781f), vec2<f32>(1474f, -1634f), vec2<f32>(-903f, -1101f), vec2<f32>(-609f, 775f), vec2<f32>(1013f, -1166f), vec2<f32>(698f, 960f), vec2<f32>(251f, 495f), vec2<f32>(-676f, 1000f), vec2<f32>(236f, -810f), vec2<f32>(-1179f, 1244f), vec2<f32>(-594f, 268f), vec2<f32>(-930f, 1218f), vec2<f32>(1000f, -826f), vec2<f32>(284f, 307f), vec2<f32>(-1186f, 1448f));

var<private> global1: array<vec4<bool>, 8>;

var<private> global2: array<f32, 22> = array<f32, 22>(-1431f, 1551f, -798f, 1054f, -1000f, -233f, -396f, 171f, -1000f, -754f, 921f, -112f, 1027f, -431f, 1104f, -663f, 998f, 2476f, -1000f, 378f, -1000f, 876f);

var<private> global3: array<f32, 4> = array<f32, 4>(-1257f, -229f, -765f, 801f);

var<private> global4: f32 = 463f;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> i32 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(countOneBits(~_wgslsmith_sub_u32(~0u, firstTrailingBit(4294967295u))), ~(~firstTrailingBit(4294967295u))), 22u)];
    let var_1 = Struct_2(Struct_1(select(abs(~vec4<u32>(4115u, 0u, 0u, 1u)), vec4<u32>(~34383u, ~19069u, firstLeadingBit(0u), _wgslsmith_div_u32(35167u, 71624u)), true), 158f, abs(vec2<u32>(~3131u, firstLeadingBit(15004u))), vec2<u32>(countOneBits(_wgslsmith_mult_u32(1u, 1u)), 1u)), ~(~_wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.b), u_input.c)));
    let var_2 = all(!select(select(select(global1[_wgslsmith_index_u32(var_1.a.d.x, 8u)], vec4<bool>(true, true, false, false), global1[_wgslsmith_index_u32(var_1.a.a.x, 8u)]), vec4<bool>(false, true, true, false), true), !select(global1[_wgslsmith_index_u32(var_1.a.c.x, 8u)], vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), !select(global1[_wgslsmith_index_u32(var_1.a.c.x, 8u)], vec4<bool>(true, false, true, false), true)));
    var var_3 = true;
    var var_4 = false;
    return u_input.d.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: bool, arg_3: Struct_1) -> i32 {
    global1 = array<vec4<bool>, 8>();
    var var_0 = Struct_2(Struct_1(arg_1, arg_3.b, vec2<u32>(arg_1.x, arg_3.d.x), _wgslsmith_mod_vec2_u32(~arg_1.yw, _wgslsmith_sub_vec2_u32(arg_3.c, arg_3.c))), func_3(-741f));
    let var_1 = select(_wgslsmith_dot_vec2_u32(arg_1.yz, ~arg_3.d << (~arg_3.d % vec2<u32>(32u))) > ~_wgslsmith_add_u32(~arg_3.a.x, 18033u), false, true);
    let var_2 = Struct_2(var_0.a, 2147483647i);
    global2 = array<f32, 22>();
    return func_3(_wgslsmith_f_op_f32(-arg_0.x));
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: f32) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_i32(26325i, _wgslsmith_add_i32(func_2(vec3<f32>(-1159f, arg_2, arg_2), vec4<u32>(0u, 1u, 72904u, 0u), true, Struct_1(vec4<u32>(4294967295u, 7245u, 3719u, 41005u), 1478f, vec2<u32>(0u, 1u), vec2<u32>(0u, 32792u))), ~arg_0) ^ (u_input.b.x << (~0u % 32u)), -arg_0) <= ~(-(~arg_0) << (1u % 32u));
    let var_1 = Struct_2(Struct_1(select(~(~vec4<u32>(22354u, 0u, 55190u, 14386u)), _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 46152u, 46445u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstLeadingBit(4294967295u), 1u), 8u)]), arg_2, ~(~vec2<u32>(0u, 4294967295u)), vec2<u32>(1u, min(42628u, ~0u))), _wgslsmith_add_i32(i32(-1i) * -arg_0, min(~u_input.c.x, i32(-1i) * -1i)) | select(~(-2147483647i), -2147483647i, any(vec2<bool>(true, true))));
    global3 = array<f32, 4>();
    let var_2 = var_1.a.a.x;
    global0 = array<vec2<f32>, 31>();
    return var_1.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: i32) -> u32 {
    let var_0 = !select(vec3<bool>(false, true, all(select(global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(3648u, 8u)], true))), vec3<bool>(true, true, true), true);
    let var_1 = _wgslsmith_mult_vec4_u32(arg_0.a, _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, arg_2.a.c.x, ~arg_0.d.x, ~1u), ~arg_0.a));
    var var_2 = arg_0.a.zyx;
    global4 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~var_1.x, var_1.x, arg_2.a.a.x), 4u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_2.x, 4u)] * arg_2.a.b)))) + _wgslsmith_f_op_f32(func_1(arg_2.b, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(29510u, 31u)] * global0[_wgslsmith_index_u32(0u, 31u)]))), arg_2.a.b).b - 105f));
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_2.a.d.x, 4u)]) * func_1(46115i, vec2<f32>(-1000f, global2[_wgslsmith_index_u32(var_2.x, 22u)]), arg_2.a.b).b) + global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u >> (arg_2.a.c.x % 32u), arg_2.a.d.x << (arg_2.a.c.x % 32u)), 22u)]), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(arg_2.a.b)))), !(!any(global1[_wgslsmith_index_u32(0u, 8u)])))));
    return ~_wgslsmith_add_u32(1u, firstTrailingBit(arg_2.a.a.x));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> vec3<f32> {
    var var_0 = Struct_2(arg_2, 11505i);
    global1 = array<vec4<bool>, 8>();
    global4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-326f * _wgslsmith_f_op_f32(abs(-667f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(-5099i, global0[_wgslsmith_index_u32(22435u, 31u)], _wgslsmith_f_op_f32(min(var_0.a.b, global3[_wgslsmith_index_u32(var_0.a.a.x, 4u)]))).b))));
    let var_1 = min(u_input.d.wxw, vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(u_input.d.xxw, vec3<i32>(var_0.b, -11451i, u_input.b.x))) >> (countOneBits(~reverseBits(~var_0.a.a.zwz)) % vec3<u32>(32u));
    let var_2 = Struct_2(func_1(_wgslsmith_add_i32(_wgslsmith_clamp_i32(-2147483647i, ~var_0.b, -2147483647i), ~(-var_1.x)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2[_wgslsmith_index_u32(~6874u, 22u)], arg_2.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.b, global3[_wgslsmith_index_u32(4294967295u, 4u)]) + _wgslsmith_div_vec2_f32(global0[_wgslsmith_index_u32(arg_2.c.x, 31u)], vec2<f32>(global2[_wgslsmith_index_u32(25159u, 22u)], arg_2.b))))), _wgslsmith_f_op_f32(-440f + 3258f)), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, u_input.b.x, var_1.x), vec3<i32>(var_0.b, var_1.x, var_0.b), vec3<i32>(u_input.a.x, 4651i, var_1.x)), ~vec3<i32>(-1i, 33351i, var_0.b), _wgslsmith_clamp_vec3_i32(u_input.d.xwx, vec3<i32>(var_0.b, var_1.x, -1i), u_input.d.wwz)), vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, -50150i, 2147483647i)) >> (countOneBits(~1u) % 32u));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(-1828f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(exp2(arg_2.b))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.a.b, 1101f, arg_0.b))) + vec3<f32>(322f, -991f, 615f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(arg_2.d.x, 4u)], -731f, 261f) + vec3<f32>(-1000f, 1747f, -1436f)) + vec3<f32>(1955f, -890f, var_2.a.b)), !select(vec3<bool>(false, true, arg_1), vec3<bool>(true, arg_1, false), arg_1)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_5(Struct_1(vec4<u32>(1u, _wgslsmith_sub_u32(max(4294967295u, 0u), 1u), ~(~1428u), 4294967295u >> (~4294967295u % 32u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-670f * global2[_wgslsmith_index_u32(1u, 22u)]))), vec2<u32>(4294967295u, func_4(func_1(u_input.c.x, global0[_wgslsmith_index_u32(32201u, 31u)], global2[_wgslsmith_index_u32(11176u, 22u)]), vec2<i32>(u_input.c.x, u_input.d.x), Struct_2(Struct_1(vec4<u32>(0u, 0u, 6367u, 9557u), global3[_wgslsmith_index_u32(85618u, 4u)], vec2<u32>(36064u, 1u), vec2<u32>(1u, 79164u)), 1i), u_input.b.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(4294967295u, 35507u))), true, Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u) ^ firstTrailingBit(vec4<u32>(1u, 0u, 4294967295u, 60457u)), ~vec4<u32>(78843u, 1u, 0u, 4294967295u), abs(abs(vec4<u32>(53379u, 52675u, 55299u, 4294967295u)))), 945f, vec2<u32>(0u, ~min(23699u, 34860u)), ~(~(~vec2<u32>(0u, 75341u))))));
    global3 = array<f32, 4>();
    var var_1 = select(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(4294967295u, 4294967295u, 1u, 1u)), abs(abs(0u))), ~max(16877u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 42807u, 4294967295u), vec3<u32>(0u, 4294967295u, 4294967295u)))), ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 1u), ~vec2<u32>(1u, 1u), max(select(vec2<u32>(5964u, 4294967295u), vec2<u32>(52214u, 75660u), vec2<bool>(true, false)), vec2<u32>(37036u, 35072u))), vec2<bool>(true, true));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(211f, -360f, global3[_wgslsmith_index_u32(var_1.x, 4u)], -1424f) - vec4<f32>(global2[_wgslsmith_index_u32(var_1.x, 22u)], global2[_wgslsmith_index_u32(var_1.x, 22u)], global3[_wgslsmith_index_u32(0u, 4u)], global2[_wgslsmith_index_u32(var_1.x, 22u)])))) + _wgslsmith_div_vec4_f32(vec4<f32>(1000f, global2[_wgslsmith_index_u32(var_1.x, 22u)], var_0.x, global3[_wgslsmith_index_u32(10042u, 4u)]), vec4<f32>(2069f, -878f, global3[_wgslsmith_index_u32(var_1.x, 4u)], -750f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(trunc(622f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-176f, 969f)), -1563f, 876f)));
    global3 = array<f32, 4>();
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(var_1.x, 22u)])) - -214f), -1030f, global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(21903u, 70970u, var_1.x)), vec3<u32>(93035u & var_1.x, ~var_1.x, var_1.x)), 22u)], _wgslsmith_f_op_f32(-600f * -1126f));
    let var_4 = -_wgslsmith_add_vec2_i32(-vec2<i32>(-u_input.a.x, _wgslsmith_dot_vec4_i32(u_input.d, u_input.d)), u_input.d.ww);
    let var_5 = Struct_1(select(abs(min(~vec4<u32>(var_1.x, 27337u, var_1.x, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, var_1.x, 1u, 15925u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1622u), vec4<u32>(var_1.x, 0u, 6747u, var_1.x)))), ~vec4<u32>(~91561u, abs(0u), 1562u, var_1.x), true), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-615f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_3.x * 422f)))))), ~(~vec2<u32>(var_1.x, var_1.x) >> (~vec2<u32>(var_1.x, 3225u) % vec2<u32>(32u))), ~(~reverseBits(reverseBits(vec2<u32>(var_1.x, var_1.x)))));
    let var_6 = !select(vec3<bool>(any(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(14022u, 10622u, var_5.a.x), 8u)]), true, var_4.x <= ~var_4.x), vec3<bool>(any(vec4<bool>(true, false, true, true)), any(vec3<bool>(false, false, true)), false), vec3<bool>(any(vec3<bool>(true, false, true)), !(global3[_wgslsmith_index_u32(48922u, 4u)] >= 496f), select(true, all(vec4<bool>(false, false, false, false)), false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(vec2<i32>(10215i, -_wgslsmith_div_i32(var_4.x, 32359i)), u_input.d.wx), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_0)), vec3<f32>(370f, -1017f, func_1(-var_4.x, global0[_wgslsmith_index_u32(firstTrailingBit(64835u), 31u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(3673u, 22u)])).b)), ~_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.d, u_input.d), u_input.d) & vec4<i32>(_wgslsmith_mult_i32(u_input.d.x, var_4.x) & u_input.a.x, var_4.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, var_4.x), -vec2<i32>(0i, -2147483647i)), u_input.d.x), countOneBits(var_5.a.yyz));
}

