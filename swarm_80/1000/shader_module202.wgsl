struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_3) -> vec3<bool> {
    global0 = abs(vec4<i32>(global0.x, select(66106i << (u_input.b.x % 32u), ~global0.x, true), select(global0.x | 57367i, -global0.x, false), global0.x) << (u_input.b % vec4<u32>(32u)));
    var var_0 = arg_0;
    let var_1 = _wgslsmith_dot_vec4_u32(~u_input.b, _wgslsmith_add_vec4_u32((vec4<u32>(38525u, 6440u, arg_0.b, var_0.b) & _wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(1u, arg_0.b, var_0.b, u_input.a))) | ~(~u_input.b), u_input.b));
    global0 = _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(global0.x, global0.x, global0.x, global0.x)), _wgslsmith_div_vec4_i32(~vec4<i32>(global0.x, 0i, -1i, 0i), vec4<i32>(global0.x, global0.x, global0.x, global0.x)), vec4<i32>(34536i, -global0.x, -6140i, global0.x << (var_0.b % 32u))), min(firstTrailingBit(min(vec4<i32>(13076i, global0.x, 1i, global0.x), vec4<i32>(global0.x, -39791i, -1560i, global0.x))), ~vec4<i32>(global0.x, global0.x, 0i, -2147483647i) ^ vec4<i32>(global0.x, global0.x, 2147483647i, -2147483647i)), countOneBits(~vec4<i32>(51412i, global0.x, -15158i, global0.x))), -(~_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.x, 45672i, global0.x, global0.x), vec4<i32>(-30541i, global0.x, 3932i, 0i)), _wgslsmith_div_vec4_i32(vec4<i32>(global0.x, global0.x, global0.x, -25430i), vec4<i32>(global0.x, -2147483647i, -1i, global0.x)))));
    global0 = select(abs(vec4<i32>(select(-39389i << (u_input.a % 32u), abs(global0.x), true), -8174i, _wgslsmith_mod_i32(min(1i, global0.x), abs(global0.x)), global0.x)), countOneBits(firstTrailingBit(max(_wgslsmith_div_vec4_i32(vec4<i32>(1i, global0.x, 19596i, global0.x), vec4<i32>(-36523i, -2147483647i, global0.x, 12335i)), _wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, -1i, 12008i, -2147483647i), vec4<i32>(-12702i, -2147483647i, global0.x, global0.x))))), all(vec4<bool>(false && arg_0.a, !var_0.a, any(select(vec3<bool>(false, true, false), vec3<bool>(arg_0.a, true, true), var_0.a)), var_0.a && (var_0.a || arg_0.a))));
    return select(select(!(!(!vec3<bool>(arg_0.a, arg_0.a, true))), select(vec3<bool>(!var_0.a, select(true, true, var_0.a), true), select(!vec3<bool>(arg_0.a, false, arg_0.a), select(vec3<bool>(true, true, true), vec3<bool>(arg_0.a, true, var_0.a), vec3<bool>(false, var_0.a, var_0.a)), false), var_0.a | false), arg_0.a), vec3<bool>(true, u_input.a <= ~(~u_input.a), any(vec3<bool>(true, true, true))), select(vec3<bool>(true || arg_0.a, any(!vec4<bool>(var_0.a, false, var_0.a, arg_0.a)), arg_0.a), !(!(!vec3<bool>(arg_0.a, false, false))), !vec3<bool>(arg_0.a, true, any(vec2<bool>(true, false)))));
}

fn func_2() -> Struct_2 {
    let var_0 = vec4<bool>(true, true, true, all(!select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), func_3(Struct_3(true, 0u)))));
    global0 = ~(select(min(-vec4<i32>(global0.x, -2147483647i, global0.x, 6635i), vec4<i32>(252i, global0.x, -19866i, global0.x)), -vec4<i32>(global0.x, global0.x, global0.x, 2147483647i), select(select(vec4<bool>(true, var_0.x, true, false), var_0, var_0.x), !var_0, var_0.x)) | ~countOneBits(vec4<i32>(global0.x, global0.x, global0.x, -2615i) ^ vec4<i32>(-4030i, -51173i, 42320i, global0.x)));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -714f);
    var var_2 = -918f;
    global0 = vec4<i32>(1i, global0.x, max(~global0.x, ~(-(~global0.x))), 0i);
    return Struct_2(!all(select(select(vec4<bool>(var_0.x, false, true, true), vec4<bool>(false, true, false, var_0.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x)), vec4<bool>(var_0.x, true, true, var_0.x), !var_0.x)));
}

fn func_4(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_2) -> vec3<i32> {
    global0 = select((firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, arg_0, arg_1.x, 1i), vec4<i32>(global0.x, arg_1.x, global0.x, -44229i))) ^ _wgslsmith_mod_vec4_i32(abs(vec4<i32>(arg_0, global0.x, 1i, arg_1.x)), vec4<i32>(0i, 20050i, 40197i, global0.x) ^ vec4<i32>(global0.x, arg_0, arg_0, arg_1.x))) | ~(-vec4<i32>(arg_1.x, arg_1.x, 2147483647i, global0.x)), vec4<i32>(-2147483647i, -1i, arg_1.x, ~global0.x), !arg_2.a);
    let var_0 = Struct_3(arg_2.a, 4294967295u);
    var var_1 = Struct_3(arg_2.a, 1u);
    var var_2 = ~_wgslsmith_dot_vec2_i32(global0.ww, reverseBits(global0.xw));
    var var_3 = ~abs(~(vec2<u32>(var_0.b, 7250u) & u_input.b.xz));
    return vec3<i32>(_wgslsmith_clamp_i32(arg_1.x, -18379i, ~global0.x), ~arg_1.x, firstLeadingBit(global0.x));
}

