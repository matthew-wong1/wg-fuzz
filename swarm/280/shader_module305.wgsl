struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_5;

var<private> global2: array<Struct_4, 20>;

var<private> global3: Struct_4;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> u32 {
    var var_0 = global3.a.b;
    let var_1 = global3.a;
    let var_2 = Struct_4(global3.a, _wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(var_1.b.a, ~vec3<u32>(32581u, 0u, global3.b)), reverseBits(~global1.a)));
    global3 = Struct_4(var_2.a, _wgslsmith_add_u32(_wgslsmith_mult_u32(~(~var_1.b.a.x), 0u), _wgslsmith_div_u32(_wgslsmith_div_u32(var_2.a.b.a.x, 27386u), max(~15654u, 62378u))));
    let var_3 = !any(!(!select(vec4<bool>(var_0.b, false, global3.a.b.b, var_1.b.b), vec4<bool>(false, var_2.a.b.b, true, false), vec4<bool>(var_1.b.b, false, false, true))));
    return u_input.a;
}

fn func_2() -> Struct_1 {
    let var_0 = global3.a.b.a;
    global0 = u_input.e.x ^ -1i;
    global1 = Struct_5(_wgslsmith_clamp_u32(_wgslsmith_add_u32(~20576u, abs(firstTrailingBit(1u))), 114782u, _wgslsmith_sub_u32(_wgslsmith_add_u32(var_0.x, 13403u), ~_wgslsmith_div_u32(28157u, 4294967295u))));
    return Struct_1(~vec3<u32>(63431u, ~(~var_0.x), _wgslsmith_clamp_u32(0u, func_3(), ~var_0.x)), all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(global3.a.b.c)))))), _wgslsmith_mod_u32(reverseBits(~0u), u_input.a));
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = abs(_wgslsmith_clamp_u32(~_wgslsmith_sub_u32(_wgslsmith_sub_u32(4294967295u, global1.a), 1u), global1.a, u_input.d.x));
    global2 = array<Struct_4, 20>();
    let var_1 = global3.a;
    global2 = array<Struct_4, 20>();
    let var_2 = vec2<i32>(firstTrailingBit(-1735i), _wgslsmith_clamp_i32(u_input.e.x, u_input.c.x, ~_wgslsmith_dot_vec2_i32(-arg_0, _wgslsmith_mult_vec2_i32(vec2<i32>(-28136i, 1i), arg_0))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-u_input.b.xy);
    var var_1 = Struct_5(66764u);
    let var_2 = u_input.c.x;
    let var_3 = ~func_2().d;
    global1 = Struct_5(firstLeadingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(global3.a.b.a.zy, _wgslsmith_mod_vec2_u32(var_0.a.zx, u_input.d)), vec2<u32>(_wgslsmith_mult_u32(u_input.a, 0u), _wgslsmith_sub_u32(global3.a.b.d, var_3)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1150f, -381f, -1750f, 743f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1305f, 211f, -673f, 263f), vec4<f32>(-483f, var_0.c, 817f, -694f)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-370f, var_0.c, -368f, var_0.c))))))), ~(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(u_input.e, vec2<i32>(u_input.c.x, -1i)), firstTrailingBit(u_input.c.zz)) ^ vec2<i32>(var_2, _wgslsmith_add_i32(-55419i, -29318i))));
}

