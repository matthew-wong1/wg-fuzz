struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec4<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global1: vec2<u32>;

var<private> global2: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(vec4<bool>(false, false, true, true)), Struct_3(vec4<bool>(false, false, false, true)), Struct_3(vec4<bool>(true, false, false, true)), Struct_3(vec4<bool>(true, false, false, false)), Struct_3(vec4<bool>(true, false, true, false)), Struct_3(vec4<bool>(true, true, false, false)), Struct_3(vec4<bool>(true, false, true, false)), Struct_3(vec4<bool>(false, true, true, true)), Struct_3(vec4<bool>(true, true, false, true)), Struct_3(vec4<bool>(true, false, true, true)), Struct_3(vec4<bool>(true, true, true, false)), Struct_3(vec4<bool>(false, true, false, false)), Struct_3(vec4<bool>(false, true, true, true)), Struct_3(vec4<bool>(false, true, true, true)), Struct_3(vec4<bool>(false, false, true, false)));

var<private> global3: vec4<i32>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: Struct_1) -> f32 {
    let var_0 = ~(~(~global1.x));
    var var_1 = ~_wgslsmith_add_i32(32695i, _wgslsmith_clamp_i32(~select(arg_1, -1i, true), 14934i, abs(_wgslsmith_clamp_i32(arg_1, u_input.a.x, arg_1))));
    let var_2 = countOneBits(vec3<u32>(~countOneBits(64112u), ~var_0, 1u));
    var var_3 = -1492f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1841f + -1271f))))));
    var var_4 = ~firstTrailingBit(39722u);
    return 1297f;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: vec4<bool>, arg_3: vec2<i32>) -> vec4<f32> {
    let var_0 = Struct_3(arg_2);
    var var_1 = Struct_2(~_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global3.x, 1i, -2147483647i, 0i), vec4<i32>(-10999i, 12354i, global3.x, arg_3.x)), firstLeadingBit(vec4<i32>(0i, arg_3.x, 80851i, -9032i))), _wgslsmith_add_i32(1i, -2147483647i), firstLeadingBit(-2147483647i << (global1.x % 32u))));
    let var_2 = select(select(global0.xzz, !vec3<bool>(true, false, all(global0.xzw)), !select(vec3<bool>(arg_0, var_0.a.x, true), vec3<bool>(true, global0.x, arg_0), false)), !select(select(arg_2.xzz, vec3<bool>(var_0.a.x, arg_0, var_0.a.x), arg_2.xzw), vec3<bool>(true, true, true), select(select(global0.zzx, global0.zzx, true), select(vec3<bool>(var_0.a.x, arg_0, false), vec3<bool>(var_0.a.x, false, global0.x), arg_2.xzx), vec3<bool>(global0.x, arg_0, false))), any(select(select(select(global0.zyx, var_0.a.xxz, vec3<bool>(true, false, false)), select(vec3<bool>(true, arg_0, var_0.a.x), vec3<bool>(true, arg_0, arg_2.x), true), true), !select(vec3<bool>(arg_2.x, global0.x, arg_0), vec3<bool>(false, arg_2.x, false), vec3<bool>(true, global0.x, arg_2.x)), vec3<bool>(all(arg_2), false, all(vec3<bool>(true, global0.x, true))))));
    var var_3 = abs(abs(global3.zwy));
    let var_4 = Struct_2(~(~_wgslsmith_sub_i32(-30032i, arg_3.x)));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-617f)), arg_1), _wgslsmith_f_op_f32(min(-217f, _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(ceil(1115f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-140f, -358f, 1034f, arg_1)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(232f, arg_1, arg_1, -160f))), vec4<f32>(1440f, _wgslsmith_f_op_f32(arg_1 * -232f), _wgslsmith_f_op_f32(arg_1 * 242f), -922f), true))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>) -> f32 {
    global2 = array<Struct_3, 15>();
    global1 = vec2<u32>(4294967295u, 2906u);
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(!(_wgslsmith_f_op_f32(select(-737f, -443f, arg_1.x)) <= _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0, _wgslsmith_mod_i32(global3.x, 2147483647i), true, Struct_1(arg_0.a, vec2<u32>(4294967295u, global1.x), arg_1, vec4<u32>(global1.x, global1.x, u_input.b.x, u_input.d.x))))), select(select(!arg_1, !vec4<bool>(true, global0.x, true, true), vec4<bool>(false, arg_0.a, arg_0.a, arg_1.x)), !(!arg_0.c), any(select(vec3<bool>(arg_0.c.x, true, arg_1.x), arg_0.c.wwy, global0.x))), firstLeadingBit(-_wgslsmith_div_vec2_i32(vec2<i32>(-28781i, 19420i), u_input.a.yz)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1297f, -279f, 308f) * vec4<f32>(-416f, -388f, -308f, -1459f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-777f, 1225f, 908f, 918f))) + _wgslsmith_f_op_vec4_f32(func_4(false, _wgslsmith_f_op_f32(f32(-1f) * -1000f), !arg_1, u_input.a.yx | vec2<i32>(u_input.c, global3.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(724f, -460f, 1000f, 226f), vec4<f32>(811f, 1098f, -1000f, 106f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1273f, -428f, 377f, 1349f))), !arg_0.c)))));
    let var_1 = Struct_2(14209i);
    let var_2 = select(select(vec2<bool>(true, true), global0.yy, global0.x), arg_1.xw, arg_0.c.yy);
    return 322f;
}

