struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1f, -237f)))))));
    let var_1 = Struct_1(-max(_wgslsmith_mod_i32(u_input.a, u_input.a), 1i) & u_input.a, countOneBits(~(0u | firstTrailingBit(62909u))), firstLeadingBit(~1u));
    let var_2 = select(select(vec2<bool>(true, any(vec2<bool>(true, true))), !select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, false), all(vec2<bool>(false, false))), vec2<bool>(true, (var_1.a >> (4788u % 32u)) <= -409i)), vec2<bool>(false, true), !select(vec2<bool>(true, u_input.a < var_1.a), vec2<bool>(select(false, false, true), true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), true)));
    let var_3 = Struct_1(_wgslsmith_clamp_i32(countOneBits(~var_1.a), var_1.a, var_1.a), ~12933u, ~var_1.b);
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-432f - -1232f), -1148f);
    return abs(_wgslsmith_div_vec3_u32(vec3<u32>(2026u, ~max(var_1.b, var_3.c), _wgslsmith_mod_u32(1u, var_3.c) << (~var_1.b % 32u)), abs(~countOneBits(vec3<u32>(1u, var_3.c, var_1.b)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec3<bool>) -> i32 {
    let var_0 = Struct_1(-_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.a, u_input.a, arg_2.a), vec3<i32>(2147483647i, 16032i, -1i)) ^ vec3<i32>(arg_0.a, u_input.a, arg_0.a), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, -1i, arg_2.a), abs(vec3<i32>(arg_0.a, arg_0.a, arg_0.a)))), abs(~arg_0.c & ~arg_2.b) & ~(~_wgslsmith_dot_vec2_u32(arg_1.xy, arg_1.zy)), 113808u);
    let var_1 = _wgslsmith_mod_vec4_u32(max(~(~countOneBits(vec4<u32>(arg_2.c, arg_2.c, arg_1.x, 42913u))), ~vec4<u32>(arg_2.b, var_0.b, 40286u, 1u) & vec4<u32>(arg_0.c, arg_0.c, arg_0.c, 101942u)), firstTrailingBit(select(vec4<u32>(100548u, 0u, 0u, 1u), ~vec4<u32>(72062u, arg_0.c, arg_0.c, arg_1.x), false)) ^ ~abs(vec4<u32>(43962u, 1u, arg_1.x, 1u)));
    var var_2 = arg_3;
    var_2 = vec3<bool>(true, true, var_2.x);
    var_2 = arg_3;
    return ~_wgslsmith_mod_i32(abs(~arg_0.a), _wgslsmith_mult_i32(select(-1i, 2147483647i, all(arg_3.zx)), (-38145i << (0u % 32u)) ^ -u_input.a));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_1(func_4(arg_2, ~func_3(), arg_2, vec3<bool>(arg_0.x, arg_0.x, false)), arg_2.b, ~firstTrailingBit(62553u));
    var_0 = arg_2;
    var_0 = arg_2;
    var var_1 = _wgslsmith_mult_vec4_i32(-max(-vec4<i32>(var_0.a, -27606i, u_input.a, u_input.a), min(vec4<i32>(-83065i, 10083i, -2147483647i, u_input.a), ~vec4<i32>(var_0.a, 1i, var_0.a, var_0.a))), -reverseBits(_wgslsmith_mult_vec4_i32(max(vec4<i32>(-1i, -5374i, var_0.a, -30960i), vec4<i32>(arg_2.a, u_input.a, 0i, var_0.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(16221i, var_0.a, -2147483647i, -1i), vec4<i32>(arg_2.a, 0i, 0i, u_input.a)))));
    var_0 = Struct_1(firstTrailingBit(arg_2.a), arg_2.b, var_0.c);
    return arg_1.x;
}

