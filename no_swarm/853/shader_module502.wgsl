struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: i32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7>;

var<private> global1: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(Struct_1(vec4<i32>(-12447i, -1i, -5004i, -1i)), Struct_1(vec4<i32>(-31590i, 1i, -26166i, 547i)), vec2<u32>(0u, 4294967295u), -15346i, vec3<bool>(false, true, true)), Struct_2(Struct_1(vec4<i32>(0i, -1880i, 1i, 0i)), Struct_1(vec4<i32>(2147483647i, -11874i, 6266i, 52695i)), vec2<u32>(38656u, 0u), -58373i, vec3<bool>(false, false, true)), Struct_2(Struct_1(vec4<i32>(2147483647i, 2147483647i, -38879i, i32(-2147483648))), Struct_1(vec4<i32>(1406i, -53222i, -23157i, i32(-2147483648))), vec2<u32>(0u, 0u), 2147483647i, vec3<bool>(false, true, false)), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 59575i, -29248i, 18822i)), Struct_1(vec4<i32>(1i, 3830i, 4779i, -5857i)), vec2<u32>(6805u, 4294967295u), 0i, vec3<bool>(false, false, true)), Struct_2(Struct_1(vec4<i32>(-20492i, -1i, -21268i, 17663i)), Struct_1(vec4<i32>(-29122i, 16151i, i32(-2147483648), -1i)), vec2<u32>(4294967295u, 14794u), 0i, vec3<bool>(true, true, false)), Struct_2(Struct_1(vec4<i32>(-33124i, i32(-2147483648), -16967i, 0i)), Struct_1(vec4<i32>(i32(-2147483648), -40243i, 0i, -1i)), vec2<u32>(74704u, 4294967295u), 0i, vec3<bool>(false, false, false)), Struct_2(Struct_1(vec4<i32>(1i, -70021i, 35734i, 9960i)), Struct_1(vec4<i32>(62140i, 49676i, -9706i, -2549i)), vec2<u32>(48957u, 37956u), -29032i, vec3<bool>(true, false, true)), Struct_2(Struct_1(vec4<i32>(16876i, -1i, 1801i, 4033i)), Struct_1(vec4<i32>(77295i, i32(-2147483648), -6892i, 1i)), vec2<u32>(25977u, 1u), 0i, vec3<bool>(true, false, true)), Struct_2(Struct_1(vec4<i32>(7726i, 25850i, 23999i, 1i)), Struct_1(vec4<i32>(-60524i, 44185i, -18928i, -1i)), vec2<u32>(17150u, 0u), 23577i, vec3<bool>(true, false, true)), Struct_2(Struct_1(vec4<i32>(12641i, 14091i, 2147483647i, -776i)), Struct_1(vec4<i32>(-38670i, i32(-2147483648), -4775i, 24339i)), vec2<u32>(53591u, 1u), -5164i, vec3<bool>(true, false, false)), Struct_2(Struct_1(vec4<i32>(1i, -457i, -1i, 44223i)), Struct_1(vec4<i32>(0i, 1i, 2147483647i, 10836i)), vec2<u32>(4294967295u, 1u), -12893i, vec3<bool>(true, false, true)), Struct_2(Struct_1(vec4<i32>(1i, 1i, -1i, 36677i)), Struct_1(vec4<i32>(0i, 1i, 4136i, i32(-2147483648))), vec2<u32>(1u, 0u), -15378i, vec3<bool>(false, false, false)), Struct_2(Struct_1(vec4<i32>(23655i, -12851i, 1274i, 2147483647i)), Struct_1(vec4<i32>(-4205i, 1i, i32(-2147483648), 32527i)), vec2<u32>(0u, 84720u), 79220i, vec3<bool>(true, false, true)), Struct_2(Struct_1(vec4<i32>(2147483647i, 37010i, -58632i, 2147483647i)), Struct_1(vec4<i32>(0i, 2147483647i, 1i, -6981i)), vec2<u32>(76205u, 1u), i32(-2147483648), vec3<bool>(true, false, false)), Struct_2(Struct_1(vec4<i32>(10026i, 6946i, 2147483647i, 87759i)), Struct_1(vec4<i32>(20019i, 27017i, 0i, 27571i)), vec2<u32>(80303u, 77030u), 2147483647i, vec3<bool>(false, false, false)), Struct_2(Struct_1(vec4<i32>(2147483647i, -1i, 3938i, 47187i)), Struct_1(vec4<i32>(-1i, 51548i, i32(-2147483648), -1i)), vec2<u32>(65428u, 94430u), -1i, vec3<bool>(false, true, false)), Struct_2(Struct_1(vec4<i32>(-30722i, 6616i, -1i, -1i)), Struct_1(vec4<i32>(-15649i, 0i, 45481i, -13086i)), vec2<u32>(4294967295u, 0u), 0i, vec3<bool>(false, true, true)), Struct_2(Struct_1(vec4<i32>(15338i, 33842i, 0i, 408i)), Struct_1(vec4<i32>(2147483647i, 2147483647i, -1i, -33970i)), vec2<u32>(40690u, 1u), i32(-2147483648), vec3<bool>(true, true, false)), Struct_2(Struct_1(vec4<i32>(1i, -23650i, 40726i, -13375i)), Struct_1(vec4<i32>(-19976i, 2147483647i, 1i, -1i)), vec2<u32>(0u, 1u), 1i, vec3<bool>(true, true, true)), Struct_2(Struct_1(vec4<i32>(25643i, 0i, 2147483647i, 42276i)), Struct_1(vec4<i32>(0i, 0i, -3103i, 2147483647i)), vec2<u32>(9327u, 59165u), 2147483647i, vec3<bool>(true, true, true)), Struct_2(Struct_1(vec4<i32>(0i, 32372i, -6290i, -27353i)), Struct_1(vec4<i32>(2147483647i, 2147483647i, 76537i, i32(-2147483648))), vec2<u32>(0u, 1u), -32943i, vec3<bool>(false, true, false)), Struct_2(Struct_1(vec4<i32>(-1i, 19222i, 7887i, -1i)), Struct_1(vec4<i32>(21160i, -1i, 52086i, i32(-2147483648))), vec2<u32>(19840u, 67279u), 2147483647i, vec3<bool>(false, false, true)), Struct_2(Struct_1(vec4<i32>(-18574i, i32(-2147483648), 19502i, 21702i)), Struct_1(vec4<i32>(-34256i, i32(-2147483648), i32(-2147483648), 2147483647i)), vec2<u32>(1u, 4294967295u), -1i, vec3<bool>(true, false, false)), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 12261i, 18797i, 1i)), Struct_1(vec4<i32>(6396i, 34743i, i32(-2147483648), 2147483647i)), vec2<u32>(2259u, 14615u), 1i, vec3<bool>(true, false, true)), Struct_2(Struct_1(vec4<i32>(-9516i, -3729i, 56051i, 2147483647i)), Struct_1(vec4<i32>(-21769i, 33179i, 0i, -60032i)), vec2<u32>(1u, 0u), -21134i, vec3<bool>(false, false, true)));