fn func_1() -> Struct_2 {
    var var_0 = -(-_wgslsmith_dot_vec2_i32(select(global3.zz, vec2<i32>(-1i, u_input.a.x), vec2<bool>(global0.x, global0.x)), _wgslsmith_clamp_vec2_i32(vec2<i32>(global3.x, global3.x), vec2<i32>(-26873i, u_input.a.x), u_input.a.xx)) | (-global3.x >> (u_input.b.x % 32u)));
    global1 = select(reverseBits(u_input.b.xx), _wgslsmith_mult_vec2_u32(~(vec2<u32>(77808u, 2634u) ^ vec2<u32>(u_input.d.x, 63010u)), select(vec2<u32>(1u, 21391u) << (vec2<u32>(u_input.d.x, 1u) % vec2<u32>(32u)), vec2<u32>(16100u, global1.x) << (u_input.b.xx % vec2<u32>(32u)), global0.x) | ~u_input.d.yy), all(global0.zzz));
    var var_1 = global3.zxx;
    let var_2 = any(!global0.yy);
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(true, vec2<u32>(global1.x, 3246u), vec4<bool>(var_2, true, global0.x, true), vec4<u32>(u_input.d.x, u_input.d.x, global1.x, 11698u)), vec4<bool>(true, true, true, true)))))), _wgslsmith_f_op_f32(409f + 1f), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -327f) + 377f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-521f + 1000f)))));
    return Struct_2(min(1i, var_1.x));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_2 {
    let var_0 = u_input.d.x;
    var var_1 = select(select(vec4<bool>(true, arg_1.x, !all(vec4<bool>(arg_1.x, global0.x, false, false)), !(!global0.x)), select(!(!arg_1), vec4<bool>(true, global0.x, true, false), true), vec4<bool>(select(true, u_input.b.x <= global1.x, arg_1.x), all(!global0.zyy), !any(vec3<bool>(arg_1.x, false, global0.x)), ~u_input.b.x <= ~global1.x)), !select(arg_1, vec4<bool>(global0.x, arg_1.x, global0.x, true), !(!arg_1.x)), select(arg_1, !select(select(vec4<bool>(global0.x, false, arg_1.x, false), arg_1, arg_1), vec4<bool>(true, global0.x, true, arg_1.x), global0.x), select(select(arg_1, !vec4<bool>(global0.x, false, false, global0.x), select(arg_1, vec4<bool>(global0.x, true, arg_1.x, true), arg_1)), vec4<bool>(!global0.x, !global0.x, true, all(vec3<bool>(false, arg_1.x, false))), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, u_input.b.x), vec2<u32>(1u, global1.x)) == var_0)));
    global0 = select(arg_1, !(!vec4<bool>(any(global0.xyz), var_0 == 0u, true, true)), select(select(arg_1, vec4<bool>(true, true, true, true), vec4<bool>(true, select(arg_1.x, arg_1.x, false), true, false)), arg_1, any(select(select(var_1.yx, vec2<bool>(false, var_1.x), true), vec2<bool>(var_1.x, true), true))));
    global2 = array<Struct_3, 15>();
    global0 = select(select(!vec4<bool>(all(arg_1), true, var_1.x, arg_1.x & true), vec4<bool>(arg_1.x, true, global0.x, !any(global0.wx)), select(arg_1, !arg_1, vec4<bool>(all(vec4<bool>(arg_1.x, global0.x, true, false)), false, any(vec3<bool>(arg_1.x, arg_1.x, var_1.x)), false))), vec4<bool>(!all(var_1.zzx), false, true, !(any(vec2<bool>(arg_1.x, var_1.x)) || all(vec3<bool>(false, var_1.x, false)))), vec4<bool>(!(!arg_1.x), 4294967295u <= max(1u ^ global1.x, 36798u), global0.x, true));
    return arg_0;
}

