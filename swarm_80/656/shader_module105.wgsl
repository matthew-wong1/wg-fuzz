struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: vec4<bool>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
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

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: vec3<i32>, arg_3: bool) -> u32 {
    var var_0 = Struct_3(any(vec3<bool>(!select(arg_3, arg_3, false), true, false)), vec4<i32>(-11568i, i32(-1i) * -31528i, abs(_wgslsmith_dot_vec3_i32(arg_2, u_input.a.xzy) << (_wgslsmith_dot_vec3_u32(vec3<u32>(6552u, arg_0.a, 91385u), vec3<u32>(24117u, arg_0.a, arg_0.a)) % 32u)), reverseBits(57600i)), !(!(!(!vec4<bool>(true, arg_3, arg_3, arg_3)))), _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(abs(vec3<u32>(39965u, arg_0.a, arg_0.a)), ~(vec3<u32>(27110u, 85066u, 4294967295u) | vec3<u32>(27886u, 0u, arg_0.a))), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(arg_0.a, 5433u, 3008u), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.a, 4294u, arg_0.a), vec3<u32>(41247u, 1u, 28616u))), _wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, 27455u, 3659u)), countOneBits(vec3<u32>(0u, 23775u, 0u))), _wgslsmith_add_vec3_u32(~vec3<u32>(arg_0.a, arg_0.a, 4294967295u), max(vec3<u32>(arg_0.a, 1u, arg_0.a), vec3<u32>(arg_0.a, arg_0.a, 0u))))));
    let var_1 = Struct_5(arg_3, arg_1.x, select(vec4<bool>(all(var_0.c.wy) | (arg_1.x > arg_1.x), any(vec2<bool>(var_0.c.x, false)), true, !var_0.c.x), vec4<bool>(true, true & var_0.c.x, select(var_0.a, all(vec2<bool>(var_0.a, true)), true), (var_0.d.x == arg_0.a) && true), !select(!vec4<bool>(arg_3, false, true, false), !var_0.c, var_0.c)));
    var_0 = Struct_3(true, var_0.b, !var_0.c, max(~max(var_0.d, ~var_0.d), var_0.d));
    var_0 = Struct_3(!(!var_0.a), max(-var_0.b, vec4<i32>(arg_2.x, 2147483647i, var_0.b.x, countOneBits(1i))), var_0.c, vec3<u32>(var_0.d.x, arg_0.a, var_0.d.x));
    return ~1u;
}

fn func_2() -> bool {
    var var_0 = Struct_1(-711f, _wgslsmith_clamp_vec3_u32(~(~firstTrailingBit(vec3<u32>(12760u, 0u, 47736u))), ~vec3<u32>(countOneBits(79835u), 1u, 4294967295u), ~abs(vec3<u32>(1u, 1u, 1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1171f - 537f) + _wgslsmith_f_op_f32(abs(-405f))))));
    let var_1 = Struct_2(abs(-2147483647i), _wgslsmith_f_op_f32(var_0.a * var_0.a));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-var_1.b), vec3<u32>(_wgslsmith_dot_vec3_u32(var_0.b, vec3<u32>(var_0.b.x, var_0.b.x, _wgslsmith_sub_u32(var_0.b.x, var_0.b.x))), 24281u & min(abs(var_0.b.x), func_3(Struct_4(1u), vec2<f32>(var_1.b, -505f), u_input.a.yyx, true)), abs(0u)), -1386f);
    var_0 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-3081f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2125f), _wgslsmith_div_f32(258f, -687f), select(true, true, true)))))), max(var_0.b, ~var_0.b), _wgslsmith_f_op_f32(round(534f)));
    var var_2 = Struct_3((~(~u_input.a.x) ^ 1i) > var_1.a, _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(2147483647i >> (var_0.b.x % 32u), u_input.a.x), -1i, abs(-var_1.a), _wgslsmith_mod_i32(i32(-1i) * -2147483647i, var_1.a)), -(~u_input.a)), select(!(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), true)), vec4<bool>(u_input.a.x != u_input.a.x, true == any(vec2<bool>(true, true)), true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true)), vec3<u32>(~31093u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(63739u, 6292u, 18699u, 46805u), vec4<u32>(var_0.b.x, 4294967295u, 15267u, 4294967295u) >> (vec4<u32>(41611u, var_0.b.x, var_0.b.x, var_0.b.x) % vec4<u32>(32u))), select(~vec4<u32>(37370u, var_0.b.x, var_0.b.x, var_0.b.x), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.x, var_0.b.x, var_0.b.x, 6394u), vec4<u32>(1u, var_0.b.x, var_0.b.x, 1u)), true)), var_0.b.x));
    return firstTrailingBit(82711u) > ~(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.b.x, var_0.b.x), vec2<u32>(1u, var_0.b.x)) ^ 19219u);
}

