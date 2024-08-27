struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 10> = array<vec3<i32>, 10>(vec3<i32>(1i, 14193i, 34595i), vec3<i32>(0i, 0i, 1i), vec3<i32>(16047i, -63735i, 1i), vec3<i32>(2147483647i, 7766i, -17494i), vec3<i32>(1607i, 1i, 22343i), vec3<i32>(53297i, i32(-2147483648), 28789i), vec3<i32>(-26974i, -32929i, -20197i), vec3<i32>(-19737i, 27363i, 2147483647i), vec3<i32>(i32(-2147483648), 2425i, -25179i), vec3<i32>(0i, 15063i, i32(-2147483648)));

var<private> global1: f32;

var<private> global2: vec2<f32> = vec2<f32>(412f, -996f);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = 1u;
    let var_1 = vec4<bool>(false, true, !(!arg_0.x), select(select(arg_3.b, select(-19323i, 1i, true), true), arg_2.b, arg_0.x) >= ~(-abs(arg_2.b)));
    let var_2 = var_1.yzy;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c) * _wgslsmith_f_op_f32(f32(-1f) * -835f)))), arg_2.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a)), _wgslsmith_f_op_f32(arg_3.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a))))), ~1u);
    var_0 = ~31466u | _wgslsmith_dot_vec2_u32(~min(u_input.e.zz, u_input.e.yx) >> (~u_input.a % vec2<u32>(32u)), u_input.e.zx);
    return 7254u;
}

fn func_2() -> vec4<bool> {
    var var_0 = Struct_1(global2.x, -5916i, -1659f, (_wgslsmith_sub_u32(u_input.a.x, 1u) | ~u_input.e.x) << (func_3(vec4<bool>(true, 26534i == u_input.b.x, any(vec3<bool>(true, true, false)), 2147483647i != u_input.b.x), 40650u, Struct_1(430f, u_input.d & -19026i, global2.x, 0u), Struct_1(-255f, -19530i, _wgslsmith_f_op_f32(1566f * -605f), 1u)) % 32u));
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-165f, -1250f))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-2114f, global2.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, -379f) * vec2<f32>(var_0.c, 1000f))))), vec2<f32>(1f, -1000f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global2.x, -308f))))))));
    global1 = _wgslsmith_f_op_f32(sign(var_0.a));
    let var_1 = _wgslsmith_clamp_vec4_u32(~(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e.x, u_input.a.x, 92555u, var_0.d), firstTrailingBit(vec4<u32>(var_0.d, 0u, 5717u, 0u))) ^ (~vec4<u32>(39969u, 0u, var_0.d, u_input.a.x) << (vec4<u32>(4294967295u, 12140u, var_0.d, 4294967295u) % vec4<u32>(32u)))), ~_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, 23770u, 4294967295u, 682u), ~(vec4<u32>(59825u, 0u, 4294967295u, u_input.a.x) << (vec4<u32>(0u, 0u, 0u, u_input.e.x) % vec4<u32>(32u)))), vec4<u32>(40549u, 4294967295u, 4294967295u, 41180u));
    var var_2 = vec4<bool>(!(!any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)))), !select(true, true, true), all(vec3<bool>(abs(u_input.d) >= u_input.c.x, true, all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), false)))), true);
    return select(!vec4<bool>(false, false, true & (true & var_2.x), var_2.x), vec4<bool>(false || (false == var_2.x), any(var_2.zw), var_2.x, var_2.x), select(select(select(select(vec4<bool>(var_2.x, var_2.x, var_2.x, true), vec4<bool>(var_2.x, true, var_2.x, true), vec4<bool>(true, var_2.x, false, false)), !vec4<bool>(var_2.x, var_2.x, true, false), var_2.x), vec4<bool>(true, true, all(vec4<bool>(var_2.x, true, false, var_2.x)), var_2.x), true), !(!(!vec4<bool>(false, true, var_2.x, false))), !select(vec4<bool>(false, var_2.x, true, true), select(vec4<bool>(true, var_2.x, var_2.x, var_2.x), vec4<bool>(false, var_2.x, var_2.x, false), false), 317f >= global2.x)));
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.x - arg_2.c))) * global2.x))));
    global0 = array<vec3<i32>, 10>();
    global2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1235f + global2.x), _wgslsmith_f_op_f32(339f * 229f), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2.c - -252f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(ceil(1000f)))))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, -1955f) * -697f), 445f))));
    let var_0 = -35695i;
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.c), -271f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_2.c * -1182f), global2.x))));
    return arg_2;
}

fn func_1() -> vec3<bool> {
    global2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-465f * _wgslsmith_f_op_f32(step(global2.x, global2.x))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(410f - global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - global2.x)))), _wgslsmith_f_op_f32(-694f - global2.x));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(exp2(global2.x)), 2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(346f - global2.x))) + _wgslsmith_f_op_f32(step(global2.x, _wgslsmith_f_op_f32(max(global2.x, global2.x))))), u_input.a.x);
    let var_1 = 608f;
    let var_2 = func_4(select(select(vec4<bool>(true, true, var_1 < 1356f, true), func_2(), vec4<bool>(true, true, true, true)), !vec4<bool>(true, false, func_2().x, false), func_2()), all(vec3<bool>(true, true, true)), var_0, (u_input.e & select(u_input.e, ~u_input.e, false)) | max(vec3<u32>(u_input.a.x, 56062u, 37993u) & (u_input.e | u_input.e), _wgslsmith_mult_vec3_u32(~vec3<u32>(64576u, 67959u, 0u), u_input.e)));
    global0 = array<vec3<i32>, 10>();
    return vec3<bool>(any(vec4<bool>(any(vec2<bool>(true, false)), any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), true, any(vec3<bool>(false, false, false)))), all(!vec4<bool>(all(vec4<bool>(false, true, true, true)), true, any(vec4<bool>(true, false, true, false)), false)), ~(~0u) <= _wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_0.d, 4294967295u, var_2.d)), abs(abs(u_input.e))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    global0 = array<vec3<i32>, 10>();
    let var_1 = true;
    global1 = 1507f;
    let var_2 = vec2<bool>(var_1, all(func_1()));
    global1 = global2.x;
    let var_3 = func_4(!select(func_2(), select(select(vec4<bool>(false, true, var_2.x, false), vec4<bool>(var_2.x, false, var_2.x, false), var_2.x), select(vec4<bool>(false, var_2.x, var_2.x, var_2.x), vec4<bool>(false, true, false, false), var_1), !vec4<bool>(true, var_2.x, var_1, true)), var_2.x), any(func_1()), Struct_1(-308f, -42691i, _wgslsmith_f_op_f32(f32(-1f) * -1354f), _wgslsmith_mult_u32(20501u, u_input.a.x)), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_div_u32(64710u, u_input.a.x), 1u << (u_input.a.x % 32u), ~u_input.a.x), u_input.e), u_input.e));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_3.b), u_input.c);
}

