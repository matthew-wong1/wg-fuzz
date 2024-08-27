struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_3) -> vec3<f32> {
    global0 = Struct_2(_wgslsmith_sub_i32(arg_0.d.x, _wgslsmith_mod_i32(~arg_0.d.x & -global0.a, _wgslsmith_sub_i32(arg_0.d.x >> (87370u % 32u), global0.b.d.x))), global0.b, Struct_1(select(global0.b.b.zxw, arg_0.a, true), arg_0.b, vec3<u32>(0u, _wgslsmith_div_u32(firstTrailingBit(41951u), firstTrailingBit(global0.b.c.x)), firstLeadingBit(43378u)), min(arg_0.d, countOneBits(~vec3<i32>(global0.a, arg_0.d.x, -1i)))));
    return _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -420f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1860f - 1429f)), _wgslsmith_f_op_f32(-1565f + 327f)), vec3<f32>(_wgslsmith_f_op_f32(-611f * _wgslsmith_f_op_f32(max(1451f, 801f))), 1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-645f, 1000f)))), select(!vec3<bool>(true, false, arg_0.b.x), !select(global0.c.a, global0.b.a, global0.c.a), vec3<bool>(true, global0.b.a.x, select(arg_2.a.x, false, global0.b.b.x)))))));
}

fn func_2(arg_0: u32, arg_1: Struct_3) -> vec4<bool> {
    let var_0 = all(global0.b.b);
    let var_1 = global0.c;
    var var_2 = ~(~(~0u));
    global0 = Struct_2(abs(-62020i), global0.b, Struct_1(vec3<bool>(all(select(vec3<bool>(false, arg_1.a.x, var_0), var_1.b.wwx, false)), var_0, true), vec4<bool>(!var_1.b.x, var_1.a.x, true, var_1.a.x), ~global0.c.c, vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.b.d.x, u_input.b, var_1.d.x), -vec3<i32>(0i, -1i, -67998i)), ~global0.a, global0.a)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(global0.c, max(1u, 109357u), Struct_3(vec2<bool>(true, true)))));
    return select(!var_1.b, select(vec4<bool>(arg_0 < (arg_0 << (arg_0 % 32u)), true, false, arg_1.a.x), vec4<bool>(false, any(!vec3<bool>(false, global0.b.b.x, false)), true, true), any(global0.c.b.yzy)), var_1.d.x <= global0.b.d.x);
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> bool {
    global0 = arg_0;
    var var_0 = arg_0.c;
    global0 = Struct_2(u_input.b, Struct_1(arg_0.b.b.zyw, func_2(~_wgslsmith_add_u32(59189u, u_input.a.x), Struct_3(global0.b.b.yw)), select(vec3<u32>(4294967295u, 42964u | arg_0.b.c.x, ~95807u), u_input.a.wxw, false), vec3<i32>(abs(-13501i), global0.c.d.x, ~1i)), global0.c);
    return arg_0.c.a.x;
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: bool, arg_3: vec4<bool>) -> u32 {
    var var_0 = firstTrailingBit(select(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1860i, -5458i, 73777i, 1i) & vec4<i32>(2147483647i, -1i, global0.c.d.x, 2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(-20727i, global0.b.d.x, global0.c.d.x, u_input.b), vec4<i32>(global0.a, -1i, 2147483647i, u_input.b))), -32424i ^ ~arg_1), abs(u_input.b), 1i >= (-arg_1 << (_wgslsmith_mod_u32(1u, 4294967295u) % 32u))));
    let var_1 = global0.c.b.x;
    var_0 = _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(14579i, -23733i, 2147483647i, global0.b.d.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, arg_1, 42861i, u_input.b) ^ vec4<i32>(global0.b.d.x, global0.c.d.x, u_input.b, u_input.b), -vec4<i32>(-2147483647i, 0i, 0i, global0.b.d.x))), i32(-1i) * -1i) << (((global0.c.c.x | u_input.a.x) >> (61880u % 32u)) % 32u);
    var_0 = _wgslsmith_dot_vec2_i32(~firstTrailingBit(vec2<i32>(global0.c.d.x, _wgslsmith_mod_i32(u_input.b, -3683i))), global0.b.d.xy);
    let var_2 = _wgslsmith_clamp_vec3_i32(~vec3<i32>(abs(global0.c.d.x), arg_1, i32(-1i) * -16778i), (vec3<i32>(-2147483647i, -u_input.b, ~arg_1) ^ -(~vec3<i32>(u_input.b, u_input.b, u_input.b))) << (~vec3<u32>(38404u, _wgslsmith_sub_u32(7391u, global0.c.c.x), 1u) % vec3<u32>(32u)), global0.b.d | ~_wgslsmith_sub_vec3_i32(global0.c.d, ~global0.c.d));
    return ~4294967295u;
}

