struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec3<i32>) -> f32 {
    let var_0 = Struct_1(~(~arg_1.b.a.a));
    let var_1 = arg_1;
    let var_2 = arg_2.c;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.a.x))))) + _wgslsmith_f_op_f32(-arg_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(333f + -1000f) - arg_2.a.x), var_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x + arg_2.a.x) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_1.a.x, _wgslsmith_f_op_f32(-1269f + arg_2.a.x), all(vec2<bool>(true, true))))))));
    var var_4 = _wgslsmith_mod_u32(var_1.c.a.a.x, u_input.b.x) << (59572u % 32u);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(f32(-1f) * -1511f)));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec4<bool>) -> vec3<u32> {
    var var_0 = arg_1;
    var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(step(var_0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(arg_1.a.x, 289f), _wgslsmith_f_op_f32(-1000f + 407f))))), var_0.b, Struct_2(arg_1.c.a));
    let var_1 = -647f;
    var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(vec2<i32>(u_input.a, u_input.a), Struct_3(var_0.a, arg_1.c, Struct_2(Struct_1(var_0.c.a.a))), arg_1, vec3<i32>(-38078i, 48087i, u_input.a))), _wgslsmith_f_op_f32(min(var_0.a.x, arg_1.a.x)))), Struct_2(arg_1.b.a), var_0.c);
    var_0 = arg_1;
    return arg_1.c.a.a;
}

fn func_1() -> u32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_mod_vec3_u32(max(func_2(vec3<bool>(true, true, false), Struct_3(vec2<f32>(-1000f, -1558f), Struct_2(Struct_1(vec3<u32>(u_input.b.x, 0u, u_input.b.x))), Struct_2(Struct_1(vec3<u32>(u_input.b.x, u_input.b.x, 18490u)))), vec4<bool>(false, false, false, true)), u_input.b.yzx), vec3<u32>(~25628u, select(25014u, u_input.b.x, false), u_input.b.x))));
    let var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_div_i32(1i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 26730i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a))), ~_wgslsmith_mod_i32(min(u_input.a, 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a))), u_input.a), ~(~vec3<i32>(u_input.a | -1i, 54614i, 0i)));
    let var_2 = -23025i;
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(func_3(max(vec2<i32>(var_2, var_2), vec2<i32>(-2147483647i, -16601i)), Struct_3(vec2<f32>(-793f, 1796f), var_0, Struct_2(var_0.a)), Struct_3(vec2<f32>(-1145f, 181f), var_0, var_0), ~vec3<i32>(u_input.a, var_2, u_input.a))), 402f), vec2<f32>(_wgslsmith_f_op_f32(-1932f * -1270f), _wgslsmith_f_op_f32(min(3362f, 224f))))), Struct_2(Struct_1(u_input.b.xyx)), Struct_2(Struct_1(_wgslsmith_add_vec3_u32(var_0.a.a, u_input.b.www))));
    var var_4 = -min(var_1, min(~countOneBits(vec3<i32>(-39145i, 0i, var_2)), firstTrailingBit(var_1) | _wgslsmith_clamp_vec3_i32(vec3<i32>(var_2, 1i, var_1.x), var_1, var_1)));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(~vec3<u32>(u_input.b.x, 9837u & u_input.b.x, u_input.b.x)));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1920f), _wgslsmith_div_f32(490f, -967f), -1047f, _wgslsmith_f_op_f32(min(365f, -1664f))), vec4<f32>(_wgslsmith_f_op_f32(-256f - 596f), 895f, -262f, 479f), vec4<bool>(true, true, true, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -396f, 1000f, 1072f), vec4<f32>(520f, 727f, -1364f, -1000f)))))));
    var var_2 = ~(~u_input.b.x);
    let var_3 = !(_wgslsmith_clamp_u32(var_0.a.a.x, var_0.a.a.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.a.a.x), vec2<u32>(73996u, 4294967295u))) <= min(func_1(), ~reverseBits(u_input.b.x)));
    var var_4 = !select(!select(!vec4<bool>(var_3, var_3, false, var_3), select(vec4<bool>(var_3, false, true, var_3), vec4<bool>(false, var_3, false, var_3), vec4<bool>(false, var_3, var_3, true)), vec4<bool>(var_3, var_3, false, false)), vec4<bool>(false, true, var_3, var_3), !(!vec4<bool>(var_3, var_3, false, false)));
    var_4 = !select(vec4<bool>(true, !(var_4.x || var_3), all(select(vec2<bool>(var_4.x, false), var_4.yy, var_3)), var_4.x), select(vec4<bool>(false, true, false, false), select(!vec4<bool>(true, false, var_4.x, false), !vec4<bool>(var_4.x, true, true, true), var_3), !(!vec4<bool>(var_3, false, var_4.x, false))), any(vec4<bool>(var_1.x >= 516f, false | var_3, all(vec4<bool>(var_3, true, var_3, true)), var_3)));
    let var_5 = var_1.zww;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.x, ~(~44193u), vec3<i32>(countOneBits(countOneBits(37683i)), ~firstTrailingBit(u_input.a), abs(abs(~(-15315i)))), vec3<i32>(~20554i, _wgslsmith_dot_vec2_i32(vec2<i32>(select(u_input.a, 43586i, var_3), ~21756i), firstLeadingBit(vec2<i32>(-24777i, -1i)) >> (~u_input.b.wx % vec2<u32>(32u))), u_input.a), var_1.xy);
}

