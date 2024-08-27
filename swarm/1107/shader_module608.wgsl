struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(Struct_1(32008u, vec2<u32>(60546u, 0u)), Struct_1(51047u, vec2<u32>(23553u, 0u)), Struct_1(12205u, vec2<u32>(4294967295u, 76642u)), vec4<u32>(6587u, 17663u, 52454u, 4294967295u), vec4<i32>(2147483647i, 4802i, 1i, 31315i)), Struct_2(Struct_1(75551u, vec2<u32>(0u, 4294967295u)), Struct_1(0u, vec2<u32>(1u, 34485u)), Struct_1(0u, vec2<u32>(4294967295u, 39080u)), vec4<u32>(22569u, 62590u, 24612u, 51812u), vec4<i32>(-32822i, -26629i, 6785i, 2147483647i)), Struct_2(Struct_1(0u, vec2<u32>(1u, 4294967295u)), Struct_1(12153u, vec2<u32>(2533u, 52186u)), Struct_1(1u, vec2<u32>(12590u, 77358u)), vec4<u32>(35112u, 24884u, 1u, 0u), vec4<i32>(-5556i, 4536i, -14319i, 0i)), Struct_2(Struct_1(33640u, vec2<u32>(51968u, 0u)), Struct_1(1u, vec2<u32>(0u, 4294967295u)), Struct_1(22066u, vec2<u32>(1u, 16664u)), vec4<u32>(20218u, 18983u, 48100u, 71774u), vec4<i32>(21202i, i32(-2147483648), 1i, 2147483647i)), Struct_2(Struct_1(2071u, vec2<u32>(0u, 12402u)), Struct_1(74625u, vec2<u32>(4294967295u, 1u)), Struct_1(17840u, vec2<u32>(104951u, 0u)), vec4<u32>(25646u, 67646u, 24674u, 20118u), vec4<i32>(6225i, i32(-2147483648), 2147483647i, i32(-2147483648))), Struct_2(Struct_1(122045u, vec2<u32>(4294967295u, 6196u)), Struct_1(1u, vec2<u32>(0u, 86175u)), Struct_1(4294967295u, vec2<u32>(41075u, 55862u)), vec4<u32>(4294967295u, 4294967295u, 1u, 0u), vec4<i32>(-9367i, -1i, 37311i, 36837i)), Struct_2(Struct_1(0u, vec2<u32>(1u, 45250u)), Struct_1(1u, vec2<u32>(14753u, 4294967295u)), Struct_1(1u, vec2<u32>(5907u, 62742u)), vec4<u32>(1u, 32448u, 0u, 17839u), vec4<i32>(-9948i, 2147483647i, -7828i, -18527i)), Struct_2(Struct_1(1u, vec2<u32>(0u, 8348u)), Struct_1(76527u, vec2<u32>(4294967295u, 1u)), Struct_1(21278u, vec2<u32>(0u, 1u)), vec4<u32>(0u, 85925u, 0u, 39835u), vec4<i32>(2147483647i, -10920i, -22037i, -20261i)), Struct_2(Struct_1(15565u, vec2<u32>(83028u, 4294967295u)), Struct_1(0u, vec2<u32>(4294967295u, 4294967295u)), Struct_1(24561u, vec2<u32>(0u, 31203u)), vec4<u32>(4294967295u, 0u, 8975u, 0u), vec4<i32>(29307i, -1017i, -30407i, i32(-2147483648))), Struct_2(Struct_1(4294967295u, vec2<u32>(0u, 45107u)), Struct_1(4294967295u, vec2<u32>(1u, 30734u)), Struct_1(44726u, vec2<u32>(19444u, 1u)), vec4<u32>(42420u, 1u, 87810u, 45732u), vec4<i32>(-9330i, 0i, 17282i, -1i)), Struct_2(Struct_1(1u, vec2<u32>(4294967295u, 31612u)), Struct_1(1u, vec2<u32>(1u, 23638u)), Struct_1(1u, vec2<u32>(5488u, 35567u)), vec4<u32>(4294967295u, 60468u, 28050u, 75207u), vec4<i32>(0i, 30611i, 5085i, 0i)), Struct_2(Struct_1(1u, vec2<u32>(23358u, 58835u)), Struct_1(19220u, vec2<u32>(4294967295u, 1u)), Struct_1(1484u, vec2<u32>(42544u, 1u)), vec4<u32>(5596u, 4294967295u, 9148u, 15092u), vec4<i32>(2147483647i, 36391i, 0i, 56104i)), Struct_2(Struct_1(4294967295u, vec2<u32>(1498u, 0u)), Struct_1(6631u, vec2<u32>(15290u, 50967u)), Struct_1(106068u, vec2<u32>(1u, 0u)), vec4<u32>(4294967295u, 4294967295u, 23362u, 6560u), vec4<i32>(-29204i, i32(-2147483648), 15735i, -1i)), Struct_2(Struct_1(22865u, vec2<u32>(39427u, 1u)), Struct_1(19492u, vec2<u32>(4294967295u, 77758u)), Struct_1(0u, vec2<u32>(19074u, 4294967295u)), vec4<u32>(1u, 53063u, 1u, 130336u), vec4<i32>(2147483647i, -18282i, 0i, 1481i)), Struct_2(Struct_1(45303u, vec2<u32>(4294967295u, 1u)), Struct_1(91240u, vec2<u32>(1u, 50247u)), Struct_1(4294967295u, vec2<u32>(96275u, 654u)), vec4<u32>(20724u, 1u, 35807u, 4294967295u), vec4<i32>(-13702i, 20472i, i32(-2147483648), -845i)), Struct_2(Struct_1(1u, vec2<u32>(0u, 0u)), Struct_1(722u, vec2<u32>(1u, 0u)), Struct_1(32003u, vec2<u32>(43064u, 10577u)), vec4<u32>(4294967295u, 4294967295u, 1u, 2193u), vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), -1i)), Struct_2(Struct_1(4294967295u, vec2<u32>(102155u, 38627u)), Struct_1(0u, vec2<u32>(4955u, 0u)), Struct_1(25845u, vec2<u32>(1u, 0u)), vec4<u32>(52314u, 22824u, 1u, 47598u), vec4<i32>(5218i, i32(-2147483648), 2669i, 2147483647i)));

