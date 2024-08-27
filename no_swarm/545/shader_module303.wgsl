struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: u32,
    d: bool,
    e: bool,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: Struct_3) -> vec2<i32> {
    var var_0 = arg_3;
    var_0 = Struct_3(vec4<bool>(var_0.a.x, false, (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 4294967295u, 99499u), vec3<u32>(arg_3.c, var_0.c, var_0.c)) ^ arg_1.x) < var_0.c, -10841i <= var_0.b.x), vec4<i32>(_wgslsmith_dot_vec4_i32(var_0.b, _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.b.x, -12018i, 28012i, var_0.b.x), vec4<i32>(u_input.c.x, u_input.e.x, -17095i, arg_3.b.x))), 50412i, _wgslsmith_sub_i32(-var_0.b.x, -20030i), abs(-2147483647i)), 4294967295u, true, false | all(vec2<bool>(true, all(arg_3.a.xyz))));
    var_0 = arg_3;
    let var_1 = arg_3.a.xx;
    return var_0.b.zz;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec4<u32>) -> f32 {
    var var_0 = Struct_4(~34564u);
    let var_1 = false;
    return arg_1.b;
}

fn func_2() -> vec3<f32> {
    let var_0 = Struct_1(u_input.c.x);
    let var_1 = true;
    let var_2 = (u_input.c.x ^ (i32(-1i) * -2147483647i)) | u_input.c.x;
    let var_3 = var_0;
    var var_4 = Struct_1(_wgslsmith_div_i32(~(~0i | countOneBits(var_0.a)), var_2));
    return vec3<f32>(-1153f, 328f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(-23038i, Struct_2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, -127f, 633f))), _wgslsmith_f_op_f32(sign(-468f))), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_2, 1i), u_input.e.zx, vec2<i32>(-21890i, var_3.a)) | func_3(Struct_4(u_input.b), u_input.a, Struct_2(vec3<f32>(682f, 324f, -671f), 1077f), Struct_3(vec4<bool>(true, false, var_1, var_1), u_input.c, u_input.a.x, true, var_1)), countOneBits(min(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), vec4<u32>(27632u, 0u, u_input.b, u_input.b)))))));
}

fn func_5(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-arg_0.yx);
    let var_1 = u_input.e.x | _wgslsmith_dot_vec3_i32(u_input.e.zxw, u_input.c.yww);
    var var_2 = u_input.a.x;
    var_2 = _wgslsmith_mod_u32(u_input.d, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 1u, u_input.d), max(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.b, 4294967295u), vec3<u32>(0u, 0u, u_input.a.x)), min(vec3<u32>(u_input.a.x, u_input.b, u_input.a.x), vec3<u32>(u_input.d, 4294967295u, 4294967295u)))));
    let var_3 = var_0.x;
    return Struct_1(var_1);
}

fn func_1(arg_0: Struct_3) -> bool {
    let var_0 = !arg_0.a.zy;
    var var_1 = func_5(_wgslsmith_f_op_vec3_f32(func_2()));
    var var_2 = var_0.x;
    var var_3 = 22139i;
    var var_4 = all(select(vec3<bool>(!(arg_0.d != false), true, all(arg_0.a)), arg_0.a.xxz, !arg_0.d));
    return true;
}

fn func_6(arg_0: bool, arg_1: vec4<u32>, arg_2: bool, arg_3: Struct_3) -> Struct_1 {
    var var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec3_f32(func_2()).x)))), -484f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-125f, _wgslsmith_f_op_f32(round(1000f))))))), _wgslsmith_f_op_f32(f32(-1f) * -1629f));
    var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.b, _wgslsmith_f_op_f32(round(var_0.b))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.x + -1144f), 1453f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.b, var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - var_0.b))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1971f, var_0.b))))));
    var var_1 = func_5(_wgslsmith_f_op_vec3_f32(var_0.a - _wgslsmith_f_op_vec3_f32(var_0.a * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a) * _wgslsmith_div_vec3_f32(var_0.a, vec3<f32>(238f, var_0.a.x, var_0.b))))));
    var var_2 = 1u;
    let var_3 = vec4<i32>(_wgslsmith_sub_i32(reverseBits(arg_3.b.x), ~(var_1.a ^ 18588i) | 18131i), func_3(Struct_4(~arg_1.x), ~arg_1.zz, Struct_2(vec3<f32>(_wgslsmith_div_f32(var_0.b, 619f), -130f, _wgslsmith_f_op_vec3_f32(func_2()).x), var_0.b), arg_3).x, u_input.e.x, var_1.a);
    return Struct_1(var_1.a);
}

