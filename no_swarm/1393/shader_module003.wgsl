struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: u32) -> vec4<i32> {
    var var_0 = ~arg_1;
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2449f) + -1344f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1184f - -571f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1233f)), _wgslsmith_f_op_f32(max(-760f, 333f)), _wgslsmith_f_op_f32(-404f * _wgslsmith_f_op_f32(ceil(-143f)))));
    let var_2 = Struct_2(var_1.x);
    var_0 = 1u;
    var_0 = ~arg_0;
    return u_input.a;
}

fn func_2() -> Struct_1 {
    var var_0 = select(_wgslsmith_div_i32(reverseBits(_wgslsmith_dot_vec4_i32(func_3(u_input.e.x, u_input.b), _wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(48740i, -2147483647i, u_input.d.x, -1i)))), u_input.d.x), _wgslsmith_sub_i32(abs(~(-u_input.a.x)), -2147483647i), -u_input.d.x != -6983i);
    var_0 = _wgslsmith_div_i32(_wgslsmith_sub_i32(-516i, 0i & _wgslsmith_dot_vec3_i32(max(u_input.d, vec3<i32>(u_input.d.x, u_input.a.x, -2147483647i)), vec3<i32>(33472i, 35649i, u_input.d.x))), -1i);
    let var_1 = false;
    let var_2 = ~vec2<u32>(u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(7279u, 34623u, u_input.b), firstLeadingBit(firstLeadingBit(vec3<u32>(0u, u_input.e.x, u_input.e.x)))));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(872f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-371f + 696f) * -2003f))));
    return Struct_1(abs(~_wgslsmith_sub_i32(1i, countOneBits(47379i))));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: i32, arg_3: Struct_2) -> vec3<f32> {
    let var_0 = Struct_2(-232f);
    let var_1 = firstLeadingBit(min(_wgslsmith_div_vec4_i32(u_input.a, u_input.a), vec4<i32>(-1i, 0i, 51148i, -53633i)) & max(vec4<i32>(_wgslsmith_mult_i32(arg_2, u_input.d.x), -1i << (u_input.b % 32u), select(-9569i, arg_2, false), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2, 0i), vec2<i32>(u_input.d.x, 37543i))), select(max(u_input.a, vec4<i32>(u_input.d.x, -3421i, u_input.d.x, 3070i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, arg_0.a, -57088i), u_input.a), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), false))));
    var var_2 = arg_3.a;
    let var_3 = vec2<u32>(u_input.e.x, 99u);
    let var_4 = Struct_2(arg_3.a);
    return vec3<f32>(var_4.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1057f + var_0.a)), -350f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(227f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, -371f))))));
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: u32, arg_3: vec2<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_4(func_2(), 90036u, 56138i, Struct_2(1f)))));
    let var_1 = Struct_1(~u_input.a.x);
    let var_2 = arg_0;
    var var_3 = arg_3;
    var var_4 = Struct_2(_wgslsmith_f_op_f32(abs(var_3.x)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(393f))), _wgslsmith_f_op_f32(abs(645f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(select(vec4<bool>(false, 25795u >= u_input.c, all(vec2<bool>(true, true)), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), all(vec2<bool>(true, true)));
    let var_1 = reverseBits(u_input.a.xx);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_3 = var_0.yw;
    let var_4 = Struct_2(_wgslsmith_f_op_f32(select(600f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(630f * _wgslsmith_f_op_f32(func_1(var_0.x, vec2<u32>(1u, u_input.e.x), u_input.e.x, vec2<f32>(1091f, -946f))))), var_0.x)));
    var var_5 = firstTrailingBit(~u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.d.x, ~20327i), 0i, max(var_1.x, _wgslsmith_dot_vec2_i32(u_input.a.yy, vec2<i32>(var_1.x, -1i)))), u_input.a.x, u_input.a.x), var_4.a, _wgslsmith_f_op_f32(var_4.a + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.a - var_4.a) * 1000f), var_4.a))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-187f, -2282f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 295f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-100f + -223f))) >= _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-var_4.a)))), -247f);
}

