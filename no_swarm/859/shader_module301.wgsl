struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(-69067i, vec4<i32>(-32078i, 3652i, 6057i, i32(-2147483648)), 831f), Struct_1(-24072i, vec4<i32>(12286i, -1i, 0i, 1i), -1000f), Struct_1(1i, vec4<i32>(-808i, 0i, 22248i, 41808i), 1060f), Struct_1(21167i, vec4<i32>(i32(-2147483648), -1i, 1i, 19725i), 1256f), Struct_1(1i, vec4<i32>(2689i, 1i, -19478i, -22294i), -1000f), Struct_1(-13041i, vec4<i32>(1i, i32(-2147483648), 73606i, 0i), 435f), Struct_1(2147483647i, vec4<i32>(-14936i, 1i, 17233i, -45927i), 1673f), Struct_1(1i, vec4<i32>(-1i, 10289i, -1i, 1281i), 1086f), Struct_1(i32(-2147483648), vec4<i32>(0i, 35080i, 2147483647i, i32(-2147483648)), -1325f), Struct_1(0i, vec4<i32>(-3788i, 2818i, 17457i, 2147483647i), -757f), Struct_1(-1i, vec4<i32>(0i, -35976i, 2147483647i, -16572i), 472f), Struct_1(-75880i, vec4<i32>(i32(-2147483648), 1i, 20275i, -11692i), 101f), Struct_1(0i, vec4<i32>(0i, 1i, 915i, 22077i), 958f), Struct_1(i32(-2147483648), vec4<i32>(-18019i, -29586i, 6449i, -4713i), 184f), Struct_1(0i, vec4<i32>(52310i, -10669i, -50969i, 77858i), 329f), Struct_1(0i, vec4<i32>(i32(-2147483648), 4433i, 2147483647i, -18386i), 2370f), Struct_1(1i, vec4<i32>(62019i, 42656i, 1i, -24068i), 848f), Struct_1(-1i, vec4<i32>(-18890i, -13314i, -24124i, 0i), -228f), Struct_1(24012i, vec4<i32>(-1i, -38275i, 10686i, 1084i), 237f), Struct_1(0i, vec4<i32>(i32(-2147483648), 2147483647i, -4748i, 2147483647i), -1134f), Struct_1(i32(-2147483648), vec4<i32>(-62674i, 2147483647i, 52959i, -21551i), -858f), Struct_1(2147483647i, vec4<i32>(4261i, 1i, -1i, 0i), 1000f), Struct_1(25174i, vec4<i32>(1i, i32(-2147483648), -6547i, -1i), -449f), Struct_1(2147483647i, vec4<i32>(2147483647i, 17041i, -12225i, -27144i), 159f), Struct_1(-24224i, vec4<i32>(8189i, 49974i, 17312i, 13001i), -197f), Struct_1(i32(-2147483648), vec4<i32>(i32(-2147483648), 0i, 0i, 0i), -2221f), Struct_1(2680i, vec4<i32>(2147483647i, 2147483647i, 414i, -17740i), 1248f), Struct_1(0i, vec4<i32>(1i, 0i, 15735i, -74192i), 282f));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: vec2<i32>) -> i32 {
    var var_0 = Struct_4(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(true, true, true, true))), vec3<bool>(arg_1 != countOneBits(0u), any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), true)), true), vec3<bool>(true, true, true)), 2147483647i, _wgslsmith_mod_vec3_u32(firstLeadingBit(~(~vec3<u32>(arg_1, 46505u, 36592u))), _wgslsmith_clamp_vec3_u32(vec3<u32>(firstTrailingBit(arg_1), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, arg_1, arg_1, arg_1), vec4<u32>(arg_1, 84049u, arg_1, arg_1)), 0u), vec3<u32>(~arg_1, 97850u, 1u), _wgslsmith_sub_vec3_u32(~vec3<u32>(77245u, 4294967295u, 1u), ~vec3<u32>(arg_1, arg_1, arg_1)))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_2 = Struct_1(_wgslsmith_mult_i32(-(_wgslsmith_clamp_i32(u_input.a.x, arg_0.x, u_input.a.x) << (~var_0.c.x % 32u)), -2147483647i), -vec4<i32>(arg_0.x | firstLeadingBit(1i), 46108i, _wgslsmith_dot_vec3_i32(vec3<i32>(-37907i, u_input.a.x, 2147483647i), arg_0 & u_input.a), var_0.b), _wgslsmith_f_op_f32(-var_1));
    var var_3 = _wgslsmith_mod_vec2_u32(~countOneBits(abs(var_0.c.xz) & vec2<u32>(arg_1, var_0.c.x)), var_0.c.zz);
    global0 = array<Struct_1, 28>();
    return reverseBits(~var_0.b);
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    var var_0 = 887f;
    var_0 = _wgslsmith_f_op_f32(-1485f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(364f, -444f) - _wgslsmith_f_op_f32(-293f - 2079f)) + _wgslsmith_f_op_f32(1218f - -1000f)) + 1000f));
    let var_1 = global0[_wgslsmith_index_u32(1u, 28u)];
    var var_2 = !vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.c))) != var_1.c, func_3(_wgslsmith_sub_vec3_i32(vec3<i32>(-16065i, -2147483647i, -2147483647i), vec3<i32>(u_input.a.x, u_input.a.x, -2825i)), ~38736u, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, -25425i), vec2<i32>(-62866i, 2254i))) > _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -41252i, 55429i), u_input.a), all(vec2<bool>(true, true)), (any(vec2<bool>(true, true)) || true) | (_wgslsmith_f_op_f32(-822f + var_1.c) > var_1.c));
    var_2 = !(!vec4<bool>(true, false | var_2.x, false, true));
    return Struct_3(var_1.c < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_1.c)), 1423f)), -(arg_0.a.x | (~0i & _wgslsmith_mod_i32(u_input.a.x, -2147483647i))));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2) -> Struct_3 {
    let var_0 = Struct_2(arg_2.a);
    let var_1 = true;
    return Struct_3(false, var_0.a.x);
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: i32, arg_3: Struct_3) -> bool {
    let var_0 = !(27449u >= firstTrailingBit(~0u));
    global0 = array<Struct_1, 28>();
    global0 = array<Struct_1, 28>();
    let var_1 = var_0;
    var var_2 = _wgslsmith_sub_i32(arg_1.b, ~u_input.a.x);
    return true;
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: vec2<u32>) -> i32 {
    let var_0 = arg_1;
    var var_1 = !(!func_5(_wgslsmith_dot_vec2_u32(~vec2<u32>(10860u, 5841u), vec2<u32>(27423u, 32588u)), func_4(_wgslsmith_f_op_f32(1013f - 1166f), func_2(Struct_2(u_input.a)), Struct_2(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), u_input.a.x, func_4(_wgslsmith_f_op_f32(abs(-358f)), Struct_3(arg_1, 1i), Struct_2(vec3<i32>(-743i, 3282i, u_input.a.x)))));
    var var_2 = abs(abs(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, arg_0.x), vec2<u32>(4294967295u, 6578u)) & ~arg_0.x, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(arg_0.x, 5313u, 4294967295u, 0u)), ~vec4<u32>(arg_0.x, 1u, 0u, 21369u)))));
    var var_3 = Struct_3(!arg_1, u_input.a.x);
    let var_4 = _wgslsmith_add_u32(firstLeadingBit(firstLeadingBit(arg_2.x)) | firstLeadingBit(~4497u), ~(~14208u)) > arg_2.x;
    return -41149i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var_0 = min(_wgslsmith_add_vec3_i32(vec3<i32>(-56401i, var_0.x, ~u_input.a.x), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-45780i, 1i, 1i, u_input.a.x), vec4<i32>(u_input.a.x, -1i, u_input.a.x, 38230i)), u_input.a.x, func_1(vec2<u32>(0u, 26868u), false, vec2<u32>(94104u, 57060u)))) << (abs(vec3<u32>(~37791u, select(16056u, 92717u, true), ~82536u)) % vec3<u32>(32u)), select(abs(vec3<i32>(u_input.a.x | var_0.x, _wgslsmith_mod_i32(var_0.x, 43566i), ~u_input.a.x)), vec3<i32>(1i, 3972i, 1i), ~func_2(Struct_2(vec3<i32>(1i, u_input.a.x, var_0.x))).b >= _wgslsmith_div_i32(select(1i, u_input.a.x, true), var_0.x)));
    var_0 = u_input.a;
    var_0 = vec3<i32>(-43420i, _wgslsmith_div_i32(func_1(vec2<u32>(1u, 1u), true, select(vec2<u32>(47599u, 0u), vec2<u32>(1u, 4294967295u), vec2<bool>(true, false)) & ~vec2<u32>(4294967295u, 2011u)), reverseBits(1i)), ~u_input.a.x);
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1380f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-757f + 274f), -2234f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1216f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2281f) * 886f)))));
    let var_2 = Struct_4(select(vec3<bool>(false, func_2(Struct_2(vec3<i32>(-2147483647i, -18874i, var_0.x))).a, any(select(vec2<bool>(false, false), vec2<bool>(true, true), false))), select(vec3<bool>(true, true, true), vec3<bool>(true, var_1 > 757f, false), true), vec3<bool>(true, all(vec3<bool>(true, true, true)), true)), u_input.a.x, ~(~vec3<u32>(15663u, 98955u, abs(1u))));
    var var_3 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(1u, var_3.x), var_2.c.x, _wgslsmith_clamp_vec4_u32(~firstLeadingBit(min(vec4<u32>(22084u, var_2.c.x, 1881u, var_3.x), vec4<u32>(63183u, 4294967295u, var_2.c.x, 1u))), vec4<u32>(_wgslsmith_clamp_u32(var_3.x, _wgslsmith_mult_u32(var_3.x, var_2.c.x), var_3.x), 6267u, 4294967295u, ~var_3.x), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(15825u, 24737u, 27601u, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(var_3.x, var_3.x, 0u, 117399u), vec4<u32>(var_2.c.x, 21902u, 3689u, var_2.c.x)))));
}