fn func_7(arg_0: Struct_1, arg_1: i32, arg_2: i32, arg_3: f32) -> Struct_3 {
    let var_0 = Struct_1(arg_0.a);
    var var_1 = Struct_3(vec4<bool>((select(false, false, false) && all(vec4<bool>(false, false, true, true))) && false, true, true, false), _wgslsmith_clamp_vec4_i32(reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(34153i, arg_1, 1i, -33399i), u_input.e)), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -21235i, arg_1, 48133i), vec4<i32>(22312i, u_input.e.x, 12327i, arg_2)), _wgslsmith_mult_vec4_i32(vec4<i32>(-24128i, 39873i, arg_2, var_0.a), u_input.c)), firstLeadingBit(u_input.c)), u_input.c), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d, 28253u, u_input.d), vec3<u32>(40301u, u_input.a.x, 1u) & vec3<u32>(0u, u_input.a.x, u_input.a.x)) >> (~(~0u) % 32u), false, true);
    let var_2 = Struct_3(select(vec4<bool>(var_1.a.x, var_1.a.x, false, var_1.a.x), !(!var_1.a), var_1.e), ~max(_wgslsmith_mult_vec4_i32(-var_1.b, firstLeadingBit(vec4<i32>(2147483647i, arg_0.a, arg_0.a, 1i))), abs(_wgslsmith_div_vec4_i32(u_input.c, vec4<i32>(-9960i, -1i, var_1.b.x, 36947i)))), 27945u, func_1(Struct_3(select(vec4<bool>(var_1.e, false, var_1.e, var_1.a.x), !var_1.a, var_1.a), u_input.e, u_input.b, arg_2 > _wgslsmith_div_i32(u_input.e.x, 9878i), all(vec4<bool>(true, var_1.a.x, var_1.e, false)))), var_1.d);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-arg_3), arg_3, -955f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 + 2519f)) * arg_3)));
    var var_4 = Struct_2(_wgslsmith_div_vec3_f32(var_3.zww, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-arg_3), -272f, _wgslsmith_f_op_f32(arg_3 * -475f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.zyx))))), _wgslsmith_f_op_f32(trunc(-937f)));
    return Struct_3(var_2.a, min(~(-select(var_1.b, vec4<i32>(-25255i, arg_2, -2147483647i, arg_2), false)), -var_2.b), ~91662u, false, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~reverseBits(~u_input.e.x);
    var var_1 = ~(-u_input.e.zy);
    let var_2 = _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 39079u), select(vec2<u32>(u_input.d, u_input.b), u_input.a, true));
    let var_3 = func_7(func_6(false, ~firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(28777u, 0u, u_input.d, u_input.d), vec4<u32>(var_2.x, 41073u, var_2.x, 1u))), select(false, func_1(Struct_3(vec4<bool>(false, false, true, false), u_input.e, 28437u, true, false)), true) & select(true, all(vec2<bool>(false, true)), true), Struct_3(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true)), _wgslsmith_add_vec4_i32(~u_input.c, _wgslsmith_sub_vec4_i32(u_input.e, u_input.e)), firstTrailingBit(_wgslsmith_sub_u32(var_2.x, var_2.x)), false, true)), 0i, _wgslsmith_sub_i32(~(var_1.x << (u_input.a.x % 32u)) >> (_wgslsmith_add_u32(var_2.x, ~u_input.a.x) % 32u), 56224i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -223f)));
    let var_4 = firstTrailingBit(-vec2<i32>(abs(u_input.e.x), u_input.e.x) & vec2<i32>(_wgslsmith_dot_vec2_i32(var_3.b.yz & var_3.b.zz, vec2<i32>(-1i, -21669i)), _wgslsmith_mult_i32(0i, var_3.b.x) ^ (i32(-1i) * -16473i)));
    var var_5 = _wgslsmith_add_i32(firstLeadingBit(u_input.e.x), abs(-1i));
    let var_6 = Struct_4(~(~76906u ^ _wgslsmith_add_u32(0u, var_2.x)));
    var var_7 = func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(sign(343f)), -1313f, _wgslsmith_f_op_f32(step(-927f, 412f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

