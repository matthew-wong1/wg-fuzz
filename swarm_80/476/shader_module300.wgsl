struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: i32,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32) -> vec2<i32> {
    let var_0 = vec4<u32>(4294967295u, ~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<u32>(21933u, 10156u, u_input.a.x) >> (vec3<u32>(u_input.a.x, 44813u, u_input.a.x) % vec3<u32>(32u))) | _wgslsmith_sub_u32(u_input.a.x, 1u), ~_wgslsmith_div_u32(u_input.a.x, 33832u), u_input.a.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, 616f, _wgslsmith_f_op_f32(f32(-1f) * -1843f), -884f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-204f, _wgslsmith_f_op_f32(2158f + 1110f), -1226f, _wgslsmith_f_op_f32(f32(-1f) * -3007f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(352f, 448f, 1000f, 2252f)))));
    let var_2 = var_0.yzx;
    var var_3 = _wgslsmith_mod_vec2_i32(vec2<i32>(26620i, arg_0), _wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(_wgslsmith_sub_i32(arg_0, arg_0), ~(-1642i))), vec2<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(arg_0, arg_0), vec2<i32>(1i, arg_0)), arg_0)));
    var var_4 = Struct_1(_wgslsmith_add_u32(u_input.a.x, var_2.x), vec2<bool>(any(vec4<bool>(true, all(vec2<bool>(true, false)), true, false)), countOneBits(0i) <= _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.x, var_3.x, var_3.x, -2147483647i), select(vec4<i32>(arg_0, var_3.x, arg_0, arg_0), vec4<i32>(arg_0, var_3.x, arg_0, -39448i), vec4<bool>(false, false, false, false)))), reverseBits(-42166i), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.x, var_1.x))) - var_1.zy), _wgslsmith_f_op_vec2_f32(vec2<f32>(-281f, -122f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-785f, 459f))))), _wgslsmith_f_op_vec2_f32(ceil(var_1.yx))), -464f);
    return ~vec2<i32>(-var_4.c, -8905i);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1) -> f32 {
    var var_0 = true;
    var_0 = any(select(vec4<bool>(any(select(vec2<bool>(arg_1.b.x, arg_1.b.x), vec2<bool>(true, true), arg_1.b)), !arg_1.b.x, select(arg_1.b.x, all(arg_1.b), true), true), select(!vec4<bool>(false, arg_1.b.x, true, arg_1.b.x), select(!vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x, arg_1.b.x), vec4<bool>(arg_1.b.x, false, arg_1.b.x, arg_1.b.x), true), select(!vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x, false), select(vec4<bool>(arg_1.b.x, arg_1.b.x, false, true), vec4<bool>(true, arg_1.b.x, true, true), arg_1.b.x), any(vec2<bool>(false, arg_1.b.x)))), !arg_1.b.x));
    let var_1 = ~u_input.a.x;
    let var_2 = arg_1.d;
    var_0 = !(!arg_1.b.x);
    return var_2.x;
}

