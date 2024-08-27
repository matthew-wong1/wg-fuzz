struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: vec3<f32>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 22> = array<vec4<u32>, 22>(vec4<u32>(48138u, 16013u, 0u, 1u), vec4<u32>(48069u, 47130u, 0u, 4294967295u), vec4<u32>(4318u, 0u, 1u, 0u), vec4<u32>(1u, 4294967295u, 34907u, 8579u), vec4<u32>(1u, 689u, 13836u, 21062u), vec4<u32>(29933u, 3704u, 1u, 4294967295u), vec4<u32>(16382u, 1u, 41873u, 9394u), vec4<u32>(105125u, 0u, 93010u, 4294967295u), vec4<u32>(4294967295u, 11285u, 4294967295u, 4294967295u), vec4<u32>(1u, 4294967295u, 45440u, 18759u), vec4<u32>(57884u, 2764u, 62849u, 0u), vec4<u32>(6387u, 69825u, 4294967295u, 26301u), vec4<u32>(30981u, 33900u, 1u, 1u), vec4<u32>(27538u, 51228u, 0u, 4839u), vec4<u32>(0u, 4294967295u, 1u, 72457u), vec4<u32>(4294967295u, 20530u, 24695u, 1954u), vec4<u32>(30033u, 0u, 7052u, 23257u), vec4<u32>(65134u, 0u, 10032u, 57118u), vec4<u32>(1u, 85149u, 23217u, 0u), vec4<u32>(1u, 37434u, 4294967295u, 0u), vec4<u32>(56147u, 1u, 4294967295u, 10069u), vec4<u32>(1u, 47117u, 35782u, 4294967295u));

var<private> global1: array<u32, 12>;

var<private> global2: Struct_2;

var<private> global3: bool;

var<private> global4: Struct_1;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_5) -> bool {
    global2 = Struct_2(global2.a, global2.b, global2.c, _wgslsmith_sub_vec4_u32(max(select(vec4<u32>(1u, arg_0, 21808u, 1u), ~global2.d, all(vec2<bool>(arg_1, false))), ~global2.d), vec4<u32>(1u, arg_0, _wgslsmith_add_u32(global2.d.x, _wgslsmith_dot_vec3_u32(global2.d.yzx, global2.d.zyw)), 1u)));
    let var_0 = firstTrailingBit(global0[_wgslsmith_index_u32(max(select(~(~global1[_wgslsmith_index_u32(1u, 12u)]), 1u, false), firstLeadingBit(abs(u_input.b ^ 0u))), 22u)]);
    global3 = arg_2.e >= 8653i;
    var var_1 = Struct_2(46938i, _wgslsmith_f_op_f32(select(global2.b, arg_2.c.x, true)), global2.c, global0[_wgslsmith_index_u32(abs(0u), 22u)]);
    var var_2 = Struct_4(var_0);
    return !(!(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.c.x, -1048f)) > 1061f));
}

fn func_2(arg_0: Struct_3) -> vec3<f32> {
    var var_0 = _wgslsmith_dot_vec3_i32(global2.c.yyz, ~_wgslsmith_add_vec3_i32(global2.c.xxw, vec3<i32>(reverseBits(-1i), global2.c.x, u_input.c.x | 1i)));
    var_0 = -u_input.c.x;
    var var_1 = u_input.c.x;
    let var_2 = Struct_1(!(~_wgslsmith_mod_u32(global2.d.x, 5531u) < global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global2.d, _wgslsmith_div_vec4_u32(global2.d, global2.d)), 12u)]), reverseBits(global4.b), !func_3(~53357u, !all(vec2<bool>(global4.a, global4.c)), Struct_5(firstTrailingBit(global2.a), Struct_1(global4.a, global2.c.xyy, global4.c, global4.d), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-688f, -643f, 186f))), select(global4.c, true, false), ~global4.b.x)), _wgslsmith_mod_u32(reverseBits((global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(45495u, 12u)], 12u)] << (global1[_wgslsmith_index_u32(12007u, 12u)] % 32u)) << (4294967295u % 32u)), ~_wgslsmith_add_u32(_wgslsmith_div_u32(7936u, 77512u), 21747u << (1u % 32u))));
    var var_3 = vec2<u32>(reverseBits(min(abs(~0u), ~(~var_2.d))), 1u);
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(max(arg_0.a, -1152f))), _wgslsmith_f_op_f32(-global2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(121f + global2.b))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-213f, global2.b, arg_0.a) + vec3<f32>(-239f, global2.b, arg_0.a)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.b, arg_0.a, arg_0.a), vec3<f32>(-1000f, arg_0.a, 1361f), true))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, -267f, 549f), vec3<f32>(arg_0.a, global2.b, 2134f))))))));
}

