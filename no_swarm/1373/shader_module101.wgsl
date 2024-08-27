struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: vec2<bool>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_3,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: vec3<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(36676u, vec4<u32>(0u, 11229u, 38713u, 0u), Struct_1(35267u, vec3<f32>(754f, -454f, -1449f), 0u, vec2<u32>(0u, 25816u)));

var<private> global1: array<vec2<i32>, 13>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_4) -> u32 {
    var var_0 = Struct_3(_wgslsmith_add_u32(firstLeadingBit(~arg_2.a.b.x) >> (arg_2.a.a % 32u), _wgslsmith_add_u32(global0.b.x, ~0u)), vec4<u32>(~global0.b.x, _wgslsmith_dot_vec3_u32(arg_2.a.b.wzz, vec3<u32>(0u, u_input.d.x, 64487u) << ((vec3<u32>(0u, 15686u, 0u) & vec3<u32>(0u, global0.a, u_input.d.x)) % vec3<u32>(32u))), 1u, u_input.d.x), global0.c);
    var var_1 = arg_2.a.c;
    var var_2 = _wgslsmith_div_f32(var_0.c.b.x, var_0.c.b.x);
    let var_3 = arg_2;
    let var_4 = _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(29541u, arg_2.a.b.x)), _wgslsmith_clamp_vec2_u32(~(vec2<u32>(4294967295u, 16567u) << (u_input.d.yz % vec2<u32>(32u))), global0.c.d, ~(vec2<u32>(4294967295u, 43868u) >> (vec2<u32>(0u, var_3.a.a) % vec2<u32>(32u))))), var_1.d);
    return var_3.a.b.x;
}

fn func_2() -> Struct_3 {
    global0 = Struct_3(34054u, firstLeadingBit(~_wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 0u, u_input.d.x, u_input.d.x), abs(vec4<u32>(global0.a, u_input.d.x, 68858u, global0.a)))), Struct_1(u_input.d.x, vec3<f32>(_wgslsmith_f_op_f32(-global0.c.b.x), _wgslsmith_f_op_f32(-global0.c.b.x), _wgslsmith_f_op_f32(ceil(-923f))), 41101u, u_input.d.ww));
    var var_0 = 49985u;
    let var_1 = Struct_2(max(global0.b.zw, _wgslsmith_clamp_vec2_u32(vec2<u32>(global0.c.c, select(u_input.d.x, global0.a, false)), ~(u_input.d.xy & vec2<u32>(1u, global0.c.a)), vec2<u32>(global0.a, u_input.d.x) << (vec2<u32>(0u, 0u) % vec2<u32>(32u)))), min(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_add_u32(global0.a, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, global0.b.x, 22207u, 0u), u_input.d), global0.a), vec3<u32>(1u, func_3(6637i, 34063i, Struct_4(Struct_3(1u, u_input.d, Struct_1(86221u, global0.c.b, 14201u, vec2<u32>(4294967295u, 1u))), u_input.e, vec2<bool>(false, false))), u_input.d.x)), _wgslsmith_sub_vec3_u32(abs(global0.b.zwy) ^ vec3<u32>(global0.b.x, global0.c.a, 76583u), global0.b.xyz)), Struct_1(global0.c.d.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global0.c.b)), global0.c.b), _wgslsmith_mult_u32(abs(1u), _wgslsmith_mod_u32(func_3(22133i, u_input.e.x, Struct_4(Struct_3(75962u, vec4<u32>(global0.b.x, 7824u, global0.b.x, 4294967295u), Struct_1(u_input.d.x, global0.c.b, 28959u, global0.b.xw)), u_input.e, vec2<bool>(true, false))), _wgslsmith_clamp_u32(global0.a, u_input.d.x, 58581u))), ~(~global0.c.d)));
    global0 = Struct_3(u_input.d.x, u_input.d, Struct_1(~(~max(var_1.c.c, global0.c.a)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1514f, var_1.c.b.x, 1202f) + global0.c.b)))), abs(~_wgslsmith_div_u32(u_input.d.x, var_1.b.x)), min(vec2<u32>(4294967295u, ~var_1.b.x), abs(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d.x, global0.a), var_1.b.yz)))));
    var var_2 = Struct_3(4294967295u, abs(global0.b), Struct_1(_wgslsmith_mod_u32(max(4294967295u, u_input.d.x ^ 7680u), _wgslsmith_mod_u32(var_1.a.x, global0.a) & ~1u), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.b.x, -537f, global0.c.b.x)))), 34921u, max(u_input.d.yy, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d.x, 1u), _wgslsmith_div_vec2_u32(u_input.d.zy, u_input.d.yz)))));
    return Struct_3(~var_2.c.a, select(u_input.d, vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, 47591u, 1u, 0u), global0.b), _wgslsmith_add_u32(0u, 1u), var_2.a >> (11686u % 32u), ~8938u), vec4<bool>(true, true, true, true)) >> (firstLeadingBit(var_2.b) % vec4<u32>(32u)), Struct_1(~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(4294967295u, 1u, u_input.d.x), ~var_2.a), global0.c.b, 1u, vec2<u32>(global0.b.x, var_1.b.x >> (var_1.a.x % 32u)) >> (abs(reverseBits(vec2<u32>(61727u, 58664u))) % vec2<u32>(32u))));
}

