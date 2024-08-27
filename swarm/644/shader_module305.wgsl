struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_5, 30>;

var<private> global2: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(Struct_1(vec3<i32>(35827i, -10393i, i32(-2147483648)), true), vec2<i32>(1i, 33010i), vec4<u32>(0u, 80760u, 63996u, 16099u)), Struct_3(Struct_1(vec3<i32>(-31416i, 19239i, -1i), false), vec2<i32>(i32(-2147483648), 51350i), vec4<u32>(2166u, 4294967295u, 46510u, 1u)), Struct_3(Struct_1(vec3<i32>(24465i, -1i, -5403i), true), vec2<i32>(0i, 32469i), vec4<u32>(0u, 57874u, 26900u, 5285u)), Struct_3(Struct_1(vec3<i32>(-1i, 7046i, 0i), false), vec2<i32>(-11323i, 1i), vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u)), Struct_3(Struct_1(vec3<i32>(9736i, 0i, 2147483647i), true), vec2<i32>(0i, -1i), vec4<u32>(1u, 0u, 0u, 86396u)), Struct_3(Struct_1(vec3<i32>(0i, 2147483647i, -1i), false), vec2<i32>(40878i, -1i), vec4<u32>(0u, 4294967295u, 29192u, 40087u)), Struct_3(Struct_1(vec3<i32>(15680i, i32(-2147483648), 0i), false), vec2<i32>(-22016i, 0i), vec4<u32>(0u, 38411u, 4294967295u, 0u)), Struct_3(Struct_1(vec3<i32>(1i, 37174i, -31234i), true), vec2<i32>(54201i, 1i), vec4<u32>(15301u, 32212u, 4294967295u, 35618u)), Struct_3(Struct_1(vec3<i32>(0i, -1i, 33042i), true), vec2<i32>(40388i, 0i), vec4<u32>(10914u, 4294967295u, 1u, 27482u)), Struct_3(Struct_1(vec3<i32>(23987i, 17625i, 76795i), false), vec2<i32>(147i, 0i), vec4<u32>(40437u, 0u, 4294967295u, 4294967295u)), Struct_3(Struct_1(vec3<i32>(13502i, -41179i, 1i), true), vec2<i32>(0i, -1i), vec4<u32>(75494u, 1u, 4273u, 0u)), Struct_3(Struct_1(vec3<i32>(2147483647i, 1i, 5204i), true), vec2<i32>(11448i, 0i), vec4<u32>(0u, 0u, 20627u, 4294967295u)), Struct_3(Struct_1(vec3<i32>(-1i, 0i, -20321i), true), vec2<i32>(i32(-2147483648), -22551i), vec4<u32>(86382u, 61346u, 1027u, 2442u)), Struct_3(Struct_1(vec3<i32>(19473i, 2147483647i, -1i), false), vec2<i32>(23514i, 0i), vec4<u32>(0u, 0u, 0u, 0u)), Struct_3(Struct_1(vec3<i32>(-24152i, 6002i, 2140i), false), vec2<i32>(i32(-2147483648), 4473i), vec4<u32>(0u, 0u, 21315u, 1186u)), Struct_3(Struct_1(vec3<i32>(i32(-2147483648), -29423i, 2147483647i), true), vec2<i32>(i32(-2147483648), 0i), vec4<u32>(16537u, 0u, 527u, 21827u)), Struct_3(Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i), true), vec2<i32>(2147483647i, -11877i), vec4<u32>(1u, 1u, 4294967295u, 11247u)), Struct_3(Struct_1(vec3<i32>(12100i, -7105i, -31780i), true), vec2<i32>(2147483647i, i32(-2147483648)), vec4<u32>(0u, 0u, 2018u, 88497u)), Struct_3(Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, -6776i), true), vec2<i32>(-37417i, -16429i), vec4<u32>(0u, 20561u, 7999u, 1u)), Struct_3(Struct_1(vec3<i32>(-18451i, 1i, 20566i), false), vec2<i32>(58000i, 0i), vec4<u32>(34116u, 44304u, 1u, 1u)), Struct_3(Struct_1(vec3<i32>(-27089i, -1i, 1i), false), vec2<i32>(41454i, -14176i), vec4<u32>(16026u, 0u, 1u, 59045u)), Struct_3(Struct_1(vec3<i32>(12213i, i32(-2147483648), i32(-2147483648)), false), vec2<i32>(-13368i, 23934i), vec4<u32>(1u, 84925u, 1u, 0u)), Struct_3(Struct_1(vec3<i32>(i32(-2147483648), 15858i, 0i), false), vec2<i32>(-49299i, 12389i), vec4<u32>(11722u, 13582u, 1u, 23795u)), Struct_3(Struct_1(vec3<i32>(7230i, 2147483647i, 2147483647i), false), vec2<i32>(-19044i, i32(-2147483648)), vec4<u32>(22718u, 48669u, 14939u, 0u)), Struct_3(Struct_1(vec3<i32>(33897i, -1i, 24462i), false), vec2<i32>(0i, -52035i), vec4<u32>(68463u, 4294967295u, 0u, 49565u)), Struct_3(Struct_1(vec3<i32>(-27058i, 54320i, 6222i), false), vec2<i32>(-15391i, 1i), vec4<u32>(56651u, 1u, 42781u, 4294967295u)), Struct_3(Struct_1(vec3<i32>(-1i, 32408i, 0i), true), vec2<i32>(0i, -3066i), vec4<u32>(63501u, 22225u, 0u, 0u)), Struct_3(Struct_1(vec3<i32>(37597i, i32(-2147483648), 2147483647i), true), vec2<i32>(-1i, 11691i), vec4<u32>(26652u, 1u, 7422u, 0u)), Struct_3(Struct_1(vec3<i32>(-29125i, 17222i, 2147483647i), true), vec2<i32>(19071i, 82544i), vec4<u32>(4294967295u, 28455u, 0u, 1u)), Struct_3(Struct_1(vec3<i32>(4355i, 0i, -1i), false), vec2<i32>(-1879i, 2147483647i), vec4<u32>(1u, 4294967295u, 10987u, 46374u)));

