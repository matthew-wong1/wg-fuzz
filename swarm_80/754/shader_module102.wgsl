struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec4<u32>,
    d: Struct_2,
    e: bool,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<i32, 18> = array<i32, 18>(-10875i, 40260i, -7054i, 29666i, 2147483647i, 2806i, -16771i, i32(-2147483648), -30042i, 0i, 29370i, -32975i, i32(-2147483648), 2147483647i, i32(-2147483648), -1i, 25676i, 6417i);

var<private> global2: vec2<u32> = vec2<u32>(1u, 7548u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    global2 = ~_wgslsmith_mult_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(22599u, global2.x, global2.x, global2.x), vec4<u32>(0u, 1u, global2.x, global2.x)), 3401u), min(_wgslsmith_div_vec2_u32(vec2<u32>(0u, global2.x), vec2<u32>(4294967295u, 0u)), ~vec2<u32>(global2.x, 0u)) ^ _wgslsmith_div_vec2_u32(~vec2<u32>(48534u, 19814u), vec2<u32>(42602u, global2.x) & vec2<u32>(1u, 56386u)));
    return firstTrailingBit(9192u);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: f32) -> vec2<f32> {
    var var_0 = max(vec2<i32>(-2147483647i, -u_input.a), firstTrailingBit(~(~(vec2<i32>(-16627i, u_input.a) & vec2<i32>(17389i, u_input.a)))));
    var_0 = ~_wgslsmith_add_vec2_i32(vec2<i32>(min(2147483647i, _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(global2.x, 18u)], var_0.x, u_input.a)), select(~(-2147483647i), u_input.a, u_input.a < -2147483647i)), -reverseBits(-vec2<i32>(global1[_wgslsmith_index_u32(arg_0.a, 18u)], var_0.x)));
    var var_1 = arg_0.b.c.zx;
    global1 = array<i32, 18>();
    let var_2 = ~_wgslsmith_div_vec3_i32(abs(vec3<i32>(_wgslsmith_add_i32(var_0.x, 1i), -1i, u_input.a & -66211i)), abs(-vec3<i32>(var_0.x, -34814i, 1i) >> (~arg_1.xwy % vec3<u32>(32u))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.b.a.wy));
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_2(~(~(~vec4<u32>(75116u, 1u, global2.x, global2.x))) ^ vec4<u32>(~(~global2.x), ~4294967295u, _wgslsmith_add_u32(global2.x, global2.x) & (global2.x << (1u % 32u)), 1u));
    global1 = array<i32, 18>();
    global0 = vec2<f32>(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1304f)), _wgslsmith_f_op_f32(global0.x * 392f));
    let var_1 = global2.x;
    global0 = _wgslsmith_f_op_vec2_f32(func_4(Struct_3(func_3(), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0, 1267f, arg_0, 1120f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, -1365f, arg_0, -340f), vec4<f32>(global0.x, arg_0, global0.x, -288f))), any(vec2<bool>(false, false)))), vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-arg_0)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec3<bool>(false, false, true), true)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(arg_0 * 482f), -664f, _wgslsmith_f_op_f32(f32(-1f) * -402f), arg_0), vec2<f32>(1079f, _wgslsmith_f_op_f32(1593f - arg_0)), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true))), ~_wgslsmith_mod_vec4_u32(var_0.a, vec4<u32>(~global2.x, ~var_0.a.x, ~global2.x, 0u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(586f * arg_0)))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_0)), global0.x)), arg_0, global0.x, global0.x)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_4(Struct_3(26996u, Struct_1(vec4<f32>(global0.x, global0.x, arg_0, 111f), vec2<f32>(arg_0, arg_0), vec3<bool>(false, true, false)), Struct_1(vec4<f32>(1139f, arg_0, global0.x, arg_0), vec2<f32>(global0.x, arg_0), vec3<bool>(true, true, false))), var_0.a, -346f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -709f))), select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, false), true), true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0 + global0.x), _wgslsmith_f_op_f32(-arg_0))))), select(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), vec3<bool>(false, true, false)), !select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, false, true)), vec3<bool>(true, true, true)));
}