fn func_5(arg_0: u32) -> Struct_3 {
    var var_0 = Struct_2(global0.a, global0.c, Struct_1(!global0.c.b.zxz, global0.b.b, global0.b.c, ((vec3<i32>(1i, u_input.b, global0.b.d.x) | vec3<i32>(global0.b.d.x, 44427i, -1i)) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.a.x, u_input.a.x), u_input.a.www, global0.b.c) % vec3<u32>(32u))) >> (u_input.a.wxw % vec3<u32>(32u))));
    let var_1 = Struct_2(_wgslsmith_mult_i32(-u_input.b, 1i), var_0.c, global0.b);
    var var_2 = !vec4<bool>(global0.c.b.x, true, false | var_1.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(308f, -1103f, var_0.b.b.x)) - _wgslsmith_f_op_f32(-898f - -1000f)) != -1133f);
    global0 = Struct_2(reverseBits(var_1.b.d.x ^ ~(-var_1.a)), Struct_1(var_2.ywx, vec4<bool>(all(vec2<bool>(var_1.b.b.x, global0.c.b.x)), (var_0.c.d.x ^ -2147483647i) < -28420i, global0.c.b.x, func_2(arg_0 << (arg_0 % 32u), Struct_3(global0.b.b.xy)).x), _wgslsmith_mod_vec3_u32(u_input.a.xyw, _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(var_1.c.c, vec3<u32>(0u, u_input.a.x, 17595u)), _wgslsmith_sub_vec3_u32(vec3<u32>(14995u, var_1.c.c.x, 4294967295u), var_0.c.c))), var_1.b.d), Struct_1(select(select(var_0.b.a, select(var_0.b.b.wzx, vec3<bool>(false, false, false), var_0.b.a.x), var_2.x), !global0.c.a, !var_1.c.a), var_0.b.b, ~_wgslsmith_mult_vec3_u32(~vec3<u32>(9878u, 4294967295u, global0.c.c.x), var_0.c.c), var_0.c.d));
    var var_3 = var_1;
    return Struct_3(!vec2<bool>(var_0.c.b.x, any(global0.b.a.yy)));
}

