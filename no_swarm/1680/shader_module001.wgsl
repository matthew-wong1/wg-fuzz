struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-1i, 1000f);

var<private> global1: vec3<i32> = vec3<i32>(-12746i, i32(-2147483648), 0i);

var<private> global2: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(0i, -568f), Struct_2(-40357i, 1294f), Struct_2(-22531i, 1762f), Struct_2(42915i, -2046f), Struct_2(2147483647i, 279f), Struct_2(46428i, 163f), Struct_2(-42040i, -1000f), Struct_2(-5425i, 2306f), Struct_2(1i, 1578f), Struct_2(i32(-2147483648), -1116f), Struct_2(1i, -841f), Struct_2(25432i, -707f), Struct_2(-70702i, -1029f), Struct_2(2147483647i, -1780f), Struct_2(1i, 1000f), Struct_2(-25190i, 546f), Struct_2(1i, -416f), Struct_2(2147483647i, -1000f), Struct_2(3411i, 1523f));

var<private> global3: array<f32, 9> = array<f32, 9>(-1977f, 1000f, 1000f, 882f, 1130f, 647f, -184f, 336f, -709f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2) -> vec4<i32> {
    let var_0 = select(select(!vec2<bool>(select(true, true, true), true), !vec2<bool>(true, 774i <= arg_0.a), !vec2<bool>(all(vec4<bool>(true, true, false, false)), false)), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(select(false, true, false), true), true), !vec2<bool>(false, true == select(false, false, false)));
    var var_1 = Struct_1(u_input.a, select(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, var_0.x), var_0), var_0), vec2<bool>(true, false), select(var_0, select(select(var_0, vec2<bool>(var_0.x, true), true), var_0, select(var_0, var_0, false)), !vec2<bool>(var_0.x, false))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(187f, global0.b, 1725f) * vec3<f32>(-1225f, global3[_wgslsmith_index_u32(21003u, 9u)], global3[_wgslsmith_index_u32(1u, 9u)])))) * vec3<f32>(-471f, _wgslsmith_f_op_f32(ceil(arg_0.b)), _wgslsmith_div_f32(908f, 2570f))))));
    var_1 = Struct_1(var_1.a, select(select(!select(vec2<bool>(false, var_1.b.x), vec2<bool>(var_1.b.x, false), var_0.x), select(vec2<bool>(true, true), vec2<bool>(true, true), select(var_1.b.x, true, var_1.b.x)), true), var_0, var_1.b), _wgslsmith_f_op_vec3_f32(-var_1.c));
    var_1 = Struct_1(u_input.a, !select(var_1.b, !select(vec2<bool>(var_0.x, true), vec2<bool>(false, true), vec2<bool>(var_1.b.x, true)), !select(var_1.b, vec2<bool>(false, var_1.b.x), vec2<bool>(var_0.x, var_0.x))), var_1.c);
    var var_2 = Struct_1(countOneBits(-vec3<i32>(1i, firstLeadingBit(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1165i, global1.x, -1i), vec4<i32>(0i, var_1.a.x, global0.a, 1i)))), var_0, var_1.c);
    return -(vec4<i32>(u_input.c, _wgslsmith_mult_i32(min(52288i, var_2.a.x), -50066i), 13504i, global0.a) >> (~(~vec4<u32>(1u, 1u, 29725u, 14362u)) % vec4<u32>(32u)));
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> Struct_2 {
    global3 = array<f32, 9>();
    var var_0 = ~func_3(global2[_wgslsmith_index_u32(0u, 19u)]);
    var var_1 = ~max(abs(firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u))), select(vec4<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(43833u, 66124u, 0u), vec3<u32>(0u, 20110u, 4294967295u)), reverseBits(38734u), ~44794u), ~(~vec4<u32>(4294967295u, 62998u, 6816u, 4294967295u)), select(!vec4<bool>(arg_0, arg_0, arg_0, arg_0), select(vec4<bool>(false, arg_0, true, true), vec4<bool>(true, arg_0, false, false), vec4<bool>(arg_0, arg_0, arg_0, true)), !vec4<bool>(false, true, arg_0, arg_0))));
    var var_2 = abs(vec4<u32>(~_wgslsmith_sub_u32(~1u, _wgslsmith_div_u32(22808u, var_1.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(49149u, var_1.x, 13254u, 66135u), vec4<u32>(var_1.x, 2255u, 21326u, var_1.x)), firstTrailingBit(vec4<u32>(var_1.x, 44641u, 4294967295u, 1u)), vec4<u32>(var_1.x, 1u, 104783u, var_1.x) & vec4<u32>(var_1.x, 1u, 0u, var_1.x)), firstLeadingBit(vec4<u32>(507u, var_1.x, var_1.x, var_1.x))), 86438u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 0u), _wgslsmith_sub_vec2_u32(var_1.xw, vec2<u32>(var_1.x, var_1.x)))));
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1541f, global3[_wgslsmith_index_u32(41995u, 9u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, global0.b))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 9u)], 1042f)))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(466f, 1232f)), _wgslsmith_div_vec2_f32(vec2<f32>(1000f, 2001f), vec2<f32>(-482f, global0.b))))), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b, _wgslsmith_f_op_f32(-global0.b)) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, global3[_wgslsmith_index_u32(var_2.x, 9u)]))), vec2<f32>(global0.b, 1451f)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global3[_wgslsmith_index_u32(34451u, 9u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1089f, arg_1.b))))));
    return Struct_2(~(-16114i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.b, _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(select(var_1.x, 1u, arg_0), 9u)], _wgslsmith_f_op_f32(-global0.b))))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2) -> u32 {
    let var_0 = 11035i;
    var var_1 = Struct_1(vec3<i32>(_wgslsmith_sub_i32(-50005i, countOneBits(select(-1i, -21857i, false))), global0.a << (abs(_wgslsmith_mult_u32(37047u, 0u)) % 32u), _wgslsmith_dot_vec2_i32(global1.zx, -vec2<i32>(global0.a, -1i) << (~vec2<u32>(1u, 32523u) % vec2<u32>(32u)))), select(!select(!arg_0.xy, vec2<bool>(true, true), !arg_0.wy), arg_0.xx, any(!vec2<bool>(true, arg_0.x)) || arg_0.x), vec3<f32>(_wgslsmith_f_op_f32(abs(-1984f)), _wgslsmith_f_op_f32(ceil(-661f)), _wgslsmith_f_op_f32(-global0.b)));
    global1 = var_1.a;
    var var_2 = global2[_wgslsmith_index_u32(12454u, 19u)];
    let var_3 = !(!arg_0.xwz);
    return ~36240u;
}

