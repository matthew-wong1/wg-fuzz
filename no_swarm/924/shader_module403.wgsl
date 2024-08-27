struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(false, Struct_1(1u, -49589i)), Struct_2(false, Struct_1(1u, 1i)), Struct_2(true, Struct_1(51963u, 4956i)), Struct_2(true, Struct_1(1u, -21960i)), Struct_2(true, Struct_1(4294967295u, -28655i)), Struct_2(false, Struct_1(4294967295u, 0i)), Struct_2(false, Struct_1(53582u, 6183i)), Struct_2(true, Struct_1(57785u, 12534i)), Struct_2(true, Struct_1(1u, 18295i)), Struct_2(true, Struct_1(4294967295u, -19262i)), Struct_2(false, Struct_1(4294967295u, -1i)), Struct_2(true, Struct_1(4294967295u, i32(-2147483648))), Struct_2(true, Struct_1(4294967295u, 41879i)), Struct_2(false, Struct_1(25498u, 56142i)), Struct_2(false, Struct_1(104170u, -12128i)));

var<private> global2: array<Struct_2, 27>;

var<private> global3: u32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = Struct_2(true, Struct_1(_wgslsmith_add_u32(_wgslsmith_mod_u32(~28435u, 14811u), u_input.a.x), ~(~0i)));
    global3 = ~0u;
    global3 = global0.x;
    var var_1 = (min(firstLeadingBit(u_input.c.x), _wgslsmith_mult_i32(_wgslsmith_add_i32(-2147483647i, var_0.b.b), u_input.b)) ^ 11509i) & countOneBits(var_0.b.b >> (~global0.x % 32u));
    global3 = 0u;
    return 0u;
}

fn func_2(arg_0: u32) -> Struct_1 {
    global0 = _wgslsmith_div_vec4_u32(min(u_input.a, vec4<u32>(firstLeadingBit(u_input.a.x), _wgslsmith_sub_u32(u_input.a.x, global0.x), ~global0.x, 4294967295u ^ func_3(-1640f))), vec4<u32>(min(~9873u, _wgslsmith_sub_u32(global0.x >> (0u % 32u), 0u)), ~((global0.x | global0.x) & 38314u), 1u & u_input.a.x, 0u));
    var var_0 = !select(select(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), false), vec4<bool>(false, select(true, true, true), true, u_input.a.x <= 73589u), true), vec4<bool>(true, true, true, true), true);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(197f, 1481f, 183f, -952f), vec4<f32>(-271f, -1000f, -669f, 934f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(275f, 747f, -243f, 1275f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1025f, -245f, -1186f, -1971f) - vec4<f32>(660f, -1305f, 948f, 860f)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-923f, -615f, -530f, 659f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-384f, 221f, -1739f, -1264f), vec4<f32>(1f, 1f, 1f, 1f)))));
    var_0 = !vec4<bool>(!((-13766i <= u_input.c.x) || select(var_0.x, true, var_0.x)), var_0.x, !(var_0.x && false) & !var_0.x, var_0.x);
    global0 = u_input.a >> (u_input.a % vec4<u32>(32u));
    return Struct_1(~arg_0, u_input.b);
}

