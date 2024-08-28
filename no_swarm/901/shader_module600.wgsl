struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: u32,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_3, 4>;

var<private> global2: bool;

var<private> global3: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(11119u, vec4<u32>(32266u, 667u, 1u, 6157u), 0u, 0u), Struct_1(24837u, vec4<u32>(96297u, 0u, 0u, 1u), 80459u, 7057u), Struct_1(56587u, vec4<u32>(1u, 0u, 55u, 42227u), 1u, 1u), Struct_1(1086u, vec4<u32>(24203u, 1u, 58852u, 0u), 13110u, 39110u), Struct_1(32516u, vec4<u32>(21603u, 0u, 10397u, 1u), 1517u, 0u), Struct_1(68809u, vec4<u32>(10103u, 0u, 76968u, 26684u), 0u, 0u), Struct_1(1u, vec4<u32>(97016u, 0u, 66883u, 39255u), 46982u, 1u), Struct_1(38400u, vec4<u32>(43913u, 30290u, 69692u, 15943u), 1u, 62362u), Struct_1(44336u, vec4<u32>(1u, 1u, 4294967295u, 0u), 0u, 4294967295u), Struct_1(13537u, vec4<u32>(5765u, 4294967295u, 34663u, 60421u), 0u, 18581u), Struct_1(430u, vec4<u32>(15067u, 28047u, 4294967295u, 1u), 1u, 4294967295u), Struct_1(1u, vec4<u32>(76734u, 4294967295u, 0u, 4294967295u), 32356u, 101036u), Struct_1(4294967295u, vec4<u32>(0u, 9803u, 124346u, 4010u), 40113u, 1u), Struct_1(25200u, vec4<u32>(4294967295u, 0u, 1u, 0u), 77898u, 4294967295u), Struct_1(4294967295u, vec4<u32>(95978u, 68864u, 0u, 4294967295u), 8466u, 14825u), Struct_1(20324u, vec4<u32>(12937u, 62391u, 0u, 1u), 19250u, 44734u), Struct_1(4294967295u, vec4<u32>(4294967295u, 58822u, 33452u, 0u), 1u, 112720u), Struct_1(1u, vec4<u32>(1u, 0u, 0u, 8435u), 4294967295u, 4294967295u), Struct_1(6486u, vec4<u32>(17066u, 0u, 29652u, 4294967295u), 4294967295u, 0u), Struct_1(81008u, vec4<u32>(1u, 14833u, 1u, 4294967295u), 0u, 3838u), Struct_1(4294967295u, vec4<u32>(77032u, 60707u, 4294967295u, 0u), 94494u, 0u), Struct_1(54915u, vec4<u32>(0u, 1u, 21373u, 60160u), 0u, 54073u), Struct_1(3376u, vec4<u32>(73506u, 0u, 23068u, 35906u), 1818u, 1u), Struct_1(0u, vec4<u32>(0u, 4294967295u, 77536u, 4294967295u), 31243u, 14085u), Struct_1(37379u, vec4<u32>(2308u, 1u, 1u, 1u), 4294967295u, 4294967295u), Struct_1(2400u, vec4<u32>(16465u, 1u, 50463u, 1u), 22006u, 106501u), Struct_1(19433u, vec4<u32>(4294967295u, 3027u, 76125u, 448u), 1u, 20893u), Struct_1(31565u, vec4<u32>(50523u, 0u, 25760u, 40010u), 1u, 63591u), Struct_1(4294967295u, vec4<u32>(3814u, 5873u, 0u, 4294967295u), 49660u, 4294967295u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: vec3<i32>) -> f32 {
    let var_0 = _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(65148i, ~arg_1.a.x, abs(arg_1.a.x)), _wgslsmith_mult_vec3_i32(u_input.b, _wgslsmith_add_vec3_i32(u_input.b, vec3<i32>(arg_1.a.x, 8417i, 1i)))), arg_2), select(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, arg_2.x, arg_2.x & u_input.b.x), _wgslsmith_div_vec3_i32(arg_1.a.wzz, max(vec3<i32>(0i, 2147483647i, 2147483647i), arg_2))), vec3<i32>(~(u_input.a | 27669i), arg_1.a.x, _wgslsmith_mult_i32(-8785i, -1i) | firstLeadingBit(u_input.a)), 0u == (~4294967295u << (select(u_input.c, 0u, false) % 32u))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(306f, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(sign(arg_0)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(635f, arg_0, 660f))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(211f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-692f))) - var_1.x))));
    var var_3 = vec2<i32>(-u_input.a, -(-arg_2.x & -arg_2.x) ^ u_input.a);
    global0 = !(!any(select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)))));
    return 502f;
}

