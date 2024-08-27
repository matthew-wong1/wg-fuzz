struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec2<i32>, 5> = array<vec2<i32>, 5>(vec2<i32>(1i, 0i), vec2<i32>(-1i, 0i), vec2<i32>(21822i, 40600i), vec2<i32>(2147483647i, 0i), vec2<i32>(1i, -2773i));

var<private> global2: Struct_2;

var<private> global3: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec2<f32>(-947f, -130f), vec2<i32>(119i, -7798i)), Struct_1(vec2<f32>(1308f, -211f), vec2<i32>(-42254i, 1i)), Struct_1(vec2<f32>(343f, 844f), vec2<i32>(i32(-2147483648), -3510i)), Struct_1(vec2<f32>(1274f, 823f), vec2<i32>(1i, 2147483647i)), Struct_1(vec2<f32>(1369f, -161f), vec2<i32>(-1i, 2147483647i)), Struct_1(vec2<f32>(1807f, 423f), vec2<i32>(1i, -85375i)), Struct_1(vec2<f32>(-1953f, -1415f), vec2<i32>(2147483647i, 0i)), Struct_1(vec2<f32>(1278f, 427f), vec2<i32>(i32(-2147483648), i32(-2147483648))));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: f32, arg_3: Struct_1) -> i32 {
    var var_0 = reverseBits(-(~arg_1.x) ^ u_input.b.x) >> ((~_wgslsmith_dot_vec4_u32(vec4<u32>(74963u, 74432u, 10566u, 29786u), ~vec4<u32>(4294967295u, 1u, 3081u, 19036u)) ^ reverseBits(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(10039u, 4294967295u), vec2<u32>(75267u, 14182u), vec2<u32>(1u, 0u)), vec2<u32>(15468u, 0u)))) % 32u);
    global3 = array<Struct_1, 8>();
    var var_1 = select(_wgslsmith_mult_vec4_i32(u_input.b, firstTrailingBit(abs(vec4<i32>(arg_3.b.x, arg_1.x, -1i, global2.b.b.x)))), u_input.b | (arg_1 >> (vec4<u32>(1u, abs(71181u), ~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(30563u, 1u), vec2<u32>(4294967295u, 15270u))) % vec4<u32>(32u))), vec4<bool>(global2.c == (_wgslsmith_dot_vec2_i32(arg_3.b, vec2<i32>(1321i, arg_3.b.x)) >> (~78640u % 32u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 72895u), vec3<u32>(14288u, 14817u, 0u)) != 1u, false, false));
    global3 = array<Struct_1, 8>();
    global1 = array<vec2<i32>, 5>();
    return -abs(2732i & _wgslsmith_add_i32(~global2.c, _wgslsmith_div_i32(arg_3.b.x, var_1.x)));
}

