struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: vec3<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_4,
    c: vec4<f32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1508f), _wgslsmith_f_op_f32(1806f * 123f), -442f, -359f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 214f, -420f, 730f) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-109f, -264f, 676f, 1972f)))))), Struct_4(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(808f, 1186f)), -624f)), _wgslsmith_f_op_f32(-506f * 1000f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-885f + 1478f), 1782f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-389f))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1502f), -769f, _wgslsmith_f_op_f32(1200f - -272f), -341f))))), ~vec2<u32>(arg_0, arg_0 << (~18480u % 32u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.b.a.x, 608f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c.wy) * vec2<f32>(var_0.b.a.x, 236f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.c.wx - var_0.b.a.ww) * vec2<f32>(333f, var_0.b.a.x)))), _wgslsmith_div_vec2_f32(var_0.c.wy, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_0.a.yy)))), all(vec2<bool>(_wgslsmith_mod_u32(arg_0, 17967u) > select(4294967295u, 1u, false), _wgslsmith_f_op_f32(f32(-1f) * -1258f) > _wgslsmith_f_op_f32(-var_0.a.x)))));
    var_1 = var_0.b.a.wy;
    var var_2 = u_input.c.xx;
    var_2 = ~vec2<u32>(_wgslsmith_add_u32(~36654u, min(_wgslsmith_add_u32(1u, var_0.d.x), ~1u)), ~4294967295u);
    return u_input.b.x;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: bool) -> f32 {
    let var_0 = ~(~46392u) << ((0u | _wgslsmith_dot_vec2_u32(u_input.c.yz, min(vec2<u32>(31747u, 5819u), u_input.d.yx ^ u_input.c.yx))) % 32u);
    let var_1 = Struct_3(false, vec2<bool>(true, arg_0.a), _wgslsmith_f_op_vec3_f32(-arg_2));
    let var_2 = vec3<i32>(firstLeadingBit(2147483647i), -1i, _wgslsmith_add_i32(-38609i, countOneBits(u_input.a & -39305i)));
    let var_3 = 1u;
    var var_4 = vec4<i32>(_wgslsmith_sub_i32(i32(-1i) * -1i, var_2.x), _wgslsmith_mult_i32(_wgslsmith_mult_i32(-func_3(var_0), -countOneBits(u_input.b.x)), var_2.x), -func_3(u_input.c.x), _wgslsmith_dot_vec3_i32(-vec3<i32>(~var_2.x, 5176i, 1i), u_input.b.wzz));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(404f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-169f + arg_2.x))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: f32, arg_2: vec3<i32>) -> Struct_4 {
    let var_0 = !(!vec2<bool>(true, all(vec2<bool>(false, true))));
    var var_1 = _wgslsmith_mod_vec2_i32(~arg_2.yz, u_input.b.wy);
    return Struct_4(vec4<f32>(_wgslsmith_f_op_f32(sign(-211f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-339f))), _wgslsmith_f_op_f32(abs(arg_0.x))), 1172f));
}

fn func_1() -> Struct_4 {
    return func_4(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - 436f), _wgslsmith_f_op_f32(func_2(Struct_2(false), vec3<f32>(-690f, 259f, -955f), vec3<f32>(-382f, -566f, 1000f), false))), -1964f, _wgslsmith_f_op_f32(f32(-1f) * -144f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-117f, -256f, 694f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-894f, -1088f, -1057f) - vec3<f32>(-274f, 1176f, 1431f)))), !all(vec3<bool>(false, false, true)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1398f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-777f + -1875f) + 1f))))), vec3<i32>(func_3(99644u), u_input.b.x | -55230i, _wgslsmith_div_i32(max(-u_input.b.x, max(u_input.b.x, -3775i)), -1i >> (max(u_input.c.x, 24516u) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a.x, -1000f, _wgslsmith_f_op_f32(var_0.a.x + 1063f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.a.x + 453f)))))));
    var var_1 = vec2<u32>(0u, abs(~min(1u, reverseBits(16738u))));
    var var_2 = var_0.a.xyx;
    var_2 = vec3<f32>(-408f, func_1().a.x, -1100f);
    var_1 = ~(u_input.d.ww >> (vec2<u32>(~4294967295u, ~u_input.c.x) % vec2<u32>(32u))) << (abs(firstLeadingBit((u_input.c.yz & vec2<u32>(var_1.x, 1u)) ^ ~u_input.c.ww)) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(min(0u, firstTrailingBit(~(~u_input.d.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1061f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(971f - var_0.a.x) * _wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-415f, -1228f)), _wgslsmith_f_op_f32(-var_2.x))))), abs(-u_input.b.x) ^ min(i32(-1i) * -u_input.b.x, ~_wgslsmith_div_i32(-14611i, -18261i)), u_input.b.wyx, -func_3(_wgslsmith_clamp_u32(~4294967295u, _wgslsmith_div_u32(var_1.x, u_input.c.x), var_1.x)));
}

