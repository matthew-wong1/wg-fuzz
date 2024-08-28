struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<f32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = Struct_2(firstLeadingBit(vec2<i32>(-1i) * -min(vec2<i32>(2147483647i, arg_0), vec2<i32>(arg_0, -50429i))), _wgslsmith_clamp_i32(arg_0, arg_0, (i32(-1i) * -arg_0) >> (select(~4294967295u, u_input.a.x, all(vec4<bool>(false, true, false, true))) % 32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0, -arg_0), vec2<i32>(_wgslsmith_sub_i32(i32(-1i) * -31055i, countOneBits(-15040i)), reverseBits(-11449i))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(485f + 455f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(309f + 182f) + _wgslsmith_f_op_f32(ceil(-580f)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(564f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -403f) - -1871f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(step(675f, -1191f)), -927f)))));
    var_1 = vec2<f32>(var_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(395f * -1000f) - 1f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(178f - var_1.x) - _wgslsmith_f_op_f32(f32(-1f) * -875f))))));
    let var_2 = select(vec3<bool>(var_0.d.a & var_0.d.a, true, var_0.d.a), !select(!select(vec3<bool>(var_0.d.a, var_0.d.a, false), vec3<bool>(true, false, true), false), vec3<bool>(!var_0.d.a, 0u <= u_input.a.x, all(vec3<bool>(var_0.d.a, false, false))), select(select(vec3<bool>(true, true, false), vec3<bool>(var_0.d.a, false, var_0.d.a), vec3<bool>(true, var_0.d.a, var_0.d.a)), vec3<bool>(true, var_0.d.a, false), true)), !(!(!select(vec3<bool>(true, var_0.d.a, var_0.d.a), vec3<bool>(var_0.d.a, var_0.d.a, var_0.d.a), var_0.d.a))));
    let var_3 = var_2.x;
    return select((false || !var_0.d.a) || false, false, true);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: i32) -> f32 {
    var var_0 = _wgslsmith_mod_vec3_i32(max(vec3<i32>(arg_2, -(~0i), -2147483647i), vec3<i32>(-1i, max(0i, 40467i), arg_2) & reverseBits(vec3<i32>(arg_2, arg_2, arg_2) << (vec3<u32>(36627u, u_input.a.x, 0u) % vec3<u32>(32u)))), vec3<i32>(0i, ~(-6237i), -(~abs(arg_2))));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1311f - 415f), 660f, any(!(!(!vec4<bool>(arg_0.x, arg_1.x, arg_1.x, arg_1.x))))));
    var var_2 = u_input.a.x;
    var_2 = _wgslsmith_add_u32(4294967295u, _wgslsmith_sub_u32(_wgslsmith_div_u32(~_wgslsmith_mult_u32(4294967295u, 0u), u_input.a.x), u_input.a.x));
    var var_3 = Struct_2(var_0.yz, _wgslsmith_mod_i32(2458i, -var_0.x), max(var_0.yz, countOneBits(var_0.xy)), Struct_1(!func_3(-67242i) & any(vec2<bool>(true, true))));
    return 536f;
}

fn func_2() -> Struct_2 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(943f, -2064f) - _wgslsmith_f_op_f32(step(296f, 1065f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(164f * -742f))) * _wgslsmith_f_op_f32(func_4(vec2<bool>(func_3(53066i), all(vec2<bool>(false, true))), vec3<bool>(true, true, true), reverseBits(26802i >> (u_input.a.x % 32u))))), _wgslsmith_f_op_f32(-1300f + -1372f));
    let var_1 = countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(1i, -14092i), (-5256i << (u_input.a.x % 32u)) << (6630u % 32u), _wgslsmith_sub_i32(0i, abs(-40027i))), firstLeadingBit(-(~vec3<i32>(-2147483647i, 14782i, 6750i)))));
    var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1539f, 1054f), vec2<f32>(-493f, 670f)) - _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, -468f), vec2<f32>(var_0.x, -221f))))), vec2<f32>(_wgslsmith_div_f32(-681f, -633f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) * var_0.x)), func_3(var_1.x)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-690f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(vec2<bool>(false, true), vec3<bool>(true, true, true), -2147483647i)), var_0.x), _wgslsmith_f_op_f32(1000f - _wgslsmith_div_f32(var_0.x, var_0.x)), -762f))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), -327f);
    return Struct_2(-vec2<i32>(var_1.x, var_1.x), -50875i, -(var_1.xx | var_1.yz), Struct_1(false));
}

