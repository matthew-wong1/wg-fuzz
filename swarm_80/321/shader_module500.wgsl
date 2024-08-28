struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec2<f32>,
    d: Struct_1,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: u32,
    d: vec2<f32>,
    e: f32,
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<u32>) -> f32 {
    let var_0 = select(arg_1.wzy, vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-arg_1.x, u_input.a, arg_0.c | u_input.a), max(arg_1.xyw, ~arg_1.wxw)), _wgslsmith_clamp_i32(arg_1.x, arg_0.c, reverseBits(arg_0.c & 2147483647i)), -arg_1.x >> (~_wgslsmith_dot_vec2_u32(arg_2.xy, arg_2.yy) % 32u)), select(vec3<bool>(4294967295u <= _wgslsmith_dot_vec3_u32(arg_2, vec3<u32>(arg_2.x, 1u, arg_0.b)), true, true), vec3<bool>(all(vec4<bool>(true, false, false, true)) | false, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 35779i), vec2<i32>(41143i, u_input.b)) < -2147483647i, any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), false))), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true))));
    var var_1 = _wgslsmith_sub_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(~1i, _wgslsmith_add_i32(26265i, var_0.x), 0i | arg_1.x), vec3<i32>(var_0.x, 0i, 25044i) | select(arg_1.zxy, var_0, vec3<bool>(false, false, false))), -(~arg_1.x >> (_wgslsmith_div_u32(arg_2.x, arg_0.b) % 32u)) & _wgslsmith_mult_i32(u_input.b, var_0.x));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1083f));
    let var_3 = _wgslsmith_f_op_f32(-1427f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(900f, _wgslsmith_div_f32(211f, _wgslsmith_f_op_f32(min(1630f, -360f))), true)))));
    var_1 = reverseBits(~arg_0.c);
    return _wgslsmith_f_op_f32(498f - _wgslsmith_f_op_f32(-var_2));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = -u_input.b;
    var var_1 = arg_0;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(arg_0, 1u, u_input.b), vec4<i32>(-62455i, u_input.b, u_input.c.x, -1i), vec3<u32>(1u, 5428u, 0u)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * -1195f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-676f - -1286f), -590f)), _wgslsmith_div_u32(4294967295u, _wgslsmith_div_u32(reverseBits(1u), 765u)), u_input.b);
    var_2 = Struct_1(1431f, ~abs(var_2.b), ~var_2.c);
    var var_3 = _wgslsmith_mult_i32(-var_2.c, 36044i);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1221f)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(func_3(Struct_1(arg_1.x, 20514u, 2147483647i), vec4<i32>(54482i, u_input.a, var_0, u_input.a), vec3<u32>(1u, 17164u, 0u)))), all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)))))), var_2.b, _wgslsmith_div_i32(-2147483647i, firstLeadingBit(_wgslsmith_sub_i32(~var_0, min(-1i, u_input.a)))));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> u32 {
    let var_0 = 64957u;
    let var_1 = select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, any(vec3<bool>(false, true, true))), vec4<bool>(select(true, false, false), all(vec3<bool>(false, false, true)), true, true)), select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, any(vec2<bool>(true, false))), _wgslsmith_f_op_f32(abs(arg_1)) != 522f), any(vec3<bool>(true, true, true)) & true), select(vec4<bool>(true, !any(vec3<bool>(true, false, true)), all(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true))), !vec4<bool>(true, 6139i <= u_input.b, true, true), true), false);
    let var_2 = Struct_2(~(~45298u), arg_0.b > _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(22113u, 2409u, 32267u)), select(vec3<u32>(arg_0.b, arg_0.b, arg_0.b), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(9429u, arg_0.b, var_0), vec3<u32>(var_0, 4294967295u, arg_0.b)), var_1.xww)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(arg_1)), _wgslsmith_f_op_f32(arg_1 * arg_1)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1034f, -378f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1, arg_1), vec2<f32>(arg_1, arg_1), vec2<bool>(false, var_1.x))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(776f, arg_0.a), vec2<f32>(arg_1, arg_0.a)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(607f, arg_0.a))), !vec2<bool>(var_1.x, false))), _wgslsmith_f_op_vec2_f32(vec2<f32>(647f, 1486f) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(238f, -1000f)))))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2788f * -836f), arg_1)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1282f * arg_1) * _wgslsmith_f_op_f32(arg_0.a * 938f))), ~_wgslsmith_sub_u32(var_0, 1u), ~(~(-u_input.c.x))), ~(~(vec4<u32>(var_0, arg_0.b, 0u, 12927u) >> ((vec4<u32>(2008u, arg_0.b, 4294967295u, var_0) >> (vec4<u32>(0u, var_0, var_0, 34260u) % vec4<u32>(32u))) % vec4<u32>(32u)))));
    var var_3 = var_2;
    let var_4 = (reverseBits(max(select(vec2<u32>(11125u, 33952u), vec2<u32>(0u, var_3.d.b), var_1.x), ~vec2<u32>(var_3.a, var_2.d.b))) >> (vec2<u32>(_wgslsmith_dot_vec3_u32(var_2.e.yyx, vec3<u32>(var_0, 4294967295u, var_2.a)), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(var_3.e, vec4<u32>(arg_0.b, arg_0.b, var_0, var_3.d.b), var_2.e), reverseBits(vec4<u32>(var_3.e.x, 0u, 16442u, arg_0.b)))) % vec2<u32>(32u))) & _wgslsmith_sub_vec2_u32(min(var_3.e.yx, ~select(vec2<u32>(1u, var_0), var_3.e.yw, var_2.b)), vec2<u32>(~func_2(arg_0.a, vec2<f32>(944f, 315f)).b, var_0));
    return 4294967295u;
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~select(vec4<u32>(9719u, 33142u, 0u, 40909u), vec4<u32>(4294967295u, 8104u, 4294967295u, 4294967295u), true), vec4<u32>(4294967295u, 0u, 1u, 0u)) & ~vec4<u32>(75539u, abs(0u), _wgslsmith_clamp_u32(85622u, 4294967295u, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(46190u, 4294967295u), vec2<u32>(4294967295u, 27874u))), ~firstTrailingBit(select(vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), vec4<u32>(4294967295u, 21580u, 0u, 28923u), vec4<bool>(true, true, true, true))) | ~reverseBits(abs(vec4<u32>(36827u, 1u, 71359u, 43994u))));
    let var_1 = vec3<i32>(u_input.a | u_input.c.x, ~(~(~min(u_input.c.x, u_input.a))), abs(16594i));
    var_0 = func_4(func_2(_wgslsmith_f_op_f32(735f * _wgslsmith_f_op_f32(f32(-1f) * -849f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-804f, 108f) * vec2<f32>(-734f, 1000f))) + vec2<f32>(565f, _wgslsmith_f_op_f32(f32(-1f) * -839f)))), _wgslsmith_f_op_f32(-func_2(591f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(215f, 1000f)))).a));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(-839f, 4294967295u, var_1.x & -16584i), firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(81952i, 1i, 34345i, var_1.x), vec4<i32>(u_input.c.x, var_1.x, 2147483647i, -2894i))), ~select(vec3<u32>(24236u, 32138u, 34870u), vec3<u32>(60861u, 4294967295u, 12067u), vec3<bool>(true, false, true))))), 4294967295u, 0i);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2078f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.a, var_2.a) - _wgslsmith_f_op_f32(exp2(var_2.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.a)) + -914f))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(-var_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(597f, -574f)) - _wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -521f), _wgslsmith_f_op_f32(step(521f, 238f))) + 1816f), -1213f, 211f);
    let var_1 = Struct_2(64381u, true, _wgslsmith_f_op_vec2_f32(exp2(var_0.xx)), Struct_1(var_0.x, 23929u, _wgslsmith_clamp_i32(-378i >> (select(4294967295u, 0u, true) % 32u), u_input.c.x, u_input.a)), vec4<u32>(~abs(0u), abs(1u), countOneBits(~abs(0u)), _wgslsmith_mod_u32(select(12753u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 35537u, 13063u), vec3<u32>(1u, 71009u, 10625u)), any(vec4<bool>(true, false, false, true))), ~1u)));
    var var_2 = firstLeadingBit(u_input.c.x);
    var var_3 = max(~(abs(~vec4<i32>(1i, u_input.a, 1i, 1i)) | _wgslsmith_clamp_vec4_i32(~vec4<i32>(1i, u_input.c.x, -1i, 0i), vec4<i32>(-17053i, var_1.d.c, 67305i, -2147483647i), ~vec4<i32>(0i, var_1.d.c, u_input.c.x, -1i))), ~vec4<i32>(1i, -5771i, -_wgslsmith_add_i32(30523i, var_1.d.c), -var_1.d.c));
    var_2 = -(var_1.d.c << (33380u % 32u));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x)), _wgslsmith_f_op_f32(-var_0.x), -1000f) * vec4<f32>(895f, -1209f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(475f - 699f) - _wgslsmith_f_op_f32(292f + 2237f)), _wgslsmith_f_op_f32(1544f - var_1.c.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(2195f, 1221f, var_0.x, var_1.c.x))) + var_0))));
    let var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_5.e.yy), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, -106f), var_0.ww, var_5.b)))), ~var_1.e.x, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_4.zz))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x)))));
}