fn func_1(arg_0: u32) -> bool {
    var var_0 = firstTrailingBit(~_wgslsmith_dot_vec3_i32(func_4(global0.x, vec2<i32>(-2147483647i, 12570i), func_2()), vec3<i32>(_wgslsmith_add_i32(-1i, global0.x), i32(-1i) * -2147483647i, i32(-1i) * -100288i)));
    var_0 = ~min(_wgslsmith_div_i32(global0.x, 1i), firstLeadingBit(_wgslsmith_dot_vec3_i32(~vec3<i32>(global0.x, 13758i, 2147483647i), ~global0.zxx)));
    global0 = min(countOneBits(select(~(-vec4<i32>(global0.x, global0.x, 58195i, global0.x)), vec4<i32>(28309i, -29597i, -33321i, -7371i) << (u_input.b % vec4<u32>(32u)), vec4<bool>(true, true, true, true))), vec4<i32>(_wgslsmith_clamp_i32(~1i, ~(-2147483647i), _wgslsmith_mod_i32(global0.x, global0.x) | global0.x), global0.x, func_4(347i, global0.yw, func_2()).x, -6656i));
    var var_1 = !(!(!vec4<bool>(true, func_3(Struct_3(false, 27760u)).x, true, false)));
    var var_2 = Struct_2(!(366f <= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-494f))))));
    return 0u == u_input.b.x;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(arg_0.a, all(!(!vec2<bool>(arg_0.b, true))), -(~(~arg_0.c)), _wgslsmith_div_f32(-523f, 580f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1165f, arg_0.e))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.d, -1098f))))));
    var var_1 = -1497f;
    global0 = -firstTrailingBit(countOneBits(~vec4<i32>(global0.x, -1565i, -4103i, arg_0.c.x)));
    var var_2 = vec4<i32>(func_4(abs(var_0.c.x), firstLeadingBit(vec2<i32>(arg_0.c.x, arg_0.c.x)), func_2()).x ^ (_wgslsmith_sub_i32(global0.x, 32063i) << ((u_input.b.x | 26731u) % 32u)), global0.x, arg_0.c.x, arg_0.c.x | (reverseBits(global0.x) >> (~32115u % 32u))) | min(vec4<i32>(min(-1i, 2355i), 1i, -arg_0.c.x, abs(-2147483647i)) >> ((_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 1u, 1u, 0u), vec4<u32>(22267u, 23418u, u_input.a, u_input.b.x)) & _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.b.x, u_input.a, u_input.b.x), vec4<u32>(58829u, u_input.a, u_input.b.x, u_input.a))) % vec4<u32>(32u)), vec4<i32>(var_0.c.x, var_0.c.x, -1i, 22014i));
    global0 = -(~vec4<i32>(abs(var_0.c.x) | 0i, global0.x, 30203i, _wgslsmith_mult_i32(-16634i, var_0.c.x)));
    return Struct_1(arg_0.a, func_3(Struct_3(arg_0.b, ~40081u)).x, vec2<i32>(2147483647i >> ((74298u | _wgslsmith_div_u32(u_input.a, u_input.b.x)) % 32u), -36098i), var_0.a.x, _wgslsmith_f_op_f32(-arg_0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-135f, -962f, -1190f) * vec3<f32>(-752f, 274f, 538f))))), !func_1(7432u), ~vec2<i32>(~global0.x, global0.x | global0.x), -474f, 992f));
    let var_1 = Struct_2(true);
    global0 = vec4<i32>(max(_wgslsmith_div_i32(2147483647i << (0u % 32u), var_0.c.x), global0.x), max(var_0.c.x, var_0.c.x | 5060i), func_5(var_0).c.x, _wgslsmith_mult_i32(global0.x, ~_wgslsmith_dot_vec2_i32(global0.yz, vec2<i32>(-32609i, 7180i)))) << (_wgslsmith_mod_vec4_u32(vec4<u32>(~_wgslsmith_sub_u32(u_input.b.x, 10898u), countOneBits(1u), 0u, ~(~0u)), u_input.b) % vec4<u32>(32u));
    var var_2 = ~_wgslsmith_clamp_vec4_i32(select(-vec4<i32>(var_0.c.x, -1i, 39879i, global0.x), min(~vec4<i32>(-2147483647i, 2147483647i, var_0.c.x, var_0.c.x), vec4<i32>(global0.x, global0.x, -37120i, 2147483647i) & vec4<i32>(var_0.c.x, global0.x, 2147483647i, global0.x)), !var_1.a), _wgslsmith_sub_vec4_i32(-vec4<i32>(4427i, -1i, 17918i, global0.x) << (~vec4<u32>(1u, u_input.a, 4294967295u, 1u) % vec4<u32>(32u)), reverseBits(vec4<i32>(34017i, var_0.c.x, -2147483647i, 1i) >> (u_input.b % vec4<u32>(32u)))), ~(~vec4<i32>(global0.x, 48110i, global0.x, var_0.c.x) & firstTrailingBit(vec4<i32>(-23203i, var_0.c.x, 0i, global0.x))));
    var var_3 = _wgslsmith_f_op_vec3_f32(var_0.a * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-688f, -197f, var_0.e))));
    let x = u_input.a;
    s_output = StorageBuffer(~max(abs(vec2<u32>(u_input.b.x, 10456u) & u_input.b.xz), _wgslsmith_mod_vec2_u32(u_input.b.yx << (u_input.b.yz % vec2<u32>(32u)), ~vec2<u32>(u_input.b.x, u_input.a))), firstLeadingBit(u_input.a));
}