fn func_6(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_3, arg_3: Struct_1) -> vec2<bool> {
    global0 = Struct_2(_wgslsmith_dot_vec4_i32(select(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_3.d.x, -1i, -51342i, 2147483647i), vec4<i32>(-1i, arg_3.d.x, 2147483647i, global0.a), vec4<i32>(global0.c.d.x, 2147483647i, 25113i, -1i))), ~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.b, 8406i, 2147483647i), vec4<i32>(0i, 2147483647i, -2147483647i, -54617i)), arg_2.a.x), reverseBits(vec4<i32>(-1i) * -vec4<i32>(u_input.b, u_input.b, arg_3.d.x, 24556i))), arg_3, Struct_1(global0.b.b.zwz, select(vec4<bool>(func_2(arg_1, arg_2).x, false, true, !global0.c.a.x), arg_3.b, !global0.c.b), vec3<u32>(global0.c.c.x, u_input.a.x, _wgslsmith_mult_u32(~18546u, 1u)), _wgslsmith_mod_vec3_i32(abs(vec3<i32>(arg_3.d.x, -57137i, u_input.b)) >> (_wgslsmith_add_vec3_u32(arg_3.c, vec3<u32>(45168u, 4294967295u, 189u)) % vec3<u32>(32u)), -vec3<i32>(global0.a, u_input.b, -7804i))));
    let var_0 = arg_3;
    return vec2<bool>(any(vec3<bool>(func_5(arg_3.c.x).a.x, !arg_2.a.x, true)) && !all(vec2<bool>(global0.c.b.x, global0.c.a.x)), _wgslsmith_f_op_f32(abs(2614f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, arg_3.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -370f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_6(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1151f, 1727f) + vec2<f32>(-429f, -745f)), vec2<f32>(2025f, -411f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1613f, 435f), vec2<f32>(305f, 908f), global0.b.a.yx)), vec2<f32>(569f, -2316f))), global0.c.c.x, func_5(func_4(_wgslsmith_f_op_f32(-1000f - 113f), global0.b.d.x, func_1(Struct_2(u_input.b, global0.c, global0.c), 570f), vec4<bool>(global0.c.a.x, global0.c.a.x, true, true))), Struct_1(vec3<bool>(global0.b.b.x, false, !global0.b.b.x), !select(global0.b.b, vec4<bool>(true, true, false, true), vec4<bool>(global0.c.a.x, false, global0.b.a.x, global0.c.a.x)), vec3<u32>(firstTrailingBit(1u), ~global0.b.c.x, 1u), vec3<i32>(u_input.b, -1i, u_input.b))));
    global0 = Struct_2(firstLeadingBit(1i), global0.b, Struct_1(func_2(13794u, func_5(_wgslsmith_div_u32(1u, 4294967295u))).xyx, !(!(!global0.b.b)), u_input.a.xzx, ~global0.b.d));
    var var_1 = vec4<bool>(!global0.c.b.x, true, true, var_0.a.x);
    global0 = Struct_2(u_input.b, Struct_1(!select(select(global0.b.a, global0.c.b.wxy, global0.c.a), vec3<bool>(false, var_1.x, global0.c.b.x), !vec3<bool>(false, true, var_0.a.x)), select(!global0.b.b, global0.b.b, var_0.a.x), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, _wgslsmith_clamp_u32(global0.b.c.x, global0.c.c.x, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, global0.c.c.x, 76063u), u_input.a)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.c.c.x, 1u, 1u), global0.b.c), global0.b.c.x, ~44085u)), abs(abs(global0.c.d)) << (abs(select(vec3<u32>(4294967295u, global0.b.c.x, global0.b.c.x), vec3<u32>(0u, 0u, u_input.a.x), true)) % vec3<u32>(32u))), global0.c);
    var_1 = global0.b.b;
    var var_2 = (global0.b.d.x == firstLeadingBit(0i)) && var_1.x;
    var var_3 = select(~vec2<u32>(~global0.c.c.x, ~0u), abs(abs(vec2<u32>(0u, global0.b.c.x)) & u_input.a.yw), var_1.xw) << (vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(4294967295u, 39030u, 4294967295u, 34006u)), _wgslsmith_add_vec4_u32(u_input.a, u_input.a), _wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.a.x, global0.c.c.x, global0.b.c.x), u_input.a)), ~abs(u_input.a)), ~global0.b.c.x) % vec2<u32>(32u));
    var_3 = _wgslsmith_div_vec2_u32(abs(countOneBits(~max(global0.c.c.zx, global0.b.c.xz))), _wgslsmith_mod_vec2_u32(vec2<u32>(~1u, _wgslsmith_div_u32(4294967295u, 1u)), u_input.a.yx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(func_3(global0.c, 69319u, Struct_3(!(!vec2<bool>(global0.c.a.x, var_0.a.x))))).x, vec4<i32>(~(-select(global0.b.d.x, 0i, var_0.a.x)), i32(-1i) * -1i, 2147483647i, 36009i), 17018u, -global0.c.d.xz, 1f);
}

