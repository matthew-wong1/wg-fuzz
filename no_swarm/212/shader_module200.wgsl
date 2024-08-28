struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: vec3<bool>, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_add_vec4_i32(select(countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, arg_0, 2147483647i, -45414i), vec4<i32>(arg_3.c.x, arg_0, u_input.a.x, arg_3.c.x))), vec4<i32>(-2147483647i, -14111i, ~arg_0, -25696i), true) | reverseBits(~vec4<i32>(arg_3.c.x, -2147483647i, u_input.a.x, arg_0) ^ (vec4<i32>(arg_3.c.x, arg_0, -1i, -29576i) >> (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u) % vec4<u32>(32u)))), vec4<i32>(~_wgslsmith_mod_i32(arg_3.c.x, -1i) ^ arg_3.c.x, _wgslsmith_sub_i32(~reverseBits(2147483647i), 5820i), u_input.a.x, 1i));
    var var_1 = max(-1i, 13745i);
    var_1 = _wgslsmith_dot_vec3_i32(~vec3<i32>(select(var_0.x, arg_0, arg_2.x), u_input.a.x, -2147483647i) >> (reverseBits(select(vec3<u32>(u_input.b.x, 4294967295u, 4294967295u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 32606u, u_input.b.x), u_input.b), select(vec3<bool>(false, false, false), vec3<bool>(arg_3.a.x, arg_2.x, false), false))) % vec3<u32>(32u)), countOneBits(firstLeadingBit(reverseBits(vec3<i32>(u_input.a.x, u_input.a.x, var_0.x)) & -var_0.wyx)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, -399f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(108f + arg_3.b.x))));
    var_2 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(min(-2151f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.x, -317f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + 378f) + _wgslsmith_div_f32(_wgslsmith_div_f32(arg_3.b.x, 1085f), _wgslsmith_f_op_f32(arg_1.x + arg_1.x))), arg_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1046f)))))));
    return var_2.x;
}

