struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: f32,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: vec3<f32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_3,
    c: Struct_4,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 10>;

var<private> global1: bool = false;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -342f), _wgslsmith_f_op_f32(min(-328f, _wgslsmith_f_op_f32(f32(-1f) * -862f)))));
    var var_1 = select(vec2<bool>(!select(true, any(arg_0.a), false), any(select(vec4<bool>(true, arg_0.a.x, true, arg_0.a.x), vec4<bool>(arg_0.a.x, true, arg_0.a.x, arg_0.a.x), arg_0.a.x && arg_0.a.x))), arg_0.a, arg_0.a.x);
    var var_2 = Struct_4(2147483647i, true, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(786f, -1000f, 532f) - vec3<f32>(var_0.x, 234f, var_0.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(282f, var_0.x, -1072f) + vec3<f32>(var_0.x, -675f, var_0.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1128f, -717f, 555f) + vec3<f32>(var_0.x, -875f, 102f)))))));
    let var_3 = -24610i;
    global1 = arg_0.a.x;
    return !(!select(!(!vec3<bool>(arg_0.a.x, true, true)), !(!vec3<bool>(var_2.b, var_1.x, false)), var_0.x > _wgslsmith_f_op_f32(var_0.x * 199f)));
}

fn func_2(arg_0: Struct_5) -> bool {
    global0 = array<Struct_5, 10>();
    var var_0 = Struct_2(any(select(select(!vec3<bool>(arg_0.c.b, arg_0.a.x, false), vec3<bool>(arg_0.c.b, true, true), select(vec3<bool>(arg_0.c.b, arg_0.a.x, arg_0.a.x), vec3<bool>(arg_0.c.b, false, arg_0.a.x), arg_0.c.b)), vec3<bool>(all(vec3<bool>(arg_0.a.x, true, true)), true, false), !(!arg_0.c.b))), Struct_1(vec2<bool>(all(vec4<bool>(arg_0.a.x, arg_0.c.b, arg_0.a.x, false)), true), ~(~_wgslsmith_add_vec4_u32(arg_0.b.d, vec4<u32>(1u, 4294967295u, arg_0.b.b, arg_0.b.a)))));
    global0 = array<Struct_5, 10>();
    var_0 = Struct_2(var_0.b.a.x, var_0.b);
    let var_1 = var_0.b;
    return all(func_3(Struct_1(!var_0.b.a, vec4<u32>(var_0.b.b.x, 4294967295u, _wgslsmith_dot_vec4_u32(arg_0.b.d, vec4<u32>(var_0.b.b.x, 4294967295u, 67198u, var_1.b.x)), 17576u)), arg_0.d));
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: i32) -> Struct_3 {
    let var_0 = true;
    global0 = array<Struct_5, 10>();
    global0 = array<Struct_5, 10>();
    var var_1 = select(~(vec3<u32>(min(67480u, 1u), select(9482u, 4294967295u, true), ~69267u) | ~vec3<u32>(1u, 43030u, 4294967295u)), firstLeadingBit(vec3<u32>(1u, 1u, 1u)) << (countOneBits(vec3<u32>(~0u, select(1u, 4294967295u, false), countOneBits(19436u))) % vec3<u32>(32u)), arg_1);
    let var_2 = Struct_5(vec2<bool>(arg_1.x, arg_1.x), Struct_3(38068u, var_1.x, _wgslsmith_clamp_vec2_u32(vec2<u32>(~var_1.x, min(var_1.x, var_1.x)), vec2<u32>(21264u >> (var_1.x % 32u), abs(103125u)), var_1.xx), _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(var_1.x, 1u, 40227u, var_1.x), vec4<u32>(25025u, 9340u, var_1.x, var_1.x) | vec4<u32>(1u, var_1.x, var_1.x, var_1.x)), vec4<u32>(var_1.x, ~var_1.x, _wgslsmith_mod_u32(4294967295u, var_1.x), var_1.x | var_1.x)), -276f), Struct_4(u_input.a, any(arg_1) && true, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-200f + 922f)), -145f, -1080f)), _wgslsmith_div_i32(~1i, -39250i & ~_wgslsmith_clamp_i32(u_input.a, 14234i, arg_2)));
    return Struct_3(var_2.b.b, 11319u ^ min(_wgslsmith_sub_u32(~var_1.x, _wgslsmith_dot_vec3_u32(var_2.b.d.xyw, vec3<u32>(4294967295u, 127498u, var_2.b.a))), ~19058u), var_2.b.c, var_2.b.d ^ _wgslsmith_clamp_vec4_u32(~var_2.b.d ^ select(var_2.b.d, vec4<u32>(var_2.b.b, 56792u, 1u, 78131u), false), ~vec4<u32>(0u, var_2.b.b, var_1.x, var_2.b.d.x) << (~var_2.b.d % vec4<u32>(32u)), vec4<u32>(~var_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 1u), vec2<u32>(8494u, var_1.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b.b, var_2.b.a, var_2.b.a), var_2.b.d.zyy), max(var_2.b.a, var_2.b.d.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -832f))))));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: bool) -> vec3<u32> {
    var var_0 = Struct_4(-2147483647i, true, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.e, _wgslsmith_f_op_f32(-arg_2.e), _wgslsmith_f_op_f32(sign(-1592f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(540f, arg_2.e, arg_2.e)), vec3<f32>(-1107f, 862f, _wgslsmith_f_op_f32(-arg_2.e))), false)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(914f, arg_2.e)) - _wgslsmith_f_op_f32(step(var_0.c.x, arg_2.e))))), _wgslsmith_f_op_f32(-arg_2.e), -466f, arg_2.e);
    let var_2 = 1u;
    let var_3 = arg_1.b.b.x;
    var var_4 = arg_1.b;
    return arg_2.d.wwy;
}

