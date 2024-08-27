struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: u32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> bool {
    var var_0 = ~max(countOneBits(_wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(20011i, u_input.b.x)), -vec2<i32>(1i, -1i), -vec2<i32>(1i, -20942i))), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, u_input.b.x), -(~u_input.b.yz)));
    let var_1 = firstTrailingBit(-1i);
    var var_2 = u_input.a.x;
    var_2 = u_input.a.x;
    var var_3 = Struct_1(true | all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec4<bool>(true, false, false, true)))), !select(vec3<bool>(true, 1u > u_input.a.x, false), vec3<bool>(any(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true)), true), (u_input.a.x ^ 1931u) > ~4294967295u), ~u_input.a.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1767f))))), 109f, 1930f));
    return !(!var_3.b.x && (u_input.a.x == var_3.c));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d.x)) + arg_1.d.x)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_1.d.x, arg_2.d.x))));
    var_0 = _wgslsmith_f_op_f32(-arg_1.d.x);
    var_0 = arg_2.d.x;
    var var_1 = arg_2;
    return ~(~arg_1.c);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<f32>, arg_3: bool) -> i32 {
    let var_0 = abs(-2147483647i);
    let var_1 = u_input.a.x;
    let var_2 = 22182i << (u_input.a.x % 32u);
    let var_3 = Struct_1(true, vec3<bool>((!arg_1.x || false) & select(true, true, arg_0.a), true, !(arg_0.d.x != _wgslsmith_f_op_f32(f32(-1f) * -1239f))), ~u_input.a.x, arg_2.xzz);
    var var_4 = vec2<bool>(false, max(~countOneBits(4294967295u), 4294967295u) > func_4(!vec3<bool>(true, arg_1.x, arg_1.x), Struct_1(func_3(), select(vec3<bool>(true, true, arg_0.b.x), vec3<bool>(true, true, arg_3), vec3<bool>(true, true, true)), 0u, vec3<f32>(arg_2.x, arg_2.x, var_3.d.x)), Struct_1(var_3.b.x, arg_0.b, select(var_3.c, var_1, true), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-970f, 594f, var_3.d.x)))), ~12761u));
    return max(-_wgslsmith_mult_i32(u_input.c, -select(1i, var_2, var_4.x)), 0i);
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    var var_0 = vec3<f32>(1509f, _wgslsmith_f_op_f32(round(arg_1.d.x)), _wgslsmith_f_op_f32(abs(714f)));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1168f, 509f, arg_2.b.x))), arg_2.d.x), 688f)), var_0.x, arg_1.d.x);
    var var_1 = select(select(vec2<u32>(_wgslsmith_sub_u32(arg_2.c, 16042u), max(arg_2.c, u_input.a.x)), vec2<u32>(abs(18618u), ~u_input.a.x), arg_2.b.x) >> (abs(~(~u_input.a)) % vec2<u32>(32u)), u_input.a, any(select(arg_2.b.xy, !select(vec2<bool>(false, false), arg_2.b.yz, vec2<bool>(arg_2.a, true)), !any(arg_2.b.xx))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.x + arg_2.d.x)), arg_2.d.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_2.d.x, 557f), -1610f))))));
    let var_2 = _wgslsmith_sub_vec2_u32(~u_input.a, _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, ~arg_2.c), ~u_input.a), vec2<u32>(4294967295u, 0u)));
    return Struct_1(false, vec3<bool>(false, all(arg_2.b), !(!arg_1.b.x)), select(arg_2.c, _wgslsmith_add_u32(7681u & var_2.x, ~111049u), true) << (_wgslsmith_mod_u32(countOneBits(var_2.x), 4294967295u) % 32u), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-608f, arg_3, 1785f) - arg_1.d)), _wgslsmith_f_op_vec3_f32(-arg_2.d))))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: u32, arg_3: vec3<u32>) -> vec2<u32> {
    var var_0 = func_5(-(~_wgslsmith_clamp_i32(func_2(Struct_1(true, vec3<bool>(false, true, false), 16267u, vec3<f32>(1000f, 1311f, 568f)), vec4<bool>(false, true, false, true), vec4<f32>(395f, -792f, 1743f, 475f), true), u_input.d.x, -u_input.d.x)), Struct_1(!all(vec3<bool>(true, true, true)), !select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), 5044i > u_input.b.x), reverseBits(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(arg_3.x, 53456u)), arg_0.zz)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(880f, 600f, -1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(607f, 235f, -204f))))), Struct_1(true, !select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false)), func_4(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true))), Struct_1(all(vec2<bool>(true, false)), vec3<bool>(true, true, true), _wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(u_input.a.x, 0u, 4121u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(937f, 1662f, 1000f) - vec3<f32>(-577f, 1530f, -495f))), Struct_1(false, vec3<bool>(true, true, true), _wgslsmith_div_u32(arg_2, arg_1.x), vec3<f32>(375f, 738f, -887f)), ~(~arg_3.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-791f, -1187f, 291f))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-574f, -738f, 187f)))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1397f, 408f, 1263f), vec3<f32>(-521f, -953f, 207f), vec3<bool>(false, false, false))), vec3<f32>(-887f, 826f, 516f))))), 101f);
    return vec2<u32>(_wgslsmith_div_u32(~firstLeadingBit(arg_1.x), _wgslsmith_clamp_u32(32205u, 1u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c, 7856u, var_0.c, var_0.c), vec4<u32>(arg_1.x, 4294967295u, 29620u, arg_2))))), _wgslsmith_mult_u32(_wgslsmith_add_u32(0u, var_0.c), _wgslsmith_sub_u32(func_4(vec3<bool>(false, var_0.b.x, false), func_5(14325i, Struct_1(true, var_0.b, arg_0.x, vec3<f32>(1538f, var_0.d.x, 165f)), Struct_1(true, var_0.b, 0u, vec3<f32>(var_0.d.x, -354f, 236f)), -1034f), func_5(u_input.d.x, Struct_1(var_0.a, vec3<bool>(var_0.b.x, var_0.b.x, false), 0u, var_0.d), Struct_1(var_0.b.x, vec3<bool>(var_0.a, false, var_0.b.x), 95840u, var_0.d), 940f), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_1.x, var_0.c, 12126u), vec4<u32>(28935u, u_input.a.x, 4294967295u, 48672u))), select(59653u, 0u, var_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), !any(vec3<bool>(false, false, true))), vec2<bool>(true, true), all(vec2<bool>(true, true))), vec2<bool>(all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true)), all(vec3<bool>(true, true, select(true, false, false)))), !vec2<bool>(any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), all(vec3<bool>(true, true, true)) != true));
    let var_1 = true;
    let var_2 = var_0.x;
    let var_3 = min(u_input.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, u_input.c), u_input.d.zz));
    let var_4 = var_0.x;
    let var_5 = max(~(min(reverseBits(u_input.a), u_input.a) & func_1(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), vec3<u32>(u_input.a.x, 1083u, 49004u) | vec3<u32>(37837u, 18847u, 4294967295u), 48135u ^ u_input.a.x, vec3<u32>(1u, 19219u, 4294967295u))), _wgslsmith_div_vec2_u32(~vec2<u32>(34714u, 7551u << (u_input.a.x % 32u)), u_input.a));
    let var_6 = Struct_1(func_3(), select(vec3<bool>(true, true, false), !select(!vec3<bool>(var_4, false, true), vec3<bool>(true, false, false), !var_2), true), var_5.x, vec3<f32>(_wgslsmith_f_op_f32(ceil(335f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1f, -2085f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -305f) * 899f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1929f, 584f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1414f) - 280f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_6.d.x), _wgslsmith_f_op_f32(sign(-843f)))), func_5(_wgslsmith_add_i32(var_3, u_input.c), func_5(1931i, Struct_1(var_0.x, vec3<bool>(var_1, var_0.x, false), 49908u, vec3<f32>(var_6.d.x, var_6.d.x, 2579f)), var_6, var_6.d.x), var_6, _wgslsmith_f_op_f32(max(var_6.d.x, 488f))).d.x, 440f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(var_6.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_6.d.x, var_6.d.x, var_6.d.x))), !(!var_6.b))))), var_6.d.x, _wgslsmith_div_vec4_u32(vec4<u32>(var_5.x, 1u, u_input.a.x, var_6.c), vec4<u32>(7267u, u_input.a.x, _wgslsmith_sub_u32(~49789u, 31017u), ~u_input.a.x)));
}

