struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = ~(_wgslsmith_mult_u32(_wgslsmith_div_u32(64873u << (1u % 32u), min(u_input.c.x, u_input.c.x)), _wgslsmith_mult_u32(37097u, 0u) ^ select(36055u, u_input.c.x, true)) << (u_input.c.x % 32u));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -206f) + 2205f);
    let var_2 = countOneBits(firstTrailingBit(vec2<u32>(13545u, ~(~u_input.c.x))));
    let var_3 = vec4<f32>(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1393f, 293f, arg_0.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1672f + -1039f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(920f - var_1) * -1000f))), 999f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -484f))) - _wgslsmith_f_op_f32(-var_1)));
    var var_4 = max(countOneBits(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 35573i, 0i), vec4<i32>(u_input.b, u_input.b, u_input.a.x, -13317i))), select(vec4<i32>(~1i, _wgslsmith_div_i32(u_input.a.x, 39959i), ~2147483647i, u_input.a.x >> (1u % 32u)) >> (vec4<u32>(_wgslsmith_sub_u32(var_2.x, 16742u), 1u, 9881u, 1u) % vec4<u32>(32u)), (_wgslsmith_mult_vec4_i32(vec4<i32>(1341i, u_input.a.x, -1i, -1i), vec4<i32>(u_input.a.x, u_input.a.x, -21652i, 0i)) >> (~u_input.c % vec4<u32>(32u))) << (u_input.c % vec4<u32>(32u)), false));
    return vec3<f32>(_wgslsmith_f_op_f32(round(-450f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(min(-1000f, 1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.c, -106f)))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(ceil(519f)));
    var var_2 = vec4<i32>(1i, select(_wgslsmith_add_i32(-(i32(-1i) * -16090i), _wgslsmith_add_i32(1i, u_input.b)), u_input.b, u_input.c.x >= _wgslsmith_mod_u32(u_input.c.x, ~31284u)), countOneBits(arg_1.x << (_wgslsmith_sub_u32(u_input.c.x & u_input.c.x, 1u) % 32u)), u_input.b);
    let var_3 = Struct_1(arg_2.a, var_0.b, -345f);
    let var_4 = var_0;
    return ~max(max(~select(vec3<u32>(56700u, 18371u, u_input.c.x), u_input.c.zxw, true), vec3<u32>(1u, _wgslsmith_add_u32(u_input.c.x, 54807u), u_input.c.x)), ~_wgslsmith_clamp_vec3_u32(~u_input.c.zzz, u_input.c.wzy, max(u_input.c.xzx, vec3<u32>(u_input.c.x, u_input.c.x, 67889u))));
}

fn func_2(arg_0: vec2<bool>) -> bool {
    var var_0 = _wgslsmith_div_vec3_u32(func_4(Struct_1(true, _wgslsmith_f_op_vec3_f32(func_3(select(vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(false, arg_0.x, arg_0.x)), Struct_1(arg_0.x, vec3<f32>(-763f, -103f, 151f), 240f), Struct_1(arg_0.x, vec3<f32>(-266f, -443f, -397f), -492f))), _wgslsmith_f_op_f32(f32(-1f) * -188f)), ~_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b, -60351i, -2147483647i), vec4<i32>(u_input.a.x, 46595i, 12053i, u_input.b)), ~vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.b), vec4<i32>(1i, u_input.a.x, u_input.b, 23476i)), Struct_1(!arg_0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-798f, -651f, -1000f), vec3<f32>(275f, 975f, -460f), arg_0.x))), 1f)), vec3<u32>(1u, ~u_input.c.x, u_input.c.x));
    var_0 = vec3<u32>(~(~(~u_input.c.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.c, u_input.c), ~u_input.c) | reverseBits(1u), u_input.c.x) | _wgslsmith_mod_vec3_u32(vec3<u32>(reverseBits(4294967295u), ~0u, var_0.x), reverseBits(firstLeadingBit(vec3<u32>(var_0.x, var_0.x, u_input.c.x))));
    var var_1 = false;
    var var_2 = u_input.a.yy >> (vec2<u32>(firstLeadingBit(var_0.x), _wgslsmith_mult_u32(abs(86504u) & _wgslsmith_clamp_u32(0u, 1u, var_0.x), 4294967295u)) % vec2<u32>(32u));
    var_1 = all(vec4<bool>(arg_0.x, true, arg_0.x, 1u > _wgslsmith_add_u32(var_0.x, 94034u))) || true;
    return all(!select(!vec2<bool>(arg_0.x, true), vec2<bool>(true, true), vec2<bool>(true, true)));
}

