struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: bool,
    d: vec3<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30>;

var<private> global1: vec2<f32> = vec2<f32>(367f, 1000f);

var<private> global2: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(-22314i, vec3<u32>(0u, 0u, 27963u), false, vec3<f32>(620f, -576f, 1181f), vec2<u32>(0u, 4294967295u)), Struct_1(-23793i, vec3<u32>(4294967295u, 0u, 41032u), false, vec3<f32>(590f, 494f, 2087f), vec2<u32>(47402u, 38991u)), Struct_1(31771i, vec3<u32>(104968u, 1u, 17849u), true, vec3<f32>(-1162f, -142f, 1668f), vec2<u32>(1u, 62677u)), Struct_1(-1i, vec3<u32>(0u, 1u, 43041u), true, vec3<f32>(1457f, 137f, -1118f), vec2<u32>(75241u, 21288u)), Struct_1(2950i, vec3<u32>(47491u, 113125u, 10863u), false, vec3<f32>(525f, 636f, -1486f), vec2<u32>(7065u, 24266u)), Struct_1(-8879i, vec3<u32>(26594u, 2728u, 40271u), false, vec3<f32>(1000f, 527f, 159f), vec2<u32>(0u, 1064u)), Struct_1(-1i, vec3<u32>(1u, 3428u, 8424u), true, vec3<f32>(504f, -175f, 2242f), vec2<u32>(69072u, 50106u)), Struct_1(-1i, vec3<u32>(24059u, 0u, 4294967295u), false, vec3<f32>(803f, -902f, -764f), vec2<u32>(20329u, 0u)), Struct_1(2659i, vec3<u32>(8885u, 8595u, 22212u), true, vec3<f32>(1211f, -567f, -965f), vec2<u32>(28901u, 40334u)), Struct_1(-41654i, vec3<u32>(38570u, 39568u, 4294967295u), false, vec3<f32>(1136f, -1018f, 500f), vec2<u32>(0u, 24178u)), Struct_1(-38703i, vec3<u32>(29875u, 55289u, 4294967295u), true, vec3<f32>(1280f, 1598f, 2085f), vec2<u32>(49671u, 70258u)), Struct_1(-6992i, vec3<u32>(4294967295u, 46917u, 58866u), false, vec3<f32>(1179f, -200f, -150f), vec2<u32>(1u, 0u)), Struct_1(-71996i, vec3<u32>(14082u, 4294967295u, 11077u), true, vec3<f32>(1000f, -1104f, -1066f), vec2<u32>(32402u, 0u)), Struct_1(-1i, vec3<u32>(19923u, 1u, 4294967295u), true, vec3<f32>(-584f, -2067f, -1088f), vec2<u32>(4294967295u, 23097u)), Struct_1(2147483647i, vec3<u32>(4294967295u, 0u, 3413u), false, vec3<f32>(1000f, 486f, 371f), vec2<u32>(0u, 14867u)), Struct_1(33066i, vec3<u32>(12589u, 64183u, 0u), false, vec3<f32>(-229f, 1583f, 2083f), vec2<u32>(86432u, 4294967295u)), Struct_1(46706i, vec3<u32>(66967u, 39948u, 72870u), false, vec3<f32>(-2263f, 855f, -569f), vec2<u32>(0u, 0u)), Struct_1(10370i, vec3<u32>(8589u, 0u, 1u), false, vec3<f32>(-250f, 2148f, 268f), vec2<u32>(76899u, 100532u)), Struct_1(14484i, vec3<u32>(38504u, 0u, 4294967295u), true, vec3<f32>(-1537f, -1918f, 910f), vec2<u32>(1u, 1u)), Struct_1(0i, vec3<u32>(4294967295u, 4294967295u, 6299u), false, vec3<f32>(681f, -141f, -255f), vec2<u32>(88714u, 0u)), Struct_1(1i, vec3<u32>(1u, 4294967295u, 1644u), false, vec3<f32>(485f, 217f, -141f), vec2<u32>(4294967295u, 67040u)), Struct_1(-1i, vec3<u32>(1u, 6890u, 102499u), true, vec3<f32>(1246f, 1062f, 123f), vec2<u32>(36601u, 8135u)), Struct_1(-1i, vec3<u32>(1u, 1u, 60625u), false, vec3<f32>(-1739f, 1000f, 539f), vec2<u32>(29910u, 1340u)), Struct_1(35620i, vec3<u32>(3845u, 62135u, 12575u), true, vec3<f32>(-233f, -466f, -1173f), vec2<u32>(2938u, 21994u)));

