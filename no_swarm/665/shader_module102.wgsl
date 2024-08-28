struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: vec2<f32>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: vec4<i32>;

var<private> global2: vec4<i32>;

var<private> global3: Struct_1 = Struct_1(vec3<u32>(15460u, 1u, 63455u), vec4<f32>(-487f, 1175f, -1503f, 1343f), 4294967295u);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
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

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2, arg_3: Struct_2) -> vec3<u32> {
    var var_0 = arg_2.a;
    let var_1 = arg_2;
    var var_2 = vec4<bool>(select(all(!select(vec2<bool>(false, arg_3.a), vec2<bool>(arg_2.a, false), vec2<bool>(false, false))), true, false), arg_2.a, false, (min(14685i, 1i) << (1u % 32u)) <= global2.x);
    var var_3 = _wgslsmith_div_vec2_u32(min(firstTrailingBit(arg_0.a.yy), max(arg_0.a.yx, vec2<u32>(1010u, reverseBits(54042u)))), ~arg_2.d.a.zy);
    var var_4 = false;
    return _wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(arg_3.b.x >> (71866u % 32u), _wgslsmith_add_u32(min(6316u, arg_3.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_2.b.x, 1u, arg_2.b.x), vec4<u32>(var_3.x, 4294967295u, 12156u, var_1.d.c))), var_1.b.x)), vec3<u32>(_wgslsmith_mod_u32(global3.c, global3.a.x), ~arg_3.b.x, var_3.x));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> vec4<i32> {
    let var_0 = Struct_1(global3.a, vec4<f32>(arg_3.x, _wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_f32(f32(-1f) * -908f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(159f))))), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(arg_1.a.x, global3.a.x)), arg_2.a.xx));
    global1 = select(vec4<i32>(0i, 2147483647i, global1.x, -(~(-global1.x))), vec4<i32>(32308i, -(~(-global1.x)), max(-2147483647i, ~(~global2.x)), ~reverseBits(_wgslsmith_div_i32(-1i, -30513i))), !vec4<bool>(all(vec3<bool>(arg_0, false, true)) || any(vec4<bool>(true, true, true, arg_0)), false, true, -1625f != _wgslsmith_f_op_f32(arg_3.x * arg_2.b.x)));
    var var_1 = Struct_1(~(~(~vec3<u32>(var_0.a.x, var_0.a.x, arg_1.a.x))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.b.x, _wgslsmith_f_op_f32(step(343f, _wgslsmith_f_op_f32(1000f * arg_1.b.x))), 3274f, -1076f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(872f, 181f, arg_2.b.x, 235f))))), 33073u);
    var var_2 = vec2<bool>(~(~var_0.a.x) == var_0.c, !arg_0);
    return ~firstTrailingBit(firstTrailingBit(reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, global2.x, global2.x, global1.x), vec4<i32>(global2.x, global2.x, 19548i, 0i)))));
}

