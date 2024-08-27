struct Struct_1 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(u_input.a.x, reverseBits(firstTrailingBit(reverseBits(i32(-1i) * -40534i))));
    var var_1 = vec2<i32>(select(_wgslsmith_clamp_i32(var_0.b, ~7083i, -28026i), 1i | ((-25799i & var_0.b) ^ ~var_0.b), all(vec2<bool>(true, true)) && true), -2147483647i);
    var var_2 = var_0;
    let var_3 = var_0;
    let var_4 = _wgslsmith_mod_u32(~var_3.a, ~4294967295u);
    return Struct_1(25631u, _wgslsmith_add_i32(var_0.b, ~var_2.b));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    let var_0 = vec4<i32>(31649i, (_wgslsmith_mult_i32(0i, -1i) ^ arg_0.b) & -32803i, 2147483647i, ~(~select(1567i, 0i, false))) | _wgslsmith_mult_vec4_i32(~(-min(vec4<i32>(0i, arg_0.b, -2147483647i, 14409i), vec4<i32>(arg_0.b, 33658i, 0i, arg_0.b))), abs(vec4<i32>(reverseBits(-1i), reverseBits(15544i), ~68926i, reverseBits(arg_0.b))));
    let var_1 = _wgslsmith_add_u32(arg_0.a, ~u_input.a.x);
    let var_2 = arg_1;
    let var_3 = true;
    var var_4 = func_2();
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec3<f32>, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = vec4<i32>(_wgslsmith_sub_i32(44691i, max(-1i, -7215i)), arg_1, abs(1i), 1i);
    var_0 = _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(~(-_wgslsmith_mult_vec4_i32(vec4<i32>(0i, 2147483647i, arg_1, var_0.x), vec4<i32>(-62482i, -2147483647i, 30424i, arg_0.b))), -_wgslsmith_add_vec4_i32(max(vec4<i32>(28064i, arg_1, arg_1, 5805i), vec4<i32>(1i, -11623i, -14305i, 1i)), abs(vec4<i32>(arg_0.b, -7355i, 0i, 2147483647i)))), ~(~(~(vec4<i32>(4815i, -1i, arg_1, var_0.x) ^ vec4<i32>(arg_1, 2147483647i, arg_1, -2147483647i)))));
    let var_1 = !(!all(vec2<bool>(true, true)));
    return Struct_1(1u, arg_0.b);
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(func_3(func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(275f, 1000f) - _wgslsmith_f_op_f32(-989f + -217f)))), ~func_2().b, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-201f, 995f, 358f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(910f, 733f, 201f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-2218f, -2118f, 397f), vec3<f32>(-1459f, -493f, 583f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(678f, -591f, -1362f), vec3<f32>(809f, -178f, -1154f), vec3<bool>(true, false, false)))))), vec4<f32>(-277f, 1f, _wgslsmith_f_op_f32(1000f - -2173f), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(367f, -1112f)))))));
    var var_1 = Struct_1(0u, 2147483647i);
    var_0 = Struct_1(func_4(Struct_1(26199u << (var_1.a % 32u), _wgslsmith_add_i32(-var_0.b, select(3116i, 46481i, false))), ~_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, 29428i), vec2<i32>(var_1.b, var_0.b), vec2<i32>(var_0.b, var_0.b)), min(vec2<i32>(25872i, var_1.b), vec2<i32>(var_1.b, var_1.b))), vec3<f32>(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(max(-392f, -337f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-648f - -241f) * _wgslsmith_f_op_f32(sign(1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1044f, 607f, 130f, 1392f), vec4<f32>(-448f, -1205f, 1420f, 1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-739f, 213f, 1231f, -566f))))).a, max(var_0.b, var_1.b));
    let var_2 = vec3<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(var_0.b, var_0.b), 1i) << (func_2().a % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(max(vec4<i32>(var_1.b, 0i, var_0.b, var_1.b), vec4<i32>(var_0.b, 0i, var_0.b, var_1.b)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.b, var_1.b, -22764i, var_1.b), vec4<i32>(-1i, 4083i, 1i, 7164i))), _wgslsmith_div_vec4_i32(abs(vec4<i32>(-1i, -89787i, 0i, var_0.b)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.b, var_0.b, 1i, 17071i), vec4<i32>(var_1.b, var_1.b, var_1.b, var_0.b)))), ~func_3(Struct_1(u_input.a.x, var_1.b), _wgslsmith_f_op_f32(select(486f, 1416f, false))).b) ^ _wgslsmith_mod_vec3_i32(~min(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.b, 0i, -27020i), vec3<i32>(var_1.b, var_1.b, var_1.b)), _wgslsmith_sub_vec3_i32(vec3<i32>(-15297i, -27479i, var_0.b), vec3<i32>(var_0.b, -24523i, -1i))), _wgslsmith_sub_vec3_i32(countOneBits(-vec3<i32>(var_0.b, var_1.b, var_0.b)), countOneBits(vec3<i32>(var_1.b, 43857i, -34607i) >> (vec3<u32>(18930u, var_0.a, 0u) % vec3<u32>(32u)))));
    let var_3 = func_4(func_3(Struct_1(abs(9600u), _wgslsmith_clamp_i32(-11991i, ~4644i, abs(var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1038f - _wgslsmith_f_op_f32(f32(-1f) * -168f)))), ~_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_0.b), var_2.yx), -69529i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(692f, -858f), _wgslsmith_f_op_f32(-510f + -715f), _wgslsmith_f_op_f32(190f * -196f)), vec3<f32>(1f, 1f, 1f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1605f, -1000f, 606f, _wgslsmith_f_op_f32(step(179f, 1001f))))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-677f, 411f, -1000f, 809f) + vec4<f32>(239f, 212f, 523f, 513f)))))));
    return Struct_1(8998u, _wgslsmith_dot_vec4_i32(max(vec4<i32>(var_2.x, -2147483647i, var_3.b, 13053i), vec4<i32>(0i, var_2.x, 1i, -26540i) >> (u_input.a % vec4<u32>(32u))) & firstLeadingBit(firstLeadingBit(vec4<i32>(-17003i, var_2.x, var_0.b, 8624i))), _wgslsmith_mod_vec4_i32(vec4<i32>(var_1.b, var_2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_2.x, var_0.b, var_1.b), vec4<i32>(var_1.b, -2147483647i, var_3.b, var_3.b)), reverseBits(var_2.x)), min(vec4<i32>(-1i, var_1.b, var_3.b, -58523i), vec4<i32>(var_0.b, -4886i, var_1.b, var_2.x)) << (u_input.a % vec4<u32>(32u)))));
}

