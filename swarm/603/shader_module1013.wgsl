struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool, arg_1: bool) -> vec3<bool> {
    let var_0 = Struct_1(select(select(u_input.a.zzw, vec3<i32>(u_input.c.x, abs(1i), 1i), !(!vec3<bool>(true, false, arg_1))), ~(vec3<i32>(-2147483647i, 0i, u_input.d) ^ u_input.a.zww), true));
    var var_1 = u_input.a.zxw;
    let var_2 = Struct_2(var_0);
    var var_3 = Struct_2(Struct_1(min(var_0.a >> (vec3<u32>(9096u, 1u, 1u) % vec3<u32>(32u)), ~(vec3<i32>(var_1.x, var_2.a.a.x, var_0.a.x) >> (vec3<u32>(u_input.b.x, 12023u, 18u) % vec3<u32>(32u))))));
    let var_4 = Struct_3(vec3<bool>(true, arg_1, true), ~countOneBits(_wgslsmith_clamp_vec3_u32(u_input.b, vec3<u32>(73395u, u_input.b.x, 26800u), u_input.b)) ^ (_wgslsmith_sub_vec3_u32(vec3<u32>(45528u, 74022u, u_input.b.x), reverseBits(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))) << (_wgslsmith_mult_vec3_u32(u_input.b, u_input.b) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(807f, -448f))), 433f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -346f) - _wgslsmith_f_op_f32(f32(-1f) * -213f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(656f)), -848f))))));
    return var_4.a;
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2332f, -1431f))))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1003f - 1904f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1067f) + _wgslsmith_f_op_f32(-271f - -180f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1388f + _wgslsmith_f_op_f32(ceil(903f))), 1083f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-862f, -275f))) - vec2<f32>(_wgslsmith_f_op_f32(-1353f * -487f), _wgslsmith_f_op_f32(f32(-1f) * -581f)))));
    return u_input.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: u32, arg_3: u32) -> vec2<i32> {
    var var_0 = true;
    var var_1 = arg_1.a.x;
    var_1 = true;
    var_1 = arg_1.a.x;
    var_1 = arg_1.c.x >= _wgslsmith_f_op_f32(f32(-1f) * -518f);
    return _wgslsmith_mod_vec2_i32(firstLeadingBit(arg_0.a.xy), max(firstLeadingBit(vec2<i32>(_wgslsmith_clamp_i32(u_input.c.x, 1i, u_input.a.x), 1i)), arg_0.a.yz | (max(u_input.a.yz, arg_0.a.yz) ^ vec2<i32>(0i, 0i))));
}

fn func_1() -> vec3<bool> {
    let var_0 = _wgslsmith_mult_vec2_i32(func_4(Struct_1(abs(vec3<i32>(-11172i, u_input.d, u_input.c.x) ^ vec3<i32>(u_input.d, -2147483647i, u_input.a.x))), Struct_3(!func_2(false, false), ~func_3(Struct_1(vec3<i32>(u_input.d, u_input.d, -2415i)), u_input.c.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1212f, -959f, -865f, 1776f), vec4<f32>(382f, -1963f, -1000f, -1304f))))), countOneBits(4294967295u), func_3(Struct_1(u_input.a.zxz), u_input.c.x).x), vec2<i32>(u_input.d, 36503i));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-543f * _wgslsmith_f_op_f32(abs(-1000f))))));
    var var_2 = !select(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, false, !all(vec2<bool>(false, false))), true);
    var_2 = !select(select(vec4<bool>(30679u <= u_input.b.x, var_2.x, true, true), !(!vec4<bool>(var_2.x, false, true, false)), !(!vec4<bool>(true, false, var_2.x, true))), vec4<bool>(!(537f >= var_1), true, true, false | any(vec2<bool>(var_2.x, var_2.x))), vec4<bool>(var_2.x && true, any(vec4<bool>(false, var_2.x, var_2.x, var_2.x)), true, all(!vec4<bool>(true, true, false, var_2.x))));
    var_2 = vec4<bool>(false, any(select(select(vec4<bool>(var_2.x, false, true, false), select(vec4<bool>(true, var_2.x, false, var_2.x), vec4<bool>(false, false, var_2.x, var_2.x), var_2.x), !vec4<bool>(true, var_2.x, true, true)), !(!vec4<bool>(false, false, var_2.x, var_2.x)), !select(vec4<bool>(true, var_2.x, true, var_2.x), vec4<bool>(true, var_2.x, true, true), true))), true && any(select(vec4<bool>(var_2.x, false, var_2.x, var_2.x), select(vec4<bool>(false, true, true, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, true))), var_2.x);
    return vec3<bool>(!(select(var_2.x, true, true) || true), true, !func_2(any(vec2<bool>(false, var_2.x)), _wgslsmith_f_op_f32(round(145f)) == var_1).x);
}

fn func_5(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_2 {
    return Struct_2(Struct_1(arg_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(-455f, -627f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1884f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-415f, -1350f))))));
    var var_1 = vec3<i32>(u_input.e, u_input.c.x, _wgslsmith_sub_i32(1i, countOneBits(_wgslsmith_dot_vec4_i32(-u_input.a, vec4<i32>(u_input.d, -2147483647i, 34009i, u_input.d)))));
    var var_2 = false;
    let var_3 = -2147483647i & var_1.x;
    var var_4 = func_5(func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 117f)))), Struct_1(_wgslsmith_add_vec3_i32(-(~u_input.a.yyx), -u_input.a.xyw)), abs(u_input.a));
    let var_5 = Struct_3(vec3<bool>(false, true, all(vec2<bool>(true, any(vec3<bool>(true, true, true))))), ~(~(~(u_input.b | vec3<u32>(61421u, 0u, 4294967295u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(175f, var_0.x, var_0.x, _wgslsmith_f_op_f32(863f + -1000f))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-153f, 371f, -443f, -378f) * vec4<f32>(-1769f, -924f, -880f, -532f)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2009f, 697f, var_0.x, -503f), vec4<f32>(562f, var_0.x, var_0.x, 434f))))))));
    var var_6 = var_5.b.x;
    var_4 = Struct_2(Struct_1(var_4.a.a));
    let var_7 = vec3<u32>(1u, _wgslsmith_dot_vec2_u32(abs(reverseBits(~u_input.b.yy)), ~(u_input.b.zz >> (~vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)))), _wgslsmith_mod_u32(~(_wgslsmith_sub_u32(4294967295u, 1u) >> ((var_5.b.x | var_5.b.x) % 32u)), 75245u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1300f))))), var_0.x);
}