var<private> global1: array<vec3<i32>, 15>;

var<private> global2: array<i32, 26>;

var<private> global3: vec2<i32> = vec2<i32>(-79176i, 1i);

var<private> global4: Struct_2 = Struct_2(Struct_1(68554u, vec2<u32>(0u, 32740u)), Struct_1(1u, vec2<u32>(1u, 51345u)), Struct_1(4294967295u, vec2<u32>(2963u, 0u)), vec4<u32>(0u, 91216u, 1u, 31003u), vec4<i32>(0i, 1i, 0i, 41582i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(3119f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(330f, -138f)), -753f))))));
    global2 = array<i32, 26>();
    let var_1 = var_0;
    global2 = array<i32, 26>();
    let var_2 = abs(~firstTrailingBit(vec2<i32>(_wgslsmith_sub_i32(global4.e.x, -7650i), ~(-2147483647i))));
    return global4.b;
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: vec2<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1488f, 1000f, -1444f, 1131f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-103f, -462f, 767f, 1995f)), true)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1607f, 808f, -303f, -1000f), vec4<f32>(1167f, 1064f, 303f, 327f)))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -805f, 1140f, 880f)), vec4<f32>(732f, -1649f, 1957f, -1138f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-232f, 260f, 473f, 1279f))))))));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-995f - -1154f)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-var_0.wwx);
    let var_3 = Struct_3(global4.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.zxz - _wgslsmith_f_op_vec3_f32(ceil(var_0.zzy))) + vec3<f32>(_wgslsmith_f_op_f32(-var_1), var_1, -123f)) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(var_0.x, -1262f, arg_0.x)), 183f, var_0.x), vec3<f32>(var_1, var_1, -500f))));
    global4 = Struct_2(global4.a, Struct_1(11748u, vec2<u32>(1u, u_input.b.x)), var_3.a, select(reverseBits(vec4<u32>(countOneBits(56419u), ~u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b.x), vec2<u32>(46186u, var_3.a.b.x)), ~var_3.a.b.x)), global4.d, vec4<bool>(true, any(arg_0), true, true)), global4.e);
    return firstTrailingBit(_wgslsmith_add_u32(~select(~17497u, 17436u, select(true, arg_1, arg_1)), 54472u));
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = ~_wgslsmith_mult_u32(firstLeadingBit(func_3(!vec4<bool>(arg_0, arg_0, false, true), !arg_0, vec2<i32>(6562i, global2[_wgslsmith_index_u32(global4.d.x, 26u)]))), global4.a.a);
    let var_1 = Struct_2(func_1(), global4.c, Struct_1(abs(4294967295u), ~select(vec2<u32>(4294967295u, u_input.b.x), ~vec2<u32>(4294967295u, 0u), select(arg_0, arg_0, arg_0))), global4.d, global4.e | ~(~global4.e));
    let var_2 = ~(~var_1.e.x);
    var_0 = ~(~var_1.d.x);
    let var_3 = countOneBits(global4.c.b << (select(func_1().b, ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, var_1.d.x), vec2<u32>(var_1.a.b.x, u_input.b.x)), arg_0) % vec2<u32>(32u)));
    return _wgslsmith_mult_u32(1u, 27427u);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_2(func_1(), global4.a, global4.b, ~(~u_input.b), ~_wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(-22073i, 795i, 865i, -1i)) << (~reverseBits(global4.d) % vec4<u32>(32u)));
    let var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(func_2(true), 0u), vec2<u32>(~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(global4.d.wyw, global4.d.wyy), reverseBits(47644u)), u_input.b.x));
    let var_1 = global4.b;
    let var_2 = abs(vec2<u32>(~19666u, var_1.a << (_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.a, 4294967295u), u_input.b.yxw), global4.d.xzy) % 32u)));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-428f, -1023f, -792f) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -134f), _wgslsmith_f_op_f32(107f + -1297f), _wgslsmith_f_op_f32(trunc(-565f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.yz)));
}