fn func_2(arg_0: bool, arg_1: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(465f, global2.b.a.x) - global2.b.a)), _wgslsmith_f_op_vec2_f32(global2.a.a * _wgslsmith_f_op_vec2_f32(ceil(global2.a.a))), true)), _wgslsmith_mod_vec2_i32(-(vec2<i32>(global2.a.b.x, u_input.a) << (vec2<u32>(22786u, 4294967295u) % vec2<u32>(32u))), global1[_wgslsmith_index_u32(~96527u, 5u)])), global2.b, (-1i ^ _wgslsmith_div_i32(func_3(vec2<f32>(171f, global2.a.a.x), u_input.b, global2.a.a.x, global3[_wgslsmith_index_u32(4294967295u, 8u)]), _wgslsmith_clamp_i32(global2.a.b.x, global2.c, u_input.b.x))) ^ _wgslsmith_div_i32(global2.a.b.x, 33151i));
    var var_1 = var_0.b.a.x;
    let var_2 = vec2<u32>(1u, 1u) << (countOneBits(~vec2<u32>(reverseBits(4294967295u), 1u)) % vec2<u32>(32u));
    var var_3 = global2.a;
    let var_4 = u_input.b.xzw >> (firstTrailingBit(~_wgslsmith_mult_vec3_u32(select(vec3<u32>(4294967295u, var_2.x, 0u), vec3<u32>(64879u, var_2.x, var_2.x), arg_0), _wgslsmith_sub_vec3_u32(vec3<u32>(23309u, var_2.x, 4294967295u), vec3<u32>(1u, var_2.x, var_2.x)))) % vec3<u32>(32u));
    return Struct_2(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a.x, 898f)))), var_0.b.a), vec2<i32>(-1i) * -abs(vec2<i32>(-2147483647i, 2147483647i))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.b.a.x, 943f), vec2<f32>(var_3.a.x, 1206f))) + global2.b.a) - vec2<f32>(-282f, _wgslsmith_div_f32(1497f, var_0.a.a.x))), ~(-max(global1[_wgslsmith_index_u32(62184u, 5u)], u_input.b.xx))), ~var_3.b.x);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    global2 = arg_2;
    global2 = func_2((_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_1.a.x, 973f)))) <= _wgslsmith_f_op_f32(-arg_3.a.x)) | false, vec3<bool>(true, true, all(vec3<bool>(all(vec3<bool>(true, true, false)), true, false))));
    var var_0 = func_2(all(!vec3<bool>(all(vec4<bool>(false, false, true, false)), true, true)), vec3<bool>(true, true, any(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)))));
    var var_1 = vec3<f32>(448f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-arg_1.a.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -416f))));
    let var_2 = vec3<u32>(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(48046u, 74917u), vec2<u32>(71482u, 9625u)), vec2<u32>(4294967295u, 12529u)), _wgslsmith_div_u32(firstTrailingBit(42405u), 1u), 0u), 12279u, select(12646u, abs(select(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 2302u), vec3<u32>(18812u, 1u, 1u)), ~20775u, true)), true));
    return _wgslsmith_mod_u32(~firstLeadingBit(31425u), 5219u);
}

fn func_1(arg_0: i32, arg_1: vec4<u32>) -> f32 {
    var var_0 = ~_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(~(vec3<u32>(0u, arg_1.x, 135409u) >> (vec3<u32>(0u, 44127u, 27746u) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_1.x, 2735u, arg_1.x), vec3<u32>(1u, 24532u, arg_1.x)), ~arg_1.wwy), abs(arg_1.yyy)), ~reverseBits(vec3<u32>(116676u, 72214u, arg_1.x)));
    global0 = !(!all(vec4<bool>(true, true, true, true)));
    var var_1 = vec3<u32>(17874u, ~1u, max(~17397u >> (func_4(func_2(true, vec3<bool>(true, false, true)), global2.a, func_2(false, vec3<bool>(true, true, true)), Struct_1(global2.b.a, global2.b.b)) % 32u), 56575u));
    let var_2 = ~(-global2.a.b);
    var var_3 = func_2(any(vec3<bool>(true, true, any(vec2<bool>(true, true)))), vec3<bool>(true, true, all(vec4<bool>(true, true, true, true)) && true));
    return _wgslsmith_f_op_f32(trunc(790f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.b.a;
    let var_1 = ~(~_wgslsmith_sub_u32(1u, 0u));
    let var_2 = Struct_2(global3[_wgslsmith_index_u32(var_1, 8u)], global2.b, ~_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(-u_input.b.zyx, ~u_input.b.ywy), select(u_input.b.wyz, u_input.b.xzx, false) & _wgslsmith_mod_vec3_i32(u_input.b.wyy, u_input.b.xzy)));
    global0 = (var_0.x < _wgslsmith_f_op_f32(func_1(_wgslsmith_add_i32(0i, u_input.a) & ~2147483647i, ~(~vec4<u32>(var_1, var_1, 0u, var_1))))) != true;
    let var_3 = select(true, _wgslsmith_f_op_f32(f32(-1f) * -911f) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(-2147483647i, ~vec4<u32>(var_1, var_1, 0u, 0u))))), true);
    var var_4 = var_2.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_1);
}

