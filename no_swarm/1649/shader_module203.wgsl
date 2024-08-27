struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec3<bool>,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: i32 = 1i;

var<private> global2: vec4<u32>;

var<private> global3: array<u32, 21>;

var<private> global4: array<i32, 27>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_4) -> i32 {
    global1 = u_input.b.x;
    global4 = array<i32, 27>();
    var var_0 = false;
    let var_1 = arg_1.d.a;
    return arg_0.x;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: i32) -> u32 {
    let var_0 = -(abs(~(-53989i)) | arg_3);
    global2 = _wgslsmith_mod_vec4_u32(~min(abs(vec4<u32>(4294967295u, 9634u, u_input.c, u_input.c)), reverseBits(vec4<u32>(4294967295u, 15843u, u_input.c, arg_0.a))), select(_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(global3[_wgslsmith_index_u32(58936u, 21u)], 49103u, 1u, 23423u)), vec4<u32>(12723u, 0u, global3[_wgslsmith_index_u32(10683u, 21u)], global3[_wgslsmith_index_u32(1u, 21u)])), (vec4<u32>(10721u, 0u, 22772u, 7905u) << (vec4<u32>(global3[_wgslsmith_index_u32(0u, 21u)], global3[_wgslsmith_index_u32(23074u, 21u)], 0u, u_input.c) % vec4<u32>(32u))) | min(vec4<u32>(u_input.c, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 21u)], 21u)], global3[_wgslsmith_index_u32(32228u, 21u)], global2.x), vec4<u32>(arg_0.a, arg_0.a, 1u, u_input.c)), !(-1i > u_input.a.x))) << (vec4<u32>(35346u, firstTrailingBit(1u), 0u, 10648u) % vec4<u32>(32u));
    global2 = vec4<u32>(~(~min(global3[_wgslsmith_index_u32(global2.x, 21u)] << (12726u % 32u), max(4294967295u, global3[_wgslsmith_index_u32(4294967295u, 21u)]))), abs(u_input.c), countOneBits(firstTrailingBit(~abs(global2.x))), ~1u);
    var var_1 = countOneBits(~vec4<u32>(1u, 35220u, ~arg_0.a, _wgslsmith_div_u32(~global3[_wgslsmith_index_u32(u_input.c, 21u)], 1u)));
    global3 = array<u32, 21>();
    return ~(~firstTrailingBit(~(~var_1.x)));
}

