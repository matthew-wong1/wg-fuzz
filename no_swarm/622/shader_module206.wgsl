struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool) -> i32 {
    return ~reverseBits(arg_0.d.x >> (_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, arg_0.c.x), arg_0.c), 73978u) % 32u));
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_2, arg_3: bool) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1 + arg_1))), !vec4<bool>(arg_0.x > (2878u >> (u_input.b % 32u)), !(!arg_2.a), arg_2.a, true), select(abs(vec3<u32>(0u, 54632u, 1u) << (arg_0.ywx % vec3<u32>(32u))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(46218u, arg_0.x, u_input.d.x), vec3<u32>(4294967295u, 80988u, 13914u), arg_0.zzw), vec3<bool>(true, arg_2.a, true)) & vec3<u32>(18041u, ~7493u, arg_0.x), -(~(vec4<i32>(5096i, 2147483647i, u_input.c, -23236i) << (vec4<u32>(arg_0.x, 58415u, 66511u, u_input.b) % vec4<u32>(32u)))) >> (~vec4<u32>(u_input.b, arg_0.x, ~5076u, 4294967295u) % vec4<u32>(32u)), -2147483647i);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -688f), _wgslsmith_f_op_f32(-var_0.a)), -264f)) == arg_2.b.x;
    var_1 = true;
    var var_2 = ~(~vec4<i32>(-1i, _wgslsmith_clamp_i32(~57178i, min(3808i, 3453i), func_3(Struct_1(101f, vec4<bool>(arg_2.a, arg_3, false, true), vec3<u32>(arg_0.x, 4294967295u, var_0.c.x), var_0.d, var_0.e), arg_2, var_0.b.x)), 2147483647i, ~1i));
    var var_3 = false;
    return u_input.b;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: u32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1f, arg_0.a), -766f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * -356f)), -1593f) * arg_1.e.b)));
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(arg_1.e.b));
    var var_1 = min(u_input.a.x << (21251u % 32u), arg_0.c.x);
    let var_2 = !arg_1.b.b.x;
    var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~(~countOneBits(vec4<u32>(4294967295u, 0u, 25270u, 97934u))), ~(~vec4<u32>(1u, 16572u, 4294967295u, arg_3) | _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.a.x, 1u, u_input.a.x), vec4<u32>(33840u, u_input.d.x, 36160u, 77470u), vec4<u32>(21135u, u_input.b, arg_3, 1u)))), ~vec4<u32>(arg_3, _wgslsmith_mult_u32(5875u, 1u), ~(~arg_3), ~arg_0.c.x));
    return vec4<u32>(arg_0.c.x, 1u, func_2(vec4<u32>(u_input.b, 9910u, 12833u, 0u), _wgslsmith_f_op_f32(f32(-1f) * -1037f), Struct_2(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(arg_1.e.b)) - arg_1.e.b), -775f), var_2), firstLeadingBit(u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.e;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1383f) - _wgslsmith_f_op_f32(ceil(-2598f))), vec4<bool>(true, all(vec4<bool>(true, false, all(vec2<bool>(false, false)), select(true, false, true))), true, all(vec3<bool>(true, true, true))), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(func_1(Struct_1(-624f, vec4<bool>(true, false, true, false), vec3<u32>(4294967295u, u_input.b, u_input.d.x), vec4<i32>(-28386i, 0i, -13149i, u_input.c), 4587i), Struct_3(1559f, Struct_1(-397f, vec4<bool>(false, true, false, false), vec3<u32>(54660u, u_input.b, 30622u), vec4<i32>(u_input.e.x, -37173i, var_0.x, -1i), 0i), u_input.a.x, 2147483647i, Struct_2(false, vec4<f32>(1178f, -329f, 1258f, -170f), 1000f)), vec3<f32>(-464f, -788f, 562f), u_input.d.x), vec4<u32>(142239u, 4294967295u, 0u, u_input.b) >> (vec4<u32>(0u, 32699u, u_input.b, 24264u) % vec4<u32>(32u))), u_input.a.x, ~1u), abs(vec3<u32>(countOneBits(1u), firstTrailingBit(59131u), 42073u))), vec4<i32>(0i, ~firstTrailingBit(-19301i), select(~var_0.x, 0i, true), 31268i), ~u_input.c);
    let var_2 = ~(_wgslsmith_clamp_u32(reverseBits(105470u), var_1.c.x, countOneBits(_wgslsmith_dot_vec3_u32(var_1.c, var_1.c))) ^ u_input.b);
    var var_3 = any(var_1.b.wy);
    var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_i32(_wgslsmith_mod_i32(var_1.e, var_0.x), reverseBits(_wgslsmith_dot_vec2_i32(u_input.e.zx, vec2<i32>(32640i, var_0.x)))), select(_wgslsmith_clamp_i32(~(~var_1.e), _wgslsmith_mult_i32(var_1.e, -2147483647i) << (~15862u % 32u), -var_0.x), var_0.x, var_1.b.x), -1429f, var_1.c.x, 1842u);
}

