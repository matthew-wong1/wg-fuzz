struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: u32, arg_3: f32) -> vec3<bool> {
    var var_0 = Struct_1(vec4<u32>(global0.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.d, 0u, global0.x), reverseBits(vec3<u32>(arg_1, u_input.a.x, arg_1))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, arg_1, arg_0.a.x, arg_0.a.x) & arg_0.a, ~arg_0.a), 33529u), ~(-abs(u_input.d) | _wgslsmith_mult_vec4_i32(select(vec4<i32>(arg_0.b.x, u_input.b.x, -22252i, -37641i), arg_0.b, vec4<bool>(arg_0.c, false, false, arg_0.c)), arg_0.b | vec4<i32>(3025i, u_input.d.x, arg_0.b.x, 40034i))), true, arg_1);
    var_0 = arg_0;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_3), -905f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(372f * arg_3))) - arg_3), -407f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_3))), arg_3)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_3 + arg_3)))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(2628f, var_1.x, var_1.x), vec3<f32>(var_1.x, 1000f, 1074f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(633f, arg_3, var_1.x), vec3<f32>(1510f, 1193f, 1000f), vec3<bool>(false, arg_0.c, true))), select(vec3<bool>(var_0.c, true, true), vec3<bool>(var_0.c, var_0.c, true), vec3<bool>(arg_0.c, var_0.c, arg_0.c)))))));
    var_0 = Struct_1(~vec4<u32>(_wgslsmith_div_u32(20160u >> (1u % 32u), _wgslsmith_clamp_u32(74078u, 111833u, 58839u)), ~(arg_1 & arg_2), abs(~arg_1), arg_2), -_wgslsmith_mod_vec4_i32(-arg_0.b, _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(54515i, var_0.b.x, -26462i, -70906i)), _wgslsmith_sub_vec4_i32(arg_0.b, vec4<i32>(u_input.d.x, 19648i, -2147483647i, -1i)), var_0.b)), all(select(select(!vec4<bool>(var_0.c, var_0.c, arg_0.c, var_0.c), !vec4<bool>(arg_0.c, true, false, false), !vec4<bool>(arg_0.c, arg_0.c, false, true)), select(vec4<bool>(false, var_0.c, var_0.c, var_0.c), vec4<bool>(false, false, false, arg_0.c), false & var_0.c), select(!vec4<bool>(arg_0.c, var_0.c, false, false), !vec4<bool>(true, true, arg_0.c, true), true & var_0.c))), min(~arg_1, 57162u));
    return select(vec3<bool>(!(!arg_0.c), _wgslsmith_clamp_i32(1i, firstTrailingBit(1i), arg_0.b.x) > firstTrailingBit(countOneBits(u_input.c)), true), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, arg_0.c, arg_0.c), true)), !var_0.c);
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = 0i;
    var_0 = ~u_input.b.x;
    let var_1 = Struct_1(firstTrailingBit(vec4<u32>(global0.x, 0u, 0u, ~u_input.a.x)), ~(abs(-vec4<i32>(1i, u_input.c, u_input.d.x, 0i)) | reverseBits(~u_input.d)), all(select(func_3(Struct_1(vec4<u32>(0u, u_input.a.x, 0u, arg_0), vec4<i32>(u_input.d.x, u_input.d.x, u_input.b.x, u_input.b.x), false, 0u), 62213u, u_input.a.x, _wgslsmith_f_op_f32(-1253f + 435f)), vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)))), _wgslsmith_mod_u32(1u, arg_0));
    global0 = var_1.a;
    var var_2 = var_1.a.ww >> (_wgslsmith_mult_vec2_u32(vec2<u32>(global0.x, max(74416u, ~u_input.e)), ~(vec2<u32>(var_1.d, 46091u) | vec2<u32>(var_1.d, u_input.e))) % vec2<u32>(32u));
    return _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a.zz, _wgslsmith_sub_vec2_u32(global0.yz, u_input.a.zy)) & ~countOneBits(vec2<u32>(19233u, 12876u)), reverseBits(global0.wy));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1455f, -1555f, -602f, -806f)))))));
    global0 = ~vec4<u32>(~global0.x | u_input.e, 1u, ~func_2(0u), 69343u ^ global0.x);
    let var_1 = Struct_1(~vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(4294967295u, 0u), 17042u), global0.x, global0.x, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(global0.zy, u_input.a.zz), ~global0.wx)), _wgslsmith_mult_vec4_i32(min(u_input.d, u_input.d), vec4<i32>(max(-16532i, -u_input.d.x), countOneBits(u_input.c ^ u_input.d.x), _wgslsmith_div_i32(min(u_input.d.x, u_input.d.x), u_input.b.x), countOneBits(46338i) >> (~u_input.e % 32u))), -616f == _wgslsmith_f_op_f32(232f - var_0.x), global0.x);
    global0 = ~vec4<u32>(20133u, 4294967295u, _wgslsmith_add_u32(~(~u_input.e), _wgslsmith_div_u32(_wgslsmith_div_u32(var_1.d, 1u), global0.x)), 1u);
    var var_2 = Struct_1(_wgslsmith_mod_vec4_u32(select(var_1.a, min(var_1.a, vec4<u32>(41815u, 1u, global0.x, var_1.d)) | countOneBits(var_1.a), select(vec4<bool>(var_1.c, var_1.c, var_1.c, true), select(vec4<bool>(var_1.c, false, var_1.c, true), vec4<bool>(var_1.c, var_1.c, var_1.c, false), false), vec4<bool>(false, var_1.c, true, var_1.c))), _wgslsmith_div_vec4_u32(vec4<u32>(0u, var_1.a.x, var_1.d, 7943u) | vec4<u32>(global0.x, 38443u, var_1.d, 46630u), var_1.a) >> (max(_wgslsmith_mod_vec4_u32(vec4<u32>(30519u, u_input.a.x, global0.x, 22085u), vec4<u32>(22860u, 30014u, global0.x, u_input.e)), var_1.a) % vec4<u32>(32u))), vec4<i32>(~_wgslsmith_sub_i32(-var_1.b.x, select(-17278i, 29634i, false)), _wgslsmith_dot_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(37758i, -20534i, -1i), vec3<i32>(0i, -35219i, u_input.c)), ~_wgslsmith_clamp_vec3_i32(var_1.b.zyz, var_1.b.wzw, var_1.b.wzz)), ~_wgslsmith_clamp_i32(-44635i, abs(u_input.d.x), firstLeadingBit(2147483647i)), ~72213i), true, 65960u);
    return ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(~u_input.a.x, countOneBits(u_input.a.x)), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(var_1.a, var_2.a), ~1u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 56079u, min(u_input.e, 38561u << (u_input.e % 32u)), 4294967295u), ~(~vec4<u32>(u_input.e, u_input.e, 1u, 8566u) | ~vec4<u32>(0u, 4294967295u, global0.x, global0.x)));
    global0 = vec4<u32>(26767u & global0.x, _wgslsmith_div_u32(func_1(), 1u) >> (89442u % 32u), ~_wgslsmith_div_u32(~(~4294967295u), global0.x), u_input.a.x);
    var var_0 = (global0.x >> (global0.x % 32u)) == ~global0.x;
    global0 = ~abs(vec4<u32>(global0.x, 63201u, ~u_input.e, _wgslsmith_mult_u32(1u, reverseBits(u_input.a.x))));
    let var_1 = Struct_1(~min(~(~vec4<u32>(0u, global0.x, 69254u, 62733u)), countOneBits(~vec4<u32>(u_input.e, u_input.a.x, u_input.e, 28769u))), ~_wgslsmith_div_vec4_i32(u_input.d, firstTrailingBit(vec4<i32>(1i, u_input.c, u_input.b.x, -15525i)) ^ (u_input.d >> (vec4<u32>(1u, global0.x, u_input.e, 1u) % vec4<u32>(32u)))), all(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), true))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 1u), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(global0.zx, global0.yx), global0.wz)), _wgslsmith_mod_u32(_wgslsmith_mult_u32(~0u, u_input.a.x), u_input.e >> (global0.x % 32u)), 80030u >> (1u % 32u)));
    let var_2 = !(!vec3<bool>(false, false, select(false, select(false, true, var_1.c), var_1.c)));
    let var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1050f)))), 737f)))), vec3<u32>(global0.x, reverseBits(0u), ~firstTrailingBit(firstTrailingBit(global0.x))), 20455u);
}