fn func_2() -> Struct_2 {
    global0 = true;
    var var_0 = Struct_2(reverseBits(_wgslsmith_dot_vec2_i32(-(~u_input.b.yx), ~vec2<i32>(u_input.a, 11726i))), -893f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1445f, -2022f, 212f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(935f, 567f, 1324f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(2022f, Struct_4(vec4<i32>(u_input.d, 28961i, -1i, -41915i)), vec3<i32>(u_input.d, -9852i, u_input.d))) * 1f))) * -770f), global3[_wgslsmith_index_u32(u_input.c, 29u)]);
    let var_1 = !any(select(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(false, true, any(vec3<bool>(false, false, false))), all(vec4<bool>(false, true, true, true)) & true));
    let var_2 = countOneBits(1u);
    global2 = any(!select(vec3<bool>(true, true, false), !(!vec3<bool>(var_1, var_1, var_1)), -6903i < _wgslsmith_dot_vec3_i32(vec3<i32>(-14392i, var_0.a, var_0.a), u_input.b)));
    return Struct_2(var_0.a, var_0.c.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_0.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, -624f, var_0.d))) * var_0.c), !(!select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(var_1, true, true), var_1)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.c.x))), var_0.e);
}

fn func_1() -> Struct_4 {
    var var_0 = func_2();
    var var_1 = u_input.b.xx & vec2<i32>(u_input.d, _wgslsmith_div_i32(-28070i, abs(-u_input.b.x)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_0.c.x)), -570f)) - _wgslsmith_div_f32(var_0.d, _wgslsmith_f_op_f32(step(var_0.d, _wgslsmith_f_op_f32(func_2().d * _wgslsmith_f_op_f32(abs(1000f)))))));
    global0 = false;
    var var_3 = select(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(false, true))), !vec2<bool>(any(vec3<bool>(true, true, true)), true)), vec2<bool>(true, firstTrailingBit(_wgslsmith_add_i32(19641i, -1i)) != (29025i | _wgslsmith_mod_i32(-31395i, var_0.a))), vec2<bool>(true, all(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)))));
    return Struct_4(max(vec4<i32>(0i, ~(-1i), _wgslsmith_add_i32(_wgslsmith_clamp_i32(var_1.x, 69944i, 2147483647i), abs(-19274i)), -u_input.d), -(max(vec4<i32>(-2147483647i, var_0.a, var_0.a, 1i), vec4<i32>(0i, 0i, 52478i, var_1.x)) | vec4<i32>(var_1.x, var_0.a, u_input.d, u_input.a))));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_1 {
    global2 = true;
    global1 = array<Struct_3, 4>();
    global2 = all(vec4<bool>(true, true, true, true));
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(arg_1));
    var var_1 = -(u_input.b ^ vec3<i32>(~0i, i32(-1i) * -arg_2.a, u_input.a));
    return func_2().e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1i;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(317f, 125f, -1404f)))))));
    let var_2 = !(!vec2<bool>(any(vec4<bool>(false, false, true, false)), all(vec4<bool>(false, true, true, false))));
    var var_3 = _wgslsmith_dot_vec3_i32(~_wgslsmith_sub_vec3_i32(u_input.b, _wgslsmith_sub_vec3_i32(max(u_input.b, u_input.b), _wgslsmith_clamp_vec3_i32(u_input.b, vec3<i32>(2147483647i, 1i, 2787i), u_input.b))), select(countOneBits(-_wgslsmith_sub_vec3_i32(vec3<i32>(34245i, -6269i, u_input.b.x), vec3<i32>(var_0, u_input.a, 2395i))), -u_input.b, !all(select(vec4<bool>(false, var_2.x, var_2.x, false), vec4<bool>(true, var_2.x, false, var_2.x), vec4<bool>(false, false, false, true)))));
    var var_4 = Struct_2(-u_input.a, -380f, var_1, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), var_1.x)), func_4(func_1(), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1 - vec3<f32>(308f, var_1.x, -368f)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(317f, -522f, -134f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.x, -102f, var_1.x))), _wgslsmith_div_vec3_f32(var_1, var_1))))), func_2()));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(13447i, u_input.b.x), i32(-1i) * -31981i, vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-244f + -232f), var_1.x)), 1086f, _wgslsmith_f_op_f32(var_1.x * var_4.d), _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(781f - var_1.x) + _wgslsmith_f_op_f32(-254f - var_4.b)))), _wgslsmith_f_op_vec2_f32(-var_1.zx));
}