fn func_6(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(!(!(82933u == global1.x)), u_input.d.zz, select(arg_0.a, vec4<bool>(~4516u <= _wgslsmith_dot_vec3_u32(arg_1.zzy, vec3<u32>(1313u, arg_2, 70463u)), !any(vec2<bool>(arg_0.a.x, true)), true, true), !arg_0.a), ~select(_wgslsmith_clamp_vec4_u32(u_input.b, u_input.b, vec4<u32>(arg_1.x, 34566u, global1.x, u_input.d.x)), vec4<u32>(arg_1.x, 23363u, 0u, 0u) >> (vec4<u32>(u_input.b.x, arg_2, arg_1.x, 1u) % vec4<u32>(32u)), true) << (abs(~u_input.b) % vec4<u32>(32u)));
    global3 = _wgslsmith_div_vec4_i32(abs(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, global3.x, -12970i, arg_3.a), vec4<i32>(30752i, global3.x, -1i, arg_3.a)), -1i), ~arg_3.a, ~global3.x, firstLeadingBit(arg_3.a | u_input.c))), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_add_i32(global3.x & -2147483647i, -17274i >> (0u % 32u)), func_1().a, 33997i, u_input.a.x), ~(~(-vec4<i32>(20469i, 1i, u_input.a.x, arg_3.a)))));
    var var_1 = func_5(func_5(Struct_2(-global3.x), vec4<bool>(any(vec4<bool>(var_0.a, false, global0.x, arg_0.a.x)), true, true, any(var_0.c.wx))), select(arg_0.a, !select(vec4<bool>(var_0.c.x, false, false, var_0.a), var_0.c, arg_0.a), ~arg_2 < u_input.b.x)).a & 2147483647i;
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -616f)));
    return Struct_1(true, ~(~(~vec2<u32>(1u, 1u))), var_0.c, ~(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2, 4294967295u, 0u, 71176u), vec4<u32>(arg_1.x, 19086u, u_input.b.x, var_0.d.x)) >> ((vec4<u32>(57546u, u_input.b.x, arg_2, arg_2) & vec4<u32>(1404u, arg_1.x, 72500u, arg_2)) % vec4<u32>(32u))) | (reverseBits(vec4<u32>(arg_1.x, u_input.b.x, arg_1.x, arg_2) | vec4<u32>(0u, arg_2, 27334u, 18491u)) ^ _wgslsmith_div_vec4_u32(vec4<u32>(global1.x, 4840u, u_input.d.x, 27223u), max(vec4<u32>(4294967295u, 1u, 12681u, arg_1.x), vec4<u32>(global1.x, 0u, var_0.d.x, 0u)))));
}