fn func_1() -> vec2<bool> {
    var var_0 = -940f;
    global3 = array<f32, 9>();
    var var_1 = ~vec4<u32>(~_wgslsmith_sub_u32(select(37747u, 1u, false), ~1u), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(70510u, 0u), vec2<u32>(37626u, 22633u)), 1u) << (~_wgslsmith_sub_u32(0u, 0u) % 32u), select(1u, func_4(vec4<bool>(true, false, true, false), func_2(false, global2[_wgslsmith_index_u32(0u, 19u)])), true), 30484u);
    var var_2 = global2[_wgslsmith_index_u32(~(~firstLeadingBit(max(var_1.x, var_1.x))), 19u)];
    var_1 = vec4<u32>(var_1.x, _wgslsmith_add_u32(~var_1.x, 63896u), _wgslsmith_mod_u32(var_1.x << (~var_1.x % 32u), 0u), var_1.x);
    return vec2<bool>(-_wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.c, global1.x)), ~global1.yx) <= _wgslsmith_dot_vec2_i32(~(~vec2<i32>(20063i, 38154i)), ~_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(u_input.a.x, 1i))), any(vec2<bool>(true, !(global3[_wgslsmith_index_u32(2171u, 9u)] >= var_2.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec2<i32>(abs((global0.a | 2147483647i) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(75872u, 63320u), vec2<u32>(4294967295u, 0u)) % 32u)), -u_input.c);
    let var_1 = ~4294967295u;
    var var_2 = Struct_1(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x ^ global0.a, -39183i, _wgslsmith_div_i32(u_input.c, global0.a)), firstTrailingBit(vec3<i32>(-1i, 1i, global0.a)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(51353u, 1u, var_1), vec3<u32>(55008u, var_1, var_1), vec3<u32>(0u, var_1, var_1)) % vec3<u32>(32u))), 1i, -(~(-u_input.c))), vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 9u)], global3[_wgslsmith_index_u32(var_1, 9u)], global0.b), vec3<f32>(623f, 795f, global3[_wgslsmith_index_u32(var_1, 9u)]))) + vec3<f32>(global0.b, global3[_wgslsmith_index_u32(1u, 9u)], global0.b)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-705f, global3[_wgslsmith_index_u32(0u, 9u)], global0.b) - vec3<f32>(-1000f, global3[_wgslsmith_index_u32(var_1, 9u)], -917f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b, global0.b, 142f) + vec3<f32>(624f, global3[_wgslsmith_index_u32(var_1, 9u)], global3[_wgslsmith_index_u32(51868u, 9u)])))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(3167f, global0.b, global3[_wgslsmith_index_u32(87763u, 9u)]) * vec3<f32>(1000f, global0.b, global3[_wgslsmith_index_u32(20994u, 9u)])) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, 533f, -496f))))));
    let var_3 = Struct_1(abs(-vec3<i32>(reverseBits(2147483647i), global1.x >> (var_1 % 32u), _wgslsmith_mult_i32(0i, var_2.a.x))), select(var_2.b, vec2<bool>(false, var_2.b.x), !(!all(var_2.b))), var_2.c);
    var_2 = var_3;
    let var_4 = Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(max(-431i, ~var_2.a.x), -14152i, _wgslsmith_div_i32(4976i, u_input.b) | abs(var_3.a.x)), ~(-(var_3.a << (vec3<u32>(var_1, 23772u, var_1) % vec3<u32>(32u))))), func_1(), var_3.c);
    let var_5 = firstTrailingBit(reverseBits(var_1));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_2.c.x * -702f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2813f))), -258f))), _wgslsmith_mod_u32(~1u, 4294967295u), ~(-_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.x, 0i), ~global1.yx, min(vec2<i32>(var_3.a.x, var_0.x), var_2.a.zz))));
}

