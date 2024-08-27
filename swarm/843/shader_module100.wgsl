struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<i32, 23>;

var<private> global2: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -150f, -457f)) * vec3<f32>(_wgslsmith_f_op_f32(arg_0 * arg_0), 321f, 1480f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 921f, -196f) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(418f, arg_0, arg_0), vec3<f32>(arg_0, 847f, 477f))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0, arg_0, 1000f)))))));
    global1 = array<i32, 23>();
    var var_1 = _wgslsmith_dot_vec3_u32(select(~vec3<u32>(1u, 1u, 1u), reverseBits(vec3<u32>(~61893u, ~1u, 1u)), select(vec3<bool>(false, global2.x && true, false), select(select(vec3<bool>(true, true, false), vec3<bool>(true, global2.x, global2.x), false), vec3<bool>(false, global2.x, false), global2.x), vec3<bool>(any(vec2<bool>(false, global2.x)), u_input.a.x < 8452i, any(vec2<bool>(global2.x, global2.x))))), ~select(~reverseBits(vec3<u32>(4294967295u, 19240u, 0u)), firstLeadingBit(vec3<u32>(1u, 1u, 1u)), vec3<bool>(global2.x, select(global2.x, global2.x, global2.x), !global2.x)));
    global0 = -1i;
    var var_2 = Struct_2(1u, true, Struct_1(_wgslsmith_f_op_vec2_f32(sign(var_0.yz))));
    return (1024u ^ _wgslsmith_dot_vec4_u32(max(~vec4<u32>(var_2.a, var_2.a, var_2.a, 4294967295u), select(vec4<u32>(40804u, 81051u, var_2.a, var_2.a), vec4<u32>(1u, var_2.a, 16262u, var_2.a), global2.x)), ~vec4<u32>(var_2.a, 10564u, 6521u, var_2.a))) == ~var_2.a;
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: f32, arg_3: vec4<bool>) -> Struct_1 {
    global2 = arg_3.zz;
    global2 = select(vec2<bool>((!arg_3.x || true) != !global2.x, arg_3.x & (func_3(711f) || !global2.x)), select(arg_3.wx, select(arg_3.zz, !arg_3.yw, arg_3.wz), arg_3.x), !select(arg_3.xx, vec2<bool>(true, true), arg_3.x));
    let var_0 = Struct_2((1u ^ _wgslsmith_clamp_u32(countOneBits(38345u), _wgslsmith_mod_u32(22595u, 4292u), ~0u)) | ~(~81160u), global2.x, Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-681f, arg_2)))))));
    var var_1 = Struct_2(4294967295u, true, var_0.c);
    let var_2 = 1i;
    return Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c.a)))))));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_3 {
    global1 = array<i32, 23>();
    var var_0 = Struct_1(arg_0.a);
    let var_1 = vec2<bool>(global2.x, global2.x);
    var var_2 = Struct_2(_wgslsmith_dot_vec3_u32(select(~abs(vec3<u32>(23455u, 0u, 0u)), max(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 53975u, 16153u)), select(!vec3<bool>(global2.x, false, true), vec3<bool>(false, true, global2.x), vec3<bool>(true, var_1.x, arg_1))), vec3<u32>(_wgslsmith_div_u32(~87u, _wgslsmith_add_u32(22935u, 92586u)), _wgslsmith_mod_u32(~4294967295u, 64843u), _wgslsmith_dot_vec4_u32(vec4<u32>(82665u, 4294967295u, 0u, 1u), ~vec4<u32>(29137u, 37800u, 0u, 18968u)))), true, Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.x), -1000f), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1082f))));
    var_0 = arg_0;
    return Struct_3(u_input.a.yx, reverseBits(-7270i), func_2(u_input.b, select(vec2<i32>(u_input.a.x, -1i) | vec2<i32>(u_input.b, -1i), vec2<i32>(-1i, ~(-5424i)), select(!var_1.x, true, any(vec2<bool>(true, var_1.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_0.a.x)))), select(vec4<bool>(all(vec3<bool>(global2.x, true, arg_1)), false, true, var_2.b), vec4<bool>(global2.x, true, func_3(-1020f), false), select(!vec4<bool>(var_2.b, var_2.b, true, true), select(vec4<bool>(var_2.b, var_1.x, var_2.b, var_2.b), vec4<bool>(var_2.b, true, false, true), true), select(vec4<bool>(var_1.x, var_2.b, true, arg_1), vec4<bool>(arg_1, var_2.b, var_2.b, var_2.b), vec4<bool>(arg_1, global2.x, true, false))))), select(vec2<bool>(all(vec2<bool>(true, true)), var_2.b && (arg_0.a.x < 462f)), vec2<bool>(!select(false, var_2.b, global2.x), true), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1029f * 791f) - -1000f))));
}

