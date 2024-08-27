struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
    d: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_4 = Struct_4(vec3<i32>(-18209i, 2147483647i, 18016i), Struct_1(vec4<u32>(4294967295u, 96284u, 1u, 4294967295u), vec4<f32>(-407f, 1220f, -1464f, -417f)), 1u, Struct_2(Struct_1(vec4<u32>(1u, 0u, 6967u, 89379u), vec4<f32>(1124f, -1803f, -2039f, -2029f)), 39239u, true, Struct_1(vec4<u32>(49863u, 4294967295u, 43292u, 26266u), vec4<f32>(-143f, 451f, -1897f, 802f))));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_4) -> u32 {
    var var_0 = reverseBits(select(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.a << (vec4<u32>(75404u, global1.c, 0u, global1.b.a.x) % vec4<u32>(32u)), ~global1.d.d.a), _wgslsmith_div_vec4_u32(global1.b.a, global1.b.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, ~arg_0.d.d.a.x, _wgslsmith_mod_u32(1u, global0.b.a.x), 1u), arg_0.b.a << (vec4<u32>(27654u, global1.c, arg_0.c, global1.c) % vec4<u32>(32u))), vec4<bool>(arg_0.d.c, all(vec3<bool>(true, false, arg_0.d.c)), arg_0.a.x > u_input.b, select(!arg_0.d.c, global1.d.c, true))));
    let var_1 = Struct_4(global0.a, global0.d.a, _wgslsmith_clamp_u32(4294967295u, ~4294967295u >> (reverseBits(global0.c) % 32u), _wgslsmith_dot_vec2_u32(select(vec2<u32>(var_0.x, u_input.a.x), arg_0.b.a.yx, vec2<bool>(global0.d.c, global1.d.c)), abs(arg_0.b.a.yw))), Struct_2(global1.b, min(76267u, abs(34901u)), true, Struct_1(_wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_0.b.a.x, arg_0.b.a.x, global0.b.a.x, 5899u), ~u_input.a, vec4<u32>(global1.d.a.a.x, var_0.x, global1.b.a.x, 38419u)), global0.d.a.b)));
    let var_2 = var_1.d.a;
    global1 = Struct_4(~(-global1.a), global0.b, _wgslsmith_mult_u32(~45418u, _wgslsmith_add_u32(~(var_2.a.x & global0.d.b), u_input.a.x)), global1.d);
    var var_3 = false;
    return countOneBits(~_wgslsmith_div_u32(~0u, _wgslsmith_add_u32(var_2.a.x, 4294967295u) | ~11844u));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_5(vec4<i32>(global0.a.x, _wgslsmith_add_i32(min(countOneBits(-16809i), _wgslsmith_mod_i32(14749i, global1.a.x)), -global1.a.x), _wgslsmith_dot_vec4_i32((vec4<i32>(global1.a.x, global0.a.x, 4540i, u_input.b) & vec4<i32>(1i, -31180i, u_input.b, 21822i)) ^ vec4<i32>(global0.a.x, 12329i, -35753i, u_input.c), min(min(vec4<i32>(global0.a.x, u_input.c, 1i, -1i), vec4<i32>(global0.a.x, -3398i, 8632i, -3582i)), abs(vec4<i32>(u_input.c, 0i, global1.a.x, 0i)))), ~(-(global1.a.x << (26515u % 32u)))), vec4<u32>(global0.b.a.x, _wgslsmith_sub_u32(0u, ~global1.c ^ 4718u), ~_wgslsmith_mod_u32(4294967295u | global0.d.d.a.x, u_input.d), _wgslsmith_div_u32(~(44076u << (1u % 32u)), ~2327u)));
    var var_1 = Struct_3(true, -u_input.b);
    var var_2 = Struct_5(var_0.a | vec4<i32>(5002i & (global1.a.x ^ -2147483647i), 2147483647i, -(~(-1i)), var_1.b), min(~(vec4<u32>(global0.c, u_input.a.x, u_input.a.x, 21447u) >> (vec4<u32>(1u, 1u, u_input.d, u_input.a.x) % vec4<u32>(32u))), vec4<u32>(abs(global1.b.a.x), func_3(Struct_4(var_0.a.zzy, Struct_1(vec4<u32>(global0.b.a.x, 13830u, global1.b.a.x, 1u), global0.b.b), u_input.a.x, Struct_2(global1.d.a, 4294967295u, true, global0.b))), min(66920u, 60618u), select(33412u, 1u, global0.d.c))) & firstTrailingBit(_wgslsmith_add_vec4_u32(~global0.d.a.a, select(vec4<u32>(global0.d.b, global1.c, 1u, 0u), vec4<u32>(0u, var_0.b.x, var_0.b.x, u_input.d), global0.d.c))));
    return global1.d.d;
}

