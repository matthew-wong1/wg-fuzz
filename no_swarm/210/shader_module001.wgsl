struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: vec2<f32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10>;

var<private> global1: vec4<bool>;

var<private> global2: Struct_2;

var<private> global3: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(Struct_1(false, false, -22967i, vec2<f32>(429f, 1785f), vec3<f32>(-254f, -2794f, 972f)), Struct_1(true, false, 1i, vec2<f32>(-799f, -923f), vec3<f32>(1754f, -505f, 1000f)), vec2<u32>(7702u, 93173u)), Struct_2(Struct_1(false, true, 1i, vec2<f32>(333f, 891f), vec3<f32>(842f, 382f, 1750f)), Struct_1(true, false, 25390i, vec2<f32>(-1074f, 2156f), vec3<f32>(116f, 522f, -637f)), vec2<u32>(1u, 97633u)), Struct_2(Struct_1(false, false, -4770i, vec2<f32>(1172f, 397f), vec3<f32>(608f, -1102f, 796f)), Struct_1(true, true, i32(-2147483648), vec2<f32>(-1000f, 1441f), vec3<f32>(-1400f, -171f, 1064f)), vec2<u32>(105306u, 68742u)), Struct_2(Struct_1(true, true, 0i, vec2<f32>(1514f, 1169f), vec3<f32>(421f, 1138f, -472f)), Struct_1(false, true, 0i, vec2<f32>(809f, 953f), vec3<f32>(-1318f, -1206f, -334f)), vec2<u32>(36750u, 40568u)), Struct_2(Struct_1(false, false, i32(-2147483648), vec2<f32>(1042f, -215f), vec3<f32>(-2128f, 1576f, -679f)), Struct_1(true, true, -1i, vec2<f32>(-228f, -1000f), vec3<f32>(146f, -1349f, 240f)), vec2<u32>(0u, 4294967295u)), Struct_2(Struct_1(false, true, i32(-2147483648), vec2<f32>(-332f, 851f), vec3<f32>(-821f, -1000f, 234f)), Struct_1(false, true, 0i, vec2<f32>(721f, 954f), vec3<f32>(416f, -257f, -231f)), vec2<u32>(13232u, 19080u)));

