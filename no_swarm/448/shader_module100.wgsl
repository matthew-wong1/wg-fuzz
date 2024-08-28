struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = true;
    var var_1 = _wgslsmith_dot_vec2_i32(-abs(countOneBits(vec2<i32>(u_input.a.x, u_input.a.x) >> (u_input.c % vec2<u32>(32u)))), firstLeadingBit(vec2<i32>((u_input.a.x & -5048i) ^ u_input.a.x, u_input.a.x)));
    var_1 = u_input.a.x;
    var_1 = u_input.a.x;
    var var_2 = countOneBits(u_input.a.x);
    return false;
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_1 {
    var var_0 = -38115i;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(169f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1336f - -374f) + _wgslsmith_f_op_f32(-2104f * -1000f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2509f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -294f)), -746f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(316f)), -1401f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -163f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -364f)))));
    let var_2 = Struct_1(var_1.a, var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(988f)))))));
    let var_3 = var_1;
    var var_4 = select(vec4<bool>(_wgslsmith_f_op_f32(step(var_3.b.x, _wgslsmith_div_f32(var_3.c, var_3.b.x))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1269f - -787f)), select(true, !(false | arg_0), func_3(arg_0)), true, false), vec4<bool>(!(1000f == _wgslsmith_f_op_f32(-var_2.a)), all(select(vec3<bool>(true, true, true), vec3<bool>(arg_0, true, arg_0), select(vec3<bool>(true, true, false), vec3<bool>(false, arg_0, false), true))), arg_0, (u_input.c.x <= ~1u) != arg_0), select(!select(select(vec4<bool>(arg_0, true, arg_0, false), vec4<bool>(false, false, false, false), arg_0), select(vec4<bool>(false, true, true, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(true, false, false, arg_0)), vec4<bool>(arg_0, arg_0, arg_0, arg_0)), select(vec4<bool>(arg_0 | false, arg_0, arg_0, any(vec2<bool>(false, false))), select(vec4<bool>(arg_0, true, true, true), vec4<bool>(arg_0, true, arg_0, true), !vec4<bool>(arg_0, arg_0, arg_0, arg_0)), !vec4<bool>(arg_0, arg_0, arg_0, arg_0)), !vec4<bool>(true, arg_0, true, true)));
    return Struct_1(_wgslsmith_div_f32(var_2.a, 1286f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(var_2.b))), -1220f);
}

fn func_4(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(arg_0.a)), arg_0.c, false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1000f + 172f), -703f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1462f - 482f) - arg_0.c), 1596f) + arg_0.b), 1210f);
    let var_1 = vec3<bool>(min(u_input.c.x, u_input.b) != _wgslsmith_clamp_u32(_wgslsmith_add_u32(0u ^ u_input.c.x, u_input.c.x << (u_input.b % 32u)), reverseBits(firstTrailingBit(u_input.b)), u_input.c.x), true, any(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false))));
    var var_2 = (vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_div_i32(4206i, u_input.a.x), ~41458i, ~60803i)) & abs(~vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, 2147483647i), ~(-29676i), 1i));
    var_2 = ~countOneBits(_wgslsmith_clamp_vec3_i32(countOneBits(-vec3<i32>(0i, -4472i, -2147483647i)), vec3<i32>(_wgslsmith_mult_i32(var_2.x, var_2.x), var_2.x, -69469i), vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, u_input.a.x)), countOneBits(u_input.a.x), var_2.x & 2147483647i)));
    var var_3 = func_2(all(var_1), u_input.a.x);
    return _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 1i, var_2.x, -20042i), vec4<i32>(var_2.x, -1i, u_input.a.x, 1i)), vec4<i32>(0i, u_input.a.x, var_2.x, -20909i) ^ vec4<i32>(var_2.x, -1i, var_2.x, 1i)) << (vec4<u32>(firstTrailingBit(u_input.b), _wgslsmith_div_u32(u_input.c.x, u_input.b), 1u, u_input.c.x) % vec4<u32>(32u)), select(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(var_2.x, -8045i, 1i, u_input.a.x)), vec4<i32>(42891i, u_input.a.x, u_input.a.x, 2147483647i)), abs(select(vec4<i32>(var_2.x, var_2.x, u_input.a.x, u_input.a.x), vec4<i32>(-2147483647i, 0i, -13387i, u_input.a.x), vec4<bool>(var_1.x, true, false, false))), var_1.x)) << (_wgslsmith_add_u32(select(abs(max(u_input.b, 1u)), _wgslsmith_mult_u32(58320u, 0u) & (u_input.b | 1u), var_1.x), u_input.c.x) % 32u);
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x - -1978f) * _wgslsmith_f_op_f32(arg_1.c + -2038f)))), 333f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a - arg_1.b.x) - _wgslsmith_div_f32(-1259f, 336f)))), arg_1.b.x)));
    var var_1 = arg_1;
    var var_2 = vec3<i32>(max(_wgslsmith_add_i32(1i, firstLeadingBit(~u_input.a.x)), arg_0), _wgslsmith_sub_i32(0i, _wgslsmith_div_i32(-min(u_input.a.x, -47462i), -10447i)), i32(-1i) * -12660i);
    var_2 = vec3<i32>(abs(arg_0 & 1i), -u_input.a.x, reverseBits(-2147483647i));
    let var_3 = _wgslsmith_f_op_f32(-func_2(false, countOneBits(-u_input.a.x) | 1i).c);
    return arg_1;
}

