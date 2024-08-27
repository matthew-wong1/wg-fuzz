struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec4<i32>(-1i, -1i, 2147483647i, i32(-2147483648)), false, 89368u), Struct_1(vec4<i32>(-6015i, i32(-2147483648), 0i, -520i), true, 4294967295u), Struct_1(vec4<i32>(-1i, 1i, -1i, 0i), false, 52506u), Struct_1(vec4<i32>(i32(-2147483648), 13417i, -38466i, i32(-2147483648)), false, 4294967295u), Struct_1(vec4<i32>(28571i, 1i, 4196i, -45220i), true, 9245u), Struct_1(vec4<i32>(-1i, 29868i, 0i, 2147483647i), true, 4294967295u), Struct_1(vec4<i32>(-982i, 42415i, i32(-2147483648), 0i), true, 0u), Struct_1(vec4<i32>(-22253i, 1i, 2147483647i, 2147483647i), false, 34476u), Struct_1(vec4<i32>(0i, 31576i, -7706i, 0i), false, 4294967295u), Struct_1(vec4<i32>(-20833i, 1i, 1i, 42504i), true, 27844u), Struct_1(vec4<i32>(-1i, -23276i, -1i, 22206i), false, 4294967295u), Struct_1(vec4<i32>(i32(-2147483648), -17792i, 0i, -1i), false, 95709u), Struct_1(vec4<i32>(36452i, 1i, 34099i, -1i), false, 4294967295u), Struct_1(vec4<i32>(-89392i, 5499i, 28538i, 25197i), false, 22969u), Struct_1(vec4<i32>(2147483647i, 39672i, 27267i, i32(-2147483648)), true, 52883u), Struct_1(vec4<i32>(i32(-2147483648), 14761i, 1i, 0i), false, 4294967295u), Struct_1(vec4<i32>(27325i, 4035i, 0i, -1i), true, 14025u), Struct_1(vec4<i32>(73355i, -4950i, -1i, 43984i), false, 1u), Struct_1(vec4<i32>(1i, -64201i, 31744i, -1i), false, 76149u), Struct_1(vec4<i32>(-1i, 64799i, 1235i, -1i), true, 0u), Struct_1(vec4<i32>(66762i, 8892i, 0i, i32(-2147483648)), true, 23743u), Struct_1(vec4<i32>(24964i, i32(-2147483648), 24411i, i32(-2147483648)), true, 40024u), Struct_1(vec4<i32>(2147483647i, 1i, 0i, -1i), true, 38884u), Struct_1(vec4<i32>(59041i, -25292i, 0i, 1i), false, 39847u), Struct_1(vec4<i32>(1i, 1i, -1i, 2147483647i), false, 41397u), Struct_1(vec4<i32>(-34545i, -24731i, -1i, -45983i), true, 0u), Struct_1(vec4<i32>(i32(-2147483648), 0i, 0i, 2147483647i), true, 0u), Struct_1(vec4<i32>(1i, 39381i, 35994i, 18115i), false, 12997u), Struct_1(vec4<i32>(-29161i, 1i, -32097i, 392i), true, 4294967295u), Struct_1(vec4<i32>(33281i, -22147i, i32(-2147483648), 9242i), true, 43990u));

var<private> global1: array<vec4<bool>, 13> = array<vec4<bool>, 13>(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true));

var<private> global2: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(Struct_1(vec4<i32>(0i, 0i, 34497i, 14863i), false, 28978u), 21272u, 850f, vec2<i32>(0i, -41820i)), Struct_2(Struct_1(vec4<i32>(1i, 0i, 25673i, -10809i), false, 0u), 0u, -725f, vec2<i32>(47322i, -4520i)), Struct_2(Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 1i, -12703i), false, 48331u), 120497u, 1070f, vec2<i32>(1i, -29384i)), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 1i, -1i, 41510i), true, 4294967295u), 0u, -317f, vec2<i32>(14777i, 938i)), Struct_2(Struct_1(vec4<i32>(-2221i, i32(-2147483648), -1i, 2147483647i), false, 59352u), 0u, 1000f, vec2<i32>(i32(-2147483648), 0i)), Struct_2(Struct_1(vec4<i32>(-1i, -30598i, -1i, i32(-2147483648)), true, 60017u), 0u, 3358f, vec2<i32>(-13412i, -14327i)));

