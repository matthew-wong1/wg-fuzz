struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec4<f32>,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> f32 {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, -1293f) + _wgslsmith_f_op_vec2_f32(sign(arg_0.yx)))) + arg_0.yw) * arg_0.yy);
    global0 = vec2<f32>(663f, _wgslsmith_div_f32(arg_0.x, _wgslsmith_div_f32(global0.x, arg_0.x)));
    let var_0 = _wgslsmith_f_op_f32(exp2(arg_0.x));
    global0 = arg_0.zz;
    var var_1 = _wgslsmith_f_op_f32(trunc(global0.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.x)) + _wgslsmith_f_op_f32(trunc(-382f)));
}

fn func_2(arg_0: f32, arg_1: vec3<bool>) -> Struct_5 {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-469f * _wgslsmith_f_op_f32(func_3(vec4<f32>(278f, 340f, 1262f, -702f), Struct_1(u_input.a.x, vec3<i32>(u_input.c, -2147483647i, 0i), false)))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.x, arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -429f)) * global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + global0.x)) - global0.x), arg_0));
    var var_0 = vec4<bool>(false, !all(!select(vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(false, arg_1.x))), arg_1.x, true | all(select(select(vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(true, arg_1.x, false, arg_1.x), arg_1.x), vec4<bool>(true, true, false, false), select(vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false)))));
    var var_1 = u_input.b.x;
    var var_2 = !select(!(!select(vec4<bool>(false, arg_1.x, false, var_0.x), vec4<bool>(arg_1.x, var_0.x, var_0.x, false), true)), select(!(!vec4<bool>(var_0.x, false, arg_1.x, true)), select(vec4<bool>(false, var_0.x, false, false), vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(arg_1.x, arg_1.x, false, true)), false), all(var_0.wwx) | (_wgslsmith_mod_u32(u_input.b.x, 77001u) < 54048u));
    return Struct_5(Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(-40641i, _wgslsmith_mod_i32(u_input.c, u_input.a.x), select(u_input.a.x, u_input.a.x, var_2.x)), firstTrailingBit(vec3<i32>(u_input.c, -1i, 1i)) & vec3<i32>(u_input.c, 2147483647i, -6723i)), vec3<i32>(~_wgslsmith_add_i32(u_input.a.x, -38282i), firstTrailingBit(~u_input.c), u_input.c), false), Struct_3(Struct_1(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-14549i, 10944i)), u_input.a), vec3<i32>(u_input.c << (u_input.b.x % 32u), u_input.a.x, u_input.c >> (0u % 32u)), -1435f > _wgslsmith_f_op_f32(max(arg_0, 1832f))), vec3<bool>(arg_1.x, !(arg_1.x | var_2.x), true)));
}

fn func_4(arg_0: Struct_5, arg_1: i32) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) - vec2<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x)))));
    var var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a, -vec2<i32>(26976i, arg_1) & firstLeadingBit(vec2<i32>(u_input.c, 1i))), -abs(arg_0.a.b.xy));
    global0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 754f)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.x, -702f))))))))));
    var_0 = -(~(_wgslsmith_clamp_i32(12906i, arg_1, -59847i) | arg_1) ^ -25209i);
    var_0 = func_2(-1000f, vec3<bool>(true, false, ~_wgslsmith_mod_u32(19774u, 4294967295u) > (reverseBits(1u) & ~u_input.b.x))).a.b.x;
    return Struct_2(Struct_1(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(arg_0.b.a.b.x, arg_1), 20106i, _wgslsmith_add_i32(arg_0.b.a.b.x, arg_1) | 1i), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(arg_0.b.a.b << (vec3<u32>(u_input.b.x, 1u, 35141u) % vec3<u32>(32u)), arg_0.a.b), arg_0.b.a.b), true), Struct_1(~_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(arg_0.b.a.a, arg_1, -2147483647i, 50605i)), select(vec4<i32>(16548i, -5473i, arg_1, arg_1), vec4<i32>(-26870i, 2147483647i, arg_1, -1i), vec4<bool>(arg_0.a.c, false, arg_0.b.a.c, true))), ~arg_0.a.b, false), _wgslsmith_f_op_f32(-global0.x), 537f);
}

