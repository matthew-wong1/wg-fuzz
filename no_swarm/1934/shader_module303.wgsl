struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec4<bool>,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(0i, 1i, -12176i, -20156i);

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>) -> vec4<i32> {
    var var_0 = arg_0.x;
    let var_1 = countOneBits(1i << (u_input.b % 32u));
    var var_2 = Struct_1(~_wgslsmith_add_vec2_i32(~(~vec2<i32>(u_input.a, var_1)), ~(~vec2<i32>(-1361i, -1i))), -2564f, !select(select(vec4<bool>(global1.x, false, global1.x, true), select(vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(global1.x, global1.x, true, global1.x), global1.x), !vec4<bool>(false, global1.x, global1.x, global1.x)), select(!vec4<bool>(true, global1.x, global1.x, false), select(vec4<bool>(global1.x, false, global1.x, false), vec4<bool>(global1.x, true, true, global1.x), global1.x), select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(true, true, true, false), global1.x)), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(521f - -863f)), vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(4294967295u, u_input.b, 4294967295u), 24794u), ~85751u, select(0u, _wgslsmith_div_u32(arg_0.x, u_input.b), false)), ~4294967295u));
    var var_3 = Struct_1(_wgslsmith_mult_vec2_i32(min(vec2<i32>(var_1, -1i), vec2<i32>(-1i, 1i)) >> (arg_0.yz % vec2<u32>(32u)), vec2<i32>(-var_2.a.x, 1i)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(784f)))), var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1225f, -145f, any(var_2.c.yx))), _wgslsmith_f_op_f32(ceil(var_2.d)))), ~arg_0.zw);
    let var_4 = var_2.d;
    return vec4<i32>(~0i, _wgslsmith_mod_i32(min(firstTrailingBit(u_input.a), var_2.a.x | 1i) >> (var_3.e.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1, -var_3.a.x, ~var_2.a.x, firstLeadingBit(var_1)), -(~vec4<i32>(var_1, var_1, var_3.a.x, 54148i)))), min(-2147483647i, ~var_1), _wgslsmith_dot_vec3_i32(global0.wwx | ~(~vec3<i32>(var_3.a.x, -4076i, -1i)), firstTrailingBit(select(global0.zwx, vec3<i32>(0i, -2147483647i, 1i), true) << (arg_0.yxw % vec3<u32>(32u)))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool) -> vec4<i32> {
    global0 = -func_3(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b, arg_1.b.e.x, u_input.b, 1u) & ~vec4<u32>(arg_0.c.e.x, 29943u, 4294967295u, 47562u), ~vec4<u32>(90226u, u_input.b, 0u, arg_1.c.e.x)));
    global0 = vec4<i32>(select(max(~arg_0.c.a.x, select(global0.x, 1i, false)), ~(~(-52024i)), (global0.x > 30997i) && global1.x), max(-1i, abs(func_3(vec4<u32>(arg_1.c.e.x, 4294967295u, 39835u, 1u)).x)), u_input.a, -arg_1.c.a.x) ^ ~_wgslsmith_sub_vec4_i32(vec4<i32>(~u_input.a, _wgslsmith_mod_i32(6660i, -28153i), reverseBits(arg_1.a.a.x), func_3(vec4<u32>(arg_1.a.e.x, arg_0.b.e.x, 13659u, 88341u)).x), vec4<i32>(abs(global0.x), -13323i, -arg_1.c.a.x, arg_0.b.a.x));
    let var_0 = arg_1.c.a.x;
    var var_1 = !select(arg_1.a.c, select(!vec4<bool>(arg_1.a.c.x, false, false, arg_2), arg_0.c.c, all(vec4<bool>(arg_2, arg_0.c.c.x, false, arg_1.c.c.x))), arg_0.a.c.x);
    global0 = abs(_wgslsmith_mod_vec4_i32(~vec4<i32>(_wgslsmith_mult_i32(global0.x, u_input.a), abs(arg_1.a.a.x), _wgslsmith_div_i32(31712i, -10076i), var_0), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(-2147483647i, global0.x), 1i), firstTrailingBit(1i), -_wgslsmith_div_i32(-11604i, arg_1.b.a.x), select(i32(-1i) * -5858i, firstLeadingBit(24878i), arg_1.b.c.x))));
    return -abs(vec4<i32>(max(_wgslsmith_add_i32(u_input.a, -42349i), ~(-2147483647i)), func_3(vec4<u32>(u_input.b, arg_0.c.e.x, arg_1.a.e.x, u_input.b) | vec4<u32>(u_input.b, u_input.b, arg_0.a.e.x, 1u)).x, abs(u_input.a), global0.x));
}

