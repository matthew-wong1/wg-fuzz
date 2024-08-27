struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec4<u32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: Struct_2,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: vec2<bool>;

var<private> global2: bool = true;

var<private> global3: bool;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec2<bool> {
    global2 = global1.x;
    var var_0 = Struct_1(global1.x);
    let var_1 = Struct_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-198f, -1000f)))) == _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -556f)));
    let var_2 = min(_wgslsmith_mult_vec3_u32((vec3<u32>(u_input.a.x, 72942u, u_input.a.x) << (vec3<u32>(u_input.a.x, 10190u, u_input.a.x) % vec3<u32>(32u))) & u_input.a, min(u_input.a, _wgslsmith_mod_vec3_u32(u_input.a, u_input.a))), vec3<u32>(_wgslsmith_add_u32(~u_input.a.x, u_input.a.x), _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), ~16578u)) | _wgslsmith_clamp_vec3_u32(~(~(vec3<u32>(u_input.a.x, 8531u, u_input.a.x) << (vec3<u32>(u_input.a.x, u_input.a.x, 0u) % vec3<u32>(32u)))), firstLeadingBit(u_input.a) & firstTrailingBit(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<u32>(countOneBits(u_input.a.x), max(7765u, u_input.a.x) << (_wgslsmith_div_u32(u_input.a.x, 3420u) % 32u), ~(~4294967295u)));
    let var_3 = !(!vec2<bool>(all(vec2<bool>(true, true)), global1.x));
    return var_3;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: vec4<u32>) -> i32 {
    var var_0 = abs(u_input.a.zy << (~arg_2.wx % vec2<u32>(32u)));
    let var_1 = Struct_4(!func_3().x);
    var_0 = vec2<u32>(~(((2597u << (0u % 32u)) & _wgslsmith_sub_u32(u_input.a.x, arg_2.x)) ^ _wgslsmith_sub_u32(var_0.x, 10780u)), _wgslsmith_mod_u32(13200u, 1u));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(3073f, 353f) * vec2<f32>(1509f, 1398f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 884f))))));
    var var_3 = vec4<u32>(62964u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(var_0.x, ~10967u), ~1u), var_0.x, _wgslsmith_mult_u32(0u, ~33916u));
    return firstLeadingBit(_wgslsmith_clamp_i32(~u_input.b, arg_0.x, -41635i));
}

fn func_2(arg_0: bool, arg_1: Struct_3) -> u32 {
    global2 = true;
    global3 = true;
    var var_0 = func_4(vec2<i32>(i32(-1i) * -15061i, ~(~(~arg_1.a.a.x))), select(vec2<bool>(arg_0, !(u_input.a.x >= arg_1.a.c.x)), vec2<bool>(any(func_3()), !all(vec3<bool>(false, false, global1.x))), !vec2<bool>(false != arg_0, !arg_1.a.d.a)), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(arg_1.c, ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), arg_1.c), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(arg_1.c, vec4<u32>(4294967295u, 4294967295u, 1u, u_input.a.x)), vec4<u32>(arg_1.a.c.x, 86611u, arg_1.a.c.x, 28244u))), vec4<u32>(~u_input.a.x, 1u, 694u, min(u_input.a.x, 0u) & _wgslsmith_sub_u32(arg_1.c.x, 0u))));
    let var_1 = arg_1;
    var var_2 = Struct_4(!(arg_1.c.x != ~abs(u_input.a.x)));
    return _wgslsmith_mod_u32(42812u, ~(~62093u & arg_1.a.c.x) << (countOneBits(var_1.a.c.x) % 32u));
}

fn func_1(arg_0: vec2<u32>) -> i32 {
    let var_0 = !vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(199f))) <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2316f, -622f)), (~arg_0.x << (arg_0.x % 32u)) < 1u, false, true);
    let var_1 = Struct_3(Struct_2(vec3<i32>(i32(-1i) * -1i, max(_wgslsmith_sub_i32(u_input.b, u_input.b), -28127i), -_wgslsmith_add_i32(u_input.b, u_input.b)), 1000f, vec2<u32>(func_2(!global1.x, Struct_3(Struct_2(vec3<i32>(u_input.b, -2147483647i, u_input.b), -2030f, u_input.a.xx, Struct_1(global1.x)), -891f, vec4<u32>(4294967295u, 4294967295u, arg_0.x, 0u))), 4294967295u), Struct_1(true)), -1000f, vec4<u32>(~((arg_0.x >> (arg_0.x % 32u)) >> (32328u % 32u)), u_input.a.x, 0u, _wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(10556u, 1u), max(u_input.a.x, 4294967295u)), ~(arg_0.x << (arg_0.x % 32u)))));
    let var_2 = var_1.a.b;
    global1 = vec2<bool>(var_0.x, func_3().x);
    var var_3 = ~var_1.c;
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(-2147483647i, func_1(u_input.a.xz), -1i);
    let var_1 = Struct_2(countOneBits(~(~vec3<i32>(-1i, 15971i, var_0.x)) ^ -(~vec3<i32>(var_0.x, -13827i, u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -408f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + 1f)), u_input.a.zz, Struct_1(!global1.x));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -108f)))))));
    global2 = all(func_3());
    let var_3 = var_1;
    let var_4 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1093f))), i32(-1i) * -2147483647i, 42549u, _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, ~var_3.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_3.c.x, 1u, 1u), vec4<u32>(u_input.a.x, var_3.c.x, u_input.a.x, u_input.a.x)), 1u), max(_wgslsmith_mod_vec4_u32(vec4<u32>(80834u, 45756u, var_3.c.x, var_1.c.x), vec4<u32>(41795u, u_input.a.x, u_input.a.x, var_3.c.x)), ~vec4<u32>(var_1.c.x, var_1.c.x, u_input.a.x, 0u))), vec4<u32>(u_input.a.x, 1u, ~u_input.a.x, _wgslsmith_mod_u32(46802u, u_input.a.x)) & select(max(vec4<u32>(u_input.a.x, 0u, 26899u, 23187u), vec4<u32>(var_3.c.x, 19672u, 1u, var_1.c.x)), ~vec4<u32>(63589u, 37889u, 18925u, u_input.a.x), !vec4<bool>(false, true, var_3.d.a, false))));
}