fn func_2(arg_0: vec2<f32>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(arg_0 * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1186f, _wgslsmith_f_op_f32(arg_0.x + -446f))), vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_f_op_f32(func_3(u_input.a.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-505f, 1281f)), vec3<bool>(true, true, true), Struct_1(vec3<bool>(true, true, false), arg_0, u_input.a)))))));
    let var_1 = 0i;
    let var_2 = Struct_2(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), all(vec4<bool>(true, true, true, false))), select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), select(true, false, true)), true));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-486f - 397f))))));
    let var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-520f)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(ceil(arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-619f)), -1754f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.x)) * arg_0.x))));
    return _wgslsmith_clamp_vec3_i32(-(~vec3<i32>(2147483647i, var_1, var_1)) ^ vec3<i32>(-64845i, u_input.a.x | ~u_input.a.x, -var_1), select(firstLeadingBit(_wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, 1i), vec3<i32>(0i, 41936i, 17571i)))), vec3<i32>(1i, _wgslsmith_sub_i32(~var_1, _wgslsmith_div_i32(16548i, u_input.a.x)), 1i), var_2.a.x), reverseBits(max(min(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(var_1, u_input.a.x, u_input.a.x)), ~vec3<i32>(-28344i, -2147483647i, 0i)), _wgslsmith_add_vec3_i32(abs(vec3<i32>(1i, -2147483647i, var_1)), firstTrailingBit(vec3<i32>(var_1, var_1, u_input.a.x))))));
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(570f, -820f, -154f, -816f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-847f, -531f, -948f, 1309f))))))));
    let var_1 = _wgslsmith_dot_vec3_i32(~(-vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x & 2147483647i)), _wgslsmith_sub_vec3_i32(min(_wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.a.x, arg_0, -31774i), func_2(var_0.yx), vec3<i32>(arg_0, arg_0, 3597i)), firstLeadingBit(-vec3<i32>(103028i, 0i, u_input.a.x))), select(_wgslsmith_add_vec3_i32(vec3<i32>(-14443i, -2147483647i, arg_0) >> (vec3<u32>(25278u, 46370u, u_input.b.x) % vec3<u32>(32u)), vec3<i32>(-56152i, u_input.a.x, arg_0)), ~vec3<i32>(u_input.a.x, arg_0, u_input.a.x) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 0u, u_input.b.x), vec3<u32>(31406u, u_input.b.x, u_input.b.x)) % vec3<u32>(32u)), arg_1.a.x)));
    let var_2 = vec4<f32>(var_0.x, var_0.x, var_0.x, -1893f);
    var var_3 = arg_1;
    let var_4 = Struct_1(select(var_3.a, vec3<bool>(any(select(vec4<bool>(var_3.a.x, arg_1.a.x, false, true), vec4<bool>(var_3.a.x, true, false, arg_1.a.x), arg_1.a.x)), true, false), true), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-305f, -1637f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_2.x, var_0.x), var_2.x)))), min(max(u_input.a, _wgslsmith_mod_vec2_i32(vec2<i32>(var_1, var_1), u_input.a)), u_input.a << (countOneBits(u_input.b.yy) % vec2<u32>(32u))) | vec2<i32>(arg_0, u_input.a.x));
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (vec3<u32>(65997u, _wgslsmith_dot_vec2_u32(u_input.b.yy, firstLeadingBit(u_input.b.yz)), 1u) | ~func_1(~1i, Struct_2(vec3<bool>(false, true, true)))) >> (vec3<u32>(~(~_wgslsmith_div_u32(9178u, 4294967295u)), u_input.b.x, abs(25171u)) % vec3<u32>(32u));
    let var_1 = u_input.b.yx;
    let var_2 = Struct_2(vec3<bool>(any(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true))), any(vec3<bool>(true, true, true)), any(vec4<bool>(true, select(true, false, true), true, select(true, false, false)))));
    var var_3 = select(var_2.a.zz, var_2.a.xz, ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(var_1.x, var_0.x), var_0.x) > abs(_wgslsmith_sub_u32(_wgslsmith_mod_u32(var_0.x, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.x, 169u, 5927u), vec4<u32>(1083u, 54595u, u_input.b.x, var_0.x)))));
    let var_4 = Struct_1(var_2.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 584f) + vec2<f32>(1481f, -338f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-931f, 434f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(149f, 2468f), vec2<f32>(926f, 159f))))))), -vec2<i32>(select(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), select(-2147483647i, 1223i, var_3.x), !var_2.a.x), -2147483647i | u_input.a.x));
    var_3 = select(!select(select(var_4.a.zy, !vec2<bool>(var_2.a.x, true), var_2.a.yz), select(var_2.a.zx, select(vec2<bool>(var_4.a.x, false), vec2<bool>(var_3.x, var_4.a.x), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(false, true), true)), var_2.a.x), vec2<bool>(!all(select(var_2.a, var_4.a, var_3.x)), all(var_2.a)), var_2.a.yy);
    var_3 = vec2<bool>(any(vec2<bool>(true, true)), false);
    var_3 = select(select(vec2<bool>(!var_2.a.x, false), var_2.a.zz, !var_4.a.x), select(!select(select(vec2<bool>(var_2.a.x, var_3.x), vec2<bool>(var_3.x, var_4.a.x), false), vec2<bool>(var_3.x, var_2.a.x), select(vec2<bool>(var_3.x, true), vec2<bool>(false, false), false)), !select(var_4.a.xx, var_4.a.xz, vec2<bool>(var_2.a.x, var_3.x)), vec2<bool>((var_3.x && true) | true, var_4.a.x | true)), true && (~(-u_input.a.x) < ~(~53846i)));
    let var_5 = _wgslsmith_mod_i32(~var_4.c.x, min(_wgslsmith_clamp_i32(var_4.c.x, abs(var_4.c.x), _wgslsmith_add_i32(u_input.a.x, var_4.c.x)), 5675i));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.b.x - var_4.b.x)));
}

