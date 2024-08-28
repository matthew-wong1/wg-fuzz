struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: bool,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: u32,
    d: vec3<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(-43842i, Struct_1(vec3<bool>(true, false, false), vec3<i32>(-40152i, 0i, 2147483647i), true, false, true), -7447i, vec4<f32>(-1010f, -1000f, 1000f, -990f)), Struct_2(5233i, Struct_1(vec3<bool>(false, true, false), vec3<i32>(1i, 0i, i32(-2147483648)), true, false, false), -23848i, vec4<f32>(-571f, -801f, 211f, 2206f)), Struct_2(30710i, Struct_1(vec3<bool>(true, true, true), vec3<i32>(2147483647i, -3049i, 2147483647i), false, true, true), -45063i, vec4<f32>(539f, -2092f, 455f, -629f)), Struct_2(27343i, Struct_1(vec3<bool>(false, true, true), vec3<i32>(0i, -20761i, 2147483647i), true, true, false), -44342i, vec4<f32>(636f, 982f, -929f, 1825f)), Struct_2(-93793i, Struct_1(vec3<bool>(false, true, false), vec3<i32>(25849i, 31533i, -11858i), false, true, false), i32(-2147483648), vec4<f32>(556f, -2166f, -572f, 2497f)), Struct_2(24030i, Struct_1(vec3<bool>(true, true, true), vec3<i32>(1i, 17620i, 26282i), true, false, true), -1i, vec4<f32>(-103f, 396f, 232f, 541f)), Struct_2(1i, Struct_1(vec3<bool>(false, true, true), vec3<i32>(i32(-2147483648), 2147483647i, 746i), true, true, true), 2147483647i, vec4<f32>(233f, 1000f, 446f, -735f)), Struct_2(2147483647i, Struct_1(vec3<bool>(false, true, true), vec3<i32>(-1i, 0i, -18754i), false, false, false), i32(-2147483648), vec4<f32>(128f, 100f, 2405f, 1000f)), Struct_2(2147483647i, Struct_1(vec3<bool>(true, false, true), vec3<i32>(11644i, 25335i, -528i), true, true, true), 0i, vec4<f32>(-170f, -243f, 2880f, 1056f)), Struct_2(2147483647i, Struct_1(vec3<bool>(true, false, true), vec3<i32>(1i, 1i, 1i), true, false, true), -1i, vec4<f32>(176f, 285f, 1167f, -199f)), Struct_2(-46731i, Struct_1(vec3<bool>(true, false, false), vec3<i32>(30303i, 2147483647i, -1i), false, false, true), 0i, vec4<f32>(-170f, 365f, -1110f, 822f)), Struct_2(-92634i, Struct_1(vec3<bool>(false, false, true), vec3<i32>(42810i, 7292i, -17544i), true, false, true), -4557i, vec4<f32>(-276f, 1564f, -1551f, -507f)), Struct_2(-12307i, Struct_1(vec3<bool>(false, true, false), vec3<i32>(2147483647i, 9168i, 12569i), false, true, false), 1i, vec4<f32>(-778f, -454f, 354f, -1220f)), Struct_2(-19961i, Struct_1(vec3<bool>(false, true, true), vec3<i32>(1i, 0i, 2147483647i), false, true, false), -73547i, vec4<f32>(1608f, 429f, -440f, -233f)), Struct_2(-1i, Struct_1(vec3<bool>(true, false, true), vec3<i32>(58112i, -39217i, 13240i), true, true, true), i32(-2147483648), vec4<f32>(164f, -815f, -167f, -742f)), Struct_2(-1i, Struct_1(vec3<bool>(false, true, true), vec3<i32>(1i, 17897i, 36389i), true, false, false), 16655i, vec4<f32>(120f, 1605f, 969f, 938f)), Struct_2(i32(-2147483648), Struct_1(vec3<bool>(true, false, false), vec3<i32>(i32(-2147483648), -1i, -16447i), true, true, false), 1i, vec4<f32>(1971f, -3079f, 1039f, 1049f)), Struct_2(0i, Struct_1(vec3<bool>(true, true, false), vec3<i32>(75141i, -50279i, -228i), true, false, true), 1i, vec4<f32>(1418f, 789f, -3291f, -772f)), Struct_2(i32(-2147483648), Struct_1(vec3<bool>(true, true, true), vec3<i32>(13523i, 34455i, 0i), true, true, true), -44859i, vec4<f32>(-201f, -2508f, 177f, 963f)), Struct_2(0i, Struct_1(vec3<bool>(true, false, true), vec3<i32>(21354i, 0i, 1i), false, false, true), 39593i, vec4<f32>(1838f, 155f, -297f, 1000f)), Struct_2(0i, Struct_1(vec3<bool>(true, true, true), vec3<i32>(i32(-2147483648), 0i, -14776i), true, false, true), 1i, vec4<f32>(1000f, 643f, 598f, -1000f)), Struct_2(0i, Struct_1(vec3<bool>(true, true, false), vec3<i32>(40375i, 40319i, 30126i), false, true, false), -25023i, vec4<f32>(2458f, -496f, -1000f, 1010f)), Struct_2(-839i, Struct_1(vec3<bool>(false, false, false), vec3<i32>(-30300i, 1i, -1i), true, true, true), 2147483647i, vec4<f32>(-1290f, 1237f, -337f, 1646f)), Struct_2(1i, Struct_1(vec3<bool>(true, false, false), vec3<i32>(i32(-2147483648), -1i, 0i), true, false, false), -23608i, vec4<f32>(-814f, -274f, -552f, -402f)), Struct_2(i32(-2147483648), Struct_1(vec3<bool>(true, false, false), vec3<i32>(0i, -24302i, -21644i), false, true, false), 2147483647i, vec4<f32>(-338f, -1917f, 573f, -340f)), Struct_2(-43329i, Struct_1(vec3<bool>(false, true, false), vec3<i32>(12895i, 2147483647i, -22531i), true, true, false), -79441i, vec4<f32>(600f, 1190f, -563f, -1194f)), Struct_2(6877i, Struct_1(vec3<bool>(false, true, false), vec3<i32>(i32(-2147483648), -326i, -35288i), false, false, false), 13187i, vec4<f32>(-683f, -1000f, -1267f, -1033f)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_5) -> vec3<bool> {
    let var_0 = Struct_3(~max(~4294967295u, arg_1.c << (arg_1.c % 32u)), ~28079u, arg_1.e, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - 1531f), arg_0.x)));
    let var_1 = Struct_1(select(!vec3<bool>(var_0.c.b.c, true, true), var_0.c.b.a, vec3<bool>(var_0.c.b.e, 1082f != _wgslsmith_f_op_f32(min(var_0.d, 181f)), all(var_0.c.b.a.xy))), -(~reverseBits(var_0.c.b.b & arg_1.b.b.b)), false, true, any(select(!(!vec4<bool>(false, arg_1.b.b.c, true, false)), select(vec4<bool>(var_0.c.b.d, var_0.c.b.e, false, var_0.c.b.d), !vec4<bool>(arg_1.e.b.d, arg_1.e.b.a.x, arg_1.b.b.d, true), true), select(!vec4<bool>(true, false, arg_1.e.b.e, arg_1.e.b.a.x), vec4<bool>(var_0.c.b.d, var_0.c.b.a.x, false, var_0.c.b.d), false))));
    let var_2 = _wgslsmith_div_u32(var_0.a, 25706u | min(277u, arg_1.c));
    global1 = array<Struct_2, 27>();
    var var_3 = var_0;
    return select(select(var_1.a, select(vec3<bool>(select(var_3.c.b.c, false, var_0.c.b.a.x), arg_1.b.b.c || var_1.e, var_3.c.b.a.x), var_0.c.b.a, (var_0.c.b.b.x != var_1.b.x) && any(vec4<bool>(true, true, var_0.c.b.c, false))), any(select(select(vec2<bool>(var_1.e, true), arg_1.e.b.a.xx, false), select(arg_1.b.b.a.xz, vec2<bool>(false, var_3.c.b.a.x), arg_1.e.b.a.xx), vec2<bool>(var_1.c, var_0.c.b.d)))), !vec3<bool>(arg_1.e.b.e, false, any(!var_3.c.b.a)), var_0.c.b.a);
}

