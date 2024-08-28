struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> bool {
    let var_0 = 430f;
    return ~_wgslsmith_dot_vec4_u32(~u_input.a, vec4<u32>(~33284u, 26786u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.d, 4294967295u), vec4<u32>(4294967295u, u_input.a.x, u_input.d, 4294967295u)), u_input.d | 14533u)) <= abs(~u_input.a.x);
}

fn func_3(arg_0: bool) -> vec3<u32> {
    let var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(0i, 2147483647i, -20390i), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, -29190i, u_input.c), vec3<i32>(u_input.b.x, 1i, u_input.c))) >> (u_input.a.zxw % vec3<u32>(32u)), abs(vec3<i32>(2147483647i, -10865i, u_input.b.x)) << (u_input.a.zzw % vec3<u32>(32u))) >> (1u % 32u);
    var var_1 = -991f;
    var var_2 = ~reverseBits(select(~vec2<i32>(u_input.b.x, -1i), firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, 2147483647i), u_input.b, u_input.b)), select(!vec2<bool>(false, arg_0), !vec2<bool>(arg_0, false), vec2<bool>(false, arg_0))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-766f - -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -128f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -470f), _wgslsmith_f_op_f32(abs(290f)))))));
    var var_4 = ~1u;
    return ~(~(~vec3<u32>(u_input.a.x, abs(u_input.d), 1u)));
}

fn func_4(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_1, arg_3: vec3<u32>) -> vec2<bool> {
    let var_0 = abs(~max(-firstTrailingBit(vec4<i32>(u_input.c, u_input.b.x, u_input.b.x, u_input.c)), reverseBits(vec4<i32>(u_input.b.x, u_input.c, 2147483647i, u_input.b.x))));
    var var_1 = vec2<i32>(min(-2147483647i, var_0.x) ^ _wgslsmith_mult_i32(0i, _wgslsmith_dot_vec2_i32(var_0.yw, u_input.b)), ~(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b.x, -1i), vec2<i32>(var_0.x, 0i)) | _wgslsmith_add_i32(-1i, max(0i, u_input.c))));
    var_1 = _wgslsmith_clamp_vec2_i32((-min(var_0.yy, var_0.ww) << ((~u_input.a.xx & vec2<u32>(1u, arg_3.x)) % vec2<u32>(32u))) & -(~(-var_0.yx)), _wgslsmith_mult_vec2_i32(u_input.b, var_0.ww), u_input.b);
    let var_2 = Struct_1(vec2<bool>(arg_1, true));
    let var_3 = var_2;
    return var_3.a;
}

fn func_1(arg_0: vec2<i32>, arg_1: bool) -> vec2<f32> {
    let var_0 = min(_wgslsmith_div_u32(1u, u_input.d), firstTrailingBit(4294967295u));
    let var_1 = Struct_2(_wgslsmith_add_i32(-u_input.b.x, u_input.c) & arg_0.x, max(max(vec4<u32>(~var_0, var_0, var_0, _wgslsmith_clamp_u32(102991u, 0u, 67456u)), u_input.a), u_input.a));
    var var_2 = false;
    var_2 = func_2();
    let var_3 = Struct_1(func_4(select(func_3(true), ~(u_input.a.xyx << (var_1.b.zwz % vec3<u32>(32u))), true | (arg_1 | true)), !(!(49892u >= u_input.a.x)), Struct_1(!select(vec2<bool>(arg_1, true), vec2<bool>(false, true), true)), abs(var_1.b.zzx)));
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(354f * 1756f))))), vec2<f32>(-491f, 688f), func_4(u_input.a.wyz, true, Struct_1(vec2<bool>(true, true)), _wgslsmith_mult_vec3_u32(reverseBits(~vec3<u32>(1u, 0u, 16562u)), _wgslsmith_add_vec3_u32(vec3<u32>(50626u, var_0, 4294967295u), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 0u, var_1.b.x), vec3<u32>(var_0, var_1.b.x, u_input.a.x), vec3<u32>(51939u, u_input.a.x, 1u)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(_wgslsmith_clamp_u32(~u_input.a.x, u_input.d, firstLeadingBit(_wgslsmith_add_u32(u_input.a.x, 78533u ^ u_input.d))), ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, u_input.a.x << (u_input.a.x % 32u)), u_input.a.x), ~_wgslsmith_mult_u32(~(~u_input.a.x), 1u), firstTrailingBit(_wgslsmith_mod_u32(u_input.d, ~(1u >> (u_input.a.x % 32u)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(vec2<i32>(u_input.b.x, u_input.b.x), false))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(791f, -379f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-911f, 309f) - vec2<f32>(684f, -1018f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(458f, -1377f)))))), !select(!select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true), 4294967295u != _wgslsmith_dot_vec3_u32(var_0.yxw, u_input.a.xyw))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -158f, var_1.x)))));
    var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_2.x, -244f))), var_1.x)), var_1.x, _wgslsmith_f_op_f32(495f + var_2.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.x, var_2.x, true)) + _wgslsmith_f_op_f32(var_1.x + -925f)), -401f, _wgslsmith_f_op_f32(var_2.x * 444f))));
    var_0 = u_input.a;
    let var_3 = Struct_1(!(!(!func_4(u_input.a.wwx, false, Struct_1(vec2<bool>(false, true)), var_0.wxx))));
    let var_4 = Struct_1(vec2<bool>(var_3.a.x, all(vec3<bool>(true, var_3.a.x & var_3.a.x, !var_3.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(107f, ~1545u << (u_input.d % 32u), -705f, 354f, var_2.zx);
}

