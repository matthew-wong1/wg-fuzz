struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: vec2<i32>,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec4<bool>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 1>;

var<private> global1: bool = true;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> vec3<f32> {
    var var_0 = vec2<f32>(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -294f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(109f + 864f) + arg_0)));
    global0 = array<vec2<i32>, 1>();
    global1 = select(!(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(arg_0)), arg_0, false)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-810f - -786f) + _wgslsmith_f_op_f32(step(var_0.x, arg_0)))), any(vec4<bool>(select(true, any(vec2<bool>(false, false)), true), all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))), true, !(1083f >= var_0.x))), _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-arg_0)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) + _wgslsmith_f_op_f32(round(-1757f))) - 116f));
    let var_1 = Struct_3(countOneBits(vec2<u32>(1u, ~3971u ^ select(39994u, 1u, false))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(961f, _wgslsmith_f_op_f32(268f - _wgslsmith_f_op_f32(-var_0.x)), !any(vec2<bool>(false, false)))))), ~(~(reverseBits(u_input.d.xw) >> (~vec2<u32>(1u, 15572u) % vec2<u32>(32u)))), 0u, Struct_1(countOneBits(reverseBits(~vec4<u32>(0u, 4294967295u, 0u, 0u))), _wgslsmith_div_f32(746f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-797f - var_0.x)))));
    var var_2 = var_1.a;
    return _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(157f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -827f)), var_0.x)));
}

fn func_2(arg_0: f32) -> bool {
    global1 = all(vec3<bool>(true, true, true));
    var var_0 = Struct_4(-select(vec2<i32>(u_input.c, ~u_input.b), -vec2<i32>(-1i, 33561i), select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true))), _wgslsmith_f_op_vec3_f32(func_3(-1970f)), vec4<bool>(all(vec4<bool>(true, false, true, true)), true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0, arg_0)))));
    var_0 = Struct_4(~var_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(167f, 639f, -303f))))) + var_0.b), select(var_0.c, !select(vec4<bool>(var_0.c.x, var_0.c.x, false, var_0.c.x), !var_0.c, var_0.c), true), -1267f);
    let var_1 = Struct_3(select(vec2<u32>(1u, 1u), min(abs(vec2<u32>(1u, 94819u)), vec2<u32>(0u, 16826u)) & ~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 1u), vec2<u32>(47110u, 23177u)), vec2<bool>(all(var_0.c.wz), any(var_0.c.wyw))), var_0.d, select(vec2<i32>(~(11114i & var_0.a.x), 1i), firstTrailingBit(vec2<i32>(var_0.a.x ^ 1i, countOneBits(24086i))), !(!var_0.c.yx)), _wgslsmith_sub_u32(abs(1u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))), Struct_1(select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u), select(!var_0.c, select(vec4<bool>(var_0.c.x, var_0.c.x, false, false), vec4<bool>(var_0.c.x, var_0.c.x, true, var_0.c.x), false), !var_0.c.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(741f)) + arg_0), arg_0, false))));
    let var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-15239i, -1i), vec2<i32>(_wgslsmith_dot_vec2_i32(var_1.c, vec2<i32>(u_input.b, 0i)), var_0.a.x)), _wgslsmith_mult_i32(select(var_0.a.x >> (0u % 32u), var_1.c.x, var_0.a.x <= -2147483647i), select(firstTrailingBit(var_1.c.x), 23047i, !var_0.c.x))), select(firstTrailingBit(u_input.d.wxy), abs(u_input.d.wzx), true));
    return true;
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_div_u32(~(~(~0u)), 1u);
    let var_1 = Struct_4(u_input.d.zz, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-598f, 540f, -946f) + vec3<f32>(-118f, 148f, 857f)))))), select(vec4<bool>(false, func_2(-173f) && true, true, func_2(515f) || true), vec4<bool>(!all(vec3<bool>(false, true, true)), true, any(vec2<bool>(false, false)) & true, all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), true))), !select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), vec4<bool>(false, false, true, true))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(491f)) * -529f))));
    var_0 = 1u;
    global1 = true;
    var var_2 = Struct_2(Struct_1(vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 4294967295u, 14869u), ~vec3<u32>(24956u, 4294967295u, 1u)), 4294967295u, countOneBits(1u), abs(87139u)), _wgslsmith_f_op_f32(min(2306f, var_1.d))));
    return StorageBuffer(~_wgslsmith_mod_u32(var_2.a.a.x | ~1547u, 63907u), var_2.a.a.ww, _wgslsmith_f_op_vec3_f32(select(var_1.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-302f, _wgslsmith_f_op_f32(-var_2.a.b), -340f)), -1403f == var_2.a.b)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.b.x - var_1.b.x))), -1965f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 1>();
    global1 = all(vec3<bool>(any(vec2<bool>(true, true)), true, true));
    global1 = true || !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -721f)) != _wgslsmith_f_op_f32(round(-958f)));
    var var_0 = ~(~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(4294967295u, 27548u)), abs(vec2<u32>(42788u, 1u))));
    let x = u_input.a;
    s_output = func_1();
}

