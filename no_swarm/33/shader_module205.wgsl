struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: f32,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: f32 = 267f;

var<private> global2: bool = false;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> Struct_2 {
    let var_0 = u_input.a.yx;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(312f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.c, arg_3)))))));
    var var_2 = true;
    let var_3 = vec3<u32>(25469u, ~38707u, _wgslsmith_sub_u32(u_input.d, arg_0.d));
    let var_4 = true;
    return var_1;
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: i32, arg_3: vec3<f32>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -336f);
    var var_1 = arg_0;
    var var_2 = vec4<i32>(~(-2147483647i), _wgslsmith_sub_i32(select(1i, _wgslsmith_mod_i32(u_input.a.x, 44480i) << ((1u >> (u_input.d % 32u)) % 32u), true), reverseBits(u_input.c)), u_input.e, ~u_input.c);
    var var_3 = arg_0.a;
    let var_4 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -298f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(743f * arg_3.x) - _wgslsmith_f_op_f32(min(arg_3.x, -734f)))) * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1549f, -1011f)))));
    return vec3<u32>(abs(u_input.d), _wgslsmith_add_u32(60265u, _wgslsmith_mod_u32(4294967295u, 1u) | _wgslsmith_sub_u32(15313u, u_input.d)) << (arg_1 % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(abs(~arg_1), 4294967295u), max(~vec2<u32>(9951u, 1u) >> (vec2<u32>(20101u, arg_1) % vec2<u32>(32u)), vec2<u32>(0u, arg_1) & ~vec2<u32>(1431u, arg_1))));
}

