struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: array<vec4<bool>, 13>;

var<private> global2: array<vec3<u32>, 6> = array<vec3<u32>, 6>(vec3<u32>(0u, 53978u, 0u), vec3<u32>(1u, 0u, 0u), vec3<u32>(83752u, 41689u, 1u), vec3<u32>(7399u, 15774u, 28246u), vec3<u32>(52889u, 4294967295u, 0u), vec3<u32>(1u, 64072u, 65109u));

var<private> global3: Struct_2 = Struct_2(true, Struct_1(vec4<bool>(false, true, false, false), -1i), -33017i);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_3, arg_3: u32) -> vec2<bool> {
    var var_0 = _wgslsmith_sub_vec4_i32(-(~(_wgslsmith_mod_vec4_i32(vec4<i32>(-14736i, u_input.b, arg_2.a, u_input.b), vec4<i32>(u_input.b, -1i, 15879i, -1i)) | vec4<i32>(arg_2.e.x, arg_2.e.x, -26605i, global3.c))), _wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(arg_2.a, u_input.b, u_input.b, global3.b.b)), -vec4<i32>(-44465i, u_input.b, global3.c, arg_2.a) & (vec4<i32>(global3.c, -11983i, 1i, -2147483647i) | vec4<i32>(-2147483647i, -34017i, -1i, -1i)), firstLeadingBit(vec4<i32>(-1i, 47182i, 0i, global3.c))) ^ vec4<i32>(1i, ~global3.c, 1i, abs(firstLeadingBit(-1i))));
    let var_1 = arg_0.x;
    var var_2 = _wgslsmith_sub_i32(-max(1i, 16139i), -11891i);
    let var_3 = _wgslsmith_f_op_f32(662f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1, -609f, global0.x)) * arg_0.x)));
    var var_4 = _wgslsmith_f_op_f32(-var_1);
    return global3.b.a.zx;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<bool>) -> bool {
    global0 = !select(!func_3(vec4<f32>(715f, -1590f, 561f, 846f), any(vec4<bool>(arg_1.x, false, false, false)), Struct_3(2147483647i, global2[_wgslsmith_index_u32(55595u, 6u)], u_input.a, vec2<u32>(1u, 4294967295u), vec2<i32>(u_input.b, 0i)), 0u), select(select(arg_1.zw, vec2<bool>(true, true), true), !func_3(vec4<f32>(-287f, -598f, -113f, -562f), global0.x, Struct_3(-53443i, vec3<u32>(u_input.a, u_input.a, u_input.a), 0u, vec2<u32>(u_input.a, 8673u), vec2<i32>(-16639i, arg_0.x)), u_input.a), global0.x && all(vec4<bool>(false, false, arg_1.x, global0.x))), !all(global3.b.a));
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1756f, 1727f, 123f, 508f), vec4<f32>(-1272f, 632f, -542f, 208f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1144f, -234f, -2323f, -1045f)))))));
    var var_1 = Struct_3(u_input.b, ~(firstLeadingBit(~vec3<u32>(u_input.a, 4294967295u, u_input.a)) | (vec3<u32>(4294967295u, u_input.a, u_input.a) | select(global2[_wgslsmith_index_u32(u_input.a, 6u)], vec3<u32>(0u, 4294967295u, u_input.a), vec3<bool>(true, false, global0.x)))), max(u_input.a, u_input.a), vec2<u32>(61677u, 4294967295u), -vec2<i32>(min(arg_0.x ^ arg_0.x, _wgslsmith_add_i32(-61844i, -35773i)), 67532i));
    var var_2 = Struct_3(_wgslsmith_mult_i32(~(0i << (_wgslsmith_sub_u32(42998u, var_1.b.x) % 32u)), abs(global3.b.b)), ~vec3<u32>(var_1.d.x, ~var_1.c, u_input.a), ~var_1.d.x, _wgslsmith_mod_vec2_u32(var_1.b.zy & vec2<u32>(28754u, 27483u), var_1.b.zx) ^ abs(~var_1.b.yz), vec2<i32>(1i, -(i32(-1i) * -62749i)));
    let var_3 = var_2.d.x ^ _wgslsmith_clamp_u32(~(~_wgslsmith_div_u32(24143u, var_2.c)), 54349u, firstTrailingBit(~13142u) | var_2.d.x);
    return any(select(select(func_3(_wgslsmith_f_op_vec4_f32(var_0 - vec4<f32>(-898f, -325f, var_0.x, -1192f)), global3.b.a.x, Struct_3(0i, vec3<u32>(var_1.b.x, var_2.d.x, var_2.c), 1u, var_2.b.zy, var_1.e), 31106u), select(vec2<bool>(true, false), !vec2<bool>(global0.x, global0.x), true), any(select(global3.b.a.xyy, vec3<bool>(global0.x, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, true)))), vec2<bool>(true, !global0.x), false));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), arg_1.yy, arg_1.xx) << (~arg_0 % vec2<u32>(32u));
    var var_1 = !select(vec4<bool>(all(global3.b.a), true, true, false), select(!select(vec4<bool>(false, true, false, true), global1[_wgslsmith_index_u32(arg_1.x, 13u)], global0.x), select(global1[_wgslsmith_index_u32(33188u, 13u)], vec4<bool>(global3.b.a.x, global3.a, global0.x, true), !global3.b.a.x), global3.b.a.x), vec4<bool>(true, all(!global3.b.a.wx), any(select(vec3<bool>(false, global3.b.a.x, false), global3.b.a.wyw, global3.a)), func_2(-vec4<i32>(global3.c, -2147483647i, u_input.b, global3.c), !vec4<bool>(false, global0.x, global3.a, global0.x))));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(833f, 225f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(123f, -308f)) - _wgslsmith_f_op_f32(ceil(1021f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f * -823f), _wgslsmith_f_op_f32(f32(-1f) * -1106f), _wgslsmith_f_op_f32(f32(-1f) * -233f), 1150f))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1000f, 605f))))), _wgslsmith_f_op_f32(1827f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -334f) * _wgslsmith_div_f32(-659f, -506f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(265f, -1398f)))), 1f)), 1f), vec4<bool>(var_1.x, any(select(select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(var_1.x, false, false), var_1.zzz), !vec3<bool>(global3.b.a.x, true, false), select(vec3<bool>(false, global3.a, global3.b.a.x), vec3<bool>(true, false, var_1.x), global0.x))), (_wgslsmith_dot_vec2_i32(vec2<i32>(47620i, global3.c), vec2<i32>(0i, u_input.b)) <= ~(-43826i)) && true, false)));
    let var_3 = ~_wgslsmith_sub_i32(_wgslsmith_add_i32(27578i, -global3.c), global3.b.b);
    global2 = array<vec3<u32>, 6>();
    return Struct_1(vec4<bool>(global3.a, all(!select(vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(false, false, false, global0.x), false)), global0.x, func_2(-(~vec4<i32>(var_3, u_input.b, u_input.b, -66751i)), select(!global1[_wgslsmith_index_u32(1u, 13u)], select(global1[_wgslsmith_index_u32(arg_1.x, 13u)], vec4<bool>(var_1.x, false, global0.x, var_1.x), vec4<bool>(true, true, false, false)), global1[_wgslsmith_index_u32(0u, 13u)]))), _wgslsmith_div_i32(u_input.b, max(2147483647i, ~25553i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~vec2<u32>(firstTrailingBit(0u) ^ _wgslsmith_add_u32(u_input.a, u_input.a), 1u), global2[_wgslsmith_index_u32(32092u, 6u)]);
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1392f, -857f)), _wgslsmith_f_op_f32(min(-1220f, 1130f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(2095f)))))));
    var_1 = vec2<f32>(var_1.x, var_1.x);
    let var_2 = func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.x)) - -397f), -581f, var_1.x, var_1.x)), all(vec4<bool>(false, select(true, global0.x, false), ~u_input.a >= 1u, global3.b.b < 1i)), Struct_3(_wgslsmith_add_i32(u_input.b, _wgslsmith_mod_i32(-1334i, ~u_input.b)), global2[_wgslsmith_index_u32(70876u & (u_input.a | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, u_input.a))), 6u)], 28930u, max(~vec2<u32>(u_input.a, 0u), _wgslsmith_clamp_vec2_u32(~vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, u_input.a), firstTrailingBit(vec2<u32>(2712u, 0u)))), vec2<i32>(-1i, 0i)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a >> (u_input.a % 32u), u_input.a) << ((vec4<u32>(u_input.a, 57153u, 1u, 18272u) | vec4<u32>(u_input.a, 28300u, 79591u, 1u)) % vec4<u32>(32u)), abs(~_wgslsmith_sub_vec4_u32(vec4<u32>(41588u, 1u, 4294967295u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)))));
    var var_3 = var_0.a.x;
    global1 = array<vec4<bool>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(countOneBits(~min(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(24683u, u_input.a, 1u, u_input.a))), _wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), vec4<u32>(11309u, u_input.a, 51856u, u_input.a), var_2.x), firstTrailingBit(vec4<u32>(0u, u_input.a, u_input.a, u_input.a))) << (vec4<u32>(~u_input.a, 1u, _wgslsmith_mod_u32(1u, 10357u), 0u) % vec4<u32>(32u))), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_div_i32(0i, var_0.b) << (u_input.a % 32u), ~u_input.b), -(i32(-1i) * -8885i), countOneBits(-3193i)));
}

