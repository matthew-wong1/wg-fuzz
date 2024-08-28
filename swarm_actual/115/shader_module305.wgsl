struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(32493u, 5977u, 1u);

var<private> global1: vec2<u32> = vec2<u32>(4916u, 4294967295u);

var<private> global2: f32 = 815f;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: f32, arg_3: Struct_3) -> f32 {
    return _wgslsmith_f_op_f32(-arg_3.b.b.a.x);
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: f32, arg_3: Struct_2) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(361f * -930f))));
    var var_1 = -916f;
    global1 = min(global0.xz, _wgslsmith_add_vec2_u32(~_wgslsmith_clamp_vec2_u32(arg_1.a.xy, vec2<u32>(global0.x, global1.x), vec2<u32>(global1.x, 0u)), vec2<u32>(arg_0.x, _wgslsmith_dot_vec4_u32(arg_3.a, arg_1.a)))) << (arg_1.a.wz % vec2<u32>(32u));
    let var_2 = Struct_3(_wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(func_3(vec3<f32>(897f, _wgslsmith_f_op_f32(round(-1003f)), -1000f), vec2<bool>(true, true), _wgslsmith_f_op_f32(step(894f, 466f)), Struct_3(_wgslsmith_f_op_f32(-arg_1.c.a.x), arg_1, ~28456i, arg_1.b, Struct_1(arg_1.c.a, global0.x, arg_3.c.c, arg_3.c.d))))), Struct_2(select(~abs(arg_3.a), ~arg_3.a, select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), true))), arg_3.c, arg_3.c), -15268i, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1353f, 794f)) + arg_3.b.a) - _wgslsmith_f_op_vec2_f32(sign(arg_1.c.a))), ~(~(~arg_1.b.b)), _wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, u_input.b.x, -22855i) ^ u_input.b), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(arg_3.c.d, min(arg_1.c.d, vec4<i32>(-24818i, arg_3.b.c.x, arg_1.c.c.x, -14223i))), vec4<i32>(arg_1.c.d.x, min(arg_3.b.c.x, -25863i), ~33239i, ~0i))), arg_1.b);
    return -(abs(-firstTrailingBit(vec3<i32>(arg_3.c.d.x, var_2.b.c.d.x, 2147483647i))) | u_input.b);
}

fn func_4(arg_0: vec3<i32>, arg_1: bool, arg_2: f32, arg_3: u32) -> Struct_3 {
    let var_0 = arg_0;
    let var_1 = Struct_2(max(vec4<u32>(global0.x, reverseBits(4294967295u) ^ _wgslsmith_dot_vec2_u32(global0.yy, vec2<u32>(arg_3, u_input.a)), ~(~global0.x), global1.x), ~vec4<u32>(~global0.x, global1.x ^ arg_3, 4294967295u, global0.x & 6486u)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1087f + arg_2), _wgslsmith_f_op_f32(max(-237f, -1029f)))), 1u, vec3<i32>(-2147483647i, -(var_0.x ^ arg_0.x), arg_0.x), vec4<i32>(~(u_input.b.x << (global1.x % 32u)), arg_0.x, -firstLeadingBit(41737i), -2147483647i)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(794f, 982f), _wgslsmith_f_op_f32(arg_2 + arg_2))), _wgslsmith_div_u32(abs(~34414u), arg_3 ^ 12417u), vec3<i32>(u_input.b.x, min(-70804i, min(36854i, var_0.x)), -2147483647i), vec4<i32>(~2881i, -2043i, ~var_0.x, -17457i << (select(0u, 1190u, arg_1) % 32u))));
    var var_2 = var_1.c.c.x;
    global0 = abs(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_3, ~global1.x, ~abs(arg_3)), var_1.a.xww));
    var_2 = 0i;
    return Struct_3(-1188f, Struct_2(select(~(var_1.a >> (var_1.a % vec4<u32>(32u))), countOneBits(vec4<u32>(var_1.c.b, u_input.a, global0.x, var_1.a.x)), !(!vec4<bool>(arg_1, arg_1, arg_1, true))), var_1.b, Struct_1(var_1.c.a, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(2795u, var_1.a.x, arg_3), var_1.a.wzy)), vec3<i32>(~var_0.x, ~(-44561i), var_0.x), vec4<i32>(u_input.b.x, -var_0.x, arg_0.x ^ arg_0.x, -17957i))), u_input.b.x, var_1.c, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.c.a, vec2<f32>(arg_2, 567f), vec2<bool>(arg_1, arg_1))))), arg_3 | ~_wgslsmith_mult_u32(54793u, u_input.a), u_input.b, vec4<i32>(reverseBits(43520i), _wgslsmith_div_i32(_wgslsmith_add_i32(2147483647i, -25725i), i32(-1i) * -2147483647i), arg_0.x, 0i)));
}

