struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32 = 0i;

var<private> global2: Struct_1;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec4<u32>) -> f32 {
    let var_0 = _wgslsmith_clamp_i32(1i, 0i, -49858i);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(min(726f, global2.a)), -809f);
    var var_2 = select(vec4<bool>(true, arg_0, !arg_0, _wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(f32(-1f) * -1367f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b))), select(select(select(!vec4<bool>(arg_0, false, arg_0, arg_0), select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_0, false, false, false), arg_0), false), vec4<bool>(arg_0 & false, any(vec4<bool>(true, true, true, false)), arg_0, false), !select(vec4<bool>(false, arg_0, true, true), vec4<bool>(arg_0, false, arg_0, false), true)), select(select(vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, true, true, true)), vec4<bool>(true, true, true, true), select(!vec4<bool>(true, arg_0, true, false), vec4<bool>(false, false, true, arg_0), select(vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), true))), select(true, false, arg_0)), !(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, 29860u, u_input.b.x, arg_2.x), arg_2) >= _wgslsmith_clamp_u32(_wgslsmith_sub_u32(arg_2.x, 4294967295u), ~arg_2.x, countOneBits(1u))));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-597f)), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(global0.a + arg_1.b)));
    var var_4 = u_input.a;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-261f, 1597f, 63173u >= arg_2.x)), _wgslsmith_f_op_f32(-1000f + global0.b), var_2.x)))));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(sign(arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(global2.b)))) * _wgslsmith_f_op_f32(-global2.a))), _wgslsmith_mult_vec2_i32(-(vec2<i32>(1i, u_input.d) ^ vec2<i32>(u_input.d, -15460i)), ~_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, u_input.d), ~vec2<i32>(u_input.d, 1i))), select(u_input.b.yy, firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(6110u, arg_2), max(u_input.b.zx, vec2<u32>(u_input.b.x, 57702u)))), false), max(9621u & _wgslsmith_dot_vec3_u32(abs(u_input.b), vec3<u32>(u_input.b.x, 1u, u_input.b.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, _wgslsmith_sub_u32(u_input.a, arg_2)), vec2<u32>(30008u, max(u_input.a, 40125u)))), Struct_1(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-1037f + -1295f)));
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) - _wgslsmith_f_op_f32(round(589f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(767f)))))), _wgslsmith_f_op_f32(min(478f, _wgslsmith_f_op_f32(func_3(true, Struct_1(_wgslsmith_f_op_f32(1741f + arg_1), global0.a), ~(~vec4<u32>(17319u, 11550u, 24688u, var_0.d)))))));
    global2 = Struct_1(_wgslsmith_f_op_f32(-1633f + _wgslsmith_f_op_f32(sign(-1979f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(true, var_0.a, vec4<u32>(u_input.a, u_input.c, 31324u, 51172u) | vec4<u32>(4294967295u, arg_2, 4294967295u, u_input.c)))))));
    let var_1 = reverseBits(38651u >> ((_wgslsmith_add_u32(var_0.d, var_0.c.x) | _wgslsmith_dot_vec3_u32(u_input.b, u_input.b)) % 32u)) & _wgslsmith_dot_vec3_u32(~(~select(u_input.b, u_input.b, arg_0)), vec3<u32>(var_0.c.x | 1u, 1u | (arg_2 << (0u % 32u)), (arg_2 | var_0.d) & 0u));
    var var_2 = var_0.a;
    return var_0.e;
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec4<bool>(true, any(!select(!vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(arg_0, false, arg_0, arg_0), true)), false, u_input.d <= u_input.d);
    var var_1 = arg_1;
    var var_2 = firstLeadingBit(vec4<u32>(~u_input.a, 0u, ~abs(1031u), ~(1u >> (u_input.a % 32u)) ^ ~1u));
    var_1 = arg_1;
    let var_3 = 0i;
    return func_2(!arg_0, arg_1.a, ~(~u_input.a));
}

