struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 18>;

var<private> global1: array<u32, 29> = array<u32, 29>(1u, 21665u, 486u, 4294967295u, 4294967295u, 0u, 16065u, 458u, 4294967295u, 2082u, 0u, 4294967295u, 1u, 44231u, 0u, 5435u, 27087u, 4294967295u, 80246u, 4294967295u, 4294967295u, 0u, 1u, 23157u, 4294967295u, 4294967295u, 59425u, 0u, 4294967295u);

var<private> global2: array<Struct_1, 2>;

var<private> global3: array<i32, 24>;

var<private> global4: vec4<f32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32, arg_1: bool) -> vec3<bool> {
    var var_0 = _wgslsmith_dot_vec2_i32(-max(vec2<i32>(_wgslsmith_add_i32(43543i, global3[_wgslsmith_index_u32(u_input.a.x, 24u)]), arg_0), -vec2<i32>(8089i, 1i)), vec2<i32>(-4997i, _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_clamp_i32(1033i, global3[_wgslsmith_index_u32(75332u, 24u)], 9907i), global3[_wgslsmith_index_u32(0u, 24u)])) | -(~vec2<i32>(12579i, global3[_wgslsmith_index_u32(75086u, 24u)])));
    var var_1 = Struct_1(vec3<u32>(~(~u_input.a.x), reverseBits(~(~9550u)), max(103724u, _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), ~21180u))));
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(835f, _wgslsmith_f_op_f32(-687f - -1119f))));
    let var_3 = _wgslsmith_f_op_f32(1921f - -420f);
    let var_4 = var_1.a.x;
    return select(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(false, arg_1))), select(vec3<bool>(arg_1, arg_1, true), select(vec3<bool>(arg_1, false, true), vec3<bool>(arg_1, false, arg_1), arg_1), any(vec3<bool>(true, false, arg_1))), select(!vec3<bool>(true, arg_1, arg_1), !vec3<bool>(arg_1, arg_1, false), !arg_1)), select(!(!vec3<bool>(arg_1, arg_1, false)), vec3<bool>(false, global3[_wgslsmith_index_u32(14123u, 24u)] <= 45963i, select(arg_1, arg_1, arg_1)), !(-753f == var_3)), true), vec3<bool>(arg_1, !arg_1, true), select(!select(vec3<bool>(false, arg_1, arg_1), select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(true, arg_1, arg_1), true), select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, arg_1, arg_1), arg_1)), select(select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, arg_1, false), vec3<bool>(arg_1, arg_1, false)), !vec3<bool>(false, true, arg_1), select(select(vec3<bool>(true, false, true), vec3<bool>(arg_1, arg_1, true), vec3<bool>(false, false, true)), select(vec3<bool>(arg_1, false, false), vec3<bool>(true, false, true), arg_1), arg_1)), vec3<bool>(arg_1, true, !(false || arg_1))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec4<i32>) -> u32 {
    var var_0 = global4.x;
    global0 = array<vec4<i32>, 18>();
    var var_1 = reverseBits(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(global3[_wgslsmith_index_u32(27531u, 24u)], -2147483647i, -2147483647i & arg_2.x, ~47349i)), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(arg_2.x, arg_2.x, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], 24u)], arg_2.x), arg_2, global0[_wgslsmith_index_u32(~u_input.a.x, 18u)]), ~arg_2, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(85861u, 29u)], 18u)])));
    var var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(arg_2.x, _wgslsmith_add_i32(global3[_wgslsmith_index_u32(1u, 24u)], 2147483647i)), arg_2.x, 2147483647i) | _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(-17688i, 1i, arg_2.x), vec3<i32>(arg_2.x, 19678i, 17816i) | arg_2.xyy), -firstTrailingBit(vec3<i32>(22286i, arg_2.x, 1i))), ~vec3<i32>(~arg_2.x, 1i, global3[_wgslsmith_index_u32(~(~66325u), 24u)]));
    var var_3 = min(vec4<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 24u)], abs(reverseBits(arg_2.x << (arg_0.b.a.x % 32u))), min(arg_2.x, 0i), _wgslsmith_add_i32(countOneBits(_wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(u_input.a.x, 24u)], 9678i, global3[_wgslsmith_index_u32(74139u, 24u)])), _wgslsmith_dot_vec4_i32(arg_2, countOneBits(arg_2)))), vec4<i32>(0i, arg_2.x, arg_2.x, -39088i));
    return 1u;
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: f32, arg_3: Struct_2) -> u32 {
    global1 = array<u32, 29>();
    global2 = array<Struct_1, 2>();
    global0 = array<vec4<i32>, 18>();
    let var_0 = arg_0;
    var var_1 = 42062u;
    return func_4(Struct_2(var_0.a, Struct_1(u_input.a.yxy), false, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(select(arg_3.d.a, arg_3.b.a, vec3<bool>(arg_0.c, false, false)), vec3<u32>(u_input.a.x, var_0.b.a.x, arg_3.d.a.x) << (u_input.a.zxx % vec3<u32>(32u))), max(arg_0.d.a, u_input.a.wwy)), 2u)]), func_3((_wgslsmith_mod_i32(-78706i, global3[_wgslsmith_index_u32(u_input.a.x, 24u)]) ^ ~(-19139i)) >> (var_0.d.a.x % 32u), true), max(~_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, global3[_wgslsmith_index_u32(0u, 24u)], global3[_wgslsmith_index_u32(4294967295u, 24u)], 10112i), vec4<i32>(global3[_wgslsmith_index_u32(1u, 24u)], -2147483647i, global3[_wgslsmith_index_u32(arg_0.b.a.x, 24u)], global3[_wgslsmith_index_u32(1u, 24u)])) & global0[_wgslsmith_index_u32(1u << ((12350u | arg_1) % 32u), 18u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(min(~0u, _wgslsmith_div_u32(12888u, u_input.a.x)), ~global1[_wgslsmith_index_u32(arg_0.d.a.x, 29u)] ^ _wgslsmith_dot_vec3_u32(u_input.a.zxz, arg_3.b.a)), 18u)]));
}

