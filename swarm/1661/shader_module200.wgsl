struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: u32 = 51348u;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: i32) -> bool {
    global1 = u_input.d;
    global1 = u_input.d;
    let var_0 = 1803f;
    let var_1 = Struct_2(Struct_1(arg_2), _wgslsmith_dot_vec2_u32(vec2<u32>(113108u, ~u_input.d), vec2<u32>(1u, u_input.d)), !vec4<bool>(all(select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_1.a, false), vec2<bool>(arg_1.a, arg_0.a))), (u_input.d & 0u) == countOneBits(u_input.d), all(vec2<bool>(arg_0.a, arg_1.a)), false));
    global0 = 0i;
    return arg_0.a;
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_2, arg_3: vec2<i32>) -> i32 {
    var var_0 = u_input.a;
    var_0 = -1i;
    var_0 = -17668i;
    var var_1 = ~vec2<i32>(max(select(-1i, arg_3.x, false) >> ((u_input.d << (1u % 32u)) % 32u), -firstLeadingBit(arg_3.x)), abs(arg_1));
    global1 = firstTrailingBit(~_wgslsmith_clamp_u32(u_input.d, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b, 47306u, 4294967295u, arg_2.b), vec4<u32>(1u, arg_2.b, arg_2.b, 5830u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, arg_2.b), abs(vec2<u32>(u_input.d, u_input.d)))));
    return _wgslsmith_dot_vec4_i32(vec4<i32>(12781i, arg_2.a.a, -2147483647i ^ arg_3.x, 3221i), firstTrailingBit(~_wgslsmith_sub_vec4_i32(vec4<i32>(5343i, var_1.x, arg_1, 0i), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_1, u_input.a, var_1.x, 0i), vec4<i32>(18660i, -33942i, -2147483647i, 24810i)))));
}

fn func_2() -> bool {
    global0 = func_4(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(func_3(Struct_3(false), Struct_3(true), u_input.c), true), all(vec2<bool>(true, true))), -_wgslsmith_mod_i32(u_input.c, _wgslsmith_div_i32(-1i, u_input.a) << (~75475u % 32u)), Struct_2(Struct_1(10140i >> (1u % 32u)), u_input.d, vec4<bool>(true, false, true, all(vec2<bool>(true, true)))), firstTrailingBit(-abs(u_input.b.xy)));
    var var_0 = vec2<bool>(true, all(select(vec3<bool>(u_input.d <= u_input.d, false, false), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true)), all(vec4<bool>(true, true, false, false)))));
    let var_1 = select(select(!vec3<bool>(true, select(true, false, var_0.x), any(vec3<bool>(var_0.x, var_0.x, var_0.x))), select(vec3<bool>(!var_0.x, true, true), select(select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true), var_0.x), select(vec3<bool>(var_0.x, false, true), vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(false, var_0.x, false)), !vec3<bool>(var_0.x, true, true)), !(!vec3<bool>(false, var_0.x, var_0.x))), !(!var_0.x)), !select(!select(vec3<bool>(var_0.x, true, false), vec3<bool>(true, false, false), false), select(!vec3<bool>(var_0.x, true, var_0.x), select(vec3<bool>(false, true, false), vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(true, true, var_0.x)), !var_0.x), !(!vec3<bool>(false, true, var_0.x))), select(select(!select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, var_0.x, true), var_0.x), select(vec3<bool>(false, true, var_0.x), vec3<bool>(var_0.x, true, var_0.x), select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(false, var_0.x, var_0.x), var_0.x)), !vec3<bool>(false, true, var_0.x)), vec3<bool>(true, true, u_input.a != u_input.a), true | func_3(Struct_3(var_0.x), Struct_3(true), ~2147483647i)));
    var var_2 = Struct_2(Struct_1(u_input.b.x), 10627u, vec4<bool>(any(select(select(vec4<bool>(true, var_0.x, false, false), vec4<bool>(var_1.x, false, var_1.x, true), true), !vec4<bool>(true, var_1.x, false, var_0.x), vec4<bool>(false, var_1.x, true, var_1.x))), var_0.x, true, any(vec2<bool>(var_0.x || false, true))));
    var_2 = Struct_2(Struct_1(-53920i), reverseBits(var_2.b), var_2.c);
    return false;
}

