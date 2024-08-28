struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: bool,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: Struct_3,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 12>;

var<private> global1: i32;

var<private> global2: f32;

var<private> global3: array<vec3<i32>, 11>;

var<private> global4: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(Struct_1(vec2<f32>(1401f, 981f), true, true, vec4<i32>(37758i, 1i, -1i, -1i), vec4<i32>(0i, 1i, -1i, -32559i)), 1169f, Struct_1(vec2<f32>(1192f, 2593f), true, false, vec4<i32>(12402i, -66216i, 2147483647i, -6385i), vec4<i32>(0i, 0i, 2147483647i, -18391i)), vec2<u32>(0u, 14420u)), Struct_2(Struct_1(vec2<f32>(279f, 913f), false, true, vec4<i32>(9438i, -13280i, 0i, -38077i), vec4<i32>(46197i, -50487i, 63250i, 2582i)), -1000f, Struct_1(vec2<f32>(-1663f, 541f), true, true, vec4<i32>(-16031i, 1750i, -1i, 7408i), vec4<i32>(1i, 1i, 54606i, 1i)), vec2<u32>(0u, 52595u)), Struct_2(Struct_1(vec2<f32>(956f, 1000f), false, false, vec4<i32>(-1i, 2147483647i, 2147483647i, -600i), vec4<i32>(-58585i, 2147483647i, 0i, -1i)), 288f, Struct_1(vec2<f32>(-889f, 843f), true, false, vec4<i32>(-16625i, -19102i, 2745i, -12559i), vec4<i32>(-1i, 0i, 56506i, 2147483647i)), vec2<u32>(77304u, 0u)), Struct_2(Struct_1(vec2<f32>(-354f, -329f), true, true, vec4<i32>(-16180i, 1i, 50151i, 2147483647i), vec4<i32>(10518i, 2147483647i, 1i, 1i)), 806f, Struct_1(vec2<f32>(-325f, 1000f), true, false, vec4<i32>(2147483647i, 32793i, 1i, -1i), vec4<i32>(i32(-2147483648), 18861i, -19889i, 33245i)), vec2<u32>(78418u, 0u)), Struct_2(Struct_1(vec2<f32>(659f, 661f), false, true, vec4<i32>(-7169i, i32(-2147483648), 1i, -649i), vec4<i32>(-39478i, i32(-2147483648), 54921i, i32(-2147483648))), -305f, Struct_1(vec2<f32>(1112f, -231f), true, false, vec4<i32>(2147483647i, 1i, 2147483647i, 13938i), vec4<i32>(-31028i, 22640i, -20785i, 88708i)), vec2<u32>(4294967295u, 39854u)), Struct_2(Struct_1(vec2<f32>(511f, -109f), true, true, vec4<i32>(i32(-2147483648), 2147483647i, -1i, 0i), vec4<i32>(43868i, 1i, -1i, -1i)), 770f, Struct_1(vec2<f32>(-1000f, 1139f), false, false, vec4<i32>(1i, 0i, -71085i, 0i), vec4<i32>(-1i, 1i, i32(-2147483648), -1i)), vec2<u32>(4294967295u, 0u)), Struct_2(Struct_1(vec2<f32>(-1391f, -898f), true, false, vec4<i32>(20127i, 29014i, 1i, i32(-2147483648)), vec4<i32>(2147483647i, -45243i, 49861i, 73551i)), 788f, Struct_1(vec2<f32>(-254f, -1430f), false, true, vec4<i32>(-32173i, 13555i, 0i, -17671i), vec4<i32>(-1i, 41693i, 27625i, -43894i)), vec2<u32>(50308u, 15254u)), Struct_2(Struct_1(vec2<f32>(321f, 183f), true, true, vec4<i32>(1i, 0i, 1i, 2147483647i), vec4<i32>(i32(-2147483648), -8867i, 13180i, -621i)), -1253f, Struct_1(vec2<f32>(148f, 124f), true, true, vec4<i32>(35378i, 37989i, -1i, -16194i), vec4<i32>(-9728i, 1i, -24026i, 1i)), vec2<u32>(0u, 0u)), Struct_2(Struct_1(vec2<f32>(676f, -1716f), true, false, vec4<i32>(-46490i, 1i, -57349i, -59087i), vec4<i32>(2147483647i, 1i, 1i, 11646i)), 687f, Struct_1(vec2<f32>(-969f, -901f), true, false, vec4<i32>(0i, -1i, -1i, 20018i), vec4<i32>(0i, 1340i, 20781i, -1i)), vec2<u32>(0u, 1u)), Struct_2(Struct_1(vec2<f32>(134f, -914f), true, true, vec4<i32>(1i, -1i, 1i, 0i), vec4<i32>(i32(-2147483648), -16486i, i32(-2147483648), i32(-2147483648))), -1000f, Struct_1(vec2<f32>(-366f, -1335f), true, true, vec4<i32>(27287i, 24530i, -27574i, 14903i), vec4<i32>(-5359i, -13968i, 1i, -1i)), vec2<u32>(56507u, 4294967295u)), Struct_2(Struct_1(vec2<f32>(-708f, -1010f), true, false, vec4<i32>(0i, 0i, -29781i, 2147483647i), vec4<i32>(32638i, -35275i, -30032i, 1i)), 690f, Struct_1(vec2<f32>(260f, -127f), false, true, vec4<i32>(1i, -13291i, 0i, -7226i), vec4<i32>(-29087i, -1i, -63610i, -32755i)), vec2<u32>(14429u, 1u)), Struct_2(Struct_1(vec2<f32>(165f, -152f), false, false, vec4<i32>(i32(-2147483648), -1i, 14525i, 2147483647i), vec4<i32>(0i, 8178i, -20668i, 1i)), 626f, Struct_1(vec2<f32>(588f, 1000f), false, true, vec4<i32>(-36687i, i32(-2147483648), 0i, 0i), vec4<i32>(i32(-2147483648), -42523i, 36655i, -1i)), vec2<u32>(63561u, 49556u)), Struct_2(Struct_1(vec2<f32>(-1894f, 1438f), false, false, vec4<i32>(2147483647i, -30460i, -601i, 0i), vec4<i32>(1i, i32(-2147483648), 0i, i32(-2147483648))), 659f, Struct_1(vec2<f32>(765f, 382f), false, false, vec4<i32>(i32(-2147483648), -5230i, -1441i, 2147483647i), vec4<i32>(57084i, i32(-2147483648), -1i, 9577i)), vec2<u32>(98402u, 90841u)), Struct_2(Struct_1(vec2<f32>(-965f, 494f), false, true, vec4<i32>(-9468i, 2147483647i, -23915i, 23916i), vec4<i32>(2147483647i, 12602i, 2147483647i, 67620i)), 416f, Struct_1(vec2<f32>(-558f, 445f), true, false, vec4<i32>(2147483647i, -7390i, 0i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -15568i, i32(-2147483648), 5471i)), vec2<u32>(66643u, 18083u)), Struct_2(Struct_1(vec2<f32>(-525f, -2108f), true, true, vec4<i32>(i32(-2147483648), 9056i, -56310i, 11097i), vec4<i32>(9384i, 1i, -858i, -14871i)), -2262f, Struct_1(vec2<f32>(-833f, -353f), false, false, vec4<i32>(1609i, -23881i, -380i, -1i), vec4<i32>(-1i, -42163i, -25948i, 2147483647i)), vec2<u32>(0u, 16965u)), Struct_2(Struct_1(vec2<f32>(-301f, -439f), true, false, vec4<i32>(-4058i, 2147483647i, 26390i, -53800i), vec4<i32>(-5120i, i32(-2147483648), 49563i, 1i)), -1533f, Struct_1(vec2<f32>(-245f, -187f), true, true, vec4<i32>(42961i, -1i, 0i, -53305i), vec4<i32>(19757i, 21803i, -615i, -17925i)), vec2<u32>(1u, 39504u)), Struct_2(Struct_1(vec2<f32>(1072f, -1269f), true, true, vec4<i32>(-59829i, 2147483647i, 6998i, 13251i), vec4<i32>(2147483647i, 1i, 0i, -1i)), 411f, Struct_1(vec2<f32>(-1000f, 598f), false, false, vec4<i32>(0i, 0i, -8979i, 1i), vec4<i32>(-1i, 1507i, -1i, i32(-2147483648))), vec2<u32>(18742u, 79141u)), Struct_2(Struct_1(vec2<f32>(392f, 204f), true, false, vec4<i32>(-1i, 0i, i32(-2147483648), 0i), vec4<i32>(1i, 1i, -6543i, 2147483647i)), 2625f, Struct_1(vec2<f32>(130f, 1245f), false, false, vec4<i32>(14554i, -18640i, 74840i, 2147483647i), vec4<i32>(10384i, -19110i, -12090i, -1i)), vec2<u32>(1u, 88196u)), Struct_2(Struct_1(vec2<f32>(549f, -1782f), true, true, vec4<i32>(-20544i, 0i, -6920i, -1i), vec4<i32>(17483i, 10171i, 34155i, -9245i)), 1110f, Struct_1(vec2<f32>(-222f, 908f), true, false, vec4<i32>(10417i, 2147483647i, -8770i, 8239i), vec4<i32>(82525i, 0i, 8533i, 0i)), vec2<u32>(4294967295u, 0u)), Struct_2(Struct_1(vec2<f32>(-1279f, 1336f), true, true, vec4<i32>(2147483647i, 1i, 2147483647i, i32(-2147483648)), vec4<i32>(-28397i, 1i, 2147483647i, 2147483647i)), -594f, Struct_1(vec2<f32>(573f, 562f), true, true, vec4<i32>(0i, 0i, -4630i, 336i), vec4<i32>(2147483647i, 43410i, -20471i, -56081i)), vec2<u32>(4294967295u, 0u)), Struct_2(Struct_1(vec2<f32>(-730f, -498f), true, true, vec4<i32>(42312i, 1i, 0i, 6958i), vec4<i32>(30136i, 7070i, -17846i, -2843i)), 777f, Struct_1(vec2<f32>(1118f, 1121f), false, false, vec4<i32>(-35989i, -1i, 2147483647i, -1i), vec4<i32>(-29022i, 52004i, -38191i, -1i)), vec2<u32>(6204u, 0u)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1) -> bool {
    let var_0 = -1i;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-2215f, _wgslsmith_f_op_f32(1035f + -466f))), 1f, arg_1.a.x > _wgslsmith_f_op_f32(trunc(399f)))))), arg_1.a.x);
    let var_2 = global4[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, 4294967295u & max(~arg_0.a, u_input.e)), 21u)];
    global2 = -444f;
    let var_3 = arg_0;
    return true;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1506f, -1640f)) * 626f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1105f - -846f) * 797f)))));
    global2 = var_0;
    global3 = array<vec3<i32>, 11>();
    var var_1 = select(vec3<bool>(true, u_input.d < u_input.a, any(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false)))), select(vec3<bool>(!func_3(Struct_4(67670u, false, Struct_3(Struct_1(vec2<f32>(1451f, -288f), true, true, vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(-15768i, u_input.b.x, u_input.b.x, u_input.b.x)), true), u_input.b.yx), Struct_1(vec2<f32>(var_0, var_0), true, true, vec4<i32>(u_input.b.x, u_input.b.x, 40824i, u_input.b.x), vec4<i32>(u_input.b.x, -1i, 1i, u_input.b.x))), all(vec2<bool>(true, true)), true), vec3<bool>(u_input.b.x > countOneBits(u_input.b.x), all(select(vec2<bool>(false, true), vec2<bool>(false, true), true)), true), !select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), func_3(Struct_4(10099u, true, Struct_3(Struct_1(vec2<f32>(-1161f, var_0), true, true, vec4<i32>(39040i, -6182i, u_input.b.x, 1i), vec4<i32>(-31062i, u_input.b.x, u_input.b.x, -11672i)), false), u_input.b.yy), Struct_1(vec2<f32>(261f, 2690f), true, true, vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, 86290i, u_input.b.x, 2147483647i))))), false);
    let var_2 = Struct_1(vec2<f32>(-1369f, var_0), var_1.x, !(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -30322i), vec4<i32>(u_input.b.x, -2147483647i, 1i, 35508i)) > _wgslsmith_add_i32(~u_input.b.x, u_input.b.x ^ u_input.b.x)), vec4<i32>(u_input.b.x, 0i, -1i, u_input.b.x ^ -2147483647i) ^ vec4<i32>(~(-38083i), _wgslsmith_add_i32(-u_input.b.x, u_input.b.x), _wgslsmith_dot_vec2_i32(~u_input.b.xz, vec2<i32>(-13660i, u_input.b.x) >> (vec2<u32>(31942u, u_input.d) % vec2<u32>(32u))), firstTrailingBit(u_input.b.x) >> (firstTrailingBit(49681u) % 32u)), firstTrailingBit(~(~firstLeadingBit(vec4<i32>(0i, u_input.b.x, u_input.b.x, 2147483647i)))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 653f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 257f)))))))), all(!(!(!vec4<bool>(false, false, var_2.c, var_2.b)))), var_1.x, reverseBits(firstLeadingBit(firstLeadingBit(~vec4<i32>(u_input.b.x, var_2.d.x, 0i, var_2.d.x)))), -(vec4<i32>(var_2.e.x, 1i, u_input.b.x | 37566i, abs(var_2.e.x)) << (~min(vec4<u32>(52995u, 1u, u_input.d, u_input.a), vec4<u32>(u_input.a, 8998u, u_input.a, 4294967295u)) % vec4<u32>(32u))));
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    global4 = array<Struct_2, 21>();
    let var_0 = -vec2<i32>(abs(_wgslsmith_div_i32(-2147483647i, u_input.b.x)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.b.x, u_input.b.x, -26827i), vec4<i32>(-7894i, u_input.b.x, 2147483647i, u_input.b.x)) ^ -(~2147483647i));
    let var_1 = select(vec2<bool>(true, true), !(!select(vec2<bool>(true, true), !vec2<bool>(arg_0.b, arg_0.c), true)), select(true, any(!vec4<bool>(arg_0.b, true, arg_0.b, true)), func_3(Struct_4(arg_1, arg_0.b, Struct_3(arg_0, arg_0.c), var_0), arg_0) & false));
    global1 = -(~(-2147483647i) & arg_0.d.x) ^ (~(~u_input.b.x) ^ 0i);
    global4 = array<Struct_2, 21>();
    return arg_0;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<u32>) -> vec3<u32> {
    var var_0 = Struct_4(_wgslsmith_sub_u32(~u_input.a ^ arg_1.x, arg_1.x), false, Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(718f, -728f) + vec2<f32>(-728f, -1479f)))), all(vec4<bool>(true, true, true, true)), true, max(vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, arg_0.x), abs(vec4<i32>(arg_0.x, u_input.b.x, 1i, u_input.b.x))), arg_0), all(vec2<bool>(true, true))), min(u_input.b.xz, u_input.b.zy));
    global2 = _wgslsmith_f_op_f32(select(var_0.c.a.a.x, 2647f, var_0.b));
    var var_1 = Struct_3(func_4(func_2(), ~_wgslsmith_mod_u32(arg_1.x, 0u)), !(var_0.b & true));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1178f) - _wgslsmith_f_op_f32(-func_4(Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.c.a.a.x, var_1.a.a.x), var_0.c.a.a), any(vec4<bool>(var_0.b, false, var_0.b, true)), false, firstTrailingBit(arg_0), vec4<i32>(1i, -26739i, -34877i, -1i)), u_input.d).a.x));
    return vec3<u32>(~1u | _wgslsmith_sub_u32(reverseBits(57443u), _wgslsmith_dot_vec4_u32(select(vec4<u32>(var_0.a, 0u, u_input.d, var_0.a), vec4<u32>(45747u, 24822u, u_input.a, u_input.e), true), vec4<u32>(var_0.a, 36833u, 10079u, u_input.d))), _wgslsmith_clamp_u32(~countOneBits(4294967295u >> (var_0.a % 32u)), u_input.d, _wgslsmith_sub_u32(~countOneBits(u_input.c), var_0.a)), 3490u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 12>();
    global1 = -2147483647i;
    var var_0 = _wgslsmith_add_vec3_u32(max(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.e), vec3<u32>(u_input.c, 0u, 35217u)), vec3<u32>(u_input.d, u_input.a, u_input.e)) >> (min(~vec3<u32>(u_input.e, 6122u, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, u_input.e, 1u), vec3<u32>(u_input.e, u_input.d, 1u))) % vec3<u32>(32u)), func_1(reverseBits(vec4<i32>(1i, u_input.b.x, u_input.b.x, u_input.b.x)), vec2<u32>(u_input.a, 1u) | ~global0[_wgslsmith_index_u32(u_input.a, 12u)])), reverseBits(abs(~(vec3<u32>(u_input.e, u_input.e, 7786u) & vec3<u32>(55795u, u_input.e, u_input.a)))));
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1473f, _wgslsmith_f_op_f32(162f + -1000f)))), true, true & !(u_input.c == var_0.x), -_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.b.x, 0i, u_input.b.x, u_input.b.x), ~vec4<i32>(-46337i, 0i, u_input.b.x, 1i)), ~vec4<i32>(-30183i, u_input.b.x, u_input.b.x, -41353i) | -abs(vec4<i32>(u_input.b.x, u_input.b.x, 14013i, u_input.b.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(460f, -1540f) + _wgslsmith_div_f32(960f, 1000f)), _wgslsmith_f_op_f32(step(1474f, 381f)))) != _wgslsmith_f_op_f32(-835f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-3501f * 865f))));
    var var_2 = _wgslsmith_add_vec2_i32(-u_input.b.xx, -var_1.a.e.zz);
    let var_3 = !var_1.b;
    let var_4 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(abs(-2147483647i), 143i, ~(u_input.b.x >> (u_input.c % 32u)), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(~var_2.x, 0i), 1i, var_4.x)), 7371u, firstLeadingBit(_wgslsmith_add_vec4_u32(~(~vec4<u32>(0u, 4363u, u_input.d, var_0.x)), vec4<u32>(4294967295u, _wgslsmith_mult_u32(u_input.d, var_0.x), var_0.x, u_input.c | var_0.x))), ~_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(var_1.a.d.x, -7284i, u_input.b.x)), abs(vec3<i32>(var_4.x, var_4.x, var_2.x))));
}

