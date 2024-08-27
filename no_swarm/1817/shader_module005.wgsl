struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: vec2<u32>,
    d: Struct_2,
    e: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2() -> Struct_2 {
    var var_0 = global1.b;
    var var_1 = vec2<u32>(abs(~var_0.c.x), 52222u);
    global1 = Struct_2(Struct_1(2147483647i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-220f, 130f)))) != -688f, ~(~global1.a.c), -34992i), Struct_1(~(~(global1.b.a << (var_0.c.x % 32u))), false, firstLeadingBit(global1.a.c), _wgslsmith_clamp_i32(2147483647i, 1183i, global1.c.a)), global1.a, global1.d);
    global1 = Struct_2(global1.a, global1.a, Struct_1(_wgslsmith_sub_i32(-_wgslsmith_mod_i32(u_input.a, 2147483647i), _wgslsmith_mult_i32(global1.a.a, _wgslsmith_dot_vec2_i32(global1.d, global1.d))), !(!any(vec4<bool>(global1.c.b, var_0.b, var_0.b, var_0.b))), _wgslsmith_mult_vec3_u32(vec3<u32>(22898u, _wgslsmith_mult_u32(global1.b.c.x, var_1.x), select(1u, 1u, var_0.b)), vec3<u32>(select(var_0.c.x, var_0.c.x, global1.c.b), ~global1.c.c.x, 4294967295u)), _wgslsmith_sub_i32(~(2147483647i | global1.c.a), reverseBits(2147483647i & var_0.a))), global1.d);
    var var_2 = 40362i;
    return Struct_2(global1.a, Struct_1(var_0.a, false, ~var_0.c, -_wgslsmith_clamp_i32(_wgslsmith_mult_i32(global1.a.d, global1.c.d), -41962i, i32(-1i) * -66869i)), Struct_1(-_wgslsmith_mult_i32(1i, 1i), all(vec3<bool>(global1.c.b, -2147483647i == u_input.a, global1.b.b | false)), vec3<u32>(var_1.x, _wgslsmith_mult_u32(global1.b.c.x, var_0.c.x), 1u), global1.b.d), abs(global1.d) << (global1.c.c.xz % vec2<u32>(32u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: vec2<u32>) -> f32 {
    global0 = arg_0.d;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-334f, -777f))))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2204f, 1085f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -323f)))));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: bool) -> Struct_2 {
    global0 = ~select(select(global1.d.x, abs(func_2().c.d), true), (_wgslsmith_div_i32(17893i, global1.d.x) >> (firstTrailingBit(14934u) % 32u)) << (16851u % 32u), !arg_2);
    var var_0 = Struct_4(1f, countOneBits(max(-vec4<i32>(-6473i, -1i, global1.c.a, global1.a.d) >> (vec4<u32>(global1.b.c.x, 1u, global1.a.c.x, 4294967295u) % vec4<u32>(32u)), vec4<i32>(0i, u_input.a & u_input.a, -2147483647i, 0i))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(746f)))), _wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1101f)))), arg_1.x));
    var var_1 = 0u;
    let var_2 = true || arg_2;
    let var_3 = Struct_4(702f, var_0.b, _wgslsmith_f_op_vec3_f32(-var_0.c));
    return Struct_2(global1.b, Struct_1(var_0.b.x, global1.c.c.x < 35153u, global1.a.c << (global1.a.c % vec3<u32>(32u)), firstLeadingBit(1i)), func_2().a, -vec2<i32>(_wgslsmith_div_i32(global1.a.a, var_3.b.x), 2147483647i));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec2<i32>) -> vec4<f32> {
    global1 = func_4(select(vec2<bool>(false, true), vec2<bool>(global1.a.b, !(!arg_1.b)), global1.b.b), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1216f, 2344f, 357f, 258f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-615f, -1178f, -396f, -707f) * vec4<f32>(-726f, 1000f, 635f, -451f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1066f, 737f, 708f, 499f)) * vec4<f32>(1000f, 1814f, 641f, 623f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-338f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1498f), 1726f, true)), _wgslsmith_f_op_f32(func_3(Struct_1(global1.b.a, false, global1.c.c, -56412i), func_2(), vec4<bool>(true, false, false, arg_1.b), vec2<u32>(global1.b.c.x, global1.a.c.x)))), !(!(!vec4<bool>(false, arg_1.b, global1.a.b, false))))), !(select(global1.b.b, global1.a.b, false) && arg_1.b));
    global0 = min(~arg_0, 1481i);
    global0 = _wgslsmith_sub_i32(1i, _wgslsmith_dot_vec4_i32(min(select(~vec4<i32>(37144i, arg_0, 0i, 57653i), -vec4<i32>(-2147483647i, -1i, arg_0, 2147483647i), vec4<bool>(true, true, true, true)), firstTrailingBit(vec4<i32>(u_input.a, global1.a.a, -2147483647i, 1i))), select(_wgslsmith_sub_vec4_i32(-vec4<i32>(-18340i, u_input.a, arg_1.a, -2534i), min(vec4<i32>(1i, global1.a.d, arg_0, 15351i), vec4<i32>(-2147483647i, u_input.a, -34613i, -1i))), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-49404i, arg_1.a, u_input.a, -68520i), vec4<i32>(1i, u_input.a, u_input.a, 0i)), !vec4<bool>(arg_1.b, false, true, global1.a.b))));
    var var_0 = Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(arg_1, func_2(), !vec4<bool>(false, true, global1.a.b, false), ~_wgslsmith_mult_vec2_u32(arg_1.c.zz, vec2<u32>(arg_1.c.x, 0u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1455f, 2393f) + -632f)))), vec4<i32>(-1i) * -abs(vec4<i32>(u_input.a, global1.d.x, arg_2.x, -1i) & vec4<i32>(arg_2.x, global1.a.d, 33744i, u_input.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -799f, 749f)) + vec3<f32>(-631f, -351f, 1980f))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-549f, -169f)) - 123f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1240f - -836f), 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1383f + 1000f)))));
    let var_1 = Struct_1(_wgslsmith_mod_i32(-4986i, var_0.b.x) << (~(_wgslsmith_mult_u32(global1.c.c.x, global1.b.c.x) & max(arg_1.c.x, 10949u)) % 32u), false, global1.c.c, 9419i);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.c.x, var_0.c.x, var_0.a, -407f))), vec4<f32>(894f, 246f, 294f, var_0.a)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(1123f + -366f), _wgslsmith_f_op_f32(f32(-1f) * -283f), var_0.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1.b.d << (global1.a.c.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(func_1(~min(u_input.a, 1i) >> (global1.c.c.x % 32u), global1.b, global1.d)), _wgslsmith_f_op_f32(sign(1000f)), -252f);
}

