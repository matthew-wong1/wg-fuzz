struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(-4951i, -1i, 40208i), 1u, 256f);

var<private> global1: array<i32, 7>;

var<private> global2: array<vec3<bool>, 10> = array<vec3<bool>, 10>(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false));

var<private> global3: vec4<f32>;

var<private> global4: vec2<bool>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec3<bool>) -> f32 {
    global3 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.c, global0.c, 1f, _wgslsmith_f_op_f32(f32(-1f) * -243f)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.c, global0.c, 128f, -1910f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, -815f, -567f, global0.c))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.c, arg_1.a.c, -1204f, global3.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, 921f, -209f, arg_1.a.c) + vec4<f32>(global0.c, 2507f, 1105f, -1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-842f, -1440f, global0.c, arg_1.a.c)))), !vec4<bool>(all(select(arg_2.yx, vec2<bool>(global4.x, arg_2.x), arg_2.zx)), true, false, !all(vec4<bool>(true, global4.x, arg_2.x, false)))));
    let var_0 = vec4<bool>(arg_2.x, global4.x, global4.x, arg_2.x);
    var var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(1185f, -929f)), _wgslsmith_f_op_f32(max(614f, 1631f)), _wgslsmith_div_f32(-380f, 671f), 1204f) - vec4<f32>(338f, 1373f, arg_1.a.c, _wgslsmith_f_op_f32(abs(global3.x)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-382f))), _wgslsmith_f_op_f32(f32(-1f) * -231f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1916f, -127f)) - _wgslsmith_f_op_f32(max(global0.c, 683f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3.x, -330f)) * _wgslsmith_f_op_f32(-arg_1.a.c)))), abs(vec4<u32>(9700u, min(69840u, ~35206u), 54767u, global0.b)));
    let var_2 = Struct_2(arg_1.a, select(firstTrailingBit(global0.b), var_1.b.x, !any(vec4<bool>(true, false, global4.x, false)) && false));
    global0 = Struct_1(vec3<i32>(-global1[_wgslsmith_index_u32(4294967295u, 7u)], countOneBits(-global0.a.x ^ 0i), max(abs(2147483647i), arg_0.x)), ~_wgslsmith_clamp_u32((var_1.b.x >> (global0.b % 32u)) & ~51749u, var_2.b, 60439u), var_2.a.c);
    return var_2.a.c;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: i32) -> Struct_2 {
    global4 = vec2<bool>(any(!arg_1.yx), any(vec2<bool>(true, true)));
    let var_0 = ~(~(-u_input.a.x));
    var var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0 - _wgslsmith_f_op_vec4_f32(select(arg_0, arg_0, vec4<bool>(false, arg_1.x, true, false)))), vec4<f32>(global3.x, arg_0.x, -1373f, global3.x))), _wgslsmith_mult_vec4_u32(~vec4<u32>(arg_2.a.b, _wgslsmith_mod_u32(global0.b, arg_2.a.b), arg_2.a.b, ~arg_2.a.b), vec4<u32>(global0.b, _wgslsmith_add_u32(global0.b, 4294967295u), ~_wgslsmith_mod_u32(arg_2.b, global0.b), 4294967295u)));
    var var_2 = arg_2;
    var var_3 = Struct_1(vec3<i32>(firstLeadingBit(global1[_wgslsmith_index_u32(4294967295u, 7u)]), ~firstTrailingBit(var_2.a.a.x & 1i), u_input.a.x), 35989u, _wgslsmith_div_f32(-120f, _wgslsmith_f_op_f32(-1283f + _wgslsmith_f_op_f32(func_3(reverseBits(vec4<i32>(arg_2.a.a.x, 1i, -25142i, 0i)), arg_2, select(arg_1, vec3<bool>(arg_1.x, arg_1.x, false), false))))));
    return arg_2;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_2) -> Struct_1 {
    let var_0 = 44233u;
    var var_1 = arg_1;
    let var_2 = Struct_4(vec4<f32>(-1493f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1821f * 1048f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1033f)), select(arg_0.a.b > 0u, true, any(vec2<bool>(true, false))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.c)), arg_0.a.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.a.c)))), ~vec4<u32>(4294967295u, reverseBits(1u << (arg_0.a.b % 32u)), max(33735u, arg_2.b), reverseBits(var_0)));
    let var_3 = -17986i;
    let var_4 = arg_1;
    return var_1.d;
}

