struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec3<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: Struct_2,
    d: Struct_3,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_4,
    c: vec3<f32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(887u, 17983u, 1u, 0u);

var<private> global1: Struct_3;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_1(arg_0: i32, arg_1: Struct_4, arg_2: f32, arg_3: vec3<u32>) -> vec3<bool> {
    global0 = abs(vec4<u32>(68652u, global1.c.x ^ reverseBits(78928u), global1.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.x, 0u, arg_3.x), firstLeadingBit(global0.yxy)))) | min(firstTrailingBit(u_input.a), vec4<u32>(arg_1.d.c.x, ~arg_1.b.x, 0u >> (0u % 32u), ~global0.x) ^ countOneBits(vec4<u32>(0u, 1u, 4795u, 9705u)));
    var var_0 = true;
    global0 = u_input.a;
    let var_1 = Struct_2(arg_1.d.d.c.a.x, ~global1.d.b, arg_1.d.d.c);
    var_0 = arg_1.d.a;
    return !(!select(vec3<bool>(select(global1.a, arg_1.d.a, global1.a), any(vec4<bool>(global1.a, true, global1.b, false)), global1.a), !(!vec3<bool>(global1.b, true, arg_1.d.b)), reverseBits(0u) <= (u_input.a.x | global0.x)));
}

fn func_3(arg_0: bool, arg_1: Struct_3) -> vec4<u32> {
    let var_0 = arg_1.d.b;
    global0 = ~vec4<u32>(_wgslsmith_mult_u32(max(16208u, _wgslsmith_div_u32(4294967295u, 1u)), firstLeadingBit(~global0.x)), _wgslsmith_add_u32(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(0u, global0.x, global0.x, arg_1.c.x)) & firstTrailingBit(u_input.a.x)), 34097u, global1.c.x);
    global0 = vec4<u32>(arg_1.c.x, 84026u, 4294967295u, _wgslsmith_add_u32(firstTrailingBit(global1.c.x), ~arg_1.c.x));
    var var_1 = Struct_3(global1.b, global1.a, vec3<u32>(min(0u, global1.c.x), abs(~_wgslsmith_add_u32(arg_1.c.x, global1.c.x)), countOneBits(4294967295u)), Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-875f + -1127f)), 326f)), 24359i, Struct_1(_wgslsmith_f_op_vec4_f32(-global1.d.c.a), -vec4<i32>(global1.d.b, arg_1.d.c.b.x, 667i, var_0) << (u_input.a % vec4<u32>(32u)))));
    let var_2 = Struct_4(vec3<i32>(0i, _wgslsmith_mult_i32(countOneBits(1528i), -71190i), max(var_1.d.c.b.x >> (global1.c.x % 32u), -1i)), ~_wgslsmith_clamp_vec3_u32(var_1.c, ~arg_1.c, ~global0.www) << (_wgslsmith_mod_vec3_u32(~var_1.c, global1.c) % vec3<u32>(32u)), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(arg_1.d.c.a.x, 714f, true)), -1552f, !global1.b)), _wgslsmith_f_op_f32(var_1.d.c.a.x * _wgslsmith_f_op_f32(sign(254f)))), _wgslsmith_dot_vec3_i32(select(abs(arg_1.d.c.b.zxw), var_1.d.c.b.zzw, any(vec2<bool>(arg_0, arg_0))), _wgslsmith_add_vec3_i32(var_1.d.c.b.yzx, select(vec3<i32>(u_input.b.x, -2147483647i, -32383i), arg_1.d.c.b.xyw, vec3<bool>(arg_0, var_1.b, var_1.a)))), var_1.d.c), arg_1);
    return ~u_input.a;
}

fn func_2(arg_0: f32, arg_1: vec3<bool>) -> vec3<i32> {
    var var_0 = !(!(!arg_1.x));
    var var_1 = arg_0;
    var var_2 = ~global0.x << (u_input.a.x % 32u);
    var var_3 = vec4<i32>((i32(-1i) * -1i) ^ min(global1.d.b, select(0i, 1i, arg_1.x)), max(u_input.b.x, 0i), global1.d.c.b.x, 0i) >> (_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.a, func_3(func_1(global1.d.b, Struct_4(vec3<i32>(43026i, 2147483647i, u_input.b.x), u_input.a.ywy, global1.d, Struct_3(true, true, vec3<u32>(global0.x, global0.x, 1u), global1.d)), arg_0, vec3<u32>(17819u, 11244u, global1.c.x)).x, Struct_3(false, true, u_input.a.ywz, Struct_2(global1.d.c.a.x, -70536i, global1.d.c)))), u_input.a) % vec4<u32>(32u));
    return vec3<i32>(1i, ~(abs(global1.d.c.b.x) | 0i) >> (0u % 32u), -1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_2(1311f, select(select(vec3<bool>(false, global1.b, global1.a), vec3<bool>(global1.a, global1.a, global1.a), !vec3<bool>(global1.a, global1.a, global1.a)), vec3<bool>(false, true, false), !func_1(0i, Struct_4(vec3<i32>(-34158i, -10995i, 2147483647i), vec3<u32>(global1.c.x, 29405u, global1.c.x), Struct_2(global1.d.c.a.x, -7751i, global1.d.c), Struct_3(true, global1.a, global0.xzy, global1.d)), 882f, u_input.a.xyy))), vec3<u32>(func_3(any(!vec2<bool>(true, global1.a)), Struct_3(global1.d.b <= -27009i, global1.b, u_input.a.xzz, Struct_2(global1.d.a, global1.d.b, global1.d.c))).x, min(abs(global1.c.x), u_input.a.x), ~_wgslsmith_add_u32(u_input.a.x & 40328u, global0.x)), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.c.a.x))), ~_wgslsmith_add_i32(~u_input.b.x, 1i), global1.d.c), Struct_3(all(!(!vec4<bool>(false, global1.a, global1.a, false))), false, global1.c, global1.d));
    var var_1 = global1.a;
    global0 = ~vec4<u32>(71269u, abs(~(~42063u)), select(global0.x, u_input.a.x, var_0.d.b), firstLeadingBit(min(35700u << (global0.x % 32u), abs(93157u))));
    var var_2 = vec3<f32>(-616f, _wgslsmith_f_op_f32(-var_0.d.d.a), _wgslsmith_f_op_f32(f32(-1f) * -1329f));
    var_1 = global1.a;
    var var_3 = var_0.c;
    let var_4 = !vec4<bool>(true, true, any(select(vec2<bool>(false, var_0.d.b), vec2<bool>(false, false), func_1(1i, var_0, global1.d.a, vec3<u32>(var_0.d.c.x, 16551u, var_0.d.c.x)).yy)), var_0.d.a);
    let var_5 = !var_4;
    var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~global0.ywz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -747f)), var_0.a.x);
}

