struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec2<f32>,
    d: vec3<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec3<u32>(19407u, 0u, 62062u), vec3<bool>(true, true, false)), Struct_1(vec3<u32>(110071u, 5687u, 34290u), vec3<bool>(false, true, true)), Struct_1(vec3<u32>(59536u, 13030u, 39657u), vec3<bool>(true, false, false)), Struct_1(vec3<u32>(4294967295u, 0u, 4294967295u), vec3<bool>(false, false, false)), Struct_1(vec3<u32>(1u, 37886u, 0u), vec3<bool>(false, false, true)), Struct_1(vec3<u32>(52617u, 43322u, 63002u), vec3<bool>(false, false, true)), Struct_1(vec3<u32>(63246u, 0u, 4294967295u), vec3<bool>(true, true, true)), Struct_1(vec3<u32>(1u, 5368u, 1u), vec3<bool>(true, true, false)), Struct_1(vec3<u32>(4294967295u, 1u, 699u), vec3<bool>(true, false, false)), Struct_1(vec3<u32>(25824u, 4294967295u, 91999u), vec3<bool>(false, false, false)), Struct_1(vec3<u32>(0u, 38467u, 1u), vec3<bool>(true, true, false)), Struct_1(vec3<u32>(1u, 0u, 0u), vec3<bool>(false, false, false)), Struct_1(vec3<u32>(0u, 4294967295u, 36717u), vec3<bool>(false, true, true)), Struct_1(vec3<u32>(32372u, 1u, 1u), vec3<bool>(false, true, true)), Struct_1(vec3<u32>(0u, 39610u, 7066u), vec3<bool>(true, false, true)), Struct_1(vec3<u32>(0u, 4294967295u, 1u), vec3<bool>(true, false, false)), Struct_1(vec3<u32>(7401u, 1u, 1u), vec3<bool>(false, false, false)), Struct_1(vec3<u32>(20426u, 54099u, 35357u), vec3<bool>(true, false, false)), Struct_1(vec3<u32>(1u, 95424u, 77036u), vec3<bool>(false, true, true)), Struct_1(vec3<u32>(12164u, 1u, 4294967295u), vec3<bool>(false, true, false)), Struct_1(vec3<u32>(0u, 1u, 7809u), vec3<bool>(true, false, true)), Struct_1(vec3<u32>(26790u, 0u, 71466u), vec3<bool>(false, true, false)), Struct_1(vec3<u32>(17997u, 4294967295u, 10951u), vec3<bool>(true, false, true)), Struct_1(vec3<u32>(1u, 59063u, 1u), vec3<bool>(false, true, false)), Struct_1(vec3<u32>(55373u, 0u, 31249u), vec3<bool>(false, false, true)), Struct_1(vec3<u32>(55252u, 4294967295u, 1078u), vec3<bool>(false, true, true)), Struct_1(vec3<u32>(1u, 4294967295u, 0u), vec3<bool>(true, true, false)), Struct_1(vec3<u32>(0u, 29566u, 22488u), vec3<bool>(true, false, false)), Struct_1(vec3<u32>(1u, 1u, 4294967295u), vec3<bool>(false, true, false)), Struct_1(vec3<u32>(1u, 23770u, 4294967295u), vec3<bool>(false, false, true)));

var<private> global1: bool = true;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: vec3<u32>) -> i32 {
    global1 = all(!select(select(select(vec3<bool>(arg_1, arg_1, true), vec3<bool>(false, arg_1, arg_1), false), select(vec3<bool>(false, true, true), vec3<bool>(arg_1, true, arg_1), vec3<bool>(true, false, false)), any(vec4<bool>(true, false, arg_1, true))), !select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(true, arg_1, arg_1), true), select(!vec3<bool>(arg_1, arg_1, arg_1), select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(true, arg_1, false), arg_1), arg_1)));
    let var_0 = Struct_1(u_input.a.wxz, vec3<bool>(arg_1, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.b, vec3<i32>(1i, 20495i, -9411i)), ~arg_0.a.a.www) < u_input.b.x, arg_1));
    let var_1 = arg_0.a.b;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-729f)), _wgslsmith_f_op_f32(max(538f, 464f))))));
    let var_3 = vec2<bool>(!all(select(select(vec4<bool>(true, false, false, var_0.b.x), vec4<bool>(var_0.b.x, true, var_0.b.x, false), false), select(vec4<bool>(false, false, false, var_0.b.x), vec4<bool>(var_0.b.x, arg_1, true, true), vec4<bool>(arg_1, true, false, false)), !vec4<bool>(arg_1, var_0.b.x, arg_1, true))), !(all(vec4<bool>(true, true, true, true)) | all(vec4<bool>(false, true, arg_1, var_0.b.x))));
    return _wgslsmith_mod_i32(arg_0.a.b, var_1);
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_1) -> f32 {
    var var_0 = u_input.b.x;
    var var_1 = Struct_3(Struct_2(((vec4<i32>(-2147483647i, u_input.b.x, 0i, 1i) & vec4<i32>(u_input.b.x, 809i, u_input.b.x, u_input.b.x)) << (max(vec4<u32>(arg_2.a.x, 7715u, 4748u, u_input.e), u_input.a) % vec4<u32>(32u))) | _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 45451i, 2147483647i), vec4<i32>(u_input.b.x, 1i, u_input.b.x, -2147483647i), vec4<i32>(0i, u_input.b.x, u_input.b.x, -1i)), vec4<i32>(u_input.b.x, u_input.b.x, -1i, -2147483647i)), _wgslsmith_add_i32(59082i, func_3(Struct_3(Struct_2(vec4<i32>(0i, -4688i, u_input.b.x, u_input.b.x), 1i, arg_2.a.x)), arg_2.b.x, abs(u_input.a.wzy))), u_input.e));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1, arg_0.x, 1279f)))) + arg_0.yyy) - arg_0.xxx));
    let var_3 = true;
    global0 = array<Struct_1, 30>();
    return -324f;
}

