struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: bool,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<bool>,
    d: vec2<f32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: vec3<u32>) -> i32 {
    global0 = true;
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(select(-2135f, arg_1.x, true))), _wgslsmith_f_op_f32(abs(arg_1.x)))))));
    let var_1 = vec4<i32>(~(-41342i) << (1u % 32u), 1i, ~_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(-48528i, 2147483647i)), firstTrailingBit(vec2<i32>(1i, 20825i))), select(47592i, -2147483647i << (u_input.a % 32u), arg_0.x)), min(-_wgslsmith_add_i32(-1i, -7409i), 15999i) | ~_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-33746i, -27083i, 61025i), vec3<i32>(2147483647i, 330i, 25234i)), countOneBits(1i)));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0)) + _wgslsmith_div_f32(-412f, -1023f)))))));
    let var_3 = _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(var_0 * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -752f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -658f)))));
    return var_1.x;
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: vec3<bool>) -> bool {
    global0 = true != !(select(true, true, 8600u >= u_input.a) & true);
    global0 = any(arg_2.zx);
    let var_0 = Struct_1(arg_1.x, max(-1i, ~func_3(vec3<bool>(arg_2.x, arg_2.x, false), vec4<f32>(-2077f, 471f, -700f, 1030f), vec3<u32>(u_input.c, u_input.b.x, u_input.a)) & 1i), ~80652u, vec4<bool>(((0i << (u_input.a % 32u)) >> (100148u % 32u)) < _wgslsmith_mult_i32(firstLeadingBit(1i), -21933i >> (u_input.a % 32u)), arg_2.x, arg_2.x, false), 1044f);
    let var_1 = Struct_2(!(!all(vec4<bool>(var_0.d.x, var_0.d.x, true, true)) == arg_2.x), ~21830u);
    var var_2 = ~((1i | var_0.b) >> (firstTrailingBit(countOneBits(u_input.b.x)) % 32u));
    return all(select(vec2<bool>(true, true), !select(arg_2.yx, arg_2.yx, var_1.a), !((var_0.b == var_0.b) || false)));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool, arg_2: vec2<u32>) -> Struct_4 {
    let var_0 = !select(select(!vec4<bool>(arg_1, true, arg_1, arg_1), select(select(vec4<bool>(arg_1, arg_1, true, true), vec4<bool>(arg_1, true, arg_1, arg_1), vec4<bool>(true, false, false, false)), !vec4<bool>(true, true, arg_1, arg_1), any(vec3<bool>(false, true, false))), true), !(!vec4<bool>(true, true, arg_1, arg_1)), vec4<bool>(select(func_2(-770f, vec3<f32>(226f, -1592f, 310f), vec3<bool>(false, arg_1, true)), arg_1, true), !(!arg_1), false, 37119u >= u_input.c));
    var var_1 = u_input.b.yzz;
    let var_2 = 1u;
    global0 = arg_1;
    global0 = false & !var_0.x;
    return Struct_4(Struct_2(var_0.x, _wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, 50552u), abs(u_input.a)) ^ ~var_2), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1006f)) + _wgslsmith_f_op_f32(1000f + -133f))), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(1i, ~930i, _wgslsmith_sub_i32(-1i, -29125i)), _wgslsmith_sub_i32(~28385i, -2147483647i)), 31313u, !vec4<bool>(any(vec4<bool>(arg_1, arg_1, true, true)), var_0.x, true, false || var_0.x), -264f), vec4<bool>(all(var_0.ww), var_0.x, !all(select(var_0.xw, var_0.ww, var_0.x)), ((29914u | var_1.x) >> (0u % 32u)) != min(_wgslsmith_mod_u32(1u, arg_2.x), ~arg_0.x)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, 1f))), -1i);
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: f32, arg_3: f32) -> Struct_4 {
    global0 = any(!vec4<bool>(arg_0.b.d.x, false, !all(vec2<bool>(arg_0.c.x, false)), arg_0.a.a));
    let var_0 = Struct_3(false, func_1(u_input.b, false, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.c, 0u, u_input.b.x, arg_0.a.b), u_input.b | u_input.b), u_input.b.x)).c, true, u_input.b.xxz);
    let var_1 = var_0.b.wx;
    let var_2 = arg_0;
    var var_3 = _wgslsmith_mod_u32(reverseBits(~_wgslsmith_mod_u32(var_2.b.c, abs(var_2.b.c))), _wgslsmith_mod_u32(~13735u, ~1u));
    return var_2;
}