fn func_7(arg_0: Struct_1, arg_1: bool, arg_2: vec4<u32>, arg_3: u32) -> Struct_1 {
    global0 = !arg_0.c;
    let var_0 = Struct_3(arg_0.c);
    global0 = vec4<bool>(4294967295u == ~func_6(Struct_3(arg_0.c), vec4<u32>(arg_3, global1.x, arg_0.d.x, arg_3), 4294967295u, func_5(Struct_2(-1i), var_0.a)).b.x, true & !arg_1, arg_1, !global0.x);
    let var_1 = u_input.d;
    global3 = _wgslsmith_div_vec4_i32(vec4<i32>(~1i, -55477i, _wgslsmith_dot_vec2_i32(u_input.a.xx, global3.xy) ^ u_input.c, _wgslsmith_dot_vec2_i32(-global3.wy, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, -2147483647i), vec2<i32>(-14939i, -2147483647i)))), _wgslsmith_div_vec4_i32((vec4<i32>(global3.x, -15358i, global3.x, -1i) & vec4<i32>(global3.x, global3.x, 21524i, global3.x)) << (vec4<u32>(15925u, arg_2.x, 53604u, global1.x) % vec4<u32>(32u)), ~(~vec4<i32>(u_input.c, -24206i, u_input.a.x, u_input.a.x)))) ^ (_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(1i, 2147483647i, 2147483647i, -2147483647i), vec4<i32>(-2147483647i, global3.x, 32377i, -2147483647i)), ~_wgslsmith_div_vec4_i32(vec4<i32>(1i, u_input.a.x, global3.x, 17964i), vec4<i32>(13927i, global3.x, 25693i, u_input.c))) & select(vec4<i32>(global3.x, 1i, 0i, u_input.c), ~abs(vec4<i32>(1i, global3.x, u_input.c, 2147483647i)), _wgslsmith_f_op_f32(trunc(1333f)) < 312f));
    return func_6(Struct_3(var_0.a), func_6(Struct_3(var_0.a), vec4<u32>(global1.x, firstLeadingBit(4294967295u) << (u_input.b.x % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(17901u, arg_2.x, 4294967295u, 67833u), vec4<u32>(arg_2.x, 32984u, arg_3, global1.x)), min(~1u, ~2025u)), 4294967295u, Struct_2(func_5(func_5(Struct_2(-1i), vec4<bool>(true, true, false, true)), !vec4<bool>(var_0.a.x, true, arg_0.a, arg_0.c.x)).a)).d, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.d.x, 26293u ^ arg_3, 4294967295u >> (arg_2.x % 32u), select(16280u, u_input.d.x, global0.x)), _wgslsmith_sub_vec4_u32(arg_2, ~vec4<u32>(u_input.b.x, arg_2.x, global1.x, u_input.b.x))), arg_0.d), func_5(func_5(Struct_2(firstLeadingBit(global3.x)), vec4<bool>(false, false, global0.x, global3.x < u_input.a.x)), var_0.a));
}

