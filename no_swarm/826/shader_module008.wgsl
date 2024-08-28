struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(39872u, 24342u, 5980u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>) -> vec3<u32> {
    var var_0 = vec2<i32>(~(i32(-1i) * -9895i), ~_wgslsmith_mult_i32(arg_0.b, 29655i));
    global0 = arg_1;
    let var_1 = vec4<i32>(_wgslsmith_sub_i32(-var_0.x, var_0.x) << (firstTrailingBit(arg_1.x) % 32u), countOneBits(countOneBits(arg_0.b)), -(~(-2147483647i)), var_0.x);
    var var_2 = false;
    return arg_1;
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> i32 {
    var var_0 = max(arg_0.a.x, -arg_0.a.x ^ _wgslsmith_mod_i32(arg_0.a.x, 2147483647i & -u_input.a.x));
    global0 = ~max(~func_3(Struct_1(vec4<f32>(arg_1, arg_1, arg_1, arg_1), -2147483647i), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 39083u, global0.x), vec3<u32>(global0.x, 1u, 4294967295u))), ~reverseBits(~vec3<u32>(global0.x, global0.x, global0.x)));
    var_0 = _wgslsmith_sub_i32(arg_0.a.x, 0i);
    global0 = select(firstLeadingBit(_wgslsmith_mod_vec3_u32(~vec3<u32>(26624u, 10970u, 1u), ~vec3<u32>(0u, global0.x, 555u)) | select(countOneBits(vec3<u32>(0u, global0.x, 16726u)), vec3<u32>(global0.x, global0.x, 22897u), true)), vec3<u32>(_wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(40288u, 1u), global0.xy), firstLeadingBit(global0.xy) ^ global0.xx), global0.x, ~25195u), !any(vec2<bool>(false, true)));
    var var_1 = true | (-2147483647i < ~(-arg_0.a.x << (1u % 32u)));
    return _wgslsmith_sub_i32(0i, firstLeadingBit(-33734i | u_input.a.x));
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: i32) -> f32 {
    let var_0 = _wgslsmith_mult_u32(~global0.x, 1u);
    var var_1 = ~vec3<i32>(arg_2, _wgslsmith_sub_i32(min(0i, -54848i) >> ((global0.x >> (global0.x % 32u)) % 32u), _wgslsmith_sub_i32(~(-2147483647i), func_2(Struct_2(vec4<i32>(arg_1, -28641i, arg_1, 1i)), arg_0.x))), arg_1);
    let var_2 = Struct_2(-_wgslsmith_clamp_vec4_i32(~vec4<i32>(-2147483647i, arg_1, arg_2, 0i), vec4<i32>(1i, 1i | arg_1, var_1.x ^ arg_2, arg_1), -vec4<i32>(2147483647i, u_input.a.x, 0i, -2147483647i)));
    var_1 = vec3<i32>(u_input.a.x, u_input.a.x, -arg_2);
    let var_3 = vec2<bool>(true, true & !any(vec4<bool>(false, true, false, false)));
    return _wgslsmith_f_op_f32(f32(-1f) * -1852f);
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: i32, arg_3: vec4<f32>) -> Struct_2 {
    global0 = min(reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(global0.x, 46796u, global0.x), vec3<u32>(65628u, global0.x, 1u))) | select(~vec3<u32>(0u, global0.x, 0u), min(vec3<u32>(4294967295u, 4294967295u, global0.x), vec3<u32>(global0.x, global0.x, global0.x)), any(vec3<bool>(true, true, false))), abs(vec3<u32>(14553u, 0u, global0.x) & vec3<u32>(1u, global0.x, 4294967295u))) >> (~_wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(52889u, 59182u, global0.x)), ~(~vec3<u32>(1u, global0.x, global0.x))) % vec3<u32>(32u));
    global0 = vec3<u32>(17845u, 110789u, 24544u);
    let var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(378f, _wgslsmith_f_op_f32(trunc(1437f)), _wgslsmith_f_op_f32(round(-1149f)), 376f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_3))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1, arg_3.x, -1247f, _wgslsmith_f_op_f32(exp2(arg_3.x)))))), -1i);
    var var_1 = Struct_2(vec4<i32>(0i | var_0.b, -64358i, _wgslsmith_div_i32(17629i, ~reverseBits(arg_0)), ~firstLeadingBit(select(var_0.b, -2147483647i, false))));
    var_1 = Struct_2(vec4<i32>(u_input.a.x, var_0.b, var_1.a.x, arg_0));
    return Struct_2(~vec4<i32>(_wgslsmith_mod_i32(arg_2, 38703i) << (firstLeadingBit(global0.x) % 32u), -5252i, 36115i, 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<u32>(7080u, ~(~1u), _wgslsmith_mod_u32(~33540u, ~global0.x & 1u) << (~61081u % 32u));
    var var_0 = func_4(53770i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec3<f32>(-1160f, 1031f, 842f), -29247i, u_input.a.x)), _wgslsmith_f_op_f32(1000f + 580f)))), 18195i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-441f, -113f, 524f, _wgslsmith_f_op_f32(f32(-1f) * -187f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1774f, 108f, -376f, 211f)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1169f, 270f, 243f, 256f), vec4<f32>(-396f, -1452f, -955f, 434f)))), !all(vec2<bool>(true, true)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(760f, -1895f, -240f, 1112f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(585f, 636f, -1259f, 1824f)), vec4<bool>(false, false, true, true))))));
    var var_1 = vec4<u32>(_wgslsmith_dot_vec2_u32(max(vec2<u32>(global0.x, 35569u), global0.yy) & (vec2<u32>(global0.x, 1u) ^ global0.xx), reverseBits(vec2<u32>(1u, global0.x))), ~func_3(Struct_1(vec4<f32>(230f, -655f, 620f, -269f), 2147483647i), vec3<u32>(global0.x, 2243u, 0u)).x >> (~(~1u) % 32u), 1366u, 55645u) | abs(~(~(~vec4<u32>(15848u, global0.x, global0.x, global0.x))));
    var_1 = ~(~_wgslsmith_add_vec4_u32(vec4<u32>(~1u, var_1.x, 29059u, 18497u), ~vec4<u32>(global0.x, global0.x, 98550u, 1u)));
    var var_2 = func_4(20195i, 2485f, ~2147483647i, vec4<f32>(_wgslsmith_f_op_f32(step(-1574f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1188f + 113f)))), -1366f, _wgslsmith_f_op_f32(trunc(-394f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -359f), 863f, false))));
    var_2 = func_4(_wgslsmith_div_i32(func_4(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1717f + -1824f) * 630f), 1i, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-647f, 2489f, -701f, -185f) * vec4<f32>(-338f, -1756f, 862f, -650f))))).a.x, _wgslsmith_mod_i32(abs(_wgslsmith_add_i32(23195i, var_0.a.x)), 1i)), -1000f, _wgslsmith_mod_i32(21713i, ~abs(min(1i, var_2.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(805f, -1072f, 677f, -1043f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(429f, -314f, 1000f, 518f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-349f, -1545f, -111f, -1488f)), vec4<f32>(296f, 213f, -438f, -1193f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1477f, 647f, 1217f, -252f) - vec4<f32>(1765f, -238f, -512f, -1088f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-990f, -280f, 2810f, -185f), vec4<f32>(1805f, 1000f, 259f, -1000f))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -759f), _wgslsmith_f_op_f32(func_1(vec3<f32>(640f, 395f, -799f), 38810i, -21797i)), 424f, -1101f))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec4_i32((var_2.a | vec4<i32>(u_input.a.x, u_input.a.x, var_0.a.x, -8551i)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, 48804u, 51785u, 4294967295u), vec4<u32>(0u, var_1.x, 1u, var_1.x)) % vec4<u32>(32u)), vec4<i32>(-1i, reverseBits(u_input.a.x), var_0.a.x << (35404u % 32u), var_0.a.x << (global0.x % 32u))), var_0.a.zyy);
}