fn func_1() -> Struct_2 {
    var var_0 = !(!(func_2() & !func_3(Struct_3(true), Struct_3(false), u_input.b.x)));
    var var_1 = -select(u_input.b.yy, firstTrailingBit(~u_input.b.zx), !any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true))));
    var var_2 = _wgslsmith_mult_vec2_i32(~_wgslsmith_div_vec2_i32(vec2<i32>(abs(var_1.x), u_input.a), u_input.b.zz), _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b.xy, countOneBits(vec2<i32>(var_1.x, u_input.c))), u_input.b.zz));
    var var_3 = 561f;
    let var_4 = !(all(vec4<bool>(true, true, true, true)) || !any(vec4<bool>(true, false, false, true)));
    return Struct_2(Struct_1(_wgslsmith_clamp_i32(var_2.x, 1i, var_1.x)), u_input.d, select(vec4<bool>(!var_4 | select(false, false, var_4), select(var_4, var_4, var_4), func_2(), true), !vec4<bool>(var_4, false, false, true), var_4));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: vec2<u32>) -> bool {
    var var_0 = Struct_3(true);
    global0 = -arg_0.a.a;
    var_0 = Struct_3(true);
    var var_1 = _wgslsmith_add_u32(~(~_wgslsmith_mult_u32(19746u, 3165u)), arg_1.x) >> (arg_0.b % 32u);
    let var_2 = Struct_1(~u_input.b.x);
    return arg_0.c.x && false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(false);
    var var_1 = vec4<u32>(~(~abs(~u_input.d)), 0u, ~u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.d, ~u_input.d) & vec3<u32>(u_input.d, 1u, 1u), vec3<u32>(u_input.d, min(u_input.d, 1u), u_input.d ^ 1u) & (_wgslsmith_clamp_vec3_u32(vec3<u32>(8818u, 32212u, 54295u), vec3<u32>(u_input.d, 51340u, 4294967295u), vec3<u32>(4294967295u, 24049u, 37707u)) | max(vec3<u32>(4294967295u, 29298u, 32156u), vec3<u32>(17353u, 0u, 38584u)))));
    var_0 = Struct_3(any(select(select(select(vec3<bool>(var_0.a, true, var_0.a), vec3<bool>(var_0.a, var_0.a, false), vec3<bool>(var_0.a, false, true)), !vec3<bool>(var_0.a, true, false), vec3<bool>(var_0.a, var_0.a, var_0.a)), vec3<bool>(u_input.c >= u_input.b.x, !var_0.a, !var_0.a), any(vec2<bool>(true, true)))));
    var var_2 = Struct_2(Struct_1(u_input.c), ~4294967295u >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.x, 4294967295u, 58333u, var_1.x), vec4<u32>(47183u, ~0u, _wgslsmith_add_u32(1054u, u_input.d), min(0u, 117641u))) % 32u), select(vec4<bool>(!(!var_0.a), select(57854u, 1u, true) > u_input.d, var_0.a, var_0.a), select(vec4<bool>(true, true, true, true), select(vec4<bool>(var_0.a, true, false, var_0.a), !vec4<bool>(false, var_0.a, false, var_0.a), vec4<bool>(false, true, false, true)), !(!vec4<bool>(false, false, false, var_0.a))), !func_5(func_1(), ~vec2<u32>(115931u, 4294967295u), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1066f, -362f), vec2<f32>(-2472f, -340f))), vec2<u32>(42763u, u_input.d))));
    let var_3 = _wgslsmith_div_vec3_i32(-(~(~vec3<i32>(-4094i, -35401i, -443i))) & u_input.b, -_wgslsmith_mult_vec3_i32(vec3<i32>(1i, var_2.a.a << (0u % 32u), u_input.c), u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_u32(~0u, 4294967295u, 4294967295u) << (_wgslsmith_mod_u32(~var_1.x & var_1.x, ~4294967295u) % 32u), 43597i, abs(-select(vec2<i32>(var_2.a.a, 1i), vec2<i32>(u_input.a, 2147483647i), false)) << (var_1.yw % vec2<u32>(32u)), var_2.b, 654f);
}