var<private> global4: array<Struct_3, 23>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_div_vec2_u32(~_wgslsmith_clamp_vec2_u32(countOneBits(global2.c | vec2<u32>(global2.c.x, 0u)), vec2<u32>(64697u, firstTrailingBit(1u)), ~(vec2<u32>(4294967295u, global2.c.x) & global2.c)), global2.c);
    let var_1 = global2.c;
    let var_2 = Struct_1(~_wgslsmith_mult_u32(1u, var_1.x ^ 24578u) <= global2.c.x, global1.x, global2.a.c, global2.b.d, global2.a.e);
    global2 = Struct_2(Struct_1(true, global2.a.d.x > 629f, ~u_input.b.x, vec2<f32>(_wgslsmith_f_op_f32(abs(var_2.e.x)), -449f), global2.b.e), global2.b, global2.c);
    global4 = array<Struct_3, 23>();
    return _wgslsmith_mult_i32(_wgslsmith_add_i32(abs(abs(-2850i << (0u % 32u))), i32(-1i) * -62761i), _wgslsmith_mod_i32(firstTrailingBit(2147483647i) ^ _wgslsmith_mod_i32(u_input.b.x, 49097i), _wgslsmith_clamp_i32(u_input.c, 1i, global2.b.c) >> (max(global2.c.x, var_0.x) % 32u)) << (66168u % 32u));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<i32>) -> bool {
    let var_0 = func_3();
    global2 = global3[_wgslsmith_index_u32(4294967295u, 6u)];
    var var_1 = vec3<i32>(~(-2147483647i), -2147483647i, arg_1.x);
    global1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a.e.x), global2.a.e.x), global2.a.e.x));
    return _wgslsmith_dot_vec2_i32(u_input.b.xz, var_1.zy) == ((firstTrailingBit(var_1.x >> (global2.c.x % 32u)) >> (~10525u % 32u)) | _wgslsmith_sub_i32(global2.a.c, _wgslsmith_sub_i32(global2.a.c, abs(-18376i))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: u32, arg_3: vec2<u32>) -> Struct_1 {
    global4 = array<Struct_3, 23>();
    var var_0 = vec4<i32>(0i, ~(-select(func_3(), global2.b.c, false)), arg_1.c.c, arg_1.c.c);
    var var_1 = Struct_2(arg_1.c, global2.b, _wgslsmith_add_vec2_u32(arg_1.a & arg_1.a, ~(~arg_1.a)));
    global3 = array<Struct_2, 6>();
    global1 = select(!select(select(select(vec4<bool>(arg_0.a, global2.b.b, arg_0.b, var_1.b.b), vec4<bool>(false, arg_0.a, var_1.b.a, true), true), select(vec4<bool>(global2.b.a, true, true, false), vec4<bool>(var_1.a.a, true, arg_0.b, false), var_1.b.b), !vec4<bool>(false, arg_0.b, true, var_1.a.a)), vec4<bool>(true, true, true, true), vec4<bool>(true, var_1.a.a | true, true, var_1.a.b && arg_0.a)), select(select(!(!vec4<bool>(global1.x, arg_1.d.a.a, arg_1.c.b, false)), vec4<bool>(true | global1.x, !global1.x, global2.a.b, var_1.a.a), (var_1.a.d.x == -264f) | global2.b.a), select(!select(vec4<bool>(true, arg_0.a, arg_1.c.a, false), vec4<bool>(global2.b.b, global1.x, global2.a.a, arg_0.b), var_1.a.a), select(select(vec4<bool>(false, true, global2.a.a, global2.b.b), vec4<bool>(false, arg_0.b, true, global1.x), true), select(vec4<bool>(arg_0.b, true, var_1.a.b, false), vec4<bool>(var_1.a.b, true, arg_1.d.b.a, false), vec4<bool>(global2.b.a, global1.x, false, true)), false), var_1.a.b), !vec4<bool>(all(vec4<bool>(arg_1.d.b.a, global2.a.b, global1.x, global2.a.a)), true, false, all(vec4<bool>(false, false, true, true)))), vec4<bool>(select(25751i >> (1u % 32u), firstTrailingBit(arg_1.d.b.c), select(false, false, true)) == ~_wgslsmith_mult_i32(-1i, var_0.x), global2.c.x > 1u, !(!arg_1.c.b), arg_0.a));
    return Struct_1(any(vec2<bool>(global1.x, global2.b.a)), global2.c.x > (((1u ^ arg_2) & max(4294967295u, 4294967295u)) | max(_wgslsmith_sub_u32(1u, arg_2), ~arg_1.d.c.x)), -2147483647i | var_1.b.c, _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.d.x, _wgslsmith_f_op_f32(trunc(arg_1.c.e.x))), arg_0.d), vec2<f32>(-298f, -1271f)), arg_0.e);
}

