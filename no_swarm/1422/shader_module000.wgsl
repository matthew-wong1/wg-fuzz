struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
    c: vec4<f32>,
    d: vec4<u32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: vec4<i32>) -> f32 {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1102f, 1000f) - _wgslsmith_f_op_f32(sign(-1811f))))) + 1f), Struct_4(Struct_1(!arg_1)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1178f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(227f, 231f))), -542f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -127f), _wgslsmith_f_op_f32(f32(-1f) * -185f))))), vec4<u32>(u_input.a, 1u, firstTrailingBit(u_input.c), 57530u), 7642i);
    var_0 = Struct_5(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a))), Struct_4(Struct_1(!vec3<bool>(false, arg_1.x, var_0.b.a.a.x))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(abs(703f))), _wgslsmith_f_op_f32(-1294f + 571f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x + -597f) * _wgslsmith_f_op_f32(-955f * var_0.a)) + var_0.a), -1125f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_0.a, -620f)), 1000f))), _wgslsmith_mod_vec4_u32(var_0.d, var_0.d), _wgslsmith_sub_i32(abs(1i), abs(var_0.e)));
    var var_1 = -13563i;
    var_1 = 5957i;
    let var_2 = var_0.b.a.a.x;
    return -899f;
}

fn func_2(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: vec2<bool>, arg_3: bool) -> Struct_4 {
    global0 = true;
    global0 = arg_2.x;
    global0 = false;
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -999f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(u_input.b, arg_0.a.a, vec4<i32>(arg_1.x, -1i, -11112i, -2147483647i ^ u_input.b.x))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-801f, _wgslsmith_f_op_f32(-733f - -180f), 235f) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1143f, -302f, -1704f) - vec3<f32>(313f, -198f, -2753f)))))))));
    return arg_0;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_1) -> Struct_2 {
    let var_0 = 315f;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_2, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2), var_0, !arg_3.a.x)))))));
    var var_2 = abs(-2147483647i);
    var var_3 = func_2(Struct_4(Struct_1(vec3<bool>(true, !arg_1.x, false))), u_input.d.ww, vec2<bool>(true == (-1526f <= _wgslsmith_f_op_f32(floor(508f))), ~(u_input.c | 0u) > 47371u), true);
    var_2 = -15576i;
    return Struct_2(5536i, true, select(true & !(arg_0.x >= arg_0.x), arg_1.x, u_input.e >= -arg_0.x), ~u_input.c);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec3<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(~(~abs(vec2<u32>(1u, u_input.c))), ~select(min(vec2<u32>(58790u, 4294967295u), vec2<u32>(4294967295u, 1309u)), vec2<u32>(u_input.a, 4962u), false)), vec2<u32>(u_input.c, u_input.a >> (abs(u_input.c) % 32u)) | ~vec2<u32>(53393u, 32727u), ~vec2<u32>(~(~u_input.a), _wgslsmith_sub_u32(u_input.c, 20704u) << (arg_1.d % 32u)));
    let var_1 = func_1(select(~vec2<i32>(-31117i ^ arg_1.a, countOneBits(arg_1.a)), -(~(arg_0 | vec2<i32>(arg_1.a, arg_1.a))), func_2(Struct_4(func_2(Struct_4(Struct_1(vec3<bool>(false, arg_1.c, false))), arg_0, vec2<bool>(arg_1.b, true), arg_1.b).a), ~(~vec2<i32>(arg_0.x, arg_1.a)), select(!vec2<bool>(arg_1.c, arg_1.c), vec2<bool>(arg_1.c, false), func_2(Struct_4(Struct_1(vec3<bool>(arg_1.c, arg_1.c, arg_1.b))), arg_0, vec2<bool>(true, arg_1.c), true).a.a.yy), func_2(Struct_4(Struct_1(vec3<bool>(false, arg_1.c, arg_1.c))), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.e, arg_1.a), vec2<i32>(1707i, 14144i), u_input.b.ww), !vec2<bool>(true, arg_1.b), arg_2.x != arg_2.x).a.a.x).a.a.x), !(!(!select(vec4<bool>(true, arg_1.c, true, arg_1.b), vec4<bool>(false, arg_1.b, arg_1.c, false), vec4<bool>(arg_1.c, arg_1.b, arg_1.b, arg_1.b)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1468f), 2423f)) - _wgslsmith_f_op_f32(arg_2.x * -441f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, 598f)) - _wgslsmith_f_op_f32(select(arg_2.x, _wgslsmith_f_op_f32(sign(366f)), true)))), Struct_1(select(select(!vec3<bool>(arg_1.b, arg_1.b, arg_1.c), vec3<bool>(true, false, true), select(vec3<bool>(arg_1.c, true, false), vec3<bool>(arg_1.b, arg_1.c, arg_1.c), vec3<bool>(true, true, true))), select(vec3<bool>(true, true, false), vec3<bool>(arg_1.b, arg_1.c, arg_1.c), !arg_1.b), vec3<bool>(all(vec3<bool>(arg_1.b, true, arg_1.b)), false, false))));
    global0 = -27290i > (0i << (_wgslsmith_dot_vec2_u32(abs(~var_0), var_0) % 32u));
    let var_2 = func_1(max(vec2<i32>(var_1.a, 9020i), reverseBits(arg_0)), !select(!select(vec4<bool>(true, arg_1.c, true, true), vec4<bool>(true, true, var_1.c, arg_1.c), var_1.b), select(select(vec4<bool>(true, arg_1.c, false, var_1.c), vec4<bool>(var_1.b, arg_1.b, false, arg_1.c), var_1.b), !vec4<bool>(var_1.b, arg_1.b, true, true), var_1.c), vec4<bool>(true, false, false, any(vec2<bool>(false, false)))), arg_2.x, Struct_1(select(vec3<bool>(var_1.c, arg_1.b, arg_1.c & arg_1.c), vec3<bool>(true, true, true), true)));
    let var_3 = Struct_5(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(f32(-1f) * -1469f))), func_2(Struct_4(Struct_1(vec3<bool>(true, true, true))), reverseBits(vec2<i32>(54645i, -1i)) & (vec2<i32>(-1i) * -u_input.d.xz), func_2(func_2(Struct_4(Struct_1(vec3<bool>(arg_1.b, var_2.b, var_2.b))), u_input.b.zw, vec2<bool>(true, arg_1.b), true), arg_0, vec2<bool>(var_1.b, true), all(vec4<bool>(var_1.b, var_1.c, false, var_1.b))).a.a.xx, !var_1.b), vec4<f32>(_wgslsmith_f_op_f32(-arg_2.x), -700f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1417f * arg_2.x)) + _wgslsmith_div_f32(-129f, _wgslsmith_f_op_f32(-arg_2.x))), arg_2.x), _wgslsmith_sub_vec4_u32(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.d, 4294967295u, 1u, var_0.x), vec4<u32>(arg_1.d, var_0.x, u_input.c, var_2.d))), _wgslsmith_sub_vec4_u32(~(vec4<u32>(var_2.d, 1u, var_1.d, 1u) >> (vec4<u32>(var_1.d, 53901u, 37063u, 92839u) % vec4<u32>(32u))), ~vec4<u32>(var_1.d, 1u, var_0.x, 4294967295u) ^ (vec4<u32>(var_0.x, 71579u, u_input.a, u_input.a) & vec4<u32>(var_0.x, arg_1.d, 32228u, 56679u)))), arg_0.x);
    return Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(2049i, arg_1.a, firstTrailingBit(7054i) >> (var_3.d.x % 32u)), vec3<i32>(max(var_3.e | arg_1.a, var_2.a), 46448i, -1i)), false, !func_2(Struct_4(Struct_1(var_3.b.a.a)), ~(-arg_0), vec2<bool>(var_0.x < var_1.d, true), false).a.a.x, u_input.a);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_3) -> Struct_1 {
    global0 = arg_1.a.b;
    var var_0 = _wgslsmith_f_op_f32(-669f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.b.x)))));
    var var_1 = ~vec2<u32>(1u, 1u);
    let var_2 = 0u;
    let var_3 = min(arg_1.a.d, _wgslsmith_mult_u32(reverseBits(func_1(u_input.b.zy, vec4<bool>(arg_1.a.b, false, true, arg_0.x), -367f, Struct_1(vec3<bool>(arg_0.x, false, false))).d), u_input.a));
    return func_2(Struct_4(Struct_1(vec3<bool>(arg_0.x, arg_1.a.b, false))), ~u_input.d.zy ^ u_input.d.yx, select(arg_0, vec2<bool>(any(func_2(Struct_4(Struct_1(vec3<bool>(arg_1.a.c, arg_0.x, true))), u_input.d.wx, arg_0, arg_0.x).a.a), false && func_1(u_input.d.wy, vec4<bool>(false, arg_1.a.b, arg_0.x, false), -883f, Struct_1(vec3<bool>(true, false, false))).c), select(select(!vec2<bool>(arg_0.x, false), arg_0, true), arg_0, arg_0)), func_1(u_input.d.zw, select(!select(vec4<bool>(true, arg_1.a.c, true, arg_0.x), vec4<bool>(arg_1.a.b, arg_0.x, arg_1.a.b, false), true), select(!vec4<bool>(false, arg_1.a.b, false, false), vec4<bool>(arg_1.a.b, arg_1.a.c, false, arg_1.a.b), arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_1.a.c, any(arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x)), Struct_1(vec3<bool>(false, false, arg_0.x))).b).a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    let var_0 = Struct_4(func_5(vec2<bool>(true, true), Struct_3(func_4(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d.x, u_input.b.x), vec2<i32>(2147483647i, u_input.d.x), u_input.d.wz), func_1(vec2<i32>(-1i, -33972i), vec4<bool>(false, false, false, false), -311f, Struct_1(vec3<bool>(true, false, false))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1091f, -224f, -843f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-904f, 1000f, 646f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-808f, 983f, -566f) * vec3<f32>(102f, 1216f, 1000f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(~14083u, 1u, 21450u, _wgslsmith_sub_u32(u_input.a, u_input.c)) | countOneBits(abs(vec4<u32>(u_input.a, 23312u, 0u, u_input.a)))), vec3<i32>(-1i) * -u_input.d.yyy);
}

