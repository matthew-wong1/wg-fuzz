struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = u_input.a.x;
    let var_1 = -556f;
    let var_2 = _wgslsmith_div_i32(select(-11954i, u_input.c.x, !any(vec2<bool>(true, true))), u_input.c.x);
    let var_3 = max(~37213i, var_2);
    var var_4 = Struct_1(~(countOneBits(u_input.d.x | 0u) & select(countOneBits(u_input.d.x), 1u, false)), select(select(vec4<bool>(true, true, true, any(vec2<bool>(true, false))), vec4<bool>(u_input.d.x <= u_input.b, true, any(vec2<bool>(true, true)), true), true), vec4<bool>(true, true, true, true), var_1 <= -418f));
    return ~u_input.d.x;
}

fn func_2(arg_0: vec4<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(max(-374f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -686f) + _wgslsmith_f_op_f32(step(-645f, 1120f)))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    var var_2 = Struct_2(Struct_1(func_3(), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, false, true, false))), !(!all(vec4<bool>(false, false, false, true)) || true), _wgslsmith_mult_i32(0i, abs(u_input.c.x)) != countOneBits(0i), Struct_1(firstLeadingBit(~firstTrailingBit(arg_0.x)), vec4<bool>(true | any(vec3<bool>(true, true, false)), false, true, select(true, false, true))));
    var_0 = _wgslsmith_f_op_f32(-var_1);
    var var_3 = Struct_4(var_2.d.a);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_1))));
}

fn func_4(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_1(0u, arg_0);
    var var_1 = vec4<i32>(-18540i, _wgslsmith_mult_i32(abs(-1i), -1i), -abs(min(-23707i, 2147483647i)) & u_input.c.x, 1i);
    var_1 = _wgslsmith_div_vec4_i32(u_input.c, _wgslsmith_mod_vec4_i32(~u_input.c, _wgslsmith_mod_vec4_i32(select(u_input.c, u_input.c, arg_0.x), u_input.c))) & (~u_input.c << (countOneBits(vec4<u32>(u_input.b, 1u, u_input.b, var_0.a) | (vec4<u32>(64876u, var_0.a, u_input.d.x, 46925u) << (vec4<u32>(var_0.a, u_input.d.x, var_0.a, 4294967295u) % vec4<u32>(32u)))) % vec4<u32>(32u)));
    let var_2 = vec2<bool>(!(!any(var_0.b.yw)), arg_0.x);
    var var_3 = any(var_0.b.wy);
    return var_0;
}

fn func_1(arg_0: vec4<i32>) -> vec2<u32> {
    let var_0 = func_4(vec4<bool>(true, false, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<u32>(u_input.b, u_input.b, 0u, u_input.d.x)))) > 154f));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(114f)) - _wgslsmith_f_op_f32(sign(-309f))))));
    var var_2 = -(~select(u_input.a, u_input.c.xww, vec3<bool>(true, var_0.b.x, true)));
    let var_3 = Struct_4(_wgslsmith_mod_u32(78524u, var_0.a));
    var var_4 = _wgslsmith_clamp_i32(arg_0.x, min(_wgslsmith_div_i32(arg_0.x, var_2.x), 2147483647i), ~u_input.c.x) & ~(i32(-1i) * -var_2.x);
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~firstTrailingBit(select(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.d.x, u_input.b), u_input.d), max(vec2<u32>(23646u, 1u), func_1(u_input.c)), vec2<bool>(func_4(vec4<bool>(true, false, true, false)).b.x, true)));
    let var_1 = firstTrailingBit(var_0.x | 53447u) >> (~reverseBits(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(0u, 0u, var_0.x)), vec3<u32>(2221u, u_input.b, 0u))) % 32u);
    let var_2 = !vec2<bool>(true, u_input.d.x > ~0u);
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1278f, 1022f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1561f, 324f, var_2.x))), _wgslsmith_f_op_f32(floor(112f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-696f, -309f, -1387f, 933f), vec4<f32>(1645f, -530f, -1052f, 1965f), vec4<bool>(var_2.x, var_2.x, true, true))))) - vec4<f32>(_wgslsmith_f_op_f32(func_2(vec4<u32>(var_1, var_0.x, var_1, var_1))), -1000f, _wgslsmith_f_op_f32(trunc(-315f)), _wgslsmith_f_op_f32(2467f * 282f))), select(!func_4(vec4<bool>(true, var_2.x, false, var_2.x)).b, vec4<bool>(var_2.x, var_2.x, !var_2.x, true), vec4<bool>(var_2.x == var_2.x, false || var_2.x, var_2.x, false))))));
    var var_4 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_3, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, var_3.x, var_3.x)), select(vec4<bool>(var_2.x, true, var_2.x, true), vec4<bool>(true, true, false, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_3.x, 1853f), var_3.x, var_3.x, var_3.x) + _wgslsmith_f_op_vec4_f32(-var_3))), vec3<bool>(false || any(vec2<bool>(var_2.x, true)), (_wgslsmith_clamp_i32(u_input.a.x, u_input.c.x, -27828i) <= select(u_input.a.x, 2147483647i, var_2.x)) | var_2.x, all(vec3<bool>(true, false, false))), Struct_1(~4294967295u, !select(!vec4<bool>(var_2.x, var_2.x, true, var_2.x), select(vec4<bool>(true, false, false, var_2.x), vec4<bool>(false, var_2.x, true, false), vec4<bool>(true, false, var_2.x, false)), select(vec4<bool>(true, var_2.x, true, var_2.x), vec4<bool>(var_2.x, var_2.x, false, var_2.x), vec4<bool>(true, var_2.x, false, var_2.x)))));
    var_0 = ~(vec2<u32>(0u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1, 87165u, 81445u), vec3<u32>(var_4.c.a, 1u, var_4.c.a))) >> (~u_input.d % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-458f - var_4.a.x) * _wgslsmith_f_op_f32(-var_4.a.x)) + _wgslsmith_div_f32(1291f, _wgslsmith_f_op_f32(abs(-616f)))), -815f, var_4.a.x), vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.a, countOneBits(u_input.a)), _wgslsmith_div_i32(u_input.c.x, _wgslsmith_mod_i32(~u_input.a.x, 9411i)), 8523i, reverseBits(-firstLeadingBit(u_input.a.x))), vec3<u32>(var_1, _wgslsmith_mod_u32(~12213u, countOneBits(0u ^ var_0.x)), 1u & var_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-458f, 1186f, _wgslsmith_f_op_f32(abs(var_3.x)), _wgslsmith_f_op_f32(var_3.x * 554f))))));
}