var<private> global3: vec2<bool>;

var<private> global4: Struct_1 = Struct_1(vec4<i32>(-1i, 39166i, -25218i, 1i), true, 1u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec3<bool> {
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(global4.c, 30u)], 28457u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), u_input.b.yz);
    var var_1 = Struct_2(Struct_1(-(~_wgslsmith_add_vec4_i32(global4.a, vec4<i32>(32516i, -1i, -1i, u_input.e))), all(!(!global1[_wgslsmith_index_u32(10379u, 13u)])), _wgslsmith_add_u32((u_input.c ^ 1u) << (countOneBits(40730u) % 32u), 12530u)), _wgslsmith_dot_vec2_u32(u_input.d >> (select(vec2<u32>(4294967295u, u_input.d.x), u_input.d, vec2<bool>(arg_0.b, true)) % vec2<u32>(32u)), vec2<u32>(firstTrailingBit(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(32021u, global4.c, arg_0.c), vec3<u32>(u_input.d.x, global4.c, u_input.c)))) << (27407u % 32u), _wgslsmith_div_f32(-1313f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1415f + _wgslsmith_f_op_f32(var_0.c - 1419f))))), vec2<i32>(-max(global4.a.x, -u_input.a), _wgslsmith_div_i32(~var_0.a.a.x << (abs(global4.c) % 32u), 2147483647i)));
    var_1 = Struct_2(var_0.a, u_input.c, -1568f, vec2<i32>(-1i & (reverseBits(var_1.d.x) | ~arg_1), min(arg_0.a.x, -13334i)));
    let var_2 = var_1.a;
    var_1 = Struct_2(global0[_wgslsmith_index_u32(u_input.c, 30u)], _wgslsmith_mult_u32(~var_1.a.c ^ u_input.c, select(u_input.c, countOneBits(min(var_0.b, 0u)), !select(var_0.a.b, var_2.b, true))), _wgslsmith_f_op_f32(round(var_1.c)), ~var_2.a.zx);
    return vec3<bool>(any(vec3<bool>(select(arg_1 >= -34001i, var_0.a.b, false), global4.c == var_1.b, true)), any(vec3<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, false), var_1.a.b)), all(!global1[_wgslsmith_index_u32(25927u, 13u)]), global4.b)), select(all(!vec2<bool>(var_1.a.b, var_2.b)), all(select(vec4<bool>(var_1.a.b, true, var_2.b, global4.b), select(global1[_wgslsmith_index_u32(105585u, 13u)], global1[_wgslsmith_index_u32(1766u, 13u)], vec4<bool>(true, arg_0.b, false, false)), !vec4<bool>(var_2.b, var_2.b, var_1.a.b, false))), global4.b));
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_2) -> vec2<bool> {
    var var_0 = select(arg_0, func_3(Struct_1(u_input.b, true, ~reverseBits(0u)), arg_2.a.a.x), !func_3(Struct_1(-global4.a, false, 17986u), u_input.e >> (~38977u % 32u)));
    var var_1 = global4.a.xxx;
    global1 = array<vec4<bool>, 13>();
    var_0 = !(!select(vec3<bool>(!global3.x, false, any(vec2<bool>(false, false))), func_3(Struct_1(arg_2.a.a, arg_0.x, global4.c), -var_1.x), arg_0));
    global4 = Struct_1(u_input.b, true, ~firstLeadingBit(global4.c));
    return vec2<bool>(global3.x, !arg_2.a.b);
}

