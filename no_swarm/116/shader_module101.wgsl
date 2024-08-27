struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec3<u32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    let var_0 = vec2<u32>(u_input.b.x, ~(u_input.b.x & _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(u_input.a, u_input.a, 40984u, global0.x)), vec4<u32>(global0.x, 4294967295u, u_input.a, 1u))));
    let var_1 = Struct_2(~countOneBits(vec2<u32>(~11178u, ~u_input.a)), Struct_1(u_input.c.x, _wgslsmith_div_vec4_u32(vec4<u32>(47716u, min(30273u, 5411u), ~var_0.x, 0u), vec4<u32>(~var_0.x, reverseBits(var_0.x), var_0.x, global0.x)), 4714i, ~_wgslsmith_mod_i32(_wgslsmith_div_i32(arg_0.x, arg_0.x), arg_0.x)), u_input.b, arg_0, vec3<i32>(select(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(2147483647i, u_input.c.x), select(u_input.d.x, arg_0.x, true), u_input.d.x), ~countOneBits(-1i), true), u_input.c.x, countOneBits(select(select(-31268i, -15010i, true), 2147483647i, select(true, false, false)))));
    global0 = ~select(u_input.b.yxw, vec3<u32>(~_wgslsmith_div_u32(u_input.a, global0.x), firstLeadingBit(u_input.b.x), reverseBits(abs(81121u))), _wgslsmith_mult_i32(u_input.c.x, _wgslsmith_mult_i32(-1i, -8722i)) < _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(arg_0, arg_0), var_1.d));
    let var_2 = abs(var_1.c.x);
    global0 = vec3<u32>(~1u, var_0.x, _wgslsmith_add_u32(u_input.b.x, global0.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1200f + _wgslsmith_f_op_f32(abs(-1409f))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-850f * -328f), 1f)))));
}

fn func_2() -> u32 {
    global0 = u_input.b.ywy;
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(_wgslsmith_mod_vec2_i32(select(vec2<i32>(u_input.d.x, u_input.c.x), vec2<i32>(u_input.c.x, 0i), vec2<bool>(true, false)), -vec2<i32>(-6133i, 1i)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(455f, 426f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1008f, -1532f)))))), 1074f));
    let var_1 = -241f;
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), -1824f, any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), true)))), var_1));
    let var_3 = var_2.x;
    return u_input.a;
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0))))), arg_0));
    global0 = vec3<u32>(~(0u | u_input.a), func_2(), _wgslsmith_clamp_u32(~arg_1.x >> (max(arg_1.x, u_input.b.x) % 32u), ~4294967295u, 39801u)) | vec3<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(~global0.x, ~1u), _wgslsmith_sub_u32(1u, arg_1.x)), max((arg_1.x >> (u_input.a % 32u)) >> (~global0.x % 32u), ~u_input.b.x >> (u_input.b.x % 32u)), u_input.b.x);
    global0 = ~arg_1;
    let var_1 = ~vec2<i32>(1i ^ _wgslsmith_clamp_i32(abs(1i), u_input.c.x, u_input.c.x & 4604i), reverseBits(firstTrailingBit(~2147483647i)));
    global0 = ~u_input.b.yxz & u_input.b.zwx;
    return Struct_1(-2147483647i, ~_wgslsmith_div_vec4_u32(u_input.b, abs(u_input.b)), -43092i, -23356i);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2) -> u32 {
    global0 = _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, arg_1.a.x, ~(countOneBits(global0.x) & 1u)), u_input.b.yyy);
    let var_0 = arg_0;
    global0 = (u_input.b.wzw >> (u_input.b.wxx % vec3<u32>(32u))) & arg_1.c.zwy;
    var var_1 = arg_1;
    global0 = u_input.b.yxx;
    return _wgslsmith_sub_u32(func_2() ^ ~11768u, ~(~var_1.b.b.x & (32451u << (u_input.a % 32u)))) & arg_1.b.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(_wgslsmith_mult_u32(min(abs(_wgslsmith_mult_u32(u_input.a, u_input.b.x)), global0.x), func_4(vec3<bool>(true, true, true), Struct_2(global0.xy, func_1(2216f, u_input.b.xzw, vec4<bool>(true, true, false, true)), select(u_input.b, u_input.b, vec4<bool>(true, true, true, false)), vec2<i32>(1i, u_input.c.x), u_input.d))), global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec4<i32>(u_input.c.x, 8666i, _wgslsmith_clamp_i32(-2147483647i, -2147483647i, -39997i), u_input.c.x)), 0i);
}

