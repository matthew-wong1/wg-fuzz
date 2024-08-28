struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<f32>,
    e: f32,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_1(arg_0: vec2<bool>, arg_1: bool) -> Struct_1 {
    let var_0 = min(0u, 40785u);
    var var_1 = -17163i;
    var_1 = 63499i;
    var var_2 = (-2147483647i == ~reverseBits(u_input.b.x)) & true;
    var_2 = arg_0.x;
    return Struct_1(~(firstTrailingBit(countOneBits(var_0)) & firstLeadingBit(u_input.a.x >> (10908u % 32u))));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<bool>) -> u32 {
    return arg_2.a;
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(797f, 527f, -116f))) - vec3<f32>(1432f, 2145f, 298f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-426f, -1229f, 686f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1466f, -769f, 766f), vec3<f32>(-2771f, -1263f, 1021f)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-293f, var_0.x, -138f)))) * vec3<f32>(_wgslsmith_f_op_f32(abs(-791f)), _wgslsmith_f_op_f32(-437f + var_0.x), var_0.x)))));
    var var_2 = max(_wgslsmith_mod_vec2_i32(~u_input.b.yy >> (u_input.d.ww % vec2<u32>(32u)), vec2<i32>(u_input.b.x, u_input.b.x)), -u_input.b.yz);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, var_1.x, 277f, 216f), vec4<f32>(-872f, -1352f, 877f, var_0.x))) + vec4<f32>(var_1.x, var_0.x, 1000f, var_1.x)), vec4<f32>(_wgslsmith_f_op_f32(var_0.x + 357f), var_1.x, -936f, _wgslsmith_f_op_f32(floor(1126f))), vec4<bool>(true, true, true, true))) - vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), var_0.x)), -861f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(318f - var_1.x) - _wgslsmith_f_op_f32(trunc(-165f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x - -2054f))))));
    var var_4 = func_1(vec2<bool>(true, true), any(vec2<bool>(!all(vec4<bool>(false, true, false, false)), !(var_1.x < var_3.x))));
    return vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, 41910i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_2(u_input.d.x, func_1(vec2<bool>(false, select(false, false, false)), true), Struct_1(_wgslsmith_mult_u32(0u, 26793u)), vec4<bool>(false, true, true, true || select(false, false, true))));
    var_0 = Struct_1(_wgslsmith_add_u32(~22171u, var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1f, 1f), ~func_3(Struct_1(_wgslsmith_mod_u32(0u, var_0.a))), _wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 43317i, u_input.b.x), vec3<i32>(u_input.b.x, 0i, u_input.b.x))), u_input.b.x, ~(-2147483647i), 10760i), _wgslsmith_add_vec4_i32(~vec4<i32>(u_input.b.x, -4321i, 2147483647i, 0i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -1811i, u_input.b.x, u_input.b.x), vec4<i32>(1i, -16178i, u_input.b.x, 32439i), vec4<i32>(u_input.b.x, -18777i, u_input.b.x, 0i))) | firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -6069i, u_input.b.x), vec4<i32>(44405i, u_input.b.x, u_input.b.x, 2147483647i)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f))))), -352f);
}

