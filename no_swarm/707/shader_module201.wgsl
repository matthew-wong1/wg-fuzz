struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: vec3<i32>,
    d: vec4<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: i32 = -10374i;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: vec3<f32>) -> vec4<u32> {
    let var_0 = select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, any(vec4<bool>(false, all(arg_0.zx), !arg_0.x, select(false, arg_0.x, arg_0.x)))), arg_0, !arg_0.x);
    global0 = ~(~41197u) == ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u));
    global1 = u_input.a.x & -(1i | min(u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, u_input.a.x)));
    global1 = u_input.a.x;
    let var_1 = _wgslsmith_clamp_u32(firstLeadingBit(firstLeadingBit(~0u)), ~(~1u), _wgslsmith_add_u32(~1u, _wgslsmith_clamp_u32(~13527u, 1u, 1u)) & (~7006u | select(4294967295u, _wgslsmith_div_u32(22066u, 4294967295u), arg_0.x)));
    return ~vec4<u32>(8966u, ~(~(~var_1)), 0u, 0u);
}

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: u32, arg_3: vec3<i32>) -> i32 {
    let var_0 = !any(vec4<bool>(true, _wgslsmith_f_op_f32(trunc(arg_1.x)) != _wgslsmith_f_op_f32(trunc(arg_1.x)), arg_0, true));
    global1 = _wgslsmith_dot_vec3_i32(arg_3, vec3<i32>(-2147483647i, -arg_3.x, -2147483647i));
    let var_1 = ~(select(~_wgslsmith_add_vec4_u32(vec4<u32>(arg_2, arg_2, arg_2, arg_2), vec4<u32>(4294967295u, arg_2, arg_2, 4294967295u)), abs(func_3(vec4<bool>(false, false, var_0, true), arg_1.zy, vec3<f32>(arg_1.x, -1499f, 964f))), any(vec2<bool>(true, true))) ^ _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(27764u, 1u, 30118u, arg_2), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_2, 18891u, arg_2, arg_2), vec4<u32>(3547u, arg_2, 0u, 0u))), min(vec4<u32>(arg_2, 1u, 1u, 93417u), select(vec4<u32>(4294967295u, arg_2, arg_2, arg_2), vec4<u32>(46113u, arg_2, 1u, 52975u), false)), firstTrailingBit(vec4<u32>(arg_2, 23276u, 115403u, arg_2)) | select(vec4<u32>(4294967295u, arg_2, arg_2, arg_2), vec4<u32>(0u, arg_2, 3511u, 59444u), vec4<bool>(false, var_0, var_0, var_0))));
    global0 = var_0;
    var var_2 = Struct_3(Struct_2(Struct_1(firstLeadingBit(min(arg_3.x, 1i)), -arg_3.x, _wgslsmith_f_op_f32(-235f + _wgslsmith_f_op_f32(-arg_1.x))), select(!(!vec4<bool>(true, arg_0, true, var_0)), vec4<bool>(true, var_0, true, arg_0), true), _wgslsmith_f_op_vec2_f32(-arg_1.zz)), Struct_1(-firstTrailingBit(2147483647i << (arg_2 % 32u)), 56580i, -320f));
    return 19713i;
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_4(!(~func_2(false, vec3<f32>(-1000f, -188f, 976f), arg_0.x, u_input.a.zzy) != abs(~(-1i))), Struct_1(~1i, func_2(any(vec3<bool>(false, false, false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-762f, -2064f, 998f))) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-2068f, 1000f, -2009f)))), _wgslsmith_add_u32(~96286u, 57953u), vec3<i32>(u_input.a.x, ~u_input.a.x, -u_input.a.x)), -1058f), u_input.a.xxy, vec4<f32>(-974f, _wgslsmith_f_op_f32(326f * -1186f), _wgslsmith_f_op_f32(max(1f, 322f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1797f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) - _wgslsmith_f_op_f32(-723f + 530f))))), true);
    let var_1 = var_0.b.c;
    global1 = -2104i;
    let var_2 = var_0.b;
    let var_3 = _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1802f), 1154f))))));
    return var_0.b;
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = u_input.a.x;
    var var_1 = true;
    var_1 = all(!(!(!select(arg_1.yy, arg_1.zx, true))));
    var var_2 = Struct_2(func_1(vec3<u32>(1u, 1u, 1u)), select(arg_1, arg_0.a.b, vec4<bool>(true, any(vec4<bool>(arg_0.a.b.x, true, arg_0.a.b.x, arg_0.a.b.x)), false, arg_0.a.b.x)), _wgslsmith_f_op_vec2_f32(-arg_0.a.c));
    var var_3 = -1561f;
    return Struct_2(Struct_1(0i << (0u % 32u), var_2.a.a, var_2.a.c), !select(arg_0.a.b, vec4<bool>(!arg_1.x, select(arg_0.a.b.x, true, var_2.b.x), true, true), false), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(arg_0.a.c, arg_0.a.c, arg_0.a.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.a.x, 2147483647i), -vec2<i32>(0i, -50365i) | select(u_input.a.yy, u_input.a.yw, false)), abs(_wgslsmith_mod_i32(u_input.a.x << (1u % 32u), -848i))) | -2147483647i;
    let var_0 = u_input.a.x;
    global1 = _wgslsmith_div_i32(u_input.a.x, -(~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_0), u_input.a.zy)) >> (select(1u, 1u, !any(vec3<bool>(false, true, false))) % 32u));
    let var_1 = func_4(Struct_3(Struct_2(Struct_1(~(-93933i), ~var_0, -1741f), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1533f, 1265f)))), func_1(select(~vec3<u32>(0u, 92394u, 4294967295u), firstLeadingBit(vec3<u32>(1u, 4294967295u, 85459u)), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true)))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), true), vec4<bool>(any(vec4<bool>(true, true, true, true)), all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), true)), all(vec2<bool>(false, true)), true), any(vec2<bool>(true, true))));
    var var_2 = u_input.a.xz;
    global0 = !(!all(vec4<bool>(var_1.b.x, false & var_1.b.x, all(var_1.b.ww), all(vec4<bool>(var_1.b.x, false, var_1.b.x, var_1.b.x)))));
    var var_3 = _wgslsmith_div_vec3_i32(vec3<i32>(reverseBits(~var_2.x), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a.yy >> (vec2<u32>(103705u, 0u) % vec2<u32>(32u)), u_input.a.yy), vec2<i32>(func_4(Struct_3(Struct_2(var_1.a, vec4<bool>(true, true, true, var_1.b.x), var_1.c), Struct_1(var_2.x, -1i, 937f)), var_1.b).a.b, reverseBits(var_2.x))), ~1i), _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(28259i, u_input.a.x), func_1(vec3<u32>(4112u, 78153u, 4294967295u)).b, -var_1.a.b), ~_wgslsmith_sub_vec3_i32(vec3<i32>(var_0, var_2.x, -1i), vec3<i32>(var_1.a.a, var_1.a.a, 2147483647i))), u_input.a.www, vec3<i32>(-(~0i), -67459i, i32(-1i) * -1i)));
    var_2 = _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(var_3.zx ^ vec2<i32>(-14442i, 14523i), var_3.zx), _wgslsmith_div_vec2_i32(select(-(vec2<i32>(var_3.x, u_input.a.x) >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))), vec2<i32>(func_1(vec3<u32>(0u, 18798u, 44206u)).b, -2147483647i), select(vec2<bool>(true, true), select(vec2<bool>(var_1.b.x, var_1.b.x), vec2<bool>(var_1.b.x, var_1.b.x), false), !var_1.b.zz)), vec2<i32>(var_1.a.b, u_input.a.x)), reverseBits(vec2<i32>(select(_wgslsmith_dot_vec3_i32(u_input.a.xzw, u_input.a.zzy), 1i, all(var_1.b.wwz)), var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~(~1u), 0u), var_0 & 2147483647i);
}