fn func_1() -> i32 {
    let var_0 = Struct_1(func_2(!vec2<bool>(u_input.c.x == u_input.c.x, true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-144f, -356f, 751f)))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(625f, -1334f, -465f), vec3<f32>(-515f, 270f, -168f))), _wgslsmith_div_vec3_f32(vec3<f32>(1377f, -730f, 405f), vec3<f32>(201f, 811f, -518f)), vec3<bool>(true, false, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(585f, -670f, -1000f)) * vec3<f32>(426f, 471f, -2107f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2108f, 821f, true)) + _wgslsmith_f_op_vec3_f32(func_3(vec3<bool>(false, true, true), Struct_1(true, vec3<f32>(431f, -310f, 188f), -917f), Struct_1(true, vec3<f32>(-618f, 930f, -1287f), 847f))).x))));
    let var_1 = false;
    var var_2 = select(vec3<u32>(select(u_input.c.x, select(u_input.c.x ^ 22219u, abs(u_input.c.x), var_1), any(vec2<bool>(var_0.a, false))), 18635u, ~firstLeadingBit(u_input.c.x)), _wgslsmith_add_vec3_u32(~u_input.c.xxx, ~select(func_4(Struct_1(false, vec3<f32>(551f, var_0.c, 173f), var_0.c), vec4<i32>(u_input.a.x, u_input.b, 12525i, u_input.a.x), Struct_1(var_1, var_0.b, var_0.c)), ~vec3<u32>(1u, u_input.c.x, 4294967295u), var_0.a)), true);
    let var_3 = var_0;
    var_2 = u_input.c.wxy;
    return ~u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(abs(u_input.a.x << (u_input.c.x % 32u)), u_input.a.x);
    var_0 = -u_input.b ^ func_1();
    let var_1 = Struct_1(true | (151f >= _wgslsmith_f_op_f32(ceil(185f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2074f) - 1356f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(947f * 677f))), _wgslsmith_f_op_f32(trunc(1586f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), vec3<f32>(347f, -145f, -1317f), true)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(186f)))));
    var var_2 = select(vec4<bool>(any(vec3<bool>(var_1.a, true, select(true, var_1.a, var_1.a))), select(!(!var_1.a), var_1.a, true), true, true), select(vec4<bool>(var_1.a, false, any(vec2<bool>(var_1.a, false)), all(select(vec4<bool>(true, var_1.a, var_1.a, var_1.a), vec4<bool>(var_1.a, true, false, false), var_1.a))), vec4<bool>(func_2(!vec2<bool>(var_1.a, var_1.a)), !any(vec3<bool>(var_1.a, false, false)), var_1.a, true), !(!(!vec4<bool>(false, false, true, var_1.a)))), select(!select(!vec4<bool>(var_1.a, false, true, false), vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), vec4<bool>(var_1.a, true, var_1.a, var_1.a)), !(!(!vec4<bool>(false, var_1.a, false, var_1.a))), (var_1.a & any(vec4<bool>(var_1.a, true, true, false))) | (_wgslsmith_add_u32(0u, 38400u) != max(u_input.c.x, 0u))));
    var_0 = -25019i;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-384f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_1.c, -657f)))), true)), _wgslsmith_f_op_f32(-var_1.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(734f, -173f, var_3, 1004f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1389f, 1029f, var_1.b.x, 1000f), vec4<f32>(409f, -139f, var_3, -719f))))));
}

