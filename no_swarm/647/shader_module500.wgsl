struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: f32,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec4<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(ceil(-616f));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * var_0) * var_0)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0 + -1902f), _wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(var_0 - 104f)))))), 1000f, var_0, var_0);
    var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1807f + 637f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * -203f), -2607f)), -133f, var_0), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0)) * _wgslsmith_f_op_f32(var_1.x + var_0))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_0, var_0, true)))))), 127f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1108f * 108f), -341f))));
    var_1 = vec4<f32>(715f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(950f, _wgslsmith_f_op_f32(sign(var_1.x)), all(vec4<bool>(true, true, true, false)))), -1065f)), -1059f, 1000f);
    var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_0, -1422f, -136f, var_0), vec4<f32>(var_0, 1782f, var_1.x, -689f)), vec4<f32>(-1643f, -1602f, -461f, var_1.x), vec4<bool>(true, true, true, true)))))))));
    return 38258i;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<u32>) -> vec2<bool> {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -453f) * -178f), 6423i, vec4<i32>(-11517i, ~(-_wgslsmith_mult_i32(u_input.b, arg_0.x)), _wgslsmith_div_i32(-2147483647i, -_wgslsmith_dot_vec3_i32(arg_0, vec3<i32>(u_input.b, -2147483647i, 0i))), -21800i));
    var var_1 = Struct_5(Struct_3(_wgslsmith_f_op_f32(select(-692f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), ~arg_1.x == countOneBits(13495u))), max(_wgslsmith_add_i32(arg_0.x, ~2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, var_0.b), min(vec2<i32>(-2147483647i, arg_0.x), vec2<i32>(-12235i, 14796i)))), vec4<i32>(_wgslsmith_mod_i32(-26759i << (arg_1.x % 32u), _wgslsmith_div_i32(var_0.b, arg_0.x)), var_0.b, ~var_0.c.x, _wgslsmith_dot_vec3_i32(var_0.c.xwx, vec3<i32>(var_0.c.x, -35236i, var_0.b)))), Struct_4(Struct_2(arg_1.x, vec2<f32>(_wgslsmith_f_op_f32(var_0.a + var_0.a), _wgslsmith_f_op_f32(-var_0.a)), var_0.a, u_input.b, reverseBits(2147483647i) << (arg_1.x % 32u)), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_div_i32(arg_0.x & 2147483647i, func_3(vec4<u32>(u_input.a.x, 0u, 1u, u_input.a.x))), select(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.x, -25994i, var_0.c.x, arg_0.x), var_0.c), var_0.c, true))));
    var_0 = Struct_3(399f, -1i, var_0.c);
    var var_2 = var_1.b;
    let var_3 = arg_1.x;
    return !(!select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true), true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), true), vec2<bool>(all(vec4<bool>(false, false, true, false)), var_1.b.a.a <= var_3)));
}

fn func_1() -> vec3<i32> {
    var var_0 = !vec2<bool>(true, any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false))));
    let var_1 = -5196i;
    let var_2 = -1000f;
    var_0 = !vec2<bool>(!all(select(vec4<bool>(false, false, true, false), vec4<bool>(var_0.x, false, var_0.x, var_0.x), var_0.x)), true);
    var_0 = select(select(!select(vec2<bool>(true, true), func_2(vec3<i32>(18327i, 1i, -2147483647i), u_input.a.zx), vec2<bool>(true, false)), func_2(abs(vec3<i32>(var_1, var_1, var_1) << (vec3<u32>(1u, 20208u, 1u) % vec3<u32>(32u))), ~(vec2<u32>(7235u, 97304u) & u_input.a.zx)), !func_2(vec3<i32>(-18706i, u_input.b, 14675i), u_input.a.xz)), !vec2<bool>(var_2 < _wgslsmith_f_op_f32(var_2 - -1827f), (1u > u_input.a.x) | !var_0.x), vec2<bool>(!var_0.x, false));
    return countOneBits(min(vec3<i32>(var_1, 2147483647i, ~abs(48809i)), firstTrailingBit(vec3<i32>(var_1, firstTrailingBit(var_1), ~(-35966i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -firstLeadingBit(_wgslsmith_add_vec3_i32(func_1(), reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(54559i, u_input.b, u_input.b), vec3<i32>(u_input.b, 40374i, -24937i)))));
    let var_1 = ~select(vec4<i32>(var_0.x, 1i, -min(u_input.b, var_0.x), ~var_0.x << (~4294967295u % 32u)), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, ~1i, 33020i, u_input.b), vec4<i32>(var_0.x, -1i, -var_0.x, -8290i)), all(vec4<bool>(true, true, true, true)));
    var_0 = -(~max(vec3<i32>(28783i << (u_input.a.x % 32u), var_1.x & u_input.b, u_input.b << (u_input.a.x % 32u)), ~firstTrailingBit(vec3<i32>(67592i, var_0.x, -52612i))));
    let var_2 = var_1.yy;
    var_0 = countOneBits(var_1.yzz);
    var_0 = var_1.zwy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(firstTrailingBit(var_1.wxy), max(min(vec3<i32>(-1i, var_1.x, 2147483647i) << (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), ~vec3<i32>(2147483647i, var_1.x, -1i)), var_1.zzw | vec3<i32>(25627i, -66653i, 17272i))), ~u_input.a.yx, _wgslsmith_mult_vec3_i32(var_1.zyx, _wgslsmith_add_vec3_i32(select(vec3<i32>(u_input.b, 14515i, -23560i) & vec3<i32>(2147483647i, -2147483647i, var_0.x), ~var_1.www, vec3<bool>(true, true, true)), _wgslsmith_mod_vec3_i32(~var_1.zzw, -var_1.zyw))));
}