fn func_5(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = !vec4<bool>(true, !all(select(global2[_wgslsmith_index_u32(global0.b, 10u)], vec3<bool>(true, global4.x, true), global2[_wgslsmith_index_u32(global0.b, 10u)])), true, true);
    global3 = _wgslsmith_div_vec4_f32(vec4<f32>(653f, 197f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) * arg_2.a.c), -231f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-310f, arg_2.a.c, -1000f, arg_2.a.c), vec4<f32>(-1076f, global3.x, global3.x, global0.c)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1936f, arg_2.a.c, 454f, global3.x) + vec4<f32>(global0.c, arg_2.a.c, 539f, -154f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1938f, 1000f, -912f, arg_2.a.c) * vec4<f32>(-419f, arg_2.a.c, 139f, -550f)) - vec4<f32>(-1299f, 910f, -1894f, arg_2.a.c)) + vec4<f32>(_wgslsmith_f_op_f32(floor(546f)), arg_2.a.c, _wgslsmith_f_op_f32(arg_2.a.c + global0.c), 450f)))));
    return func_4(Struct_2(Struct_1(vec3<i32>(_wgslsmith_div_i32(1i, -10129i), -1i, -2147483647i), _wgslsmith_mult_u32(arg_2.a.b, arg_2.b) & arg_1.x, 623f), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 1u), vec2<u32>(10237u, 79865u)), 69231u)), Struct_3(global4.x & false, Struct_1(vec3<i32>(-20624i, arg_2.a.a.x, global1[_wgslsmith_index_u32(4294967295u, 7u)]) & min(vec3<i32>(global1[_wgslsmith_index_u32(arg_2.b, 7u)], arg_2.a.a.x, 2147483647i), global0.a), 4294967295u, _wgslsmith_f_op_f32(global0.c - _wgslsmith_f_op_f32(-global3.x))), false, Struct_1(-vec3<i32>(6425i, 25705i, 2147483647i), _wgslsmith_mod_u32(arg_1.x, global0.b) | 39048u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(global0.c - arg_2.a.c)))), abs(0i) ^ ~u_input.b.x), arg_2);
}

fn func_1() -> vec3<i32> {
    global3 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + global0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.x, _wgslsmith_f_op_f32(-global3.x)))), global0.c, _wgslsmith_f_op_f32(2366f * global0.c)), vec4<f32>(-749f, _wgslsmith_f_op_f32(f32(-1f) * -1192f), -661f, 213f), global4.x));
    var var_0 = Struct_2(func_5(~(~(~global0.b)), _wgslsmith_mult_vec2_u32(abs(vec2<u32>(5531u, 0u)), vec2<u32>(2262u, global0.b)) | ((vec2<u32>(global0.b, 1u) & vec2<u32>(9776u, global0.b)) | abs(vec2<u32>(global0.b, global0.b))), Struct_2(func_4(Struct_2(Struct_1(global0.a, global0.b, global0.c), 9435u), Struct_3(global4.x, Struct_1(u_input.b.xzx, global0.b, global0.c), global4.x, Struct_1(vec3<i32>(u_input.a.x, -23285i, global1[_wgslsmith_index_u32(global0.b, 7u)]), global0.b, global0.c), global0.a.x), func_2(vec4<f32>(255f, -528f, -1319f, global3.x), global2[_wgslsmith_index_u32(1u, 10u)], Struct_2(Struct_1(vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(global0.b, 7u)], global1[_wgslsmith_index_u32(global0.b, 7u)]), 36502u, 1436f), global0.b), 0i)), 50637u)), countOneBits(~18920u));
    global1 = array<i32, 7>();
    var var_1 = u_input.a.x;
    var var_2 = firstTrailingBit(firstLeadingBit(firstLeadingBit(vec3<u32>(4294967295u, 38615u, global0.b)) & vec3<u32>(1u, var_0.b, 0u)));
    return min(u_input.a.wyz, u_input.b.www);
}

