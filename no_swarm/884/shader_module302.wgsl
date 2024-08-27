struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<bool>,
    d: i32,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: f32,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<f32>(-291f, 626f));

var<private> global1: Struct_3 = Struct_3(vec4<i32>(2147483647i, -1i, 32753i, 2147483647i), Struct_1(-41420i, vec4<i32>(i32(-2147483648), 2147483647i, 16609i, i32(-2147483648)), vec4<f32>(-688f, -542f, 1034f, 272f), true, vec3<u32>(1u, 38383u, 0u)), vec4<bool>(true, false, true, true), -1i);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: f32) -> Struct_2 {
    var var_0 = Struct_5(~(~(~countOneBits(11734u))), _wgslsmith_f_op_f32(-global1.b.c.x), _wgslsmith_f_op_f32(abs(global0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(768f * _wgslsmith_f_op_f32(f32(-1f) * -699f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1972f, -883f)))), global1.b);
    return Struct_2(_wgslsmith_f_op_vec2_f32(exp2(var_0.e.c.zz)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_5, arg_2: Struct_2, arg_3: vec3<i32>) -> u32 {
    var var_0 = arg_1.e.d;
    global1 = Struct_3(max(~arg_1.e.b ^ arg_1.e.b, -abs(-arg_1.e.b)), arg_1.e, vec4<bool>(!global1.c.x, select(false, !(global0.a.x < 174f), any(global1.c.yww) || any(global1.c.zw)), !(true != (1u > arg_1.e.e.x)), false), -61299i);
    let var_1 = countOneBits(select(~(~vec4<u32>(arg_1.e.e.x, u_input.a, 59657u, 43297u)), vec4<u32>(_wgslsmith_mult_u32(countOneBits(21596u), u_input.a), 1u, arg_1.a >> (41519u % 32u), global1.b.e.x | (global1.b.e.x >> (global1.b.e.x % 32u))), all(!global1.c) | arg_1.e.d));
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(arg_1.e.c.ww * vec2<f32>(global1.b.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2474f + 761f) + _wgslsmith_f_op_f32(exp2(arg_1.c))))));
    let var_2 = global1.b.d;
    return ~(~arg_1.e.e.x);
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: u32) -> bool {
    let var_0 = global1.b.d;
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, 384f, global0.a.x)))) - _wgslsmith_f_op_vec3_f32(global1.b.c.yyx + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, 717f, global1.b.c.x) - global1.b.c.wzy)))));
    global1 = Struct_3(~(_wgslsmith_div_vec4_i32(vec4<i32>(global1.d, -2147483647i, global1.d, 46221i), vec4<i32>(-51228i, 0i, global1.b.b.x, global1.b.a)) ^ min(vec4<i32>(global1.b.a, -2147483647i, global1.a.x, global1.d), global1.b.b ^ vec4<i32>(24736i, 0i, -2147483647i, global1.d))), global1.b, select(global1.c, select(select(!vec4<bool>(false, global1.c.x, true, true), global1.c, global1.b.d == arg_2.x), global1.c, select(select(vec4<bool>(true, global1.b.d, arg_2.x, global1.b.d), vec4<bool>(true, false, global1.b.d, arg_2.x), global1.c), global1.c, true)), vec4<bool>(global1.c.x, !(!arg_2.x), all(vec3<bool>(global1.b.d, global1.c.x, false)), global1.b.d && (global0.a.x > 1903f))), 2147483647i);
    let var_2 = !(!(!arg_2.x));
    var var_3 = _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(abs(global1.b.e.zy), countOneBits(vec2<u32>(65440u, arg_3))), 30255u);
    return all(select(vec2<bool>(true | var_2, true), global1.c.yz, !(!select(vec2<bool>(arg_2.x, arg_2.x), global1.c.ww, arg_2.xz))));
}