fn func_1(arg_0: bool, arg_1: vec4<bool>) -> Struct_2 {
    let var_0 = func_4(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-2124f)), global0.x))), select(arg_1.zwx, select(arg_1.yxx, !arg_1.wwz, arg_0), _wgslsmith_f_op_f32(round(global0.x)) >= -1180f)), _wgslsmith_mult_i32(u_input.a.x, ~(-40489i)));
    let var_1 = select(false, true, true) || (true & !arg_0);
    var var_2 = func_4(func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-937f, global0.x), _wgslsmith_f_op_f32(trunc(253f)))), vec3<bool>(var_1, !(!arg_1.x), arg_1.x)), countOneBits(-22529i));
    var var_3 = countOneBits(~_wgslsmith_mod_i32(abs(var_2.b.a), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-57928i, u_input.c), vec2<i32>(var_0.a.a, var_2.a.b.x))));
    let var_4 = select(func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.c), 252f)), select(vec3<bool>(true, func_2(1005f, arg_1.wyy).a.c, !var_0.b.c), select(vec3<bool>(false, false, arg_0), vec3<bool>(arg_1.x, arg_1.x, arg_0), vec3<bool>(var_0.a.c, var_0.b.c, true)), arg_1.xyw)).b.b.yz, select(arg_1.yx, vec2<bool>(false || (u_input.c == -30830i), var_0.b.c), func_2(_wgslsmith_f_op_f32(-var_2.d), vec3<bool>(true, !var_1, !arg_1.x)).b.b.yz), any(arg_1.www));
    return Struct_2(Struct_1(35702i, vec3<i32>(var_0.b.b.x, firstTrailingBit(50000i), ~var_0.a.b.x) << (vec3<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b.x, 0u), u_input.b.yyw), ~4294967295u) % vec3<u32>(32u)), false), func_4(Struct_5(var_2.a, Struct_3(Struct_1(var_2.a.a, vec3<i32>(var_0.b.a, 45607i, var_0.b.b.x), true), select(vec3<bool>(arg_1.x, var_2.b.c, true), arg_1.yyw, arg_1.x))), var_0.a.a).b, global0.x, -602f);
}

fn func_5(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_2) -> vec4<f32> {
    let var_0 = true;
    let var_1 = ~firstLeadingBit(select(~_wgslsmith_add_vec4_u32(vec4<u32>(7638u, 4294967295u, u_input.b.x, 62198u), u_input.b), ~_wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(4294967295u, 0u, u_input.b.x, u_input.b.x)), arg_2.a.c));
    let var_2 = any(vec4<bool>(false, true, !(!arg_2.b.c), true));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.d, 832f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.x, 519f)))))))) * vec2<f32>(2892f, -349f));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(197f, 949f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.d, global0.x)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(func_4(Struct_5(arg_2.b, Struct_3(Struct_1(0i, arg_2.b.b, arg_2.a.c), vec3<bool>(arg_2.a.c, true, arg_2.a.c))), -50857i).c, global0.x))));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(798f)) * -399f), arg_2.c, 564f, _wgslsmith_f_op_f32(abs(global0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-793f, -1557f, -543f, -699f) * vec4<f32>(global0.x, 258f, arg_2.c, arg_2.c))), vec4<f32>(-545f, _wgslsmith_f_op_f32(global0.x - 1000f), -870f, global0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), 550f)), _wgslsmith_f_op_f32(min(-268f, _wgslsmith_f_op_f32(floor(global0.x)))), global0.x, -1555f) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_5(reverseBits(32268i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), vec3<i32>(u_input.c, -65824i, u_input.a.x)), func_1(false, vec4<bool>(true, true, false, false)))))))));
    let var_1 = _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(-var_0), func_4(func_2(-1030f, vec3<bool>(true, true, true)), _wgslsmith_mult_i32(6393i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 11142i, u_input.c), select(vec3<i32>(-1i, u_input.a.x, -58433i), vec3<i32>(u_input.a.x, 0i, u_input.c), true)))).b));
    var var_2 = select(firstTrailingBit(vec2<u32>(~(4294967295u | u_input.b.x), u_input.b.x)), u_input.b.zx, vec2<bool>(!all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true)), func_4(Struct_5(func_2(548f, vec3<bool>(false, false, true)).a, Struct_3(Struct_1(u_input.a.x, vec3<i32>(u_input.c, 1265i, u_input.c), false), vec3<bool>(true, true, true))), u_input.c).a.c));
    let var_3 = ~(~(u_input.b | vec4<u32>(_wgslsmith_mult_u32(u_input.b.x, var_2.x), ~u_input.b.x, _wgslsmith_sub_u32(var_2.x, u_input.b.x), max(52159u, var_2.x))));
    var_2 = ~var_3.zy;
    global0 = vec2<f32>(-1053f, 234f);
    var_2 = ~vec2<u32>(u_input.b.x, var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(vec4<u32>(u_input.b.x, 1u, _wgslsmith_dot_vec2_u32(u_input.b.xy, var_3.xx), var_3.x & 3390u) ^ var_3), vec4<f32>(572f, -989f, global0.x, _wgslsmith_f_op_f32(select(-555f, 165f, false))));
}

