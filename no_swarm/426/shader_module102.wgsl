struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec4<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>) -> vec3<bool> {
    var var_0 = Struct_4(all(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), false)), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -737f, arg_0.x) * vec3<f32>(arg_0.x, arg_0.x, arg_0.x))))), 1000f, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(475f, arg_0.x, arg_0.x, -737f)))))), vec3<i32>(-6165i, u_input.c, 0i)), -firstLeadingBit(vec4<i32>(u_input.d, 15588i, 2147483647i ^ u_input.c, max(u_input.c, -45188i))));
    var_0 = Struct_4(all(select(select(!vec4<bool>(var_0.a, false, true, var_0.a), vec4<bool>(var_0.a, false, false, var_0.a), select(vec4<bool>(var_0.a, var_0.a, false, false), vec4<bool>(true, true, false, var_0.a), vec4<bool>(true, false, false, var_0.a))), select(vec4<bool>(var_0.a, true, true, true), !vec4<bool>(true, var_0.a, var_0.a, var_0.a), !vec4<bool>(true, var_0.a, false, false)), var_0.a & var_0.a)), var_0.b, vec4<i32>(-53429i, reverseBits(var_0.c.x), _wgslsmith_mod_i32(-40581i, var_0.c.x), max(var_0.b.d.x, ~1i)));
    let var_1 = 114787u;
    var var_2 = ~_wgslsmith_clamp_i32(firstLeadingBit(0i), 0i, -u_input.d);
    var_2 = ~(~(-_wgslsmith_sub_i32(2147483647i, 1i))) << (max(var_1, ~select(var_1, 15862u, true)) % 32u);
    return vec3<bool>((var_1 <= (~u_input.b >> (select(39498u, 11639u, var_0.a) % 32u))) | !(~u_input.b >= var_1), true, var_0.a);
}

fn func_2(arg_0: u32, arg_1: i32) -> vec3<bool> {
    let var_0 = u_input.d;
    var var_1 = arg_1;
    return !(!(!select(func_3(vec2<f32>(-241f, 176f)), vec3<bool>(false, true, false), vec3<bool>(true, true, true))));
}

fn func_4(arg_0: vec3<bool>) -> vec4<u32> {
    var var_0 = vec2<i32>(-1i) * -firstLeadingBit(-_wgslsmith_div_vec2_i32(u_input.a, u_input.a));
    let var_1 = Struct_2(vec4<i32>(var_0.x, countOneBits(~(~u_input.a.x)), u_input.a.x, max(var_0.x, -_wgslsmith_dot_vec2_i32(u_input.a, u_input.a))));
    var var_2 = var_1;
    var_2 = Struct_2(abs(vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.a.x, -22137i), var_2.a.xy), -1i, var_0.x ^ ~var_2.a.x, -_wgslsmith_dot_vec2_i32(var_2.a.zy, var_1.a.wy))));
    let var_3 = var_1;
    return _wgslsmith_mult_vec4_u32(vec4<u32>(~65490u, _wgslsmith_add_u32(~firstLeadingBit(4294967295u), 0u), 66705u, 95209u >> ((select(4294967295u, u_input.b, false) << (u_input.b % 32u)) % 32u)), ~abs(countOneBits(~vec4<u32>(u_input.b, u_input.b, u_input.b, 0u))));
}

fn func_1(arg_0: vec4<f32>, arg_1: u32) -> Struct_1 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-770f - 135f) - arg_0.x))), -553f);
    let var_1 = u_input.c;
    let var_2 = func_4(!select(!func_2(0u, var_1), vec3<bool>(true, true, true), select(func_2(9138u, u_input.d), vec3<bool>(true, true, true), func_3(arg_0.wy).x)));
    var var_3 = ~(~(-vec3<i32>(-2147483647i, u_input.c, var_1))) ^ (((~vec3<i32>(var_1, var_1, 63857i) >> (var_2.yzw % vec3<u32>(32u))) | vec3<i32>(var_1, ~var_1, u_input.a.x | u_input.a.x)) << (var_2.yyx % vec3<u32>(32u)));
    var var_4 = 54370u;
    return Struct_1(arg_0.yzw, arg_0.x, vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1316f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(round(arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-191f - arg_0.x)))), arg_0.x, -599f), -(~(~(-vec3<i32>(u_input.c, var_1, -2147483647i)))));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = ~(arg_0.d << (max(_wgslsmith_add_vec3_u32(reverseBits(arg_2), ~vec3<u32>(arg_2.x, 0u, 32592u)), func_4(vec3<bool>(false, true, false)).wzy) % vec3<u32>(32u)));
    var var_1 = vec2<bool>(!any(vec4<bool>(true, arg_0.d.x == 1i, true, true)), true);
    var_0 = vec3<i32>(~(_wgslsmith_mult_i32(-45274i, arg_0.d.x) ^ ~arg_0.d.x) | countOneBits(countOneBits(firstLeadingBit(arg_0.d.x))), -1i, -(~1i));
    var var_2 = !vec2<bool>(true, func_2(_wgslsmith_add_u32(~4294967295u, firstTrailingBit(arg_2.x)), countOneBits(u_input.d)).x);
    return Struct_1(arg_0.a, -1853f, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.b + 191f))), -838f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(abs(-435f))))), arg_0.c)), _wgslsmith_div_vec3_i32(-_wgslsmith_sub_vec3_i32(~arg_0.d, _wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, arg_0.d.x, var_0.x), arg_0.d)), arg_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1320f);
    let var_1 = Struct_4(true, func_5(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1674f, -576f, -1224f, -253f) - vec4<f32>(-417f, 238f, 317f, -1000f))), 0u), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1482f)) * _wgslsmith_f_op_f32(sign(851f))), _wgslsmith_f_op_f32(-563f + _wgslsmith_f_op_f32(452f - -223f)))), vec3<u32>(4294967295u, u_input.b, u_input.b)), firstLeadingBit(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -40204i, u_input.a.x, u_input.a.x), vec4<i32>(-1i, -24587i, 0i, u_input.c)), vec4<i32>(u_input.c << (60251u % 32u), max(u_input.d, 0i), u_input.a.x, u_input.a.x), vec4<i32>(_wgslsmith_mod_i32(u_input.a.x, -7563i), 2147483647i, 2147483647i << (u_input.b % 32u), u_input.c))));
    var var_2 = u_input.b << (4294967295u % 32u);
    let var_3 = Struct_3(countOneBits(_wgslsmith_mult_u32(~u_input.b, ~_wgslsmith_div_u32(u_input.b, 10474u))));
    var var_4 = 15936u;
    let var_5 = u_input.a;
    var_2 = 31334u;
    let var_6 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_1.b.b))));
    var var_7 = Struct_2(var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(u_input.b, 4294967295u & (_wgslsmith_div_u32(var_3.a, 10674u) | 1u)), 0i);
}