var<private> global3: i32;

var<private> global4: vec2<f32> = vec2<f32>(392f, -1126f);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec3<f32>) -> vec3<bool> {
    let var_0 = arg_1;
    global2 = array<Struct_1, 24>();
    let var_1 = Struct_1(-1i, var_0.b, false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(arg_3)))))), _wgslsmith_sub_vec2_u32(arg_2.yx, vec2<u32>(abs(8895u), ~4294967295u)) & u_input.b.xy);
    global2 = array<Struct_1, 24>();
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-844f - _wgslsmith_f_op_f32(abs(global1.x))), _wgslsmith_f_op_f32(f32(-1f) * -464f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.d.x + -320f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x * 2217f)))) - vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-242f - _wgslsmith_f_op_f32(f32(-1f) * -646f)))), 924f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1242f, 699f) - 711f), 101f))));
    return !(!vec3<bool>(true, -71584i >= _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(var_0.a, 23696i)), arg_0.x));
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    let var_0 = all(vec3<bool>((607f != global1.x) && !arg_0.b, select(false, any(vec3<bool>(global0[_wgslsmith_index_u32(50148u, 30u)], false, true)), global0[_wgslsmith_index_u32(4294967295u, 30u)] && global0[_wgslsmith_index_u32(u_input.a, 30u)]) == all(func_3(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 30u)], arg_0.b), global2[_wgslsmith_index_u32(u_input.a, 24u)], vec3<u32>(arg_0.a.x, arg_0.a.x, 0u), vec3<f32>(global4.x, global4.x, 523f))), any(select(!vec2<bool>(true, arg_0.b), !vec2<bool>(global0[_wgslsmith_index_u32(arg_0.a.x, 30u)], false), arg_0.b))));
    var var_1 = global1.x;
    var var_2 = abs(max(min(vec3<i32>(1i, ~arg_0.c, abs(arg_0.c)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.e, u_input.e, arg_0.c), vec3<i32>(arg_0.c, u_input.c.x, 2147483647i)) & firstLeadingBit(vec3<i32>(u_input.e, arg_0.c, arg_0.c))), reverseBits(vec3<i32>(2147483647i, _wgslsmith_sub_i32(2147483647i, u_input.c.x), _wgslsmith_add_i32(0i, -4492i)))));
    var var_3 = global2[_wgslsmith_index_u32(121771u, 24u)];
    var var_4 = Struct_1(-1102i, _wgslsmith_mod_vec3_u32(select(u_input.b, u_input.b, any(!vec3<bool>(var_3.c, true, arg_0.b))), u_input.b), true, var_3.d, _wgslsmith_mult_vec2_u32(u_input.b.xz, vec2<u32>(_wgslsmith_dot_vec2_u32(~u_input.b.yx, ~vec2<u32>(4294967295u, arg_0.a.x)), 1u)));
    return Struct_2(_wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 21982u), arg_0.a), ~arg_0.a.x)), ~var_4.b.zy), any(vec4<bool>(false || var_0, all(vec4<bool>(true, global0[_wgslsmith_index_u32(var_4.b.x, 30u)], var_0, var_4.c)), func_3(vec2<bool>(var_3.c, var_3.c), Struct_1(-20661i, var_4.b, var_4.c, var_4.d, var_4.e), ~u_input.b, vec3<f32>(var_4.d.x, global1.x, 532f)).x, any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, var_4.c, true, var_3.c), true)))), abs(-var_2.x) >> (25083u % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    var var_0 = true;
    global1 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(floor(397f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-921f * 298f)))), _wgslsmith_div_f32(1718f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.x)))))), -403f);
    var var_1 = vec3<i32>(-2147483647i, ~1i, arg_1.c);
    var var_2 = arg_0;
    var_2 = global2[_wgslsmith_index_u32(arg_0.e.x, 24u)];
    return func_2(arg_1);
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    let var_0 = global2[_wgslsmith_index_u32(u_input.d, 24u)];
    var var_1 = vec3<f32>(1f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(f32(-1f) * -2093f)))));
    let var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(17476i, -1i) >> (arg_0.a.x % 32u), -(~1i)), _wgslsmith_dot_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.c, u_input.c.x, -53679i), vec3<i32>(2147483647i, -4033i, u_input.c.x)), -select(vec3<i32>(u_input.e, arg_0.c, -5977i), vec3<i32>(arg_0.c, u_input.e, 0i), vec3<bool>(var_0.c, false, true))), -6068i), vec3<i32>(~_wgslsmith_dot_vec2_i32(-vec2<i32>(arg_0.c, var_0.a), select(u_input.c, u_input.c, true)), 46041i, _wgslsmith_add_i32(firstLeadingBit(-18546i), u_input.e)));
    var var_3 = func_4(Struct_1(_wgslsmith_add_i32(45735i, _wgslsmith_sub_i32(4101i | arg_0.c, -2147483647i)), ~_wgslsmith_clamp_vec3_u32(firstLeadingBit(u_input.b), ~var_0.b, u_input.b), any(select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(var_0.b.x, 30u)], var_0.c), vec4<bool>(arg_0.b, true, true, false), func_2(Struct_2(vec2<u32>(var_0.e.x, u_input.a), true, -1i)).b)), vec3<f32>(var_1.x, 178f, 130f), arg_0.a), arg_0);
    let var_4 = var_0.d;
    return Struct_2(arg_0.a, func_2(arg_0).b | all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_3(vec2<bool>(var_3.b, global0[_wgslsmith_index_u32(10772u, 30u)]), global2[_wgslsmith_index_u32(0u, 24u)], vec3<u32>(4294967295u, 0u, 82262u), vec3<f32>(-1065f, 344f, 2542f)))), _wgslsmith_div_i32(func_4(Struct_1(var_3.c ^ 6588i, vec3<u32>(0u, 0u, var_0.e.x), func_2(arg_0).b, _wgslsmith_f_op_vec3_f32(vec3<f32>(704f, global1.x, global4.x) + var_0.d), vec2<u32>(var_0.b.x, arg_0.a.x)), func_4(Struct_1(var_3.c, var_0.b, global0[_wgslsmith_index_u32(var_0.b.x, 30u)], var_0.d, var_0.e), Struct_2(vec2<u32>(u_input.d, 4294967295u), false, -26452i))).c, ~func_2(Struct_2(vec2<u32>(u_input.a, u_input.d), false, var_0.a)).c));
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = _wgslsmith_clamp_vec3_u32(abs(reverseBits(max(~arg_0.b, u_input.b))), _wgslsmith_mult_vec3_u32(abs(vec3<u32>(16898u, 0u, u_input.d)), ~u_input.b), abs(abs(arg_0.b >> (u_input.b % vec3<u32>(32u)))));
    var var_1 = func_5(func_4(Struct_1(reverseBits(i32(-1i) * -2147483647i), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 0u, var_0.x), vec3<u32>(u_input.a, 0u, u_input.b.x)), global0[_wgslsmith_index_u32(~1u, 30u)], _wgslsmith_div_vec3_f32(arg_0.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-155f, global4.x, 1735f))), ~(~var_0.zx)), func_2(Struct_2(vec2<u32>(0u, u_input.b.x), true, _wgslsmith_clamp_i32(20280i, arg_0.a, arg_0.a)))));
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.d.xz + _wgslsmith_f_op_vec2_f32(arg_0.d.xy * vec2<f32>(-516f, global1.x))) + vec2<f32>(global4.x, 425f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2322f, -1883f))))));
    var_1 = Struct_2(firstTrailingBit(vec2<u32>(~(~29159u), _wgslsmith_clamp_u32(~var_1.a.x, _wgslsmith_mult_u32(24907u, 3803u), var_0.x >> (var_0.x % 32u)))), true, arg_0.a);
    var var_2 = _wgslsmith_f_op_f32(global1.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global4.x, arg_0.d.x)), global1.x));
    return _wgslsmith_mod_i32(arg_0.a, select(-12908i, i32(-1i) * -2147483647i, !global0[_wgslsmith_index_u32(16748u, 30u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 30>();
    let var_0 = _wgslsmith_mult_i32(-u_input.e, func_1(global2[_wgslsmith_index_u32(~(u_input.b.x ^ (u_input.a ^ u_input.d)), 24u)]));
    let var_1 = global2[_wgslsmith_index_u32(~u_input.d, 24u)];
    let var_2 = u_input.b.x;
    var var_3 = vec3<i32>(0i, abs(~24135i), min(_wgslsmith_mult_i32(var_0, countOneBits(0i) >> (_wgslsmith_mod_u32(var_1.e.x, var_2) % 32u)), reverseBits(_wgslsmith_add_i32(var_0, reverseBits(var_1.a)))));
    var var_4 = Struct_1(abs(func_4(Struct_1(0i, select(var_1.b, vec3<u32>(var_1.b.x, 0u, u_input.d), vec3<bool>(global0[_wgslsmith_index_u32(var_2, 30u)], var_1.c, var_1.c)), 23334i >= var_0, _wgslsmith_f_op_vec3_f32(-var_1.d), _wgslsmith_add_vec2_u32(u_input.b.xx, vec2<u32>(39945u, 20966u))), Struct_2(var_1.e, global0[_wgslsmith_index_u32(var_2 ^ var_1.b.x, 30u)], var_3.x)).c), vec3<u32>(~_wgslsmith_add_u32(8610u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_2, 4294967295u, var_2), vec4<u32>(1u, 11428u, 1u, 1u))), var_2, reverseBits(var_2) << (u_input.b.x % 32u)), true, _wgslsmith_f_op_vec3_f32(-var_1.d), u_input.b.xx);
    var var_5 = var_2;
    var var_6 = Struct_1(0i >> (var_4.b.x % 32u), var_1.b, true, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -312f)), _wgslsmith_f_op_f32(select(var_4.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)), any(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 30u)], var_4.c, true, false)))), var_1.d.x), select(_wgslsmith_add_vec2_u32(~select(vec2<u32>(11722u, 30731u), vec2<u32>(1u, var_2), global0[_wgslsmith_index_u32(73288u, 30u)]), vec2<u32>(0u, ~u_input.a)), _wgslsmith_mod_vec2_u32(abs(var_4.b.zy), vec2<u32>(_wgslsmith_mult_u32(var_4.b.x, var_2), ~1u)), all(select(select(vec3<bool>(true, var_1.c, true), vec3<bool>(var_1.c, var_4.c, true), vec3<bool>(false, var_4.c, var_4.c)), !vec3<bool>(global0[_wgslsmith_index_u32(0u, 30u)], false, false), func_5(Struct_2(u_input.b.yy, true, 23255i)).b))));
    var var_7 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(270f, global4.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(245f)), var_6.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(firstLeadingBit(11843u | ~u_input.a), reverseBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_4.b.x, var_1.b.x), vec2<u32>(var_1.b.x, var_1.e.x) ^ vec2<u32>(0u, var_6.e.x)))), select(-vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-21842i, var_0, -1i, u_input.c.x), vec4<i32>(3958i, var_4.a, 1i, var_6.a)), var_1.a << (0u % 32u), func_2(Struct_2(vec2<u32>(4294967295u, 62369u), var_4.c, 0i)).c), ~countOneBits(-vec3<i32>(var_0, var_1.a, -1i)), vec3<bool>(-var_6.a >= ~u_input.c.x, func_3(select(vec2<bool>(var_6.c, var_4.c), vec2<bool>(var_4.c, true), var_1.c), global2[_wgslsmith_index_u32(var_1.b.x, 24u)], ~u_input.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.x, 536f, global4.x))).x, global0[_wgslsmith_index_u32(var_2, 30u)])));
}

