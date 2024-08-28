struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec4<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool;

var<private> global2: Struct_1;

var<private> global3: Struct_2 = Struct_2(958f, Struct_1(vec4<i32>(30000i, 36901i, 44037i, 1i), vec4<u32>(0u, 39634u, 1u, 1u), true));

var<private> global4: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(988f, Struct_1(vec4<i32>(0i, -11163i, -7272i, 10118i), vec4<u32>(19114u, 51138u, 4294967295u, 0u), false)), Struct_2(-734f, Struct_1(vec4<i32>(2147483647i, -71980i, -73434i, 1i), vec4<u32>(4294967295u, 1u, 1u, 28677u), true)), Struct_2(1193f, Struct_1(vec4<i32>(-2233i, 2147483647i, 48067i, -31686i), vec4<u32>(43637u, 11669u, 0u, 0u), true)), Struct_2(975f, Struct_1(vec4<i32>(32148i, 0i, 0i, 43447i), vec4<u32>(4294967295u, 57260u, 33885u, 25926u), true)), Struct_2(1557f, Struct_1(vec4<i32>(24938i, 2147483647i, 0i, -83510i), vec4<u32>(24369u, 1u, 1u, 0u), false)), Struct_2(1090f, Struct_1(vec4<i32>(1i, 1i, 9178i, -874i), vec4<u32>(0u, 1u, 1u, 0u), false)), Struct_2(-1000f, Struct_1(vec4<i32>(0i, 23986i, -3208i, 1i), vec4<u32>(4294967295u, 0u, 0u, 1u), true)), Struct_2(428f, Struct_1(vec4<i32>(18059i, -64962i, -26213i, 30956i), vec4<u32>(13332u, 1u, 93789u, 10475u), false)), Struct_2(-329f, Struct_1(vec4<i32>(43818i, 0i, 9368i, -22093i), vec4<u32>(34580u, 4092u, 0u, 37305u), true)), Struct_2(821f, Struct_1(vec4<i32>(-18853i, -24528i, 1i, 0i), vec4<u32>(84921u, 14u, 14505u, 0u), false)), Struct_2(-220f, Struct_1(vec4<i32>(0i, -1i, 23195i, 1i), vec4<u32>(0u, 40222u, 44511u, 1u), false)), Struct_2(413f, Struct_1(vec4<i32>(32882i, -25146i, 47819i, i32(-2147483648)), vec4<u32>(1u, 50610u, 72463u, 9478u), true)), Struct_2(441f, Struct_1(vec4<i32>(1i, 2147483647i, 19805i, -14941i), vec4<u32>(4294967295u, 0u, 73663u, 0u), true)), Struct_2(566f, Struct_1(vec4<i32>(-12981i, 13285i, 0i, 54451i), vec4<u32>(4294967295u, 22563u, 10758u, 32285u), false)), Struct_2(-648f, Struct_1(vec4<i32>(-7228i, 2147483647i, -1i, 18480i), vec4<u32>(4294967295u, 4042u, 21661u, 0u), true)), Struct_2(-1747f, Struct_1(vec4<i32>(i32(-2147483648), 0i, 44574i, -1i), vec4<u32>(61900u, 20013u, 12943u, 41143u), false)), Struct_2(-641f, Struct_1(vec4<i32>(13978i, -11176i, -36641i, 1i), vec4<u32>(36681u, 1u, 0u, 36728u), true)), Struct_2(-803f, Struct_1(vec4<i32>(3440i, 0i, 1i, 0i), vec4<u32>(0u, 1u, 40726u, 0u), false)), Struct_2(-186f, Struct_1(vec4<i32>(-1i, 0i, 23336i, -23877i), vec4<u32>(1u, 41162u, 0u, 4294967295u), true)), Struct_2(941f, Struct_1(vec4<i32>(0i, 17844i, 2147483647i, -32260i), vec4<u32>(1u, 51419u, 0u, 1791u), false)), Struct_2(153f, Struct_1(vec4<i32>(0i, 1i, i32(-2147483648), -10583i), vec4<u32>(50287u, 62554u, 1u, 0u), false)), Struct_2(-254f, Struct_1(vec4<i32>(1i, 89574i, 3500i, -9610i), vec4<u32>(68053u, 4294967295u, 27609u, 8092u), true)), Struct_2(1000f, Struct_1(vec4<i32>(-1i, i32(-2147483648), 17065i, 7754i), vec4<u32>(8585u, 0u, 4294967295u, 36403u), true)), Struct_2(-1044f, Struct_1(vec4<i32>(-9411i, -1i, i32(-2147483648), -68278i), vec4<u32>(0u, 1u, 0u, 24799u), true)), Struct_2(-1000f, Struct_1(vec4<i32>(-9662i, 11992i, 51644i, 32909i), vec4<u32>(84374u, 15742u, 0u, 1u), false)), Struct_2(-796f, Struct_1(vec4<i32>(i32(-2147483648), 33687i, 36088i, -4414i), vec4<u32>(61136u, 1u, 109991u, 4294967295u), false)), Struct_2(-900f, Struct_1(vec4<i32>(-1i, 2147483647i, 13593i, -34031i), vec4<u32>(20089u, 105956u, 1u, 15135u), false)), Struct_2(220f, Struct_1(vec4<i32>(9857i, -50153i, 2147483647i, 25029i), vec4<u32>(1u, 1u, 109134u, 62689u), true)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    var var_0 = -22744i;
    let var_1 = arg_1;
    global4 = array<Struct_2, 28>();
    var var_2 = 1i;
    global4 = array<Struct_2, 28>();
    return arg_0;
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_2) -> vec4<u32> {
    let var_0 = global4[_wgslsmith_index_u32(min(_wgslsmith_dot_vec3_u32(firstTrailingBit(~abs(vec3<u32>(global3.b.b.x, global2.b.x, global0.b.x))), vec3<u32>(u_input.a, u_input.a, arg_2.b.b.x) | vec3<u32>(_wgslsmith_clamp_u32(948u, 1u, 12231u), min(global3.b.b.x, 52944u), 1u)), ~global2.b.x), 28u)];
    return vec4<u32>(_wgslsmith_dot_vec2_u32(global0.b.yy, vec2<u32>(~(~14210u), 1u)), _wgslsmith_mult_u32(global2.b.x, ~_wgslsmith_mod_u32(global2.b.x, reverseBits(67534u))), firstTrailingBit(~min(global2.b.x, func_2(Struct_1(vec4<i32>(global3.b.a.x, 1i, var_0.b.a.x, var_0.b.a.x), vec4<u32>(global0.b.x, var_0.b.b.x, arg_2.b.b.x, global0.b.x), false), global3.a).b.x)), _wgslsmith_mult_u32(~1u, var_0.b.b.x));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: bool, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = func_2(Struct_1(_wgslsmith_div_vec4_i32(arg_0.b.a, max(arg_0.b.a, global3.b.a)), _wgslsmith_div_vec4_u32(arg_0.b.b | _wgslsmith_div_vec4_u32(global2.b, global2.b), global0.b), !any(!vec4<bool>(global3.b.c, true, global0.c, arg_0.b.c))), -510f);
    let var_1 = arg_0.b;
    global3 = arg_0;
    var var_2 = _wgslsmith_mult_i32(-27165i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(reverseBits(-21552i) >> (~global0.b.x % 32u), ~1i, _wgslsmith_div_i32(_wgslsmith_mod_i32(14482i, var_0.a.x), _wgslsmith_mod_i32(var_0.a.x, u_input.b))), 2147483647i));
    let var_3 = global3.b;
    return global3.b;
}