fn func_1(arg_0: u32) -> vec4<i32> {
    var var_0 = false;
    var_0 = all(vec2<bool>(0u < _wgslsmith_mult_u32(1u, u_input.b.x), true));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-global0.b), global2.a);
    var_1 = func_4(all(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)))), func_2(true, 330f, 2135u));
    let var_2 = -37961i;
    return vec4<i32>(-1i) * -(~vec4<i32>(u_input.d, _wgslsmith_div_i32(u_input.d, var_2), 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(3678i, 1i), vec2<i32>(-30510i, 2147483647i))));
}

fn func_5(arg_0: vec4<i32>, arg_1: i32, arg_2: u32) -> Struct_1 {
    var var_0 = func_2(global2.a != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.b))), 711f, abs(arg_2));
    var var_1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(~(arg_0.x ^ arg_0.x), u_input.d, -(~arg_1)), select(_wgslsmith_mod_vec3_i32(firstTrailingBit(arg_0.yxw), vec3<i32>(0i, -4081i, u_input.d)), arg_0.ywx, vec3<bool>(true, true, var_0.a <= -733f)), -firstLeadingBit(-arg_0.wxw)) | arg_0.xzz;
    let var_2 = func_2(-1i > (~arg_1 | u_input.d), _wgslsmith_f_op_f32(f32(-1f) * -257f), 43266u);
    var var_3 = u_input.b.yx;
    let var_4 = !vec3<bool>(!any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true))), _wgslsmith_f_op_f32(-var_0.b) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -243f)), true);
    return Struct_1(func_4(all(vec3<bool>(true | var_4.x, !var_4.x, u_input.d != arg_1)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + func_2(var_4.x, global2.b, 16363u).b))).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) * 1000f));
}

fn func_6(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec2<u32>, arg_3: f32) -> Struct_2 {
    let var_0 = func_1(~(~(~(~arg_2.x)))).x;
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -952f)), -374f), _wgslsmith_mod_vec2_i32(-(vec2<i32>(0i, 2147483647i) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(var_0, u_input.d), vec2<i32>(u_input.d, var_0))), -vec2<i32>(var_0, 1i) ^ vec2<i32>(u_input.d, var_0 >> (35687u % 32u))), max(countOneBits(min(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 20247u), u_input.b.xx), vec2<u32>(28103u, u_input.b.x) & u_input.b.yy)), _wgslsmith_clamp_vec2_u32(vec2<u32>(~31095u, arg_2.x), vec2<u32>(select(25551u, arg_2.x, true), 12654u << (arg_2.x % 32u)), ~(~vec2<u32>(98874u, 34560u)))), ~4294967295u, Struct_1(-2203f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.a - global2.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c | ~abs(firstLeadingBit(69667u));
    var var_1 = u_input.c;
    var var_2 = func_6(func_5(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, ~u_input.d, -11725i, firstLeadingBit(47566i)), -func_1(1911u)), firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(18537i, -2756i)), 20296i)), ~(~u_input.c | 0u)), vec4<bool>(true, true, true, true), u_input.b.zy, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.b), global2.b))))));
    let var_3 = Struct_2(func_6(func_5(-vec4<i32>(var_2.b.x, 40166i, -2147483647i, var_2.b.x), 1i >> (_wgslsmith_sub_u32(1u, 1u) % 32u), 4463u), !vec4<bool>(0u >= u_input.a, select(false, false, true), true, any(vec2<bool>(true, false))), vec2<u32>(u_input.a, u_input.a), _wgslsmith_div_f32(188f, -418f)).a, min(reverseBits(var_2.b), select(abs(var_2.b), vec2<i32>(-1i) * -vec2<i32>(1i, -1i), false)), vec2<u32>(var_2.c.x, ~31944u), 0u << (abs(var_2.c.x) % 32u), func_5(~vec4<i32>(_wgslsmith_div_i32(-30756i, 34796i), _wgslsmith_sub_i32(var_2.b.x, 5707i), ~u_input.d, var_2.b.x), i32(-1i) * -1i, _wgslsmith_sub_u32(54833u, _wgslsmith_mult_u32(~var_2.d, firstLeadingBit(2893u)))));
    var var_4 = _wgslsmith_f_op_f32(var_2.e.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.b * _wgslsmith_f_op_f32(exp2(var_3.e.a))) - -1138f));
    var var_5 = u_input.b;
    var var_6 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_6.x, ~func_1(abs(57174u)), 780f);
}