fn func_2(arg_0: vec2<bool>) -> bool {
    let var_0 = global0.x;
    global1 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(~u_input.a.zx, vec2<i32>(~2147483647i, global4[_wgslsmith_index_u32(func_4(Struct_3(u_input.c, global0.zwx), Struct_2(vec2<f32>(-1921f, 433f), vec2<bool>(global0.x, false)), vec2<f32>(-1587f, -629f), func_3(u_input.a, Struct_4(Struct_3(global2.x, global0.yww), global2.x, global0.wxx, Struct_2(vec2<f32>(-461f, 1627f), arg_0)))), 27u)])), select(~(~u_input.a.wx), _wgslsmith_add_vec2_i32(vec2<i32>(global4[_wgslsmith_index_u32(u_input.c, 27u)], 0i), vec2<i32>(u_input.a.x, global4[_wgslsmith_index_u32(1u, 27u)])) << ((global2.xw ^ global2.ww) % vec2<u32>(32u)), vec2<bool>(true, true)) & u_input.a.xy);
    var var_1 = vec2<i32>(global4[_wgslsmith_index_u32(reverseBits(select(90968u, max(_wgslsmith_div_u32(u_input.c, 0u), _wgslsmith_clamp_u32(27791u, 69057u, 0u)), !arg_0.x)), 27u)], u_input.b.x);
    global3 = array<u32, 21>();
    let var_2 = min(-(~abs(_wgslsmith_sub_i32(u_input.a.x, 0i))), func_3(vec4<i32>(max(1i, u_input.b.x) ^ (1i << (u_input.c % 32u)), 0i, -952i, _wgslsmith_sub_i32(firstTrailingBit(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 21u)], 21u)], 27u)]), i32(-1i) * -1i)), Struct_4(Struct_3(_wgslsmith_add_u32(1u, 30999u), select(vec3<bool>(global0.x, global0.x, false), global0.xxy, arg_0.x)), 1u, global0.wzw, Struct_2(vec2<f32>(-1614f, -522f), !global0.wx))));
    return true;
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: bool) -> f32 {
    let var_0 = !(!select(vec4<bool>(all(vec2<bool>(false, true)), false, func_2(arg_0.b), all(vec3<bool>(false, true, true))), !select(vec4<bool>(arg_2, false, arg_1, global0.x), vec4<bool>(true, true, global0.x, arg_0.b.x), vec4<bool>(true, arg_0.b.x, arg_1, true)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(u_input.c, 21u)], 34788u, 27308u), vec4<u32>(29684u, 4294967295u, 1u, global3[_wgslsmith_index_u32(56206u, 21u)])) == ~global3[_wgslsmith_index_u32(global2.x, 21u)]));
    let var_1 = vec2<bool>(true, true);
    var var_2 = Struct_4(Struct_3(106632u, !select(var_0.wzy, !vec3<bool>(arg_2, global0.x, true), select(var_0.xzz, var_0.yxz, vec3<bool>(var_1.x, arg_1, arg_1)))), 19966u, vec3<bool>(((u_input.c ^ 1u) >> (4294967295u % 32u)) < ~74886u, true, func_2(var_0.zx)), arg_0);
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(412f * var_2.d.a.x), arg_0.a.x, _wgslsmith_f_op_f32(step(-564f, -295f)), arg_0.a.x))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-494f, var_2.d.a.x, 1252f, -1218f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1580f, 1088f, 2173f, -1000f) + vec4<f32>(1000f, -1358f, var_2.d.a.x, -169f)))))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-326f, 1774f, var_2.d.a.x, 1341f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1463f, arg_0.a.x, -705f, arg_0.a.x) * vec4<f32>(-1000f, -381f, -1000f, arg_0.a.x)), !var_2.d.b.x))))));
    global0 = vec4<bool>(!var_2.c.x, all(var_0), arg_2, true);
    return -365f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 0i;
    global4 = array<i32, 27>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(303f)) + _wgslsmith_f_op_f32(func_1(Struct_2(vec2<f32>(-775f, 446f), global0.yy), global0.x, global0.x))) + _wgslsmith_f_op_f32(-993f + _wgslsmith_f_op_f32(func_1(Struct_2(vec2<f32>(134f, 1049f), global0.zx), global0.x, true)))), _wgslsmith_f_op_f32(round(-1000f)), 1591f));
    global2 = _wgslsmith_div_vec4_u32(max(vec4<u32>(33495u, ~func_4(Struct_3(34360u, global0.wyx), Struct_2(var_0.zz, global0.xx), var_0.xx, -1i), _wgslsmith_div_u32(global3[_wgslsmith_index_u32(u_input.c, 21u)], ~1u), _wgslsmith_clamp_u32(~1u, 21528u, ~u_input.c)), ~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.c, global2.x, 4294967295u), ~vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2.x, 21u)], 21u)], global3[_wgslsmith_index_u32(global2.x, 21u)], global2.x, global3[_wgslsmith_index_u32(0u, 21u)]))), vec4<u32>(reverseBits(0u), ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(global2.zz, vec2<u32>(4294967295u, 8470u)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(11193u, 57066u))), 1u, ~(~(~u_input.c))));
    global4 = array<i32, 27>();
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -307f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_0.x)))), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(var_0.x - var_0.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, -1000f, -237f), vec3<f32>(463f, -155f, -1539f))), vec3<f32>(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, global0.x)), -1000f, -152f)) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, -453f, var_0.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-607f, -1575f, -811f), vec3<f32>(var_0.x, var_0.x, var_0.x), global0.x))))))));
    global1 = -65025i;
    global3 = array<u32, 21>();
    var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_1), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2419f + 181f), _wgslsmith_f_op_f32(floor(var_1.x)))), 1365f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-447f - var_1.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(4901i, abs(firstLeadingBit(vec4<u32>(u_input.c, 11442u, 4294967295u, u_input.c))) >> (vec4<u32>(0u, u_input.c, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, global2.x), global2.zz & global2.yz), global3[_wgslsmith_index_u32(u_input.c, 21u)]) % vec4<u32>(32u)), vec4<i32>(42689i, _wgslsmith_add_i32(1i, -12956i), _wgslsmith_div_i32(_wgslsmith_sub_i32(-8788i, ~(-27489i)), _wgslsmith_dot_vec4_i32(min(u_input.a, u_input.a), u_input.a)), abs(~_wgslsmith_add_i32(global4[_wgslsmith_index_u32(4294967295u, 27u)], u_input.a.x))), firstLeadingBit(u_input.a.zyx), vec2<u32>(34249u, ~0u));
}

