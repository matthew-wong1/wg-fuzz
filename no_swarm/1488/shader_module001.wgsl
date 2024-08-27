struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec4<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<u32>,
    d: f32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
    c: vec2<u32>,
    d: Struct_3,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: Struct_3, arg_3: vec4<bool>) -> vec3<u32> {
    var var_0 = !(any(!arg_3) & !(!arg_3.x));
    var_0 = any(!arg_3.yxw);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -235f))));
    global0 = array<f32, 3>();
    var var_2 = max(_wgslsmith_sub_vec3_u32(select(~vec3<u32>(arg_0.c.x, 8728u, arg_2.a), ~vec3<u32>(47303u, 52606u, 28560u), any(arg_3)) ^ ~(vec3<u32>(arg_0.d.a, arg_0.d.a, 18074u) >> (vec3<u32>(52123u, arg_0.d.a, arg_0.c.x) % vec3<u32>(32u))), ~abs(vec3<u32>(4294967295u, 94509u, 4294967295u))), max(~vec3<u32>(0u, ~43432u, arg_2.a), vec3<u32>(~4294967295u, abs(~31400u), reverseBits(4294967295u))));
    return ~(~vec3<u32>(0u | _wgslsmith_add_u32(arg_0.d.a, arg_0.d.a), ~51233u, firstTrailingBit(_wgslsmith_mult_u32(1u, var_2.x))));
}

fn func_2(arg_0: Struct_1) -> u32 {
    global0 = array<f32, 3>();
    var var_0 = Struct_2(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_div_u32(arg_0.b, arg_0.b), 1u, _wgslsmith_add_u32(arg_0.b, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b, 11189u), vec2<u32>(arg_0.b, 45374u))), ~arg_0.b & 4294967295u), vec4<u32>(~arg_0.b, 43036u, 6705u, 0u) | ~vec4<u32>(arg_0.b, 9763u, 14055u, 35437u)), arg_0, _wgslsmith_sub_vec3_u32((vec3<u32>(35077u, 16786u, 4294967295u) & (vec3<u32>(arg_0.b, arg_0.b, 31242u) ^ vec3<u32>(arg_0.b, 21594u, 4294967295u))) << (~(~vec3<u32>(32265u, arg_0.b, arg_0.b)) % vec3<u32>(32u)), select(firstTrailingBit(vec3<u32>(26587u, 51895u, arg_0.b) & vec3<u32>(arg_0.b, arg_0.b, arg_0.b)), _wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(arg_0.b, arg_0.b, 4294967295u)), vec3<u32>(arg_0.b, arg_0.b, 77082u) << (vec3<u32>(arg_0.b, 0u, 34506u) % vec3<u32>(32u)), func_3(Struct_4(arg_0.d.x, vec2<bool>(true, true), vec2<u32>(20262u, 33216u), Struct_3(arg_0.b), global0[_wgslsmith_index_u32(arg_0.b, 3u)]), arg_0.a.x, Struct_3(4562u), arg_0.c)), (arg_0.c.x || arg_0.c.x) || arg_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 3u)] + 504f) * -1033f));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1318f)));
    var var_2 = select(-u_input.a, u_input.a, true);
    let var_3 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_0.d) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(2286f, 1453f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-427f, var_0.d), vec2<f32>(var_0.d, var_0.d)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d, var_0.d)))), all(vec3<bool>(true, arg_0.c.x, true)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-287f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u ^ var_0.c.x, 3u)] + -1000f)))));
    return func_3(Struct_4(min(countOneBits(-arg_0.d.x), reverseBits(_wgslsmith_mod_i32(39324i, 9258i))), !vec2<bool>(all(vec3<bool>(var_0.b.a.x, arg_0.a.x, true)), true), vec2<u32>(~arg_0.b, 90706u), Struct_3(~_wgslsmith_add_u32(arg_0.b, var_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3.x), -959f, all(vec3<bool>(true, false, arg_0.a.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(4294967295u, 3u)]))))), var_0.b.a.x, Struct_3(~(~_wgslsmith_sub_u32(var_0.b.b, var_0.a.x))), !var_0.b.a).x;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> vec2<i32> {
    var var_0 = ~u_input.a.x;
    var var_1 = global0[_wgslsmith_index_u32(reverseBits(arg_0.a ^ 0u), 3u)] == _wgslsmith_f_op_f32(abs(-2126f));
    global0 = array<f32, 3>();
    var_1 = all(select(!vec4<bool>(any(vec3<bool>(false, true, true)), u_input.a.x < u_input.a.x, true, all(vec2<bool>(true, true))), select(select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), true), false), vec4<bool>(u_input.a.x > -17088i, true, true, true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), false), all(vec2<bool>(false, false)))), vec4<bool>(true, true, true, true)));
    let var_2 = Struct_4(2147483647i, select(vec2<bool>(true, true), !select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), -1i < u_input.a.x), select(vec2<bool>(true, true), vec2<bool>(false, true), u_input.a.x == u_input.a.x), vec2<bool>(false, all(vec3<bool>(true, false, false))))), ~(~(~(~vec2<u32>(arg_0.a, 45256u)))), Struct_3(0u), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(16449u, 3u)]));
    return u_input.a.xy;
}