fn func_1(arg_0: u32, arg_1: bool) -> Struct_1 {
    var var_0 = vec3<i32>(11277i, ~_wgslsmith_dot_vec2_i32(~_wgslsmith_mult_vec2_i32(u_input.c.zy, vec2<i32>(-15265i, u_input.c.x)), vec2<i32>(1i, 415i)), -((_wgslsmith_add_i32(u_input.b, u_input.b) ^ (u_input.c.x << (29113u % 32u))) << (global0.x % 32u)));
    global2 = array<Struct_2, 27>();
    global2 = array<Struct_2, 27>();
    var var_1 = Struct_1(4294967295u, var_0.x);
    let var_2 = true;
    return func_2(_wgslsmith_add_u32(max(arg_0, global0.x), firstLeadingBit(~34649u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = global1[_wgslsmith_index_u32(global0.x, 15u)];
    var var_1 = Struct_2(!(!(arg_3.b < _wgslsmith_mod_i32(u_input.b, arg_0.b))), arg_0);
    let var_2 = vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(13170u, 1u, arg_0.a) >> (~select(global0.yxy, vec3<u32>(1u, 4294967295u, 9614u), var_1.a) % vec3<u32>(32u)), u_input.a.wzz & (~global0.wxy | (u_input.a.xxw | global0.wyw))), var_0.b.a);
    global2 = array<Struct_2, 27>();
    var var_3 = global1[_wgslsmith_index_u32(abs(global0.x), 15u)];
    return global2[_wgslsmith_index_u32(11355u ^ (min(19336u, _wgslsmith_sub_u32(~var_1.b.a, _wgslsmith_add_u32(46270u, var_2.x))) ^ u_input.a.x), 27u)];
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = arg_1;
    var var_1 = (arg_0.b.a << (var_0.a % 32u)) | 109190u;
    var var_2 = ~_wgslsmith_sub_vec3_u32(select(~global0.xzz, u_input.a.ywy, true == (arg_0.a || arg_0.a)), vec3<u32>(global0.x, var_0.a, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(arg_0.b.a, arg_0.b.a), u_input.a.x ^ var_0.a, global0.x)));
    let var_3 = 1u;
    global3 = _wgslsmith_mult_u32(abs(func_1(19330u, any(vec3<bool>(false, false, true))).a), ~abs(var_2.x));
    return ~reverseBits(~_wgslsmith_sub_vec4_u32(u_input.a, u_input.a)) | ~(~u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~vec4<u32>(max(56442u, ~(global0.x ^ u_input.a.x)), reverseBits(abs(1u) >> (_wgslsmith_dot_vec3_u32(u_input.a.xwy, vec3<u32>(global0.x, 14037u, u_input.a.x)) % 32u)), ~(4294967295u | _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 25708u, u_input.a.x, u_input.a.x), u_input.a)), 1u);
    let var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(u_input.a.zwy, vec3<u32>(~_wgslsmith_mod_u32(1u, global0.x), _wgslsmith_sub_u32(min(global0.x, 23819u), u_input.a.x), global0.x)), 27u)];
    global0 = func_5(func_4(var_0.b, vec3<f32>(1f, 1f, 1f), u_input.c.xz, func_1(u_input.a.x, any(vec4<bool>(true, var_0.a, false, var_0.a)))), var_0.b);
    global1 = array<Struct_2, 15>();
    var var_1 = Struct_2(!(!var_0.a), func_4(func_1(_wgslsmith_mult_u32(global0.x, ~574u), var_0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1074f, -1641f, 411f) - vec3<f32>(-749f, 418f, -1797f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1009f, 1000f, 1632f)))), -vec2<i32>(1i, reverseBits(var_0.b.b)), Struct_1(global0.x, var_0.b.b)).b);
    var var_2 = select(select(select(select(!vec3<bool>(var_1.a, false, false), !vec3<bool>(true, var_1.a, var_1.a), vec3<bool>(false, var_0.a, true)), vec3<bool>(all(vec3<bool>(false, true, false)), !var_0.a, func_4(var_1.b, vec3<f32>(722f, 172f, 1000f), u_input.c.zx, var_1.b).a), !vec3<bool>(false, var_0.a, false)), select(vec3<bool>(false, !var_1.a, true || var_1.a), vec3<bool>(true, true, any(vec2<bool>(true, true))), !select(vec3<bool>(var_1.a, var_1.a, true), vec3<bool>(true, true, true), var_1.a)), select(var_1.a, all(select(vec4<bool>(false, var_0.a, true, false), vec4<bool>(true, true, var_1.a, true), var_0.a)), any(!vec3<bool>(var_0.a, false, var_1.a)))), select(!select(!vec3<bool>(var_0.a, true, true), select(vec3<bool>(true, true, var_1.a), vec3<bool>(true, var_0.a, true), vec3<bool>(var_0.a, var_0.a, false)), var_1.a), select(vec3<bool>(true, true, 60087u < var_1.b.a), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, var_0.a), vec3<bool>(var_0.a, var_0.a, var_0.a)), !var_0.a), var_0.a), vec3<bool>(all(vec2<bool>(var_0.a, var_0.a)), true, var_0.a));
    var_1 = func_4(func_2(1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-473f, -1000f, 495f) + vec3<f32>(-1513f, -1000f, 512f))))), vec2<i32>(u_input.b, -2147483647i) & u_input.c.zx, Struct_1(38711u, -(select(u_input.b, var_0.b.b, false) | _wgslsmith_div_i32(u_input.b, var_0.b.b))));
    var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, global0.x), 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -184f))))), ~vec2<i32>(~max(9678i, 1i), -var_0.b.b), _wgslsmith_add_vec2_u32(u_input.a.wx, firstTrailingBit(u_input.a.xw << (firstLeadingBit(vec2<u32>(53374u, 56164u)) % vec2<u32>(32u)))), u_input.c.xz);
}

