struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<i32>(2147483647i, 41745i, 33943i)));

var<private> global1: u32 = 4294967295u;

var<private> global2: vec2<f32>;

var<private> global3: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec3<i32>(-49878i, -1i, 31611i)), Struct_1(vec3<i32>(0i, -1i, 2147483647i)), Struct_1(vec3<i32>(-24681i, i32(-2147483648), i32(-2147483648))), Struct_1(vec3<i32>(-1i, 1i, i32(-2147483648))), Struct_1(vec3<i32>(24791i, 18198i, -67332i)), Struct_1(vec3<i32>(-8275i, 10288i, -46639i)), Struct_1(vec3<i32>(i32(-2147483648), 36914i, -3170i)), Struct_1(vec3<i32>(-17030i, -57839i, -1i)), Struct_1(vec3<i32>(-1i, -1i, 2147483647i)), Struct_1(vec3<i32>(i32(-2147483648), -1i, -23994i)), Struct_1(vec3<i32>(64219i, -50075i, 4556i)), Struct_1(vec3<i32>(1i, -13496i, 42671i)), Struct_1(vec3<i32>(1i, 55882i, 47200i)), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 1i)), Struct_1(vec3<i32>(36898i, 0i, i32(-2147483648))), Struct_1(vec3<i32>(2147483647i, 2147483647i, -47971i)), Struct_1(vec3<i32>(0i, -1599i, 0i)), Struct_1(vec3<i32>(2147483647i, -7509i, 2147483647i)), Struct_1(vec3<i32>(0i, -42370i, 64406i)), Struct_1(vec3<i32>(-38924i, 3617i, 0i)), Struct_1(vec3<i32>(0i, -11509i, -1i)), Struct_1(vec3<i32>(1i, 16417i, 2147483647i)), Struct_1(vec3<i32>(-1i, i32(-2147483648), i32(-2147483648))), Struct_1(vec3<i32>(66277i, -1i, 2147483647i)), Struct_1(vec3<i32>(48071i, 2147483647i, -62494i)), Struct_1(vec3<i32>(-23726i, -5862i, -10571i)), Struct_1(vec3<i32>(2147483647i, 29963i, -3265i)), Struct_1(vec3<i32>(-9174i, -1i, 19454i)), Struct_1(vec3<i32>(11806i, 37467i, -31070i)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = ~(abs(firstTrailingBit(1u)) & countOneBits(_wgslsmith_mod_u32(0u, 4294967295u))) ^ ~_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(54347u, 206u, 66219u, 30815u), vec4<u32>(0u, 0u, 2871u, 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(4014u, 53998u, 82082u, 513u), ~vec4<u32>(120041u, 93322u, 40875u, 1u)));
    global3 = array<Struct_1, 29>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.x, 2433f), vec2<f32>(global2.x, 539f), true))))));
    var var_2 = global3[_wgslsmith_index_u32(var_0, 29u)];
    global3 = array<Struct_1, 29>();
    return _wgslsmith_f_op_f32(-global2.x) <= _wgslsmith_f_op_f32(step(-1210f, global2.x));
}