fn func_1() -> Struct_2 {
    let var_0 = !(!(!func_4(~global1.b.e.x, func_2(vec2<i32>(global1.d, global1.b.b.x), global1.b.b.wzw, global0.a.x), !global1.c.wxy, func_3(global1.c, Struct_5(106499u, global1.b.c.x, -170f, 723f, Struct_1(global1.a.x, global1.b.b, vec4<f32>(-304f, global1.b.c.x, global0.a.x, global0.a.x), global1.c.x, global1.b.e)), Struct_2(vec2<f32>(1591f, global1.b.c.x)), global1.a.wwy))));
    global1 = Struct_3(max(~(-vec4<i32>(-49625i, global1.a.x, 2147483647i, global1.d)), vec4<i32>(-3019i, global1.a.x, -(~32779i), global1.b.b.x)), global1.b, vec4<bool>((_wgslsmith_div_u32(u_input.a, 1u) << (36324u % 32u)) < _wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.a, 4355u, 1u, 4294967295u), vec4<u32>(global1.b.e.x, 48563u, global1.b.e.x, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.b.e.x, u_input.a, global1.b.e.x, u_input.a), vec4<u32>(global1.b.e.x, 5215u, 0u, 4294967295u), vec4<u32>(global1.b.e.x, global1.b.e.x, u_input.a, u_input.a))), var_0, all(select(select(global1.c.yzz, vec3<bool>(global1.b.d, false, var_0), false), vec3<bool>(true, true, false), !global1.c.zzx)), all(global1.c)), -(~global1.d));
    var var_1 = Struct_1(abs(-36865i), max(global1.b.b, vec4<i32>(global1.a.x, ~global1.b.a, _wgslsmith_dot_vec4_i32(global1.a, vec4<i32>(global1.b.a, 2147483647i, 2147483647i, 23714i)), firstTrailingBit(-68732i)) & vec4<i32>(0i, firstLeadingBit(0i), 2147483647i << (u_input.a % 32u), _wgslsmith_mult_i32(global1.a.x, 1i))), _wgslsmith_f_op_vec4_f32(select(global1.b.c, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -612f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(ceil(global0.a.x))), global1.b.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(592f, 1461f, false)) - -527f)), any(vec3<bool>(var_0, true, true)) | func_4(global1.b.e.x, Struct_2(global1.b.c.zz), global1.c.ywx, 39297u))), true, select(select(select(global1.b.e >> (global1.b.e % vec3<u32>(32u)), ~vec3<u32>(41095u, global1.b.e.x, global1.b.e.x), func_4(u_input.a, Struct_2(global0.a), vec3<bool>(global1.c.x, global1.c.x, false), 9171u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, global1.b.e.x, 1u) >> (global1.b.e % vec3<u32>(32u)), global1.b.e), any(vec3<bool>(global1.b.d, false, var_0))), _wgslsmith_add_vec3_u32(~global1.b.e, vec3<u32>(u_input.a, firstLeadingBit(68375u), ~u_input.a)), vec3<bool>(select(global1.b.d, true, var_0) | var_0, var_0, true && (global1.b.d != var_0))));
    let var_2 = vec2<bool>(global1.b.d, true || !var_0);
    global0 = func_2(global1.a.yx, _wgslsmith_div_vec3_i32(vec3<i32>(1i, max(-global1.b.b.x, _wgslsmith_add_i32(-2147483647i, 0i)), var_1.a), firstLeadingBit(var_1.b.yyw)), _wgslsmith_div_f32(-1506f, _wgslsmith_f_op_f32(-var_1.c.x)));
    return Struct_2(global0.a);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<u32>) -> f32 {
    let var_0 = Struct_3(_wgslsmith_add_vec4_i32(select(-_wgslsmith_clamp_vec4_i32(vec4<i32>(global1.d, 2147483647i, -9598i, 2902i), vec4<i32>(0i, global1.b.b.x, -2147483647i, global1.b.b.x), global1.b.b), vec4<i32>(1i, max(43253i, 946i), abs(-38938i), global1.b.a), vec4<bool>(global1.c.x | global1.c.x, false, global1.b.d != false, true)), _wgslsmith_clamp_vec4_i32(global1.a, -global1.a, firstTrailingBit(vec4<i32>(global1.a.x, -1i, global1.b.a, global1.b.b.x)))), global1.b, !global1.c, ~(-2147483647i));
    global1 = Struct_3(countOneBits(_wgslsmith_add_vec4_i32(global1.a, max(global1.a, global1.b.b & vec4<i32>(var_0.b.a, 0i, global1.d, 58411i)))), global1.b, select(!vec4<bool>(false, false || var_0.c.x, all(global1.c.yx), var_0.b.e.x >= 1u), select(!select(vec4<bool>(true, true, true, var_0.b.d), vec4<bool>(var_0.b.d, var_0.c.x, var_0.b.d, global1.c.x), var_0.b.d), select(vec4<bool>(var_0.c.x, false, true, false), vec4<bool>(true, false, var_0.b.d, var_0.b.d), var_0.b.c.x == 1354f), var_0.c.x), all(vec4<bool>(any(var_0.c), any(vec3<bool>(var_0.b.d, false, true)), !var_0.c.x, func_4(arg_1.x, arg_0, vec3<bool>(true, global1.c.x, global1.c.x), 38718u)))), _wgslsmith_sub_i32(34805i, 1i));
    global0 = Struct_2(vec2<f32>(-157f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.c.x) * 209f) + _wgslsmith_f_op_f32(-global0.a.x))));
    global1 = Struct_3(global1.a, Struct_1(-2147483647i, vec4<i32>(-8543i, i32(-1i) * -36335i, ~_wgslsmith_clamp_i32(global1.b.a, 8449i, 17426i), -_wgslsmith_clamp_i32(-21529i, 2147483647i, 2147483647i)), var_0.b.c, all(!vec4<bool>(false, var_0.b.d, global1.b.d, var_0.c.x)), ~var_0.b.e), vec4<bool>(true, arg_1.x < max(min(1u, var_0.b.e.x), 1u), true, false), abs(~_wgslsmith_dot_vec2_i32(var_0.a.zw << (vec2<u32>(u_input.a, 66104u) % vec2<u32>(32u)), vec2<i32>(global1.d, global1.d))));
    let var_1 = Struct_3(abs(vec4<i32>(2147483647i, _wgslsmith_dot_vec2_i32(var_0.b.b.zx, vec2<i32>(var_0.d, global1.d) << (global1.b.e.xy % vec2<u32>(32u))), var_0.d, global1.d)), global1.b, select(!global1.c, vec4<bool>(true, true, false, global1.c.x), var_0.c), -1i);
    return var_0.b.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.b.e;
    var var_1 = reverseBits(-_wgslsmith_clamp_vec4_i32(global1.a, global1.a, global1.b.b));
    var var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.a.x)))), _wgslsmith_f_op_f32(floor(2104f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -569f) + _wgslsmith_f_op_f32(func_5(func_1(), vec2<u32>(1u, 1u)))), -557f, _wgslsmith_f_op_f32(max(global0.a.x, global0.a.x)));
    global0 = Struct_2(var_2.zw);
    global0 = Struct_2(global1.b.c.yy);
    var var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.a.x), global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-738f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.x, 151f, 588f), var_2.zyx)))))));
    var var_4 = Struct_4(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1.b.c.x, global0.a.x, global0.a.x), vec3<f32>(839f, 302f, global0.a.x))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(var_3.a)))), vec3<bool>(true, true, false))))));
    let var_5 = _wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(2654u, var_0.x), abs(u_input.a), 4294967295u))), vec2<u32>(~global1.b.e.x, ~_wgslsmith_add_u32(global1.b.e.x, 1200u)));
    var var_6 = var_2.ywy;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_add_vec2_u32(~var_0.yy, select(global1.b.e.zx, global1.b.e.xx, true))), ~1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -236f)))), -1358f, reverseBits(var_1.wxz));
}

