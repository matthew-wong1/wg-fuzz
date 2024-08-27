struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: vec3<u32>,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(vec2<f32>(204f, -1150f), true, vec3<u32>(42119u, 53173u, 1u), vec2<bool>(true, false), vec4<i32>(-11062i, -7537i, -24025i, -33395i)), Struct_2(vec2<f32>(374f, -1786f), false, vec3<u32>(84972u, 39343u, 0u), vec2<bool>(true, true), vec4<i32>(-49314i, 1i, -22513i, 19997i)), Struct_2(vec2<f32>(284f, 240f), true, vec3<u32>(0u, 21931u, 4294967295u), vec2<bool>(true, true), vec4<i32>(68031i, 2147483647i, 36147i, -56537i)), Struct_2(vec2<f32>(1116f, 221f), false, vec3<u32>(1u, 12324u, 4294967295u), vec2<bool>(true, true), vec4<i32>(-28635i, 11652i, 0i, 0i)), Struct_2(vec2<f32>(1000f, 808f), true, vec3<u32>(37010u, 298u, 1u), vec2<bool>(true, false), vec4<i32>(59047i, -35197i, 1i, -1i)), Struct_2(vec2<f32>(2206f, 602f), false, vec3<u32>(80544u, 50550u, 1u), vec2<bool>(false, true), vec4<i32>(7296i, 0i, 2147483647i, 0i)), Struct_2(vec2<f32>(-119f, -217f), true, vec3<u32>(1u, 0u, 0u), vec2<bool>(false, true), vec4<i32>(2147483647i, i32(-2147483648), 0i, 1i)), Struct_2(vec2<f32>(-137f, 553f), false, vec3<u32>(52190u, 11564u, 13972u), vec2<bool>(true, true), vec4<i32>(-8506i, -1i, 0i, 55840i)), Struct_2(vec2<f32>(-710f, -1000f), true, vec3<u32>(44560u, 4294967295u, 13556u), vec2<bool>(true, false), vec4<i32>(-2535i, -90078i, 1i, i32(-2147483648))), Struct_2(vec2<f32>(-2929f, 848f), false, vec3<u32>(3593u, 0u, 68103u), vec2<bool>(true, true), vec4<i32>(21363i, 41377i, 0i, -29299i)), Struct_2(vec2<f32>(237f, -612f), true, vec3<u32>(35767u, 0u, 1u), vec2<bool>(false, false), vec4<i32>(2147483647i, 30886i, -17475i, -40393i)), Struct_2(vec2<f32>(1390f, 928f), false, vec3<u32>(14008u, 75447u, 0u), vec2<bool>(false, true), vec4<i32>(26655i, 0i, 18233i, -10026i)));

var<private> global1: Struct_2 = Struct_2(vec2<f32>(1000f, 326f), false, vec3<u32>(55013u, 4294967295u, 67042u), vec2<bool>(true, true), vec4<i32>(40156i, 58212i, -1i, 8350i));

