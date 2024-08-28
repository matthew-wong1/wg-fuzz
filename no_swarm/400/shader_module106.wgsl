struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(12632u));

var<private> global1: vec4<i32>;

var<private> global2: u32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    var var_0 = select(global1.yz ^ vec2<i32>(firstLeadingBit(u_input.b.x), _wgslsmith_dot_vec2_i32(global1.yy, vec2<i32>(u_input.b.x, 0i))), abs(vec2<i32>(-17678i, 32759i) ^ -vec2<i32>(-60265i, global1.x)), true) & _wgslsmith_clamp_vec2_i32(~firstLeadingBit(u_input.b) | reverseBits(u_input.a.yz), firstTrailingBit(global1.xz), u_input.a.xy);
    global2 = 1u;
    var var_1 = Struct_2(Struct_1(reverseBits(1u)));
    global0 = Struct_2(Struct_1(_wgslsmith_mod_u32(12826u, arg_0.a)));
    var var_2 = Struct_1(0u);
    return Struct_2(var_1.a);
}

fn func_1() -> Struct_2 {
    let var_0 = func_2(global0.a, Struct_1(0u));
    let var_1 = func_2(func_2(func_2(var_0.a, func_2(global0.a, var_0.a).a).a, Struct_1(1u)).a, global0.a);
    var var_2 = true;
    var var_3 = 4294967295u;
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-395f, -206f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1218f, -1000f))), -1343f, _wgslsmith_f_op_f32(floor(-802f)))));
    return func_2(Struct_1(~var_0.a.a), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.a, global0.a.a, global0.a.a, 4294967295u) << (vec4<u32>(var_1.a.a, 29580u, 1u, 1u) % vec4<u32>(32u)), vec4<u32>(~global0.a.a, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.a, 0u, 107100u), vec3<u32>(9646u, var_0.a.a, var_1.a.a)), ~var_0.a.a, 30697u << (global0.a.a % 32u)))));
}

fn func_3() -> u32 {
    let var_0 = ~(~_wgslsmith_div_vec4_u32(vec4<u32>(22180u, global0.a.a, 1u, global0.a.a & 69071u), vec4<u32>(4899u, global0.a.a, global0.a.a, global0.a.a) << ((vec4<u32>(13418u, 1u, global0.a.a, global0.a.a) & vec4<u32>(0u, global0.a.a, 0u, global0.a.a)) % vec4<u32>(32u))));
    var var_1 = global0.a;
    let var_2 = _wgslsmith_add_vec2_i32(global1.yy, global1.yy);
    global1 = -_wgslsmith_mod_vec4_i32(-abs(abs(vec4<i32>(u_input.b.x, 2147483647i, global1.x, global1.x))), vec4<i32>(_wgslsmith_mod_i32(-17075i << (1u % 32u), firstTrailingBit(-2147483647i)), _wgslsmith_dot_vec2_i32(-vec2<i32>(-14773i, var_2.x), _wgslsmith_clamp_vec2_i32(var_2, vec2<i32>(1i, 1i), var_2)), -2147483647i, global1.x));
    global0 = Struct_2(global0.a);
    return _wgslsmith_div_u32(37458u, 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = func_2(global0.a, Struct_1(_wgslsmith_mult_u32(23297u, global0.a.a)));
    global0 = func_2(Struct_1(4294967295u), Struct_1(~var_0.a.a));
    global2 = func_2(var_0.a, func_2(func_2(func_2(Struct_1(var_0.a.a), func_2(Struct_1(8828u), Struct_1(1u)).a).a, func_2(Struct_1(10835u), var_0.a).a).a, Struct_1(var_0.a.a)).a).a.a;
    let var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(1000f)), 893f, _wgslsmith_f_op_f32(-1102f + 536f))))), vec4<u32>(var_0.a.a, 4294967295u, ~(_wgslsmith_dot_vec4_u32(vec4<u32>(40473u, 0u, var_0.a.a, global0.a.a), vec4<u32>(1u, 0u, var_0.a.a, 0u)) | 0u), min(_wgslsmith_clamp_u32(var_0.a.a, global0.a.a, 58823u), func_3()) >> (~1u % 32u)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-819f)))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1214f, -839f), -1749f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-184f + -2121f)))))), _wgslsmith_dot_vec4_i32(reverseBits(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(u_input.a.x, global1.x, global1.x, u_input.c), vec4<i32>(-2147483647i, u_input.a.x, 8773i, global1.x), var_1), ~vec4<i32>(-14758i, u_input.c, 1i, 2147483647i), vec4<i32>(0i, -2147483647i, 2147483647i, -39622i))), firstTrailingBit(-vec4<i32>(global1.x, 1i, u_input.a.x, global1.x))), 1u);
}