fn func_1(arg_0: vec2<f32>) -> Struct_4 {
    var var_0 = true;
    let var_1 = !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false))), func_2()), select(vec4<bool>(select(false, false, true), all(vec4<bool>(true, false, true, true)), true, true), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), false), vec4<bool>(false, false, false, false)), _wgslsmith_f_op_f32(-arg_0.x) > _wgslsmith_f_op_f32(arg_0.x - arg_0.x)), vec4<bool>(true, any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false))), select(any(vec3<bool>(true, false, true)), false, true), any(vec4<bool>(false, true, true, true))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-1158f, -1000f, true)), _wgslsmith_f_op_f32(trunc(arg_0.x)), _wgslsmith_f_op_f32(min(-1011f, -509f)), _wgslsmith_f_op_f32(sign(arg_0.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, -1017f, arg_0.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_0.x, arg_0.x, arg_0.x))), _wgslsmith_div_vec4_f32(vec4<f32>(1127f, arg_0.x, -1000f, arg_0.x), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)))))));
    var_0 = !any(vec3<bool>(all(!var_1.zy), false, true));
    var var_3 = 74313u;
    return Struct_4(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(countOneBits(1u), 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 74848u)) & 1u), abs(~max(vec2<u32>(4294967295u, 52974u), vec2<u32>(2692u, 42917u)))));
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_4) -> vec3<u32> {
    let var_0 = arg_1.zw;
    let var_1 = !select(vec3<bool>(select(true, true, any(vec3<bool>(false, true, true))), true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), _wgslsmith_dot_vec3_u32(vec3<u32>(18000u, var_0.x, arg_1.x), arg_1.wwx) > reverseBits(4294967295u)), false);
    var var_2 = arg_1;
    var var_3 = firstLeadingBit(~(~(~_wgslsmith_clamp_vec2_u32(var_2.yz, var_0, vec2<u32>(1u, arg_2.a)))));
    var_3 = (~min(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 25859u), vec2<u32>(26242u, 4294967295u)), arg_1.yx) >> (abs(select(~arg_1.yy, vec2<u32>(0u, 98545u), all(var_1))) % vec2<u32>(32u))) & vec2<u32>(_wgslsmith_div_u32(~(~arg_2.a), 0u), 31935u);
    return var_2.xyz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(true, _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a.yz << (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)), ~vec2<i32>(u_input.a.x, -36796i)), -38067i, -12493i, -u_input.a.x), ~firstLeadingBit(_wgslsmith_clamp_vec4_i32(u_input.a, u_input.a, u_input.a))), vec4<bool>(true, true, (all(vec4<bool>(true, true, false, true)) | true) | false, ~select(0u, 0u, true) < 0u), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(50575u, 49731u, 15667u), max(vec3<u32>(1u, 32195u, 0u), vec3<u32>(90032u, 92327u, 4294967295u))) & min(abs(vec3<u32>(69765u, 1u, 2304u)), func_4(_wgslsmith_mod_u32(13254u, 2939u), select(vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u), vec4<bool>(true, false, true, true)), func_1(vec2<f32>(-502f, -1261f)))));
    var var_1 = Struct_5(true, -2408f, vec4<bool>(!(var_0.c.x && var_0.c.x), func_2(), false, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d.x, 0u, var_0.d.x, 52849u) >> (vec4<u32>(var_0.d.x, 4294967295u, 4294967295u, var_0.d.x) % vec4<u32>(32u)), vec4<u32>(19018u, 65883u, 28653u, var_0.d.x)) > 0u));
    var var_2 = !var_1.c.ww;
    let var_3 = ~1u;
    var_2 = vec2<bool>(true, var_2.x);
    var_2 = var_0.c.yx;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1050f, var_1.b)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, var_1.b)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, 273f))))).a);
}

