struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: Struct_3,
    d: i32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_4 = Struct_4(vec2<i32>(27311i, 0i), vec3<u32>(4294967295u, 1u, 21645u), Struct_3(67362u), 21625i);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>, arg_2: f32) -> vec3<f32> {
    var var_0 = firstTrailingBit(firstTrailingBit(~vec2<u32>(36131u, 20132u)));
    var var_1 = _wgslsmith_f_op_f32(abs(arg_2));
    let var_2 = vec2<u32>(_wgslsmith_mod_u32(u_input.a | min(36905u, select(1u, var_0.x, false)), global0.a), 1u & var_0.x);
    var_1 = _wgslsmith_f_op_f32(step(-194f, _wgslsmith_f_op_f32(-arg_2)));
    var var_3 = reverseBits(-max(arg_0, 1i));
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-150f, 1000f, arg_2), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_2, -204f, arg_2)))) * vec3<f32>(-1000f, _wgslsmith_f_op_f32(max(-455f, arg_2)), -844f))))));
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: u32) -> vec4<f32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(159f, arg_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(789f * arg_1), -457f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(0i, reverseBits(arg_0), _wgslsmith_f_op_f32(abs(-1855f)))))), ~vec3<i32>(-1i, global1.a.x, -global1.a.x) & -(abs(vec3<i32>(2147483647i, global1.a.x, global1.a.x)) ^ (vec3<i32>(global1.a.x, global1.a.x, -19141i) << (global1.b % vec3<u32>(32u)))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, arg_1, var_0.a.x) - _wgslsmith_f_op_vec3_f32(func_3(2147483647i, select(~arg_0, ~vec3<u32>(global1.c.a, global0.a, arg_2), true), _wgslsmith_f_op_vec3_f32(func_3(-22546i >> (1u % 32u), global1.b, _wgslsmith_f_op_f32(-var_0.a.x))).x))), ~select(_wgslsmith_div_vec3_i32(var_0.b >> (vec3<u32>(42134u, arg_2, arg_0.x) % vec3<u32>(32u)), -vec3<i32>(-13097i, 2147483647i, 0i)), ~(~vec3<i32>(-11375i, global1.a.x, -2147483647i)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))));
    var_0 = var_1;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x + var_1.a.x) * 346f))))));
    var var_3 = ~vec4<i32>(i32(-1i) * -var_1.b.x, 1i, 1i, countOneBits(-37351i));
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1, arg_1, var_1.a.x, arg_1), vec4<f32>(-483f, arg_1, -1499f, var_0.a.x))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(920f, var_1.a.x, -492f, var_0.a.x), vec4<f32>(937f, 571f, var_1.a.x, var_1.a.x), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1648f, 1173f, -247f, -165f))))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_1.a.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1578f, var_1.a.x, var_0.a.x, 458f))))))));
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: vec4<f32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_3)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1645f, _wgslsmith_f_op_f32(-arg_1.x), arg_1.x, -708f) - _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_mod_vec3_u32(global1.b, vec3<u32>(global0.a, arg_2.x, 91565u)), arg_3.x, 31991u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, -1263f, arg_3.x, arg_1.x) * vec4<f32>(arg_1.x, 1460f, -1315f, 229f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, arg_1.x, 1001f, arg_3.x))))))));
    var var_1 = -vec4<i32>(-_wgslsmith_mult_i32(global1.a.x, global1.d), 1i, firstTrailingBit(0i), abs(35061i)) & firstTrailingBit(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global1.d, global1.d, arg_0, arg_0), vec4<i32>(arg_0, arg_0, arg_0, arg_0)), -vec4<i32>(1i, global1.d, arg_0, arg_0)) >> (_wgslsmith_mult_vec4_u32(~vec4<u32>(61402u, global1.c.a, global1.b.x, u_input.a), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, global1.b.x, 28135u, u_input.a), vec4<u32>(4294967295u, global1.c.a, 31716u, 0u))) % vec4<u32>(32u)));
    let var_2 = min(75680u, arg_2.x);
    global1 = Struct_4(-_wgslsmith_add_vec2_i32(var_1.zy << ((vec2<u32>(u_input.a, 4294967295u) | global1.b.xz) % vec2<u32>(32u)), reverseBits(global1.a)), global1.b & select(~_wgslsmith_clamp_vec3_u32(global1.b, global1.b, vec3<u32>(4294967295u, global0.a, global0.a)), vec3<u32>(arg_2.x, 1u, 4294967295u) | global1.b, select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true))), global1.c, -71716i);
    let var_3 = var_1.xzw;
    return Struct_3(0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1((i32(-1i) * -max(1i, 0i)) & max(global1.a.x, min(min(global1.d, global1.a.x), max(global1.a.x, -2147483647i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-349f, 309f, 336f, -1177f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-551f, -459f, 218f, -1000f))))), firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(global1.c.a, 63281u) | vec2<u32>(0u, 4294967295u))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(207f, -1061f) - -1709f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-215f))), -859f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(993f - -979f)))));
    var_0 = Struct_3(3761u);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))))), !(!(1u > max(global0.a, global1.b.x))), reverseBits(vec4<u32>(var_0.a, 18595u, 47274u, ~0u)) >> (vec4<u32>((21185u << (var_0.a % 32u)) >> (min(global1.c.a, u_input.a) % 32u), min(35730u, 4294967295u), global1.c.a, reverseBits(_wgslsmith_mod_u32(48193u, global1.b.x))) % vec4<u32>(32u)), min(global1.b, _wgslsmith_div_vec3_u32(global1.b, vec3<u32>(countOneBits(var_0.a), 24595u, reverseBits(global0.a)))), select(_wgslsmith_sub_vec4_i32(-reverseBits(vec4<i32>(1i, global1.a.x, global1.d, global1.d)), _wgslsmith_sub_vec4_i32(~vec4<i32>(global1.a.x, global1.d, global1.a.x, 32205i), -vec4<i32>(-20227i, global1.a.x, global1.a.x, global1.d))), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -1i, -60161i, 2480i >> (global1.b.x % 32u)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-14901i, 42433i, -973i, global1.a.x), vec4<i32>(global1.a.x, -12416i, global1.a.x, global1.d))), !select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-722f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.a.x))))), -287f);
}

