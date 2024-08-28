struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<f32>,
    d: bool,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 22821u);

var<private> global1: array<Struct_3, 4>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_3) -> vec4<bool> {
    var var_0 = global0.x;
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_3.c.x)))));
    global1 = array<Struct_3, 4>();
    var_0 = abs(global0.x);
    global0 = u_input.b.zy;
    return !(!arg_3.a.d);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_3 {
    global1 = array<Struct_3, 4>();
    var var_0 = Struct_2(arg_1, true, Struct_1(arg_1.a), select(!(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), false)), func_3(u_input.b.yx, all(vec4<bool>(true, true, true, true)), arg_1, Struct_3(Struct_2(arg_1, false, arg_1, vec4<bool>(true, false, true, true)), Struct_1(-10865i), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, arg_0.x) - vec3<f32>(-1189f, 2065f, arg_0.x)), true, vec2<i32>(10203i, -1i))), true));
    var var_1 = arg_0.x;
    var_0 = Struct_2(Struct_1(var_0.a.a), true, Struct_1(u_input.c.x), select(vec4<bool>(true, var_0.d.x, false, var_0.b), var_0.d, var_0.d));
    var var_2 = Struct_3(Struct_2(Struct_1(u_input.c.x), all(select(func_3(vec2<u32>(global0.x, global0.x), var_0.b, Struct_1(1i), Struct_3(Struct_2(Struct_1(-5632i), true, var_0.a, vec4<bool>(var_0.b, true, true, false)), arg_1, vec3<f32>(arg_0.x, arg_0.x, 135f), var_0.b, vec2<i32>(-56158i, var_0.c.a))), var_0.d, var_0.d.x | var_0.d.x)), var_0.a, select(!select(vec4<bool>(var_0.d.x, var_0.b, true, true), var_0.d, var_0.d), !select(var_0.d, vec4<bool>(true, false, var_0.b, var_0.b), var_0.d), _wgslsmith_add_i32(u_input.a, arg_1.a) >= arg_1.a)), Struct_1(1i), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 782f, arg_0.x) - vec3<f32>(arg_0.x, -1391f, -976f)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.x, 1264f, arg_0.x), vec3<f32>(arg_0.x, 1183f, arg_0.x))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(956f, arg_0.x, arg_0.x) - vec3<f32>(-1247f, arg_0.x, -1166f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, -381f) + vec3<f32>(1020f, arg_0.x, arg_0.x)))), func_3(_wgslsmith_div_vec2_u32(u_input.b.xz, vec2<u32>(4294967295u, firstTrailingBit(0u))), any(var_0.d.xz), var_0.a, global1[_wgslsmith_index_u32(~(~global0.x) << (36099u % 32u), 4u)]).x, u_input.c.xx);
    return Struct_3(var_2.a, Struct_1(arg_1.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1424f, -966f, var_2.c.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.c.x, arg_0.x, -1480f), vec3<f32>(arg_0.x, -2194f, arg_0.x))), _wgslsmith_f_op_vec3_f32(var_2.c * var_2.c)), !(!var_0.d.xzz)))), false, vec2<i32>(var_0.c.a, ~(~_wgslsmith_mult_i32(1i, 2147483647i))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<f32>) -> u32 {
    let var_0 = func_2(vec2<f32>(1029f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, false))))), Struct_1(select(u_input.c.x, 38799i, true)));
    var var_1 = _wgslsmith_add_u32(~_wgslsmith_add_u32(select(u_input.b.x, 58136u, var_0.a.b), 1u), 1u) >= u_input.b.x;
    var var_2 = ~global0.x;
    var var_3 = select(vec2<bool>(false, true), var_0.a.d.wy, vec2<bool>(!func_2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.c.x, 961f))), var_0.a.c).a.d.x, false));
    let var_4 = firstLeadingBit(abs(vec2<u32>(~65242u, u_input.b.x)) | ~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(u_input.b.x, u_input.b.x)), u_input.b.x));
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<u32>(func_1(~u_input.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1101f, -1000f, -579f, 1806f) - vec4<f32>(-390f, -666f, 2885f, -1081f)) - _wgslsmith_div_vec4_f32(vec4<f32>(1470f, 1495f, 165f, -589f), vec4<f32>(-1575f, 190f, 376f, 1439f))))), _wgslsmith_dot_vec3_u32(~select(~u_input.b, u_input.b, select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false)), ~vec3<u32>(u_input.b.x, global0.x >> (u_input.b.x % 32u), ~u_input.b.x)));
    global1 = array<Struct_3, 4>();
    var var_0 = Struct_3(Struct_2(Struct_1(-u_input.c.x << (reverseBits(global0.x) % 32u)), !(-21496i <= firstTrailingBit(-1i)), Struct_1(~35848i), select(vec4<bool>(true, any(vec4<bool>(true, true, true, true)), true, true), func_3(u_input.b.yy, all(vec2<bool>(true, false)), Struct_1(-1i), func_2(vec2<f32>(-2703f, -1532f), Struct_1(1i))), vec4<bool>(all(vec3<bool>(false, true, false)), true, all(vec3<bool>(false, false, false)), true))), func_2(_wgslsmith_f_op_vec2_f32(exp2(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(180f, -1374f) - vec2<f32>(-634f, 1000f)), Struct_1(u_input.c.x)).c.zy)), func_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(918f, 127f), vec2<f32>(-1699f, -1504f))))), Struct_1(~1i)).a.c).a.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1105f, -1341f, 750f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-566f, 523f, 1000f))))), func_2(vec2<f32>(-310f, -1118f), Struct_1(reverseBits(0i))).c), false, -(~(~u_input.c.xy)));
    let var_1 = Struct_3(func_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, var_0.c.x)))), func_2(var_0.c.zz, Struct_1(var_0.b.a)).b).a, var_0.b, _wgslsmith_f_op_vec3_f32(ceil(var_0.c)), true, u_input.c.yx << (min(~(~u_input.b.zy), max(select(u_input.b.xz, u_input.b.yx, var_0.a.d.zz), ~u_input.b.xx)) % vec2<u32>(32u)));
    let var_2 = 8062u;
    var var_3 = func_2(vec2<f32>(1f, _wgslsmith_f_op_f32(1334f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) - 1f))), Struct_1(_wgslsmith_mod_i32(reverseBits(-var_1.e.x), 1i))).b;
    let var_4 = vec4<u32>(_wgslsmith_sub_u32(var_2, u_input.b.x), _wgslsmith_sub_u32(~(~min(20788u, 95179u)), u_input.b.x ^ (var_2 >> ((1u >> (u_input.b.x % 32u)) % 32u))), ~(~_wgslsmith_dot_vec3_u32(~u_input.b, u_input.b)), global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(_wgslsmith_sub_u32(~var_4.x, ~0u), 79780u), _wgslsmith_div_u32(~_wgslsmith_clamp_u32(var_4.x, 53846u, _wgslsmith_mod_u32(28417u, global0.x)), 49229u), ~(~_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.a.a.a, var_3.a, -2147483647i, u_input.c.x), vec4<i32>(var_0.b.a, 0i, u_input.c.x, 21226i)), min(vec4<i32>(40179i, var_0.b.a, u_input.a, var_3.a), vec4<i32>(u_input.a, 4862i, -1i, u_input.a)))));
}

