struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: bool,
    d: vec3<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: Struct_1,
    d: vec2<bool>,
    e: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14> = array<u32, 14>(76357u, 1u, 0u, 92658u, 0u, 0u, 78511u, 1u, 77000u, 4294967295u, 1u, 18937u, 0u, 68275u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = Struct_1(!select(vec2<bool>(any(vec4<bool>(false, true, true, true)), any(vec4<bool>(false, false, true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true), select(vec2<i32>(abs(_wgslsmith_mult_i32(3010i, u_input.a.x)), u_input.a.x), select(vec2<i32>(_wgslsmith_add_i32(4515i, u_input.a.x), u_input.a.x & u_input.a.x), abs(u_input.a.wx) & (u_input.a.yw >> (vec2<u32>(74431u, 4294967295u) % vec2<u32>(32u))), vec2<bool>(all(vec3<bool>(true, true, true)), all(vec2<bool>(false, true)))), any(vec3<bool>(false, true, true))), all(vec4<bool>(all(vec3<bool>(true, true, true)), 1i != u_input.a.x, false, true)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-717f + 1595f))), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(trunc(1f))), 2034f), !vec4<bool>(true, !all(vec4<bool>(true, false, true, false)), true, true));
    global0 = array<u32, 14>();
    global0 = array<u32, 14>();
    global0 = array<u32, 14>();
    let var_1 = vec3<f32>(var_0.d.x, 290f, _wgslsmith_f_op_f32(f32(-1f) * -569f));
    return global0[_wgslsmith_index_u32(reverseBits(~u_input.b), 14u)];
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_4, arg_3: vec3<f32>) -> i32 {
    let var_0 = Struct_5(vec3<u32>(_wgslsmith_mult_u32(select(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(u_input.b, 14u)], 4294967295u), ~0u, arg_2.a.c && false), func_3(4294967295u)), ~(~max(global0[_wgslsmith_index_u32(43267u, 14u)], arg_0)), countOneBits(arg_0)), select(select(select(arg_1, arg_2.a.e.zxz, !arg_1.x), select(vec3<bool>(true, arg_2.a.e.x, true), arg_2.a.e.zzx, arg_1), select(!arg_1, arg_1, all(arg_2.a.e.zxw))), arg_2.a.e.xww, vec3<bool>(true, select(u_input.a.x >= u_input.a.x, all(vec4<bool>(true, arg_1.x, true, false)), !arg_1.x), !any(arg_2.a.e.xzz))), select(!arg_2.a.e, !vec4<bool>(arg_1.x & false, true, !arg_2.a.e.x, any(arg_1)), all(!select(arg_1, vec3<bool>(true, arg_1.x, arg_1.x), arg_2.a.a.x))), arg_2.a, Struct_3((true && arg_1.x) || (false && any(vec3<bool>(false, false, arg_1.x))), vec4<i32>(~arg_2.a.b.x, -arg_2.a.b.x, -(~arg_2.a.b.x), arg_2.a.b.x), Struct_1(arg_1.yy, arg_2.a.b, !arg_2.a.e.x, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1041f, arg_2.a.d.x, arg_2.a.d.x), arg_3)), select(!arg_2.a.e, select(arg_2.a.e, arg_2.a.e, vec4<bool>(arg_1.x, arg_2.a.c, true, true)), arg_2.a.e)), arg_1.xy, 23966u ^ ~global0[_wgslsmith_index_u32(4294967295u, 14u)]));
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(max(vec2<u32>(var_0.e.e, 59357u), vec2<u32>(1u, u_input.b)) << (select(var_0.a.zx, vec2<u32>(arg_0, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.e.e, 14u)], 14u)]), false) % vec2<u32>(32u)), vec2<u32>(var_0.a.x, arg_0 << (u_input.b % 32u))), select(~_wgslsmith_mod_u32(var_0.e.e, 1u), func_3(4294967295u) ^ 0u, all(vec4<bool>(false, true, true, false)))), vec2<u32>(var_0.e.e, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(0u, var_0.a.x, var_0.e.e, 0u), vec4<u32>(13469u, 35814u, u_input.b, u_input.b)), vec4<u32>(_wgslsmith_mod_u32(98786u, u_input.b), global0[_wgslsmith_index_u32(u_input.b, 14u)] << (global0[_wgslsmith_index_u32(25130u, 14u)] % 32u), u_input.b & global0[_wgslsmith_index_u32(1u, 14u)], var_0.a.x))));
    var var_2 = var_0.d.b.x & 1i;
    var var_3 = ~max(-2147483647i, arg_2.a.b.x);
    var var_4 = !(!(!select(!vec4<bool>(var_0.e.d.x, arg_2.a.a.x, arg_1.x, var_0.c.x), !vec4<bool>(true, var_0.b.x, true, true), vec4<bool>(false, var_0.e.c.a.x, true, true))));
    return -firstTrailingBit(var_0.d.b.x ^ arg_2.a.b.x);
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: u32, arg_3: i32) -> Struct_3 {
    let var_0 = vec4<bool>(all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), false)))), any(vec2<bool>(true, true)), !(arg_2 >= firstTrailingBit(~30869u)), true);
    let var_1 = 54545i;
    let var_2 = min(0u, arg_2);
    let var_3 = Struct_3(!(var_0.x != var_0.x), u_input.a, Struct_1(var_0.xy, u_input.a.zx, true, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1565f, _wgslsmith_f_op_f32(round(493f)), _wgslsmith_div_f32(-161f, 855f)), vec3<f32>(-407f, _wgslsmith_f_op_f32(sign(1678f)), _wgslsmith_f_op_f32(select(1369f, 683f, true))))), !select(var_0, !var_0, vec4<bool>(true, false, var_0.x, false))), select(select(select(vec2<bool>(false, var_0.x), var_0.yy, vec2<bool>(var_0.x, var_0.x)), !vec2<bool>(var_0.x, false), select(var_0.x, false, false) != var_0.x), vec2<bool>(true, true), vec2<bool>(true, true)), var_2);
    var var_4 = var_3.c.d.xx;
    return var_3;
}

