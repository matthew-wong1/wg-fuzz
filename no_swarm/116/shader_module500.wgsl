struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: bool,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<f32, 6>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32, arg_1: Struct_3) -> i32 {
    return -_wgslsmith_clamp_i32(firstLeadingBit(u_input.c.x), select(arg_1.d.x, u_input.c.x, true), 12423i);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<i32>) -> vec4<i32> {
    global1 = array<f32, 6>();
    let var_0 = Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 6u)] * global1[_wgslsmith_index_u32(61422u, 6u)]) * global1[_wgslsmith_index_u32(0u, 6u)]))), 883f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~abs(_wgslsmith_clamp_u32(u_input.b, u_input.a, u_input.a)), 6u)] * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1505f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(57690u, 6u)])), global1[_wgslsmith_index_u32(reverseBits(~2878u), 6u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(u_input.d, 6u)])), global1[_wgslsmith_index_u32(1u << (u_input.b % 32u), 6u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(14362u, 13643u), 6u)])))), firstTrailingBit(vec2<i32>(countOneBits(arg_1.x), firstTrailingBit(-1i))) ^ vec2<i32>(func_2(-897f, Struct_3(global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(37622u, 6u)], vec3<f32>(1000f, global1[_wgslsmith_index_u32(4294967295u, 6u)], -1000f), vec2<i32>(arg_1.x, u_input.c.x))), firstLeadingBit(u_input.c.x)));
    var var_1 = any(!vec4<bool>(true, !(!arg_0.x), all(arg_0.zzy), arg_0.x));
    let var_2 = _wgslsmith_mult_vec3_u32(~(vec3<u32>(~35411u, 18868u, _wgslsmith_add_u32(4294967295u, u_input.a)) >> (countOneBits(vec3<u32>(4294967295u, u_input.b, u_input.b) | vec3<u32>(1u, 931u, u_input.b)) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_clamp_u32(u_input.a, _wgslsmith_mult_u32(4294967295u, u_input.b), ~(~u_input.a)), u_input.b, 9802u));
    var var_3 = ~20491u;
    return -(_wgslsmith_clamp_vec4_i32((arg_1 >> (vec4<u32>(var_2.x, 21488u, 0u, 1u) % vec4<u32>(32u))) ^ u_input.c, reverseBits(arg_1), firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.e, -2147483647i, 39604i, u_input.e), u_input.c))) << (_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(var_2.x, u_input.a), firstTrailingBit(91056u), ~930u, ~28908u), firstLeadingBit(firstTrailingBit(vec4<u32>(var_2.x, 0u, 119883u, u_input.d)))) % vec4<u32>(32u)));
}

fn func_4(arg_0: f32, arg_1: vec4<i32>, arg_2: vec4<u32>, arg_3: i32) -> bool {
    let var_0 = Struct_1(true);
    let var_1 = vec2<i32>(i32(-1i) * -2147483647i, 1i);
    global0 = !((countOneBits(i32(-1i) * -1i) <= _wgslsmith_mod_i32(u_input.e, _wgslsmith_dot_vec2_i32(var_1, vec2<i32>(-53493i, u_input.c.x)))) && true);
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 6u)] + -459f)));
    var var_3 = -33385i;
    return var_0.a;
}

fn func_1() -> u32 {
    var var_0 = vec3<bool>(u_input.c.x < (func_2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 6u)]), Struct_3(global1[_wgslsmith_index_u32(19546u, 6u)], -1000f, vec3<f32>(-1055f, global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(1u, 6u)]), vec2<i32>(10220i, u_input.c.x))) & -30429i), true, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -735f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(u_input.d, 6u)]))), -_wgslsmith_mod_vec4_i32(func_3(vec4<bool>(true, true, true, false), vec4<i32>(u_input.c.x, 32946i, 2147483647i, u_input.c.x)), vec4<i32>(57719i, -11897i, u_input.e, -1i)), vec4<u32>(firstTrailingBit(~4294967295u), abs(u_input.a), _wgslsmith_div_u32(~u_input.b, u_input.d), ~(~6387u)), 1i | firstTrailingBit(max(u_input.c.x, 0i))));
    global1 = array<f32, 6>();
    var var_1 = vec3<bool>(true & ((_wgslsmith_f_op_f32(round(1866f)) > _wgslsmith_f_op_f32(f32(-1f) * -505f)) | true), false, !var_0.x);
    let var_2 = select(vec4<bool>(true, !(abs(-27416i) <= u_input.e), false, false), select(vec4<bool>(false, u_input.d != (u_input.a & u_input.d), !(!var_1.x), !var_1.x), vec4<bool>(true, true, !(54188i > u_input.c.x), var_0.x), false), select(!vec4<bool>(var_0.x, var_1.x, true, true), vec4<bool>(var_1.x, var_1.x, false, any(var_0.yx)), !(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(1u, 6u)])) >= global1[_wgslsmith_index_u32(u_input.a, 6u)])));
    global1 = array<f32, 6>();
    return ~firstLeadingBit(~(~(~u_input.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = all(vec4<bool>(true, !any(vec2<bool>(true, true)), all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), true)), true));
    let var_0 = !any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    var var_1 = global1[_wgslsmith_index_u32(18706u, 6u)];
    global0 = true;
    var_1 = _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(15113u), (u_input.d >> (58471u % 32u)) << ((func_1() & u_input.d) % 32u)), 6u)]));
    var var_2 = abs(-vec3<i32>(-(-14404i & u_input.e), -u_input.e | ~2147483647i, _wgslsmith_clamp_i32(-1i, u_input.e, u_input.e) & -2147483647i));
    let var_3 = Struct_3(-1038f, -1285f, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(401f, global1[_wgslsmith_index_u32(u_input.a, 6u)], global1[_wgslsmith_index_u32(51702u, 6u)]))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(691f, global1[_wgslsmith_index_u32(u_input.a, 6u)], global1[_wgslsmith_index_u32(37195u, 6u)])))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1[_wgslsmith_index_u32(u_input.d, 6u)], -1000f, global1[_wgslsmith_index_u32(u_input.a, 6u)])))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(316f, global1[_wgslsmith_index_u32(u_input.a, 6u)]) - _wgslsmith_f_op_f32(sign(103f))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, 97528u), 6u)]), global1[_wgslsmith_index_u32(0u, 6u)])), vec2<i32>(u_input.c.x, -_wgslsmith_clamp_i32(1i, 28558i, firstLeadingBit(u_input.e))));
    var var_4 = !select(select(!select(vec4<bool>(var_0, true, var_0, true), vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(var_0, var_0, true, true)), select(vec4<bool>(var_0, var_0, true, true), select(vec4<bool>(false, false, var_0, true), vec4<bool>(var_0, false, false, false), vec4<bool>(var_0, var_0, var_0, var_0)), var_0), vec4<bool>(var_0, false, !var_0, var_0)), vec4<bool>((0i << (u_input.d % 32u)) > var_3.d.x, false, false, true), false);
    var_1 = 1000f;
    let x = u_input.a;
    s_output = StorageBuffer(~(-2147483647i), vec2<u32>(~78947u, 56507u), _wgslsmith_sub_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u) | vec2<u32>(u_input.b, u_input.a), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 14831u), vec2<u32>(0u, u_input.b))), _wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(u_input.a, 1u)), ~vec2<u32>(18830u, 48648u), max(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.a, 4294967295u))) << (vec2<u32>(1u, 0u) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-990f + _wgslsmith_f_op_f32(-1858f + global1[_wgslsmith_index_u32(4380u, 6u)])) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1326f, -291f)))));
}

