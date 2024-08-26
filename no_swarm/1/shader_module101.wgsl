struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(-1137f, 837f, -1000f, 135f), vec3<i32>(-16925i, -1i, 2721i), 4294967295u);

var<private> global1: vec4<bool>;

var<private> global2: Struct_1 = Struct_1(vec4<f32>(-927f, -116f, 208f, 419f), vec3<i32>(i32(-2147483648), i32(-2147483648), 58418i), 0u);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(global0.a.x * global0.a.x), _wgslsmith_div_f32(global2.a.x, -712f), global2.a.x))), vec3<i32>(abs(global2.b.x), ~_wgslsmith_sub_i32(21934i, u_input.b), 2147483647i), ~(abs(global0.c & global2.c) >> (4294967295u % 32u)));
    var var_0 = ~103826u;
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(global2.a + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a))), vec3<i32>(-1i) * -(vec3<i32>(global2.b.x, global0.b.x, global0.b.x) << (max(vec3<u32>(62136u, 1u, 0u), vec3<u32>(7628u, global2.c, 66376u)) % vec3<u32>(32u))), ~39871u);
    var var_1 = global0.b;
    let var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(156f, global0.a.x, 1241f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a.xyz) - _wgslsmith_f_op_vec3_f32(step(global0.a.zww, global0.a.ywx)))))), !select(select(select(global1.zwy, global1.yxz, global1.x), global1.yyx, vec3<bool>(false, true, true)), select(vec3<bool>(true, false, global1.x), vec3<bool>(global1.x, true, global1.x), true), select(global1.zyy, select(global1.xwx, vec3<bool>(true, global1.x, true), false), select(global1.xww, global1.zwz, vec3<bool>(true, true, true))))));
    return 963f;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_div_f32(global0.a.x, global2.a.x), ~(-41006i) >> (reverseBits(global0.c ^ _wgslsmith_mod_u32(49511u, 1u)) % 32u), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(func_3()), 1136f, _wgslsmith_f_op_f32(select(global2.a.x, global2.a.x, global1.x)), _wgslsmith_f_op_f32(-global0.a.x)))), ~_wgslsmith_add_vec3_i32(~vec3<i32>(u_input.c, global2.b.x, global0.b.x), global2.b), abs(~(6115u << (global0.c % 32u)))));
    global1 = vec4<bool>(global1.x, true, global1.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f) != _wgslsmith_f_op_f32(sign(-473f)));
    var var_1 = vec4<i32>(600i, var_0.b << (4294967295u % 32u), ~var_0.b, abs(firstLeadingBit(u_input.a)));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global0.a.x, 1087f)))))) - -956f), u_input.a, var_0.c);
    var var_3 = 1u;
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(global2.a)))) + vec4<f32>(_wgslsmith_f_op_f32(-global2.a.x), -671f, global0.a.x, _wgslsmith_f_op_f32(1046f * 3316f))) * var_0.c.a), abs(vec3<i32>(~u_input.c, ~(var_1.x << (global2.c % 32u)), -3006i)), firstLeadingBit(_wgslsmith_clamp_u32(34562u, ~28728u, 13443u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(-640f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1930f, _wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_f_op_f32(select(1772f, global2.a.x, false))))));
    global1 = !vec4<bool>(true, (_wgslsmith_dot_vec4_i32(vec4<i32>(-7386i, global0.b.x, 2147483647i, global2.b.x), vec4<i32>(u_input.b, global0.b.x, 14230i, global0.b.x)) << (select(80059u, 44584u, global1.x) % 32u)) != ~_wgslsmith_sub_i32(19591i, u_input.a), true, !(true && select(global1.x, global1.x, global1.x)));
    global2 = func_2();
    var var_1 = !select(vec3<bool>(1i > _wgslsmith_mod_i32(global2.b.x, 15693i), true, !(!global1.x)), select(global1.zyy, vec3<bool>(true, true, true), select(global1.zwy, select(global1.ywy, vec3<bool>(true, global1.x, false), true), select(vec3<bool>(global1.x, global1.x, true), global1.zyy, global1.wzw))), vec3<bool>(true, true, false));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_2.xwy, arg_1.a.zxy, vec3<bool>(false, var_1.x, var_1.x))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, arg_0.a.x, 1000f))))))) + func_2().a.xyx);
}