fn func_1(arg_0: Struct_5) -> Struct_1 {
    let var_0 = func_4(arg_0.e.b.x, vec3<i32>(countOneBits(_wgslsmith_mod_i32(2147483647i, 1i)), _wgslsmith_sub_i32(arg_0.e.c.b.x, -func_2(96582u, arg_0.d.e.wyz, Struct_4(arg_0.d), arg_0.e.c.d)), -countOneBits(2147483647i)), _wgslsmith_div_u32(32665u, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(arg_0.a.x, abs(u_input.b), _wgslsmith_mod_u32(15414u, 37107u)), arg_0.e.e, arg_0.a.x)), ~(-22484i));
    let var_1 = _wgslsmith_mult_i32(countOneBits(-func_2(global0[_wgslsmith_index_u32(71102u, 14u)], vec3<bool>(true, var_0.c.a.x, true), Struct_4(Struct_1(var_0.c.e.xz, vec2<i32>(u_input.a.x, arg_0.d.b.x), true, vec3<f32>(880f, var_0.c.d.x, var_0.c.d.x), arg_0.d.e)), var_0.c.d)), -30077i) | -2147483647i;
    let var_2 = Struct_4(Struct_1(var_0.c.e.zx, _wgslsmith_sub_vec2_i32(u_input.a.yw, _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -821i), u_input.a.xy) >> (min(arg_0.a.xx, vec2<u32>(36583u, u_input.b)) % vec2<u32>(32u))), arg_0.d.c, vec3<f32>(-667f, _wgslsmith_f_op_f32(-var_0.c.d.x), _wgslsmith_f_op_f32(abs(var_0.c.d.x))), arg_0.c));
    global0 = array<u32, 14>();
    let var_3 = arg_0.c;
    return arg_0.e.c;
}