fn func_6(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: vec3<i32>) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(func_3(_wgslsmith_mod_vec4_i32(vec4<i32>(~(global0.a.x >> (global0.b % 32u)), -(~arg_1.x), -1i, abs(-2986i) | _wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(46563u, 7u)], 2147483647i, -55423i), vec3<i32>(arg_2.x, 17762i, 2147483647i))), u_input.a), func_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1270f, global3.x, 888f, -235f), vec4<f32>(-1266f, 362f, -1642f, 424f), vec4<bool>(arg_0.x, arg_0.x, false, global4.x))) + vec4<f32>(global0.c, global3.x, global0.c, global0.c)))), select(global2[_wgslsmith_index_u32(0u ^ global0.b, 10u)], !global2[_wgslsmith_index_u32(4294967295u, 10u)], any(!arg_0)), func_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1623f, 175f, global0.c, -1066f))))), select(vec3<bool>(true, true, true), select(global2[_wgslsmith_index_u32(global0.b, 10u)], global2[_wgslsmith_index_u32(4294967295u, 10u)], arg_0.x), global2[_wgslsmith_index_u32(global0.b, 10u)]), Struct_2(func_2(vec4<f32>(global0.c, global3.x, -1187f, -203f), vec3<bool>(false, false, arg_0.x), Struct_2(Struct_1(arg_1, 4294967295u, 1744f), 28028u), arg_2.x).a, 138u), -global1[_wgslsmith_index_u32(global0.b << (global0.b % 32u), 7u)]), 1i), !select(!select(global2[_wgslsmith_index_u32(global0.b, 10u)], global2[_wgslsmith_index_u32(global0.b, 10u)], false), select(select(vec3<bool>(global4.x, true, true), global2[_wgslsmith_index_u32(global0.b, 10u)], true), global2[_wgslsmith_index_u32(22071u, 10u)], vec3<bool>(global4.x, global4.x, global4.x)), (53931u | global0.b) <= global0.b)));
    var var_1 = 2147483647i;
    let var_2 = vec2<i32>(~global0.a.x | 1i, _wgslsmith_sub_i32(func_1().x, -18024i));
    var var_3 = countOneBits(abs(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(43642u, global0.b, global0.b, global0.b), vec4<u32>(global0.b, global0.b, global0.b, 4294967295u)), 68480u, ~(global0.b >> (46273u % 32u)))));
    let var_4 = global4.x;
    return StorageBuffer(-2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.xx;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-786f, var_0.x, 422f, -3159f)) - _wgslsmith_div_vec4_f32(vec4<f32>(global0.c, 1000f, global3.x, -415f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global3.x, global3.x, 1773f) * vec4<f32>(-976f, global3.x, var_0.x, global0.c)))))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1211f, var_0.x, var_0.x, -686f) + vec4<f32>(global3.x, var_0.x, 281f, -2104f))))))));
    let x = u_input.a;
    s_output = func_6(!select(select(vec2<bool>(true, global4.x), select(vec2<bool>(global4.x, global4.x), vec2<bool>(global4.x, true), true), select(vec2<bool>(false, false), vec2<bool>(false, global4.x), vec2<bool>(global4.x, true))), vec2<bool>(global4.x, true), !vec2<bool>(false, global4.x)), -_wgslsmith_add_vec3_i32(-vec3<i32>(0i, 65409i, 2147483647i) << (vec3<u32>(global0.b, 0u, 4294967295u) % vec3<u32>(32u)), vec3<i32>(u_input.b.x | u_input.a.x, global0.a.x, global0.a.x)), firstTrailingBit(-func_1()));
}

