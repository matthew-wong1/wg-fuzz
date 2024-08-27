struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: u32,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<Struct_1, 17>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    global0 = ~(~min(vec4<i32>(global0.x, 1i, 1i, global0.x), ~vec4<i32>(global0.x, -862i, u_input.a, 1i)) << (_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.c.x, 1u, u_input.c.x, 12606u) & abs(u_input.d), _wgslsmith_mod_vec4_u32(~u_input.d, u_input.d)) % vec4<u32>(32u)));
    global0 = abs(select(reverseBits(~vec4<i32>(-2147483647i, -2147483647i, global0.x, 26047i)), _wgslsmith_div_vec4_i32(-vec4<i32>(u_input.a, u_input.a, u_input.b, global0.x), ~vec4<i32>(-1i, 4131i, global0.x, u_input.b)), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), false))) << (vec4<u32>(~(~4294967295u), ~(~u_input.c.x), 4294967295u, u_input.c.x) % vec4<u32>(32u)));
    global1 = array<Struct_1, 17>();
    var var_0 = ~abs(~abs(u_input.c) | reverseBits(~vec3<u32>(u_input.c.x, 4294967295u, u_input.d.x)));
    global1 = array<Struct_1, 17>();
    return -(~_wgslsmith_mult_i32(-23534i, global0.x));
}

fn func_2(arg_0: bool) -> Struct_2 {
    global1 = array<Struct_1, 17>();
    let var_0 = Struct_2(vec4<i32>(func_3(), firstTrailingBit(_wgslsmith_mult_i32(u_input.b, ~1i)), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(28109i, 1i, u_input.b, 6797i), countOneBits(vec4<i32>(-2147483647i, global0.x, u_input.b, u_input.a))), global0.x & -u_input.a), -(global0.x | u_input.b)), select(vec3<bool>(select(arg_0, true, !arg_0), true, (u_input.a << (55317u % 32u)) <= countOneBits(16085i)), !vec3<bool>(!arg_0, arg_0, false), !vec3<bool>(true, !arg_0, 1u <= u_input.d.x)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(328f + 1105f)));
    var var_2 = all(var_0.b.xy);
    var_2 = var_0.b.x;
    return Struct_2(~(~vec4<i32>(2147483647i, 1i, global0.x, global0.x) & var_0.a) | _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(-var_0.a, var_0.a >> (vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, u_input.c.x) % vec4<u32>(32u))), ~abs(vec4<i32>(global0.x, -32273i, var_0.a.x, -22347i))), vec3<bool>(any(select(vec4<bool>(var_0.b.x, arg_0, false, var_0.b.x), !vec4<bool>(false, var_0.b.x, true, true), select(vec4<bool>(var_0.b.x, arg_0, false, arg_0), vec4<bool>(false, var_0.b.x, true, true), vec4<bool>(true, false, true, false)))), any(!select(var_0.b.xy, vec2<bool>(false, var_0.b.x), vec2<bool>(var_0.b.x, true))), false));
}

fn func_4(arg_0: f32, arg_1: Struct_5, arg_2: f32, arg_3: u32) -> Struct_3 {
    global0 = firstLeadingBit(max(abs(vec4<i32>(-1i, _wgslsmith_sub_i32(31223i, arg_1.a.a.a.a.x), _wgslsmith_clamp_i32(arg_1.a.a.b.a.x, global0.x, u_input.b), ~(-2147483647i))), arg_1.a.a.b.a));
    global1 = array<Struct_1, 17>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -602f) - _wgslsmith_f_op_f32(round(516f))))) > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(arg_0 * arg_0)))));
    global0 = ~_wgslsmith_mod_vec4_i32(~(~arg_1.a.a.b.a << (~u_input.d % vec4<u32>(32u))), select(vec4<i32>(abs(-49300i), _wgslsmith_add_i32(1i, 45842i), ~2147483647i, u_input.a), vec4<i32>(func_2(arg_1.d).a.x, ~arg_1.a.a.b.a.x, _wgslsmith_sub_i32(arg_1.e, -1i), ~global0.x), !(!vec4<bool>(arg_1.d, arg_1.a.a.b.b.x, arg_1.d, arg_1.d))));
    var var_1 = all(select(vec4<bool>(arg_1.a.a.b.b.x, true, true, true), vec4<bool>(select(true, true, false), true, any(arg_1.a.a.b.b.zx), false), select(select(!vec4<bool>(false, true, true, arg_1.d), !vec4<bool>(arg_1.d, arg_1.d, true, arg_1.d), !vec4<bool>(true, arg_1.d, true, arg_1.a.a.b.b.x)), vec4<bool>(all(arg_1.a.a.a.b.xy), arg_1.d || arg_1.d, false, true), (arg_2 >= -181f) | true)));
    return Struct_3(func_2(arg_1.a.a.b.b.x), Struct_2(arg_1.a.a.a.a, arg_1.a.a.b.b));
}