var<private> global2: Struct_3;

var<private> global3: bool;

var<private> global4: Struct_2;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_2) -> vec3<u32> {
    global3 = _wgslsmith_mult_u32(1u, 4221u & firstTrailingBit(firstLeadingBit(79358u))) <= ~(arg_2.c.x | u_input.a.x);
    return ~vec3<u32>(~(~abs(u_input.a.x)), arg_0, ~arg_0);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec4<u32>) -> vec2<u32> {
    global2 = Struct_3(Struct_2(global4.a, global4.b, vec2<u32>(0u, firstLeadingBit(max(u_input.a.x, 1u))), global4.d, select(select(!vec3<bool>(global4.e.x, global4.e.x, global4.e.x), global4.e, vec3<bool>(global4.e.x, false, global4.e.x)), !(!global4.e), global4.e.x)), global4.b, global2.c);
    let var_0 = global0[_wgslsmith_index_u32(1u, 7u)];
    global1 = array<Struct_2, 25>();
    var var_1 = global4.a.a & countOneBits(vec4<i32>(~arg_0.x, -(-19636i >> (1u % 32u)), 23759i, _wgslsmith_sub_i32(arg_0.x, -78296i)));
    let var_2 = ~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(countOneBits(arg_3.zxy)), u_input.a), arg_3.x);
    return abs(select(global2.a.c, firstLeadingBit(reverseBits(_wgslsmith_mult_vec2_u32(global2.a.c, arg_2.xy))), select(!(!vec2<bool>(false, global2.c.x)), vec2<bool>(false, 4294967295u > var_2), global4.e.zx)));
}