var<private> global2: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(4509i, 59331u, -857f, vec2<bool>(true, true)), Struct_1(-31163i, 0u, 615f, vec2<bool>(true, false)), Struct_1(-45541i, 4294967295u, 443f, vec2<bool>(true, false)), Struct_1(1i, 4294967295u, 1418f, vec2<bool>(false, true)), Struct_1(1i, 4294967295u, 544f, vec2<bool>(false, false)), Struct_1(80812i, 967u, -378f, vec2<bool>(true, true)), Struct_1(1i, 1u, 1000f, vec2<bool>(true, false)), Struct_1(1i, 48794u, -2334f, vec2<bool>(false, true)), Struct_1(1i, 4294967295u, 164f, vec2<bool>(true, false)), Struct_1(-39126i, 6565u, 418f, vec2<bool>(false, false)), Struct_1(-37082i, 79221u, -1518f, vec2<bool>(true, true)), Struct_1(1i, 0u, -781f, vec2<bool>(true, true)), Struct_1(2147483647i, 0u, -158f, vec2<bool>(true, false)), Struct_1(19795i, 4294967295u, 689f, vec2<bool>(false, true)), Struct_1(-17213i, 0u, -1142f, vec2<bool>(true, true)), Struct_1(-22635i, 73043u, -773f, vec2<bool>(false, false)), Struct_1(47136i, 9962u, -930f, vec2<bool>(true, true)), Struct_1(i32(-2147483648), 0u, 1000f, vec2<bool>(true, false)), Struct_1(-15941i, 1u, 375f, vec2<bool>(true, false)), Struct_1(-13940i, 3853u, -2142f, vec2<bool>(false, false)), Struct_1(3744i, 45265u, -2370f, vec2<bool>(true, true)), Struct_1(1i, 91730u, 112f, vec2<bool>(true, true)), Struct_1(-32467i, 1u, 1000f, vec2<bool>(false, false)), Struct_1(31064i, 4294967295u, -941f, vec2<bool>(true, true)), Struct_1(-1i, 0u, 802f, vec2<bool>(false, false)), Struct_1(i32(-2147483648), 1u, 649f, vec2<bool>(true, false)), Struct_1(-16942i, 1u, -1000f, vec2<bool>(true, true)), Struct_1(-73020i, 1u, -214f, vec2<bool>(false, false)), Struct_1(2147483647i, 4294967295u, 416f, vec2<bool>(false, true)), Struct_1(1i, 4294967295u, 764f, vec2<bool>(true, false)), Struct_1(2147483647i, 59787u, -255f, vec2<bool>(false, true)), Struct_1(0i, 4294967295u, 1738f, vec2<bool>(false, false)));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<i32> {
    var var_0 = vec4<bool>(true, !global1.b, all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), select(vec3<bool>(global1.b, global1.d.x, true), vec3<bool>(false, true, global1.b), false), !global1.d.x), global1.b)), true);
    let var_1 = vec4<bool>(any(select(!select(vec4<bool>(global1.d.x, global1.d.x, var_0.x, var_0.x), vec4<bool>(true, false, true, true), vec4<bool>(global1.d.x, global1.d.x, true, var_0.x)), vec4<bool>(true, all(var_0.yxx), global1.e.x != -7730i, global1.b), !any(vec3<bool>(global1.b, false, false)))), true, true, all(select(!vec4<bool>(false, true, global1.b, global1.b), vec4<bool>(true, false, var_0.x, var_0.x), select(false, global1.d.x, global1.d.x))) || any(select(vec3<bool>(global1.b, global1.d.x, true), var_0.wyz, all(global1.d))));
    global1 = global0[_wgslsmith_index_u32(4294967295u, 12u)];
    var var_2 = global1.a;
    var var_3 = global2[_wgslsmith_index_u32(1u, 32u)];
    return vec4<i32>(1i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.a.yz, reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(9965i, -2147483647i), u_input.a.ww, vec2<i32>(global1.e.x, 1i)))), -1i), var_3.a, ~(reverseBits(-1i) & ~firstTrailingBit(-2147483647i)));
}

