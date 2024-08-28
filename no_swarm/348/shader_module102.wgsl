struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec4<i32>, 23> = array<vec4<i32>, 23>(vec4<i32>(-47411i, 77336i, 2147483647i, 14551i), vec4<i32>(1i, 0i, 52091i, -1i), vec4<i32>(47001i, 43942i, -1i, 2147483647i), vec4<i32>(49954i, -42435i, 1i, -51524i), vec4<i32>(-13369i, -79926i, 1i, -122981i), vec4<i32>(1i, -32192i, 0i, -185i), vec4<i32>(0i, -13408i, 1i, 9836i), vec4<i32>(-24142i, -7903i, -1i, 1i), vec4<i32>(-2166i, 1i, i32(-2147483648), 50371i), vec4<i32>(41209i, 44875i, 1i, -1i), vec4<i32>(0i, 0i, 24874i, 2147483647i), vec4<i32>(-1i, 58574i, -1i, -14484i), vec4<i32>(0i, -31958i, 44802i, 60375i), vec4<i32>(1i, 1i, 1i, -1i), vec4<i32>(1i, 0i, -26028i, -24176i), vec4<i32>(-16638i, 1414i, 1i, -31288i), vec4<i32>(-1i, -11524i, 1i, -31948i), vec4<i32>(i32(-2147483648), 47441i, i32(-2147483648), -32069i), vec4<i32>(i32(-2147483648), -17262i, -6640i, -28532i), vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, -29647i), vec4<i32>(2147483647i, -54313i, -20068i, -1i), vec4<i32>(-1i, 38145i, 0i, -41556i), vec4<i32>(-1i, 2147483647i, 1i, -70939i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: u32, arg_3: Struct_4) -> bool {
    var var_0 = countOneBits(max(_wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(arg_3.a.b, -37036i, arg_3.b.x)), ~_wgslsmith_mult_vec3_i32(vec3<i32>(arg_3.b.x, 3620i, 0i), vec3<i32>(arg_3.b.x, arg_3.b.x, 0i))), ~(~vec3<i32>(arg_1.a.b, -8850i, 2147483647i))));
    global0 = arg_3.a;
    var var_1 = arg_0.x;
    var var_2 = arg_3;
    var_2 = Struct_4(Struct_3(Struct_1(true, _wgslsmith_f_op_f32(min(global0.a.c, _wgslsmith_f_op_f32(floor(arg_3.a.a.c)))), 347f), -_wgslsmith_mult_i32(var_0.x, arg_1.a.b) << (0u % 32u)), arg_1.b);
    return !var_2.a.a.a;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<u32>) -> i32 {
    return -(~global0.b);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_4) -> Struct_3 {
    global1 = array<vec4<i32>, 23>();
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(792f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0.a.c, _wgslsmith_f_op_f32(f32(-1f) * -396f)))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(197f - global0.a.c), global0.a.b), _wgslsmith_f_op_f32(-arg_1.a.a.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -935f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.c, -2379f, arg_1.a.a.c, 775f)))) + _wgslsmith_div_vec4_f32(vec4<f32>(global0.a.b, global0.a.b, -1091f, arg_1.a.a.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.a.c, arg_1.a.a.b, 975f, global0.a.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-183f, arg_1.a.a.b, -836f, 754f) - vec4<f32>(-733f, -1000f, arg_1.a.a.b, -1955f))) - vec4<f32>(736f, _wgslsmith_f_op_f32(sign(-556f)), arg_1.a.a.c, _wgslsmith_f_op_f32(floor(-1039f))))));
    var var_1 = Struct_4(arg_1.a, vec2<i32>(func_4(Struct_2(vec2<u32>(u_input.d.x, u_input.d.x), true), Struct_2(select(vec2<u32>(0u, 13421u), vec2<u32>(u_input.d.x, u_input.d.x), vec2<bool>(arg_1.a.a.a, arg_0.x)), func_3(u_input.d, arg_1, 15014u, Struct_4(arg_1.a, vec2<i32>(u_input.e, global0.b)))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(32833u, 77448u, u_input.d.x, u_input.d.x), vec4<u32>(25946u, 135270u, u_input.d.x, u_input.d.x), vec4<u32>(20189u, 1u, 64378u, u_input.d.x))), _wgslsmith_clamp_i32(~(-28082i) & u_input.a.x, ~countOneBits(2147483647i), -31323i)));
    return Struct_3(arg_1.a.a, func_4(Struct_2(min(abs(vec2<u32>(5835u, 4294967295u)), u_input.d), any(arg_0)), Struct_2(max(~vec2<u32>(u_input.d.x, 4294967295u), _wgslsmith_clamp_vec2_u32(u_input.d, vec2<u32>(u_input.d.x, 14913u), vec2<u32>(u_input.d.x, u_input.d.x))), !(u_input.a.x >= 22376i)), ~max(vec4<u32>(0u, 40927u, u_input.d.x, 19371u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, 1u, u_input.d.x, u_input.d.x), vec4<u32>(80837u, 1u, u_input.d.x, u_input.d.x)))));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<bool>) -> i32 {
    let var_0 = u_input.d.x;
    global1 = array<vec4<i32>, 23>();
    var var_1 = Struct_4(arg_0, _wgslsmith_div_vec2_i32(-u_input.a ^ u_input.a, ~u_input.a));
    global1 = array<vec4<i32>, 23>();
    let var_2 = var_1.a.a.a;
    return u_input.a.x;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: f32) -> vec4<bool> {
    global0 = Struct_3(global0.a, _wgslsmith_mod_i32(~func_5(func_2(vec2<bool>(arg_1.a.a, global0.a.a), Struct_4(Struct_3(arg_1.a, 0i), vec2<i32>(u_input.a.x, arg_1.b))), select(vec4<bool>(true, true, false, true), vec4<bool>(true, arg_1.a.a, false, false), vec4<bool>(false, true, arg_1.a.a, true))), 2147483647i));
    global0 = arg_1;
    let var_0 = vec3<bool>(!arg_1.a.a, func_2(select(select(vec2<bool>(arg_1.a.a, true), vec2<bool>(arg_1.a.a, false), any(vec4<bool>(global0.a.a, arg_1.a.a, true, false))), select(vec2<bool>(global0.a.a, true), select(vec2<bool>(false, true), vec2<bool>(arg_1.a.a, global0.a.a), global0.a.a), vec2<bool>(true, true)), !vec2<bool>(true, global0.a.a)), Struct_4(func_2(vec2<bool>(arg_1.a.a, global0.a.a), Struct_4(Struct_3(arg_1.a, 0i), vec2<i32>(-2147483647i, u_input.c))), -arg_0)).a.a, false);
    var var_1 = Struct_4(arg_1, vec2<i32>(-1i) * -arg_0);
    global1 = array<vec4<i32>, 23>();
    return vec4<bool>(!any(vec3<bool>(arg_2 == arg_1.a.b, var_1.a.a.a, arg_1.a.a)), false, any(vec2<bool>(true, true)), 1u <= u_input.d.x);
}