fn func_2() -> Struct_2 {
    global4 = Struct_2(global2.a.b, global2.a.b, func_4(vec2<i32>(_wgslsmith_clamp_i32(12179i, -4507i << (global2.a.c.x % 32u), global0[_wgslsmith_index_u32(firstLeadingBit(global4.c.x), 7u)]), 1638i), Struct_1(global4.b.a), u_input.a >> (func_3(global2.a.c.x ^ global4.c.x, any(vec4<bool>(false, global2.a.e.x, true, global4.e.x)), Struct_2(Struct_1(global2.b.a), Struct_1(vec4<i32>(global4.b.a.x, 14129i, global2.b.a.x, -2147483647i)), vec2<u32>(19278u, 2061u), 2147483647i, vec3<bool>(global2.c.x, false, global2.a.e.x))) % vec3<u32>(32u)), vec4<u32>(reverseBits(u_input.a.x), ~39311u, _wgslsmith_clamp_u32(global4.c.x, ~1u, global2.a.c.x), 45545u)), ~(~(2147483647i | _wgslsmith_add_i32(global4.d, global4.b.a.x))), select(!select(!vec3<bool>(global4.e.x, global4.e.x, global2.c.x), !global4.e, vec3<bool>(global4.e.x, false, global4.e.x)), vec3<bool>(false, true, !global4.e.x), any(!vec2<bool>(false, global4.e.x))));
    global0 = array<i32, 7>();
    let var_0 = vec4<u32>(~(~(~(u_input.a.x | global2.a.c.x))), countOneBits(84135u), u_input.a.x, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.a.c.x, 4294967295u, 55814u, u_input.a.x), vec4<u32>(0u, global4.c.x, global2.a.c.x, 44760u)) >> (1u % 32u), ~global4.c.x));
    let var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, ~38949i), vec2<i32>(_wgslsmith_mult_i32(923i, countOneBits(-37229i)), _wgslsmith_clamp_i32(min(global0[_wgslsmith_index_u32(global2.a.c.x, 7u)], 28908i), _wgslsmith_clamp_i32(2147483647i, global4.d, global2.b.a.x), global2.b.a.x))) >> (_wgslsmith_mult_vec2_u32(max(max(global2.a.c << (u_input.a.xy % vec2<u32>(32u)), ~vec2<u32>(0u, global4.c.x)), firstLeadingBit(vec2<u32>(u_input.a.x, u_input.a.x))), _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), ~1u), var_0.yw)) % vec2<u32>(32u));
    global0 = array<i32, 7>();
    return global1[_wgslsmith_index_u32(~var_0.x, 25u)];
}

fn func_1(arg_0: vec3<bool>, arg_1: i32, arg_2: bool, arg_3: bool) -> Struct_3 {
    global3 = min(-global4.b.a.x, global2.b.a.x) < ~0i;
    global4 = func_2();
    global2 = Struct_3(Struct_2(Struct_1(vec4<i32>(max(-733i, 1821i), _wgslsmith_add_i32(global2.a.a.a.x, global0[_wgslsmith_index_u32(global4.c.x, 7u)]), -36695i, max(-24853i, arg_1))), Struct_1(vec4<i32>(-1i, 1i, global2.a.a.a.x, arg_1) | _wgslsmith_mult_vec4_i32(global4.a.a, global2.a.b.a)), vec2<u32>(global2.a.c.x, ~91387u), (firstTrailingBit(1i) & 5463i) & global2.b.a.x, !(!(!vec3<bool>(arg_3, false, true)))), Struct_1(~global2.b.a), !select(select(func_2().e.yx, vec2<bool>(false, true), select(global4.e.zy, vec2<bool>(true, true), global4.e.x)), !global2.a.e.yx, global2.a.e.x));
    global3 = u_input.a.x > min(0u | u_input.a.x, 4294967295u);
    global1 = array<Struct_2, 25>();
    return Struct_3(func_2(), func_2().b, select(vec2<bool>(global4.e.x, -5571i > firstLeadingBit(global4.a.a.x)), func_2().e.zx, func_2().e.yy));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(global4.e, ~(0i), global4.e.x, global2.a.e.x);
    global4 = func_2();
    var var_0 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(~(vec3<i32>(global2.b.a.x, global4.a.a.x, 18283i) >> (_wgslsmith_mod_vec3_u32(u_input.a, u_input.a) % vec3<u32>(32u))), _wgslsmith_add_vec3_i32(global2.b.a.yyw, vec3<i32>(~1i, -2147483647i, global4.d))), ~global4.d);
    var_0 = countOneBits(_wgslsmith_mod_i32(func_2().b.a.x, _wgslsmith_sub_i32(countOneBits(~global4.a.a.x), _wgslsmith_dot_vec4_i32(global4.a.a, global4.b.a))));
    let var_1 = u_input.a;
    global2 = func_1(global4.e, 0i, !(!any(vec4<bool>(false, true, true, global2.c.x))), global4.e.x);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-982f, 933f)))));
    global3 = !(!func_1(vec3<bool>(true, true, true), 12670i, false, global4.e.x).c.x);
    let x = u_input.a;
    s_output = StorageBuffer(64291u, _wgslsmith_clamp_vec3_i32(global2.b.a.xxz, global2.a.a.a.xzw, global4.a.a.wwx), _wgslsmith_mult_vec3_i32(global2.a.a.a.zyw, global2.b.a.wxx), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-837f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(685f))), -1003f) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -353f), 298f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1000f, 1412f))))));
}