fn func_4(arg_0: u32, arg_1: f32) -> bool {
    var var_0 = Struct_2(-firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 14884i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -2147483647i), vec4<i32>(31893i, 2147483647i, 9288i, u_input.b.x)) & ~vec4<i32>(11136i, -32055i, 16447i, -1i)), _wgslsmith_dot_vec4_i32(-(~(~vec4<i32>(2147483647i, -1i, u_input.b.x, u_input.b.x))), reverseBits(vec4<i32>(u_input.b.x, -2052i, -26514i, u_input.b.x)) ^ (_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, -1i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, u_input.b.x)) | -vec4<i32>(-28638i, u_input.b.x, u_input.b.x, u_input.b.x))), 27069u);
    var var_1 = Struct_2(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(u_input.b.x, 65086i), firstTrailingBit(var_0.b) ^ abs(u_input.b.x), reverseBits(-u_input.b.x), -2147483647i), -(-var_0.a ^ var_0.a)), i32(-1i) * -_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b.x, 32230i), vec2<i32>(u_input.b.x, var_0.b)), 1u);
    let var_2 = ~53758u;
    var var_3 = !any(select(vec3<bool>(true, true, all(vec2<bool>(true, true))), vec3<bool>(true, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true)));
    let var_4 = arg_0;
    return false;
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: f32, arg_3: Struct_3) -> vec2<bool> {
    global0 = array<Struct_1, 30>();
    var var_0 = select(vec4<bool>(any(vec4<bool>(arg_0 >= -29126i, false || arg_1, false, arg_1)), func_4(~(4294967295u << (u_input.e % 32u)), _wgslsmith_f_op_f32(func_2(vec4<f32>(arg_2, arg_2, 1206f, -1425f), _wgslsmith_f_op_f32(trunc(arg_2)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_3.a.c, 14085u, 0u), u_input.a), 30u)]))), arg_1, func_4(_wgslsmith_sub_u32(arg_3.a.c | 0u, _wgslsmith_mod_u32(arg_3.a.c, arg_3.a.c)), arg_2)), !select(!(!vec4<bool>(true, arg_1, false, true)), vec4<bool>(true, !arg_1, true, func_4(7197u, arg_2)), false), !arg_1);
    var var_1 = arg_3;
    var var_2 = arg_0;
    let var_3 = false;
    return select(!(!var_0.zw), var_0.zx, var_0.xw);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i < u_input.b.x;
    var var_1 = vec4<bool>(all(select(func_1(1i, true, _wgslsmith_f_op_f32(-283f * -1511f), Struct_3(Struct_2(vec4<i32>(2147483647i, -2147483647i, 30875i, u_input.b.x), u_input.b.x, u_input.d))), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), true & any(vec4<bool>(false, false, true, false)))), any(vec3<bool>(!all(vec4<bool>(false, false, false, true)), true, true)), !func_1(u_input.b.x, !any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1105f, -266f))), Struct_3(Struct_2(vec4<i32>(u_input.b.x, 2790i, u_input.b.x, -25699i), 73326i, u_input.d))).x, true);
    var var_2 = -min(max(vec2<i32>(0i, 0i), ~u_input.b.zy) >> (firstTrailingBit(~u_input.c) % vec2<u32>(32u)), u_input.b.zx);
    global1 = var_1.x;
    let var_3 = u_input.c.x;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-423f, 602f))))))));
    let var_5 = Struct_2(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(max(vec4<i32>(var_2.x, var_2.x, 5247i, u_input.b.x), vec4<i32>(var_2.x, -2444i, u_input.b.x, 0i)), max(vec4<i32>(-23505i, 1i, 2147483647i, 1i), vec4<i32>(24131i, 9511i, -2147483647i, var_2.x))), -abs(vec4<i32>(20820i, var_2.x, u_input.b.x, 0i)), vec4<i32>(-var_2.x, _wgslsmith_sub_i32(2147483647i, u_input.b.x), _wgslsmith_clamp_i32(var_2.x, var_2.x, var_2.x), _wgslsmith_sub_i32(2147483647i, u_input.b.x))), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -40666i, 1i, 2147483647i), -vec4<i32>(var_2.x, var_2.x, -7514i, -26159i)) | _wgslsmith_div_vec4_i32(vec4<i32>(-27969i, -42473i, 1877i, var_2.x), _wgslsmith_mod_vec4_i32(vec4<i32>(var_2.x, var_2.x, 0i, var_2.x), vec4<i32>(u_input.b.x, -1i, -13747i, var_2.x)))), -2147483647i ^ u_input.b.x, _wgslsmith_dot_vec3_u32(max(~vec3<u32>(var_3, var_3, 4294967295u), u_input.a.yxw) | min(_wgslsmith_mod_vec3_u32(vec3<u32>(10912u, 0u, u_input.e), vec3<u32>(var_3, var_3, 4294967295u)), u_input.a.yzz), vec3<u32>(var_3 & u_input.d, _wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, var_3), _wgslsmith_add_u32(0u, u_input.c.x)), reverseBits(28466u))));
    var_2 = vec2<i32>(var_5.b, reverseBits(var_2.x ^ 1i));
    var_1 = vec4<bool>(!var_1.x, !(var_1.x & any(select(var_1.yxz, vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, false, true)))), all(var_1.zzx), true);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a.x, var_5.a.x);
}

