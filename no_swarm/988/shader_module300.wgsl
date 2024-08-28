struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<f32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec3<bool> {
    var var_0 = firstTrailingBit(min(vec3<i32>(i32(-1i) * -38510i, _wgslsmith_div_i32(u_input.a.x, u_input.d), _wgslsmith_mod_i32(u_input.d, 0i)), ~vec3<i32>(30780i, u_input.a.x, u_input.d) | reverseBits(vec3<i32>(-36032i, 1i, u_input.d))) >> ((~select(vec3<u32>(u_input.c, 1u, 0u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<bool>(false, true, true)) | ~vec3<u32>(2667u, u_input.b.x, 17196u)) % vec3<u32>(32u)));
    var_0 = _wgslsmith_add_vec3_i32(~vec3<i32>(var_0.x, reverseBits(_wgslsmith_clamp_i32(u_input.d, 28304i, u_input.a.x)), ~u_input.a.x), firstTrailingBit(vec3<i32>(_wgslsmith_add_i32(var_0.x | var_0.x, ~var_0.x), _wgslsmith_add_i32(-89857i, var_0.x), var_0.x)));
    global0 = any(vec4<bool>(select(all(vec2<bool>(false, false)), all(vec2<bool>(true, true)), true), false, all(vec2<bool>(true, true)) & true, abs(countOneBits(u_input.b.x)) < ~(~0u)));
    var var_1 = _wgslsmith_f_op_f32(abs(429f));
    var_1 = _wgslsmith_f_op_f32(140f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1260f), -1025f)));
    return !select(vec3<bool>(true, 2147483647i <= -var_0.x, true), vec3<bool>(true, all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))), all(vec3<bool>(true, true, true))), var_0.x != 7854i);
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: vec2<i32>) -> u32 {
    global0 = !all(select(!func_3(), select(vec3<bool>(true, false, false), func_3(), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)));
    global0 = all(func_3());
    global0 = any(func_3());
    global0 = false;
    var var_0 = arg_0;
    return ~arg_0;
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.d;
    let var_1 = _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, 1u), vec2<u32>(func_2(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, 509f, 1528f))), vec2<i32>(2147483647i, var_0)), ~4294967295u)), vec2<u32>(u_input.c >> (max(1u, _wgslsmith_add_u32(u_input.b.x, 1u)) % 32u), firstTrailingBit(select(~u_input.c, countOneBits(13650u), true))));
    global0 = !any(select(vec4<bool>(true, any(vec2<bool>(true, false)), true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    let var_2 = Struct_1(~(~(u_input.d << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_1.x), vec2<u32>(u_input.b.x, var_1.x)) % 32u))));
    global0 = all(!select(vec3<bool>(func_3().x, true, true), vec3<bool>(var_2.a != var_0, true, false), vec3<bool>(true, true, true)));
    return Struct_1(-1i);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> f32 {
    var var_0 = Struct_1(countOneBits(max(arg_3, 26090i)));
    global0 = !(!any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))));
    var_0 = Struct_1(countOneBits(select(u_input.d, arg_0.a, all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true)))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_mod_i32(-abs(var_0.a), arg_3)), Struct_1(~arg_1.a), Struct_1(arg_1.a >> (u_input.b.x % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, arg_2)))))));
    var_1 = Struct_2(Struct_1(u_input.a.x), func_1(), Struct_1(3374i), var_1.d);
    return var_1.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~(-2147483647i));
    global0 = true;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1(), func_1(), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(587f)))), _wgslsmith_mod_i32(u_input.a.x, var_0.a & 0i)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-115f - 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1279f)), 1f))), 519f)), 1000f, 482f);
    var var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-106f + var_1.x)) - _wgslsmith_f_op_f32(abs(-877f))), _wgslsmith_f_op_f32(-var_1.x), 1517f, _wgslsmith_f_op_f32(189f * -1815f)), 4514u, vec2<f32>(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(240f, var_1.x)))), var_1.x), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(390f * _wgslsmith_f_op_f32(var_1.x * var_1.x)), var_1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1287f * var_1.x))), -1084f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(577f, var_1.x, var_1.x, var_1.x))))), -242f);
}

