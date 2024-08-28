struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: i32, arg_3: bool) -> u32 {
    var var_0 = -arg_2;
    var var_1 = vec2<u32>(arg_0.b.c ^ arg_0.b.c, reverseBits(4294967295u));
    var var_2 = arg_0;
    let var_3 = firstLeadingBit(arg_0.a.a ^ -((1252i >> (var_2.b.c % 32u)) | -2147483647i));
    let var_4 = Struct_5(max(vec3<u32>(~(~82842u), _wgslsmith_dot_vec2_u32(u_input.c.yz, ~vec2<u32>(arg_0.a.b, var_1.x)), ~_wgslsmith_clamp_u32(arg_0.a.b, var_2.b.c, u_input.c.x)), vec3<u32>(0u, arg_0.b.c, _wgslsmith_mod_u32(14658u, 20464u) ^ var_1.x)));
    return var_4.a.x;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: bool) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(469f, arg_0.a) + vec2<f32>(290f, arg_0.a)))))) + vec2<f32>(arg_0.a, _wgslsmith_f_op_f32(round(-326f))));
    return arg_1;
}

fn func_2() -> vec2<bool> {
    let var_0 = 4294967295u;
    return func_4(Struct_2(515f, false, func_3(Struct_4(Struct_3(-1i, 2834u, vec4<i32>(u_input.b.x, u_input.a, 2147483647i, u_input.a), Struct_1(true, vec2<bool>(false, true), -1886f), vec3<f32>(-1219f, -531f, -944f)), Struct_2(-644f, false, u_input.c.x, true)), vec3<bool>(true, true, true), u_input.b.x, true), !all(vec2<bool>(false, false))), vec2<bool>(true, true), !all(vec3<bool>(true, all(vec2<bool>(true, true)), true)));
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_sub_u32(u_input.c.x, 0u);
    let var_1 = Struct_2(344f, arg_0, var_0, all(vec2<bool>(arg_1.b.x, true)));
    var var_2 = ~(-_wgslsmith_add_vec3_i32(-abs(vec3<i32>(1i, -776i, u_input.b.x)), max(vec3<i32>(2147483647i, u_input.a, 0i), u_input.b) | (vec3<i32>(2147483647i, u_input.a, 1i) & u_input.b)));
    var_2 = select(_wgslsmith_sub_vec3_i32(countOneBits(-vec3<i32>(24828i, var_2.x, 14226i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(58841i, 28296i), var_2.x, _wgslsmith_dot_vec2_i32(vec2<i32>(44959i, 6014i), u_input.b.xy)), ~abs(u_input.b), u_input.b)), _wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(var_2.x, -2063i, 2147483647i) >> (reverseBits(vec3<u32>(u_input.c.x, 1u, var_0)) % vec3<u32>(32u))), reverseBits(u_input.b)), max(~(var_0 ^ 14732u), ~func_3(Struct_4(Struct_3(0i, var_1.c, vec4<i32>(u_input.a, u_input.b.x, u_input.b.x, 2147483647i), arg_1, vec3<f32>(arg_1.c, 559f, -1333f)), var_1), vec3<bool>(false, false, true), u_input.b.x, true)) < ~(~(~var_0)));
    let var_3 = vec2<f32>(var_1.a, -445f);
    return -_wgslsmith_add_i32(var_2.x, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_2.x, var_2.x), vec3<i32>(var_2.x, -2147483647i, -2147483647i))));
}