fn func_8(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(true, vec2<u32>(20023u, 0u), vec4<bool>(false, arg_2.c.x, false, true), vec4<u32>(4294967295u, u_input.b.x, 4294967295u, arg_2.d.x)), _wgslsmith_mult_i32(-22956i, u_input.c), !arg_0, arg_2))) * _wgslsmith_f_op_f32(831f * _wgslsmith_f_op_vec4_f32(func_4(func_7(Struct_1(arg_0, vec2<u32>(4294967295u, u_input.b.x), arg_2.c, vec4<u32>(global1.x, u_input.b.x, u_input.d.x, arg_2.d.x)), false, vec4<u32>(4294967295u, global1.x, global1.x, u_input.d.x), 0u).c.x, _wgslsmith_f_op_vec4_f32(func_4(arg_3.x, 1508f, vec4<bool>(false, true, arg_3.x, arg_3.x), vec2<i32>(u_input.a.x, global3.x))).x, vec4<bool>(true, true, true, true), _wgslsmith_mult_vec2_i32(u_input.a.zz, u_input.a.xz))).x)));
    var var_1 = func_6(global2[_wgslsmith_index_u32(4294967295u, 15u)], select(firstTrailingBit(_wgslsmith_sub_vec4_u32(arg_2.d, _wgslsmith_div_vec4_u32(arg_2.d, u_input.b))), vec4<u32>(max(46878u, _wgslsmith_dot_vec3_u32(u_input.b.xyw, vec3<u32>(29894u, u_input.b.x, 0u))), _wgslsmith_dot_vec2_u32(reverseBits(arg_2.b), u_input.d.yy), ~arg_2.b.x, ~(~43769u)), !func_6(Struct_3(arg_3), vec4<u32>(u_input.b.x, 41556u, arg_2.d.x, arg_2.b.x) | u_input.b, ~4294967295u, Struct_2(global3.x)).c), select(u_input.b.x, min(~(~u_input.b.x), arg_2.d.x), (firstTrailingBit(22181u) | 0u) >= max(~45072u, u_input.b.x)), func_1());
    global1 = ~var_1.b;
    var var_2 = vec2<u32>(u_input.b.x, var_1.b.x);
    let var_3 = func_7(func_7(arg_2, true || func_7(Struct_1(global0.x, u_input.b.wy, vec4<bool>(false, var_1.c.x, false, var_1.c.x), var_1.d), arg_3.x | false, countOneBits(var_1.d), var_2.x).c.x, ~(~vec4<u32>(var_2.x, u_input.d.x, 44123u, u_input.d.x) << ((u_input.b & vec4<u32>(var_2.x, 4294967295u, 62693u, 30892u)) % vec4<u32>(32u))), _wgslsmith_dot_vec4_u32(~(vec4<u32>(global1.x, 26189u, 14375u, 47054u) & u_input.b), ~(~var_1.d))), !(~(~arg_1.x) != countOneBits(-1i)), vec4<u32>(~countOneBits(_wgslsmith_mod_u32(33093u, var_1.d.x)), ~u_input.b.x, arg_2.d.x, _wgslsmith_mult_u32(var_1.d.x, 0u)), ~_wgslsmith_mod_u32(~arg_2.b.x, max(var_1.b.x, var_1.d.x)) >> (u_input.b.x % 32u));
    return Struct_2(_wgslsmith_add_i32(global3.x ^ _wgslsmith_sub_i32(u_input.a.x, 25230i), global3.x) >> (26246u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~(~firstLeadingBit(_wgslsmith_mult_vec3_u32(u_input.b.xyx, vec3<u32>(1u, u_input.d.x, global1.x)))));
    let var_1 = Struct_3(!select(vec4<bool>(true, any(vec2<bool>(global0.x, global0.x)), true, true), !select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(global0.x, false, global0.x, true), global0.x), select(vec4<bool>(false, global0.x, false, global0.x), vec4<bool>(false, false, true, global0.x), true)));
    var var_2 = func_8(true, global3.yy, func_7(func_6(Struct_3(var_1.a), reverseBits(~u_input.b), 17068u, func_5(func_1(), var_1.a)), true, vec4<u32>(~_wgslsmith_sub_u32(u_input.d.x, u_input.d.x), 1u, 43225u, 0u), global1.x), var_1.a);
    var_2 = Struct_2(~select(u_input.c, u_input.c, !var_1.a.x || false));
    var var_3 = false;
    global1 = _wgslsmith_div_vec2_u32(u_input.d.zy, select(vec2<u32>(_wgslsmith_div_u32(u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(8256u, global1.x, global1.x), var_0)), ~123855u), u_input.d.zx, vec2<bool>(func_7(func_6(Struct_3(vec4<bool>(global0.x, false, true, global0.x)), vec4<u32>(var_0.x, var_0.x, 9443u, var_0.x), 0u, Struct_2(-111670i)), var_1.a.x, u_input.b, _wgslsmith_dot_vec3_u32(var_0, vec3<u32>(1u, u_input.d.x, global1.x))).c.x, func_7(func_6(Struct_3(var_1.a), vec4<u32>(global1.x, 4294967295u, var_0.x, global1.x), 1u, Struct_2(var_2.a)), true, _wgslsmith_add_vec4_u32(vec4<u32>(global1.x, 0u, u_input.b.x, var_0.x), vec4<u32>(u_input.b.x, global1.x, global1.x, var_0.x)), u_input.d.x).a)));
    let var_4 = vec4<u32>(2440u | u_input.d.x, ~min(_wgslsmith_sub_u32(~4294967295u, select(u_input.d.x, var_0.x, true)), 0u), 1u & _wgslsmith_dot_vec3_u32(u_input.d, ~vec3<u32>(4294967295u, u_input.b.x, var_0.x)), _wgslsmith_add_u32(~_wgslsmith_sub_u32(~25633u, ~global1.x), ~19362u));
    let var_5 = _wgslsmith_mod_vec4_i32(select(vec4<i32>(2147483647i, var_2.a, global3.x, 64195i), -vec4<i32>(1i, global3.x, 60784i, -5226i), vec4<bool>(var_1.a.x, global0.x, false, false)) | abs(_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.a, var_2.a, 14085i, 46581i), vec4<i32>(0i, -1i, 0i, 0i))), ~select(vec4<i32>(global3.x, -2147483647i, 1i, 29595i), _wgslsmith_add_vec4_i32(vec4<i32>(9737i, var_2.a, -1i, global3.x), vec4<i32>(-1i, 28811i, 19236i, var_2.a)), all(vec4<bool>(true, true, false, var_1.a.x)))) ^ -firstTrailingBit(~vec4<i32>(-2695i, -1i, 0i, -2147483647i));
    let var_6 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~vec4<u32>(var_6.x, var_0.x, ~43056u, min(u_input.d.x, 4294967295u))), u_input.b.x, _wgslsmith_f_op_vec4_f32(func_4(false, 261f, vec4<bool>(~30729u < u_input.d.x, var_1.a.x, false, all(!var_1.a)), ~var_5.zz)).x, firstLeadingBit(_wgslsmith_div_vec4_i32(-vec4<i32>(var_2.a, u_input.c, 0i, -2147483647i), vec4<i32>(max(var_5.x, -2147483647i), -1i, u_input.a.x, ~var_5.x))));
}

