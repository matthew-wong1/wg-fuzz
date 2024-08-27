struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec4<bool>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec2<bool>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 14>;

var<private> global1: Struct_1;

var<private> global2: array<vec3<f32>, 30> = array<vec3<f32>, 30>(vec3<f32>(673f, -2675f, -213f), vec3<f32>(-1175f, -1089f, 2483f), vec3<f32>(-746f, -857f, -1143f), vec3<f32>(280f, -1018f, -352f), vec3<f32>(-410f, -828f, -353f), vec3<f32>(-197f, -395f, 172f), vec3<f32>(729f, -565f, -385f), vec3<f32>(-328f, -789f, 850f), vec3<f32>(1000f, 1847f, 160f), vec3<f32>(-1237f, -624f, 1017f), vec3<f32>(713f, -1375f, 273f), vec3<f32>(-113f, -648f, 1000f), vec3<f32>(988f, 391f, 1484f), vec3<f32>(-1127f, 1033f, -1251f), vec3<f32>(-598f, -734f, 929f), vec3<f32>(638f, 1224f, 1165f), vec3<f32>(-133f, 277f, 743f), vec3<f32>(-344f, -1978f, -774f), vec3<f32>(-645f, -1129f, -1816f), vec3<f32>(189f, -875f, 615f), vec3<f32>(-712f, 113f, 1644f), vec3<f32>(232f, -338f, -598f), vec3<f32>(-645f, -431f, 827f), vec3<f32>(241f, -1275f, -511f), vec3<f32>(-700f, 1000f, -1000f), vec3<f32>(-173f, -191f, -313f), vec3<f32>(2207f, -1293f, 1001f), vec3<f32>(1527f, -248f, -1506f), vec3<f32>(-1000f, 1000f, -1069f), vec3<f32>(-1413f, 880f, -1044f));

var<private> global3: array<vec4<u32>, 7>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> bool {
    global1 = Struct_1(global1.a, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -579f))), global1.b.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1225f, global1.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(0u, 30u)] + global2[_wgslsmith_index_u32(1u, 30u)]) + _wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(4294967295u, 30u)] - global2[_wgslsmith_index_u32(0u, 30u)]))), global1.e <= -2147483647i)), select(select(global1.c, select(vec4<bool>(global1.c.x, global1.c.x, true, global1.c.x), vec4<bool>(global1.c.x, global1.a, false, global1.c.x), select(true, false, global1.c.x)), true), !vec4<bool>(global1.c.x, false, global1.a, false | global1.a), global1.c), ~_wgslsmith_mod_u32(firstTrailingBit(global1.d >> (19099u % 32u)), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(27311u, u_input.b.x)), firstTrailingBit(u_input.b.x))), 200i);
    global2 = array<vec3<f32>, 30>();
    let var_0 = global1.e;
    global2 = array<vec3<f32>, 30>();
    var var_1 = 1u;
    return global1.c.x;
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec2<f32>) -> u32 {
    global2 = array<vec3<f32>, 30>();
    global3 = array<vec4<u32>, 7>();
    var var_0 = countOneBits(vec2<i32>(global1.e, global1.e)) & vec2<i32>(arg_1.a.e, global1.e);
    let var_1 = Struct_5(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.a.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.x, arg_0)))))), -(~max(~arg_1.a.e, 0i)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(countOneBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, u_input.b.x), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 1u), u_input.b))), ~u_input.b.x), 14u)]);
    var var_2 = u_input.a.zx;
    return _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(1u, 1u, var_1.c.b.d, u_input.b.x)) & ~global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 30544u), 7u)], firstTrailingBit(global3[_wgslsmith_index_u32(~global1.d ^ _wgslsmith_dot_vec2_u32(vec2<u32>(272u, 4294967295u), vec2<u32>(4294967295u, 1u)), 7u)])), abs(firstTrailingBit(u_input.b.x)));
}

fn func_2() -> u32 {
    let var_0 = Struct_1(global1.a, vec3<f32>(479f, _wgslsmith_f_op_f32(exp2(global1.b.x)), global1.b.x), global1.c, _wgslsmith_mod_u32(abs(~u_input.b.x), 59556u), u_input.a.x);
    var var_1 = Struct_3(Struct_2(Struct_1(func_1(), vec3<f32>(_wgslsmith_f_op_f32(-global1.b.x), -447f, _wgslsmith_f_op_f32(f32(-1f) * -2833f)), var_0.c, _wgslsmith_add_u32(31696u, ~u_input.b.x), ~u_input.a.x)), u_input.a.x, !(!vec2<bool>(true, global1.a)), firstTrailingBit(vec4<u32>(1632u, ~4294967295u, ~23838u, global1.d)), _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(~1u, global1.d, max(72856u, global1.d)), firstLeadingBit(vec3<u32>(var_0.d, var_0.d, global1.d)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.d, 56970u, 0u), vec3<u32>(48890u, 36898u, global1.d))), select(vec3<u32>(u_input.b.x, 135290u, var_0.d) << (vec3<u32>(var_0.d, global1.d, 4294967295u) % vec3<u32>(32u)), vec3<u32>(global1.d, 4938u, 14216u) & vec3<u32>(1u, global1.d, var_0.d), -509f < var_0.b.x) << (vec3<u32>(u_input.b.x, 1u, 0u) % vec3<u32>(32u)), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, var_0.d, 37794u), vec3<u32>(46701u, u_input.b.x, 12920u) >> (vec3<u32>(20716u, u_input.b.x, u_input.b.x) % vec3<u32>(32u)))));
    var_1 = Struct_3(var_1.a, -var_1.b, var_0.c.xz, vec4<u32>(min(239u, func_3(_wgslsmith_div_f32(-1000f, var_0.b.x), Struct_2(Struct_1(var_1.a.a.c.x, var_1.a.a.b, var_0.c, 52996u, -2147483647i)), _wgslsmith_f_op_vec2_f32(var_1.a.a.b.yz * vec2<f32>(var_0.b.x, -1433f)))), 1u, _wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(~u_input.b.x, 7u)], vec4<u32>(max(u_input.b.x, u_input.b.x), u_input.b.x, countOneBits(1u), firstLeadingBit(49785u))), 4294967295u), var_1.d.xyz << (var_1.d.wwy % vec3<u32>(32u)));
    var var_2 = vec3<i32>(var_1.b, var_1.b, 20837i);
    global2 = array<vec3<f32>, 30>();
    return firstTrailingBit(24431u);
}

fn func_4(arg_0: u32) -> i32 {
    global0 = array<Struct_4, 14>();
    global0 = array<Struct_4, 14>();
    global2 = array<vec3<f32>, 30>();
    var var_0 = global0[_wgslsmith_index_u32(~(~min(abs(32943u), arg_0 << (arg_0 % 32u))) << (abs(~(~106982u)) % 32u), 14u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(-global1.b);
    return var_0.c.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>((global1.c.x & global1.a) && true, false, global1.a | any(!select(global1.c.wyw, global1.c.xzz, false)));
    let var_1 = vec3<f32>(306f, _wgslsmith_f_op_f32(select(-360f, 1000f, func_1())), global1.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(func_4(_wgslsmith_dot_vec4_u32(reverseBits(global3[_wgslsmith_index_u32(102396u, 7u)]), ~global3[_wgslsmith_index_u32(106084u, 7u)]) >> (func_2() % 32u)), vec3<i32>(u_input.a.x, abs(global1.e), _wgslsmith_sub_i32(_wgslsmith_add_i32(-u_input.a.x, global1.e), global1.e)));
}

