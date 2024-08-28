struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>) -> vec2<u32> {
    let var_0 = arg_0;
    let var_1 = ~select(vec4<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(27088i, 1i, u_input.a.x), vec3<i32>(u_input.a.x, -1i, 0i), arg_1.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), u_input.a.x << (1u % 32u), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a.x, 42369i, u_input.a.x, u_input.a.x), -vec4<i32>(-2147483647i, u_input.a.x, 2147483647i, u_input.a.x)), u_input.a.x), select(max(~vec4<i32>(2147483647i, -39096i, -2147483647i, u_input.a.x), firstLeadingBit(vec4<i32>(u_input.a.x, 1i, u_input.a.x, -30824i))), firstLeadingBit(vec4<i32>(u_input.a.x, 1i, -1i, u_input.a.x)), select(select(vec4<bool>(arg_1.x, var_0.e, arg_1.x, false), vec4<bool>(var_0.e, arg_1.x, var_0.e, arg_0.e), vec4<bool>(true, arg_0.e, var_0.e, false)), vec4<bool>(arg_1.x, false, var_0.e, arg_0.e), any(vec4<bool>(arg_0.e, var_0.e, false, var_0.e)))), select(select(select(vec4<bool>(true, false, arg_0.e, false), vec4<bool>(arg_0.e, false, true, arg_0.e), vec4<bool>(true, true, true, false)), !vec4<bool>(false, arg_1.x, var_0.e, var_0.e), vec4<bool>(arg_0.e, arg_0.e, arg_1.x, true)), !vec4<bool>(arg_1.x, true, true, var_0.e), any(!vec3<bool>(false, true, var_0.e))));
    let var_2 = var_0;
    let var_3 = select(arg_1, vec2<bool>(all(!(!vec2<bool>(arg_0.e, arg_1.x))), !all(!vec4<bool>(true, var_0.e, true, arg_0.e))), arg_1);
    var var_4 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(var_0.d, var_0.d)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-588f)), _wgslsmith_f_op_f32(-var_2.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) + 1f), -1135f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.d, -1486f, 276f, 1753f) + vec4<f32>(-959f, 920f, 1255f, 669f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d, var_0.d, var_0.d, arg_0.d))))), vec4<f32>(var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)), _wgslsmith_div_f32(1934f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d + -497f))), _wgslsmith_f_op_f32(-var_0.d))));
    return var_0.c;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(-1772f, _wgslsmith_f_op_f32(ceil(arg_0.d))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1799f, arg_0.d)), arg_0.d);
    let var_1 = _wgslsmith_f_op_f32(sign(-347f));
    let var_2 = -2147483647i;
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(floor(arg_0.d)))), arg_0.d));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)))), 117f) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(351f * _wgslsmith_f_op_f32(select(113f, 120f, true))), _wgslsmith_f_op_f32(985f + -512f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.x)), var_1)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.d, _wgslsmith_f_op_f32(f32(-1f) * -689f), _wgslsmith_f_op_f32(208f * -357f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, -1647f, -362f))))))));
    return Struct_1(4015u, ~arg_0.b, ~func_3(arg_0, select(vec2<bool>(true, arg_0.e), !vec2<bool>(arg_0.e, false), all(vec2<bool>(false, arg_0.e)))), var_1, arg_0.e);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d * _wgslsmith_f_op_f32(f32(-1f) * -774f)));
    var var_1 = firstTrailingBit(vec3<u32>(_wgslsmith_clamp_u32(~(arg_0.a ^ arg_2.b.x), ~(~108680u), ~(~0u)), 0u, arg_1.a & ~_wgslsmith_div_u32(0u, arg_1.c.x)));
    let var_2 = Struct_1(min(~_wgslsmith_add_u32(4294967295u, _wgslsmith_add_u32(arg_0.a, 50136u)), ~(arg_2.c.x & ~49973u)), min((arg_0.b >> (abs(arg_1.b) % vec3<u32>(32u))) | firstLeadingBit(vec3<u32>(0u, 0u, var_1.x)), arg_0.b), ~(vec2<u32>(~var_1.x, _wgslsmith_mod_u32(1u, var_1.x)) >> (arg_0.b.zy % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d)), all(vec3<bool>(arg_2.e, u_input.a.x <= -1i, true)));
    var_0 = -1000f;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d + 846f) + _wgslsmith_f_op_f32(-arg_1.d))))) * _wgslsmith_f_op_f32(790f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.d + arg_0.d))), _wgslsmith_f_op_f32(f32(-1f) * -267f))));
    return _wgslsmith_add_vec3_u32(min(firstLeadingBit(arg_2.b ^ ~vec3<u32>(arg_0.c.x, arg_0.c.x, 0u)), vec3<u32>(arg_1.c.x, _wgslsmith_mod_u32(_wgslsmith_add_u32(38093u, 60940u), func_2(arg_0).a), 0u)), firstTrailingBit(firstTrailingBit(vec3<u32>(0u >> (var_1.x % 32u), ~0u, 4518u))));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(~_wgslsmith_dot_vec3_u32(max(_wgslsmith_sub_vec3_u32(vec3<u32>(59376u, 4294967295u, 4294967295u), vec3<u32>(0u, 1u, 0u)), firstLeadingBit(vec3<u32>(38652u, 0u, 31878u))), vec3<u32>(36847u, 0u, 2145u) & firstTrailingBit(vec3<u32>(8455u, 76347u, 1u))), (func_4(func_2(Struct_1(56562u, vec3<u32>(4294967295u, 1u, 4294967295u), vec2<u32>(0u, 4294967295u), -2195f, false)), Struct_1(9909u, vec3<u32>(1u, 113158u, 0u), vec2<u32>(4294967295u, 59024u), 2069f, true), Struct_1(4294967295u, vec3<u32>(4294967295u, 4294967295u, 1u), vec2<u32>(1u, 0u), 1271f, false), vec4<f32>(1400f, 1236f, -388f, 1050f)) | vec3<u32>(0u, 1u, _wgslsmith_clamp_u32(4294967295u, 4967u, 76061u))) | vec3<u32>(firstTrailingBit(~4294967295u), ~(~58526u), _wgslsmith_mod_u32(1u, 1u)), ~abs(select(vec2<u32>(1u, 1u), select(vec2<u32>(21541u, 1u), vec2<u32>(56528u, 39083u), true), select(vec2<bool>(false, false), vec2<bool>(true, true), true))), -252f, true);
    let var_1 = Struct_1(func_4(Struct_1(~(~4294967295u), func_2(func_2(Struct_1(22218u, var_0.b, var_0.c, var_0.d, var_0.e))).b, abs(max(vec2<u32>(4294967295u, 63382u), vec2<u32>(var_0.c.x, var_0.b.x))), _wgslsmith_f_op_f32(ceil(var_0.d)), false), Struct_1(var_0.a, _wgslsmith_mod_vec3_u32(var_0.b << (vec3<u32>(1u, 0u, 21155u) % vec3<u32>(32u)), vec3<u32>(var_0.a, 1u, var_0.c.x)), var_0.c, _wgslsmith_f_op_f32(-var_0.d), var_0.e), var_0, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, var_0.d, -642f, 2048f)), vec4<f32>(var_0.d, var_0.d, _wgslsmith_f_op_f32(f32(-1f) * -1201f), _wgslsmith_div_f32(214f, 209f)))).x, var_0.b, var_0.c, _wgslsmith_f_op_f32(f32(-1f) * -750f), !all(vec4<bool>(var_0.b.x != 8567u, true, true, true)));
    return Struct_1(firstLeadingBit(var_1.c.x), ~(~(~_wgslsmith_mod_vec3_u32(var_0.b, var_1.b))), var_1.c, -653f, any(vec3<bool>(false, all(!vec4<bool>(false, true, var_1.e, var_0.e)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_1(1u, var_0.b, func_1().b.zy, _wgslsmith_div_f32(var_0.d, var_0.d), var_0.e);
    let var_2 = var_1;
    let var_3 = 29722u;
    var var_4 = firstTrailingBit(~1i);
    var var_5 = var_0.e;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, var_0.b, (_wgslsmith_mod_vec3_u32(var_2.b, _wgslsmith_div_vec3_u32(var_2.b, vec3<u32>(4294967295u, 4294967295u, var_2.b.x))) >> (~(~vec3<u32>(var_1.b.x, 80125u, 3466u)) % vec3<u32>(32u))) ^ vec3<u32>(77210u, 1u, _wgslsmith_div_u32(var_0.c.x & var_1.c.x, var_0.b.x)), 0u);
}

