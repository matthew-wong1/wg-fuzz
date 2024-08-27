struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: i32,
    d: vec4<bool>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec2<u32> {
    let var_0 = Struct_2(u_input.a.zzw, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-2090f, -709f, -1094f), vec3<f32>(1401f, -660f, 607f))) * vec3<f32>(1f, 1f, 1f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-332f - 557f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(176f)))), 1680f))), ~(-_wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.c.x, -16065i, u_input.c.x), 8849i)), !vec4<bool>(false, true, any(vec2<bool>(true, true)), false));
    var var_1 = ~_wgslsmith_clamp_u32(~0u, 47885u, ~_wgslsmith_clamp_u32(0u, _wgslsmith_mod_u32(60252u, var_0.a.x), 52546u));
    var_1 = ~u_input.b.x;
    var var_2 = ~var_0.a | ~firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 31864u, 1u), vec3<u32>(u_input.b.x, u_input.b.x, 6955u)) << (reverseBits(vec3<u32>(8595u, var_0.a.x, u_input.a.x)) % vec3<u32>(32u)));
    let var_3 = firstTrailingBit(var_0.a);
    return ~var_3.zx | ~(~(~vec2<u32>(var_2.x, var_3.x)));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_4(0u, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-817f, 446f, -687f), vec3<f32>(-610f, -623f, 1562f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-369f, 443f, -1119f))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -433f), _wgslsmith_f_op_f32(min(-661f, -1321f)), 1926f)), (u_input.b.x < 7965u) | true, ~u_input.b >> (_wgslsmith_mod_vec2_u32(func_3(), u_input.d) % vec2<u32>(32u))));
    let var_1 = abs(~40260u);
    let var_2 = Struct_3(u_input.a.x);
    var var_3 = abs(u_input.c.x) >> (u_input.b.x % 32u);
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.a.x), -191f, _wgslsmith_f_op_f32(var_0.b.a.x - var_0.b.a.x)))), true, ~(~u_input.a.zx));
    return Struct_2(_wgslsmith_mult_vec3_u32(select(vec3<u32>(var_0.a, ~var_0.b.c.x, var_0.b.c.x), reverseBits(u_input.a.yzx), var_4.b), u_input.a.yyz), var_4.a, _wgslsmith_mult_i32(u_input.c.x, u_input.c.x), vec4<bool>(false, !any(vec3<bool>(true, false, var_0.b.b)) & var_0.b.b, false, var_0.b.b));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec4<f32>) -> vec3<f32> {
    var var_0 = ~u_input.a.xyx;
    var var_1 = all(func_2().d.xy);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(464f, arg_3.x, arg_0.x) * vec3<f32>(228f, arg_3.x, 897f)) - _wgslsmith_f_op_vec3_f32(arg_3.zww * arg_3.wzw)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.b.x, -1090f, arg_1.b.x)))), select(select(arg_1.d.wyz, arg_1.d.yyy, arg_1.d.xxw), vec3<bool>(true, arg_1.d.x, arg_1.d.x), arg_1.d.xww))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -457f), _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_vec3_f32(-arg_3.wxx)), arg_1.d.xxy)), arg_1.d.x, u_input.a.zw);
    let var_3 = arg_1.a.x;
    return vec3<f32>(_wgslsmith_f_op_f32(max(1776f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.b.x - _wgslsmith_f_op_f32(-var_2.a.x)), _wgslsmith_f_op_f32(exp2(arg_1.b.x))))), _wgslsmith_f_op_f32(round(303f)), 1384f);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: vec4<bool>, arg_3: bool) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(vec2<f32>(798f, -899f), func_2(), _wgslsmith_mult_vec2_i32(u_input.c.yy, u_input.c.zy), _wgslsmith_f_op_vec4_f32(vec4<f32>(-263f, -133f, 696f, -296f) * vec4<f32>(-1797f, 452f, -771f, 1348f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1963f, 1080f, -896f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(176f, 1043f, -1217f) - vec3<f32>(964f, -437f, 1494f)))))), false, vec2<u32>(~(1u << (0u % 32u)), 15291u));
    let var_1 = Struct_4(29513u, var_0);
    let var_2 = _wgslsmith_f_op_f32(-var_1.b.a.x);
    let var_3 = Struct_3(10788u);
    var var_4 = var_1;
    return func_2().d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, _wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(u_input.a.x, u_input.b.x)), 16706u), ~vec4<u32>(u_input.b.x, u_input.d.x, 0u, 25135u)), u_input.d.x) >> (~vec3<u32>(~countOneBits(u_input.b.x), ~(u_input.b.x << (u_input.d.x % 32u)), u_input.b.x) % vec3<u32>(32u));
    let var_1 = vec2<bool>(true, true);
    let var_2 = -vec2<i32>(u_input.c.x, 7928i);
    let var_3 = Struct_3(var_0.x);
    let var_4 = select(!select(!vec2<bool>(false, var_1.x), vec2<bool>(true, true), all(select(vec2<bool>(var_1.x, var_1.x), var_1, var_1))), vec2<bool>(!(!var_1.x == (var_1.x | true)), var_1.x), !select(true, !select(var_1.x, var_1.x, var_1.x), any(vec4<bool>(var_1.x, false, var_1.x, var_1.x))));
    let var_5 = select(vec2<i32>(13426i, 68213i) >> (vec2<u32>(~var_0.x, var_0.x) % vec2<u32>(32u)), ~abs(firstLeadingBit(u_input.c.xz)), false & all(vec4<bool>(true, false, false, true))) | firstLeadingBit(var_2);
    let var_6 = Struct_2(vec3<u32>(u_input.b.x, ~_wgslsmith_mult_u32(1u, 71014u) >> (var_0.x % 32u), ~1u >> ((var_0.x | ~var_0.x) % 32u)), vec3<f32>(338f, 541f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2218f, _wgslsmith_f_op_f32(f32(-1f) * -1103f))))), u_input.c.x, !func_1(_wgslsmith_clamp_vec2_i32(var_5, vec2<i32>(var_2.x, u_input.c.x), u_input.c.xz) | u_input.c.zy, vec2<i32>(_wgslsmith_dot_vec2_i32(var_2, vec2<i32>(u_input.c.x, var_5.x)), var_2.x), !vec4<bool>(false, var_1.x, var_1.x, true), !var_4.x));
    var var_7 = min(2147483647i, u_input.c.x);
    let var_8 = Struct_4(u_input.b.x, Struct_1(vec3<f32>(var_6.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_6.b.x)), _wgslsmith_f_op_f32(-var_6.b.x)), (-42643i >= _wgslsmith_div_i32(var_2.x, 3862i)) || var_1.x, select(_wgslsmith_mod_vec2_u32(~vec2<u32>(0u, 0u), max(vec2<u32>(83652u, var_6.a.x), vec2<u32>(var_3.a, 107809u))), vec2<u32>(min(var_6.a.x, var_0.x), _wgslsmith_clamp_u32(1u, 4533u, u_input.b.x)), !any(vec2<bool>(false, var_6.d.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec2_u32(var_6.a.zy, vec2<u32>(_wgslsmith_mod_u32(4294967295u, var_6.a.x), firstTrailingBit(0u))), vec3<u32>(_wgslsmith_dot_vec3_u32(max(~var_0, vec3<u32>(var_8.b.c.x, var_0.x, 1520u)), var_6.a), _wgslsmith_sub_u32(reverseBits(reverseBits(var_3.a)), ~var_3.a), firstTrailingBit(var_3.a)), -_wgslsmith_clamp_vec2_i32(u_input.c.wy, ~u_input.c.yx, ~var_5), u_input.a.zyx);
}