fn func_5(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = vec4<i32>(_wgslsmith_dot_vec4_i32(-(-vec4<i32>(0i, -1i, arg_2.b, 2147483647i) << (vec4<u32>(127563u, 4294967295u, arg_0.x, 16407u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1, arg_1, -16793i, arg_1), vec4<i32>(arg_2.b, 0i, arg_1, -1i)) >> (vec4<u32>(arg_2.a, 25312u, 1u, arg_2.a) % vec4<u32>(32u)), vec4<i32>(-arg_1, -5343i, 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 14609i), vec2<i32>(arg_1, 17893i))))), -10899i, -1i, ~(-29829i));
    var_0 = vec4<i32>(-1i) * -(~vec4<i32>(~1i, 0i, _wgslsmith_mod_i32(2147483647i, var_0.x), arg_1));
    var var_1 = arg_0;
    return select(vec2<bool>(true, true), vec2<bool>(select(~0u > var_1.x, select(all(vec3<bool>(false, false, true)), false, true), any(vec4<bool>(true, true, true, true))), !((i32(-1i) * -29307i) <= arg_1)), ~var_0.x < var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~abs(u_input.a.xz);
    let var_1 = vec3<bool>(true, any(vec4<bool>(true, true, true, false)), true);
    var var_2 = vec3<bool>(true, all(func_5(firstTrailingBit(~vec3<u32>(50331u, u_input.a.x, var_0.x)), -firstTrailingBit(3335i), func_1())), any(vec4<bool>(true, true, !(!var_1.x), _wgslsmith_f_op_f32(floor(485f)) == _wgslsmith_f_op_f32(round(1210f)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(697f, 605f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(907f, -890f, var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-621f, 494f))))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(min(-554f, -1000f)), _wgslsmith_f_op_f32(step(403f, _wgslsmith_f_op_f32(f32(-1f) * -2228f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1223f, 174f)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -833f), _wgslsmith_f_op_f32(-213f + -1000f), _wgslsmith_f_op_f32(select(441f, 1036f, var_1.x))))))));
    let var_4 = Struct_1(~max(var_0.x, 45200u), func_1().b);
    let var_5 = !vec4<bool>(var_1.x, all(var_1), select(!all(var_1), true, var_2.x), var_2.x | var_2.x);
    let var_6 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(0i | min(var_4.b, var_6.b), ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(-19656i, var_4.b, var_6.b, 2147483647i), vec4<i32>(var_4.b, var_4.b, var_6.b, var_6.b)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(384f - 1499f)))), _wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1387f))), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + var_3.x) - _wgslsmith_f_op_f32(-var_3.x))), var_3.x), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(func_1().b, _wgslsmith_mod_i32(-53623i, var_4.b)), vec2<i32>(_wgslsmith_div_i32(10450i, -2147483647i), var_4.b), vec2<i32>(-1i, firstTrailingBit(-4217i))));
}