fn func_6(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = func_2(arg_2, u_input.a.x);
    var_0 = func_5(0i, arg_3);
    var_0 = arg_0;
    var var_1 = Struct_1(-1227f, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_3.b + var_0.b), _wgslsmith_f_op_vec4_f32(-var_0.b)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(arg_3.c, -194f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))))));
    let var_2 = reverseBits(vec2<i32>(~_wgslsmith_dot_vec3_i32(-arg_1.yzw, -vec3<i32>(u_input.a.x, 55933i, u_input.a.x)), u_input.a.x));
    return func_5(countOneBits(i32(-1i) * -1i), Struct_1(_wgslsmith_f_op_f32(arg_3.b.x * -319f), vec4<f32>(arg_3.b.x, -1000f, 514f, func_2(any(vec4<bool>(arg_2, true, false, false)), _wgslsmith_dot_vec2_i32(arg_1.xz, vec2<i32>(u_input.a.x, arg_1.x))).a), _wgslsmith_f_op_f32(select(-403f, _wgslsmith_f_op_f32(sign(var_0.a)), all(!vec2<bool>(arg_2, true))))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec2<i32>, arg_3: Struct_1) -> f32 {
    let var_0 = arg_0;
    var var_1 = func_6(func_5(func_4(func_2(false, _wgslsmith_clamp_i32(1i, 1i, -13145i))), arg_3), select(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 1i, u_input.a.x, arg_2.x), vec4<i32>(0i, arg_2.x, 1i, u_input.a.x), vec4<i32>(21046i, u_input.a.x, u_input.a.x, 4438i))), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, u_input.a.x, -2147483647i), vec4<i32>(0i, 19363i, arg_2.x, 1i))), vec4<bool>(true, true, true, true)) >> (vec4<u32>(~arg_1.x, 1u, arg_1.x | arg_1.x, ~u_input.b) % vec4<u32>(32u)), select(true, !func_3(false) & all(vec3<bool>(true, true, true)), !any(vec3<bool>(true, false, false)) & any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false))), var_0);
    var var_2 = arg_3.c;
    let var_3 = func_6(arg_0, vec4<i32>(-func_4(Struct_1(-178f, arg_0.b, var_0.b.x)), ~(~(-1i)), _wgslsmith_div_i32(select(2147483647i, 0i, true), u_input.a.x >> (~arg_1.x % 32u)), -35241i), (_wgslsmith_f_op_f32(-arg_0.a) <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_3.a + arg_3.b.x), _wgslsmith_div_f32(1791f, -1356f), true))) | func_3(all(vec3<bool>(true, true, false))), var_0);
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.c - _wgslsmith_f_op_f32(f32(-1f) * -958f)));
    return _wgslsmith_f_op_f32(sign(483f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false & (true && !(_wgslsmith_f_op_f32(func_1(Struct_1(500f, vec4<f32>(187f, -340f, 383f, -609f), -751f), vec3<u32>(22176u, 0u, u_input.b), u_input.a, Struct_1(-547f, vec4<f32>(-532f, 876f, -964f, -1423f), 1335f))) <= _wgslsmith_f_op_f32(1000f - -1223f)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1175f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(func_2(func_3(var_0), -9121i).b)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, -339f, -1184f, 222f), vec4<f32>(-290f, 1000f, -112f, 2063f)))))), 761f);
    let var_2 = vec4<bool>(any(!select(select(vec4<bool>(false, true, var_0, true), vec4<bool>(true, true, var_0, true), var_0), !vec4<bool>(var_0, true, var_0, var_0), false)), var_0, !(-u_input.a.x > (min(u_input.a.x, -53782i) ^ -58316i)), any(vec2<bool>(func_3(any(vec2<bool>(var_0, true))), all(select(vec4<bool>(var_0, var_0, var_0, false), vec4<bool>(var_0, var_0, var_0, true), var_0)))));
    var var_3 = vec2<bool>(var_0, var_0);
    let var_4 = ~vec4<u32>(u_input.c.x, u_input.b, ~select(27552u, 1u, var_3.x), u_input.c.x);
    let var_5 = u_input.b ^ 1u;
    let var_6 = _wgslsmith_clamp_u32(83778u, ~_wgslsmith_div_u32(~(~u_input.b), _wgslsmith_add_u32(_wgslsmith_add_u32(var_4.x, 1u), var_5)), _wgslsmith_dot_vec2_u32(vec2<u32>(max(select(9259u, 4294967295u, var_3.x), _wgslsmith_sub_u32(4294967295u, var_4.x)), 1u), firstLeadingBit(var_4.yw)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.b.x)))), 4914u ^ var_5, -abs(firstTrailingBit(_wgslsmith_add_vec2_i32(u_input.a, vec2<i32>(19227i, 93036i)))), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, -_wgslsmith_add_i32(2147483647i, -1i), _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.a.x, -64027i), func_4(Struct_1(714f, vec4<f32>(var_1.b.x, var_1.b.x, var_1.a, 693f), -1224f)))), select(-vec3<i32>(2147483647i, 0i, 2147483647i), vec3<i32>(1i, 1i, 1i), !vec3<bool>(var_0, var_0, var_0)) ^ vec3<i32>(u_input.a.x, max(6964i, u_input.a.x), 1i)), _wgslsmith_f_op_f32(f32(-1f) * -436f));
}