fn func_5(arg_0: Struct_4) -> Struct_4 {
    global0 = _wgslsmith_sub_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b.b, 19343i), -vec2<i32>(1i, -2147483647i)), 44022i) > 0i;
    global0 = !(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -471f), _wgslsmith_f_op_f32(arg_0.d.x - -197f)) + arg_0.b.a) >= arg_0.d.x);
    let var_0 = func_4(func_4(func_4(arg_0, any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) * arg_0.b.e), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.e), -1000f)), !any(arg_0.c) == func_4(Struct_4(arg_0.a, arg_0.b, vec4<bool>(true, true, arg_0.c.x, true), arg_0.d, -2147483647i), !arg_0.c.x, _wgslsmith_div_f32(arg_0.d.x, 1173f), 343f).c.x, 1238f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-718f, 1127f)))), select(1711f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.b.a, arg_0.d.x))), true, !(select(arg_0.b.c, u_input.b.x, arg_0.c.x) >= u_input.c)), arg_0.b.a, 1f).a;
    let var_1 = arg_0;
    global0 = !func_4(arg_0, arg_0.b.d.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_0.d.x, var_1.b.e), arg_0.d.x)), _wgslsmith_f_op_f32(select(226f, _wgslsmith_div_f32(2608f, -868f), !var_1.a.a))).a.a == (abs(arg_0.e) <= _wgslsmith_sub_i32(-5158i, 0i));
    return Struct_4(Struct_2(any(vec4<bool>(all(var_1.b.d), arg_0.c.x, func_1(u_input.b, false, vec2<u32>(arg_0.b.c, 106086u)).c.x, !arg_0.b.d.x)), 4294967295u >> (~select(var_0.b, var_1.a.b, false) % 32u)), Struct_1(func_1(_wgslsmith_add_vec4_u32(u_input.b, ~vec4<u32>(44181u, 1u, arg_0.a.b, var_0.b)), var_1.b.d.x, vec2<u32>(~u_input.b.x, 4294967295u)).d.x, _wgslsmith_clamp_i32(var_1.b.b, -29585i, countOneBits(_wgslsmith_mod_i32(0i, -2147483647i))), 407u, arg_0.b.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) + var_1.d.x)), vec4<bool>(!arg_0.b.d.x && true, any(arg_0.b.d), !((0i == var_1.b.b) && false), any(func_1(vec4<u32>(1u, 0u, var_0.b, var_0.b), func_4(Struct_4(arg_0.a, var_1.b, arg_0.c, vec2<f32>(arg_0.d.x, 1000f), arg_0.b.b), true, var_1.b.e, -1344f).b.d.x, ~vec2<u32>(4294967295u, 4294967295u)).b.d.yxz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(280f, 599f) - vec2<f32>(arg_0.d.x, var_1.b.e)))), var_1.d, var_0.a))), var_1.e);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    var var_0 = func_5(func_4(func_1(~firstLeadingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.c)), all(vec4<bool>(true, true, true, true)), ~u_input.b.wz | max(u_input.b.zw, u_input.b.xx)), any(select(func_1(vec4<u32>(u_input.b.x, u_input.a, u_input.c, 48531u), false, u_input.b.ww).b.d.ywy, func_1(u_input.b, false, vec2<u32>(u_input.b.x, 25699u)).c.wyx, func_1(vec4<u32>(u_input.a, 0u, u_input.c, u_input.b.x), true, vec2<u32>(39752u, u_input.a)).b.d.zxy)), -324f, _wgslsmith_f_op_f32(-1f)));
    var var_1 = func_5(Struct_4(func_5(func_4(Struct_4(var_0.a, Struct_1(var_0.b.a, -2147483647i, 4294967295u, var_0.b.d, -1368f), var_0.c, vec2<f32>(var_0.b.e, var_0.b.e), var_0.b.b), true, _wgslsmith_f_op_f32(948f + 565f), _wgslsmith_f_op_f32(trunc(var_0.d.x)))).a, var_0.b, func_4(func_5(func_4(Struct_4(Struct_2(var_0.a.a, var_0.a.b), Struct_1(var_0.b.a, 2147483647i, u_input.a, vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.a.a), var_0.b.a), vec4<bool>(true, false, var_0.c.x, false), vec2<f32>(var_0.b.e, var_0.b.a), -15153i), var_0.b.d.x, -371f, 2737f)), true, _wgslsmith_f_op_f32(ceil(158f)), _wgslsmith_f_op_f32(f32(-1f) * -462f)).b.d, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.d + vec2<f32>(var_0.b.a, 663f)), var_0.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, var_0.d.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-366f, -328f))))), var_0.b.b));
    let var_2 = -957f;
    var var_3 = !(!var_1.b.d.x) && var_1.b.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_add_i32(-(~28364i), -2147483647i), firstLeadingBit(_wgslsmith_sub_i32(reverseBits(var_1.b.b), -1i)), var_0.e), var_1.e);
}