fn func_1() -> Struct_1 {
    global0 = _wgslsmith_add_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(-91i, u_input.a, global0.x, global0.x), vec4<i32>(8673i, 42651i, 1i, -2147483647i)) & vec4<i32>(abs(~0i), global0.x, ~_wgslsmith_add_i32(-1604i, 6371i), _wgslsmith_mod_i32(1i, 12405i) & ~u_input.a), _wgslsmith_mult_vec4_i32(-func_2(Struct_2(Struct_1(global0.zw, -1493f, vec4<bool>(global1.x, true, global1.x, false), -1062f, vec2<u32>(54114u, u_input.b)), Struct_1(global0.zx, -100f, vec4<bool>(global1.x, global1.x, global1.x, true), 629f, vec2<u32>(u_input.b, u_input.b)), Struct_1(global0.yx, -214f, vec4<bool>(true, global1.x, true, false), -370f, vec2<u32>(40488u, u_input.b))), Struct_2(Struct_1(global0.zy, 1044f, vec4<bool>(global1.x, global1.x, true, false), -796f, vec2<u32>(u_input.b, 4294967295u)), Struct_1(vec2<i32>(u_input.a, -6100i), -356f, vec4<bool>(global1.x, true, global1.x, false), -314f, vec2<u32>(u_input.b, u_input.b)), Struct_1(global0.zw, 156f, vec4<bool>(global1.x, true, true, false), 1800f, vec2<u32>(u_input.b, 84963u))), global1.x == true), vec4<i32>(u_input.a, _wgslsmith_mult_i32(_wgslsmith_sub_i32(global0.x, 23112i), _wgslsmith_clamp_i32(32242i, 24424i, u_input.a)), min(_wgslsmith_add_i32(global0.x, u_input.a), _wgslsmith_mod_i32(0i, -2147483647i)), global0.x)));
    var var_0 = Struct_2(Struct_1(global0.wz, -819f, vec4<bool>(true | any(vec4<bool>(global1.x, true, false, global1.x)), any(!vec4<bool>(false, false, true, global1.x)), global1.x, -1631f == _wgslsmith_f_op_f32(floor(663f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -1658f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1137f + -1192f))), vec2<u32>(~3494u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(8743u, 0u), vec2<u32>(u_input.b, u_input.b)), vec2<u32>(u_input.b, u_input.b)))), Struct_1(min(vec2<i32>(i32(-1i) * -2147483647i, select(1i, global0.x, false)), _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(global0.zy, vec2<i32>(global0.x, global0.x)), countOneBits(global0.xz))), _wgslsmith_f_op_f32(f32(-1f) * -225f), vec4<bool>(all(!vec4<bool>(false, global1.x, global1.x, true)), global1.x, true, false), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-895f + 1333f)))), vec2<u32>(min(u_input.b, 1u), ~u_input.b & 8165u)), Struct_1(-reverseBits(vec2<i32>(-1i, global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1473f, _wgslsmith_f_op_f32(-2858f - 268f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2238f), -109f)), vec4<bool>(global1.x, true, select(false, u_input.b >= u_input.b, true), global1.x), _wgslsmith_f_op_f32(abs(476f)), ~_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, 48857u)), ~vec2<u32>(u_input.b, 4294967295u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.b.b)), _wgslsmith_f_op_f32(-var_0.c.b)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_0.b.d, var_0.c.b)))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -498f));
    var var_2 = Struct_2(var_0.b, var_0.c, var_0.b);
    let var_3 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-706f, 1656f, var_0.b.b))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_1.yxw, var_1.wyy)))))));
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(global0.zx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1522f, 2513f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2400f, 1587f) - _wgslsmith_div_f32(-1001f, -226f))), !vec4<bool>(global1.x && false, true, global1.x, true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1736f + _wgslsmith_f_op_f32(1143f * 259f)))), ~vec2<u32>(_wgslsmith_mod_u32(1u, u_input.b), 42376u)), func_1(), func_1());
    let var_1 = var_0.c.b;
    var var_2 = !(!any(!var_0.c.c) && true);
    global0 = ~(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, -2147483647i, -77543i, var_0.c.a.x), vec4<i32>(31406i, 0i, 1i, 1i))) | ~(~reverseBits(vec4<i32>(-2147483647i, global0.x, u_input.a, global0.x))));
    let var_3 = u_input.a;
    var var_4 = vec4<u32>(_wgslsmith_dot_vec2_u32(abs(~(~vec2<u32>(var_0.b.e.x, 4294967295u))), ~(~var_0.c.e) & var_0.b.e), reverseBits(var_0.c.e.x) & ~26965u, 4294967295u, 1u);
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.d * _wgslsmith_f_op_f32(-var_0.b.d)));
    let x = u_input.a;
    s_output = StorageBuffer(-438f, var_4.zw, reverseBits(~_wgslsmith_mult_u32(u_input.b, var_4.x ^ var_0.c.e.x)), 0u);
}