fn func_1() -> f32 {
    var var_0 = all(vec4<bool>(true, true, true, true));
    let var_1 = all(vec2<bool>(all(vec2<bool>(true, true)), any(vec4<bool>(true, true, true, true))));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-526f, 1664f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<bool>(false, var_1), vec2<f32>(260f, -807f), Struct_1(-2147483647i, 0u, 5262u))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(891f + 1295f), _wgslsmith_f_op_f32(f32(-1f) * -284f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))))));
    let var_3 = Struct_1(-(~((0i ^ u_input.a) | 1i)), firstTrailingBit(~(~max(15348u, 54887u))), _wgslsmith_sub_u32(~(_wgslsmith_clamp_u32(0u, 57018u, 4294967295u) ^ ~33396u), 27748u));
    var_0 = false;
    return _wgslsmith_f_op_f32(func_2(select(!(!select(vec2<bool>(var_1, true), vec2<bool>(false, var_1), var_1)), select(vec2<bool>(true, true), select(!vec2<bool>(var_1, false), vec2<bool>(true, var_1), select(vec2<bool>(true, var_1), vec2<bool>(var_1, true), true)), select(!vec2<bool>(var_1, false), select(vec2<bool>(var_1, var_1), vec2<bool>(true, var_1), vec2<bool>(false, var_1)), vec2<bool>(var_1, true))), false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_2.x + -244f), _wgslsmith_f_op_f32(func_2(vec2<bool>(true, true), vec2<f32>(380f, var_2.x), Struct_1(u_input.a, 70133u, var_3.b)))))), var_3));
}

fn func_5(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1 + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(arg_1.x, arg_1.x)), _wgslsmith_f_op_f32(func_1()), 609f, arg_1.x))));
    let var_1 = Struct_1(-reverseBits(-20979i), 19677u, arg_2.b);
    var var_2 = _wgslsmith_sub_vec4_u32(select(countOneBits(vec4<u32>(min(0u, 4294967295u), var_1.c, 4294967295u, var_1.b)), vec4<u32>(~98320u, 71699u, var_1.b, ~var_1.c) ^ ~vec4<u32>(var_1.c, var_1.c, 34169u, var_1.b), vec4<bool>(true, true, true, true)), ~vec4<u32>(~_wgslsmith_mult_u32(4294967295u, var_1.b), ~firstLeadingBit(35200u), var_1.b ^ var_1.c, ~29012u));
    var var_3 = arg_2.a;
    var_2 = _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(var_1.b, var_2.x, 56215u, 98058u)) << (vec4<u32>(arg_2.b, 1u, 1u, var_2.x) % vec4<u32>(32u)), vec4<u32>(1u, 0u, var_2.x, ~var_1.c)), countOneBits(~_wgslsmith_add_vec4_u32(vec4<u32>(51606u, 0u, 1u, 30609u), vec4<u32>(var_1.c, arg_2.b, 37316u, 1091u)))), vec4<u32>(~min(arg_2.c, arg_2.b), ~4294967295u, _wgslsmith_dot_vec3_u32(max(var_2.yyy, reverseBits(vec3<u32>(8491u, arg_2.b, 23878u))), countOneBits(var_2.wxx)), 4294967295u));
    return arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(9810i, 56632u, func_5(u_input.a, vec4<f32>(_wgslsmith_div_f32(-937f, _wgslsmith_f_op_f32(select(-2386f, -237f, true))), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(279f - _wgslsmith_f_op_f32(f32(-1f) * -3240f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-554f)) + _wgslsmith_f_op_f32(f32(-1f) * -344f))), Struct_1(firstTrailingBit(1i), ~(~26983u), ~_wgslsmith_clamp_u32(45658u, 32421u, 0u))));
    var var_1 = 1u;
    var var_2 = !(!vec4<bool>(all(vec2<bool>(true, false)), any(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, false)) || true, false && (var_0.c != var_0.b)));
    var_1 = var_0.c;
    var_2 = !vec4<bool>(!any(vec3<bool>(true, true, false)), select((-970i > u_input.a) & false, false, var_2.x), false, var_2.x);
    let var_3 = _wgslsmith_mult_vec4_u32(min(_wgslsmith_div_vec4_u32(~countOneBits(vec4<u32>(var_0.b, var_0.b, var_0.b, 5430u)), min(~vec4<u32>(0u, 4294967295u, var_0.b, var_0.b), vec4<u32>(var_0.b, 21405u, 1u, var_0.b))), vec4<u32>(var_0.b, var_0.b, _wgslsmith_add_u32(50633u, var_0.c), 30162u)), firstLeadingBit(~(~(~vec4<u32>(0u, 1u, 1u, 29395u)))));
    let var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.a, -33698i >> ((35800u ^ var_4.c) % 32u), -abs(func_4(var_0, var_3.wzx, Struct_1(var_0.a, var_3.x, 0u), var_2.xzy)), max(_wgslsmith_clamp_i32(var_4.a, _wgslsmith_mod_i32(0i, var_4.a), var_0.a), u_input.a)), u_input.a);
}