fn func_2(arg_0: vec2<i32>) -> f32 {
    var var_0 = _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(func_3(), _wgslsmith_mod_vec4_i32(vec4<i32>(global1.e.x, -1i, 15778i, 0i) >> (vec4<u32>(4422u, 8419u, 4294967295u, global1.c.x) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, arg_0.x, -28343i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, arg_0.x, u_input.a.x)) & u_input.a)), -vec4<i32>(-global1.e.x, global1.e.x, arg_0.x, ~27593i));
    global1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global1.a.x)), _wgslsmith_div_f32(global1.a.x, global1.a.x))), global1.a.x), global1.d.x, _wgslsmith_div_vec3_u32(global1.c, ~min(_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.c.x, global1.c.x, global1.c.x), vec3<u32>(68363u, global1.c.x, 78641u), global1.c), ~global1.c)), !select(vec2<bool>(u_input.a.x == u_input.a.x, all(vec3<bool>(true, global1.d.x, true))), select(select(vec2<bool>(false, global1.b), global1.d, false), global1.d, 94526u <= global1.c.x), !vec2<bool>(global1.b, global1.d.x)), vec4<i32>(u_input.a.x, -34075i, i32(-1i) * -arg_0.x, var_0.x));
    var var_1 = _wgslsmith_dot_vec4_u32(~(~(~(~vec4<u32>(global1.c.x, global1.c.x, 4294967295u, 1965u)))), ~(vec4<u32>(~37880u, global1.c.x, ~4294967295u, select(global1.c.x, 23663u, global1.b)) >> (~select(vec4<u32>(global1.c.x, 14945u, 4294967295u, 37452u), vec4<u32>(6512u, 25061u, global1.c.x, 0u), true) % vec4<u32>(32u))));
    var var_2 = Struct_1(-1i, global1.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -302f), global1.a.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x))))), global1.d);
    let var_3 = global1.d.x && true;
    return -1432f;
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2) -> u32 {
    let var_0 = abs(~_wgslsmith_dot_vec3_u32(global1.c, vec3<u32>(86551u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.c.x, global1.c.x, arg_0.c.x), vec3<u32>(arg_2.c.x, 79955u, global1.c.x)), global1.c.x)));
    global1 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_2(vec2<i32>(global1.e.x, arg_0.e.x) | vec2<i32>(-40967i, global1.e.x))), _wgslsmith_f_op_f32(-402f + arg_2.a.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(arg_2.a + vec2<f32>(-1000f, arg_2.a.x)))))), all(select(!(!vec3<bool>(arg_1, false, arg_1)), !vec3<bool>(arg_0.b, arg_0.d.x, arg_1), !select(vec3<bool>(true, false, arg_2.d.x), vec3<bool>(global1.d.x, false, false), false))), ~(~vec3<u32>(reverseBits(12968u), max(4294967295u, arg_2.c.x), var_0)), vec2<bool>(true, all(arg_0.d)), abs(abs(select(u_input.a, global1.e, !vec4<bool>(false, true, arg_0.b, true)))));
    let var_1 = vec3<u32>(~global1.c.x, abs(~0u), ~(~1u));
    let var_2 = global2[_wgslsmith_index_u32(0u >> (firstLeadingBit(var_1.x) % 32u), 32u)];
    global0 = array<Struct_2, 12>();
    return ~78506u;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec4<u32>, arg_3: Struct_2) -> StorageBuffer {
    let var_0 = select(!select(!select(vec3<bool>(global1.b, arg_3.b, false), vec3<bool>(arg_0.d.x, global1.b, false), vec3<bool>(true, arg_0.d.x, global1.d.x)), !select(vec3<bool>(true, true, false), vec3<bool>(arg_0.d.x, arg_0.d.x, false), vec3<bool>(arg_0.d.x, arg_0.d.x, false)), arg_0.d.x), select(select(select(select(vec3<bool>(global1.d.x, false, arg_0.d.x), vec3<bool>(global1.b, arg_0.d.x, true), vec3<bool>(true, true, false)), !vec3<bool>(arg_3.d.x, true, arg_0.d.x), false), vec3<bool>(all(vec3<bool>(global1.d.x, arg_3.b, true)), arg_0.d.x != global1.d.x, all(vec3<bool>(true, false, false))), true), !select(select(vec3<bool>(arg_0.d.x, false, global1.d.x), vec3<bool>(false, false, false), vec3<bool>(arg_3.b, arg_3.d.x, arg_3.d.x)), vec3<bool>(false, arg_0.d.x, arg_0.d.x), true), !(!select(vec3<bool>(arg_0.d.x, false, global1.d.x), vec3<bool>(global1.d.x, arg_3.d.x, true), vec3<bool>(false, true, arg_3.b)))), select(!(!(!vec3<bool>(true, arg_0.d.x, false))), !vec3<bool>(all(vec3<bool>(arg_0.d.x, true, false)), true, any(vec4<bool>(arg_0.d.x, arg_0.d.x, global1.d.x, arg_0.d.x))), vec3<bool>(true, global1.d.x, arg_3.d.x)));
    var var_1 = Struct_1(arg_3.e.x, firstTrailingBit(1u), arg_0.c, vec2<bool>(!all(vec2<bool>(global1.b, true)), arg_3.e.x < (arg_3.e.x | ~arg_3.e.x)));
    let var_2 = -6801i;
    var var_3 = 82547u;
    let var_4 = _wgslsmith_f_op_f32(abs(global1.a.x));
    return StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_4, 1708f)), _wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(func_2(_wgslsmith_add_vec2_i32(vec2<i32>(var_1.a, 1i), arg_3.e.yz)))), var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(Struct_1(abs(u_input.a.x), ~global1.c.x, -1541f, !vec2<bool>(true, global1.a.x < global1.a.x)), ~(~global1.c.x), vec4<u32>(6788u, ~1u, ~_wgslsmith_clamp_u32(_wgslsmith_div_u32(46420u, global1.c.x), 13739u, ~30894u), 25137u >> ((global1.c.x << (0u % 32u)) % 32u)), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.x, global1.a.x) * vec2<f32>(231f, -2074f)) - _wgslsmith_f_op_vec2_f32(-global1.a))), global1.d.x, vec3<u32>(~abs(1u), 1u, func_1(global0[_wgslsmith_index_u32(global1.c.x, 12u)], !global1.d.x, global0[_wgslsmith_index_u32(global1.c.x, 12u)])), vec2<bool>(global1.d.x, global1.d.x), -vec4<i32>(u_input.a.x, countOneBits(-2147483647i), _wgslsmith_add_i32(u_input.a.x, 7829i), -global1.e.x)));
}

