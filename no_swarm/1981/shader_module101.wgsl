struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(vec2<f32>(-418f, 1631f), 9355u, i32(-2147483648), vec2<u32>(102836u, 67595u)), Struct_2(vec2<f32>(891f, -599f), 23833u, -1i, vec2<u32>(30718u, 0u)), Struct_2(vec2<f32>(-2564f, 249f), 4294967295u, -1i, vec2<u32>(1u, 1u)), Struct_2(vec2<f32>(-1000f, 621f), 0u, 0i, vec2<u32>(71683u, 0u)), Struct_2(vec2<f32>(964f, 482f), 15210u, -17695i, vec2<u32>(0u, 4294967295u)), Struct_2(vec2<f32>(220f, 707f), 4294967295u, 947i, vec2<u32>(57471u, 17898u)), Struct_2(vec2<f32>(1000f, 1713f), 1u, 34505i, vec2<u32>(90698u, 4294967295u)), Struct_2(vec2<f32>(1000f, 584f), 1u, 1i, vec2<u32>(1u, 31242u)), Struct_2(vec2<f32>(141f, 536f), 2176u, 60595i, vec2<u32>(4294967295u, 4294967295u)), Struct_2(vec2<f32>(2685f, -389f), 0u, 2190i, vec2<u32>(1u, 22672u)), Struct_2(vec2<f32>(-2152f, 383f), 0u, -1i, vec2<u32>(1u, 32121u)), Struct_2(vec2<f32>(-1675f, 1043f), 64548u, -31772i, vec2<u32>(15927u, 1463u)), Struct_2(vec2<f32>(-748f, 790f), 4294967295u, 2147483647i, vec2<u32>(17845u, 4294967295u)), Struct_2(vec2<f32>(-1988f, -1330f), 0u, 25636i, vec2<u32>(4294967295u, 7591u)), Struct_2(vec2<f32>(1122f, 1722f), 103005u, 0i, vec2<u32>(1u, 1u)));

var<private> global1: array<vec3<u32>, 9> = array<vec3<u32>, 9>(vec3<u32>(20295u, 0u, 28988u), vec3<u32>(4294967295u, 1u, 22773u), vec3<u32>(60379u, 161u, 4294967295u), vec3<u32>(10056u, 1u, 0u), vec3<u32>(77576u, 54674u, 4294967295u), vec3<u32>(4294967295u, 65015u, 4294967295u), vec3<u32>(4294967295u, 132256u, 87875u), vec3<u32>(1u, 86722u, 51038u), vec3<u32>(29800u, 4294967295u, 27332u));

var<private> global2: vec3<f32> = vec3<f32>(446f, 893f, -157f);

var<private> global3: array<Struct_2, 27>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: i32) -> vec3<bool> {
    let var_0 = -671f;
    let var_1 = select(!select(vec4<bool>(any(vec3<bool>(false, true, false)), select(false, true, false), select(false, true, true), false), vec4<bool>(true, true, true, any(vec3<bool>(false, true, false))), vec4<bool>(true, true, true, true)), vec4<bool>((_wgslsmith_add_u32(u_input.a.x, 36878u) < (2857u & u_input.a.x)) & true, (_wgslsmith_mult_u32(u_input.a.x, 27052u) < 1u) != all(vec3<bool>(true, true, true)), true, false), vec4<bool>(true, !any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), !(any(vec3<bool>(false, true, false)) != true), any(!select(vec2<bool>(false, false), vec2<bool>(true, true), false))));
    global2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1153f + -800f))), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-487f))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-145f + arg_0.x) - _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(global2.x, global2.x), -896f), arg_0.x)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0, _wgslsmith_f_op_f32(select(629f, arg_0.x, false)), -1206f, 1f))));
    var var_3 = Struct_1(vec3<u32>(3557u, 4294967295u, _wgslsmith_add_u32(min(1u, countOneBits(6210u)), _wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_sub_u32(u_input.b, 94753u), u_input.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x))) + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global2.x, -321f)))) * -122f));
    return vec3<bool>(!(!(max(var_3.a.x, 24064u) < (u_input.b >> (var_3.a.x % 32u)))), all(var_1), var_3.b < _wgslsmith_f_op_f32(-var_3.b));
}

