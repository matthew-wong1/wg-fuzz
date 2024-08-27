struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> i32 {
    var var_0 = select(vec2<bool>(any(vec4<bool>(true, true, true, false)), _wgslsmith_div_f32(-1086f, _wgslsmith_f_op_f32(select(-858f, -104f, false))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -874f) - _wgslsmith_f_op_f32(-258f * 707f))), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(false, false, false))), vec2<bool>(true, true), all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)))), !(!select(vec2<bool>(false, true), vec2<bool>(false, false), false))), !vec2<bool>(select(true, true, u_input.b.x >= u_input.b.x), any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), true))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -439f)))), 419f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1192f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-192f * -1895f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1250f)), -862f))), 1335f);
    var_0 = select(vec2<bool>(any(select(vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(true, true, true, true), select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, true, true, false), vec4<bool>(var_0.x, var_0.x, var_0.x, false)))), !select(var_0.x, u_input.b.x > u_input.b.x, all(vec4<bool>(true, var_0.x, var_0.x, false)))), vec2<bool>(true, true), !vec2<bool>(-u_input.b.x > u_input.b.x, any(!vec4<bool>(var_0.x, false, false, var_0.x))));
    let var_2 = ~(~u_input.a >> (vec3<u32>(72482u, _wgslsmith_dot_vec4_u32(vec4<u32>(43510u, u_input.d, u_input.a.x, u_input.c), vec4<u32>(36528u, u_input.d, u_input.a.x, 0u)) >> (u_input.a.x % 32u), 4294967295u) % vec3<u32>(32u)));
    let var_3 = -(~u_input.b.x);
    return u_input.b.x;
}

fn func_2() -> f32 {
    var var_0 = ~func_3();
    let var_1 = !(!vec3<bool>(~57485u < min(1u, u_input.a.x), all(vec3<bool>(false, false, false)), !(u_input.b.x <= 2147483647i)));
    var_0 = u_input.b.x;
    var var_2 = Struct_1(min(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, ~u_input.b.x, -u_input.b.x, min(1i, -1i)), min(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(u_input.b.x, -21837i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, 2147483647i, -7491i), vec4<i32>(-1i, u_input.b.x, 51284i, u_input.b.x)), ~u_input.b.x, i32(-1i) * -17083i), vec4<i32>(u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(39857i, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, -46639i, u_input.b.x)), i32(-1i) * -3577i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 19713i, 2147483647i), vec3<i32>(u_input.b.x, 0i, u_input.b.x))))), 43571u, true, -18813i);
    var_2 = Struct_1(vec4<i32>(~_wgslsmith_div_i32(i32(-1i) * -26277i, _wgslsmith_mult_i32(var_2.d, var_2.d)), ~(-_wgslsmith_add_i32(var_2.d, -1i)), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(var_2.a.x, u_input.b.x)) << (u_input.a.xx % vec2<u32>(32u)), firstTrailingBit(vec2<i32>(32739i, u_input.b.x)) << (~u_input.a.yz % vec2<u32>(32u))), var_2.d), 57984u, all(vec4<bool>(any(vec4<bool>(false, true, var_1.x, var_1.x)), var_1.x, var_2.c, !(u_input.b.x != 30811i))), ~0i);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -682f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(140f))))))));
}

fn func_1(arg_0: u32) -> vec3<bool> {
    let var_0 = true;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(func_2()), 1253f, 1576f);
    let var_2 = !(!vec2<bool>(true, any(vec4<bool>(var_0, var_0, var_0, true))));
    var_1 = vec3<f32>(203f, _wgslsmith_f_op_f32(-305f + -493f), _wgslsmith_f_op_f32(1270f * _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(var_1.x + var_1.x))))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(round(610f)), _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-240f, 942f, var_1.x) + vec3<f32>(1000f, var_1.x, var_1.x)) + vec3<f32>(var_1.x, -3327f, var_1.x)), vec3<f32>(1107f, var_1.x, _wgslsmith_f_op_f32(trunc(-589f))))));
    return !vec3<bool>(true, var_0, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    let var_1 = vec2<u32>(~u_input.a.x, 4294967295u);
    let var_2 = Struct_1(abs(~(vec4<i32>(u_input.b.x, 2147483647i, -2147483647i, var_0) >> (vec4<u32>(var_1.x, 4294967295u, u_input.c, u_input.c) % vec4<u32>(32u)))) ^ firstLeadingBit(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, var_0, -4473i, u_input.b.x), vec4<i32>(1i, 44389i, -1i, var_0)), vec4<i32>(-2147483647i, 1i, var_0, u_input.b.x))), var_1.x | (u_input.c << (1u % 32u)), any(func_1(_wgslsmith_mult_u32(~4294967295u, _wgslsmith_mult_u32(0u, var_1.x)))), var_0);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(151f, -496f, 353f) - vec3<f32>(136f, 1538f, 1363f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(330f, 2324f, -292f) + vec3<f32>(1392f, 422f, -1000f)) + vec3<f32>(-534f, -1552f, 2501f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-3321f, -1773f, -220f)))))));
    var_3 = vec3<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_div_f32(-499f, -609f), var_3.x);
    var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -175f), _wgslsmith_div_f32(-662f, var_3.x), var_3.x), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_3.x, -1080f, var_3.x), vec3<f32>(-554f, var_3.x, -301f))))))))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(1435f, _wgslsmith_f_op_f32(round(var_3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) * -681f), _wgslsmith_f_op_f32(sign(734f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_3.x, 463f, var_3.x), vec3<f32>(2280f, var_3.x, var_3.x))))))))));
    var var_4 = ~vec3<u32>(select(countOneBits(~4294967295u), var_1.x, var_2.c & (false | var_2.c)), 0u, _wgslsmith_div_u32(var_2.b, ~4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, -1i);
}