fn func_6(arg_0: u32, arg_1: vec4<bool>, arg_2: bool, arg_3: u32) -> Struct_3 {
    var var_0 = 0i;
    var var_1 = Struct_4(Struct_3(func_2(!select(arg_1.xx, arg_1.xy, false), Struct_4(func_2(arg_1.zx, Struct_4(Struct_3(global0.a, global0.b), u_input.a)), select(u_input.a, u_input.a, false))).a, u_input.a.x), u_input.a);
    var var_2 = Struct_1(true, 105f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1301f) - _wgslsmith_f_op_f32(-global0.a.b))));
    let var_3 = func_2(select(!arg_1.yz, !(!vec2<bool>(false, var_2.a)), func_1(-u_input.a, Struct_3(Struct_1(true, 487f, var_2.b), -16417i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -520f))).yy), Struct_4(func_2(arg_1.zz, Struct_4(var_1.a, var_1.b)), var_1.b));
    global1 = array<vec4<i32>, 23>();
    return Struct_3(func_2(vec2<bool>(func_1(-var_1.b, var_1.a, _wgslsmith_f_op_f32(trunc(-1438f))).x, any(arg_1.xxx)), Struct_4(func_2(!arg_1.wx, Struct_4(var_3, u_input.a)), -var_1.b & vec2<i32>(7818i, var_1.b.x))).a, 13483i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(vec4<u32>(u_input.d.x, 1u, ~20385u, 17867u), ~(~abs(vec4<u32>(1u, u_input.d.x, 0u, 1u) ^ vec4<u32>(u_input.d.x, 4294967295u, 4294967295u, 0u))));
    let var_1 = any(select(select(vec3<bool>(!global0.a.a, any(vec4<bool>(global0.a.a, false, true, global0.a.a)), true), select(select(vec3<bool>(global0.a.a, false, global0.a.a), vec3<bool>(true, global0.a.a, false), global0.a.a), !vec3<bool>(global0.a.a, global0.a.a, true), vec3<bool>(false, false, false)), vec3<bool>(false, false, any(vec3<bool>(false, false, false)))), select(select(!vec3<bool>(true, global0.a.a, global0.a.a), vec3<bool>(global0.a.a, global0.a.a, true), false), vec3<bool>(any(vec4<bool>(global0.a.a, global0.a.a, false, global0.a.a)), global0.a.a, !global0.a.a), !select(vec3<bool>(global0.a.a, global0.a.a, global0.a.a), vec3<bool>(global0.a.a, global0.a.a, false), global0.a.a)), any(!(!vec2<bool>(false, global0.a.a)))));
    let var_2 = global0.a;
    let var_3 = Struct_4(func_6(~(~min(1u, 0u)), !select(vec4<bool>(var_1, true, false, var_1), func_1(u_input.a, Struct_3(global0.a, 40625i), var_2.b), true & global0.a.a), any(vec2<bool>(func_3(var_0.wx, Struct_4(Struct_3(Struct_1(true, var_2.c, global0.a.c), u_input.a.x), u_input.a), var_0.x, Struct_4(Struct_3(global0.a, -2147483647i), vec2<i32>(global0.b, global0.b))), !var_1)), 1u), vec2<i32>(global0.b, ~u_input.b));
    let var_4 = ~var_0.x;
    var_0 = select(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.d.x, 0u, ~u_input.d.x, _wgslsmith_sub_u32(4294967295u, 8751u)), ~vec4<u32>(4294967295u >> (var_4 % 32u), 8261u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_4, 16855u, 45450u, var_4), vec4<u32>(1u, 70154u, 0u, var_0.x)), ~4294967295u)), vec4<u32>(4294967295u, firstTrailingBit(var_0.x), u_input.d.x, var_4) & _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, u_input.d.x, 40016u, u_input.d.x), vec4<u32>(1u, var_0.x, u_input.d.x, 0u)), vec4<u32>(u_input.d.x, var_0.x, 4294967295u, 4294967295u) ^ vec4<u32>(4294967295u, 11831u, 1u, 44040u)), vec4<u32>(0u, var_4 >> (0u % 32u), _wgslsmith_mult_u32(1u, 4294967295u), u_input.d.x)), func_1(-vec2<i32>(u_input.a.x, 0i & u_input.e), func_2(!vec2<bool>(true, var_2.a), Struct_4(Struct_3(var_3.a.a, u_input.e), firstLeadingBit(var_3.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-873f + _wgslsmith_f_op_f32(round(var_2.c))) * -324f)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(23709u, var_0.x, 0u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d.x, 0u, var_0.x), vec3<u32>(4294967295u, var_0.x, 4294967295u)), _wgslsmith_div_vec3_u32(var_0.yyy, var_0.xzz)), vec3<u32>(77062u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, var_0.x, 0u), vec4<u32>(4294967295u, var_4, var_0.x, 7083u)), firstLeadingBit(3004u)), func_1(-u_input.a, var_3.a, -398f).zwy)), ~(~0u), vec4<i32>(1i, -27479i, u_input.b, var_3.b.x), func_2(!select(!vec2<bool>(true, var_1), vec2<bool>(true, false), vec2<bool>(true, false)), Struct_4(var_3.a, var_3.b)).a.b);
}

