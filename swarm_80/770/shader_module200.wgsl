struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_1 = Struct_1(vec2<i32>(1i, -33580i), i32(-2147483648));

var<private> global2: array<vec2<u32>, 25>;

var<private> global3: array<vec4<u32>, 21> = array<vec4<u32>, 21>(vec4<u32>(4294967295u, 4294967295u, 54912u, 20559u), vec4<u32>(1u, 35837u, 1u, 40497u), vec4<u32>(0u, 20260u, 23315u, 52377u), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(13013u, 35205u, 34114u, 65919u), vec4<u32>(1u, 1u, 1u, 41361u), vec4<u32>(37507u, 1u, 0u, 1u), vec4<u32>(25649u, 10159u, 18099u, 23008u), vec4<u32>(1u, 66320u, 14131u, 4294967295u), vec4<u32>(14545u, 0u, 36413u, 9605u), vec4<u32>(0u, 44141u, 4294967295u, 0u), vec4<u32>(6892u, 4294967295u, 12719u, 31505u), vec4<u32>(40254u, 28751u, 4294967295u, 4294967295u), vec4<u32>(7729u, 48023u, 4294967295u, 4294967295u), vec4<u32>(62913u, 1u, 570u, 62055u), vec4<u32>(4084u, 3361u, 1u, 1u), vec4<u32>(14149u, 4294967295u, 1u, 61716u), vec4<u32>(4294967295u, 54493u, 23478u, 34154u), vec4<u32>(20030u, 26938u, 4294967295u, 90946u), vec4<u32>(11089u, 4294967295u, 3002u, 77592u), vec4<u32>(16957u, 48252u, 13893u, 9571u));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> i32 {
    let var_0 = Struct_1(abs(-arg_3.a), arg_3.b);
    var var_1 = false;
    let var_2 = !(!(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), true))));
    let var_3 = Struct_1(var_0.a, -_wgslsmith_mult_i32(-31847i, u_input.a) & 54985i);
    global0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, global0.x, 766f, -1305f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, arg_2, global0.x, global0.x), vec4<f32>(-1473f, global0.x, global0.x, 530f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, -1324f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(344f, arg_2, arg_2, -578f))) * vec4<f32>(global0.x, arg_2, arg_2, -392f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-710f, global0.x, 855f, -1639f) + vec4<f32>(arg_2, -219f, -209f, 1736f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -731f, -1197f, 1584f))))))));
    return -1i;
}

fn func_2(arg_0: bool, arg_1: f32) -> bool {
    global1 = Struct_1(select(vec2<i32>(~7294i, ~global1.a.x) << (((vec2<u32>(u_input.b, 1u) << (global2[_wgslsmith_index_u32(u_input.c.x, 25u)] % vec2<u32>(32u))) ^ vec2<u32>(u_input.b, 4294967295u)) % vec2<u32>(32u)), global1.a, !(!(u_input.b >= 43204u))), u_input.a);
    global1 = Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(-global1.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, global1.b), global1.a & vec2<i32>(global1.a.x, global1.b))), _wgslsmith_clamp_vec2_i32(-select(global1.a, global1.a, vec2<bool>(arg_0, true)), vec2<i32>(~1i, firstLeadingBit(u_input.a)), ~vec2<i32>(u_input.a, 28051i))), min(u_input.a | -7076i, _wgslsmith_mod_i32(-9289i, (i32(-1i) * -39579i) | global1.b)));
    var var_0 = ~firstTrailingBit(~u_input.c.x);
    let var_1 = Struct_1(_wgslsmith_clamp_vec2_i32(global1.a, global1.a | vec2<i32>(countOneBits(-32647i), ~u_input.a), vec2<i32>(_wgslsmith_mult_i32(u_input.a, ~u_input.a), -1i)), ~(-2147483647i & ~(-u_input.a)));
    var var_2 = ~u_input.c;
    return 1i < ~func_3(var_1, Struct_1(global1.a, -var_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), Struct_1(~vec2<i32>(u_input.a, u_input.a), -global1.a.x));
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1743f, -1700f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), arg_0, _wgslsmith_f_op_f32(-global0.x))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.zw) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -103f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 764f)))))));
    var var_2 = select(vec3<bool>(abs(firstTrailingBit(u_input.b)) >= reverseBits(u_input.b & u_input.c.x), true, !(!(u_input.b < u_input.b))), !vec3<bool>(func_2(22683u > u_input.b, var_1.x), false, 2147483647i < u_input.a), !select(true, false, true));
    return Struct_1(~vec2<i32>(16620i, select(1i, i32(-1i) * -1i, 83009u < u_input.c.x)), 1i);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(428f, _wgslsmith_div_f32(469f, global0.x), 1511f, global0.x) - vec4<f32>(_wgslsmith_div_f32(global0.x, -1000f), global0.x, global0.x, 1f))));
    global0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), -127f, _wgslsmith_f_op_f32(floor(-747f)));
    var var_0 = 172f;
    let var_1 = Struct_1(func_1(global0.x).a, -1i);
    global3 = array<vec4<u32>, 21>();
    return Struct_1(_wgslsmith_add_vec2_i32(select(arg_0.a, vec2<i32>(-3141i, -12064i), arg_2) >> (vec2<u32>(0u, _wgslsmith_add_u32(u_input.c.x, u_input.c.x)) % vec2<u32>(32u)), arg_0.a), -12168i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(-2211f), Struct_1(select(global1.a ^ (global1.a ^ vec2<i32>(-1i, -1i)), global1.a & vec2<i32>(-22470i, 2267i), vec2<bool>(true, true)), select(_wgslsmith_clamp_i32(global1.b, u_input.a, global1.b), u_input.a, !select(false, false, true))), true, Struct_1(firstTrailingBit(select(_wgslsmith_mult_vec2_i32(vec2<i32>(67755i, 13580i), vec2<i32>(21091i, global1.b)), vec2<i32>(global1.b, -1i), any(vec3<bool>(false, true, false)))), select(u_input.a, _wgslsmith_clamp_i32(u_input.a, global1.b, 2147483647i), false) << (select(~0u, u_input.c.x, any(vec2<bool>(false, true))) % 32u)));
    let var_1 = func_4(func_1(global0.x), Struct_1(func_4(Struct_1(min(global1.a, var_0.a), var_0.a.x), func_1(_wgslsmith_f_op_f32(1000f - global0.x)), true, Struct_1(var_0.a, _wgslsmith_mult_i32(var_0.a.x, -1i))).a, global1.a.x), !all(vec3<bool>(true, true, true)) && true, Struct_1(firstTrailingBit(vec2<i32>(-1i, u_input.a)), global1.b));
    var var_2 = Struct_1(vec2<i32>(u_input.a, 1i), -2147483647i);
    global1 = func_4(Struct_1(global1.a, _wgslsmith_sub_i32(-33588i, var_1.b)), var_1, true, Struct_1(abs(global1.a), ~var_0.a.x));
    global2 = array<vec2<u32>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(max(vec2<u32>(u_input.c.x, u_input.b >> (u_input.b % 32u)), _wgslsmith_sub_vec2_u32(~vec2<u32>(1u, 17982u), countOneBits(vec2<u32>(u_input.c.x, 48381u)))) ^ ~reverseBits(~vec2<u32>(12303u, u_input.c.x)), reverseBits(-1i), vec2<i32>(-1i) * -func_4(var_1, func_1(463f), false, func_1(global0.x)).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - global0.x)), firstTrailingBit(max(countOneBits(0u), 4294967295u)));
}

