struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> Struct_3 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-704f + 2231f), -362f);
    var var_1 = u_input.b;
    let var_2 = u_input.a;
    var_1 = u_input.c;
    var_1 = _wgslsmith_mult_i32(-22890i, _wgslsmith_sub_i32(max(_wgslsmith_dot_vec2_i32(~u_input.e, select(u_input.e, vec2<i32>(-2147483647i, u_input.c), false)), min(27767i ^ u_input.c, firstTrailingBit(u_input.e.x))), -2147483647i));
    return Struct_3(10388i, var_0.x, Struct_2(Struct_1(_wgslsmith_mod_u32(firstLeadingBit(var_2), ~u_input.d), var_0.x, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
}

fn func_3(arg_0: Struct_3) -> u32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_u32(_wgslsmith_mult_u32(22952u ^ arg_0.c.a.a, _wgslsmith_mult_u32(61544u, arg_0.c.a.a)), 36383u), -555f, !arg_0.c.a.c && (-1i >= ~arg_0.a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-367f)), _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-471f * arg_0.b))), select(!arg_0.c.a.c, !arg_0.c.a.c, false)))));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(2318f, arg_0.b, arg_0.c.a.d, arg_0.c.a.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-795f, arg_0.b, var_0.a.b, 916f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.b, arg_0.b, 532f, 722f) * vec4<f32>(var_0.a.b, -1532f, 1000f, arg_0.c.a.b)) * _wgslsmith_div_vec4_f32(vec4<f32>(102f, var_0.a.b, arg_0.c.a.d, 2162f), vec4<f32>(-689f, arg_0.c.a.d, var_0.a.d, arg_0.c.a.d))), !select(vec4<bool>(var_0.a.c, false, true, var_0.a.c), vec4<bool>(arg_0.c.a.c, arg_0.c.a.c, arg_0.c.a.c, false), vec4<bool>(arg_0.c.a.c, false, false, false)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(617f, 676f, 1302f, var_0.a.d), vec4<f32>(806f, var_0.a.b, 1138f, var_0.a.d))))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.b, arg_0.c.a.d, -1434f, 464f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.a.d)), arg_0.b, _wgslsmith_f_op_f32(arg_0.b + var_0.a.d), _wgslsmith_f_op_f32(min(arg_0.c.a.b, var_0.a.d))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-684f, 992f, -792f, var_0.a.b)))))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-957f)) * _wgslsmith_f_op_f32(ceil(112f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1175f * 398f), _wgslsmith_f_op_f32(-var_0.a.d)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1251f, _wgslsmith_f_op_f32(exp2(arg_0.c.a.b))) - _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b, var_1.x), vec2<f32>(var_0.a.b, arg_0.b)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.b, arg_0.b) - var_1.xx)));
    var_0 = Struct_2(arg_0.c.a);
    var_2 = _wgslsmith_f_op_vec2_f32(step(var_1.xx, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.a.d, -293f)) - var_1.yy)))));
    return var_0.a.a;
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: vec4<bool>) -> bool {
    var var_0 = vec4<u32>(~countOneBits(551u), 43087u, func_3(func_2()), 14743u);
    var_0 = vec4<u32>(_wgslsmith_clamp_u32(4294967295u, var_0.x, var_0.x ^ _wgslsmith_dot_vec3_u32(~var_0.wzy, countOneBits(var_0.xyy))), _wgslsmith_div_u32(arg_0, 4294967295u), 0u, 65210u);
    var var_1 = func_2().c;
    var var_2 = Struct_3(u_input.e.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-135f))), _wgslsmith_f_op_f32(abs(-1797f))), arg_2);
    let var_3 = -14106i;
    return var_2.c.a.c;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = ~vec3<u32>(u_input.a, u_input.a, ~27768u);
    let var_1 = u_input.c & u_input.c;
    var var_2 = arg_1;
    var_2 = Struct_2(arg_1.a);
    var_2 = func_2().c;
    return func_2().c.a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0.d), 795f));
    var_0 = vec2<f32>(arg_1.c.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-1134f, -1000f), var_0.x))));
    var var_1 = arg_0.a;
    let var_2 = ~min(vec4<u32>(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.a, 1u)), vec2<u32>(4294967295u, u_input.a)), 0u, u_input.a, 55464u), _wgslsmith_clamp_vec4_u32(~(vec4<u32>(20586u, arg_0.a, 1u, u_input.d) & vec4<u32>(u_input.a, 0u, 4294967295u, u_input.d)), ~(vec4<u32>(arg_0.a, 1u, 1u, u_input.d) & vec4<u32>(0u, 32768u, 15936u, arg_1.c.a.a)), ~vec4<u32>(2864u, arg_1.c.a.a, 0u, 4294967295u) << (vec4<u32>(21297u, 4082u, 4647u, 0u) % vec4<u32>(32u))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, arg_0.d))))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(true, Struct_2(Struct_1(u_input.a, 353f, func_1(0u, vec2<bool>(false, true), Struct_2(Struct_1(u_input.d, 838f, false, 975f)), vec4<bool>(false, false, false, false)), _wgslsmith_f_op_f32(abs(666f)))), vec3<bool>(any(vec3<bool>(false, false, false)) | func_1(17709u, vec2<bool>(false, false), Struct_2(Struct_1(u_input.d, -135f, true, -2934f)), vec4<bool>(true, false, false, true)), func_1(1u, select(vec2<bool>(true, true), vec2<bool>(false, false), true), Struct_2(Struct_1(u_input.d, -1000f, true, 569f)), vec4<bool>(true, true, true, true)), !any(vec3<bool>(true, true, true)))), Struct_3(~_wgslsmith_div_i32(0i, 1i) >> (func_4(true, func_2().c, select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false))).a % 32u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -193f)))), Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 37104u), vec2<u32>(1u, 1u)), _wgslsmith_f_op_f32(sign(1649f)), true, -569f))));
    var_0 = func_2();
    var var_1 = var_0.c.a;
    let var_2 = vec2<f32>(var_0.b, 1053f);
    var_1 = Struct_1(0u, var_1.d, true, var_1.d);
    var_0 = func_5(Struct_1(377u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -192f)), any(!vec4<bool>(var_1.c, true, true, var_1.c)), var_2.x), func_5(Struct_1(max(var_0.c.a.a, firstLeadingBit(var_0.c.a.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_1.d)))), any(select(vec4<bool>(var_1.c, var_0.c.a.c, false, var_0.c.a.c), vec4<bool>(true, var_1.c, true, true), var_0.c.a.c)), -780f), func_5(func_5(var_0.c.a, func_5(var_0.c.a, Struct_3(var_0.a, 407f, var_0.c))).c.a, Struct_3(2147483647i, _wgslsmith_f_op_f32(f32(-1f) * -485f), func_2().c))));
    var var_3 = -171f;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(abs(vec2<u32>(1u, 1u) & _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.c.a.a, 1u), vec2<u32>(22301u, var_1.a)))), select(_wgslsmith_div_vec2_i32(vec2<i32>(42373i << (var_0.c.a.a % 32u), 0i), vec2<i32>(_wgslsmith_mod_i32(var_0.a, 0i), ~(-1i))), ((u_input.e | vec2<i32>(2147483647i, u_input.c)) >> (~vec2<u32>(u_input.d, 76155u) % vec2<u32>(32u))) & ~(vec2<i32>(1i, var_0.a) >> (vec2<u32>(var_0.c.a.a, u_input.a) % vec2<u32>(32u))), !(!vec2<bool>(var_0.c.a.c, true))), ~_wgslsmith_div_vec3_u32(vec3<u32>(var_1.a, 47325u, var_1.a) >> (vec3<u32>(54975u, 66523u, u_input.a) % vec3<u32>(32u)), ~vec3<u32>(var_0.c.a.a, 1u, 4294967295u)) & (reverseBits(vec3<u32>(u_input.d, var_1.a, u_input.a)) << (~(vec3<u32>(u_input.d, 4294967295u, var_0.c.a.a) >> (vec3<u32>(0u, u_input.d, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u))), vec3<u32>(21449u, 1u, select(4764u, _wgslsmith_div_u32(~13078u, u_input.d), var_0.c.a.c || var_1.c)));
}