fn func_1(arg_0: u32) -> vec4<u32> {
    global1 = Struct_4((_wgslsmith_sub_vec3_i32(-vec3<i32>(-1i, global1.a.x, u_input.b), abs(vec3<i32>(50542i, 0i, u_input.c))) >> (firstLeadingBit(abs(vec3<u32>(0u, 41185u, 19347u))) % vec3<u32>(32u))) | (vec3<i32>(-1i, select(u_input.c, global0.a.x, false), u_input.c) | vec3<i32>(global0.a.x << (0u % 32u), -1i, reverseBits(-2147483647i))), func_2(), global0.c >> (~_wgslsmith_dot_vec4_u32(select(global1.b.a, global1.b.a, vec4<bool>(false, true, true, true)), ~global1.d.d.a) % 32u), Struct_2(func_2(), u_input.d, true, Struct_1(global0.b.a, global1.b.b)));
    let var_0 = (vec2<i32>(-1i) * -global0.a.yx) | global1.a.yy;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.d.d.b.x)));
    global0 = Struct_4(-firstLeadingBit(global0.a), func_2(), select(1u, select(~(~4294967295u), ~(~1u), global0.c < ~32451u), any(!select(vec4<bool>(true, true, false, global0.d.c), vec4<bool>(false, global0.d.c, global1.d.c, global0.d.c), vec4<bool>(false, global0.d.c, false, false)))), Struct_2(func_2(), _wgslsmith_add_u32(global0.c, ~4294967295u), global1.d.c, Struct_1(u_input.a, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.b.b.x, 883f, -840f, -773f))))));
    var var_2 = reverseBits(arg_0);
    return vec4<u32>(global0.d.b & _wgslsmith_add_u32(firstLeadingBit(global0.d.a.a.x), global1.d.b), abs(u_input.a.x), 64854u, 78273u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(-2147483647i, 23417i, 9128i, select(u_input.c, -1i, global1.d.c)) >> ((~func_1(23232u) << (max(max(global0.d.a.a, vec4<u32>(global1.b.a.x, u_input.a.x, global0.b.a.x, 12590u)) >> (~vec4<u32>(global0.c, u_input.d, 1u, global1.d.b) % vec4<u32>(32u)), global1.d.d.a) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_1 = Struct_2(global1.b, 80749u, global1.a.x != ~select(7942i, _wgslsmith_div_i32(var_0.x, -3790i), true), Struct_1(vec4<u32>(83726u, _wgslsmith_dot_vec4_u32(global0.d.a.a, global1.d.a.a), select(countOneBits(47992u), global1.b.a.x, all(vec3<bool>(global0.d.c, global1.d.c, true))), func_2().a.x << (~0u % 32u)), global0.d.d.b));
    var var_2 = Struct_5(firstTrailingBit(-(~var_0) >> (vec4<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.d.b, global1.b.a.x, global0.d.b, 24159u), global1.d.d.a), ~1u, 0u) % vec4<u32>(32u))), countOneBits(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.d.a.x, 1u, var_1.b, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.d.a.x, var_1.b, 4294967295u, 0u), vec4<u32>(u_input.a.x, global0.b.a.x, 34819u, global0.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(~global0.a);
}