fn func_1(arg_0: bool) -> vec4<bool> {
    let var_0 = Struct_1(u_input.a.yx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1371f, -1682f, 704f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, 236f) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-108f, -345f, 956f)))))), -608f, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 2206u, 4294967295u), ~(vec3<u32>(u_input.d, u_input.d, 31694u) & _wgslsmith_div_vec3_u32(vec3<u32>(33437u, u_input.d, 65015u), vec3<u32>(0u, u_input.d, u_input.d)))), (select(-u_input.a, _wgslsmith_add_vec3_i32(u_input.a, u_input.a), select(vec3<bool>(true, arg_0, true), vec3<bool>(true, arg_0, true), true)) << (vec3<u32>(select(206u, 31885u, arg_0), ~4294967295u, max(u_input.d, 201u)) % vec3<u32>(32u))) << (~func_3(func_2(Struct_1(vec2<i32>(u_input.c, u_input.e), vec3<f32>(global0.x, global0.x, 505f), global0.x, 108126u, u_input.a), Struct_2(global0.x), Struct_1(u_input.a.zx, vec3<f32>(751f, -316f, global0.x), 1358f, 0u, vec3<i32>(2147483647i, -2147483647i, u_input.e)), global0.x), _wgslsmith_mult_u32(u_input.d, u_input.d), ~(-874i), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, 217f, 1000f), vec3<f32>(global0.x, global0.x, -420f), vec3<bool>(false, arg_0, true)))) % vec3<u32>(32u)));
    global0 = var_0.b;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(968f, _wgslsmith_div_f32(var_0.b.x, -723f))) + 140f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(275f - -1143f), var_0.b.x, true)))));
    let var_1 = func_2(Struct_1(reverseBits(var_0.e.zz) ^ u_input.a.xx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, -741f, global0.x) + vec3<f32>(var_0.c, var_0.c, 1091f)))), var_0.b.x, var_0.d, u_input.a), func_2(var_0, Struct_2(global0.x), Struct_1(countOneBits(_wgslsmith_mult_vec2_i32(var_0.a, u_input.a.yx)), vec3<f32>(global0.x, _wgslsmith_div_f32(global0.x, 604f), _wgslsmith_f_op_f32(-var_0.b.x)), global0.x, ~countOneBits(33204u), u_input.a), global0.x), var_0, var_0.b.x);
    let var_2 = func_2(var_0, var_1, var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(func_2(Struct_1(vec2<i32>(var_0.e.x, 30633i), var_0.b, 1325f, 1u, u_input.a), Struct_2(1277f), Struct_1(vec2<i32>(2147483647i, u_input.c), vec3<f32>(var_1.a, global0.x, -659f), -243f, 34633u, var_0.e), _wgslsmith_div_f32(global0.x, 1026f)).a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.b.x * var_1.a)))))));
    return select(select(!select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), !vec4<bool>(arg_0, arg_0, arg_0, false), any(vec4<bool>(true, false, true, true))), vec4<bool>(arg_0, !arg_0 && false, all(select(vec3<bool>(true, true, arg_0), vec3<bool>(false, arg_0, true), vec3<bool>(arg_0, arg_0, false))), all(select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, false, true), arg_0))), true), select(!select(!vec4<bool>(arg_0, false, arg_0, arg_0), select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(arg_0, false, arg_0, true)), false), vec4<bool>(all(vec4<bool>(false, arg_0, arg_0, true)), all(vec4<bool>(false, arg_0, false, arg_0)), _wgslsmith_f_op_f32(-var_0.b.x) >= var_1.a, any(vec2<bool>(false, true))), false), vec4<bool>(select(all(vec2<bool>(arg_0, false)), 1u <= u_input.d, select(true, arg_0, false)) || arg_0, false, firstLeadingBit(min(0i, 0i)) == -u_input.b, true));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(arg_3.b + vec3<f32>(_wgslsmith_f_op_f32(step(-1051f, global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2305f))));
    let var_1 = arg_3;
    let var_2 = _wgslsmith_clamp_vec2_u32(vec2<u32>(~1u, arg_3.d), ~max(firstTrailingBit(vec2<u32>(u_input.d, 0u)), vec2<u32>(1u, 18314u) & vec2<u32>(var_1.d, arg_3.d)), vec2<u32>(_wgslsmith_mod_u32(u_input.d, var_1.d), ~(~68024u))) & firstTrailingBit(_wgslsmith_mod_vec2_u32(select(vec2<u32>(u_input.d, var_1.d) & vec2<u32>(var_1.d, arg_3.d), ~vec2<u32>(u_input.d, 1449u), true), vec2<u32>(var_1.d, 1u)));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1885f) * var_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1964f - -486f) * _wgslsmith_f_op_f32(-global0.x)))), -1000f);
    return func_2(arg_3, func_2(var_1, func_2(arg_3, Struct_2(global0.x), var_1, global0.x), arg_3, _wgslsmith_f_op_f32(abs(var_1.b.x))), Struct_1(min(~(arg_3.a & arg_3.a), select(~arg_3.e.xy, ~arg_3.a, true)), _wgslsmith_f_op_vec3_f32(min(var_1.b, _wgslsmith_f_op_vec3_f32(arg_3.b * var_1.b))), _wgslsmith_f_op_f32(floor(-250f)), ~min(4294967295u << (var_1.d % 32u), 1u), var_1.e), 616f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global2 = true;
    let var_1 = func_4(~(-1i), u_input.b, select(vec4<bool>(true, true, true, true), func_1(true), vec4<bool>(any(vec2<bool>(false, false)), true, true, _wgslsmith_f_op_f32(sign(318f)) <= global0.x)), Struct_1(u_input.a.zz, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.x * global0.x), -309f, -108f) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(159f, global0.x, 1319f), vec3<f32>(884f, -2175f, -1712f)))))), _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(step(469f, -1308f))), func_3(Struct_2(-1562f), ~u_input.d ^ (u_input.d ^ 4294967295u), u_input.c << (~1u % 32u), vec3<f32>(-147f, -171f, global0.x)).x, vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.c, u_input.e), u_input.b), abs(_wgslsmith_add_i32(u_input.b, -10954i)), u_input.b)));
    let var_2 = abs(vec2<u32>(~(~max(u_input.d, 1u)), 32626u));
    var var_3 = -2147483647i;
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x))), 1804f, 348f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.a, -1297f, -988f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(~(1i << (1u % 32u)), u_input.c), vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(u_input.a | vec3<i32>(-8836i, 2147483647i, 2996i), -vec3<i32>(-19619i, u_input.c, u_input.c)));
}

