struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec2<i32> = vec2<i32>(36795i, 2147483647i);

var<private> global2: bool = true;

var<private> global3: u32;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec3<bool>, arg_2: f32) -> u32 {
    let var_0 = _wgslsmith_mult_vec4_i32(u_input.d, vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.e, -9335i, -1i, 12290i), max(vec4<i32>(global1.x, global1.x, -2147483647i, -1i), u_input.d), u_input.d));
    let var_1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -800f, 1000f) * vec3<f32>(-722f, 1000f, arg_2))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1173f, arg_0, 1942f), vec3<f32>(arg_2, arg_0, arg_2))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1065f) - arg_0), arg_0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2))))), -1i << (u_input.c % 32u), ~(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(21706u, u_input.c, 4294967295u, 8189u), vec4<u32>(4294967295u, 1u, u_input.b, u_input.b), vec4<u32>(u_input.a.x, u_input.b, 51946u, 0u)))), _wgslsmith_add_vec4_i32(var_0, min(~u_input.d, vec4<i32>(var_0.x, _wgslsmith_sub_i32(var_0.x, 17492i), 2147483647i, global0.x >> (u_input.a.x % 32u)))));
    global0 = -countOneBits(_wgslsmith_clamp_vec2_i32(select(abs(vec2<i32>(u_input.e, global0.x)), _wgslsmith_div_vec2_i32(u_input.d.yy, vec2<i32>(var_1.d.x, -5203i)), false), ~min(vec2<i32>(1i, u_input.e), u_input.d.xy), u_input.d.zz));
    global0 = vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(~(vec2<i32>(u_input.d.x, var_1.d.x) << (vec2<u32>(u_input.a.x, 4294967295u) % vec2<u32>(32u))), var_1.d.yx);
    let var_2 = arg_1.xy;
    return 1u & u_input.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32, arg_3: Struct_1) -> vec3<bool> {
    global1 = vec2<i32>(-arg_3.b, 2352i);
    var var_0 = select(vec3<bool>(any(vec2<bool>(true, true)), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false)), true)), any(vec2<bool>(true, false)) & !(u_input.a.x > u_input.c)), vec3<bool>(false, true, all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true)))), select(vec3<bool>(!all(vec3<bool>(true, true, true)), _wgslsmith_div_i32(1i, -1i) >= arg_3.d.x, true), select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), vec3<bool>(true, all(vec2<bool>(true, true)), 550f > arg_0.a.x), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), false))), true));
    let var_1 = arg_1;
    var var_2 = _wgslsmith_clamp_vec4_i32(max(~vec4<i32>(_wgslsmith_clamp_i32(-23955i, u_input.e, 2147483647i), ~var_1.a.d.x, u_input.d.x, arg_3.d.x), arg_3.d), select(vec4<i32>(max(1i, 0i << (arg_3.c.x % 32u)), _wgslsmith_add_i32(-14165i, arg_0.d.x), -(~(-2147483647i)), arg_3.b ^ ~arg_3.b), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(1i, 1i, arg_3.b, 2619i), -vec4<i32>(-43139i, 2147483647i, global1.x, 1i)), arg_0.d, u_input.d), true), _wgslsmith_sub_vec4_i32(-arg_3.d, vec4<i32>(-1i, global0.x, -1i, ~(~arg_0.d.x))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(arg_0.a + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(718f, arg_3.a.x, var_1.a.a.x), vec3<f32>(arg_0.a.x, -550f, 737f))))))), select(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(var_1.a.d.yw, arg_1.a.d.yw), arg_3.d.yw), global1.x, 1i & (global1.x ^ 0i)), _wgslsmith_mod_i32(arg_0.b, -7657i), !var_0.x), vec4<u32>(_wgslsmith_clamp_u32(1u, u_input.c, ~u_input.c), 4294967295u, abs(reverseBits(arg_1.a.c.x)), ~countOneBits(arg_2) >> ((~arg_3.c.x << (0u % 32u)) % 32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_1.a.d.x, abs(global0.x), -1i, 1i), reverseBits(vec4<i32>(arg_1.a.b, arg_0.b, u_input.d.x, 1474i) | vec4<i32>(arg_3.b, -11494i, global0.x, -1i)) & vec4<i32>(~arg_3.d.x, -42638i, firstTrailingBit(arg_0.d.x), ~var_2.x)));
    return select(!vec3<bool>(true, var_0.x, !(721f == var_3.a.x)), !(!(!select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, false, false), false))), var_0.x);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> f32 {
    var var_0 = select(vec3<bool>(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), true), true)), true, true), func_4(arg_0, Struct_2(Struct_1(vec3<f32>(860f, -244f, arg_2.x), ~arg_1.d.x, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.b, arg_1.c.x, u_input.a.x), vec4<u32>(23180u, 0u, arg_0.c.x, u_input.c)), vec4<i32>(1i, -2147483647i, -1i, global0.x))), _wgslsmith_div_u32(4294967295u, _wgslsmith_mod_u32(29592u, func_3(323f, vec3<bool>(false, true, false), arg_2.x))), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(arg_1.a, vec3<f32>(1000f, arg_2.x, -1168f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.a.x, arg_2.x, 1000f)))), -_wgslsmith_mod_i32(global0.x, -1i), arg_1.c, select(-arg_0.d, vec4<i32>(global1.x, -31897i, global0.x, global1.x), any(vec4<bool>(true, true, true, true))))), true);
    var var_1 = arg_0.a.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1756f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)))));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1023f, -1712f, 1000f) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-568f, -1000f, -980f)))), vec3<f32>(-349f, -1240f, _wgslsmith_f_op_f32(func_2(Struct_1(vec3<f32>(-566f, -289f, -987f), global1.x, vec4<u32>(u_input.c, 9455u, 1u, u_input.c), vec4<i32>(global1.x, global1.x, global1.x, global0.x)), Struct_1(vec3<f32>(-252f, -256f, -633f), u_input.e, vec4<u32>(u_input.a.x, u_input.b, u_input.c, 23147u), u_input.d), vec2<f32>(344f, -1824f)))))), ~firstTrailingBit(abs(14938i)), firstLeadingBit(~(~vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, 0u))), ~u_input.d);
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, 589f, var_0.a.x) * vec3<f32>(825f, var_0.a.x, -534f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-363f, var_0.a.x, var_0.a.x))))))), ~(~(max(0i, -34640i) | var_0.d.x)), vec4<u32>(74619u, func_3(var_0.a.x, select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), 1044f), 121183u, countOneBits(var_0.c.x)) << (_wgslsmith_mod_vec4_u32(var_0.c, vec4<u32>(~0u, 17888u << (u_input.a.x % 32u), _wgslsmith_add_u32(6713u, var_0.c.x), u_input.b)) % vec4<u32>(32u)), vec4<i32>(reverseBits(0i), 1i, firstLeadingBit(max(32091i, -10366i)) ^ ~abs(global1.x), ~(-2147483647i)));
    global1 = ~var_0.d.wz;
    global0 = vec2<i32>((_wgslsmith_clamp_i32(abs(-5274i), u_input.d.x, i32(-1i) * -1i) >> (1u % 32u)) ^ -5203i, ~(-2147483647i));
    global3 = u_input.c;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.a.x, 664f)), _wgslsmith_f_op_vec3_f32(floor(var_0.a))))), u_input.d.x, _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(1u, 32530u, var_0.c.x, u_input.a.x)), ~(~vec4<u32>(u_input.c, var_0.c.x, 19790u, 23957u))), ~(~vec4<i32>(0i, global1.x, 1i, 43352i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global2 = true;
    let var_1 = func_1();
    let var_2 = false;
    let var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.a.x, 1f, _wgslsmith_f_op_f32(-var_1.a.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-376f)) * _wgslsmith_f_op_f32(-1625f - var_1.a.a.x))))));
    let var_4 = Struct_2(Struct_1(vec3<f32>(967f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.a.x, var_1.a.a.x)), _wgslsmith_f_op_f32(-var_3.x)), u_input.e, ~(~vec4<u32>(0u, 25363u, 35832u, 17563u)) ^ vec4<u32>(0u, _wgslsmith_dot_vec2_u32(var_1.a.c.xx, var_1.a.c.wx), 30236u, ~1u), -max(u_input.d, u_input.d) << (var_1.a.c % vec4<u32>(32u))));
    let var_5 = i32(-1i) * -32330i;
    let var_6 = _wgslsmith_dot_vec3_u32(var_4.a.c.xxx, var_4.a.c.zwz) ^ func_1().a.c.x;
    var_0 = !func_4(Struct_1(_wgslsmith_f_op_vec3_f32(ceil(var_4.a.a)), firstLeadingBit(-16505i), vec4<u32>(var_6, firstLeadingBit(var_1.a.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_4.a.c.x, 4294967295u, 10453u, var_4.a.c.x), vec4<u32>(var_6, 138777u, 4294967295u, 0u)), 1u), u_input.d | vec4<i32>(0i, 26006i, -1i, 8967i)), func_1(), var_6, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(646f, var_3.x, var_3.x) * _wgslsmith_f_op_vec3_f32(-var_1.a.a)), -16249i, max(vec4<u32>(var_1.a.c.x, 0u, u_input.b, 4294967295u), vec4<u32>(0u, var_4.a.c.x, 33739u, 49816u)) & (var_1.a.c << (var_4.a.c % vec4<u32>(32u))), reverseBits(select(vec4<i32>(var_1.a.d.x, -1i, 11926i, 0i), vec4<i32>(var_5, 0i, -10769i, 1i), var_2)))).x;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.c.x, _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(~firstLeadingBit(u_input.d), u_input.d), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, _wgslsmith_sub_i32(global0.x, var_1.a.b), -13755i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, u_input.e), vec2<i32>(global1.x, var_5))), ~vec4<i32>(u_input.e, 64i, global1.x, var_4.a.b)), reverseBits(vec4<i32>(~0i, 0i, 1i, var_1.a.b))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(140f + var_3.x) - -1648f), 653f));
}