fn func_5(arg_0: Struct_4, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> vec4<i32> {
    global2 = vec2<u32>(arg_0.c.x, _wgslsmith_dot_vec3_u32(select(min(~arg_0.c.yzw, ~vec3<u32>(arg_0.d.a.x, arg_0.d.a.x, 1u)), vec3<u32>(~83433u, ~arg_0.c.x, _wgslsmith_dot_vec3_u32(arg_0.d.a.wzy, vec3<u32>(1u, 19790u, 18622u))), arg_3.c.x), ~countOneBits(arg_0.c.wwx)));
    global0 = vec2<f32>(arg_0.b.c.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(181f + global0.x))), _wgslsmith_f_op_f32(774f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.b.a.x - 419f))))));
    let var_0 = Struct_5(arg_0.b.a);
    global0 = arg_0.b.c.b;
    var var_1 = vec3<i32>(arg_0.a, arg_0.a, _wgslsmith_mult_i32(1i, ~(~u_input.a)));
    return _wgslsmith_add_vec4_i32(vec4<i32>(-5913i, ~select(1i, _wgslsmith_sub_i32(22341i, var_1.x), any(vec4<bool>(true, arg_1, true, false))), min(firstTrailingBit(~var_1.x), -1i), -15249i ^ min(1i, arg_0.a | -24636i)), -vec4<i32>(-(u_input.a ^ arg_0.a), global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(arg_0.d.a.yw, vec2<u32>(var_0.a, 4294967295u))), 18u)], min(_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(336u, 18u)], arg_0.a), arg_0.a & var_1.x), 1i));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec4_i32(func_5(Struct_4(u_input.a, Struct_3(86140u, Struct_1(vec4<f32>(-1026f, -181f, arg_0, global0.x), vec2<f32>(-362f, 556f), vec3<bool>(true, false, true)), Struct_1(vec4<f32>(1059f, global0.x, arg_0, arg_0), vec2<f32>(-130f, global0.x), vec3<bool>(false, true, false))), vec4<u32>(0u, global2.x, 37085u, 0u) ^ vec4<u32>(1u, 20155u, global2.x, global2.x), Struct_2(vec4<u32>(878u, global2.x, 4294967295u, global2.x)), false), any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), true, func_2(_wgslsmith_f_op_f32(1091f - -1468f), abs(1777i))) & ~vec4<i32>(30538i, abs(u_input.a), _wgslsmith_add_i32(-1i, 1i), -u_input.a), ~abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(global2.x, 18u)], -17568i, -2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 18u)], -2147483647i, -2533i, u_input.a), vec4<i32>(36158i, global1[_wgslsmith_index_u32(global2.x, 18u)], 35978i, u_input.a)), -vec4<i32>(21324i, u_input.a, u_input.a, -1i))));
    global1 = array<i32, 18>();
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(590f * global0.x))) * vec2<f32>(arg_0, 1537f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1526f, arg_0))))), true));
    let var_1 = any(vec3<bool>(_wgslsmith_dot_vec2_i32(abs(var_0.yx), var_0.zy) < -1i, global2.x <= 4294967295u, !select(true, any(vec2<bool>(true, true)), true)));
    let var_2 = ~max(vec2<u32>(global2.x, _wgslsmith_mod_u32(global2.x, 26034u)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(global2.x, 51501u) | vec2<u32>(1u, global2.x), abs(vec2<u32>(global2.x, 10977u)), select(vec2<u32>(11608u, 0u), vec2<u32>(global2.x, global2.x), var_1)));
    return func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, global0.x)) - global0.x)))), 18515i);
}

