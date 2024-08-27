struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec2<u32>;

var<private> global2: i32 = 1i;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<bool>) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - -1471f));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: bool, arg_3: vec3<u32>) -> u32 {
    var var_0 = Struct_2(vec3<bool>(_wgslsmith_f_op_f32(func_3(vec3<f32>(345f, arg_1, arg_1), vec2<bool>(false, arg_2))) >= 533f, true, true), ~max(firstTrailingBit(~vec3<u32>(56302u, 0u, 95480u)), ~u_input.d));
    let var_1 = Struct_1(vec4<f32>(arg_1, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-883f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1)) + 1000f)), arg_1), arg_3.x, arg_0 & any(vec4<bool>(arg_2 || false, false, !var_0.a.x, arg_0 & true)));
    let var_2 = var_1;
    global1 = _wgslsmith_sub_vec2_u32(abs(max(global0.yx ^ u_input.d.xx, vec2<u32>(arg_3.x, var_0.b.x) << (vec2<u32>(global1.x, 10595u) % vec2<u32>(32u)))), var_0.b.xy) >> (var_0.b.yy % vec2<u32>(32u));
    global2 = u_input.c;
    return var_2.b;
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_div_vec3_u32(~u_input.d, u_input.d);
    var var_1 = vec3<bool>(false, true, true);
    var_0 = _wgslsmith_clamp_vec3_u32(u_input.d, vec3<u32>(abs(31115u), _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 0u), reverseBits(vec2<u32>(0u, u_input.d.x))), 24204u), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.d.x, u_input.d.x, 34858u), u_input.d), u_input.d | ~vec3<u32>(global0.x, 4294967295u, 16352u))) ^ firstTrailingBit(vec3<u32>(_wgslsmith_clamp_u32(0u, 1u, 4294967295u) >> (~20330u % 32u), 37370u, 97201u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 4294967295u, 8130u), vec3<u32>(4294967295u, 0u, 28340u)) % 32u)));
    let var_2 = 23278u;
    global0 = vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.d.zx, global0.zy), min(var_2, var_2), ~func_2(true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2776f), _wgslsmith_f_op_f32(f32(-1f) * -898f))), true, _wgslsmith_mult_vec3_u32(u_input.d, ~u_input.d)));
    return Struct_2(vec3<bool>(any(select(vec2<bool>(var_1.x, true), select(vec2<bool>(false, var_1.x), var_1.yx, var_1.x), !var_1.yy)), any(select(vec4<bool>(var_1.x, var_1.x, false, false), vec4<bool>(var_1.x, false, false, true), false)) && true, true == any(vec3<bool>(var_1.x, var_1.x, false))), _wgslsmith_sub_vec3_u32(reverseBits(~u_input.d >> (vec3<u32>(4294967295u, 52277u, 24100u) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.d.xx, vec2<u32>(9377u, 1u)), 50138u), _wgslsmith_add_u32(33453u, global1.x), global1.x)));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec2<i32>) -> StorageBuffer {
    global0 = u_input.d;
    var var_0 = Struct_3(global0.x, arg_0, global1.x);
    global0 = firstLeadingBit(u_input.d);
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(2732f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(366f * 1000f)))), _wgslsmith_f_op_f32(abs(-181f)), 1f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(2483f, -1890f)))))));
    global0 = var_0.b.b;
    return StorageBuffer(_wgslsmith_sub_i32(-2147483647i, min(u_input.b, _wgslsmith_add_i32(arg_2.x, u_input.b))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-402f * var_1.x) * _wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + var_1.x) - _wgslsmith_f_op_f32(f32(-1f) * -266f))), _wgslsmith_f_op_f32(abs(1999f)), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - -2641f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.x - var_1.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_vec3_u32(u_input.d, u_input.d);
    let var_0 = vec4<bool>(false, true, !(!(~global1.x == ~u_input.d.x)), true);
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(211f, 1558f, -960f, -1000f)))))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-139f)))), _wgslsmith_f_op_f32(200f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(693f + -628f))), _wgslsmith_f_op_f32(f32(-1f) * -333f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-933f * _wgslsmith_f_op_f32(-2205f - -438f))))));
    var var_2 = countOneBits(_wgslsmith_mult_vec3_i32(max(-vec3<i32>(-2147483647i, -2147483647i, 13507i) & ~vec3<i32>(u_input.b, 7262i, 1i), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a, u_input.a), vec3<i32>(u_input.c, u_input.c, u_input.a)), u_input.a & u_input.a, -1i)), _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, 1411i, 54887i) & vec3<i32>(0i, 2147483647i, 39615i), firstLeadingBit(vec3<i32>(u_input.c, u_input.b, u_input.c))), vec3<i32>(1i & u_input.a, _wgslsmith_mult_i32(u_input.b, 1i), ~u_input.b))));
    let var_3 = select(var_0.yx, var_0.yw, var_0.xy);
    global2 = 13006i;
    var var_4 = ~u_input.d.x;
    var var_5 = 13998u;
    var var_6 = -10032i;
    let x = u_input.a;
    s_output = func_4(func_1(), -38689i, ~(~var_2.yy));
}