var<private> global3: vec3<f32>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>) -> bool {
    var var_0 = vec3<bool>(true, !select(!all(vec4<bool>(true, true, global0.a.b, false)), arg_0, _wgslsmith_div_f32(-1096f, -448f) >= _wgslsmith_f_op_f32(ceil(-1063f))), all(arg_1));
    var var_1 = vec3<i32>(~global0.a.a.x, 1881i, -7989i);
    let var_2 = abs(_wgslsmith_div_vec4_i32(firstTrailingBit(countOneBits(vec4<i32>(2147483647i, global0.a.a.x, 14999i, 28206i))) ^ vec4<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, global0.b, 34560i), vec4<i32>(u_input.a, 45389i, -19386i, u_input.a)), _wgslsmith_mod_i32(global0.a.a.x, 1363i), 1i), -firstTrailingBit(min(vec4<i32>(-1i, 21069i, u_input.a, u_input.a), vec4<i32>(-23538i, 9328i, var_1.x, global0.a.a.x)))));
    let var_3 = Struct_3(Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, 0i), global0.a.a.zz), -var_2.x, _wgslsmith_mod_i32(var_1.x, -18331i)), var_2.yyx | vec3<i32>(1i, 0i, var_2.x)), var_0.x), _wgslsmith_mod_vec2_i32(firstLeadingBit(abs(-global0.a.a.yz)), abs(abs(_wgslsmith_div_vec2_i32(var_2.wz, var_2.xw)))), u_input.b);
    var var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - -256f))))));
    return true;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_4(vec2<bool>(func_3(false, select(!vec3<bool>(true, global0.a.b, false), vec3<bool>(true, false, global0.a.b), select(vec3<bool>(global0.a.b, global0.a.b, false), vec3<bool>(true, true, true), vec3<bool>(global0.a.b, global0.a.b, global0.a.b)))), any(vec3<bool>(true, true, true & global0.a.b))), global0.a);
    var var_1 = Struct_2(var_0.b, global0.a.a.x);
    let var_2 = Struct_1(_wgslsmith_sub_vec3_i32(global0.a.a, abs(-vec3<i32>(var_1.a.a.x, u_input.a, 0i) ^ vec3<i32>(11879i, u_input.a, u_input.a))), !(global3.x != -1057f));
    let var_3 = true;
    let var_4 = _wgslsmith_sub_vec4_u32(max(u_input.b, vec4<u32>(u_input.b.x, abs(u_input.b.x), u_input.b.x, max(select(u_input.b.x, u_input.b.x, false), u_input.b.x))), _wgslsmith_add_vec4_u32(~(~u_input.b), u_input.b | ~(~vec4<u32>(4294967295u, 1u, u_input.b.x, u_input.b.x))));
    return Struct_2(var_1.a, var_1.b);
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: bool, arg_3: i32) -> u32 {
    var var_0 = 2147483647i;
    let var_1 = !select(!(arg_1 && arg_1) && (arg_3 <= _wgslsmith_mod_i32(global0.a.a.x, global0.a.a.x)), false, true);
    global1 = array<Struct_5, 30>();
    global1 = array<Struct_5, 30>();
    global0 = func_2();
    return _wgslsmith_dot_vec2_u32(vec2<u32>(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(57951u, u_input.b.x))), countOneBits(u_input.b.x ^ ~0u)), _wgslsmith_clamp_vec2_u32(u_input.b.xy, u_input.b.xy, ~(u_input.b.zy ^ u_input.b.zw)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!vec3<bool>(!global0.a.b, !(!global0.a.b), u_input.b.x <= func_1(global3.x, false, true, global0.a.a.x)), vec3<bool>(func_3(true, vec3<bool>(false, global0.a.b, false)) || (_wgslsmith_f_op_f32(global3.x * 111f) >= _wgslsmith_f_op_f32(global3.x - 2208f)), !all(select(vec3<bool>(false, global0.a.b, global0.a.b), vec3<bool>(false, false, global0.a.b), global0.a.b)), false), false);
    var var_1 = Struct_3(Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_add_i32(u_input.a, -14887i), abs(u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.b, global0.b, 1i, 0i), vec4<i32>(global0.b, -1i, global0.a.a.x, global0.a.a.x))), func_2().a.a), false), global0.a.a.xz, vec4<u32>(1511u, u_input.b.x, reverseBits(u_input.b.x) << (4294967295u % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.b.zyx, vec3<u32>(1u, 38259u, u_input.b.x)), u_input.b.wwx) << (1u % 32u)));
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~4294967295u, 1u, abs(u_input.b.x << (~_wgslsmith_dot_vec3_u32(vec3<u32>(81129u, var_1.c.x, u_input.b.x), vec3<u32>(0u, var_1.c.x, var_1.c.x)) % 32u))), 30u)];
    global1 = array<Struct_5, 30>();
    var var_3 = _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(~(var_1.c.www ^ u_input.b.wyy), var_1.c.wzy) & u_input.b.wyy, ~vec3<u32>(u_input.b.x, 48116u, _wgslsmith_dot_vec2_u32(vec2<u32>(9582u, u_input.b.x), _wgslsmith_add_vec2_u32(var_1.c.xx, vec2<u32>(u_input.b.x, var_1.c.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1861f, global3.x, 354f), vec3<f32>(global3.x, -1000f, global3.x)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global3.x, 147f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-162f, -183f, -1527f) * vec3<f32>(global3.x, 1218f, -1561f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(872f, global3.x, 125f), vec3<f32>(global3.x, global3.x, -552f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1121f, _wgslsmith_f_op_f32(sign(global3.x)), _wgslsmith_f_op_f32(-global3.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, 1320f, 257f) - vec3<f32>(global3.x, global3.x, global3.x)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-913f, _wgslsmith_f_op_f32(global3.x * global3.x), -1260f) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -358f), 1160f, global3.x))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(26214u, var_1.c.x), _wgslsmith_mod_u32(1u, var_2.c), _wgslsmith_add_u32(0u, 130153u)), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(13517u, 40665u, var_3.x)), select(var_1.c.yxx, vec3<u32>(var_1.c.x, var_2.c, 10227u), var_0))), _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(1u, 78451u)), u_input.b.yy), ~(~min(var_3.x, var_2.c)), 58837u), vec2<u32>(var_2.c, var_3.x));
}