fn func_1() -> Struct_3 {
    var var_0 = -u_input.a.x;
    var var_1 = _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(countOneBits(0u), 3u)]));
    var var_2 = func_4(Struct_3(func_2(Struct_1(vec4<bool>(true, true, true, true), ~51539u, select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true), u_input.a.zyw))), Struct_3(39165u));
    var_0 = ~(-49741i);
    var_2 = _wgslsmith_add_vec2_i32(vec2<i32>(-7917i, -_wgslsmith_dot_vec3_i32(abs(u_input.a.wyy), firstTrailingBit(vec3<i32>(u_input.a.x, -32061i, u_input.a.x)))), ~(-(vec2<i32>(20940i, 2147483647i) | vec2<i32>(9899i, u_input.a.x))));
    return Struct_3(1u);
}

fn func_5(arg_0: Struct_3, arg_1: vec2<u32>) -> Struct_4 {
    let var_0 = vec2<i32>(1i, 2360i);
    global0 = array<f32, 3>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)))));
    var var_2 = Struct_2(~vec4<u32>(_wgslsmith_mod_u32(~51309u, _wgslsmith_sub_u32(arg_1.x, 1u)), arg_0.a, 5207u, _wgslsmith_clamp_u32(~arg_1.x, 1u >> (arg_0.a % 32u), 11958u)), Struct_1(select(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), arg_1.x, select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), false), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, any(vec2<bool>(true, false))), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false))), abs(reverseBits(u_input.a.yzy))), vec3<u32>(_wgslsmith_sub_u32(arg_0.a, ~(~22834u)), _wgslsmith_sub_u32(1655u, ~_wgslsmith_clamp_u32(6820u, 89531u, 6458u)), arg_0.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_1.x, arg_0.a) >> (~11285u % 32u), 3u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(arg_1.x, arg_1.x), reverseBits(arg_0.a)), 3u)])));
    var var_3 = false;
    return Struct_4(reverseBits((2147483647i << (_wgslsmith_div_u32(var_2.c.x, arg_1.x) % 32u)) & -(var_2.b.d.x & var_0.x)), vec2<bool>(false, false), select(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(var_2.a.wx, ~var_2.a.wy), ~(vec2<u32>(arg_0.a, arg_1.x) & arg_1), _wgslsmith_clamp_vec2_u32(var_2.c.yz | vec2<u32>(11126u, 24485u), var_2.a.yy, vec2<u32>(arg_1.x, 7675u))), abs(vec2<u32>(func_1().a, 4294967295u)), select(vec2<bool>(any(vec2<bool>(var_2.b.c.x, false)), any(vec3<bool>(var_2.b.a.x, var_2.b.a.x, var_2.b.c.x))), select(vec2<bool>(var_2.b.a.x, true), !var_2.b.c.yw, global0[_wgslsmith_index_u32(105671u, 3u)] < global0[_wgslsmith_index_u32(arg_1.x, 3u)]), !(!vec2<bool>(true, var_2.b.c.x)))), Struct_3(~(~59239u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-573f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(1785u, 3u)]))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 3>();
    let var_0 = func_5(func_1(), vec2<u32>(_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(26333u, 5607u), vec2<u32>(31576u, 0u), vec2<u32>(17387u, 5440u)), vec2<u32>(61376u, 0u) << (select(vec2<u32>(4294967295u, 0u), vec2<u32>(73875u, 4294967295u), vec2<bool>(true, false)) % vec2<u32>(32u))), 1u));
    global0 = array<f32, 3>();
    var var_1 = max(var_0.c, var_0.c & vec2<u32>(_wgslsmith_dot_vec2_u32(func_3(Struct_4(34305i, vec2<bool>(var_0.b.x, var_0.b.x), vec2<u32>(0u, var_0.d.a), Struct_3(var_0.d.a), -2500f), var_0.b.x, var_0.d, vec4<bool>(false, var_0.b.x, var_0.b.x, var_0.b.x)).yz, _wgslsmith_mult_vec2_u32(var_0.c, var_0.c)), countOneBits(var_0.d.a)));
    var var_2 = countOneBits(~_wgslsmith_div_i32(abs(u_input.a.x), _wgslsmith_div_i32(u_input.a.x, 0i)));
    var var_3 = Struct_1(select(!(!(!vec4<bool>(true, var_0.b.x, var_0.b.x, true))), vec4<bool>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.x, 3u)]) >= -1401f, all(!vec2<bool>(true, var_0.b.x)), false, min(var_1.x, var_0.d.a) < _wgslsmith_sub_u32(var_0.d.a, var_1.x)), !select(!vec4<bool>(true, false, var_0.b.x, false), vec4<bool>(true, false, var_0.b.x, var_0.b.x), !vec4<bool>(var_0.b.x, false, true, false))), ~var_1.x, select(select(!vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, false), vec4<bool>(func_5(var_0.d, vec2<u32>(10350u, var_1.x)).b.x, var_0.b.x, true != var_0.b.x, var_0.a >= var_0.a), select(vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x), !vec4<bool>(var_0.b.x, false, true, true), var_0.b.x)), !(!vec4<bool>(var_0.b.x, var_0.b.x, false, var_0.b.x)), select(!vec4<bool>(false, var_0.b.x, false, false), !select(vec4<bool>(var_0.b.x, false, var_0.b.x, var_0.b.x), vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, false), vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x)), select(select(vec4<bool>(var_0.b.x, true, var_0.b.x, var_0.b.x), vec4<bool>(true, true, false, true), false), select(vec4<bool>(var_0.b.x, true, false, false), vec4<bool>(false, var_0.b.x, var_0.b.x, var_0.b.x), vec4<bool>(false, true, true, true)), all(vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x))))), vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(9545i, -1i), -1i, func_5(var_0.d, var_0.c).a) >> (61582u % 32u), abs(_wgslsmith_add_i32(var_0.a, 1i)), reverseBits(u_input.a.x)));
    var var_4 = Struct_3(8864u);
    let var_5 = Struct_4(_wgslsmith_mod_i32(-_wgslsmith_mult_i32(~var_0.a, min(35554i, 0i)), var_3.d.x), select(var_0.b, select(select(var_0.b, select(var_3.a.zz, vec2<bool>(false, var_3.c.x), var_3.c.x), var_3.a.x), !vec2<bool>(true, var_3.c.x), !(var_0.b.x && var_3.a.x)), !var_3.a.xz), ~var_0.c, Struct_3(~var_0.d.a), 1031f);
    let x = u_input.a;
    s_output = StorageBuffer(-var_5.a, var_0.e, _wgslsmith_mult_u32(_wgslsmith_div_u32(var_1.x, var_1.x), 2093u) >> (var_5.d.a % 32u), var_5.e);
}

