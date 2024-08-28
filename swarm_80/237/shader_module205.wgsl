struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(Struct_2(Struct_1(-1365f, 311u, i32(-2147483648)), -366f, vec3<u32>(0u, 0u, 14805u)), false, Struct_1(1082f, 1u, 21751i)), Struct_3(Struct_2(Struct_1(-1987f, 17744u, -12187i), -752f, vec3<u32>(4294967295u, 41565u, 17324u)), false, Struct_1(422f, 2718u, 2147483647i)), Struct_3(Struct_2(Struct_1(-373f, 75279u, -1i), -158f, vec3<u32>(1u, 1u, 58941u)), false, Struct_1(505f, 4294967295u, 63203i)), Struct_3(Struct_2(Struct_1(1029f, 35160u, -1i), 100f, vec3<u32>(34535u, 4294967295u, 1u)), true, Struct_1(-1000f, 49842u, 32071i)), Struct_3(Struct_2(Struct_1(-177f, 1u, -1451i), -127f, vec3<u32>(1u, 1u, 0u)), true, Struct_1(-117f, 4294967295u, -10109i)), Struct_3(Struct_2(Struct_1(173f, 4908u, 0i), -1019f, vec3<u32>(4294967295u, 27132u, 30614u)), true, Struct_1(-258f, 60581u, -37767i)), Struct_3(Struct_2(Struct_1(926f, 0u, -1i), -406f, vec3<u32>(11245u, 4294967295u, 1u)), true, Struct_1(-354f, 21951u, -35024i)), Struct_3(Struct_2(Struct_1(-734f, 14877u, 8477i), -990f, vec3<u32>(31899u, 21522u, 1u)), true, Struct_1(-1186f, 33363u, i32(-2147483648))), Struct_3(Struct_2(Struct_1(-2976f, 76766u, -1i), -410f, vec3<u32>(0u, 4294967295u, 19070u)), true, Struct_1(2301f, 1u, i32(-2147483648))), Struct_3(Struct_2(Struct_1(1090f, 1u, i32(-2147483648)), -1843f, vec3<u32>(1u, 6789u, 17171u)), false, Struct_1(-367f, 1u, 7763i)), Struct_3(Struct_2(Struct_1(299f, 4294967295u, 0i), 449f, vec3<u32>(11861u, 4294967295u, 57697u)), false, Struct_1(-935f, 75996u, -17081i)), Struct_3(Struct_2(Struct_1(1225f, 59840u, 0i), -1072f, vec3<u32>(6911u, 21283u, 0u)), false, Struct_1(-1390f, 11756u, -1i)), Struct_3(Struct_2(Struct_1(324f, 16152u, 1i), 872f, vec3<u32>(36970u, 4294967295u, 686u)), false, Struct_1(1201f, 1u, -1i)), Struct_3(Struct_2(Struct_1(-2251f, 0u, -40391i), -1439f, vec3<u32>(78587u, 49734u, 4294967295u)), true, Struct_1(1000f, 8461u, i32(-2147483648))), Struct_3(Struct_2(Struct_1(-977f, 0u, -35977i), 527f, vec3<u32>(39461u, 36004u, 65430u)), true, Struct_1(1000f, 4294967295u, i32(-2147483648))));

var<private> global1: array<vec2<i32>, 15>;

var<private> global2: vec3<f32> = vec3<f32>(-1000f, 1000f, 1379f);

var<private> global3: u32;

var<private> global4: Struct_3 = Struct_3(Struct_2(Struct_1(-1000f, 1u, 2147483647i), -1631f, vec3<u32>(1u, 1917u, 32621u)), true, Struct_1(106f, 6630u, 0i));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>) -> f32 {
    global1 = array<vec2<i32>, 15>();
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(~u_input.a, 1u, firstTrailingBit(u_input.a)), arg_0.c.x), ~57797u) >> (u_input.a % 32u);
    global1 = array<vec2<i32>, 15>();
    var var_1 = Struct_3(arg_0, select(false, false, arg_1.x), arg_0.a);
    global3 = ~abs(~u_input.a);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(928f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.c.a)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(692f + global4.a.b) * global2.x))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global4.c.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(164f - arg_0.b) * global4.a.a.a)) + _wgslsmith_f_op_f32(-arg_0.b)));
}

fn func_2(arg_0: u32) -> i32 {
    let var_0 = _wgslsmith_clamp_i32(global4.c.c, 2147483647i, ~global4.c.c);
    var var_1 = 1i;
    var var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_div_f32(global4.c.a, _wgslsmith_f_op_f32(func_3(global4.a, vec4<bool>(true, global4.b, global4.b, false)))), min(~25861u, ~arg_0), _wgslsmith_add_i32(2147483647i, -2147483647i) << (u_input.a % 32u)), -1530f, vec3<u32>(0u, select(~34158u, arg_0, false), min(0u, ~1u))), global4.b, global4.c);
    let var_3 = global4.a;
    var var_4 = _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(select(~global1[_wgslsmith_index_u32(arg_0, 15u)], max(global1[_wgslsmith_index_u32(11443u, 15u)], vec2<i32>(7295i, var_2.c.c)), vec2<bool>(true, global4.b)) | reverseBits(vec2<i32>(var_2.a.a.c, global4.a.a.c)), global1[_wgslsmith_index_u32(~53822u, 15u)]), global1[_wgslsmith_index_u32(~(~0u), 15u)]);
    return 10259i;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: vec3<i32>) -> i32 {
    let var_0 = all(select(!arg_0.ywz, select(vec3<bool>(global4.a.a.a < global4.c.a, !arg_0.x, global4.b & false), arg_1.zzz, any(select(vec2<bool>(global4.b, global4.b), arg_0.yx, false))), vec3<bool>(true || (global4.a.b == -493f), any(vec3<bool>(true, true, true)), false)));
    var var_1 = -(~vec2<i32>(func_2(global4.c.b), ~(-1i)));
    let var_2 = ~global4.a.c & ~vec3<u32>(reverseBits(firstLeadingBit(0u)), max(u_input.a, global4.a.a.b), _wgslsmith_dot_vec2_u32(global4.a.c.yz, countOneBits(vec2<u32>(u_input.a, u_input.a))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(853f, 1000f, global2.x, global2.x) - vec4<f32>(global2.x, global4.c.a, global2.x, -1000f)) + vec4<f32>(global2.x, global2.x, global4.a.a.a, global4.a.a.a)))));
    let var_4 = global4.a;
    return global4.a.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4.a;
    global3 = _wgslsmith_add_u32(~(countOneBits(7080u) >> (u_input.a % 32u)), ~_wgslsmith_mod_u32(4294967295u, u_input.a) & 7664u) << (49307u % 32u);
    let var_1 = true;
    var var_2 = vec3<bool>(var_1, global4.b, global4.b);
    var var_3 = global0[_wgslsmith_index_u32(1u, 15u)];
    var var_4 = ~abs(_wgslsmith_mult_i32(func_1(vec4<bool>(global4.b, var_1, var_1, global4.b), vec4<bool>(true, false, var_1, true), vec3<i32>(6547i, -1i, 2147483647i)), _wgslsmith_div_i32(1i, 2147483647i))) >> (global4.a.c.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(~global4.a.c, vec3<u32>(global4.a.a.b, 4294967295u, firstLeadingBit(1u))), var_0.a.b);
}

