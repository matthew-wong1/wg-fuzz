struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> u32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-320f)), _wgslsmith_div_f32(1701f, 625f), 1402f))), Struct_1(firstLeadingBit(vec4<u32>(52426u, u_input.a, 1u, u_input.b.x))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    var_0 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.a.x, _wgslsmith_div_f32(-1874f, -614f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.a.x, var_0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1280f, var_0.a.x))))), -1286f), Struct_1(_wgslsmith_add_vec4_u32(var_0.b.a ^ (var_0.b.a & vec4<u32>(12700u, var_0.b.a.x, u_input.a, 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, var_0.b.a.x, 38373u, var_0.b.a.x), _wgslsmith_mod_vec4_u32(var_0.b.a, var_0.b.a)))), var_0.c);
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(var_0.a.x, var_0.a.x, true)), _wgslsmith_f_op_f32(select(var_0.a.x, 512f, false)))), -2359f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.a.x, 1158f)))))), Struct_1(var_0.b.a), !var_0.c);
    let var_1 = (1i ^ (~1i >> (~var_0.b.a.x % 32u))) >= 1i;
    var_0 = Struct_3(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(round(var_0.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-417f, 636f, var_1))), 817f))), var_0.b, (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)) > _wgslsmith_f_op_f32(max(600f, -819f))) || true);
    return u_input.b.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: i32) -> u32 {
    var var_0 = _wgslsmith_mult_vec3_u32(~(~(~u_input.b)), vec3<u32>(firstTrailingBit(~0u), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.b.x, u_input.c, 18352u, 1u)), vec4<u32>(4294967295u, u_input.b.x, 30476u, 32582u) ^ vec4<u32>(47767u, u_input.a, 0u, 0u)), u_input.b.x) & vec3<u32>(~func_3(), _wgslsmith_div_u32(4294967295u, u_input.c << (u_input.a % 32u)), u_input.b.x));
    var var_1 = Struct_4(Struct_1(abs(reverseBits(vec4<u32>(u_input.b.x, 4294967295u, u_input.a, 0u))) << (select(~vec4<u32>(37747u, 0u, 853u, 517u), vec4<u32>(4294967295u, 1u, u_input.c, 4294967295u) >> (vec4<u32>(u_input.c, 11103u, var_0.x, var_0.x) % vec4<u32>(32u)), true) % vec4<u32>(32u))), Struct_3(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1523f, -1614f, -278f))))), Struct_1(vec4<u32>(var_0.x, 66933u, 38504u, firstTrailingBit(var_0.x))), arg_0.x >= abs(0i)), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1161f, -1007f, 284f) - vec3<f32>(-196f, -923f, 1369f)))), Struct_1(countOneBits(vec4<u32>(116667u, 40067u, 66772u, u_input.a)) & (vec4<u32>(var_0.x, 4294967295u, 0u, u_input.a) << (vec4<u32>(var_0.x, var_0.x, u_input.a, 75089u) % vec4<u32>(32u)))), true));
    var_1 = Struct_4(var_1.b.b, Struct_3(vec3<f32>(1334f, 1000f, -1050f), var_1.a, !any(vec4<bool>(false, var_1.b.c, var_1.b.c, var_1.c.c))), var_1.b);
    var var_2 = var_1.c.c;
    let var_3 = Struct_4(Struct_1(~vec4<u32>(4294967295u, min(var_1.b.b.a.x, u_input.b.x), 1u, firstTrailingBit(20279u))), var_1.c, Struct_3(var_1.c.a, Struct_1(var_1.b.b.a), !all(select(vec3<bool>(false, false, var_1.b.c), vec3<bool>(var_1.b.c, var_1.c.c, var_1.b.c), vec3<bool>(false, true, var_1.c.c)))));
    return 4294967295u;
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: u32) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1634f, arg_1.c.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1735f, arg_1.c.a.x, arg_1.b.c))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1367f)))));
    var var_1 = ~select(u_input.c, 28743u, false);
    var_1 = ~(~arg_2);
    var_1 = arg_2;
    var_1 = 85540u >> (_wgslsmith_add_u32(_wgslsmith_add_u32(countOneBits(4294967295u), ~arg_2), _wgslsmith_mult_u32(func_3(), select(88039u & arg_2, u_input.c, arg_1.c.c))) % 32u);
    return select(!select(select(select(vec3<bool>(arg_1.c.c, arg_1.b.c, arg_1.c.c), vec3<bool>(arg_1.c.c, false, false), false), vec3<bool>(false, true, arg_1.b.c), arg_0 < 0u), select(select(vec3<bool>(arg_1.b.c, arg_1.b.c, arg_1.b.c), vec3<bool>(false, true, arg_1.b.c), arg_1.c.c), select(vec3<bool>(arg_1.c.c, arg_1.c.c, true), vec3<bool>(arg_1.b.c, arg_1.c.c, true), arg_1.c.c), true), false), !(!select(vec3<bool>(arg_1.c.c, false, false), !vec3<bool>(arg_1.c.c, true, arg_1.b.c), true)), !vec3<bool>(all(!vec4<bool>(false, arg_1.b.c, arg_1.c.c, arg_1.c.c)), !any(vec2<bool>(arg_1.b.c, true)), true));
}

