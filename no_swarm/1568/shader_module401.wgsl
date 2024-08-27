struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, ~0u), vec2<u32>(~firstTrailingBit(1u), ~min(~58129u, _wgslsmith_div_u32(u_input.a, u_input.a))), vec2<u32>(u_input.a, ~(~2655u >> (_wgslsmith_clamp_u32(u_input.a, 25579u, u_input.a) % 32u))));
    var_0 = vec2<u32>(~_wgslsmith_mult_u32(23647u << (var_0.x % 32u), ~var_0.x), ~0u) & vec2<u32>(firstTrailingBit(13178u), max(_wgslsmith_add_u32(var_0.x, min(0u, u_input.a)), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(27332u, var_0.x), vec2<u32>(u_input.a, var_0.x)), vec2<u32>(var_0.x, var_0.x))));
    let var_1 = reverseBits(~firstTrailingBit(_wgslsmith_add_u32(4294967295u << (u_input.a % 32u), u_input.a | var_0.x)));
    var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(abs(14530u) & _wgslsmith_dot_vec3_u32(vec3<u32>(77007u, 70803u, var_1), vec3<u32>(0u, 41253u, var_1)), ~4644u) << ((firstTrailingBit(vec2<u32>(1u, u_input.a) >> (vec2<u32>(0u, 1425u) % vec2<u32>(32u))) >> (vec2<u32>(var_1, ~0u) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(9639u, var_0.x))), vec2<u32>(_wgslsmith_add_u32(var_0.x, 4379u) << ((4294967295u ^ var_0.x) % 32u), ~1u)));
    var_0 = _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(~var_0.x & u_input.a, ~u_input.a), _wgslsmith_mod_vec2_u32(abs(_wgslsmith_add_vec2_u32(vec2<u32>(24127u, var_0.x), vec2<u32>(var_0.x, var_1))), vec2<u32>(var_0.x, u_input.a)), ~_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 6444u) & vec2<u32>(var_1, 23613u), ~vec2<u32>(var_1, 4294967295u))), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), ~vec2<u32>(67681u, 0u)) | ~select(abs(vec2<u32>(32165u, 30304u)), vec2<u32>(1u, 1u), vec2<bool>(false, arg_0.c)));
    return _wgslsmith_add_i32((u_input.b ^ arg_0.b) | 2147483647i, ~_wgslsmith_sub_i32(2147483647i, i32(-1i) * -2147483647i));
}

fn func_2(arg_0: vec3<i32>, arg_1: bool, arg_2: u32, arg_3: i32) -> vec2<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(201f, _wgslsmith_f_op_f32(f32(-1f) * -628f)))), func_3(Struct_1(vec2<f32>(-223f, _wgslsmith_f_op_f32(select(1190f, 809f, arg_1))), _wgslsmith_add_i32(~u_input.b, -u_input.d.x), all(select(vec3<bool>(arg_1, true, false), vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_1, arg_1, arg_1))))), !all(!(!vec4<bool>(arg_1, arg_1, false, arg_1))));
    var var_1 = ~vec3<i32>(-44139i, -1i, ~reverseBits(var_0.b));
    return vec2<i32>(~(-arg_0.x | ~(var_1.x & 38111i)), max(arg_0.x, _wgslsmith_sub_i32(1i, arg_0.x ^ 506i) << (~41441u % 32u)));
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(max(u_input.d.x, i32(-1i) * -2147483647i), 9141i), firstLeadingBit(vec2<i32>(13349i >> (u_input.a % 32u), u_input.c.x)) & (u_input.d.yz ^ _wgslsmith_mult_vec2_i32(abs(u_input.d.xz), func_2(vec3<i32>(1i, u_input.d.x, u_input.c.x), false, u_input.a, u_input.b))));
    var var_1 = arg_0;
    let var_2 = vec4<u32>(u_input.a, 73210u, 59156u >> ((~26758u << (~u_input.a % 32u)) % 32u), u_input.a) >> (~(~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, u_input.a)), u_input.a, reverseBits(0u), 38740u)) % vec4<u32>(32u));
    var_0 = (_wgslsmith_dot_vec2_i32(u_input.d.yy, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d.x, 1i), vec2<i32>(1i, u_input.b))) ^ firstTrailingBit(~1i)) << (11180u % 32u);
    return Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(max(1702f, arg_0))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, 1139f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0, arg_0))), vec2<bool>(true, true))))))), _wgslsmith_sub_i32(reverseBits(min(_wgslsmith_sub_i32(u_input.d.x, u_input.d.x), -14612i)), -7307i), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~1u);
    var var_1 = func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1509f + _wgslsmith_f_op_f32(select(1253f, -260f, true)))), _wgslsmith_f_op_f32(842f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f * -1563f), _wgslsmith_f_op_f32(f32(-1f) * -261f))))), false != !select(true, true, true));
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.a, var_1.a, var_1.c)))))), var_1.b, var_1.c);
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-483f, _wgslsmith_f_op_f32(select(var_1.a.x, var_1.a.x, var_1.c)), _wgslsmith_f_op_f32(var_1.a.x - 299f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-979f, 828f, var_1.a.x))))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.a.x))), _wgslsmith_f_op_f32(-var_1.a.x)))), all(select(!vec4<bool>(true, true, var_1.c, false), select(!vec4<bool>(false, false, true, var_1.c), select(vec4<bool>(var_1.c, var_1.c, var_1.c, var_1.c), vec4<bool>(false, true, false, var_1.c), vec4<bool>(true, true, var_1.c, var_1.c)), select(vec4<bool>(false, false, var_1.c, var_1.c), vec4<bool>(var_1.c, true, true, var_1.c), true)), select(true | var_1.c, var_1.c, any(vec2<bool>(true, var_1.c)))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(step(-1022f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) * _wgslsmith_f_op_f32(-var_1.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1211f)))), vec3<f32>(var_2.x, _wgslsmith_f_op_f32(step(-183f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.a.x, var_1.a.x))))), -2385f)));
    var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, select(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(32216u, 0u, u_input.a, 19042u)), abs(vec4<u32>(4294967295u, u_input.a, 8685u, 4294967295u)), abs(vec4<u32>(var_0, 30049u, 12402u, u_input.a))), vec4<u32>(_wgslsmith_add_u32(9527u, 49783u), _wgslsmith_add_u32(u_input.a, var_0), _wgslsmith_clamp_u32(0u, 44770u, 98223u), 41767u)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 43136u, 22938u, var_0), vec4<u32>(_wgslsmith_mod_u32(u_input.a, 4294967295u), _wgslsmith_add_u32(var_0, 614u), ~var_0, u_input.a)), func_1(var_1.a.x, all(!vec4<bool>(false, false, var_1.c, var_1.c))).c), ~(~_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_0, var_0, 11485u), vec3<u32>(var_0, u_input.a, u_input.a)), vec3<u32>(var_0, 42884u, var_0))));
}