fn func_5(arg_0: vec3<i32>, arg_1: bool, arg_2: vec3<f32>, arg_3: vec2<u32>) -> i32 {
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(-global2.a), _wgslsmith_sub_vec3_i32(arg_0, arg_0), ~(~(~65434u)));
    let var_0 = func_2();
    global2 = var_0;
    let var_1 = var_0.b;
    var var_2 = Struct_2(679f, 0i, func_2());
    return 0i;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(exp2(global2.a.x)), func_5(_wgslsmith_mult_vec3_i32(select(-global0.b, global0.b, all(vec3<bool>(true, true, false))), _wgslsmith_div_vec3_i32(~global2.b, _wgslsmith_sub_vec3_i32(global0.b, global2.b))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(global0.a.x)))) > global2.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(func_2(), func_2(), _wgslsmith_f_op_vec4_f32(global2.a * global2.a)))), vec2<u32>(~global0.c, 4294967295u)), Struct_1(global0.a, vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.b.x, global2.b.x), vec2<i32>(-34261i, global0.b.x)), i32(-1i) * -global2.b.x, u_input.b), ~(~_wgslsmith_div_u32(70982u, global2.c))));
    global1 = select(select(vec4<bool>(global1.x, ~global0.c != 16751u, !global1.x, global1.x), vec4<bool>(!all(vec3<bool>(global1.x, true, true)), !global1.x, global1.x, all(vec4<bool>(false, global1.x, global1.x, false))), true), !vec4<bool>(true, any(vec3<bool>(true, global1.x, false)) & true, true, !all(vec3<bool>(global1.x, true, global1.x))), select(!(!vec4<bool>(true, false, global1.x, true)), !vec4<bool>(true, global1.x && true, global1.x, global1.x), !select(vec4<bool>(global1.x, global1.x, false, global1.x), !vec4<bool>(global1.x, global1.x, global1.x, true), true)));
    var var_1 = global2.c;
    let var_2 = var_0;
    let var_3 = select(select(vec2<bool>(select(false, all(vec2<bool>(true, global1.x)), 0u != global2.c), false), global1.zy, global1.zz), select(!(!global1.zy), global1.xz, global1.x), !(!(!global1.yx)));
    return Struct_1(global2.a, global0.b & vec3<i32>(select(_wgslsmith_dot_vec3_i32(global0.b, var_2.c.b), select(-47853i, var_0.b, global1.x), false), ~(-1i), _wgslsmith_div_i32(_wgslsmith_add_i32(global2.b.x, global0.b.x), -22147i)), firstTrailingBit(min(_wgslsmith_div_u32(0u, reverseBits(1u)), ~47686u)));
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(abs(622f)), arg_0.a.x, 134f);
    global2 = arg_0;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global2.a, global0.a)), vec4<f32>(var_0.x, 804f, global0.a.x, global2.a.x), false)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, arg_0.a.x, global2.a.x, 852f) + vec4<f32>(arg_0.a.x, -1633f, 1309f, var_0.x)) - vec4<f32>(global2.a.x, global2.a.x, 810f, var_0.x)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(global0.a))))), global1.x)), ~vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(global2.b.zy, global0.b.zy), func_1().b.x), arg_0.b.x, -24101i), global0.c);
    let var_2 = -27260i;
    global0 = func_2();
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a), _wgslsmith_f_op_vec4_f32(-arg_0.a)))), firstLeadingBit(vec3<i32>(0i, var_1.b.x, 0i) << (~vec3<u32>(arg_0.c, 60851u, arg_0.c) % vec3<u32>(32u))) ^ vec3<i32>(-1i, ~global0.b.x, global2.b.x), 1583u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_6(func_1());
    var var_0 = _wgslsmith_mult_i32(u_input.c, func_1().b.x);
    var var_1 = reverseBits(~(~abs(vec4<u32>(15478u, 26605u, 0u, 44305u))) ^ ~(~countOneBits(vec4<u32>(global2.c, 109907u, 1u, global2.c))));
    var_0 = ~_wgslsmith_div_i32(reverseBits(-global0.b.x), -2147483647i);
    let var_2 = !select(!vec4<bool>(true | global1.x, global1.x, true, !global1.x), !(!select(vec4<bool>(global1.x, false, true, global1.x), vec4<bool>(false, global1.x, global1.x, global1.x), global1.x)), select(select(select(vec4<bool>(true, global1.x, global1.x, false), vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(global1.x, false, true, global1.x)), select(vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(global1.x, global1.x, false, true), vec4<bool>(global1.x, true, true, false)), true), vec4<bool>(!global1.x, !global1.x, global1.x, all(vec4<bool>(global1.x, global1.x, false, global1.x))), select(vec4<bool>(true, global1.x, true, false), !vec4<bool>(true, true, false, global1.x), global1.x)));
    var_1 = select(_wgslsmith_clamp_vec4_u32(abs(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, global2.c, global0.c, 9757u), vec4<u32>(global2.c, global0.c, var_1.x, global2.c)))), select(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0.c, 31720u, global0.c), vec4<u32>(1u, 71282u, global2.c, 4294967295u)), 106130u ^ global0.c, var_1.x << (global0.c % 32u), 1u), abs(~vec4<u32>(var_1.x, 20133u, 26230u, var_1.x)), var_2.x), abs(_wgslsmith_sub_vec4_u32(~vec4<u32>(global2.c, var_1.x, global0.c, 36208u), ~vec4<u32>(6070u, 1u, global2.c, var_1.x)))), ~_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, global2.c, global0.c, global2.c), vec4<u32>(global0.c, 4294967295u, 1u, 4294967295u)) | (vec4<u32>(global0.c, var_1.x, 4294967295u, 18825u) ^ vec4<u32>(global0.c, global0.c, 1u, global0.c)), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(11232u, 4294967295u, 35599u, 0u), vec4<u32>(global0.c, global0.c, global2.c, global0.c), vec4<u32>(global0.c, var_1.x, global0.c, 4294967295u)), max(vec4<u32>(global0.c, 7642u, 1u, 41701u), vec4<u32>(global0.c, global0.c, global2.c, global0.c)))), vec4<bool>(all(global1.xz), any(vec3<bool>(true || var_2.x, var_2.x, false)), all(select(select(global1.yyz, global1.yzz, vec3<bool>(var_2.x, global1.x, false)), vec3<bool>(global1.x, var_2.x, global1.x), global1.x)), global1.x));
    let var_3 = var_2.x;
    var var_4 = global0.a.wx;
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -_wgslsmith_dot_vec3_i32(-global0.b, max(vec3<i32>(global0.b.x, -6873i, global2.b.x), vec3<i32>(-2147483647i, -39018i, global2.b.x))), ~global0.c, 7523u);
}