fn func_5(arg_0: Struct_3) -> bool {
    let var_0 = arg_0.b;
    return true;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_4) -> u32 {
    var var_0 = ~vec3<i32>(-45053i, abs(~select(34331i, arg_0.b.c.c.x, false)), arg_0.c);
    let var_1 = -u_input.b.x;
    global1 = ~abs(arg_0.b.a.yz);
    var var_2 = vec3<bool>(!(select(false, any(vec4<bool>(false, false, true, true)), true) != (true || (-108f >= arg_0.e.a.x))), func_5(func_4(func_2(arg_1.a.yy, arg_0.b, arg_0.a, Struct_2(vec4<u32>(global1.x, arg_0.d.b, global0.x, global0.x), arg_0.b.c, arg_0.b.c)) ^ vec3<i32>(20096i, var_1, 1i), true, _wgslsmith_f_op_f32(-arg_0.e.a.x), 1u)), global0.x >= ((_wgslsmith_mult_u32(global1.x, global0.x) | _wgslsmith_mult_u32(arg_0.b.b.b, arg_1.a.x)) & 0u));
    var var_3 = u_input.b.x;
    return ~reverseBits(min(1u, 38000u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<u32>(u_input.a, global1.x);
    global2 = -1280f;
    global2 = -1177f;
    global0 = vec3<u32>(firstTrailingBit(global0.x), global1.x, ~4294967295u);
    global0 = _wgslsmith_sub_vec3_u32(~(_wgslsmith_div_vec3_u32(~vec3<u32>(global0.x, u_input.a, 4294967295u), reverseBits(vec3<u32>(1u, global1.x, global0.x))) & _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(28695u, global1.x, u_input.a), vec3<u32>(global1.x, 43886u, u_input.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(global0.x, u_input.a, 1u), vec3<u32>(42603u, u_input.a, 1u)))), vec3<u32>(~u_input.a >> (~5263u % 32u), _wgslsmith_clamp_u32(firstTrailingBit(func_1(Struct_3(901f, Struct_2(vec4<u32>(4294967295u, 0u, global0.x, 0u), Struct_1(vec2<f32>(851f, -2857f), 0u, vec3<i32>(-41607i, 24697i, u_input.b.x), vec4<i32>(-32119i, u_input.b.x, 1i, -27198i)), Struct_1(vec2<f32>(1000f, 912f), global1.x, vec3<i32>(-12077i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, 1i, u_input.b.x, u_input.b.x))), 60338i, Struct_1(vec2<f32>(1274f, -1670f), 27117u, u_input.b, vec4<i32>(50284i, u_input.b.x, 1i, -2147483647i)), Struct_1(vec2<f32>(-1019f, -960f), global1.x, u_input.b, vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -12504i))), Struct_4(vec3<u32>(global0.x, 0u, global0.x)))), ~(~3092u), 36573u), global1.x | ~reverseBits(1u)));
    global0 = func_4(vec3<i32>(_wgslsmith_dot_vec3_i32(func_4(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x) >> (vec3<u32>(u_input.a, global1.x, global0.x) % vec3<u32>(32u)), true, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 54353u).d.c, vec3<i32>(-41425i, 15789i, 0i)), -(~(~1i)), min(u_input.b.x, u_input.b.x)), min(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, 24509i, u_input.b.x), u_input.b), vec3<i32>(-1i, u_input.b.x, u_input.b.x) >> (vec3<u32>(4481u, global1.x, global0.x) % vec3<u32>(32u))), func_4(-u_input.b, true, _wgslsmith_f_op_f32(-1000f - 107f), _wgslsmith_div_u32(42295u, u_input.a)).d.c.x) <= -25706i, func_4(vec3<i32>(u_input.b.x, _wgslsmith_mult_i32(~(-5898i), u_input.b.x), u_input.b.x), false, -1137f, ~global0.x).a, 4294967295u).b.a.wwy;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_div_f32(219f, 335f)) * -153f)) * _wgslsmith_f_op_f32(-1f));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(func_4(u_input.b, false, _wgslsmith_f_op_f32(ceil(-945f)), 43079u).d.b, 53238u, _wgslsmith_mult_u32(8349u, ~u_input.a)) | ~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 2665u) | vec3<u32>(41067u, global0.x, u_input.a), _wgslsmith_sub_vec3_u32(vec3<u32>(10183u, 72442u, 48182u), vec3<u32>(global1.x, 0u, 13485u))));
}