fn func_2() -> u32 {
    let var_0 = select(!vec3<bool>(select(true, true, true), !any(vec3<bool>(false, false, false)), all(vec2<bool>(true, true))), vec3<bool>(true, true, !select(602f >= global2.x, true, true)), select(select(vec3<bool>(func_3(global0.a.a.x), 849f != global2.x, all(vec4<bool>(true, true, false, false))), vec3<bool>(select(false, false, false), all(vec2<bool>(true, false)), any(vec2<bool>(false, true))), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)))), !select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false), true), true));
    var var_1 = !(-707f <= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(307f)))));
    var var_2 = -1000f;
    global0 = Struct_2(Struct_1(global0.a.a));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, -155f, 772f, 552f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global2.x, -436f))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1281f, global2.x, global2.x, global2.x)))))));
    return firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(~1u, _wgslsmith_mod_u32(0u, 1u >> (0u % 32u))), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 5433u, 27253u), ~vec3<u32>(141106u, 23248u, 1u)), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(6027u, 30260u, 1u, 4462u), vec4<u32>(0u, 23291u, 7187u, 15132u)), _wgslsmith_dot_vec4_u32(vec4<u32>(22334u, 0u, 48903u, 35252u), vec4<u32>(43114u, 39068u, 0u, 71825u))))));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    var var_0 = firstLeadingBit(arg_0);
    var_0 = _wgslsmith_clamp_u32(arg_0, arg_0, 1u);
    let var_1 = arg_1;
    var var_2 = _wgslsmith_add_i32(-arg_2.a.x, u_input.a.x);
    let var_3 = reverseBits(select(global0.a.a, _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(arg_2.a, arg_2.a), vec3<i32>(22886i, -1i, u_input.b) ^ vec3<i32>(-11078i, arg_2.a.x, -2147483647i)), select(select(vec3<bool>(arg_1, true, var_1), vec3<bool>(arg_1, true, true), true), !vec3<bool>(var_1, false, arg_1), false))) ^ ((global0.a.a ^ arg_2.a) & vec3<i32>(1i, -arg_2.a.x, _wgslsmith_div_i32(~(-62054i), ~(-41531i))));
    return global3[_wgslsmith_index_u32(min(~max(49198u, arg_0 & 14292u), ~(~arg_0 << (~1u % 32u))) >> (func_2() % 32u), 29u)];
}

fn func_1() -> bool {
    var var_0 = func_4(_wgslsmith_sub_u32(~4294967295u ^ _wgslsmith_div_u32(func_2(), 1u), ~select(~4294967295u, 8924u << (0u % 32u), true)), true, Struct_1(global0.a.a & vec3<i32>(23177i, ~u_input.a.x, 1i)));
    global3 = array<Struct_1, 29>();
    let var_1 = select(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), any(vec4<bool>(true, false, false, false))), select(vec4<bool>(global0.a.a.x >= 2147483647i, true, true, any(vec4<bool>(true, false, true, false))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, false, false), true), _wgslsmith_f_op_f32(round(283f)) != _wgslsmith_f_op_f32(-1468f * -1376f)), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true))), !vec4<bool>(true, true, any(vec3<bool>(true, false, true)), true)), !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), true), true), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true)))));
    var var_2 = Struct_1(_wgslsmith_mod_vec3_i32(abs(firstTrailingBit(vec3<i32>(-43572i, 1i, 29937i))), -(~vec3<i32>(-24283i, global0.a.a.x, u_input.b))));
    return !(!(var_1.x == !all(var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(true, all(vec2<bool>(true, true)) & (_wgslsmith_f_op_f32(-1981f + global2.x) < _wgslsmith_f_op_f32(-global2.x)), false), select(vec3<bool>(any(vec3<bool>(false, true, true)) || (u_input.a.x != 2147483647i), func_1(), false), select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), func_3(-26380i)), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(false, false, true), vec3<bool>(true, true, true)))), vec3<bool>(true, true, all(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-451f + 353f) + _wgslsmith_f_op_f32(select(global2.x, -1264f, false))))), vec2<f32>(global2.x, global2.x)));
    let var_2 = global3[_wgslsmith_index_u32(1u, 29u)];
    let var_3 = func_4(~1u, any(select(vec3<bool>(var_0.x, var_0.x, any(vec4<bool>(true, var_0.x, true, true))), !select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true), var_0.x), all(var_0.yx))), func_4(~4294967295u, true, global0.a));
    let var_4 = func_4(~(~8892u), true, Struct_1(vec3<i32>(var_2.a.x, var_2.a.x, global0.a.a.x)));
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(-2159f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + _wgslsmith_f_op_f32(min(647f, -626f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1, var_1, false)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1 + vec2<f32>(282f, -1603f))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(2620f, -812f) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, var_1.x) + -1135f), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_1.x, 370f), global2.x)))));
    let var_5 = var_4;
    global1 = ~(~1u);
    var var_6 = Struct_2(var_4);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-1398f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1610f)), -375f)), -1246f))), vec4<i32>(countOneBits(abs(global0.a.a.x)), u_input.a.x, 48788i, 57145i));
}