fn func_4(arg_0: vec3<f32>) -> f32 {
    global0 = array<vec4<u32>, 22>();
    var var_0 = global4.c;
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(572f, arg_0.x) - global2.b)))));
    var var_2 = Struct_1(any(!select(select(vec2<bool>(false, true), vec2<bool>(global4.a, false), global4.c), vec2<bool>(true, true), !vec2<bool>(global4.a, global4.a))), ~vec3<i32>(firstTrailingBit(global4.b.x), _wgslsmith_sub_i32(~(-18361i), ~85i), max(1i, global4.b.x) << ((global2.d.x << (19995u % 32u)) % 32u)), global4.a, global4.d);
    var var_3 = arg_0.xx;
    return _wgslsmith_f_op_f32(ceil(arg_0.x));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: u32, arg_3: f32) -> Struct_2 {
    var var_0 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_f32(-137f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(func_2(Struct_3(global2.b))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b - global2.b)))));
    let var_2 = Struct_1(!(false || global4.c), global2.c.www, arg_1, 68619u);
    let var_3 = arg_3;
    var var_4 = _wgslsmith_dot_vec3_i32(~abs(max(~global4.b, vec3<i32>(var_2.b.x, global2.c.x, global4.b.x))), vec3<i32>(33636i, reverseBits(var_2.b.x), _wgslsmith_add_i32(_wgslsmith_mod_i32(-2147483647i, global2.c.x), ~(~(-15305i)))));
    return Struct_2(~(~reverseBits(-u_input.a.x)), -268f, vec4<i32>(-2147483647i, _wgslsmith_div_i32(~u_input.e, -42437i), min(17860i, 1i >> (arg_2 % 32u)), -_wgslsmith_dot_vec3_i32(vec3<i32>(-8846i, 22115i, -2147483647i), global4.b)), global2.d);
}

fn func_5(arg_0: f32, arg_1: Struct_4, arg_2: i32, arg_3: Struct_2) -> Struct_1 {
    global0 = array<vec4<u32>, 22>();
    global3 = global4.a;
    global1 = array<u32, 12>();
    var var_0 = global2.d.x;
    var var_1 = _wgslsmith_mult_i32(2147483647i, -22035i ^ ~_wgslsmith_div_i32(_wgslsmith_mod_i32(35042i, 1i), -global2.a));
    return Struct_1(!(!(global4.a || false)), -vec3<i32>(arg_2, ~arg_2, 1i), global4.c, ~global1[_wgslsmith_index_u32(global2.d.x, 12u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!global4.c));
    global4 = func_5(global2.b, Struct_4((global2.d & vec4<u32>(1u, global4.d, 1u, 0u)) | global0[_wgslsmith_index_u32(select(~global4.d, global1[_wgslsmith_index_u32(1u, 12u)], all(vec3<bool>(true, true, global4.a))), 22u)]), ~(~global2.a & global2.c.x), func_1(~4294967295u, any(!select(vec2<bool>(false, global4.a), vec2<bool>(true, global4.c), true)), 12379u, -1351f));
    let var_1 = 1u;
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-632f, 125f, 1807f, -695f))))));
    let var_4 = func_5(260f, Struct_4(vec4<u32>(min(~1u, ~1u), u_input.b, global1[_wgslsmith_index_u32(~min(var_1, 1u), 12u)], _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1, global4.d), global2.d.yyx << (global2.d.xxw % vec3<u32>(32u))))), u_input.c.x, func_1(_wgslsmith_clamp_u32(global2.d.x, ~(~1645u), (global1[_wgslsmith_index_u32(18707u, 12u)] & 0u) ^ global2.d.x), select(var_2, !(global2.b == -385f), func_3(_wgslsmith_div_u32(u_input.b, 1u), all(vec3<bool>(var_2, true, var_2)), Struct_5(u_input.e, Struct_1(var_2, global2.c.xzx, true, 1u), var_3.zyw, global4.c, u_input.a.x))), 45882u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.b))), _wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(1363f * 1211f))))));
    global3 = !func_3(1u, var_2, Struct_5(min(firstTrailingBit(29365i), abs(-8807i)), func_5(_wgslsmith_f_op_f32(global2.b * global2.b), Struct_4(vec4<u32>(0u, var_4.d, var_1, var_1)), global2.a, Struct_2(18215i, global2.b, global2.c, global0[_wgslsmith_index_u32(43958u, 22u)])), vec3<f32>(442f, global2.b, -1737f), all(!vec3<bool>(true, global4.c, false)), global2.a));
    var var_5 = global2.d.zx;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_i32(0i, i32(-1i) * -2147483647i), 33885u, vec3<u32>(16250u, 73095u, var_4.d ^ _wgslsmith_dot_vec2_u32(global2.d.zz, ~vec2<u32>(var_1, global1[_wgslsmith_index_u32(0u, 12u)]))), global2.d);
}