fn func_1() -> i32 {
    var var_0 = func_2();
    var var_1 = vec3<bool>(_wgslsmith_dot_vec2_i32(-abs(var_0.c), vec2<i32>(-26046i, reverseBits(1i))) <= var_0.b, var_0.d.a, all(!vec4<bool>(var_0.d.a, var_0.d.a, var_0.d.a, var_0.d.a)) && func_3(-var_0.b));
    let var_2 = ~(~max(vec3<i32>(-1i, var_0.a.x, var_0.a.x), vec3<i32>(2147483647i, var_0.c.x, 57577i))) | _wgslsmith_clamp_vec3_i32(select(abs(vec3<i32>(var_0.b, var_0.c.x, var_0.a.x) & vec3<i32>(-23039i, 14184i, -55518i)), ~vec3<i32>(var_0.a.x, -25191i, var_0.b), select(vec3<bool>(var_1.x, true, var_1.x), !vec3<bool>(true, true, var_1.x), !vec3<bool>(true, var_0.d.a, var_0.d.a))), _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(-67378i, 1i, var_0.a.x)), ~vec3<i32>(var_0.a.x, var_0.a.x, 2147483647i)), abs(-vec3<i32>(var_0.b, var_0.c.x, var_0.c.x)), firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.a.x, -32108i, var_0.c.x), vec3<i32>(var_0.c.x, var_0.a.x, -1i)))), reverseBits(firstTrailingBit(vec3<i32>(2697i, 61566i, 1i))) << (~(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) % vec3<u32>(32u)));
    var_1 = select(vec3<bool>(!(!any(vec3<bool>(var_1.x, true, false))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1417f + -319f))) > _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 938f) * -1576f), var_0.d.a), !select(vec3<bool>(var_0.d.a, true, true), select(select(vec3<bool>(false, var_0.d.a, true), vec3<bool>(true, false, true), var_1.x), vec3<bool>(var_0.d.a, false, var_1.x), var_1.x && true), vec3<bool>(true, var_0.d.a, false)), select(vec3<bool>(!(!var_1.x), false, func_3(-6620i)), select(!vec3<bool>(var_1.x, true, var_0.d.a), vec3<bool>(u_input.a.x == 53547u, true, false & var_0.d.a), true), select(vec3<bool>(any(vec2<bool>(false, false)), var_0.d.a, !var_1.x), vec3<bool>(var_1.x & var_0.d.a, true & var_1.x, false), var_0.d.a)));
    let var_3 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(337f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -661f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1243f))))), -3023f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(570f)))))));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec3_i32(-(~select(vec3<i32>(1i, -1i, 8360i), abs(vec3<i32>(-2147483647i, 24344i, -33859i)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)))), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i), ~countOneBits(vec3<i32>(2147483647i, 42664i, -35045i))), vec3<i32>(1i, 0i, min(-9805i, -2147483647i)) ^ vec3<i32>(_wgslsmith_add_i32(0i, 390i), abs(1i), func_1())), vec3<i32>(-43130i, _wgslsmith_add_i32(64910i, _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-40752i, 2147483647i, 26177i, -42942i)), vec4<i32>(-7805i, -2147483647i, -1i, -2147483647i) >> (vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x) % vec4<u32>(32u)))), -(~(-2147483647i))));
    var_0 = _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(~(-var_0.x), -1i, 19710i), ~vec3<i32>(var_0.x, -25788i, var_0.x)), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-16294i, -1i, 2870i, var_0.x), reverseBits(vec4<i32>(var_0.x, var_0.x, var_0.x, -2147483647i))), countOneBits(var_0.x)), ~var_0.x, 30035i), _wgslsmith_add_vec3_i32(vec3<i32>(firstLeadingBit(4387i), abs(countOneBits(var_0.x)), reverseBits(1i)), -(~vec3<i32>(var_0.x, 1i, var_0.x)) >> (abs(vec3<u32>(u_input.a.x, 30148u, 1u)) % vec3<u32>(32u))));
    let var_1 = Struct_3(vec4<u32>(u_input.a.x, u_input.a.x, ~max(_wgslsmith_clamp_u32(u_input.a.x, 0u, 64236u), u_input.a.x), abs(abs(u_input.a.x | 69473u))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    let var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * 144f), -1027f)) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1692f, 466f))))))));
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_3.x, _wgslsmith_f_op_f32(var_3.x - -1535f), -924f, 1000f)))), -447f, var_3, vec4<i32>(1i, firstTrailingBit(var_0.x), abs(var_0.x), var_0.x), ~(~min(_wgslsmith_sub_u32(var_1.a.x, u_input.a.x), ~var_1.a.x)));
}