fn func_1(arg_0: u32, arg_1: vec2<i32>, arg_2: vec2<i32>, arg_3: vec2<u32>) -> Struct_3 {
    let var_0 = func_4(Struct_1(func_2(vec4<bool>(true, false != global1.x, false, global1.x), ~(~u_input.b)), true, abs(45487i), global2.b.d, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(sign(-428f)), _wgslsmith_f_op_f32(f32(-1f) * -746f), _wgslsmith_f_op_f32(max(global2.b.d.x, global2.a.d.x)))))), Struct_4(arg_3, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2.a.e.x, global2.a.e.x), _wgslsmith_f_op_vec2_f32(select(global2.b.d, vec2<f32>(1225f, global2.b.d.x), global2.a.a))))), Struct_1(all(select(global1.wyx, vec3<bool>(global1.x, global1.x, false), global2.b.a)), _wgslsmith_f_op_f32(1626f + 1732f) >= _wgslsmith_f_op_f32(round(1000f)), countOneBits(firstTrailingBit(u_input.b.x)), vec2<f32>(-1077f, global2.a.e.x), global2.b.e), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, ~global2.c.x, global2.c.x), ~_wgslsmith_mult_vec3_u32(vec3<u32>(7658u, 70715u, 38778u), vec3<u32>(4294967295u, 13931u, arg_3.x))), 10u)]), arg_3.x | (~(global2.c.x & 24619u) ^ (~arg_0 >> (0u % 32u))), arg_3);
    var var_1 = global3[_wgslsmith_index_u32(global2.c.x, 6u)];
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(197f, -129f))))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.b.d.x)) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.d.x))))));
    global4 = array<Struct_3, 23>();
    var var_3 = var_0.c;
    return Struct_3(select(~_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(39628u, 19941u, arg_3.x), vec3<u32>(14949u, 1u, 39966u)), vec3<u32>(arg_0, arg_0, var_1.c.x)), ~vec3<u32>(var_1.c.x, arg_0 | 4294967295u, arg_3.x & var_1.c.x), global1.x), _wgslsmith_f_op_f32(716f * func_4(func_4(func_4(var_1.a, Struct_4(global2.c, vec2<f32>(var_1.a.e.x, 1100f), var_1.a, global0[_wgslsmith_index_u32(arg_0, 10u)]), 0u, global2.c), Struct_4(vec2<u32>(39417u, arg_0), vec2<f32>(global2.b.e.x, -147f), Struct_1(global2.a.a, var_1.a.a, u_input.b.x, global2.b.d, var_0.e), global0[_wgslsmith_index_u32(global2.c.x, 10u)]), global2.c.x, global2.c), Struct_4(select(var_1.c, vec2<u32>(global2.c.x, var_1.c.x), true), func_4(global2.b, Struct_4(global2.c, var_1.a.e.zx, var_0, global0[_wgslsmith_index_u32(arg_0, 10u)]), 47665u, global2.c).e.zx, func_4(Struct_1(false, false, arg_2.x, vec2<f32>(var_0.e.x, -1000f), vec3<f32>(global2.a.e.x, -1255f, 751f)), Struct_4(global2.c, vec2<f32>(-306f, 984f), global2.b, global0[_wgslsmith_index_u32(0u, 10u)]), arg_0, global2.c), global0[_wgslsmith_index_u32(reverseBits(global2.c.x), 10u)]), ~_wgslsmith_sub_u32(arg_0, global2.c.x), _wgslsmith_sub_vec2_u32(arg_3, vec2<u32>(global2.c.x, global2.c.x)) | countOneBits(vec2<u32>(arg_0, global2.c.x))).d.x));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<u32>) -> u32 {
    global0 = array<Struct_2, 10>();
    global2 = global3[_wgslsmith_index_u32(0u, 6u)];
    let var_0 = -(~(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 1i, u_input.c, 1i), vec4<i32>(u_input.d, 43739i, -1i, u_input.b.x)), -vec4<i32>(-16734i, 1i, 2147483647i, global2.a.c)) >> ((firstLeadingBit(vec4<u32>(22916u, arg_1.x, global2.c.x, 20474u)) & ~vec4<u32>(27085u, 32653u, arg_1.x, 0u)) % vec4<u32>(32u))));
    var var_1 = global2.b;
    var_1 = global2.a;
    return reverseBits(~arg_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.b.a;
    let var_1 = countOneBits(func_5(func_1(0u, _wgslsmith_div_vec2_i32(~u_input.b.zy, -u_input.b.zy), u_input.b.xz, _wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(global2.c.x, 4294967295u)), global2.c)), min(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, 53842u, 1u), vec4<u32>(global2.c.x, global2.c.x, global2.c.x, global2.c.x), vec4<u32>(global2.c.x, 100235u, global2.c.x, 21466u)) ^ vec4<u32>(global2.c.x, global2.c.x, 5287u, global2.c.x), ~vec4<u32>(26831u, global2.c.x, 0u, 538u) & select(vec4<u32>(global2.c.x, global2.c.x, global2.c.x, global2.c.x), vec4<u32>(1u, 0u, 1u, 0u), false))));
    let var_2 = Struct_5(_wgslsmith_clamp_vec3_i32(u_input.b, max(~vec3<i32>(u_input.d, -7363i, 12962i), countOneBits(vec3<i32>(global2.a.c, global2.b.c, 2147483647i))), abs(u_input.b) << (~min(vec3<u32>(4294967295u, global2.c.x, global2.c.x), vec3<u32>(var_1, var_1, global2.c.x)) % vec3<u32>(32u))), min(_wgslsmith_mod_vec4_u32(~vec4<u32>(global2.c.x, var_1, 4294967295u, var_1), vec4<u32>(1u, firstLeadingBit(global2.c.x), global2.c.x, _wgslsmith_mult_u32(var_1, global2.c.x))), _wgslsmith_clamp_vec4_u32(vec4<u32>(~0u, _wgslsmith_div_u32(var_1, global2.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(17243u, global2.c.x, global2.c.x, var_1), vec4<u32>(15856u, 68498u, var_1, 1u)), global2.c.x), ~(~vec4<u32>(87867u, var_1, global2.c.x, var_1)), vec4<u32>(1u, ~2546u, 4276u, 88040u))), Struct_4(vec2<u32>(~4294967295u, ~4294967295u), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(global2.b.e.xy, _wgslsmith_f_op_vec2_f32(-global2.a.e.yz))))), Struct_1(global1.x, true, u_input.d, vec2<f32>(global2.b.d.x, -422f), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(global2.a.e - vec3<f32>(1234f, 678f, -226f)), _wgslsmith_f_op_vec3_f32(-global2.a.e)))), global3[_wgslsmith_index_u32(~global2.c.x, 6u)]));
    var var_3 = Struct_2(var_2.c.d.b, func_4(global2.b, Struct_4(vec2<u32>(abs(11750u), ~4294967295u), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2.c.b.x, global2.a.e.x))), Struct_1(func_2(vec4<bool>(global1.x, false, false, var_2.c.c.b), var_2.a), any(vec4<bool>(false, global2.a.a, true, false)), 1i, vec2<f32>(var_2.c.b.x, global2.b.d.x), _wgslsmith_f_op_vec3_f32(-global2.b.e)), global0[_wgslsmith_index_u32(1u, 10u)]), func_5(func_1(_wgslsmith_mod_u32(global2.c.x, 15405u), var_2.a.xz, var_2.a.xy, global2.c), abs(_wgslsmith_div_vec4_u32(vec4<u32>(1u, var_1, 14498u, var_2.b.x), vec4<u32>(44819u, var_2.b.x, var_1, var_1)))), (vec2<u32>(20707u, var_2.c.a.x) | firstTrailingBit(var_2.b.zy)) & var_2.c.d.c), global2.c);
    let var_4 = _wgslsmith_f_op_f32(1602f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.c.e.x))));
    var var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_4, var_4, var_2.c.b.x, var_2.c.d.b.e.x)))))));
    let var_6 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(434f - global2.b.e.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_3.b.d.x, var_4))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_2.c.d.b.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -845f)))), var_3.b.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_5.x)) * -167f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(func_1(39655u, var_2.a.zy, var_2.a.xy, vec2<u32>(11402u, 15245u)).a.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(44653u, 23222u), global2.c) % 32u), ~abs(var_3.c.x)) << (_wgslsmith_dot_vec2_u32(select(_wgslsmith_mult_vec2_u32(vec2<u32>(var_2.b.x, var_2.c.a.x), global2.c), ~vec2<u32>(0u, 0u), global1.yx), firstLeadingBit(func_1(global2.c.x, u_input.b.xx, u_input.b.yz, global2.c).a.xx)) % 32u), max(-10438i, 63354i), 1999f);
}

