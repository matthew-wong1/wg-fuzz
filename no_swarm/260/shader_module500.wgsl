struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec3<u32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: f32) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(ceil(2002f)));
    var var_1 = _wgslsmith_f_op_f32(abs(-1384f));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -890f));
    global1 = ~(~countOneBits(select(vec3<u32>(1u, global1.x, 1u), vec3<u32>(global1.x, u_input.b, 1u), global0.b.c.yyw))) ^ ~_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.b, global0.b.a.x, u_input.b) >> (firstLeadingBit(vec3<u32>(36858u, u_input.b, 29547u)) % vec3<u32>(32u)), global0.b.a);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0.b.b, _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(trunc(-726f)))))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.b.b))));
    return select(_wgslsmith_mod_vec3_u32(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(27469u, u_input.b, u_input.b), _wgslsmith_mod_vec3_u32(global0.b.a, global0.b.a), global0.b.a), vec3<u32>(_wgslsmith_add_u32(global0.b.a.x, u_input.b), global1.x, abs(u_input.b)), global0.b.c.x), _wgslsmith_clamp_vec3_u32(~global0.b.a, global0.b.a, countOneBits(vec3<u32>(21840u, global1.x, global0.b.a.x)))), ~vec3<u32>(3173u, global1.x, 12760u), select(vec3<bool>(_wgslsmith_div_i32(u_input.a.x, u_input.a.x) > 1i, global0.b.c.x, global0.b.c.x), global0.b.c.zyx, global0.b.c.zxy));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_div_vec3_u32(func_3(401f), ~arg_0.xyw);
    var var_1 = Struct_3(global0.b, max(abs(1u), _wgslsmith_mult_u32(45951u, 1453u)), global0.b.a.x);
    var var_2 = true;
    var_2 = !(!all(global0.b.c.zyx));
    var var_3 = Struct_3(global0.b, u_input.b, u_input.b);
    return Struct_2(-(vec3<i32>(global0.b.d << (1u % 32u), var_1.a.d >> (var_0.x % 32u), -2147483647i >> (var_1.a.a.x % 32u)) ^ (reverseBits(vec3<i32>(2147483647i, u_input.a.x, 0i)) >> (var_3.a.a % vec3<u32>(32u)))), Struct_1(var_3.a.a, _wgslsmith_f_op_f32(-var_3.a.b), vec4<bool>(true, var_1.a.d < min(24375i, u_input.a.x), all(vec3<bool>(false, true, var_1.a.c.x)), 1721f < _wgslsmith_f_op_f32(arg_1.x - 291f)), abs(arg_2.x) ^ var_3.a.d));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec2<bool>) -> Struct_3 {
    global0 = Struct_2(_wgslsmith_clamp_vec3_i32(arg_0.a, vec3<i32>(global0.a.x, select(-22738i, 1i, true) & (arg_1 & arg_0.a.x), _wgslsmith_dot_vec2_i32(-global0.a.zx, arg_0.a.xz)), min(select(vec3<i32>(u_input.a.x, 2147483647i, arg_1), arg_0.a, arg_0.b.c.yxy) & vec3<i32>(1i, -2147483647i, global0.b.d), select(vec3<i32>(u_input.a.x, -43525i, -194i), vec3<i32>(arg_1, arg_0.a.x, -14694i), select(vec3<bool>(arg_0.b.c.x, false, true), arg_0.b.c.xwx, global0.b.c.x)))), Struct_1(_wgslsmith_add_vec3_u32(arg_0.b.a, func_2(max(vec4<u32>(arg_0.b.a.x, 9524u, global1.x, global0.b.a.x), vec4<u32>(global1.x, 73494u, global0.b.a.x, arg_0.b.a.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-936f, 761f, 535f, global0.b.b), vec4<f32>(arg_0.b.b, -1855f, arg_0.b.b, 442f)), vec4<i32>(u_input.a.x, u_input.a.x, global0.b.d, -1i) | vec4<i32>(arg_1, u_input.a.x, -37281i, 30498i)).b.a), _wgslsmith_f_op_f32(floor(1000f)), !(!global0.b.c), arg_1 ^ ~u_input.a.x));
    let var_0 = vec2<bool>(all(arg_0.b.c.wz), firstLeadingBit(global1.x) == global0.b.a.x);
    var var_1 = !(var_0.x || !(!var_0.x));
    var var_2 = _wgslsmith_div_u32(~firstTrailingBit(global0.b.a.x), ~_wgslsmith_div_u32(104501u, 11835u));
    let var_3 = func_2(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(global0.b.a.x, arg_0.b.a.x, global0.b.a.x, 0u) | _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.b.a.x, global1.x, 37534u, arg_0.b.a.x), vec4<u32>(u_input.b, arg_0.b.a.x, 2833u, 7878u)), select(select(vec4<u32>(1u, global0.b.a.x, 1u, 41177u), vec4<u32>(4294967295u, 1u, global1.x, global1.x), arg_2.x), vec4<u32>(55302u, 0u, u_input.b, u_input.b), any(vec3<bool>(arg_2.x, arg_0.b.c.x, global0.b.c.x)))), vec4<u32>(~19590u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(51899u, 59103u, 1u), vec3<u32>(4294967295u, global0.b.a.x, u_input.b), var_0.x), abs(global0.b.a)), 12591u, u_input.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.b.b, arg_0.b.b, arg_0.b.b, global0.b.b), vec4<f32>(-1285f, arg_0.b.b, -197f, arg_0.b.b)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1032f, -175f, arg_0.b.b, arg_0.b.b) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(603f, arg_0.b.b, global0.b.b, global0.b.b), vec4<f32>(global0.b.b, arg_0.b.b, global0.b.b, global0.b.b))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1015f, global0.b.b, 1550f, -996f))))), firstLeadingBit(~select(~vec4<i32>(u_input.a.x, -17828i, -1i, -2147483647i), vec4<i32>(arg_0.b.d, 1i, 19405i, -44382i) ^ vec4<i32>(2147483647i, 1i, arg_1, arg_0.a.x), true)));
    return Struct_3(var_3.b, ~_wgslsmith_add_u32(abs(arg_0.b.a.x), 0u), ~_wgslsmith_sub_u32(1u, countOneBits(~u_input.b)));
}

