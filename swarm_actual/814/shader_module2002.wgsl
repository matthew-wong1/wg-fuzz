struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 5480u;

var<private> global1: Struct_2;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = global1.c;
    global0 = ~global1.a.b << (1u % 32u);
    var var_1 = global1.b;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -260f) - _wgslsmith_f_op_f32(f32(-1f) * -556f)) - -202f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(767f, -924f)) - -2397f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1235f * 2041f))));
    var_1 = global1.b;
    return ~13010u;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(global1.b, global1.a, global1.a.a.x);
    global1 = Struct_2(Struct_1(!global1.b.a, 36344u, select(_wgslsmith_mod_vec4_i32(-vec4<i32>(global1.a.c.x, -33715i, var_0.a.c.x, u_input.c.x), -global1.a.c), var_0.b.c, select(!vec4<bool>(global1.a.a.x, false, global1.b.a.x, true), !global1.b.a, any(vec2<bool>(false, global1.c))))), var_0.a, any(var_0.a.a.wyy));
    let var_1 = vec4<i32>(firstTrailingBit(~(-23982i)), -(~2147483647i), 0i, -abs(i32(-1i) * -global1.a.c.x));
    var var_2 = ~u_input.a.x;
    global1 = Struct_2(Struct_1(global1.a.a, ~0u, ~vec4<i32>(_wgslsmith_sub_i32(-2147483647i, u_input.c.x), ~var_1.x, 1i, _wgslsmith_clamp_i32(var_1.x, var_1.x, -20230i))), global1.a, false);
    return Struct_1(global1.a.a, func_3(0u), vec4<i32>(-1i) * -(~countOneBits(vec4<i32>(1i, var_1.x, 1i, 0i))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = firstLeadingBit(1u);
    var var_1 = func_2();
    let var_2 = func_2();
    var_1 = func_2();
    let var_3 = var_2.a;
    return func_2();
}

fn func_5(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: i32) -> vec4<bool> {
    let var_0 = abs(vec4<u32>(global1.a.b, countOneBits(35594u), global1.b.b, ~reverseBits(u_input.a.x) >> (_wgslsmith_clamp_u32(~1u, 1u, arg_2.b) % 32u)));
    global0 = u_input.b.x;
    global0 = var_0.x;
    global0 = _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(var_0.zy, ~_wgslsmith_mod_vec2_u32(vec2<u32>(17129u, 52141u) << (u_input.a.zy % vec2<u32>(32u)), u_input.a.yy)), ~(~u_input.a.zz));
    global0 = u_input.a.x;
    return global1.a.a;
}

fn func_1() -> Struct_2 {
    global0 = 12480u;
    var var_0 = Struct_1(select(vec4<bool>(global1.c, all(global1.b.a.zy), global1.a.a.x, all(!global1.b.a)), select(!select(vec4<bool>(global1.b.a.x, true, global1.b.a.x, global1.a.a.x), global1.b.a, vec4<bool>(true, global1.a.a.x, global1.b.a.x, true)), global1.b.a, true), func_5(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(2276f, -1437f) + vec2<f32>(-596f, 1288f)))), _wgslsmith_sub_vec3_i32(global1.b.c.wzx, global1.b.c.xwz), func_4(u_input.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(416f, 1096f)), func_2()), u_input.c.x)), 0u, global1.b.c);
    let var_1 = global1.a;
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -210f)));
    var var_3 = Struct_2(Struct_1(vec4<bool>(!global1.b.a.x, !any(vec4<bool>(global1.c, var_1.a.x, var_1.a.x, false)), true | all(global1.a.a.xw), var_1.a.x == var_0.a.x), _wgslsmith_div_u32(firstTrailingBit(u_input.b.x), var_1.b) & var_0.b, -vec4<i32>(-1i, -1i, 47774i, var_1.c.x)), global1.a, func_4(u_input.b, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(720f))), _wgslsmith_f_op_f32(trunc(1187f))), Struct_1(var_0.a, global1.b.b, var_0.c)).a.x);
    return Struct_2(Struct_1(!vec4<bool>(select(var_0.a.x, true, var_0.a.x), !var_3.a.a.x, true, true), 1u, min(var_1.c, select(countOneBits(var_1.c), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 2147483647i, u_input.c.x, global1.b.c.x), vec4<i32>(u_input.c.x, -63998i, 1i, var_3.a.c.x)), func_2().a))), func_2(), all(func_4(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, global1.a.b) & u_input.b, select(u_input.b, vec2<u32>(6927u, global1.a.b), var_1.a.yz)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-210f, -825f)))), global1.a).a.yzx));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    global1 = func_1();
    let var_0 = ~0u;
    let var_1 = func_1();
    global0 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b.c.x, u_input.c.x), global1.b.c.yw) >> (global1.b.b % 32u), _wgslsmith_dot_vec4_i32(global1.a.c, reverseBits(var_1.a.c))) ^ global1.b.c.x, reverseBits(var_1.b.b));
}