fn func_1(arg_0: Struct_2) -> f32 {
    global0 = array<Struct_5, 10>();
    global0 = array<Struct_5, 10>();
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(func_5(-vec3<i32>(~0i, u_input.a, -2965i), arg_0, func_4(!func_2(global0[_wgslsmith_index_u32(arg_0.b.b.x, 10u)]), !(!vec3<bool>(arg_0.a, arg_0.b.a.x, arg_0.a)), u_input.a), !all(!vec4<bool>(true, false, true, arg_0.b.a.x))), _wgslsmith_div_vec3_u32(arg_0.b.b.yyz, ~(~arg_0.b.b.xyw))), 10u)];
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.c.c.x), var_0.c.c.x)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.b.e, -614f))))))));
    global1 = func_3(arg_0.b, firstLeadingBit(i32(-1i) * -var_0.d)).x || false;
    return var_0.b.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(~1u, firstTrailingBit(~_wgslsmith_div_u32(1u, 4294967295u)) ^ (_wgslsmith_sub_u32(_wgslsmith_mod_u32(17816u, 314u), _wgslsmith_clamp_u32(93742u, 90243u, 28614u)) | abs(27547u)), vec2<u32>(31684u, 1u), vec4<u32>(0u, _wgslsmith_clamp_u32(41402u, _wgslsmith_sub_u32(1u, 1u), _wgslsmith_sub_u32(4294967295u, 0u)), ~1u, abs(36920u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_2(false, Struct_1(vec2<bool>(false, true), vec4<u32>(1u, 2115u, 1u, 58720u))))) * _wgslsmith_f_op_f32(1000f - -1151f))))));
    global1 = true;
    global0 = array<Struct_5, 10>();
    let var_1 = _wgslsmith_mult_u32(~select(countOneBits(_wgslsmith_div_u32(var_0.c.x, 0u)), _wgslsmith_mult_u32(4294967295u, var_0.a) >> (var_0.c.x % 32u), false), 46470u);
    let var_2 = Struct_5(vec2<bool>(!((var_0.e <= -238f) & func_3(Struct_1(vec2<bool>(true, false), vec4<u32>(var_1, 2777u, 71501u, 4294967295u)), -29753i).x), all(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), true)))), Struct_3(var_0.b, var_1, vec2<u32>(var_1, ~var_1 >> ((var_1 << (var_0.a % 32u)) % 32u)), vec4<u32>(_wgslsmith_mult_u32(~var_0.a, var_1), abs(var_0.c.x), ~(var_0.b >> (4294967295u % 32u)), _wgslsmith_mult_u32(~var_1, 29630u)), 1137f), Struct_4(u_input.a << (var_1 % 32u), select(false, any(vec4<bool>(true, true, true, true)), true), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(152f, 653f, var_0.e)))))), _wgslsmith_mult_i32(2147483647i, firstTrailingBit((i32(-1i) * -1i) & u_input.a)));
    global0 = array<Struct_5, 10>();
    global1 = var_2.c.b;
    let x = u_input.a;
    s_output = StorageBuffer(12181u, var_2.c.c);
}

