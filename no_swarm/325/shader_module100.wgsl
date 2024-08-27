struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 20921i;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>) -> bool {
    let var_0 = _wgslsmith_mod_i32(u_input.a.x, max(-2147483647i, _wgslsmith_dot_vec2_i32(max(u_input.a.zz, u_input.a.yy), ~countOneBits(u_input.a.zx))));
    global0 = -1i;
    let var_1 = ~u_input.a.x;
    return !(!all(select(vec3<bool>(arg_0.c, true, arg_0.c), vec3<bool>(arg_0.c, arg_0.c, false), arg_0.c)));
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-126f * -2650f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1140f, -433f)), _wgslsmith_f_op_f32(-747f + -529f)), func_3(Struct_2(Struct_1(-1000f), vec2<f32>(-408f, 556f), false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(232f, -609f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2479f))))))));
    var var_1 = -110f;
    var var_2 = abs(u_input.a.xx ^ u_input.a.xz);
    var var_3 = ~firstTrailingBit(0u);
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1248f, var_0.a, 337f, var_0.a))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1718f, -737f, -545f, var_0.a)), vec4<f32>(var_0.a, -296f, var_0.a, var_0.a))), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false)))))) + vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_f_op_f32(-var_0.a))), -628f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-639f - _wgslsmith_f_op_f32(var_0.a + var_0.a)))));
    return Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.x * 323f) * _wgslsmith_f_op_f32(select(-1022f, _wgslsmith_f_op_f32(min(600f, 326f)), true))), 649f)));
}

fn func_1(arg_0: Struct_2) -> i32 {
    global0 = min(u_input.a.x, 1i | u_input.a.x);
    var var_0 = true | arg_0.c;
    var var_1 = arg_0.a;
    var var_2 = func_2(abs(~(~(~u_input.c.x))));
    let var_3 = -1189f;
    return _wgslsmith_sub_i32(u_input.a.x, -1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<i32>(u_input.a.x, func_1(Struct_2(Struct_1(364f), vec2<f32>(-1218f, 1000f), true))) & vec2<i32>(~u_input.a.x, 6038i);
    var_0 = u_input.a.xy << (vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.c, abs(~vec3<u32>(u_input.b.x, 5691u, 11326u))), min(abs(_wgslsmith_clamp_u32(u_input.b.x, 0u, 5887u)), ~u_input.b.x)) % vec2<u32>(32u));
    let var_1 = Struct_2(func_2(_wgslsmith_mult_u32(28778u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(560u, u_input.b.x), vec2<u32>(4294967295u, 46586u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), true);
    var var_2 = func_2(0u);
    var var_3 = _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.c.x, countOneBits(u_input.c.x)), min(_wgslsmith_clamp_vec2_u32(u_input.c.yy, abs(~vec2<u32>(4294967295u, 62084u)), vec2<u32>(~1u, u_input.b.x)), ~u_input.b.xz));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(select(_wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(2147483647i, u_input.a.x, 32697i)), vec3<i32>(-1i) * -vec3<i32>(var_0.x, 22599i, -2147483647i), select(var_1.c, var_1.c, false)), vec3<i32>(firstLeadingBit(_wgslsmith_add_i32(-1i, var_0.x)), 30197i, select(-38216i, -2147483647i, false) ^ ~u_input.a.x)), u_input.c.x, 8801u);
}