fn func_4(arg_0: bool) -> i32 {
    let var_0 = vec2<i32>(abs(-1i), -_wgslsmith_dot_vec3_i32(countOneBits(min(vec3<i32>(-7475i, -14868i, -42594i), vec3<i32>(12844i, 12586i, -83515i))), select(vec3<i32>(-16571i, -2147483647i, -17639i), ~vec3<i32>(-9063i, 29i, 2147483647i), false)));
    let var_1 = Struct_1(vec3<u32>(~u_input.b, _wgslsmith_mod_u32(countOneBits(u_input.c), 1u), 0u), -1000f);
    var var_2 = abs(u_input.a.x);
    let var_3 = false;
    let var_4 = var_1;
    return _wgslsmith_mod_i32(var_0.x, ~_wgslsmith_sub_i32(var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, -6878i, 52940i) | vec3<i32>(var_0.x, var_0.x, 65220i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -1i, var_0.x), vec3<i32>(44079i, var_0.x, var_0.x), vec3<i32>(var_0.x, var_0.x, var_0.x)))));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec4<bool>) -> u32 {
    var var_0 = vec3<bool>(any(arg_2), ~(arg_1.x >> (108312u % 32u)) != -1i, ~_wgslsmith_mult_u32(~4294967295u, 1u | arg_0.b) == _wgslsmith_div_u32(0u, ~_wgslsmith_clamp_u32(1u, 4294967295u, u_input.c)));
    global3 = array<Struct_2, 27>();
    let var_1 = vec2<i32>(func_4(all(!func_3(arg_0.a, arg_1, arg_0.c))), _wgslsmith_sub_i32(arg_0.c, arg_1.x));
    global3 = array<Struct_2, 27>();
    let var_2 = u_input.c;
    return ~(~4294967295u);
}