fn func_1(arg_0: bool, arg_1: f32) -> bool {
    let var_0 = abs(~u_input.e);
    var var_1 = !(!vec3<bool>(arg_0, arg_0, any(select(vec2<bool>(true, arg_0), vec2<bool>(false, arg_0), arg_0))));
    var var_2 = firstLeadingBit(u_input.e.x);
    global0 = func_2();
    let var_3 = ~(~_wgslsmith_dot_vec3_u32(u_input.d.xzx, ~global0.b.yyx & ~global0.b.xww));
    return !all(select(select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(false, var_1.x), vec2<bool>(false, arg_0)), vec2<bool>(arg_1 > -775f, true), select(var_1.yy, vec2<bool>(var_1.x, var_1.x), all(vec2<bool>(false, true)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: f32, arg_3: f32) -> Struct_3 {
    let var_0 = max(_wgslsmith_sub_i32(-(~(-u_input.b)), _wgslsmith_mod_i32(u_input.a, ~max(u_input.b, u_input.b))), ~(-1i >> (~4294967295u % 32u)) << (~u_input.d.x % 32u));
    global0 = func_2();
    var var_1 = func_2();
    let var_2 = global0.c;
    var_1 = func_2();
    return Struct_3(30078u, vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.c.d.x, u_input.d.x, global0.b.x), u_input.d.wxy), 1u, ~0u, min(~0u, global0.c.c) | 0u), Struct_1(func_3(-_wgslsmith_div_i32(u_input.a, -2147483647i), i32(-1i) * -var_0, Struct_4(Struct_3(var_1.a, vec4<u32>(var_1.c.a, var_2.c, var_1.c.c, u_input.d.x), Struct_1(63630u, vec3<f32>(-184f, arg_2, global0.c.b.x), 4294967295u, vec2<u32>(u_input.d.x, var_1.a))), _wgslsmith_mod_vec3_i32(vec3<i32>(65503i, var_0, 2147483647i), vec3<i32>(16121i, -61539i, var_0)), vec2<bool>(true, arg_1))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.b), vec3<f32>(721f, var_2.b.x, arg_2)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.b.x, arg_3, -891f), _wgslsmith_f_op_vec3_f32(-var_2.b)))), countOneBits(1u), _wgslsmith_add_vec2_u32(vec2<u32>(global0.b.x | 57715u, ~69433u), ~vec2<u32>(var_1.c.a, 104178u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~firstLeadingBit(~firstLeadingBit(vec4<i32>(u_input.b, u_input.e.x, u_input.e.x, u_input.b)));
    var var_1 = _wgslsmith_f_op_f32(-global0.c.b.x) == _wgslsmith_f_op_f32(-global0.c.b.x);
    global1 = array<vec2<i32>, 13>();
    global0 = func_4(!vec3<bool>(func_1(true, global0.c.b.x), !all(vec3<bool>(true, true, true)), true), all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(abs(global0.c.b.x)), -653f);
    var_0 = _wgslsmith_sub_vec4_i32(reverseBits(-_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, 2147483647i, -55311i, var_0.x), vec4<i32>(u_input.e.x, -2147483647i, var_0.x, 8450i)), _wgslsmith_div_vec4_i32(vec4<i32>(1i, -55525i, u_input.e.x, u_input.b), vec4<i32>(1i, u_input.a, 2147483647i, u_input.e.x)))), vec4<i32>(~32282i, min(var_0.x, 5037i), u_input.a, -1i));
    var var_2 = 4294967295u;
    let var_3 = Struct_2(_wgslsmith_mod_vec2_u32(u_input.d.wx, global0.b.zw), countOneBits(func_4(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), true, -127f, -2072f).b.zzw), func_2().c);
    let var_4 = countOneBits(~_wgslsmith_add_vec3_u32(u_input.d.wyy, var_3.b));
    global0 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(27825u, 21949u), ~reverseBits(global0.b.x | reverseBits(1u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1000f - global0.c.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-769f)) + 624f)) + var_3.c.b.xx), ~_wgslsmith_mod_vec3_i32(vec3<i32>(-53722i, var_0.x & var_0.x, 44722i), u_input.e), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.b.x, _wgslsmith_f_op_f32(sign(global0.c.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c.b.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3.c.b.x), 1000f, true)))));
}

