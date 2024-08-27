struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: i32,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: f32 = 1490f;

var<private> global2: array<f32, 32> = array<f32, 32>(772f, 233f, 1446f, 616f, -1581f, 487f, 1013f, 726f, 274f, -456f, 1438f, -154f, -1658f, 305f, 1171f, -2934f, -187f, -1000f, -1523f, -1000f, 2696f, -298f, 487f, 993f, -321f, -396f, 1456f, 264f, 136f, -2674f, -732f, 682f);

var<private> global3: vec4<f32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    return global0.e.c.x;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(global3.xz + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1859f, global0.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, -1000f)), true && global0.b.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a)))), global0.b, _wgslsmith_clamp_i32(~u_input.a.x, -2543i, u_input.a.x), max(global0.c, -min(_wgslsmith_sub_i32(37687i, u_input.a.x), 2147483647i)), Struct_1(vec3<u32>(countOneBits(~39806u), select(_wgslsmith_dot_vec2_u32(global0.e.c.yx, vec2<u32>(0u, 37255u)), u_input.b.x, !global0.b.x), func_3() >> (~global0.e.a.x % 32u)), true, global0.e.a | _wgslsmith_mult_vec3_u32(~vec3<u32>(global0.e.c.x, 52783u, 0u), ~vec3<u32>(4294967295u, 24579u, global0.e.c.x))));
    global3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global3.x)), -917f)), global3.x, _wgslsmith_f_op_f32(-513f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -890f), global2[_wgslsmith_index_u32(1u, 32u)])), -285f));
    let var_1 = u_input.c.zy;
    var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.a.x)), _wgslsmith_f_op_f32(1726f - 1155f))))), global0.b, max(61621i, global0.c), ~u_input.a.x, global0.e);
    var var_2 = _wgslsmith_dot_vec4_i32(select(~(vec4<i32>(-1i) * -vec4<i32>(var_0.d, -32018i, u_input.a.x, global0.c)), abs(select(~vec4<i32>(u_input.a.x, u_input.a.x, var_0.d, var_0.d), vec4<i32>(var_0.c, var_0.d, -2147483647i, global0.d), global0.b.x)), false), _wgslsmith_clamp_vec4_i32(abs(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(u_input.a.x, 0i, global0.c, global0.d)), min(vec4<i32>(-9144i, u_input.a.x, u_input.a.x, global0.d), vec4<i32>(-3629i, u_input.a.x, global0.c, global0.d)))), _wgslsmith_add_vec4_i32(-vec4<i32>(1405i, 8379i, var_0.c, 53735i), -vec4<i32>(-48571i, -8176i, -1i, global0.c)), ~min(countOneBits(vec4<i32>(global0.d, u_input.a.x, var_0.c, var_0.c)), vec4<i32>(global0.d, var_0.d, 0i, -5359i))));
    return Struct_3(~global0.d, vec3<u32>(u_input.c.x, ~countOneBits(_wgslsmith_add_u32(41429u, var_0.e.a.x)), var_0.e.a.x), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1324f, 499f, global3.x, _wgslsmith_f_op_f32(global3.x * global2[_wgslsmith_index_u32(global0.e.c.x, 32u)])))))), _wgslsmith_f_op_vec3_f32(trunc(global3.www)));
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = func_2();
    global0 = Struct_4(_wgslsmith_f_op_vec2_f32(global0.a + vec2<f32>(-795f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -643f)))), select(vec2<bool>(global0.e.b, true), vec2<bool>(~global0.e.a.x > _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 23309u, global0.e.c.x, 31904u), vec4<u32>(57782u, 23659u, var_0.b.x, u_input.c.x)), !any(vec4<bool>(true, arg_0, false, true))), !global0.b.x), abs(~(-_wgslsmith_mod_i32(4700i, var_0.a))), _wgslsmith_clamp_i32(countOneBits(u_input.a.x), _wgslsmith_clamp_i32(global0.d, ~var_0.a, ~global0.d), (var_0.a >> (1u % 32u)) | global0.c) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_0.b.x, 12233u, 8948u), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_0.b.x, 17376u, global0.e.a.x), vec4<u32>(4294967295u, 4294967295u, u_input.c.x, u_input.d.x))), vec4<u32>(max(31003u, global0.e.c.x), var_0.b.x, var_0.b.x, 19539u)) % 32u), global0.e);
    let var_1 = -abs(vec3<i32>(0i, _wgslsmith_sub_i32(var_0.a & 9122i, -2147483647i), -27805i));
    let var_2 = func_2();
    global0 = Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.d.x, -1339f))), vec2<f32>(165f, _wgslsmith_f_op_f32(exp2(global0.a.x)))), select(vec2<bool>(global0.e.a.x <= (var_0.b.x & 65798u), all(!vec4<bool>(true, global0.e.b, false, false))), vec2<bool>(false, global0.b.x), false), ~(43737i ^ _wgslsmith_div_i32(-78413i, -13976i ^ var_2.a)), ~(~(-5375i)), Struct_1(_wgslsmith_sub_vec3_u32(abs(u_input.c) >> (~vec3<u32>(u_input.b.x, 4294967295u, u_input.c.x) % vec3<u32>(32u)), ~var_2.b | firstLeadingBit(var_0.b)), true, vec3<u32>(global0.e.c.x, var_0.b.x, _wgslsmith_div_u32(3933u, _wgslsmith_mod_u32(49202u, var_0.b.x)))));
    return Struct_2(global0.e);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: bool) -> f32 {
    global2 = array<f32, 32>();
    let var_0 = true;
    global0 = Struct_4(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global0.a))))), vec2<bool>(true, any(vec4<bool>(true, true, true, all(vec3<bool>(false, false, true))))), reverseBits(-_wgslsmith_div_i32(i32(-1i) * -44426i, reverseBits(global0.c))), global0.d, global0.e);
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(647f, 315f, global2[_wgslsmith_index_u32(44940u, 32u)], global0.a.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-692f, 279f, 622f, 1821f), vec4<f32>(global3.x, global3.x, global3.x, global0.a.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-768f, global3.x, global2[_wgslsmith_index_u32(global0.e.a.x, 32u)], 1046f)))))));
    let var_1 = Struct_3(3542i, ~(~vec3<u32>(~4294967295u, _wgslsmith_add_u32(global0.e.c.x, 0u), func_1(true).a.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2482f, global3.x, -1000f, 157f), vec4<f32>(global2[_wgslsmith_index_u32(1u, 32u)], 1462f, -648f, 196f), vec4<bool>(false, arg_2, true, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, global0.a.x, -1326f, global2[_wgslsmith_index_u32(18576u, 32u)]) - vec4<f32>(global2[_wgslsmith_index_u32(1u, 32u)], 2044f, global3.x, global2[_wgslsmith_index_u32(u_input.b.x, 32u)])), true))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(global3.xyw - global3.yxx))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1165f, 2636f, -523f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(func_2().c.wzz, global3.wwz))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(1u, 32u)])) * var_1.c.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) * _wgslsmith_f_op_f32(var_1.d.x + _wgslsmith_f_op_f32(trunc(954f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_4(u_input.a.x, func_1(global0.b.x), true)), global2[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(0u, u_input.b.x)), 32u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), 645f) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, -1626f, global0.a.x, 606f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1267f, global3.x, 632f, -175f) - vec4<f32>(global2[_wgslsmith_index_u32(26198u, 32u)], global3.x, global2[_wgslsmith_index_u32(4294967295u, 32u)], global2[_wgslsmith_index_u32(99336u, 32u)])))));
    global2 = array<f32, 32>();
    var var_0 = global0.e;
    global0 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.a + vec2<f32>(global3.x, global2[_wgslsmith_index_u32(1u, 32u)])) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1351f, -1270f))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1077f, -731f), _wgslsmith_f_op_vec2_f32(abs(global0.a)))))), vec2<bool>(var_0.b, select(false, false, true)), u_input.a.x, select(_wgslsmith_add_i32(u_input.a.x, reverseBits(global0.d)), _wgslsmith_dot_vec3_i32(~(-vec3<i32>(global0.c, global0.d, 2147483647i)), vec3<i32>(-1i) * -vec3<i32>(2147483647i, 0i, u_input.a.x)), global0.c >= firstTrailingBit(~54209i)), global0.e);
    var var_1 = Struct_3(~(-2147483647i), func_2().b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(666f, -486f, global0.a.x, global2[_wgslsmith_index_u32(var_0.c.x, 32u)])) * vec4<f32>(-440f, global2[_wgslsmith_index_u32(global0.e.c.x, 32u)], 1836f, 703f)))), _wgslsmith_f_op_vec3_f32(min(global3.zzy, global3.zwy)));
    let x = u_input.a;
    s_output = StorageBuffer(-((vec4<i32>(-30105i, -6547i, 1i, -20296i) ^ -vec4<i32>(var_1.a, 3986i, 2147483647i, 1i)) | select(select(vec4<i32>(2147483647i, 15389i, -24368i, -2147483647i), vec4<i32>(u_input.a.x, u_input.a.x, global0.d, u_input.a.x), global0.b.x), -vec4<i32>(0i, u_input.a.x, var_1.a, -1i), true)), global3.xzy);
}

