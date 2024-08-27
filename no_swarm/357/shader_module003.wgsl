struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15>;

var<private> global1: i32;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec4<i32>, arg_3: vec4<f32>) -> vec3<f32> {
    global1 = arg_2.x;
    let var_0 = arg_1;
    var var_1 = vec4<i32>(arg_2.x, _wgslsmith_dot_vec3_i32(countOneBits(u_input.a), vec3<i32>(-2147483647i, -1309i, -12658i)), abs(u_input.a.x), _wgslsmith_mult_i32(arg_0.a.b, ~(-1i)));
    let var_2 = var_0.x;
    let var_3 = 1u;
    return arg_0.a.d;
}

fn func_2(arg_0: vec2<f32>, arg_1: u32) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(abs(arg_1), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~u_input.b.yz, ~vec2<u32>(1u, 19082u)), u_input.b.x)), u_input.b.x), 15u)];
    let var_1 = var_0.a.c.x;
    let var_2 = -689f;
    let var_3 = arg_0.x;
    let var_4 = _wgslsmith_f_op_f32(-335f * -545f);
    return Struct_1(var_4, countOneBits(~(_wgslsmith_div_i32(-2147483647i, u_input.a.x) & u_input.a.x)), -(-vec3<i32>(var_0.a.c.x, var_0.a.b, var_0.a.b) & (~vec3<i32>(-1i, u_input.a.x, u_input.a.x) >> (vec3<u32>(u_input.b.x, arg_1, 60734u) % vec3<u32>(32u)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 + var_4) - _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x), -314f), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_0.a.d - _wgslsmith_f_op_vec3_f32(func_3(global0[_wgslsmith_index_u32(u_input.b.x, 15u)], vec3<bool>(true, false, false), vec4<i32>(u_input.a.x, var_0.a.c.x, u_input.a.x, u_input.a.x), vec4<f32>(var_2, -185f, 180f, arg_0.x))))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(arg_3 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a))), -21786i, _wgslsmith_mult_vec3_i32(reverseBits(select(vec3<i32>(1i, u_input.a.x, -2147483647i), vec3<i32>(1i, -33406i, arg_0.c.x), vec3<bool>(true, true, true))), select(arg_2.c, u_input.a, vec3<bool>(true, true, false)) << (_wgslsmith_div_vec3_u32(vec3<u32>(64756u, 49640u, 4294967295u), u_input.b) % vec3<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(-1360f - _wgslsmith_f_op_f32(-arg_3)), -1860f, arg_2.d.x)));
    let var_1 = arg_2.c >> (min(vec3<u32>(~u_input.b.x, u_input.b.x, ~countOneBits(u_input.b.x)), vec3<u32>(_wgslsmith_mod_u32(48664u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 76203u, 4294967295u), vec4<u32>(u_input.b.x, 4294967295u, 75821u, u_input.b.x)) >> (max(53741u, u_input.b.x) % 32u), 4294967295u)) % vec3<u32>(32u));
    global0 = array<Struct_2, 15>();
    var var_2 = vec4<bool>(true, true, !(!all(vec2<bool>(false, true))) | (arg_0.a <= arg_2.a), all(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false)));
    global1 = i32(-1i) * -u_input.a.x;
    return Struct_1(arg_2.d.x, arg_2.b, arg_2.c, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1520f, 617f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) + arg_2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1060f)), var_0.a.d.x));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: bool, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_2(func_4(func_2(arg_3, _wgslsmith_div_u32(firstLeadingBit(u_input.b.x), u_input.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(730f, arg_3.x, arg_3.x, -243f) + vec4<f32>(-833f, 1585f, 1537f, arg_3.x))))), Struct_1(arg_3.x, max(select(-2147483647i, 4310i, false), arg_1 >> (u_input.b.x % 32u)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), vec3<i32>(arg_1, arg_1, arg_1)) ^ ~vec3<i32>(-2147483647i, 1i, u_input.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-499f, -1454f, arg_3.x), vec3<f32>(363f, -324f, 358f)))), _wgslsmith_f_op_f32(-arg_3.x)));
    global1 = -(reverseBits(92198i) ^ u_input.a.x);
    global0 = array<Struct_2, 15>();
    global1 = -39748i;
    let var_1 = var_0;
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(true, _wgslsmith_sub_i32(u_input.a.x, -1i), false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1174f), _wgslsmith_f_op_f32(min(-1678f, _wgslsmith_f_op_f32(trunc(243f)))))));
    global1 = 26982i;
    var var_1 = select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), !(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), true))), select(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), any(vec4<bool>(false, true, false, false))), vec4<bool>(true, !any(vec4<bool>(true, true, true, false)), true, all(vec3<bool>(true, true, true))), vec4<bool>(true, (var_0.a >= var_0.d.x) == true, false, true)), true);
    global0 = array<Struct_2, 15>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(~0u), countOneBits(u_input.b.x)), 15u)], !(!select(var_1.zyw, vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, true, var_1.x))), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, var_0.b), u_input.a.xy) >> (_wgslsmith_mult_u32(49091u, 0u) % 32u), countOneBits(-var_0.c.x), -1i, _wgslsmith_add_i32(u_input.a.x, ~14425i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.a, var_0.d.x, var_0.d.x, -580f), vec4<f32>(var_0.a, var_0.a, var_0.a, -1785f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(357f, var_0.a, var_0.d.x, var_0.a))) - vec4<f32>(-1163f, _wgslsmith_div_f32(3804f, -292f), var_0.d.x, _wgslsmith_f_op_f32(trunc(948f)))))).x * _wgslsmith_f_op_f32(var_0.d.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2337f + _wgslsmith_f_op_f32(f32(-1f) * -1364f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a), var_0.a)))));
    var_1 = vec4<bool>(var_1.x, any(vec4<bool>(!any(vec3<bool>(true, var_1.x, var_1.x)), any(vec4<bool>(true, var_1.x, var_1.x, var_1.x)), !var_1.x, true)), var_1.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(~(firstTrailingBit(10439u) << (1u % 32u)) ^ u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(func_1(u_input.b.x >= 60439u, -2147483647i, true, _wgslsmith_f_op_vec2_f32(var_0.d.zz * vec2<f32>(var_0.d.x, -1802f))).a, -3109f)) - -1823f), u_input.b.yz ^ vec2<u32>(u_input.b.x, ~17570u), _wgslsmith_mod_vec2_i32(select(var_0.c.yx, ~countOneBits(var_0.c.zy), true), min(-(~var_0.c.zz), u_input.a.yx)));
}