fn func_2() -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(trunc(895f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1f - -124f), _wgslsmith_div_f32(-199f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-628f, 210f))))), any(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_3(-23454i), Struct_1(4294967295u, vec2<bool>(false, false), 25075i, vec2<f32>(-1470f, -292f), 344f))) - _wgslsmith_f_op_f32(-563f - _wgslsmith_f_op_f32(trunc(243f))))), -2330f);
    var var_1 = _wgslsmith_f_op_f32(486f * _wgslsmith_f_op_f32(-var_0.x));
    var_1 = var_0.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(select(var_0.x, var_0.x, true)), _wgslsmith_f_op_f32(func_4(vec2<i32>(4426i, 2147483647i), Struct_1(u_input.a.x, vec2<bool>(false, false), -43990i, vec2<f32>(var_0.x, -741f), 259f)))))), _wgslsmith_div_vec3_f32(vec3<f32>(227f, _wgslsmith_f_op_f32(ceil(var_0.x)), -730f), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(256f - var_0.x), var_0.x)))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-632f, -2470f) * var_0.x) - _wgslsmith_f_op_f32(exp2(var_2.x)))) + var_2.x);
    return Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 2979u), u_input.a), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), 1u) << (~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 35054u, 60531u), vec3<u32>(66157u, u_input.a.x, 69414u)) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(max(vec3<u32>(u_input.a.x, 27202u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 16135u)), ~vec3<u32>(2179u, 1u, u_input.a.x)) & abs(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), vec2<bool>(false, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), false))), -_wgslsmith_add_i32(1i, -(-9603i >> (u_input.a.x % 32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-114f, _wgslsmith_f_op_f32(f32(-1f) * -318f)))) - vec2<f32>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_div_f32(var_2.x, 1136f)), _wgslsmith_f_op_f32(var_0.x - -500f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(vec2<i32>(-59467i, 43837i), Struct_1(u_input.a.x, vec2<bool>(true, true), -1i, var_2.yx, var_2.x))) * _wgslsmith_f_op_f32(f32(-1f) * -195f)) * -152f))));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: bool, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = !arg_1;
    let var_1 = Struct_2(arg_0);
    let var_2 = var_1.a;
    let var_3 = _wgslsmith_mod_vec4_u32(arg_3, arg_3);
    let var_4 = arg_2;
    return func_2();
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = Struct_2(func_5(func_2(), reverseBits(10232i) > (func_3(-65183i).x >> (u_input.a.x % 32u)), true, ~(~vec4<u32>(arg_0, arg_0, 1u, 49958u))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a.d.x))), var_0.a.d.x);
    var var_2 = min(max(~var_0.a.a, ~reverseBits(countOneBits(0u))), 4294967295u);
    var_2 = arg_0;
    let var_3 = var_0.a.e;
    return Struct_1(33902u, !vec2<bool>(!var_0.a.b.x & true, true), var_0.a.c, var_0.a.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.a.c, var_0.a.c), vec2<i32>(var_0.a.c, -15953i), vec2<i32>(var_0.a.c, -1i)) ^ _wgslsmith_add_vec2_i32(vec2<i32>(var_0.a.c, var_0.a.c), vec2<i32>(var_0.a.c, var_0.a.c)), var_0.a)) - _wgslsmith_f_op_f32(f32(-1f) * -877f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(countOneBits(u_input.a.x)));
    let var_1 = abs(~(~4294967295u));
    var_0 = Struct_2(func_2());
    let var_2 = select(vec4<bool>(true, !(!all(vec4<bool>(true, var_0.a.b.x, var_0.a.b.x, true))), all(vec4<bool>(false, var_0.a.b.x, true, var_0.a.a == 1u)), all(select(vec3<bool>(false, true, var_0.a.b.x), vec3<bool>(var_0.a.b.x, true, false), true))), !select(vec4<bool>(!var_0.a.b.x, true, func_1(var_1).b.x, var_0.a.b.x), !(!vec4<bool>(true, var_0.a.b.x, false, var_0.a.b.x)), vec4<bool>(var_0.a.b.x, true, true, true)), var_0.a.b.x);
    var_0 = Struct_2(Struct_1(var_0.a.a, !(!vec2<bool>(false, var_2.x)), firstTrailingBit(~(~2147483647i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.d))), var_0.a.e));
    var var_3 = _wgslsmith_mod_vec2_i32(vec2<i32>(func_2().c, var_0.a.c), -(vec2<i32>(-1i) * -vec2<i32>(1i, var_0.a.c)));
    var_3 = ~_wgslsmith_mult_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.a.c, -8074i), vec2<i32>(50149i, -1i)), min(vec2<i32>(28720i, var_0.a.c), vec2<i32>(-34242i, 5768i)) << (firstLeadingBit(vec2<u32>(u_input.a.x, var_1)) % vec2<u32>(32u))) | vec2<i32>(1i, -2147483647i);
    let var_4 = Struct_3(select(var_2.x, var_0.a.b.x | ((var_0.a.a ^ 1u) != var_1), true), func_5(func_5(func_1(var_1), select(var_0.a.e < var_0.a.d.x, true, var_2.x | true), select(true, false == var_2.x, 21603i > var_3.x), abs(~vec4<u32>(var_1, 1u, var_1, 3176u))), var_0.a.b.x, !(!var_2.x || true), reverseBits(_wgslsmith_clamp_vec4_u32(~vec4<u32>(9687u, var_0.a.a, var_0.a.a, u_input.a.x), vec4<u32>(8577u, u_input.a.x, 39554u, 13046u), ~vec4<u32>(0u, var_0.a.a, 16004u, u_input.a.x)))), any(select(select(var_2.ywy, vec3<bool>(false, true, false), select(var_2.xxx, var_2.xzy, var_0.a.b.x)), var_2.xyw, all(vec2<bool>(false, false)))), select(var_0.a.c, func_1(~max(var_0.a.a, 1u)).c, var_0.a.b.x));
    var var_5 = Struct_2(Struct_1(~abs(var_0.a.a | 1u), !select(select(vec2<bool>(var_4.c, var_0.a.b.x), var_0.a.b, vec2<bool>(var_4.b.b.x, false)), !var_2.xy, select(var_2.zw, vec2<bool>(false, false), true)), var_4.b.c, var_0.a.d, _wgslsmith_f_op_f32(-func_1(_wgslsmith_sub_u32(var_1, 19656u)).d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(-28149i, var_5.a.c), select(vec3<u32>(var_5.a.a >> (23152u % 32u), 1u << (_wgslsmith_div_u32(var_0.a.a, var_4.b.a) % 32u), var_1), ~(~_wgslsmith_div_vec3_u32(vec3<u32>(var_4.b.a, var_1, var_0.a.a), vec3<u32>(var_1, 0u, var_5.a.a))), select(!var_2.zyy, vec3<bool>(var_5.a.b.x, true, all(var_4.b.b)), var_4.b.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-1243f, var_4.b.d.x), -1307f, 1000f, var_0.a.d.x) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.e, var_0.a.d.x, -1050f, var_5.a.d.x) - vec4<f32>(var_5.a.d.x, -756f, -2020f, var_0.a.e)))))), 0i);
}

