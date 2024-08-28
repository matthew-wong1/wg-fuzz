struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<f32>,
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> bool {
    var var_0 = ~(~_wgslsmith_mult_u32(1u, 4294967295u));
    let var_1 = arg_2.x;
    var var_2 = Struct_2(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, _wgslsmith_mult_u32(u_input.a, 0u), u_input.a), _wgslsmith_mult_vec3_u32(~(vec3<u32>(5163u, u_input.a, u_input.a) & vec3<u32>(14335u, u_input.a, 4294967295u)), select(reverseBits(vec3<u32>(1u, u_input.a, 41478u)), ~vec3<u32>(u_input.a, u_input.a, 0u), arg_0.a))));
    var_0 = var_2.a.x;
    var var_3 = Struct_2(var_2.a);
    return arg_1.a;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: bool) -> bool {
    var var_0 = !select(!(!vec3<bool>(arg_3, false, arg_2.x)), vec3<bool>(func_3(arg_1, arg_1, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1129f, 1000f, -1653f) - vec3<f32>(313f, -1408f, 156f))), !arg_3, all(!arg_2)), !(!(!vec3<bool>(arg_1.a, false, false))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(234f, -773f), vec2<f32>(749f, 2607f), var_0.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-457f, -446f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -660f) + vec2<f32>(-1471f, -1467f)))))));
    var var_2 = Struct_2(vec3<u32>(25764u, u_input.a << (max(20301u, ~1u) % 32u), _wgslsmith_mod_u32(u_input.a, 0u)));
    let var_3 = Struct_2(~(var_2.a >> (vec3<u32>(reverseBits(0u), ~16790u, 1u) % vec3<u32>(32u))));
    var var_4 = var_3;
    return any(vec4<bool>((1u << (min(var_3.a.x, 1u) % 32u)) == 1793u, var_0.x, all(select(select(vec4<bool>(arg_1.a, true, false, true), vec4<bool>(true, arg_3, true, arg_1.a), arg_1.a), vec4<bool>(true, false, arg_1.a, false), all(vec4<bool>(true, arg_3, false, true)))), !(!var_0.x)));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: f32) -> u32 {
    let var_0 = vec3<bool>(arg_0, !func_2(-(~vec4<i32>(u_input.b.x, 1i, 6254i, u_input.b.x)), Struct_1(arg_0 && arg_0), select(vec2<bool>(true, true), vec2<bool>(arg_0, arg_0), 757f > arg_2), all(vec3<bool>(true, true, true))), arg_0);
    var var_1 = -vec4<i32>(u_input.b.x, u_input.b.x, i32(-1i) * -u_input.b.x, -_wgslsmith_dot_vec4_i32(abs(vec4<i32>(12613i, 39734i, u_input.b.x, 2147483647i)), max(vec4<i32>(-14451i, -5762i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, -20790i, u_input.b.x, u_input.b.x))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-573f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - _wgslsmith_f_op_f32(select(1132f, -903f, arg_0))))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2))))));
    let var_3 = select(!select(var_0.xy, !select(vec2<bool>(var_0.x, arg_0), vec2<bool>(arg_0, true), arg_0), !(!var_0.yy)), select(var_0.zx, !vec2<bool>(arg_0, any(vec4<bool>(false, false, arg_0, var_0.x))), var_0.zy), vec2<bool>(select(false, select(false, true, var_0.x), false), true));
    var var_4 = (abs((vec4<u32>(64349u, 17749u, arg_1.a.x, 1u) | vec4<u32>(4294967295u, u_input.a, 23894u, 45025u)) | vec4<u32>(1u, 1u, 34963u, arg_1.a.x)) << (~_wgslsmith_add_vec4_u32(vec4<u32>(3631u, u_input.a, u_input.a, u_input.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 33189u, 4294967295u, 0u), vec4<u32>(arg_1.a.x, 1338u, 1u, arg_1.a.x), vec4<u32>(32251u, 1u, 4294967295u, u_input.a))) % vec4<u32>(32u))) ^ ~abs(abs(vec4<u32>(13712u, 131852u, 86710u, arg_1.a.x)) ^ reverseBits(vec4<u32>(arg_1.a.x, arg_1.a.x, 299u, 68181u)));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(0u, 4294967295u, u_input.a), _wgslsmith_clamp_u32(26725u, func_1(false, Struct_2(vec3<u32>(1u, u_input.a, u_input.a)), 434f), ~39391u)), u_input.a, 1u);
    var var_1 = Struct_1(!any(vec3<bool>(true, true, true)));
    let var_2 = Struct_2(vec3<u32>(_wgslsmith_div_u32(~1u, ~u_input.a), u_input.a, 14931u));
    var var_3 = vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, -59223i, -2147483647i, u_input.b.x), ~max(vec4<i32>(u_input.b.x, 1i, u_input.b.x, 1i), vec4<i32>(u_input.b.x, -1i, 0i, u_input.b.x))), ~_wgslsmith_clamp_i32(abs(u_input.b.x) | ~u_input.b.x, i32(-1i) * -u_input.b.x, u_input.b.x), 0i);
    let var_4 = Struct_1(var_1.a);
    var var_5 = Struct_1(!(!(_wgslsmith_dot_vec3_i32(u_input.b, u_input.b) == -1i)));
    let x = u_input.a;
    s_output = StorageBuffer((select(vec3<u32>(var_2.a.x, var_0.x, 72947u), _wgslsmith_mult_vec3_u32(vec3<u32>(var_2.a.x, u_input.a, var_2.a.x), vec3<u32>(var_0.x, var_2.a.x, u_input.a)), select(vec3<bool>(false, true, var_4.a), vec3<bool>(true, true, false), false)) >> (var_2.a % vec3<u32>(32u))) & ~countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), var_2.a)), var_0 >> (var_0 % vec3<u32>(32u)), vec2<f32>(1f, 1f));
}