fn func_1() -> Struct_1 {
    var var_0 = ~_wgslsmith_add_vec2_u32(vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(10617u, 0u, 7373u), vec3<u32>(1u, 41172u, 11435u))), max(~0u, ~1u)), _wgslsmith_sub_vec2_u32(select(vec2<u32>(30971u, 1u), vec2<u32>(1u, 58185u), vec2<bool>(global2.x, global2.x)), ~vec2<u32>(11778u, 4294967295u)) & vec2<u32>(_wgslsmith_add_u32(0u, 0u), ~3491u));
    global1 = array<i32, 23>();
    var var_1 = func_4(func_2(_wgslsmith_div_i32(countOneBits(_wgslsmith_mod_i32(-16176i, global1[_wgslsmith_index_u32(75368u, 23u)])), reverseBits(-1i)), _wgslsmith_sub_vec2_i32(-abs(vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 23u)], u_input.b)), vec2<i32>(max(u_input.a.x, -2147483647i), -2147483647i)), -1520f, vec4<bool>((-25601i > global1[_wgslsmith_index_u32(var_0.x, 23u)]) && true, true, global2.x, global2.x)), !global2.x);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(ceil(-378f)), var_1.c.a.x, _wgslsmith_div_f32(var_1.c.a.x, _wgslsmith_f_op_f32(469f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_1.c.a.x, var_1.c.a.x, true)), _wgslsmith_f_op_f32(f32(-1f) * -651f))))), var_1.c.a.x);
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-189f, -1097f, var_2.x) * var_2.wxx);
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !vec2<bool>(all(!vec2<bool>(global2.x, global2.x)) || any(vec2<bool>(false, global2.x)), true);
    let var_0 = u_input.a;
    global0 = var_0.x;
    var var_1 = func_1();
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-351f, var_1.a.x) * vec2<f32>(_wgslsmith_f_op_f32(var_1.a.x - var_1.a.x), _wgslsmith_f_op_f32(max(var_1.a.x, 1718f)))))));
    var var_3 = Struct_2(_wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, 11215u, 4294967295u, 18462u)), ~vec4<u32>(0u, 4294967295u, 1u, 4294967295u)), firstTrailingBit(min(10948u, 33081u))) << (1u % 32u), false, var_2);
    var_1 = func_4(var_2, true).c;
    global2 = vec2<bool>(func_4(func_1(), all(select(vec3<bool>(true, global2.x, false), select(vec3<bool>(global2.x, var_3.b, false), vec3<bool>(true, false, false), false), vec3<bool>(var_3.b, false, true)))).d.x, any(vec4<bool>(max(21395i, global1[_wgslsmith_index_u32(var_3.a, 23u)]) > -1i, ~var_3.a >= ~var_3.a, false, !(var_3.b && false))));
    var var_4 = Struct_3(vec2<i32>(1i, var_0.x), u_input.a.x, func_2(u_input.a.x, u_input.a.zw, _wgslsmith_f_op_f32(-1000f + var_3.c.a.x), vec4<bool>(false, global2.x, -global1[_wgslsmith_index_u32(8570u, 23u)] == -1i, true)), vec2<bool>(any(vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 23u)] <= -1i)), !var_3.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(var_3.a, 23u)], 6492i) & abs(var_4.a.x)), abs(min(select(0i, global1[_wgslsmith_index_u32(var_3.a, 23u)], var_4.d.x), u_input.a.x))), 0u, select(~(~1u), firstTrailingBit(_wgslsmith_clamp_u32(76735u, 1u, min(var_3.a, var_3.a))), !var_3.b), reverseBits(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 4294967295u, var_3.a), vec3<u32>(0u, var_3.a, var_3.a)), abs(vec3<u32>(0u, var_3.a, var_3.a))) | (_wgslsmith_div_vec3_u32(vec3<u32>(var_3.a, 36227u, var_3.a), vec3<u32>(41434u, 28390u, var_3.a)) ^ ~vec3<u32>(0u, 19697u, var_3.a))), _wgslsmith_f_op_f32(-2858f * 259f));
}

