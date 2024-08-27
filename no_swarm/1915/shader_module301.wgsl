struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> Struct_1 {
    return Struct_1(vec4<i32>(select(~(~u_input.a.x), u_input.a.x, true), u_input.a.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a.x, 2147483647i), ~vec3<i32>(36372i, -64258i, u_input.a.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x), u_input.a) >> (0u % 32u)), u_input.a.x));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    return arg_1;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec3<bool>) -> bool {
    var var_0 = arg_1.x;
    var var_1 = arg_3;
    var_1 = arg_3;
    let var_2 = Struct_2(arg_1.wyz, reverseBits(~(vec4<i32>(2147483647i, arg_0.a.x, u_input.a.x, -2147483647i) | _wgslsmith_mod_vec4_i32(vec4<i32>(37209i, u_input.a.x, arg_2.a.x, arg_0.a.x), vec4<i32>(-2147483647i, 2147483647i, u_input.a.x, -1i)))), func_2(), func_3(_wgslsmith_mod_i32(-1501i, 31238i), arg_2), func_2());
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1034f, _wgslsmith_f_op_f32(step(var_2.a.x, -456f)))));
    return true;
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: f32, arg_3: vec3<f32>) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(arg_3)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -354f), -1891f, arg_0))), vec4<i32>(u_input.a.x, ~(~_wgslsmith_div_i32(u_input.a.x, u_input.a.x)), 45096i, -2227i), func_3(-62354i >> (~select(1u, 31797u, false) % 32u), func_2()), Struct_1(~_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.a.x, u_input.a.x, 60161i, 2147483647i), -vec4<i32>(25612i, u_input.a.x, -10803i, u_input.a.x))), func_2());
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(var_0.a.x)), var_0.a.x, _wgslsmith_f_op_f32(floor(arg_2))), vec3<f32>(_wgslsmith_f_op_f32(select(326f, arg_3.x, true)), -946f, _wgslsmith_f_op_f32(-arg_2))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(arg_3)) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.a.x, arg_0, 2029f)))) + _wgslsmith_f_op_vec3_f32(-arg_3))), var_0.b, Struct_1(~select(abs(vec4<i32>(u_input.a.x, 29397i, u_input.a.x, u_input.a.x)), var_0.b, -1i != var_0.c.a.x)), var_0.c, func_3(-_wgslsmith_div_i32(u_input.a.x, reverseBits(var_0.e.a.x)), func_2()));
    let var_2 = firstTrailingBit(firstLeadingBit(~0u));
    let var_3 = func_3(func_3(-2147483647i, Struct_1(abs(~vec4<i32>(2147483647i, u_input.a.x, var_0.c.a.x, var_1.c.a.x)))).a.x, func_3(-1i, func_3(_wgslsmith_mod_i32(u_input.a.x, ~var_0.e.a.x), var_1.e))).a.x;
    let var_4 = -1607f;
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -113f)))) * _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(f32(-1f) * -1381f), select(vec4<bool>(true, true, select(false, true, true), func_1(Struct_1(vec4<i32>(u_input.a.x, 2147483647i, -1i, u_input.a.x)), vec4<f32>(-693f, 1106f, -171f, -794f), Struct_1(vec4<i32>(-36769i, -2147483647i, u_input.a.x, 1i)), vec3<bool>(false, false, false))), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, false, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), true)), false), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1828f - 236f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -444f), _wgslsmith_div_f32(-849f, 209f), any(vec4<bool>(false, false, false, true))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1171f, -831f, 1528f)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2024f, -911f, -1086f)))))))));
    let var_1 = select(true, true, false);
    var var_2 = Struct_1(vec4<i32>(reverseBits(reverseBits(35154i)), -(-u_input.a.x | 0i), u_input.a.x ^ u_input.a.x, -1i));
    var_2 = func_3(func_2().a.x, Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(28545i, 2147483647i), var_2.a.x >> (67635u % 32u), var_2.a.x, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, var_2.a.x)), func_3(-var_2.a.x, func_3(u_input.a.x, Struct_1(var_2.a))).a)));
    let var_3 = func_2();
    let var_4 = 0u;
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1000f)))), _wgslsmith_div_f32(var_0, _wgslsmith_div_f32(-1062f, -985f))) * var_0);
    let var_6 = !(!var_1);
    let x = u_input.a;
    s_output = StorageBuffer(var_0, var_2.a, (~var_4 ^ var_4) >> (~0u % 32u), firstLeadingBit(vec2<u32>(reverseBits(var_4), 34578u)) ^ (reverseBits(~vec2<u32>(var_4, var_4)) ^ (abs(vec2<u32>(0u, var_4)) << ((vec2<u32>(0u, 36268u) << (vec2<u32>(23346u, var_4) % vec2<u32>(32u))) % vec2<u32>(32u)))), select(~var_3.a, (var_3.a << (vec4<u32>(var_4, var_4, 4294967295u, 55045u) % vec4<u32>(32u))) & (vec4<i32>(-55382i, var_3.a.x, 2147483647i, var_3.a.x) ^ var_3.a), !select(vec4<bool>(true, var_1, var_6, true), vec4<bool>(true, var_6, var_1, var_6), vec4<bool>(var_6, false, var_6, false))) ^ firstTrailingBit(var_3.a ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(var_3.a.x, -6226i, u_input.a.x, -12608i), var_3.a, var_2.a)));
}