fn func_1() -> f32 {
    var var_0 = !(!select(vec4<bool>(true, all(vec4<bool>(false, true, true, false)), true, false), vec4<bool>(true, false, true, all(vec2<bool>(true, false))), vec4<bool>(true, true, true, true)));
    var var_1 = !var_0.zxz;
    let var_2 = true;
    let var_3 = global3[_wgslsmith_index_u32(0u, 24u)];
    var var_4 = Struct_1(max(vec3<u32>(54641u, 0u, _wgslsmith_div_u32(func_2(Struct_2(false, Struct_1(u_input.a.xzz), false, global2[_wgslsmith_index_u32(4294967295u, 2u)]), 12092u, -242f, Struct_2(false, Struct_1(u_input.a.zyy), true, Struct_1(vec3<u32>(1u, 0u, 53810u)))), _wgslsmith_dot_vec3_u32(vec3<u32>(24479u, 4294967295u, 18165u), vec3<u32>(12112u, global1[_wgslsmith_index_u32(u_input.a.x, 29u)], 4294967295u)))), max(u_input.a.xwx, abs(~vec3<u32>(13656u, u_input.a.x, u_input.a.x)))));
    return global4.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1()))) < -611f, func_3(global3[_wgslsmith_index_u32(~(~(4294967295u >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(43015u, 29u)], 29u)] % 32u))), 24u)], -1652f > global4.x).x, false);
    var var_1 = Struct_1(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x), 4294967295u, func_2(Struct_2(false, Struct_1(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)), var_0.x, global2[_wgslsmith_index_u32(0u, 2u)]), global1[_wgslsmith_index_u32(u_input.a.x, 29u)], global4.x, Struct_2(var_0.x, Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, 0u)), var_0.x, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], 2u)])), _wgslsmith_mult_u32(u_input.a.x, 53272u)), u_input.a), u_input.a.x, global1[_wgslsmith_index_u32(0u, 29u)]));
    var var_2 = -244f;
    let var_3 = _wgslsmith_f_op_f32(-1106f + _wgslsmith_f_op_f32(-global4.x));
    let var_4 = Struct_1(vec3<u32>(func_2(Struct_2(any(vec4<bool>(true, var_0.x, false, var_0.x)), Struct_1(vec3<u32>(60257u, 38514u, 72981u)), true, global2[_wgslsmith_index_u32(~var_1.a.x, 2u)]), ~global1[_wgslsmith_index_u32(var_1.a.x, 29u)] & min(109705u, u_input.a.x), 318f, Struct_2(!var_0.x, Struct_1(u_input.a.wyx), var_0.x, global2[_wgslsmith_index_u32(~u_input.a.x, 2u)])), countOneBits(~_wgslsmith_div_u32(0u, 4082u)), _wgslsmith_add_u32(~func_2(Struct_2(true, Struct_1(vec3<u32>(var_1.a.x, global1[_wgslsmith_index_u32(18128u, 29u)], var_1.a.x)), var_0.x, Struct_1(var_1.a)), 0u, var_3, Struct_2(true, Struct_1(vec3<u32>(u_input.a.x, var_1.a.x, global1[_wgslsmith_index_u32(0u, 29u)])), var_0.x, Struct_1(vec3<u32>(1u, u_input.a.x, u_input.a.x)))), var_1.a.x)));
    global1 = array<u32, 29>();
    let var_5 = vec4<i32>(~(~_wgslsmith_clamp_i32(-3378i, -17954i, global3[_wgslsmith_index_u32(u_input.a.x, 24u)])), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_1.a, ~var_1.a), 24u)], global3[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1.a.x, reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, u_input.a.x, var_1.a.x), vec4<u32>(4294967295u, var_4.a.x, u_input.a.x, u_input.a.x)))), 24u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 29u)], 24u)]) & -vec4<i32>(_wgslsmith_div_i32(global3[_wgslsmith_index_u32(78487u, 24u)], -1i), -(i32(-1i) * -1i), global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 57206u, 1u), 29u)], 24u)] | (global3[_wgslsmith_index_u32(var_1.a.x, 24u)] | global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 29u)], 24u)]), ~(~1i));
    var var_6 = var_5.x;
    var var_7 = Struct_2(all(vec4<bool>(!var_0.x | true, true, _wgslsmith_div_f32(var_3, var_3) > _wgslsmith_f_op_f32(floor(1000f)), true)), Struct_1(_wgslsmith_mod_vec3_u32(select(var_4.a << (u_input.a.zzy % vec3<u32>(32u)), ~vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(11577u, 29u)], 1u), true), firstLeadingBit(vec3<u32>(var_1.a.x, 3465u, 0u)))), true, var_4);
    let x = u_input.a;
    s_output = StorageBuffer(max(select(-2147483647i, min(var_5.x, var_5.x), 156i <= (-62571i >> (var_1.a.x % 32u))), _wgslsmith_sub_i32(_wgslsmith_div_i32(global3[_wgslsmith_index_u32(~var_4.a.x, 24u)], var_5.x << (1u % 32u)), var_5.x)), 24741i);
}