fn func_2(arg_0: f32, arg_1: f32) -> Struct_1 {
    global2 = func_4(false, Struct_1(func_3(Struct_1(vec3<u32>(global3.c, 8148u, 4294967295u) | global3.a, global3.b, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global3.a.x, 1u, 3879u), vec4<u32>(83516u, global3.c, global3.c, 1u))), _wgslsmith_f_op_f32(-global3.b.x), Struct_2(global3.c < global3.c, global3.a.zy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1366f, 1062f)), Struct_1(global3.a, global3.b, global3.c), _wgslsmith_f_op_f32(-2565f - -1410f)), Struct_2(true, _wgslsmith_mult_vec2_u32(global3.a.yy, vec2<u32>(0u, 0u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(2018f, 309f) + global3.b.wx), Struct_1(global3.a, vec4<f32>(arg_1, arg_0, -131f, arg_0), 1u), arg_1)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -1644f, 1000f, arg_1) + global3.b)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1803f, arg_0, 1347f, 1391f))), global3.b, vec4<bool>(true, true, true, true)))), ~(~global3.a.x)), Struct_1(~global3.a, vec4<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(arg_1)))), 1000f), _wgslsmith_mod_u32(~global3.c, global3.c) | global3.c), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-914f, -1130f, -1054f, _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_0, arg_1, global3.b.x)))))))));
    let var_0 = true;
    global1 = firstLeadingBit(abs(~firstLeadingBit(vec4<i32>(global1.x, global1.x, 24446i, -28128i)))) << (~vec4<u32>(func_3(Struct_1(vec3<u32>(global3.c, global3.a.x, 0u), global3.b, 3754u), global3.b.x, Struct_2(var_0, vec2<u32>(87701u, global3.a.x), global3.b.zw, Struct_1(global3.a, global3.b, 78679u), -1322f), Struct_2(var_0, global3.a.xy, vec2<f32>(759f, global3.b.x), Struct_1(vec3<u32>(global3.c, global3.c, 1u), global3.b, global3.c), 126f)).x >> (4294967295u % 32u), ~(~4294967295u), global3.c, select(global3.a.x, global3.c, any(vec3<bool>(var_0, false, var_0)))) % vec4<u32>(32u));
    let var_1 = Struct_2(false, global3.a.yy, global3.b.xw, Struct_1(~(~global3.a) << (firstTrailingBit(global3.a ^ global3.a) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-253f, arg_1, -978f, arg_0) + vec4<f32>(arg_0, 1491f, global3.b.x, global3.b.x)) - _wgslsmith_f_op_vec4_f32(floor(global3.b))), vec4<f32>(_wgslsmith_f_op_f32(-arg_0), -105f, -1156f, _wgslsmith_f_op_f32(trunc(global3.b.x))))), max(global3.a.x, _wgslsmith_sub_u32(global3.a.x, global3.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -432f) * arg_0));
    global3 = var_1.d;
    return Struct_1(countOneBits(var_1.d.a), var_1.d.b, _wgslsmith_add_u32(func_3(Struct_1(~vec3<u32>(var_1.b.x, 1u, var_1.b.x), global3.b, 1u >> (global3.a.x % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-446f, arg_0))), Struct_2(any(vec2<bool>(var_1.a, var_0)), vec2<u32>(var_1.d.a.x, global3.a.x) >> (vec2<u32>(5805u, 11637u) % vec2<u32>(32u)), vec2<f32>(578f, global3.b.x), var_1.d, 102f), var_1).x, 22852u));
}

fn func_1() -> u32 {
    global0 = ~4294967295u;
    global2 = ~_wgslsmith_sub_vec4_i32(select(vec4<i32>(_wgslsmith_mod_i32(global1.x, u_input.b), ~global1.x, -39139i, 17598i), vec4<i32>(u_input.b, countOneBits(2147483647i), 16721i | global1.x, ~global1.x), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(false, false, true, false), select(false, true, false))), abs(abs(~vec4<i32>(global2.x, global2.x, global2.x, u_input.e))));
    global3 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * 358f), -143f)))), global3.b.x);
    global3 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.x)))), 1000f);
    let var_0 = _wgslsmith_f_op_vec2_f32(-global3.b.wy);
    return max(global3.a.x, ~global3.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~(select(-(~vec4<i32>(1i, global2.x, global1.x, u_input.b)), vec4<i32>(6671i, firstLeadingBit(36361i), _wgslsmith_clamp_i32(global1.x, global1.x, global1.x), global1.x & 58504i), true) << (vec4<u32>(0u >> (1u % 32u), abs(func_1()), firstLeadingBit(0u), 107810u) % vec4<u32>(32u)));
    var var_0 = max(-((-vec4<i32>(global2.x, u_input.e, 1i, 26918i) >> (_wgslsmith_div_vec4_u32(vec4<u32>(global3.a.x, 0u, global3.c, global3.a.x), vec4<u32>(19495u, 13180u, global3.a.x, global3.a.x)) % vec4<u32>(32u))) & vec4<i32>(-global2.x, global1.x, max(global1.x, -1i), _wgslsmith_mult_i32(global2.x, 2147483647i))), vec4<i32>(~reverseBits(firstLeadingBit(u_input.c)), u_input.c, (-12334i ^ global1.x) & abs(1492i), -2147483647i));
    var var_1 = func_2(global3.b.x, global3.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_1.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(var_1.b))))), global1.xy);
}