fn func_1() -> Struct_3 {
    var var_0 = 4294967295u;
    let var_1 = func_4(-1013f, Struct_5(Struct_4(Struct_3(func_2(false), func_2(false)), select(u_input.d.zx, ~u_input.d.xx, vec2<bool>(true, true))), _wgslsmith_mult_u32(1u << (~u_input.c.x % 32u), u_input.d.x), 4294967295u, any(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), _wgslsmith_dot_vec2_i32(select(global0.zw, global0.xx, vec2<bool>(false, true)), _wgslsmith_clamp_vec2_i32(global0.xw, vec2<i32>(-45083i, u_input.a), global0.wx)) >> (abs(_wgslsmith_clamp_u32(1u, 24888u, u_input.c.x)) % 32u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1068f))))), u_input.c.x);
    global1 = array<Struct_1, 17>();
    global0 = max(vec4<i32>(-u_input.a, -2147483647i, ~u_input.a, _wgslsmith_mod_i32(u_input.b, global0.x)), ~_wgslsmith_mod_vec4_i32(firstLeadingBit(select(var_1.a.a, var_1.b.a, vec4<bool>(var_1.b.b.x, true, var_1.a.b.x, false))), -(var_1.b.a << (vec4<u32>(u_input.d.x, 5742u, 4294967295u, u_input.d.x) % vec4<u32>(32u)))));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1318f);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = array<Struct_1, 17>();
    global1 = array<Struct_1, 17>();
    let var_1 = Struct_4(var_0, firstLeadingBit(u_input.c.xx) | u_input.c.xx);
    global0 = min(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, ~var_1.a.a.a.x, ~_wgslsmith_mod_i32(var_1.a.a.a.x, 2147483647i), func_3()), ~vec4<i32>(0i, u_input.b >> (31884u % 32u), var_1.a.b.a.x, u_input.a)), var_1.a.b.a);
    var var_2 = var_1.a.b.b.x;
    var_2 = false && var_1.a.b.b.x;
    global1 = array<Struct_1, 17>();
    let var_3 = !select(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-483f * -866f)), Struct_5(var_1, u_input.d.x, ~u_input.c.x, var_1.a.b.b.x | var_1.a.a.b.x, -19057i), _wgslsmith_f_op_f32(select(1f, 1041f, true)), 64534u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.x, var_1.b.x, 1u, u_input.d.x), vec4<u32>(47454u, 5223u, u_input.d.x, 0u)) % 32u)).b.b, !vec3<bool>(var_1.a.b.b.x, var_1.a.b.b.x, var_0.a.b.x), !(true & var_0.b.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(max(~((var_1.b << (var_1.b % vec2<u32>(32u))) ^ firstLeadingBit(u_input.c.zz)), var_1.b), 1072f, -(-global0.yy & vec2<i32>(-var_0.a.a.x, -51357i)), ~(reverseBits(0u) ^ _wgslsmith_div_u32(u_input.c.x, u_input.d.x)) >> ((~40382u << (0u % 32u)) % 32u));
}

