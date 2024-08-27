struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: bool,
    d: vec3<i32>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: f32,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> vec2<i32> {
    let var_0 = vec2<bool>(true, false);
    let var_1 = global0.c;
    let var_2 = !(!vec2<bool>(!(1175f == global0.c), var_0.x | (false && var_0.x)));
    var var_3 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(24604u, u_input.a, u_input.a)), u_input.a), 78054u) >> (_wgslsmith_mod_u32(countOneBits(max(~1u, ~u_input.a)), ~_wgslsmith_clamp_u32(~8017u, 0u, u_input.a)) % 32u);
    let var_4 = global0.b.x;
    return _wgslsmith_add_vec2_i32(-(~(~vec2<i32>(-1i, -30827i))), global0.b & abs(_wgslsmith_sub_vec2_i32(-global0.a, ~vec2<i32>(-2147483647i, 2147483647i))));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_3) -> vec2<i32> {
    let var_0 = func_2();
    global0 = Struct_4(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(var_0.x | 36553i, -26335i << (arg_2.x % 32u)), -7398i), firstTrailingBit(vec2<i32>(firstTrailingBit(var_0.x), 22997i))), global0.b, 1147f);
    let var_1 = arg_3;
    let var_2 = arg_3;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -164f) * -828f), 634f)));
    return _wgslsmith_div_vec2_i32(select(~(~var_2.d.xx), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(5198i, -8940i, var_1.a, -1179i), _wgslsmith_add_vec4_i32(vec4<i32>(1i, var_2.d.x, -50494i, global0.b.x), vec4<i32>(global0.b.x, -22944i, arg_3.d.x, 64158i))), -arg_1.a >> (68103u % 32u)), arg_3.e), global0.b << (arg_2.wy % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(select(firstLeadingBit(vec2<i32>(-2147483647i, global0.a.x)) >> ((_wgslsmith_sub_vec2_u32(vec2<u32>(20803u, u_input.a), vec2<u32>(u_input.a, u_input.a)) & _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 8984u), vec2<u32>(u_input.a, 92963u))) % vec2<u32>(32u)), global0.b & global0.a, false), func_1(~(~(~vec2<u32>(29813u, u_input.a))), Struct_1(_wgslsmith_sub_i32(-global0.b.x, i32(-1i) * -6422i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(step(global0.c, -201f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1025f, global0.c, global0.c)))), 42858u, vec4<f32>(_wgslsmith_f_op_f32(-global0.c), -546f, 573f, _wgslsmith_f_op_f32(f32(-1f) * -749f))), abs(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) << (vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a) % vec4<u32>(32u))), Struct_3(global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c * 119f)), true, select(vec3<i32>(global0.b.x, -2147483647i, 1i), ~vec3<i32>(0i, 2147483647i, -1i), vec3<bool>(true, true, true)), vec2<bool>(true, true))), global0.c);
    let var_0 = Struct_5(_wgslsmith_div_i32(~global0.b.x, global0.a.x) <= ~(-2147483647i));
    var var_1 = Struct_4(-_wgslsmith_clamp_vec2_i32(global0.b, global0.a, -vec2<i32>(global0.b.x, -60813i)), -(~select(vec2<i32>(30430i, 48447i) >> (vec2<u32>(u_input.a, 19520u) % vec2<u32>(32u)), global0.a, select(vec2<bool>(true, var_0.a), vec2<bool>(true, var_0.a), vec2<bool>(false, false)))), 620f);
    var var_2 = Struct_2(vec4<f32>(1603f, _wgslsmith_f_op_f32(1000f - -739f), 934f, global0.c));
    global0 = Struct_4(_wgslsmith_sub_vec2_i32(var_1.a, select(global0.a, firstTrailingBit(vec2<i32>(global0.b.x, 257i)), !(u_input.a != 3105u))), var_1.a, 863f);
    let var_3 = vec4<i32>(global0.b.x, 2147483647i, ~(-global0.a.x), var_1.a.x);
    var var_4 = Struct_4(_wgslsmith_mod_vec2_i32(vec2<i32>(var_3.x | global0.b.x, var_3.x) ^ vec2<i32>(_wgslsmith_clamp_i32(var_1.b.x, var_1.b.x, var_1.b.x), 2147483647i), ~(-var_3.zw) >> (~select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(12090u, u_input.a), false) % vec2<u32>(32u))), var_3.wy, 874f);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, _wgslsmith_div_vec4_i32(~vec4<i32>(-global0.b.x, var_4.a.x, ~(-21549i), _wgslsmith_mult_i32(-9610i, var_3.x)), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(var_3, vec4<i32>(var_4.b.x, 0i, var_4.a.x, 9598i)) ^ reverseBits(vec4<i32>(1541i, global0.a.x, -1i, var_1.a.x)), countOneBits(vec4<i32>(var_3.x, 0i, -2147483647i, var_3.x) >> (vec4<u32>(u_input.a, u_input.a, u_input.a, 1u) % vec4<u32>(32u))))), var_2.a, vec3<f32>(-416f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_4.c)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2092f - -761f) + _wgslsmith_f_op_f32(sign(var_4.c)))), var_2.a.x));
}