fn func_2() -> Struct_2 {
    let var_0 = 45064i > global4.a.x;
    global3 = func_4(select(!func_3(global0[_wgslsmith_index_u32(1u, 30u)], min(48659i, 12324i)), !select(vec3<bool>(false, false, true), select(vec3<bool>(global4.b, global3.x, true), vec3<bool>(var_0, global3.x, true), true), !vec3<bool>(global3.x, true, global4.b)), true), false, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(min(u_input.d, u_input.d) >> (~u_input.d % vec2<u32>(32u)), vec2<u32>(abs(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(7385u, 1u, global4.c, global4.c), vec4<u32>(global4.c, 179109u, global4.c, u_input.d.x)))), vec2<u32>(~4294967295u, ~u_input.d.x)), 6u)]);
    global2 = array<Struct_2, 6>();
    let var_1 = Struct_3(any(!(!func_3(Struct_1(global4.a, global4.b, 1u), global4.a.x).xy)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1080f)) - _wgslsmith_f_op_f32(1483f + 839f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(155f, -892f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-701f + 1794f), -683f, -2147483647i > global4.a.x)))), u_input.c, Struct_2(global0[_wgslsmith_index_u32(max(u_input.d.x, global4.c), 30u)], ~(~(~66981u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -165f)), vec2<i32>(5127i ^ u_input.a, u_input.b.x)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) * _wgslsmith_f_op_f32(var_1.d.c + -1000f)))));
    return global2[_wgslsmith_index_u32(var_1.d.a.c, 6u)];
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec3<f32>) -> bool {
    var var_0 = _wgslsmith_mod_i32(50725i, _wgslsmith_div_i32(2147483647i, -arg_0.a.x)) > 0i;
    let var_1 = func_2();
    var var_2 = _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(global4.a, _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(global4.a.x, u_input.b.x, arg_0.a.x, u_input.a)), global4.a), vec4<i32>(func_2().d.x, -19784i, -32927i, var_1.a.a.x))), global4.a);
    var var_3 = func_2();
    var var_4 = Struct_1(vec4<i32>(u_input.e, max(-1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(var_1.a.a, u_input.b), 1i)), _wgslsmith_dot_vec3_i32(var_2.ywz, vec3<i32>(-3114i, -1i, global4.a.x)) ^ firstTrailingBit(~var_3.a.a.x), u_input.b.x), !(!global4.b || any(global1[_wgslsmith_index_u32(var_3.a.c, 13u)])) | global3.x, arg_0.c);
    return all(vec3<bool>(func_3(func_2().a, _wgslsmith_dot_vec2_i32(countOneBits(var_3.d), vec2<i32>(var_4.a.x, var_4.a.x))).x, true, var_3.a.b));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global4.c, global4.c, global4.c), 30u)];
    var var_0 = vec3<i32>(reverseBits(abs(~16344i) ^ firstLeadingBit(global4.a.x)), reverseBits(-1i), _wgslsmith_dot_vec2_i32(min(~vec2<i32>(u_input.e, u_input.e), ~global4.a.zz), ~_wgslsmith_sub_vec2_i32(vec2<i32>(global4.a.x, 2147483647i), abs(u_input.b.yy))));
    let var_1 = Struct_3(func_1(global0[_wgslsmith_index_u32(global4.c, 30u)], !(!(!global4.b)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1f, 1f, 1f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(974f, -382f) + _wgslsmith_f_op_f32(f32(-1f) * -439f)), -639f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(496f, 652f)))))), global4.c, func_2());
    var_0 = var_1.d.a.a.xyz;
    let var_2 = Struct_3(func_1(global0[_wgslsmith_index_u32(u_input.c, 30u)], global3.x, vec3<f32>(445f, var_1.d.c, -1331f)), _wgslsmith_f_op_vec3_f32(exp2(var_1.b)), _wgslsmith_mult_u32(var_1.c >> (_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c, u_input.c), _wgslsmith_add_vec2_u32(u_input.d, vec2<u32>(4294967295u, global4.c))) % 32u), firstLeadingBit(_wgslsmith_dot_vec2_u32(abs(u_input.d), _wgslsmith_clamp_vec2_u32(u_input.d, vec2<u32>(4294967295u, u_input.d.x), u_input.d)))), func_2());
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2036f) - _wgslsmith_f_op_f32(round(-1067f))), _wgslsmith_f_op_f32(-var_1.d.c), var_2.d.c, -387f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(699f, var_1.d.c), _wgslsmith_f_op_f32(2437f - 1896f), _wgslsmith_f_op_f32(abs(var_1.d.c)), -268f) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.d.c, 1027f, var_1.d.c, 711f)))))));
}

