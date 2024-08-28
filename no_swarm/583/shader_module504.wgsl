struct Struct_1 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: bool) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(758f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(280f, 1365f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -326f) + 1189f))), 1428f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-215f, 1602f, -1367f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1808f, -1000f, 529f), vec3<f32>(-470f, 2136f, 1000f), vec3<bool>(arg_1, false, true))))))));
    let var_1 = Struct_1(i32(-1i) * -(0i << (max(u_input.b, 15245u) % 32u)), select(~firstLeadingBit(_wgslsmith_clamp_u32(arg_0, 40545u, arg_0)), _wgslsmith_dot_vec3_u32(u_input.c.ywz, u_input.c.www), true));
    let var_2 = var_1;
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 1484f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x))), vec3<f32>(var_0.x, -1081f, var_0.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) + vec3<f32>(var_0.x, var_0.x, -1047f)))))));
    var var_3 = firstTrailingBit(reverseBits(_wgslsmith_clamp_vec4_u32(u_input.c, _wgslsmith_mod_vec4_u32(u_input.c, u_input.c), reverseBits(u_input.c)))) ^ u_input.c;
    return vec3<i32>(_wgslsmith_mult_i32(var_2.a, _wgslsmith_mod_i32(_wgslsmith_sub_i32(~0i, abs(-1i)), -2147483647i)), -2147483647i, -2147483647i);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(firstTrailingBit(2147483647i), u_input.c.x >> (abs(~u_input.c.x) % 32u));
    var_0 = Struct_1(-2147483647i, ~34042u);
    var var_1 = func_3(select(_wgslsmith_mult_u32(u_input.a, 0u), _wgslsmith_sub_u32(~u_input.a, ~abs(4294967295u)), all(vec2<bool>(true, true)) & select(true, true, true)), any(vec4<bool>(true, true, true, true)) & (false != (true == (var_0.b > var_0.b))));
    var_1 = firstLeadingBit(abs(countOneBits(vec3<i32>(-2147483647i, var_1.x, 2147483647i))));
    var var_2 = Struct_1(-1i | ~_wgslsmith_div_i32(min(var_1.x, var_1.x), min(var_0.a, var_1.x)), 50266u);
    return Struct_1(var_2.a, _wgslsmith_dot_vec2_u32(~(~max(u_input.c.zx, vec2<u32>(var_0.b, var_0.b))), ~u_input.c.zx));
}

fn func_1(arg_0: f32, arg_1: vec3<f32>) -> bool {
    let var_0 = u_input.a;
    let var_1 = 357f;
    let var_2 = func_2();
    var var_3 = func_2();
    var_3 = func_2();
    return all(!vec4<bool>(true, 4294967295u > var_3.b, false, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!func_1(870f, vec3<f32>(1f, 1f, 1f)));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -958f);
    var_0 = true;
    var_0 = true;
    var_0 = countOneBits(_wgslsmith_div_u32(0u, _wgslsmith_sub_u32(u_input.b, u_input.a)) | 1u) < max(firstTrailingBit(u_input.c.x), ~reverseBits(_wgslsmith_clamp_u32(4294967295u, u_input.a, 31445u)));
    var_0 = !(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -70560i, 7805i, 2147483647i), vec4<i32>(0i, 50092i, 2147483647i, -1i) >> (u_input.c % vec4<u32>(32u))), vec4<i32>(1i, 1i, 1i, 1i)) <= -2147483647i);
    let var_2 = _wgslsmith_dot_vec3_i32(max(vec3<i32>(min(-88830i, 1i), _wgslsmith_mod_i32(2147483647i, -62318i), _wgslsmith_mod_i32(1i, -46077i)), vec3<i32>(~8976i, -2147483647i, _wgslsmith_clamp_i32(2147483647i, 0i, 25538i))), vec3<i32>(_wgslsmith_mod_i32(-1i, -2147483647i), _wgslsmith_mod_i32(-32678i, 1i), -7374i)) & abs(-max(i32(-1i) * -2147483647i, 43627i));
    var var_3 = Struct_1(-26935i, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1264f, _wgslsmith_f_op_f32(exp2(var_1)), -648f), 1293f);
}

