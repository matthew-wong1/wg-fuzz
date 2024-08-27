struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    global0 = Struct_1(~(_wgslsmith_add_u32(_wgslsmith_add_u32(global0.c.x, 38106u), firstTrailingBit(0u)) >> (global0.c.x % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global0.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, global0.b.x, -432f))))), global0.c);
    global0 = Struct_1(max(global0.a, ~0u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global0.b, global0.b, select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)))) + global0.b) - vec3<f32>(global0.b.x, -688f, 601f)), countOneBits(global0.c));
    global0 = Struct_1(_wgslsmith_sub_u32(global0.a, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(global0.a, 54763u, global0.c.x, global0.a), vec4<u32>(52065u, 54694u, 106612u, 31370u) & vec4<u32>(global0.c.x, global0.c.x, global0.c.x, global0.c.x)), vec4<u32>(global0.a, global0.a, 12991u, 0u) | vec4<u32>(global0.c.x, global0.a, 0u, global0.c.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global0.b))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(639f, -221f, -1000f))))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-486f - global0.b.x), 1131f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_f32(global0.b.x - _wgslsmith_div_f32(-1281f, 1118f)))), (min(global0.c << (global0.c % vec3<u32>(32u)), vec3<u32>(1u, global0.a, 13534u) | vec3<u32>(43837u, 4294967295u, global0.c.x)) >> (global0.c % vec3<u32>(32u))) | global0.c);
    var var_0 = Struct_2(_wgslsmith_f_op_f32(floor(-809f)));
    var var_1 = Struct_1(global0.c.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, -231f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-529f - -288f))))), vec3<u32>(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(global0.c.x, global0.c.x), global0.c.yx), _wgslsmith_add_u32(4836u, 1u), global0.c.x), select(1u, ~min(global0.c.x, global0.c.x), true), (_wgslsmith_mod_u32(global0.c.x, 1u) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(global0.a, 1u), global0.c.zx)) | max(80338u << (global0.c.x % 32u), ~75452u)));
    return ~(~_wgslsmith_div_u32(1u >> (_wgslsmith_mult_u32(var_1.c.x, 0u) % 32u), ~global0.a >> (0u % 32u)));
}

fn func_2(arg_0: vec4<bool>) -> u32 {
    global0 = Struct_1(func_3(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global0.b)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-121f, global0.b.x, global0.b.x) * global0.b))))), global0.c);
    var var_0 = arg_0.zxw;
    var_0 = vec3<bool>(_wgslsmith_add_u32(~firstTrailingBit(19575u), 18123u) > ~4294967295u, true, all(vec3<bool>(true, countOneBits(global0.a) >= min(global0.a, global0.c.x), any(!arg_0.zy))));
    global0 = Struct_1(50873u, vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x))), _wgslsmith_f_op_f32(-global0.b.x)), global0.c);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b.x + global0.b.x), 1077f)));
    return 0u;
}

fn func_1() -> vec2<i32> {
    global0 = Struct_1(0u, _wgslsmith_f_op_vec3_f32(-global0.b), countOneBits(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(firstTrailingBit(global0.c), reverseBits(global0.c)), vec3<u32>(global0.c.x, global0.c.x & 19361u, _wgslsmith_dot_vec2_u32(global0.c.yx, vec2<u32>(14754u, global0.a))))));
    var var_0 = false && (false | (-u_input.a > -firstLeadingBit(u_input.a)));
    let var_1 = Struct_1(1u, global0.b, vec3<u32>(~49214u, func_2(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), true)), firstTrailingBit(~(~1u))));
    var_0 = false;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(round(global0.b.x)));
    return vec2<i32>(52809i, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec2_i32(reverseBits(firstLeadingBit(~abs(vec2<i32>(-6439i, 21514i)))), firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(abs(-14893i), abs(u_input.a)), vec2<i32>(u_input.a, _wgslsmith_div_i32(u_input.a, u_input.a)))), _wgslsmith_div_vec2_i32(vec2<i32>(-(~2147483647i), ~(u_input.a & u_input.a)), func_1()));
    let var_1 = _wgslsmith_f_op_f32(abs(1f));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(global0.c.x, global0.c.x, global0.c.x, 1556u), countOneBits(vec4<u32>(68237u, global0.a, 4294967295u, 65674u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -882f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1)))), vec2<u32>(2299u, global0.c.x));
}

