struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: vec4<u32>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: i32,
    d: Struct_4,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_5, 28>;

var<private> global2: i32;

var<private> global3: array<vec4<f32>, 18>;

var<private> global4: array<vec4<u32>, 27>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: Struct_3, arg_3: Struct_1) -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(10937u, 28u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(var_0.d.a)), var_0.b.a));
    var var_2 = ~(-_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a.xx, _wgslsmith_clamp_vec2_i32(var_0.b.b, vec2<i32>(-17460i, var_0.b.b.x), vec2<i32>(arg_3.b.x, 2147483647i))), reverseBits(vec2<i32>(arg_3.b.x, 1i))));
    var var_3 = var_0.b.b;
    let var_4 = ~arg_3.b;
    return arg_0;
}

fn func_1(arg_0: bool, arg_1: Struct_5, arg_2: vec2<f32>, arg_3: i32) -> vec4<i32> {
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1127f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-906f, 325f))))))));
    global1 = array<Struct_5, 28>();
    let var_0 = 307f;
    var var_1 = vec2<i32>(u_input.a.x, ~(~(arg_1.c >> (0u % 32u))) | -1i);
    let var_2 = Struct_3(~vec4<i32>(firstTrailingBit(~2147483647i), (u_input.a.x & 2147483647i) << (_wgslsmith_div_u32(arg_1.a, arg_1.a) % 32u), ~(arg_1.c << (0u % 32u)), select(-1i & arg_3, max(var_1.x, 2147483647i), arg_1.b.c.x)), arg_0, countOneBits(vec4<u32>(0u, ~(~25761u), _wgslsmith_clamp_u32(firstTrailingBit(arg_1.a), 51282u, func_2(arg_1.a, var_0, Struct_3(vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, var_1.x), arg_0, global4[_wgslsmith_index_u32(arg_1.a, 27u)], vec2<bool>(arg_1.b.c.x, false)), Struct_1(arg_1.b.c.x, vec2<i32>(arg_1.b.b.x, -30384i), vec2<u32>(arg_1.a, arg_1.a)))), ~(arg_1.a >> (arg_1.a % 32u)))), !arg_1.b.c);
    return _wgslsmith_add_vec4_i32(-vec4<i32>(i32(-1i) * -1i, -47426i & u_input.a.x, var_2.a.x, _wgslsmith_mult_i32(arg_1.d.b.x, u_input.a.x)), var_2.a) & -_wgslsmith_sub_vec4_i32(~firstTrailingBit(vec4<i32>(arg_1.d.b.x, -1i, 2147483647i, 9019i)), countOneBits(var_2.a >> (vec4<u32>(62111u, var_2.c.x, 65557u, 0u) % vec4<u32>(32u))));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: Struct_4, arg_3: vec2<f32>) -> bool {
    let var_0 = global1[_wgslsmith_index_u32(~0u, 28u)];
    var var_1 = firstTrailingBit(6016i);
    let var_2 = _wgslsmith_mult_i32(func_1(_wgslsmith_f_op_f32(floor(130f)) != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1000f)))), global1[_wgslsmith_index_u32(var_0.a, 28u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(467f, var_0.b.a.x), _wgslsmith_f_op_f32(-arg_1.a.x))), u_input.a.x).x, ~(-2147483647i));
    var var_3 = ~(-54964i);
    var_3 = -var_2;
    return !((-firstLeadingBit(10665i) ^ -var_2) != abs(i32(-1i) * -2584i));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: f32, arg_3: vec4<u32>) -> i32 {
    let var_0 = arg_3.x;
    var var_1 = arg_3.xz << (abs(~vec2<u32>(~var_0, arg_3.x >> (arg_3.x % 32u))) % vec2<u32>(32u));
    global3 = array<vec4<f32>, 18>();
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~abs(~func_1(true, Struct_5(1u, Struct_4(vec3<f32>(-161f, -2390f, -666f), vec2<i32>(u_input.a.x, u_input.a.x), vec2<bool>(true, false)), u_input.a.x, Struct_4(vec3<f32>(135f, 806f, -1200f), u_input.a.zy, vec2<bool>(true, false)), -37216i), vec2<f32>(-1293f, 1013f), 2147483647i)) ^ func_1(any(vec3<bool>(true, true, true)), Struct_5(0u, Struct_4(vec3<f32>(728f, -284f, -557f), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.xz, u_input.a.xz), vec2<bool>(true, true)), 1i ^ u_input.a.x, Struct_4(vec3<f32>(979f, -667f, 296f), vec2<i32>(24719i, u_input.a.x), select(vec2<bool>(false, true), vec2<bool>(true, false), true)), _wgslsmith_mult_i32(1i, min(-19887i, u_input.a.x))), _wgslsmith_div_vec2_f32(vec2<f32>(-408f, _wgslsmith_f_op_f32(-309f * -1000f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(202f, -299f), vec2<f32>(-450f, 906f)) - vec2<f32>(-938f, 339f))), u_input.a.x);
    var var_1 = var_0.x;
    let var_2 = func_4(Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(720f)), _wgslsmith_f_op_f32(588f - -728f), _wgslsmith_f_op_f32(353f - 1796f))), u_input.a.zy, vec2<bool>(true, all(vec2<bool>(true, false)) && true)), select(vec2<bool>(true, true), vec2<bool>(true && all(vec3<bool>(true, true, false)), func_3(~45377i, Struct_4(vec3<f32>(1000f, 305f, 753f), vec2<i32>(var_0.x, -1i), vec2<bool>(true, true)), Struct_4(vec3<f32>(2372f, 1083f, -1202f), u_input.a.zz, vec2<bool>(false, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(190f, 1000f)))), vec2<bool>(all(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(617f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1283f))), true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -557f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-645f - -987f), _wgslsmith_f_op_f32(f32(-1f) * -575f))))))), global4[_wgslsmith_index_u32(12563u, 27u)] | ~select(countOneBits(vec4<u32>(481u, 4294967295u, 0u, 0u)), select(global4[_wgslsmith_index_u32(4294967295u, 27u)], global4[_wgslsmith_index_u32(1112u, 27u)], true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true))));
    global2 = abs(~firstLeadingBit(~func_4(Struct_4(vec3<f32>(-512f, -1393f, 943f), vec2<i32>(u_input.a.x, 17624i), vec2<bool>(true, false)), vec2<bool>(true, false), -135f, vec4<u32>(62506u, 4294967295u, 0u, 1u))));
    global2 = func_1(false, Struct_5(_wgslsmith_dot_vec4_u32(max(vec4<u32>(0u, 42146u, 58778u, 34639u), global4[_wgslsmith_index_u32(0u, 27u)]) | global4[_wgslsmith_index_u32(~0u, 27u)], _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 36180u, 110808u, 4294967295u), abs(vec4<u32>(24700u, 1u, 16334u, 0u)), firstLeadingBit(global4[_wgslsmith_index_u32(1u, 27u)]))), Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1583f, -480f, 1835f)), -var_0.wz, vec2<bool>(true, true)), firstTrailingBit(var_0.x), Struct_4(vec3<f32>(_wgslsmith_div_f32(-617f, 1636f), -739f, _wgslsmith_f_op_f32(f32(-1f) * -326f)), -vec2<i32>(var_2, u_input.a.x), vec2<bool>(all(vec3<bool>(false, false, false)), true)), var_0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-258f)), _wgslsmith_f_op_f32(sign(360f))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(486f, 2489f), vec2<f32>(-805f, -1018f))))))), countOneBits(-32179i)).x;
    var var_3 = u_input.a.x;
    global4 = array<vec4<u32>, 27>();
    let var_4 = select(_wgslsmith_sub_vec4_u32(~vec4<u32>(min(0u, 4294967295u), ~10768u, ~84997u, ~0u), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 0u), 27u)], global4[_wgslsmith_index_u32(1u, 27u)]), ~global4[_wgslsmith_index_u32(~4294967295u, 27u)], firstTrailingBit(_wgslsmith_add_vec4_u32(global4[_wgslsmith_index_u32(22724u, 27u)], vec4<u32>(31995u, 1u, 0u, 4294967295u))))), _wgslsmith_sub_vec4_u32((global4[_wgslsmith_index_u32(~12874u, 27u)] >> (global4[_wgslsmith_index_u32(~0u, 27u)] % vec4<u32>(32u))) ^ ~vec4<u32>(50866u, 31758u, 4294967295u, 4294967295u), vec4<u32>(1u, ~countOneBits(41559u), ~98u, reverseBits(_wgslsmith_div_u32(0u, 49406u)))), !(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true)));
    var var_5 = Struct_1(true & !(!(var_4.x < var_4.x)), select(_wgslsmith_clamp_vec2_i32(min(vec2<i32>(1i, u_input.a.x), firstTrailingBit(u_input.a.yx)), select(vec2<i32>(var_2, -5468i), vec2<i32>(var_0.x, u_input.a.x), vec2<bool>(true, true)), ~(u_input.a.zz << (vec2<u32>(69136u, var_4.x) % vec2<u32>(32u)))), ~min(var_0.wz, vec2<i32>(u_input.a.x, var_2)) << (~firstLeadingBit(var_4.zy) % vec2<u32>(32u)), !(~2147483647i >= var_0.x)), vec2<u32>(~countOneBits(_wgslsmith_dot_vec4_u32(global4[_wgslsmith_index_u32(var_4.x, 27u)], var_4)), ~max(~122569u, var_4.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, vec2<u32>(var_5.c.x, ~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(32427u, var_4.x, var_4.x, var_5.c.x)), ~global4[_wgslsmith_index_u32(75045u, 27u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(721f, -1000f)) - _wgslsmith_f_op_f32(-354f * -2399f))));
}