fn func_6(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_1) -> u32 {
    global0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.b - arg_2.b))));
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - -1629f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.x) * -1088f) * -622f));
    var var_1 = Struct_1(arg_2.a, func_1(arg_2.b.x).a.xx, vec3<bool>(!(!arg_2.c.x) & arg_2.c.x, false, arg_2.c.x));
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(-global0.x), arg_2.c.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(165f)))), -941f, _wgslsmith_div_f32(-1719f, _wgslsmith_f_op_f32(min(var_1.a.x, 253f)))))), arg_2.b, select(var_1.c, vec3<bool>(arg_2.c.x, true, !var_1.c.x), !vec3<bool>(-358f == arg_2.b.x, false, false)));
    let var_2 = Struct_5(~max(_wgslsmith_sub_u32(0u, arg_0.x ^ 21707u), _wgslsmith_dot_vec4_u32(select(vec4<u32>(global2.x, arg_0.x, arg_0.x, 0u), vec4<u32>(arg_0.x, 57567u, arg_0.x, global2.x), true), vec4<u32>(0u, 4294967295u, 1u, 1u) ^ vec4<u32>(arg_0.x, 91234u, arg_0.x, global2.x))));
    return arg_0.x;
}

fn func_7(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: Struct_3) -> Struct_1 {
    return func_2(global0.x, min(2147483647i ^ ~_wgslsmith_div_i32(2147483647i, global1[_wgslsmith_index_u32(80356u, 18u)]), -1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(Struct_2(vec4<u32>(~41060u, func_6(~vec2<u32>(global2.x, global2.x), select(-39200i, -1i, true), func_1(global0.x)), global2.x, global2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(710f, _wgslsmith_div_f32(1902f, _wgslsmith_f_op_f32(-global0.x)), 1533f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.x)) + _wgslsmith_f_op_f32(trunc(-1000f))))), select(!func_2(_wgslsmith_div_f32(1000f, global0.x), firstTrailingBit(61319i)).c, vec3<bool>(true, true, true), true), Struct_3(global2.x, func_1(_wgslsmith_f_op_f32(f32(-1f) * -348f)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-699f, -500f, global0.x, 679f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)), _wgslsmith_div_vec2_f32(vec2<f32>(-522f, 695f), vec2<f32>(global0.x, global0.x))), vec3<bool>(false, false, true))));
    global2 = vec2<u32>((func_3() >> (1u % 32u)) >> (~global2.x % 32u), ~global2.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_0.a.wyw - _wgslsmith_f_op_vec3_f32(max(var_0.a.zww, var_0.a.wxz))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(994f, -652f, var_0.b.x) + var_0.a.wxw)))), var_0.c)));
    let var_2 = Struct_2(select(vec4<u32>(_wgslsmith_div_u32(15843u, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, 8767u, 4294967295u), vec3<u32>(global2.x, global2.x, global2.x))), 0u, global2.x, countOneBits(firstTrailingBit(1u))), vec4<u32>(0u, global2.x, _wgslsmith_mult_u32(global2.x ^ global2.x, 4294967295u), ~(~global2.x)), !(!(!vec4<bool>(var_0.c.x, true, true, true)))));
    global2 = vec2<u32>(~(~1u), countOneBits(4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(-u_input.a, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(44605u << (_wgslsmith_dot_vec3_u32(var_2.a.zwz, vec3<u32>(1u, 0u, global2.x)) % 32u), ~(~8730u)), 18u)]), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 371f, -1128f) * _wgslsmith_f_op_vec3_f32(-var_1)), func_7(Struct_2(~var_2.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_0.b.x, 881f) - _wgslsmith_f_op_vec4_f32(var_0.a * vec4<f32>(-482f, var_1.x, var_0.b.x, var_0.b.x))), func_2(_wgslsmith_f_op_f32(-var_1.x), -40468i).c, Struct_3(_wgslsmith_div_u32(1u, var_2.a.x), func_1(var_0.b.x), Struct_1(vec4<f32>(-1638f, var_0.b.x, -500f, 1520f), var_1.yx, var_0.c))).a.wzz), _wgslsmith_dot_vec3_i32(-select(vec3<i32>(u_input.a, -29416i, u_input.a), vec3<i32>(u_input.a, -2147483647i, global1[_wgslsmith_index_u32(1u, 18u)]), vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x)) >> (var_2.a.xzx % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(global2.x, 18u)], global1[_wgslsmith_index_u32(9388u, 18u)], 0i), vec3<i32>(u_input.a, -30351i, -1i), vec3<i32>(-14906i, global1[_wgslsmith_index_u32(var_2.a.x, 18u)], -1i))), vec3<i32>(firstLeadingBit(u_input.a), abs(u_input.a), abs(-1i)))), 1u);
}

