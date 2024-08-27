struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: u32,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> vec2<u32> {
    var var_0 = countOneBits(-(abs(min(vec4<i32>(u_input.a.x, -1i, u_input.c, 14190i), vec4<i32>(u_input.c, 37801i, -25593i, u_input.c))) << (u_input.b % vec4<u32>(32u))));
    var var_1 = Struct_2(Struct_1(select(vec4<bool>(false, all(vec3<bool>(false, false, true)), all(vec4<bool>(true, false, true, true)), true), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), false), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true)), vec4<bool>(false, false, true, false))), vec3<bool>(true, any(vec2<bool>(true, true)), true), var_0.x), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1230f, -1000f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1102f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1589f - -1000f))))), 21751u);
    let var_2 = reverseBits(-(_wgslsmith_add_vec3_i32(firstLeadingBit(var_0.wyy), max(vec3<i32>(var_1.a.c, 0i, 1i), vec3<i32>(0i, var_0.x, 41715i))) | _wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(var_0.x, u_input.a.x, var_0.x)), var_0.xxy & vec3<i32>(0i, 31i, var_0.x))));
    var_1 = Struct_2(var_1.a, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, _wgslsmith_f_op_f32(step(var_1.b.x, 478f))))))), u_input.b.x);
    var var_3 = Struct_4(var_1.b.x <= _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(-var_1.b.x)))), Struct_1(select(!select(vec4<bool>(var_1.a.b.x, false, var_1.a.b.x, true), var_1.a.a, var_1.a.a), select(var_1.a.a, vec4<bool>(var_1.a.a.x, var_1.a.a.x, false, true), select(vec4<bool>(var_1.a.a.x, false, var_1.a.b.x, false), var_1.a.a, var_1.a.a)), true), var_1.a.b, 1291i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -784f)));
    return u_input.b.wz;
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: vec2<u32>, arg_3: i32) -> vec4<bool> {
    var var_0 = max(~6488u, arg_2.x);
    var var_1 = !(_wgslsmith_mult_i32(1i, _wgslsmith_mod_i32(1i, -arg_3)) > _wgslsmith_mod_i32(min(111137i << (arg_2.x % 32u), _wgslsmith_mult_i32(0i, -2470i)), min(2147483647i, u_input.c)));
    var var_2 = u_input.b.xww;
    let var_3 = select(all(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true)), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true)), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)))), arg_0 >= abs(countOneBits(_wgslsmith_div_i32(u_input.a.x, -1i))), select(!(arg_2.x >= 0u) | true, false, all(vec3<bool>(true, false, true))));
    var var_4 = _wgslsmith_f_op_f32(max(-811f, 143f));
    return !(!vec4<bool>(false, var_3 | (true == var_3), true, any(!vec4<bool>(false, false, var_3, true))));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: i32, arg_3: f32) -> f32 {
    let var_0 = Struct_1(func_4(max(_wgslsmith_div_i32(~(-2147483647i), firstLeadingBit(-15488i)), select(_wgslsmith_div_i32(arg_2, -2147483647i), 1i, all(vec4<bool>(true, true, true, true)))), ~(~arg_1), select(u_input.b.zw, _wgslsmith_div_vec2_u32(func_3(), u_input.b.xw & vec2<u32>(u_input.d, u_input.d)), all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false))), ~arg_2), !(!vec3<bool>(any(vec4<bool>(false, false, true, true)), false, all(vec3<bool>(true, false, true)))), ~_wgslsmith_mod_i32(arg_2, ~(-25402i)));
    var var_1 = -u_input.a;
    var var_2 = ~1u;
    let var_3 = !var_0.a.zzz;
    var var_4 = Struct_3(arg_1, arg_3, u_input.a, arg_2, Struct_1(!vec4<bool>(var_0.b.x, true, var_0.a.x, arg_3 > arg_3), !var_3, _wgslsmith_mult_i32(-1i, _wgslsmith_mult_i32(var_1.x, var_1.x)) >> (u_input.d % 32u)));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1296f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1636f, -279f, !var_0.b.x)))))));
}