fn func_1(arg_0: vec2<bool>, arg_1: i32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(436f, 1000f, true)), _wgslsmith_f_op_f32(-296f * 544f), any(vec3<bool>(true, arg_0.x, arg_0.x)))), 1000f)))));
    var_0 = 106f;
    var var_1 = vec3<bool>(true & arg_0.x, arg_0.x, ~arg_1 <= func_5(true, Struct_1(arg_0.x, func_2(), _wgslsmith_f_op_f32(max(-1817f, 824f)))));
    var var_2 = _wgslsmith_mod_u32(_wgslsmith_add_u32(1u, 34108u), 4294967295u);
    var_2 = reverseBits(_wgslsmith_mod_u32(0u, 4294967295u));
    return Struct_3(1i, 4294967295u, _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, ~arg_1, -u_input.a, 1i), abs(~vec4<i32>(u_input.a, -2147483647i, 20230i, 46392i)), vec4<i32>(arg_1, u_input.b.x, u_input.a, -2147483647i) << (reverseBits(vec4<u32>(u_input.c.x, u_input.c.x, 0u, u_input.c.x)) % vec4<u32>(32u))) >> (~vec4<u32>(reverseBits(0u), 1u, u_input.c.x, firstLeadingBit(4294967295u)) % vec4<u32>(32u)), Struct_1(all(!select(vec3<bool>(true, var_1.x, false), vec3<bool>(false, arg_0.x, false), false)), func_4(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -502f), arg_0.x, _wgslsmith_mod_u32(25740u, u_input.c.x), var_1.x && var_1.x), func_4(Struct_2(1153f, var_1.x, 4294967295u, var_1.x), var_1.yz, all(vec4<bool>(false, arg_0.x, true, false))), var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1007f * _wgslsmith_f_op_f32(-1170f - -1000f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1000f, -1352f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1465f, -948f, -344f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(822f, -605f, -1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-395f, -676f, 785f)))))));
}

fn func_6(arg_0: Struct_3) -> bool {
    var var_0 = u_input.c.zy;
    var_0 = max(u_input.c.zz, u_input.c.yx);
    let var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.e.x), 528f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.e.xy)))));
    var var_2 = Struct_3(countOneBits(u_input.b.x), 4294967295u, ~vec4<i32>(arg_0.a, arg_0.c.x, func_5(true, arg_0.d), 1i), arg_0.d, vec3<f32>(_wgslsmith_f_op_f32(arg_0.d.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(f32(-1f) * -606f), _wgslsmith_f_op_f32(706f + _wgslsmith_f_op_f32(f32(-1f) * -284f))));
    var var_3 = (select(~(~18996u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b, 4294967295u, var_2.b, 56607u), vec4<u32>(0u, 1u, arg_0.b, var_2.b)) >> (31674u % 32u), false) ^ (var_0.x >> (_wgslsmith_add_u32(1u, ~4294967295u) % 32u))) | 4294967295u;
    return var_2.d.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(u_input.c);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) + 308f) + 1f);
    let var_2 = vec3<bool>(false, select(any(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false))), !all(vec2<bool>(true, true)), func_6(func_1(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), u_input.b.x))), func_2().x);
    var var_3 = var_2.x & select(true, !any(vec4<bool>(var_2.x, true, var_2.x, var_2.x)), _wgslsmith_f_op_f32(-690f * func_1(var_2.xy, u_input.a).d.c) >= _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-714f, -559f))));
    var var_4 = true;
    let var_5 = Struct_4(Struct_3(-2147483647i, 31774u, vec4<i32>(u_input.a, _wgslsmith_mult_i32(~(-1196i), -1315i), 31329i, -2147483647i), func_1(func_2(), ~u_input.a).d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(453f, 308f, -1000f)))), Struct_2(_wgslsmith_f_op_f32(-1000f * 147f), true, var_0.a.x, all(select(vec4<bool>(true, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, true, var_2.x, var_2.x), vec4<bool>(false, true, var_2.x, false))) & all(vec4<bool>(var_2.x, false, var_2.x, false))));
    let var_6 = u_input.c.xx ^ ~(~select(~vec2<u32>(var_5.b.c, 1u), vec2<u32>(19272u, 16801u) & vec2<u32>(4294967295u, var_5.b.c), vec2<bool>(false, var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_5.a.c.x, func_1(func_4(var_5.b, !var_5.a.d.b, !var_2.x), 0i).c.x, _wgslsmith_mod_i32(u_input.a, _wgslsmith_div_i32(u_input.a, countOneBits(var_5.a.c.x)))), -1091f, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.b.a, _wgslsmith_f_op_f32(1808f * 1919f), -873f, _wgslsmith_f_op_f32(ceil(var_5.b.a)))))));
}