fn func_5(arg_0: bool, arg_1: Struct_5, arg_2: Struct_5) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1867f, _wgslsmith_f_op_f32(-944f - arg_2.d.d.x))), func_1(arg_2).d.x));
    let var_1 = arg_1.c.x;
    let var_2 = func_1(Struct_5(vec3<u32>(arg_1.e.e ^ 4294967295u, arg_1.a.x, 4294967295u), arg_2.e.c.e.wzx, func_4(func_2(reverseBits(u_input.b), select(arg_1.e.c.e.yyy, vec3<bool>(var_1, arg_0, true), vec3<bool>(true, true, false)), Struct_4(arg_1.e.c), vec3<f32>(arg_2.e.c.d.x, -251f, -1846f)), arg_2.e.b.yzz, arg_2.a.x, firstLeadingBit(arg_2.d.b.x)).c.e, Struct_1(vec2<bool>(!arg_2.d.e.x, true), -abs(arg_1.e.c.b), !var_1 && arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-261f, arg_1.d.d.x, -711f) + vec3<f32>(-211f, arg_2.e.c.d.x, arg_1.e.c.d.x)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, arg_1.d.d.x, -476f)))), !select(vec4<bool>(arg_1.d.e.x, arg_0, var_1, arg_2.d.a.x), vec4<bool>(arg_2.c.x, arg_2.e.a, arg_2.e.c.e.x, false), arg_2.e.c.e)), Struct_3(true, _wgslsmith_sub_vec4_i32(~arg_1.e.b, _wgslsmith_sub_vec4_i32(arg_1.e.b, arg_2.e.b)), arg_2.d, vec2<bool>(func_1(Struct_5(arg_2.a, vec3<bool>(arg_1.e.a, arg_1.b.x, true), arg_2.d.e, Struct_1(vec2<bool>(var_1, arg_2.c.x), arg_1.d.b, false, vec3<f32>(var_0.x, -121f, arg_1.d.d.x), arg_1.d.e), Struct_3(true, u_input.a, Struct_1(vec2<bool>(arg_0, false), vec2<i32>(u_input.a.x, -39837i), arg_2.b.x, vec3<f32>(arg_2.d.d.x, arg_2.d.d.x, arg_1.e.c.d.x), arg_2.d.e), vec2<bool>(arg_2.b.x, arg_2.e.d.x), 40183u))).c, !arg_1.c.x), max(_wgslsmith_dot_vec3_u32(arg_1.a, vec3<u32>(6709u, 9976u, 0u)), arg_2.e.e & arg_1.a.x))));
    global0 = array<u32, 14>();
    let var_3 = _wgslsmith_div_vec3_f32(arg_2.d.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_1.d.d * arg_2.d.d), _wgslsmith_f_op_vec3_f32(-var_2.d), any(vec3<bool>(arg_1.b.x, arg_1.c.x, false)))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(410f, var_0.x, -724f), vec3<f32>(1427f, 299f, -420f)))) + var_2.d));
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(arg_2.d.d.zx - var_3.xy))) * arg_2.d.d.zz)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 14>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_5(true, Struct_5(max(vec3<u32>(global0[_wgslsmith_index_u32(52130u, 14u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], u_input.b) << (vec3<u32>(global0[_wgslsmith_index_u32(u_input.b, 14u)], 15092u, u_input.b) % vec3<u32>(32u)), ~vec3<u32>(34257u, 0u, 3415u)), vec3<bool>(true, true, true), vec4<bool>(true, true, true, true), func_1(Struct_5(vec3<u32>(145798u, 77320u, 1u), vec3<bool>(false, true, false), vec4<bool>(false, false, false, true), Struct_1(vec2<bool>(false, false), u_input.a.wx, true, vec3<f32>(-1000f, -665f, 1406f), vec4<bool>(true, false, false, true)), Struct_3(false, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i), Struct_1(vec2<bool>(true, true), u_input.a.wz, false, vec3<f32>(-1008f, 764f, 1376f), vec4<bool>(false, true, false, true)), vec2<bool>(true, true), u_input.b))), func_4(u_input.a.x >> (40432u % 32u), u_input.a.xxx, 1u, u_input.a.x)), Struct_5(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(66905u, 13993u, 19857u)), vec3<u32>(65745u, u_input.b, u_input.b)), !func_4(u_input.a.x, u_input.a.zxw, global0[_wgslsmith_index_u32(22342u, 14u)], u_input.a.x).c.e.ywy, func_4(u_input.a.x, min(u_input.a.zzw, vec3<i32>(-38829i, -2147483647i, -25352i)), 0u, u_input.a.x << (0u % 32u)).c.e, Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, false), true), u_input.a.zw & vec2<i32>(u_input.a.x, u_input.a.x), true, vec3<f32>(-2248f, -1000f, 657f), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true))), Struct_3(u_input.a.x > u_input.a.x, u_input.a, Struct_1(vec2<bool>(true, true), u_input.a.wx, true, vec3<f32>(-1881f, -1000f, -357f), vec4<bool>(true, false, false, false)), vec2<bool>(true, true), reverseBits(u_input.b))))));
    let var_1 = true;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1832f, 2401f) + vec2<f32>(var_0.x, var_0.x)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_5(var_1, Struct_5(vec3<u32>(global0[_wgslsmith_index_u32(24814u, 14u)], global0[_wgslsmith_index_u32(u_input.b, 14u)], 4294967295u), vec3<bool>(false, var_1, false), vec4<bool>(var_1, var_1, true, true), Struct_1(vec2<bool>(true, true), vec2<i32>(u_input.a.x, u_input.a.x), var_1, vec3<f32>(var_0.x, -2013f, -100f), vec4<bool>(var_1, true, true, false)), Struct_3(false, u_input.a, Struct_1(vec2<bool>(false, true), u_input.a.zz, true, vec3<f32>(var_0.x, -1388f, var_0.x), vec4<bool>(var_1, var_1, false, var_1)), vec2<bool>(true, var_1), 1u)), Struct_5(vec3<u32>(4294967295u, 4294967295u, u_input.b), vec3<bool>(var_1, var_1, var_1), vec4<bool>(true, var_1, var_1, true), Struct_1(vec2<bool>(var_1, false), vec2<i32>(u_input.a.x, 0i), false, vec3<f32>(var_0.x, 529f, var_0.x), vec4<bool>(var_1, var_1, true, false)), Struct_3(true, vec4<i32>(u_input.a.x, -41274i, -70749i, u_input.a.x), Struct_1(vec2<bool>(false, false), u_input.a.wy, var_1, vec3<f32>(var_0.x, -1633f, 1052f), vec4<bool>(false, true, var_1, var_1)), vec2<bool>(false, true), u_input.b)))))));
    let var_2 = min(reverseBits(_wgslsmith_div_u32(firstTrailingBit(4573u), _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(u_input.b, 14u)], 4294967295u), vec2<u32>(0u, global0[_wgslsmith_index_u32(25980u, 14u)])))) ^ _wgslsmith_add_u32(_wgslsmith_div_u32(func_4(0i, u_input.a.xxx, 0u, 0i).e, reverseBits(4294967295u)), ~1u), func_3(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~1u, u_input.b & min(1u, u_input.b)), 14u)]));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_5(func_1(Struct_5(vec3<u32>(u_input.b, global0[_wgslsmith_index_u32(0u, 14u)], 4113u), vec3<bool>(var_1, true, true), vec4<bool>(true, true, true, var_1), Struct_1(vec2<bool>(var_1, true), vec2<i32>(-21541i, -1719i), false, vec3<f32>(-1663f, var_0.x, -547f), vec4<bool>(var_1, false, true, var_1)), Struct_3(var_1, u_input.a, Struct_1(vec2<bool>(var_1, var_1), u_input.a.ww, var_1, vec3<f32>(-454f, var_0.x, -2038f), vec4<bool>(var_1, var_1, var_1, true)), vec2<bool>(var_1, var_1), 2461u))).a.x, Struct_5(vec3<u32>(var_2, 5030u, 98411u), vec3<bool>(true, false, var_1), vec4<bool>(var_1, false, true, true), Struct_1(vec2<bool>(var_1, false), u_input.a.wx, var_1, vec3<f32>(722f, 1291f, -1161f), vec4<bool>(var_1, var_1, false, var_1)), Struct_3(var_1, vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, -67005i), Struct_1(vec2<bool>(var_1, var_1), vec2<i32>(u_input.a.x, u_input.a.x), var_1, vec3<f32>(-788f, -217f, var_0.x), vec4<bool>(true, false, false, false)), vec2<bool>(var_1, var_1), u_input.b)), Struct_5(vec3<u32>(var_2, u_input.b, u_input.b), vec3<bool>(true, true, var_1), vec4<bool>(false, var_1, var_1, true), Struct_1(vec2<bool>(true, var_1), u_input.a.zy, false, vec3<f32>(-353f, 1533f, 646f), vec4<bool>(var_1, var_1, true, var_1)), Struct_3(false, vec4<i32>(u_input.a.x, u_input.a.x, 19852i, -1i), Struct_1(vec2<bool>(var_1, var_1), vec2<i32>(52507i, 2147483647i), true, vec3<f32>(338f, -401f, -358f), vec4<bool>(var_1, var_1, var_1, true)), vec2<bool>(true, var_1), u_input.b)))).x + 732f), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-162f, var_0.x, var_1))))), firstTrailingBit(_wgslsmith_dot_vec3_i32(~_wgslsmith_sub_vec3_i32(u_input.a.xyx, u_input.a.yyw), -select(u_input.a.yww, u_input.a.xxz, true))), u_input.a.xx, func_4(-select(func_4(-18998i, vec3<i32>(u_input.a.x, 1i, 2147483647i), global0[_wgslsmith_index_u32(10077u, 14u)], u_input.a.x).c.b.x, -u_input.a.x, var_1), vec3<i32>(u_input.a.x, ~_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec3_i32(u_input.a.yzy, func_4(5648i, vec3<i32>(u_input.a.x, 0i, u_input.a.x), 9665u, u_input.a.x).b.yxx)), var_2, _wgslsmith_sub_i32(_wgslsmith_mod_i32(~u_input.a.x, -39458i), u_input.a.x)).c.d.x);
}

