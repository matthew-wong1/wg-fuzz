struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: vec4<i32>,
    e: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -572f)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(488f, _wgslsmith_f_op_f32(max(1227f, 1402f)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 1062f))))));
    var var_2 = _wgslsmith_f_op_f32(641f + 1000f);
    return abs(~4294967295u);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<i32>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-573f)), _wgslsmith_f_op_f32(959f - -1608f)), _wgslsmith_f_op_f32(-878f * _wgslsmith_f_op_f32(floor(-369f)))))), vec2<f32>(-1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f * -645f))))))));
    let var_1 = -(~(-select(_wgslsmith_clamp_vec3_i32(arg_1, vec3<i32>(-2147483647i, arg_0.x, 2403i), arg_1), -vec3<i32>(u_input.b, arg_1.x, 1i), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)))));
    var var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-473f, -428f)));
    var_0 = var_2.a;
    var var_3 = Struct_3(22459u, Struct_2(-1066f, ~abs(44742u), vec4<f32>(986f, var_0.x, _wgslsmith_f_op_f32(min(var_0.x, -947f)), _wgslsmith_f_op_f32(f32(-1f) * -727f)), -arg_0, ~arg_1.x), Struct_1(false, _wgslsmith_f_op_f32(-var_2.a.x), -1530f));
    return ~vec3<u32>(~_wgslsmith_mult_u32(abs(var_3.b.b), min(99574u, var_3.b.b)), 32622u, firstLeadingBit(~90250u >> (min(22858u, var_3.b.b) % 32u)));
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, 0u, ~0u, 1u)), countOneBits(~(~vec4<u32>(50017u, 0u, 47314u, 1u))));
    var var_1 = Struct_4(vec2<f32>(arg_0.x, -1000f));
    let var_2 = _wgslsmith_add_vec3_u32(~reverseBits(~(~vec3<u32>(1u, 9055u, 4294967295u))), func_3(~vec4<i32>(u_input.a & u_input.b, -u_input.b, u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.a, u_input.b, 2147483647i), vec4<i32>(u_input.a, u_input.b, u_input.a, 1i))), vec3<i32>(u_input.a, -_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(u_input.a, u_input.b)), -2147483647i)));
    var var_3 = Struct_3(0u, Struct_2(_wgslsmith_f_op_f32(847f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1026f))))), _wgslsmith_clamp_u32(~var_2.x, max(var_2.x, var_2.x), func_3(vec4<i32>(-53736i, -2147483647i, -33754i, u_input.a), vec3<i32>(u_input.b, u_input.b, u_input.b)).x) ^ ~func_1(), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1470f), _wgslsmith_f_op_f32(-arg_0.x), 529f, 1480f))), max(vec4<i32>(~u_input.b, countOneBits(-5203i), u_input.b, 0i), _wgslsmith_mod_vec4_i32(select(vec4<i32>(u_input.a, u_input.b, u_input.b, 0i), vec4<i32>(-2147483647i, 5797i, 0i, u_input.b), vec4<bool>(true, false, false, false)), -vec4<i32>(18323i, 0i, 52397i, u_input.a))), -1i), Struct_1(any(vec2<bool>(false, true)) | false, _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(round(607f))), 610f));
    return Struct_1(any(select(vec3<bool>(true, !var_3.c.a, true), !(!vec3<bool>(var_3.c.a, false, var_3.c.a)), vec3<bool>(true, false, var_3.b.e == 2147483647i))), 1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(1580f, -136f)), _wgslsmith_f_op_f32(-var_3.c.c), false)));
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(arg_0.b.a + 690f);
    var var_1 = arg_0.c.a;
    let var_2 = vec2<u32>(arg_0.b.b, 4294967295u);
    var var_3 = arg_0;
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.b.a))), var_3.c.b) - var_3.b.c.zy) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(arg_0.b.c.xz))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b.c.x, -773f))));
    return Struct_2(func_2(_wgslsmith_f_op_vec2_f32(max(var_3.b.c.xy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.b.c.wx * vec2<f32>(-358f, arg_0.c.b)))))).c, arg_0.b.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1f, var_3.c.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.b.a, 1410f, var_3.c.a)) * _wgslsmith_f_op_f32(-arg_0.b.c.x)), var_4.x, 1f)), var_3.b.d, _wgslsmith_dot_vec3_i32(arg_0.b.d.xzw, var_3.b.d.wyw));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = func_4(Struct_3(func_1(), Struct_2(-1448f, 81784u, vec4<f32>(-385f, _wgslsmith_f_op_f32(f32(-1f) * -1019f), _wgslsmith_f_op_f32(1444f * -645f), -1220f), vec4<i32>(u_input.b, -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -19701i), vec2<i32>(u_input.b, 0i)), reverseBits(9501i)), (i32(-1i) * -1i) >> (_wgslsmith_mult_u32(0u, 4294967295u) % 32u)), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(439f, 672f))))));
    var var_2 = vec2<i32>(var_1.d.x, _wgslsmith_mod_i32(var_1.e, 0i));
    var_0 = (!all(vec4<bool>(true, true, true, true)) | (all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false))) || (_wgslsmith_f_op_f32(max(var_1.a, 196f)) >= _wgslsmith_f_op_f32(-var_1.c.x)))) | any(vec3<bool>(true, true, true));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, var_1.a, _wgslsmith_f_op_f32(-474f + _wgslsmith_f_op_f32(ceil(893f)))));
    let var_4 = select(vec2<bool>(all(vec2<bool>(true, true)), all(vec2<bool>(true, true))), select(vec2<bool>(false, !(var_2.x <= var_1.e)), vec2<bool>(true, false), true), ~96082u >= ((var_1.b << (_wgslsmith_add_u32(var_1.b, 32969u) % 32u)) & 33088u));
    var var_5 = select(true, var_4.x, all(!select(vec3<bool>(true, false, var_4.x), vec3<bool>(var_4.x, var_4.x, var_4.x), select(vec3<bool>(true, var_4.x, var_4.x), vec3<bool>(false, var_4.x, false), vec3<bool>(false, var_4.x, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_1.b), ~vec4<i32>(firstTrailingBit(1i), var_1.e, _wgslsmith_mod_i32(var_2.x, firstLeadingBit(1i)), var_2.x), firstTrailingBit(23579i), ~_wgslsmith_div_u32(_wgslsmith_div_u32(var_1.b, _wgslsmith_mult_u32(25807u, var_1.b)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b, 8243u) >> (vec2<u32>(16663u, var_1.b) % vec2<u32>(32u)), vec2<u32>(54978u, var_1.b))));
}

