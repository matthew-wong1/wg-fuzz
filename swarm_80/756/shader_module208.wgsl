struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<u32>) -> vec2<f32> {
    let var_0 = u_input.b;
    let var_1 = _wgslsmith_mod_i32(~_wgslsmith_sub_i32(1i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a, 2147483647i), vec3<i32>(0i, u_input.a, u_input.c)), 0i), 1i);
    let var_2 = _wgslsmith_f_op_f32(trunc(arg_0.x));
    let var_3 = firstTrailingBit(~min(~_wgslsmith_div_vec4_u32(vec4<u32>(17092u, arg_1.x, 37952u, arg_1.x), vec4<u32>(arg_1.x, var_0, 31887u, u_input.b)), (vec4<u32>(var_0, 12901u, 18909u, 30793u) | vec4<u32>(53455u, 4294967295u, 24648u, 18503u)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 47485u, 1u, u_input.b), vec4<u32>(42470u, 0u, 51387u, 4294967295u), vec4<u32>(u_input.b, arg_1.x, arg_1.x, 0u)) % vec4<u32>(32u))));
    var var_4 = Struct_3(Struct_1(firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.x, 1u), ~vec2<u32>(0u, arg_1.x))), ~_wgslsmith_div_vec3_u32(var_3.zzz & vec3<u32>(56996u, 18476u, 4294967295u), ~vec3<u32>(5887u, 77496u, 0u)), arg_1.x), ~_wgslsmith_mod_u32(arg_1.x & 69181u, 12394u) << (1u % 32u));
    return _wgslsmith_f_op_vec2_f32(ceil(arg_0.yz));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: bool) -> bool {
    return arg_3;
}

fn func_1(arg_0: vec4<u32>, arg_1: bool) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, -2832f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-383f, -532f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1188f, -895f)) - vec2<f32>(1f, 1f))), select(!(!vec2<bool>(true, arg_1)), select(select(vec2<bool>(false, false), vec2<bool>(false, arg_1), arg_1), select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1), false), arg_1), true))) * _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1167f, -287f, 668f), vec3<f32>(1465f, -808f, -1531f)))), arg_0.wx)));
    var var_1 = _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1844f), var_0.x, true)));
    var var_2 = _wgslsmith_mult_vec3_u32(vec3<u32>(~41491u & (33225u << (arg_0.x % 32u)), ~4294967295u, firstTrailingBit(_wgslsmith_add_u32(arg_0.x, u_input.b))) & vec3<u32>(arg_0.x, 36059u, reverseBits(97680u) ^ u_input.b), firstTrailingBit(arg_0.zxz));
    let var_3 = vec3<bool>(arg_1, true, all(vec4<bool>(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(387f, 1110f, 358f, var_0.x) + vec4<f32>(773f, var_0.x, var_0.x, 446f)), Struct_3(Struct_1(vec2<u32>(34092u, arg_0.x), arg_0.wzx, 36321u), var_2.x), Struct_1(var_2.xz, vec3<u32>(var_2.x, 0u, 1u), 4294967295u), true), false, !all(vec3<bool>(arg_1, arg_1, false)), !(-2147483647i == u_input.c))));
    let var_4 = u_input.c;
    return arg_0.xxz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(1i, u_input.c, ~min(u_input.a, u_input.c));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1361f, 668f)))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-332f, -1021f) + vec2<f32>(-1149f, -2001f)) - vec2<f32>(-1000f, -429f))))) + vec2<f32>(884f, -1000f));
    let var_2 = abs(u_input.b);
    var_1 = vec2<f32>(1000f, -1753f);
    var var_3 = !(!all(vec4<bool>(true, true, true, true)));
    let var_4 = _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(select(~vec3<u32>(1u, var_2, 1u) << (vec3<u32>(21673u, 0u, 21154u) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(func_1(vec4<u32>(28084u, 70053u, var_2, u_input.b), true), vec3<u32>(var_2, 50273u, 37679u) << (vec3<u32>(var_2, 33143u, u_input.b) % vec3<u32>(32u))), vec3<bool>(true, func_3(vec4<f32>(var_1.x, var_1.x, var_1.x, 192f), Struct_3(Struct_1(vec2<u32>(0u, u_input.b), vec3<u32>(var_2, 56246u, 28531u), var_2), u_input.b), Struct_1(vec2<u32>(62409u, var_2), vec3<u32>(u_input.b, 1u, var_2), var_2), false), func_3(vec4<f32>(var_1.x, var_1.x, var_1.x, 848f), Struct_3(Struct_1(vec2<u32>(6113u, u_input.b), vec3<u32>(0u, 11972u, 4294967295u), var_2), 101151u), Struct_1(vec2<u32>(u_input.b, 19751u), vec3<u32>(42914u, 81424u, var_2), 36723u), true))), ~(~(vec3<u32>(1u, 4294967295u, u_input.b) << (vec3<u32>(25428u, 54426u, 4294967295u) % vec3<u32>(32u))))), 67603u);
    var_3 = true;
    var var_5 = Struct_3(Struct_1(~(reverseBits(vec2<u32>(4294967295u, var_2)) | (vec2<u32>(10457u, var_4) | vec2<u32>(var_4, var_2))), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(22364u, var_4), vec2<u32>(4294967295u, u_input.b)), ~19082u, firstLeadingBit(16355u)), abs(vec3<u32>(var_4, u_input.b, 19791u) & vec3<u32>(var_4, 1u, 18153u))), 34404u), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(-var_0.xy, ~(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, var_2, 0u, 4294967295u), vec4<u32>(u_input.b, var_2, 7999u, var_4)))), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(1u, var_4, max(_wgslsmith_mult_u32(u_input.b, var_2), _wgslsmith_mult_u32(0u, var_4))), _wgslsmith_div_u32(var_5.a.b.x, ~var_4 | 1u), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(var_5.a.a.x, 0u, var_5.a.c, var_5.b)), reverseBits(vec4<u32>(var_2, var_5.a.a.x, 9826u, var_5.b))), select(~vec4<u32>(var_5.a.c, 16003u, 49304u, var_2), vec4<u32>(var_5.a.c, 49488u, var_5.a.b.x, 0u) & vec4<u32>(104643u, var_2, 1u, var_5.b), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), ~(-(~(~u_input.a))));
}