fn func_1(arg_0: vec2<u32>) -> f32 {
    let var_0 = func_4(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~(u_input.c & 0u), u_input.a, 46377u, ~_wgslsmith_dot_vec3_u32(global0.b.wwx, vec3<u32>(4294967295u, global3.b.b.x, 0u))), func_3(select(vec3<bool>(global3.b.c, global2.c, true), !vec3<bool>(global0.c, global0.c, global0.c), vec3<bool>(global3.b.c, false, false)), true, Struct_2(global3.a, func_2(global3.b, 1115f)))), 28u)], all(vec3<bool>(global0.c, global2.b.x >= global2.b.x, true)) != any(vec2<bool>(true, true)), global3.b.c, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2928f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-2084f)), _wgslsmith_f_op_f32(-global3.a))), global3.a, _wgslsmith_f_op_f32(trunc(593f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a, global3.a, -214f, -734f)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-197f, -1100f, global3.a, global3.a)))))), global0.c)));
    var var_1 = vec4<i32>(~var_0.a.x, countOneBits(firstLeadingBit(-38117i)), global0.a.x, -33808i >> (~select(_wgslsmith_add_u32(9094u, global3.b.b.x), 1u, global3.b.c) % 32u));
    var var_2 = reverseBits(vec4<i32>(39785i, global3.b.a.x, global3.b.a.x, -23521i >> (_wgslsmith_clamp_u32(global3.b.b.x, 1u, 31086u) % 32u)));
    var var_3 = Struct_2(global3.a, var_0);
    let var_4 = global3.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(max(-722f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a * global3.a) * global3.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(161f, _wgslsmith_f_op_f32(-151f - 580f))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global0.b.x, global2.b.x), global0.b.yx), min(global3.b.b.yx, global0.b.xz)))) + -1663f), _wgslsmith_f_op_f32(ceil(-854f)));
    var var_1 = Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(i32(-1i) * -7128i, 2147483647i, -2147483647i, u_input.b), vec4<i32>(global2.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(39686i, global0.a.x, 0i, -2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(global2.a.x, global3.b.a.x, -35873i, 62412i), vec4<i32>(global3.b.a.x, global3.b.a.x, global0.a.x, -42282i))), ~(-u_input.b), 16434i)), firstLeadingBit(vec4<u32>(select(u_input.c, u_input.c >> (55544u % 32u), select(global2.c, true, global3.b.c)), countOneBits(global3.b.b.x), global3.b.b.x, _wgslsmith_div_u32(20749u, u_input.c))), true);
    var var_2 = var_0;
    global0 = Struct_1(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(36511i, -182i) >> (max(0u, 1u) % 32u), _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.b, 15007i), 2064i)), 1i, ~16554i, func_2(func_2(func_4(Struct_2(1000f, Struct_1(vec4<i32>(u_input.b, 1i, 11497i, -2147483647i), vec4<u32>(global3.b.b.x, global3.b.b.x, 17528u, 1u), global3.b.c)), true, global0.c, var_0), 476f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x)))).a.x), global3.b.b, abs(-32165i) < ~u_input.b);
    global2 = Struct_1(-vec4<i32>(min(1i, var_1.a.x), global0.a.x, -9367i ^ u_input.b, i32(-1i) * -u_input.b), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, 1u, 1u), _wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(global2.b.x, 1u, 53117u, 4294967295u)), ~var_1.b, vec4<u32>(global0.b.x, global3.b.b.x, var_1.b.x, global3.b.b.x))), vec4<u32>(_wgslsmith_sub_u32(20278u, func_4(Struct_2(-1414f, Struct_1(global3.b.a, var_1.b, global0.c)), true, global3.b.c, vec4<f32>(var_0.x, global3.a, 1000f, var_2.x)).b.x), 11084u, global3.b.b.x, _wgslsmith_div_u32(max(56626u, var_1.b.x), 1u))), global3.b.c);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_2.yyx, var_0.yzy))))));
    var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -210f), var_3.x, _wgslsmith_f_op_f32(ceil(global3.a)), -1495f) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-871f, -659f, 584f, 235f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_2.x, 513f, var_2.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a, var_3.x, var_3.x, 1055f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(var_0)))), vec4<f32>(global3.a, _wgslsmith_f_op_f32(-1364f * var_3.x), _wgslsmith_f_op_f32(-global3.a), _wgslsmith_f_op_f32(floor(-1150f)))), -694f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(69486u, _wgslsmith_clamp_i32(~64526i, 1i, -_wgslsmith_mult_i32(~29258i, u_input.b | var_1.a.x)), _wgslsmith_f_op_f32(-var_0.x), global0.b, vec2<i32>(1i, ~(~global0.a.x) | -abs(-2147483647i)));
}