fn func_1() -> vec3<f32> {
    var var_0 = ~(~(~(~vec4<u32>(u_input.c, 1u, 42460u, 0u))));
    var var_1 = all(vec4<bool>(true, true, all(vec4<bool>(true, false, true, true)), true));
    var_1 = !all(func_4(~func_2(vec3<i32>(19908i, 1i, -73159i), -2147483647i), Struct_4(Struct_1(vec4<u32>(4294967295u, 0u, var_0.x, var_0.x)), Struct_3(vec3<f32>(2283f, -2135f, -1358f), Struct_1(vec4<u32>(1u, 0u, u_input.c, u_input.b.x)), false), Struct_3(vec3<f32>(766f, 537f, 2194f), Struct_1(vec4<u32>(var_0.x, var_0.x, u_input.b.x, 0u)), true)), 4294967295u));
    var var_2 = vec3<i32>(1i, 1i, 1i);
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(1052f + 627f), any(vec3<bool>(false, false, false)))) + -1372f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1073f) - -326f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(429f))))))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-471f + -815f), -555f, var_3), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1009f, var_3, var_3))))) + vec3<f32>(_wgslsmith_f_op_f32(612f * _wgslsmith_f_op_f32(-138f * _wgslsmith_f_op_f32(floor(var_3)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1147f - var_3)))), _wgslsmith_f_op_f32(select(var_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_3))), true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(721f, 213f, 111f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-251f, 762f, 654f) - vec3<f32>(-1028f, 1265f, -363f))), _wgslsmith_f_op_vec3_f32(func_1())))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(391f, -898f, -1000f) - vec3<f32>(-1332f, -189f, -2087f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-616f, 241f, 843f)), true)))) + vec3<f32>(625f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-978f)), 507f), -1310f)), all(vec2<bool>(false, true))));
    let var_1 = u_input.b.x;
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - 179f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-131f)))))), _wgslsmith_f_op_f32(f32(-1f) * -1657f));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-752f, _wgslsmith_div_f32(var_0.x, var_0.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x + var_0.x), var_0.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-3248f + _wgslsmith_f_op_f32(f32(-1f) * -772f)), -1000f))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_1()).x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, -271f)) + var_0.x) - var_0.x), -137f);
    var var_2 = vec4<f32>(var_0.x, _wgslsmith_f_op_vec3_f32(func_1()).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) - -578f))), var_0.x);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1463f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_2.x, var_2.x)), _wgslsmith_f_op_f32(-var_2.x), false)))), var_0.x);
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(var_3.x)), var_2.x, _wgslsmith_f_op_f32(abs(-698f)), _wgslsmith_f_op_f32(round(-632f)))), var_3, !vec4<bool>(true, false, all(vec2<bool>(false, false)), true))));
    let x = u_input.a;
    s_output = StorageBuffer(-(vec4<i32>(2147483647i, 1i, 1i, ~(-2794i)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.b.x, u_input.c) & vec4<u32>(u_input.b.x, 1u, 5578u, var_1), ~vec4<u32>(var_1, 122316u, 1u, u_input.b.x)) % vec4<u32>(32u))), var_1);
}