fn func_2(arg_0: Struct_5) -> vec4<i32> {
    var var_0 = arg_0.b.b.e;
    global0 = arg_0.c;
    var var_1 = Struct_1(func_3(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.e.d.x), arg_0.b.d.x, 617f, arg_0.b.d.x), Struct_5(_wgslsmith_dot_vec2_i32(arg_0.e.b.b.zz, arg_0.b.b.b.yx) << (arg_0.c % 32u), Struct_2(u_input.a, arg_0.e.b, ~u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(221f, arg_0.b.d.x, arg_0.e.d.x, arg_0.d.x))), 1u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.e.d.x, arg_0.d.x, arg_0.e.d.x)), arg_0.b)), ~vec3<i32>(abs(_wgslsmith_add_i32(-33346i, arg_0.e.c)), _wgslsmith_mod_i32(1i, _wgslsmith_mult_i32(-64101i, u_input.a)), _wgslsmith_div_i32(select(arg_0.e.b.b.x, arg_0.e.c, arg_0.e.b.e), 1i)), false, -arg_0.b.b.b.x < firstTrailingBit(u_input.a), arg_0.e.b.d);
    return vec4<i32>(-8088i, arg_0.a, -49381i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.a, var_1.b.x, 2147483647i), vec3<i32>(2147483647i, u_input.a, 40550i), false) ^ vec3<i32>(22405i, -16964i, -2147483647i), select(max(vec3<i32>(43954i, -1i, 31751i), arg_0.e.b.b), vec3<i32>(1i, -2147483647i, arg_0.b.b.b.x), !vec3<bool>(false, false, arg_0.b.b.e)))) & _wgslsmith_sub_vec4_i32(~_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(u_input.a, 2147483647i, arg_0.e.a, -31664i)), vec4<i32>(32020i, var_1.b.x, 1026i, var_1.b.x)), ~_wgslsmith_div_vec4_i32(vec4<i32>(var_1.b.x, u_input.a, var_1.b.x, -2147483647i), vec4<i32>(arg_0.b.c, var_1.b.x, arg_0.b.a, 2147483647i)) & ~(vec4<i32>(-1i, u_input.a, arg_0.a, arg_0.a) >> (vec4<u32>(arg_0.c, arg_0.c, 4294967295u, 4294967295u) % vec4<u32>(32u))));
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_4) -> bool {
    let var_0 = abs(~(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(67168i, 0i), vec2<i32>(2125i, 2638i)), arg_2.a.b.b.x, ~0i, 0i) ^ func_2(Struct_5(-13163i, global1[_wgslsmith_index_u32(18786u, 27u)], arg_0.x, vec3<f32>(-539f, 1000f, 347f), global1[_wgslsmith_index_u32(arg_0.x, 27u)]))));
    global0 = arg_0.x;
    var var_1 = Struct_2(select(-48346i, u_input.a, !all(vec3<bool>(arg_2.a.b.a.x, arg_1, false))), arg_2.a.b, -_wgslsmith_sub_i32(0i, _wgslsmith_mod_i32(~arg_2.a.c, -u_input.a)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(688f, arg_2.a.d.x, _wgslsmith_f_op_f32(f32(-1f) * -895f), -2107f), arg_2.a.d)));
    var_1 = Struct_2(max(_wgslsmith_dot_vec4_i32(min(vec4<i32>(5077i, -6280i, var_0.x, 63817i), var_0), vec4<i32>(-1i, func_2(Struct_5(arg_2.a.a, global1[_wgslsmith_index_u32(arg_0.x, 27u)], 4294967295u, vec3<f32>(-1000f, -757f, -752f), Struct_2(2147483647i, Struct_1(var_1.b.a, vec3<i32>(2147483647i, arg_2.a.a, var_1.b.b.x), false, arg_1, arg_1), 53028i, var_1.d))).x, var_1.b.b.x ^ u_input.a, 0i)), var_1.b.b.x), arg_2.a.b, 1i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1034f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1034f, 1282f) * arg_2.a.d.x), -534f)));
    var_1 = arg_2.a;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 27>();
    var var_0 = Struct_2(~(-firstLeadingBit(-2147483647i)), Struct_1(vec3<bool>(select(true, false, func_1(vec2<u32>(60913u, 1u), false, Struct_4(global1[_wgslsmith_index_u32(6718u, 27u)]))), true, select(true, true, false) & true), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, -4777i, 0i), vec3<i32>(countOneBits(-9421i), 2147483647i, u_input.a)), !func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1816f, -2221f, 258f, 358f)), Struct_5(-19063i, Struct_2(98346i, Struct_1(vec3<bool>(false, true, true), vec3<i32>(u_input.a, 11019i, 27520i), true, true, false), u_input.a, vec4<f32>(-407f, -123f, -1000f, -1396f)), 33663u, vec3<f32>(-1602f, -569f, 104f), global1[_wgslsmith_index_u32(13493u, 27u)])).x, true, any(vec3<bool>(all(vec2<bool>(false, true)), all(vec4<bool>(false, false, false, true)), true))), ~(~(-1i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(159f, 568f, -696f, -2029f), vec4<f32>(327f, -685f, -1170f, -1535f), false)))) - vec4<f32>(1f, 1f, 1f, 1f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(max(-u_input.a, u_input.a) >> (max(_wgslsmith_mult_u32(45043u, 1u), 1u) % 32u), reverseBits(var_0.c), 2147483647i, var_0.c), _wgslsmith_clamp_u32(44533u, _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 0u, 118135u), ~vec3<u32>(1u, 1u, 1u)), 1u), ~vec4<u32>(_wgslsmith_mult_u32(~4294967295u, _wgslsmith_div_u32(1614u, 87914u)), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(36u, 19485u, 1u, 13738u), vec4<u32>(3754u, 108573u, 4294967295u, 3052u))), _wgslsmith_dot_vec3_u32(vec3<u32>(62914u, 1u, 0u), firstLeadingBit(vec3<u32>(8301u, 19621u, 60896u))), ~(~16688u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.d.x, _wgslsmith_f_op_f32(-var_0.d.x))))));
}

