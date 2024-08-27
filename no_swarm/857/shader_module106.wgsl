struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32) -> u32 {
    return _wgslsmith_mult_u32((global0.x & _wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, global0.x)), select(vec2<u32>(0u, 9914u), u_input.c, true))) ^ global0.x, 31369u ^ global0.x);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: vec2<bool>, arg_3: vec4<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(319f))) - -347f)), 803f));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1463f * 591f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f))));
    global0 = ~vec2<u32>(4294967295u & ~_wgslsmith_sub_u32(u_input.a, 1u), 44799u);
    let var_1 = Struct_4(Struct_3(-9804i, -vec2<i32>(2475i, -1i), Struct_2(Struct_1(_wgslsmith_mult_u32(20491u, u_input.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(886f * 665f), _wgslsmith_f_op_f32(max(548f, 711f))), Struct_1(reverseBits(64316u)), Struct_1(arg_1.x))), -52122i, Struct_3(-_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-8535i, 0i, 2147483647i, -2147483647i), vec4<i32>(-34966i, 1i, 6861i, -3534i)), i32(-1i) * -2147483647i), _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-9051i, 2147483647i)), vec2<i32>(1i, ~(-6965i))), Struct_2(Struct_1(countOneBits(44341u)), -472f, Struct_1(~1u), Struct_1(_wgslsmith_div_u32(u_input.a, 16613u)))));
    global0 = vec2<u32>(abs(u_input.a), _wgslsmith_add_u32(max((u_input.a | arg_3.x) & firstTrailingBit(4294967295u), ~_wgslsmith_add_u32(0u, 4294967295u)), 38027u));
    return var_1.a.b.x;
}

fn func_2(arg_0: vec4<f32>) -> vec3<i32> {
    var var_0 = Struct_4(Struct_3(firstTrailingBit(countOneBits(i32(-1i) * -35358i)), -vec2<i32>(i32(-1i) * -2147483647i, 1i), Struct_2(Struct_1(u_input.a ^ global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), Struct_1(_wgslsmith_div_u32(global0.x, u_input.b.x)), Struct_1(65609u))), func_4(vec4<bool>(true, any(vec2<bool>(true, true)), any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false))), false), u_input.b, select(vec2<bool>(true, true), vec2<bool>(false, true), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 58719u, u_input.b.x, 57776u), vec4<u32>(u_input.a, 15998u, 0u, global0.x)) < _wgslsmith_mult_u32(1u, u_input.b.x)), vec4<u32>(_wgslsmith_add_u32(u_input.a >> (0u % 32u), global0.x), _wgslsmith_mod_u32(4294967295u, 1u), ~func_3(1i), _wgslsmith_sub_u32(14473u, u_input.b.x))), Struct_3(func_4(vec4<bool>(false, false, false, true), vec2<u32>(u_input.c.x, u_input.b.x) ^ vec2<u32>(u_input.c.x, global0.x), vec2<bool>(true, true), vec4<u32>(global0.x, 4294967295u, 4294967295u, global0.x) ^ vec4<u32>(0u, u_input.b.x, global0.x, u_input.b.x)) | abs(-1039i), firstTrailingBit(vec2<i32>(0i, 32432i)), Struct_2(Struct_1(select(19795u, global0.x, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(select(1671f, -319f, true))), Struct_1(u_input.c.x), Struct_1(global0.x))));
    let var_1 = 4294967295u;
    var var_2 = Struct_1(~1u);
    let var_3 = max(_wgslsmith_clamp_vec4_u32(~vec4<u32>(global0.x << (var_1 % 32u), abs(4294967295u), ~var_1, _wgslsmith_div_u32(var_2.a, 4294967295u)), ~select(vec4<u32>(0u, u_input.a, u_input.b.x, 1u), ~vec4<u32>(87372u, var_0.c.c.a.a, var_1, 1u), true), ~countOneBits(~vec4<u32>(22944u, var_0.c.c.c.a, var_1, u_input.a))), vec4<u32>(u_input.b.x, ~_wgslsmith_add_u32(~23904u, firstTrailingBit(var_0.c.c.c.a)), ~var_0.a.c.a.a & var_1, var_2.a));
    let var_4 = Struct_4(Struct_3(-1i, var_0.a.b, var_0.a.c), -countOneBits(-1i), var_0.a);
    return countOneBits(~max(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.c.b.x, var_4.b, 2147483647i), vec3<i32>(-1i, 18887i, 11284i)) << (_wgslsmith_div_vec3_u32(vec3<u32>(0u, 1u, var_4.c.c.d.a), var_3.xzy) % vec3<u32>(32u)), abs(min(vec3<i32>(0i, -22104i, var_4.b), vec3<i32>(-38207i, var_4.a.a, 16841i)))));
}

