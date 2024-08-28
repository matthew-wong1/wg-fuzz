struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec2<f32>,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: vec2<u32>) -> f32 {
    let var_0 = -10676i;
    var var_1 = arg_1.x;
    var_1 = -410f;
    var_1 = arg_1.x;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), 1455f, any(vec2<bool>(true, true)) || any(vec4<bool>(false, true, false, true)))) + -325f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1522f)) - -341f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.x * arg_1.x), arg_1.x, true)))))));
}

fn func_2(arg_0: i32, arg_1: u32) -> Struct_4 {
    var var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-717f, _wgslsmith_f_op_f32(func_3(vec4<u32>(arg_1, arg_1, arg_1, arg_1), vec2<f32>(134f, -1275f), vec2<u32>(8031u, 4294967295u))), _wgslsmith_f_op_f32(f32(-1f) * -833f), -553f) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1085f, 1000f, -897f, 1000f), vec4<f32>(-580f, -1000f, -2238f, -630f), vec4<bool>(true, true, false, false)))))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(1000f - 339f), _wgslsmith_f_op_f32(-721f * -179f), _wgslsmith_f_op_f32(abs(478f)), _wgslsmith_f_op_f32(435f * 365f))))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(-1848f, 904f, 1000f), vec3<f32>(-149f, 1679f, 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(787f, -610f, -1000f))))), ~_wgslsmith_sub_vec3_i32(vec3<i32>(1i, u_input.b, arg_0), vec3<i32>(arg_0, u_input.b, u_input.b)), min(select(u_input.c, u_input.c, vec3<bool>(true, true, false)) >> (~vec3<u32>(4294967295u, arg_1, u_input.c.x) % vec3<u32>(32u)), u_input.c), _wgslsmith_mult_u32(max(u_input.d, 5251u) << (u_input.c.x % 32u), 0u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1528f, 1478f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1033f, -1015f))))), true, u_input.a.x);
    var_0 = Struct_5(var_0.a, var_0.b, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_0.c))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-968f, -952f)))))), all(select(vec3<bool>(false, !var_0.d, all(vec4<bool>(true, var_0.d, false, true))), !(!vec3<bool>(false, var_0.d, true)), vec3<bool>(!var_0.d, true, true))), 76726u);
    let var_1 = var_0.b;
    var_0 = Struct_5(var_0.a, var_0.b, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a.x, 526f), var_0.b.a.zx)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.c.x), -1147f)), vec2<bool>(select(!var_0.d, !var_0.d, var_0.d), var_0.d))), var_0.d, ~_wgslsmith_add_u32(~4294967295u & var_0.e, ~var_0.e | 9452u));
    var_0 = Struct_5(var_0.a, var_0.b, vec2<f32>(var_0.a.x, var_0.b.a.x), var_0.d || var_0.d, ~1u);
    return Struct_4(select(vec2<i32>(var_0.b.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, 1875i, var_1.b.x, var_1.b.x), countOneBits(vec4<i32>(arg_0, 2147483647i, -17306i, 39578i)))), var_0.b.b.zz, any(vec3<bool>(all(vec2<bool>(var_0.d, false)), true, true))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(max(var_1.a, _wgslsmith_f_op_vec3_f32(exp2(var_1.a)))), vec3<i32>(-2147483647i, var_0.b.b.x, ~u_input.b), min(~var_1.c, vec3<u32>(1u, 0u, 1u)), _wgslsmith_mult_u32(min(arg_1, u_input.d), arg_1 | 1u))), var_0.b, Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-107f, var_0.c.x, -1000f)) + var_0.b.a), _wgslsmith_clamp_vec3_i32(~var_0.b.b, _wgslsmith_mult_vec3_i32(var_0.b.b, var_1.b), vec3<i32>(u_input.b, arg_0, u_input.b)), _wgslsmith_clamp_vec3_u32(countOneBits(u_input.c), vec3<u32>(70574u, u_input.c.x, arg_1), ~var_0.b.c), select(~1u, var_1.d, any(vec2<bool>(true, var_0.d))))), Struct_2(Struct_1(var_1.a, _wgslsmith_mod_vec3_i32(vec3<i32>(1i, var_0.b.b.x, var_1.b.x) << (var_1.c % vec3<u32>(32u)), max(var_0.b.b, vec3<i32>(arg_0, 0i, var_0.b.b.x))), var_0.b.c, u_input.c.x)));
}

fn func_1(arg_0: vec2<f32>) -> vec3<f32> {
    var var_0 = func_2(u_input.b, u_input.a.x);
    let var_1 = Struct_3(true, var_0.d);
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b.a.a.x, arg_0.x, arg_0.x), var_1.b.a.a, vec3<bool>(false, false, true)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c.a + vec3<f32>(-1054f, -2488f, -1000f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(vec2<f32>(-1109f, 970f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1119f, -1107f, 521f) - vec3<f32>(463f, 219f, 700f))))), (-vec3<i32>(2147483647i, u_input.b, 0i) | countOneBits(vec3<i32>(u_input.b, -1i, -40877i))) | (vec3<i32>(-1i) * -vec3<i32>(u_input.b, 1i, u_input.b)), u_input.c, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 26706u, 55025u, 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.d, 4294967295u, 1u), vec4<u32>(4294967295u, 19294u, u_input.d, u_input.a.x))))));
    var var_1 = func_2(2147483647i, 4294967295u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(22597u, u_input.d), max(u_input.d, 0u)), vec2<u32>(u_input.a.x, _wgslsmith_sub_u32(var_0.a.d, var_0.a.d))) % 32u)).d.a;
    var var_2 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(~4294967295u, var_1.c.x) & var_1.c.x, var_1.d), 1u);
    var var_3 = Struct_5(vec4<f32>(1444f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(926f * _wgslsmith_f_op_f32(-var_1.a.x))), 100f, var_1.a.x), Struct_1(var_1.a, _wgslsmith_mod_vec3_i32(vec3<i32>(22117i & var_0.a.b.x, 25936i, u_input.b), select(var_0.a.b, ~var_0.a.b, select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false))), var_1.c, abs(1u) | select(var_0.a.d, firstLeadingBit(65732u), true)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(528f, 2181f), vec2<f32>(-264f, 162f))))))), !all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), true)), 0u);
    let var_4 = var_0.a.b.x | _wgslsmith_dot_vec2_i32(~vec2<i32>(var_0.a.b.x, reverseBits(var_1.b.x)), vec2<i32>(1i, ~(-1i)));
    var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(max(var_0.a.c.x, ~var_0.a.c.x), 67574u, u_input.c.x | var_0.a.c.x, 1u), firstLeadingBit(firstLeadingBit(vec4<u32>(31762u, var_1.c.x, var_0.a.c.x, 4294967295u)))) ^ var_1.c.x;
    var_2 = var_1.c.x;
    var var_5 = u_input.b;
    var_2 = ~(~11749u);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.a.x, vec4<i32>(0i, -2147483647i, u_input.b ^ abs(u_input.b), -2147483647i), var_1.d);
}