fn func_1() -> f32 {
    let var_0 = select(vec2<bool>(false, !global0.b.c.x), !global0.b.c.zw, any(vec2<bool>(true, u_input.a.x <= (-24126i << (global1.x % 32u)))));
    let var_1 = func_4(func_2(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 48992u, 0u, global0.b.a.x), vec4<u32>(global1.x, global1.x, 23551u, 69260u)) >> (_wgslsmith_mod_vec4_u32(~vec4<u32>(global1.x, 18637u, global1.x, global1.x), vec4<u32>(1u, 1u, 19674u, 63241u) << (vec4<u32>(global0.b.a.x, 1u, 4294967295u, global0.b.a.x) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(619f + _wgslsmith_div_f32(global0.b.b, global0.b.b)), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(global0.b.b - -720f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2448f))), 270f), -min(vec4<i32>(1i, global0.a.x, u_input.a.x, -26186i), -vec4<i32>(-1i, 7818i, -1i, 4744i))), abs(global0.b.d), select(!vec2<bool>(true, global0.b.c.x), !vec2<bool>(!global0.b.c.x, var_0.x), true));
    var var_2 = 458f;
    global1 = countOneBits(vec3<u32>(~_wgslsmith_mod_u32(var_1.a.a.x, var_1.b >> (1u % 32u)), global0.b.a.x & ~_wgslsmith_dot_vec2_u32(var_1.a.a.xy, global1.zz), global0.b.a.x));
    var var_3 = global0.b.c.x;
    return _wgslsmith_div_f32(_wgslsmith_div_f32(global0.b.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(func_4(Struct_2(global0.a, Struct_1(vec3<u32>(9324u, global0.b.a.x, 4294967295u), 114f, global0.b.c, -14625i)), 1i, vec2<bool>(true, false)).a.b)), _wgslsmith_f_op_f32(min(global0.b.b, _wgslsmith_f_op_f32(156f + 1265f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.a.b * -260f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b.b, 1514f) - global0.b.b);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-543f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0)) + _wgslsmith_f_op_f32(max(578f, global0.b.b))), -687f)));
    var var_2 = 1i;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.b.b, 401f, 1208f, _wgslsmith_f_op_f32(sign(global0.b.b))), vec4<f32>(_wgslsmith_div_f32(-967f, var_1.x), var_1.x, _wgslsmith_f_op_f32(-global0.b.b), -1651f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-308f, _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(-798f, var_0), global0.b.b))));
    global1 = _wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(countOneBits(~global0.b.a.x), func_3(_wgslsmith_f_op_f32(min(var_3.x, -601f))).x, _wgslsmith_mult_u32(global1.x, func_4(Struct_2(vec3<i32>(27698i, u_input.a.x, 10146i), global0.b), u_input.a.x, vec2<bool>(false, global0.b.c.x)).b))), global0.b.a);
    global1 = vec3<u32>(firstLeadingBit(_wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(0u, 1u, 20446u, global1.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.b.a.x, 52800u, global0.b.a.x, 1u) ^ vec4<u32>(39826u, 40845u, global1.x, global0.b.a.x), abs(vec4<u32>(global1.x, 26807u, u_input.b, global1.x)), vec4<u32>(global0.b.a.x, 73095u, global1.x, global0.b.a.x)))), ~(~max(4294967295u, global0.b.a.x)) ^ global0.b.a.x, 1u);
    var var_4 = vec4<f32>(-506f, var_0, 1f, var_0);
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.a.x, global0.a.x, 1i, 54901i) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, global0.b.d, -19742i), vec4<i32>(global0.a.x, global0.a.x, 10947i, u_input.a.x)), vec4<i32>(-22272i, 1i << (global0.b.a.x % 32u), 1i, _wgslsmith_mod_i32(1i, -2147483647i)), ~vec4<i32>(-2147483647i, u_input.a.x, global0.a.x, -2147483647i)), _wgslsmith_div_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(-12145i, -4160i, 5989i, -21659i), vec4<i32>(2147483647i, 0i, global0.a.x, global0.a.x)), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(54528i, -45295i, global0.a.x, -2147483647i), vec4<i32>(41846i, global0.b.d, -1i, 40026i)), _wgslsmith_div_vec4_i32(vec4<i32>(27411i, global0.a.x, -2147483647i, 1i), vec4<i32>(u_input.a.x, 2059i, global0.b.d, u_input.a.x)))), global0.b.c.x), global0.b.d, ~(~vec3<u32>(1u, u_input.b, global0.b.a.x)), func_2(countOneBits(reverseBits(~vec4<u32>(u_input.b, global1.x, global0.b.a.x, global0.b.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-926f, 160f, 737f, -928f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_4.x, var_1.x, -1184f, 1181f), vec4<f32>(1850f, var_0, var_1.x, var_3.x), global0.b.c.x)), !vec4<bool>(false, global0.b.c.x, global0.b.c.x, true)))), _wgslsmith_div_vec4_i32(vec4<i32>(i32(-1i) * -33270i, reverseBits(u_input.a.x), -u_input.a.x, func_2(vec4<u32>(32601u, 24244u, u_input.b, 0u), vec4<f32>(432f, 442f, var_4.x, 2111f), vec4<i32>(-1i, u_input.a.x, u_input.a.x, global0.b.d)).a.x), select(-vec4<i32>(-1i, 36669i, 1i, global0.b.d), -vec4<i32>(1i, -12453i, global0.a.x, -2147483647i), !global0.b.c.x))).a.x, global0.b.a);
}