fn func_1(arg_0: i32, arg_1: vec2<bool>) -> u32 {
    var var_0 = Struct_3(abs(_wgslsmith_div_u32(_wgslsmith_sub_u32(~u_input.b.x, ~u_input.d), u_input.d)), _wgslsmith_f_op_f32(func_2(u_input.c, 1u, ~(-4720i), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -990f))))), -(~(~u_input.a & vec3<i32>(arg_0, arg_0, -1i))), -arg_0, Struct_1(vec4<bool>(arg_1.x || false, true, all(select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), vec4<bool>(arg_1.x, arg_1.x, false, false), true)), !any(vec2<bool>(arg_1.x, false))), !vec3<bool>(true, any(vec3<bool>(false, arg_1.x, arg_1.x)), true), -1i));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-958f, var_0.b, var_0.b));
    var_0 = Struct_3(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.d) ^ (u_input.b.xy << (vec2<u32>(23515u, 4381u) % vec2<u32>(32u))), u_input.b.wz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), vec3<i32>(max(countOneBits(u_input.a.x >> (var_0.a % 32u)), -6605i), _wgslsmith_mod_i32(i32(-1i) * -21883i, firstTrailingBit(-1i)) | firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 24759i, arg_0), vec3<i32>(arg_0, var_0.c.x, 8080i))), var_0.e.c), 1i, Struct_1(select(vec4<bool>(arg_1.x, true, var_0.e.a.x & var_0.e.b.x, true), !var_0.e.a, any(vec3<bool>(false, false, arg_1.x))), vec3<bool>(_wgslsmith_div_f32(var_0.b, -953f) >= _wgslsmith_f_op_f32(func_2(5780i, u_input.b.x, var_0.d, var_0.b)), var_0.e.a.x, false), 2147483647i));
    var var_2 = vec4<u32>(func_3().x << (var_0.a % 32u), min(~1u, 1u), select(~(~1u), firstLeadingBit(u_input.d), true && arg_1.x), _wgslsmith_dot_vec3_u32(~max(vec3<u32>(var_0.a, var_0.a, 33765u), u_input.b.yzw), firstTrailingBit(select(u_input.b.yzw, reverseBits(u_input.b.xxz), any(vec3<bool>(var_0.e.a.x, false, arg_1.x))))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_1.x, var_0.b), -481f, 777f) + vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-1000f * var_1.x), var_0.b)))));
    return ~u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~vec4<u32>(u_input.d, func_1(u_input.a.x & u_input.a.x, select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))), _wgslsmith_clamp_u32(u_input.d, u_input.b.x, u_input.b.x), u_input.d));
    let var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -(~(-u_input.a)), _wgslsmith_clamp_vec3_i32(~_wgslsmith_clamp_vec3_i32(reverseBits(u_input.a), vec3<i32>(u_input.c, u_input.c, 2147483647i) >> (vec3<u32>(u_input.d, 20059u, 1u) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, u_input.a.x, 1i), vec3<i32>(2147483647i, -2147483647i, 2147483647i))), ~min(vec3<i32>(u_input.c, -9844i, -1i) | u_input.a, vec3<i32>(u_input.c, u_input.a.x, u_input.c)), u_input.a));
    var var_2 = true;
    var_2 = any(!select(vec2<bool>(true, true), vec2<bool>(true, true), true));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~_wgslsmith_mult_vec2_u32(~vec2<u32>(4294967295u, 40070u), vec2<u32>(var_0.x, 4294967295u))), -(vec4<i32>(-1i) * -firstLeadingBit(vec4<i32>(var_1.x, 2147483647i, -22i, 0i))), _wgslsmith_f_op_f32(936f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -128f))), ~vec2<u32>(0u, ~min(0u, var_0.x)));
}