fn func_5(arg_0: u32, arg_1: vec3<i32>, arg_2: bool) -> f32 {
    global0 = ~u_input.c;
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1593f, 210f, 2012f)) * vec3<f32>(-1455f, -205f, 1742f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(541f, _wgslsmith_f_op_f32(f32(-1f) * -299f), _wgslsmith_f_op_f32(-400f * -583f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 985f, 185f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(2513f, 718f, -1376f) * vec3<f32>(-281f, -645f, 1000f)))))));
    var var_1 = arg_1.x;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), 2990f, _wgslsmith_f_op_f32(var_0.x - 1340f));
    let var_3 = true;
    return _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -151f) + _wgslsmith_f_op_f32(-1137f + _wgslsmith_f_op_f32(var_2.x + 1000f))))));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec3<f32>) -> vec3<bool> {
    let var_0 = Struct_1(7348u);
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_5(_wgslsmith_mod_u32(36219u, var_0.a), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_0, 382f, -567f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1483f, 673f, arg_2.x)))), any(vec4<bool>(true, true, true, true))))));
    var var_2 = var_0;
    var var_3 = ~select(54002u, 37705u >> (_wgslsmith_mod_u32(max(var_0.a, 4294967295u), _wgslsmith_clamp_u32(global0.x, 11464u, var_0.a)) % 32u), true);
    var_3 = u_input.b.x;
    return !vec3<bool>(true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_1)))) <= -1063f, -1229f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(select(select(func_1(1f, _wgslsmith_f_op_f32(1000f - -632f), _wgslsmith_div_vec3_f32(vec3<f32>(-220f, -636f, 1409f), vec3<f32>(-102f, -2834f, -782f))), vec3<bool>(select(true, false, true), true, true), vec3<bool>(all(vec2<bool>(true, true)), true, true)), vec3<bool>(select(all(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, false, true)), false), !any(vec3<bool>(true, true, true)), any(vec3<bool>(false, false, false))), func_1(_wgslsmith_f_op_f32(f32(-1f) * -487f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1286f))), vec3<f32>(1f, 1f, 1f))));
    var_0 = false || (~(~1i & (-3271i << (u_input.c.x % 32u))) < _wgslsmith_clamp_i32(i32(-1i) * -8724i, _wgslsmith_mult_i32(-1i, 2147483647i), _wgslsmith_dot_vec4_i32(select(vec4<i32>(6147i, -1i, 18220i, 1i), vec4<i32>(-6490i, -7862i, -47827i, -4373i), false), vec4<i32>(1i, -82864i, 1i, 0i))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-227f * -699f) + 176f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-523f)) - _wgslsmith_f_op_f32(f32(-1f) * -678f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -482f)))));
    let var_2 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1, var_1, any(vec3<bool>(false, false, false)))) + _wgslsmith_f_op_f32(-var_1)), -190f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(492f))), -891f)));
    global0 = vec2<u32>(1u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, u_input.a, 101417u, global0.x), ~vec4<u32>(global0.x, 1u, u_input.b.x, global0.x)), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, 69696u, 28327u), vec4<u32>(global0.x, 41426u, global0.x, global0.x))))) << (reverseBits(~(~(~vec2<u32>(0u, global0.x)))) % vec2<u32>(32u));
    var var_3 = vec3<bool>(var_2.x, var_2.x, false);
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-491f * 1000f), _wgslsmith_f_op_f32(var_1 + 310f), _wgslsmith_f_op_f32(sign(var_1))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1253f, 997f, var_1) * vec3<f32>(540f, -1827f, -238f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(813f, var_1, var_1), vec3<f32>(var_1, -1190f, 906f), vec3<bool>(false, false, true))))))));
    var_3 = select(vec3<bool>(!var_3.x, true, var_4.x > 414f), var_2, var_2);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x);
}