fn func_5(arg_0: i32, arg_1: vec4<u32>) -> bool {
    var var_0 = Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, arg_1.x), reverseBits(_wgslsmith_add_vec3_u32(~global1[_wgslsmith_index_u32(arg_1.x, 9u)], abs(u_input.a)))), _wgslsmith_f_op_f32(sign(903f)));
    var var_1 = ~_wgslsmith_add_vec4_i32(~vec4<i32>(-arg_0, _wgslsmith_mult_i32(arg_0, arg_0), 24337i, abs(0i)), vec4<i32>(arg_0 << (0u % 32u), _wgslsmith_div_i32(1i, 1i), arg_0, 0i) >> (~(~vec4<u32>(0u, 5542u, 53661u, 1u)) % vec4<u32>(32u)));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(var_0.a), global1[_wgslsmith_index_u32(1u & var_0.a.x, 9u)]), _wgslsmith_add_u32(arg_1.x, min(arg_1.x, var_0.a.x)), ~(~40225u))), min(_wgslsmith_sub_vec3_u32(min(vec3<u32>(0u, 20937u, 4294967295u), vec3<u32>(u_input.a.x, 1u, u_input.c)), max(global1[_wgslsmith_index_u32(28332u, 9u)], global1[_wgslsmith_index_u32(38385u, 9u)])), firstLeadingBit(~vec3<u32>(4294967295u, 52376u, 0u))) | ~firstLeadingBit(countOneBits(arg_1.yxz))), 15u)];
    global0 = array<Struct_2, 15>();
    var_0 = Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(9730u, var_2.d.x, min(arg_1.x, abs(var_0.a.x))), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.c, 0u, arg_1.x) << (u_input.a % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(arg_1.zxx, _wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(4294967295u, var_0.a.x, var_2.d.x))))), _wgslsmith_f_op_f32(step(583f, 999f)));
    return true;
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = vec3<bool>(func_5(arg_1.c, vec4<u32>(func_2(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], vec2<i32>(7057i, arg_1.c), vec4<bool>(true, true, false, true)) ^ arg_1.d.x, arg_1.b, 17416u, 17117u)), _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(5323u, 0u, arg_1.d.x, 31760u), vec4<u32>(u_input.a.x, arg_1.b, arg_1.d.x, u_input.b)), vec4<u32>(~u_input.c, 21643u, 9163u, ~4294967295u)) != u_input.c, all(vec4<bool>(true, true, true, true)));
    var var_1 = _wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.a.x, arg_1.d.x, u_input.c, arg_1.b), vec4<u32>(~4294967295u, _wgslsmith_div_u32(u_input.b, arg_1.d.x), 1u, ~u_input.c)), ~vec4<u32>(func_2(arg_1, vec2<i32>(17788i, arg_1.c), vec4<bool>(false, var_0.x, true, var_0.x)), max(0u, 66708u), arg_1.b | 1u, arg_1.b) & reverseBits(vec4<u32>(_wgslsmith_clamp_u32(10309u, 8305u, 6614u), countOneBits(1u), _wgslsmith_sub_u32(4294967295u, 4294967295u), _wgslsmith_mod_u32(u_input.c, 7212u))));
    let var_2 = Struct_1(vec3<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, var_1.x, arg_1.d.x, 36893u)), vec4<u32>(0u, u_input.b ^ 0u, 67996u, ~41470u)), 27829u, _wgslsmith_sub_u32(u_input.a.x, ~(~5259u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -258f)));
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(29745u, 71704u), select(var_1.yw, var_1.wy, var_0.yx)), ~vec2<u32>(u_input.c, 121827u))), ~u_input.c, u_input.a.x), 15u)];
    let var_4 = Struct_2(global2.zz, min(1u, ~select(_wgslsmith_mod_u32(var_3.d.x, u_input.b), var_1.x & u_input.b, true)), -firstTrailingBit(_wgslsmith_mult_i32(-67183i, 1i)), var_3.d);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec3<f32>(170f, _wgslsmith_f_op_f32(floor(-1973f)), 1f);
    global1 = array<vec3<u32>, 9>();
    var var_0 = Struct_1(global1[_wgslsmith_index_u32(~(~u_input.b), 9u)], 312f);
    var var_1 = func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0.b)), _wgslsmith_f_op_f32(var_0.b + var_0.b)), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0.b)), _wgslsmith_f_op_f32(-var_0.b))), abs(302u), ~(~1i), _wgslsmith_mult_vec2_u32((u_input.a.xx >> (u_input.a.zy % vec2<u32>(32u))) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.a.x, 0u), vec2<u32>(1u, 0u), vec2<u32>(1u, 0u)) % vec2<u32>(32u)), ~(u_input.a.xy | var_0.a.zz))));
    global3 = array<Struct_2, 27>();
    var var_2 = 610f;
    var_0 = func_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1403f, _wgslsmith_f_op_f32(var_1.b - 1035f))) * _wgslsmith_f_op_f32(-var_0.b)))), Struct_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, _wgslsmith_f_op_f32(var_0.b + var_0.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(330f, -1571f)))))), _wgslsmith_sub_u32(0u, var_1.a.x | _wgslsmith_mult_u32(0u, var_1.a.x)), -min(_wgslsmith_mult_i32(-2147483647i, 0i), 9454i), vec2<u32>(var_0.a.x, var_1.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer((~(vec3<i32>(1i, 2147483647i, 15345i) >> (global1[_wgslsmith_index_u32(2471u, 9u)] % vec3<u32>(32u))) << (var_1.a % vec3<u32>(32u))) >> (var_1.a % vec3<u32>(32u)), max(-_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-4608i, -1i, 16724i, 22127i)), _wgslsmith_div_vec4_i32(~(~vec4<i32>(-8614i, -19619i, 2147483647i, 2147483647i)), vec4<i32>(1i, 1i, 1i, 1i))), _wgslsmith_add_vec4_u32(reverseBits(~vec4<u32>(1u, 0u, var_0.a.x, var_1.a.x)) >> (reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 1u, 90802u, 0u), vec4<u32>(14539u, var_1.a.x, var_0.a.x, var_0.a.x), vec4<u32>(60071u, 11651u, u_input.a.x, 94521u))) % vec4<u32>(32u)), vec4<u32>(min(9966u, _wgslsmith_mod_u32(0u, 24878u)), ~(~u_input.b), var_0.a.x, 51735u)), -567f);
}

