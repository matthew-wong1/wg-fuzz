struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: u32,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: vec4<u32>) -> vec3<f32> {
    let var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(1u, u_input.b.x, ~arg_0.x), ~u_input.b.x), vec2<u32>(~_wgslsmith_add_u32(u_input.b.x, 1u), 0u) & vec2<u32>(_wgslsmith_dot_vec4_u32(arg_0, ~vec4<u32>(u_input.b.x, u_input.b.x, 1u, 9965u)), ~(~61028u)), ~_wgslsmith_sub_vec2_u32(select(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, 0u), vec2<u32>(26702u, 1u), u_input.b), max(vec2<u32>(arg_0.x, 79383u), vec2<u32>(u_input.b.x, u_input.b.x)), false), abs(vec2<u32>(u_input.b.x, arg_0.x))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(310f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -541f)))) - 779f);
    let var_2 = _wgslsmith_div_i32(6686i, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 0i, -64348i), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 5899i, u_input.a), vec3<i32>(u_input.a, u_input.a, -24250i))), u_input.a, 1i), vec3<i32>(u_input.a, 57387i, -1i)));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -503f);
    var var_3 = false;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-212f)), -539f, -981f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-905f, _wgslsmith_f_op_f32(f32(-1f) * -2016f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(950f, 218f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -760f) + -364f))));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<bool>) -> vec3<f32> {
    var var_0 = Struct_5(arg_2);
    var var_1 = Struct_2(var_0.a.e, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.a.e.yx, vec2<f32>(-414f, _wgslsmith_f_op_f32(-arg_1.b.x)), !arg_3.x))), u_input.b.x, select(vec3<bool>(true, true, true), !(!select(vec3<bool>(arg_1.d.x, false, false), vec3<bool>(true, arg_2.d.x, arg_3.x), true)), !var_0.a.d), arg_1.a);
    var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-288f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -110f) + -609f)), var_0.a.a.x, _wgslsmith_f_op_vec3_f32(func_1(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a.c, arg_1.c, arg_1.c, 11607u), vec4<u32>(63982u, var_0.a.c, 65519u, 8515u), vec4<u32>(var_1.c, arg_2.c, u_input.b.x, 4294967295u)))).x, 2682f), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1207f, _wgslsmith_f_op_f32(sign(-1252f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.a.zy))))), 21754u | max(u_input.b.x, 34163u), arg_2.d, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.a * _wgslsmith_f_op_vec4_f32(select(arg_1.a, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.a.x, -128f, 545f, var_0.a.e.x), vec4<f32>(var_1.a.x, var_0.a.e.x, var_0.a.b.x, var_0.a.b.x))), vec4<bool>(false, var_0.a.d.x, true, arg_3.x)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(var_1.b.x - arg_1.a.x), _wgslsmith_f_op_f32(arg_1.a.x + var_1.a.x), 677f, _wgslsmith_div_f32(765f, 859f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.a - vec4<f32>(var_1.b.x, var_1.b.x, arg_2.a.x, arg_2.b.x)), vec4<f32>(var_0.a.e.x, var_0.a.a.x, arg_1.e.x, arg_2.b.x))))));
    var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.a), vec4<f32>(1511f, var_0.a.a.x, _wgslsmith_f_op_f32(-1229f * -1000f), -111f)))), arg_2.e.yw, arg_1.c, !(!(!(!var_1.d))), _wgslsmith_f_op_vec4_f32(select(var_0.a.a, _wgslsmith_f_op_vec4_f32(min(var_0.a.a, vec4<f32>(-591f, var_1.e.x, 1821f, _wgslsmith_f_op_f32(-var_0.a.a.x)))), var_1.d.x)));
    var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1157f, _wgslsmith_f_op_f32(f32(-1f) * -1661f), var_0.a.b.x, _wgslsmith_f_op_f32(sign(var_0.a.e.x))), arg_2.a, vec4<bool>(!select(true, true, false), 33833u >= arg_2.c, !var_1.d.x && arg_3.x, !all(vec4<bool>(false, var_0.a.d.x, arg_2.d.x, var_1.d.x))))), _wgslsmith_f_op_vec2_f32(exp2(var_1.e.zz)), min(arg_1.c, _wgslsmith_sub_u32(arg_1.c, abs(~var_0.a.c))), vec3<bool>(all(select(select(vec3<bool>(false, var_0.a.d.x, true), var_0.a.d, vec3<bool>(false, arg_1.d.x, true)), arg_1.d, true)), false, true), vec4<f32>(281f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_1.b.x, _wgslsmith_f_op_f32(abs(-1000f)))), -182f)), -585f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1498f - arg_1.e.x)) - var_0.a.e.x)));
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a.zzw)) - vec3<f32>(var_1.e.x, _wgslsmith_f_op_f32(arg_1.e.x * arg_1.e.x), arg_2.e.x)) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-458f - 529f)), _wgslsmith_f_op_f32(f32(-1f) * -204f), -985f))));
}

fn func_4(arg_0: vec3<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-545f, _wgslsmith_f_op_f32(select(arg_0.x, 1541f, true))))), _wgslsmith_f_op_f32(f32(-1f) * -1159f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1377f) - arg_0.x), _wgslsmith_f_op_f32(arg_0.x + 2027f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -186f, 377f, arg_0.x) + vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -1094f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(471f, 1000f, arg_0.x, -986f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 1000f, -581f, arg_0.x) * vec4<f32>(arg_0.x, -2409f, arg_0.x, arg_0.x)))))));
    var var_1 = ~u_input.b;
    var_1 = vec2<u32>(var_1.x, 21279u);
    let var_2 = Struct_5(Struct_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-1572f, var_0.x, arg_0.x, arg_0.x), var_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(var_0.zx - var_0.wy)))), 13221u, vec3<bool>(true, true, true), var_0));
    var_1 = _wgslsmith_sub_vec2_u32(~countOneBits(~u_input.b), ~(~(~(~vec2<u32>(var_2.a.c, var_1.x)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.x))), var_0.x) - _wgslsmith_f_op_f32(-var_0.x)) - arg_0.x);
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(func_3(24053u, Struct_2(vec4<f32>(-611f, -1085f, -1983f, 2664f), vec2<f32>(-1489f, 2144f), u_input.b.x, vec3<bool>(true, false, true), vec4<f32>(1000f, 1615f, -1744f, 186f)), Struct_2(vec4<f32>(-1000f, -190f, 2342f, -1000f), vec2<f32>(-584f, 365f), 39203u, vec3<bool>(false, true, true), vec4<f32>(-118f, -452f, 1776f, 376f)), vec2<bool>(false, true)))))) > 137f);
    var var_1 = abs(u_input.b.x);
    var_0 = Struct_3(false);
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-674f, 172f, -443f, -2035f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(937f, -1683f, 499f, 335f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-455f, -481f, 116f, 1169f) * _wgslsmith_div_vec4_f32(vec4<f32>(503f, -1000f, -586f, -723f), vec4<f32>(-1543f, 520f, -1079f, 395f))), vec4<f32>(_wgslsmith_f_op_f32(588f + 1059f), _wgslsmith_f_op_f32(325f * -212f), _wgslsmith_f_op_f32(func_4(vec3<f32>(1374f, 635f, -368f))), _wgslsmith_f_op_f32(892f + -1824f)))), !(!vec4<bool>(false, var_0.a, true, var_0.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-859f, 1161f, -358f, 515f))))))));
    var_0 = Struct_3(var_0.a | true);
    return Struct_3(select(true, var_0.a, !any(!vec2<bool>(var_0.a, false))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = arg_2.b;
    let var_1 = Struct_5(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1208f, 1000f, 412f, -369f))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1154f, -1342f, arg_2.a, -567f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a, _wgslsmith_f_op_f32(abs(arg_0.x))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.x, -105f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, arg_2.a), arg_0.xz)), true))), 35635u, vec3<bool>(true, false, all(vec4<bool>(arg_1.b.a, arg_1.b.a, true, arg_1.b.a))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -924f), -601f, _wgslsmith_f_op_f32(min(arg_1.a.x, -1080f)), -365f) - vec4<f32>(_wgslsmith_f_op_f32(min(-1098f, arg_1.a.x)), _wgslsmith_f_op_vec3_f32(func_3(u_input.b.x, Struct_2(vec4<f32>(452f, 917f, arg_1.a.x, 418f), vec2<f32>(-464f, arg_0.x), 26752u, vec3<bool>(true, arg_1.b.a, true), vec4<f32>(-531f, -359f, arg_0.x, 931f)), Struct_2(vec4<f32>(arg_1.a.x, 2615f, arg_2.a, -596f), arg_0.xz, 0u, vec3<bool>(false, false, true), vec4<f32>(1061f, arg_0.x, arg_2.a, arg_2.a)), vec2<bool>(arg_1.b.a, arg_1.b.a))).x, _wgslsmith_f_op_f32(max(arg_1.a.x, arg_1.a.x)), -1570f))));
    var var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1024f, _wgslsmith_f_op_f32(round(arg_1.a.x)), -1293f) * _wgslsmith_f_op_vec3_f32(func_1(vec4<u32>(22578u, var_1.a.c, var_1.a.c, 56347u) & vec4<u32>(0u, u_input.b.x, u_input.b.x, 0u))))), func_2());
    let var_3 = vec4<u32>(u_input.b.x, ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.b, vec2<u32>(4294967295u, 1u)) & ~u_input.b, (u_input.b ^ vec2<u32>(21595u, 15007u)) >> (~vec2<u32>(var_1.a.c, u_input.b.x) % vec2<u32>(32u))), 1u, ~49939u);
    let var_4 = var_3.zw;
    return _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(742f * var_1.a.a.x), -267f))), _wgslsmith_f_op_f32(-684f * _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-var_1.a.b.x), -436f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(func_5(_wgslsmith_f_op_vec3_f32(func_1(~vec4<u32>(1u, u_input.b.x, 0u, u_input.b.x) >> (vec4<u32>(44644u, 49816u, u_input.b.x, u_input.b.x) % vec4<u32>(32u)))), Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1439f, 218f, -580f), vec3<f32>(-178f, -717f, 1530f))), func_2()), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -814f)), 18781i))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 785f, -1304f))))), _wgslsmith_f_op_f32(-1943f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2005f * 173f)))), 4294967295u, !select(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(925f, _wgslsmith_f_op_f32(floor(1702f)), _wgslsmith_f_op_f32(f32(-1f) * -1143f), _wgslsmith_f_op_f32(943f + -144f)) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(359f, -2667f, 1193f, 545f)), vec4<f32>(-862f, 1763f, -686f, -766f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(599f, -168f, 1663f, -1820f) + vec4<f32>(1858f, -583f, 191f, -1000f)), vec4<f32>(-1296f, -837f, 552f, -633f), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-991f, 764f, -355f, -1256f))))));
    let var_1 = ~u_input.b.x;
    var_0 = Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(399f, var_0.e.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1590f - -370f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.x, 560f, _wgslsmith_f_op_f32(step(-129f, -599f)), _wgslsmith_f_op_f32(-1655f * var_0.a.x)))), _wgslsmith_f_op_vec4_f32(func_5(vec3<f32>(var_0.e.x, -1000f, _wgslsmith_f_op_f32(ceil(var_0.e.x))), Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_0.a.yzx, vec3<f32>(var_0.e.x, -646f, -350f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_0.b.x, var_0.a.x))), func_2()), Struct_1(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(-974f, -269f, var_0.b.x) + var_0.a.wxy))), u_input.a))).wy, ~_wgslsmith_sub_u32(var_0.c, 73519u), var_0.d, var_0.e);
    var var_2 = Struct_5(Struct_2(vec4<f32>(_wgslsmith_f_op_vec4_f32(func_5(_wgslsmith_f_op_vec3_f32(-var_0.a.wwy), Struct_4(vec3<f32>(var_0.a.x, 297f, 2308f), Struct_3(var_0.d.x)), Struct_1(var_0.b.x, u_input.a))).x, _wgslsmith_f_op_f32(1000f * -725f), var_0.b.x, var_0.e.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.a.x, var_0.e.x), var_0.e.xy)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, var_0.b.x) - vec2<f32>(var_0.a.x, 679f))) - var_0.a.xw), 0u, vec3<bool>(!(!var_0.d.x), !var_0.d.x, var_0.d.x), _wgslsmith_f_op_vec4_f32(-var_0.e)));
    var var_3 = -1381f;
    var var_4 = _wgslsmith_mult_vec2_u32(~_wgslsmith_mod_vec2_u32(u_input.b, abs(vec2<u32>(39692u, 43748u))) << (u_input.b % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(u_input.b, vec2<u32>(~5229u >> (_wgslsmith_sub_u32(1u, 0u) % 32u), reverseBits(~48019u))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, var_0.c);
}

