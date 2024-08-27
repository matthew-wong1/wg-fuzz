struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: u32,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> bool {
    var var_0 = Struct_1(~abs(-vec3<i32>(1i, -912i, -20856i) | firstLeadingBit(vec3<i32>(2147483647i, u_input.c, -34729i))), (any(vec3<bool>(true, true, true)) && all(select(vec2<bool>(true, false), vec2<bool>(false, true), true))) && all(vec4<bool>(true, true, true, true)), 4294967295u, vec4<f32>(_wgslsmith_f_op_f32(-248f + 286f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-740f))), -199f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -997f), _wgslsmith_f_op_f32(round(652f)))), _wgslsmith_f_op_f32(step(-931f, _wgslsmith_f_op_f32(-1472f * 686f)))))), u_input.b.x);
    var var_1 = select(~vec2<i32>(~(-var_0.a.x), _wgslsmith_dot_vec3_i32(var_0.a >> (vec3<u32>(4294967295u, 4294967295u, u_input.d.x) % vec3<u32>(32u)), select(var_0.a, vec3<i32>(2147483647i, 25883i, 23819i), var_0.b))), var_0.a.yx & vec2<i32>((i32(-1i) * -1243i) >> (_wgslsmith_mod_u32(var_0.c, 16775u) % 32u), u_input.c), select(select(vec2<bool>(true, true), select(select(vec2<bool>(var_0.b, false), vec2<bool>(false, false), var_0.b), !vec2<bool>(var_0.b, var_0.b), select(vec2<bool>(true, var_0.b), vec2<bool>(true, false), vec2<bool>(var_0.b, true))), !var_0.b), select(vec2<bool>(true & var_0.b, true), vec2<bool>(true, var_0.b), (true & var_0.b) & any(vec2<bool>(true, var_0.b))), vec2<bool>(var_0.b, true)));
    let var_2 = Struct_1(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(var_1.x, u_input.a), reverseBits(var_1.x)), -2147483647i, -2147483647i), !var_0.b, select(4294967295u, 8999u, ~u_input.d.x < abs(firstTrailingBit(4294967295u))), _wgslsmith_f_op_vec4_f32(var_0.d * vec4<f32>(832f, var_0.d.x, _wgslsmith_f_op_f32(f32(-1f) * -315f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1144f))))), select(u_input.d.x, 4294967295u, true));
    var_0 = Struct_1(~_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(reverseBits(var_2.a), firstLeadingBit(var_2.a)), -(~vec3<i32>(0i, var_0.a.x, var_0.a.x))), true, ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(2994u, var_0.c, u_input.b.x), vec3<u32>(var_0.c, var_0.c, u_input.d.x)), ~var_0.c, ~var_2.c, _wgslsmith_div_u32(var_0.c, var_0.e)), vec4<u32>(var_2.e, abs(1u), abs(957u), 1u << (var_2.c % 32u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-508f, var_2.d.x, 669f, -570f)) - var_2.d), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.d.x, _wgslsmith_f_op_f32(-var_0.d.x), 884f, _wgslsmith_f_op_f32(var_2.d.x - var_2.d.x))))), firstTrailingBit(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c, var_0.c, u_input.d.x) >> (vec3<u32>(u_input.b.x, 23079u, 4294967295u) % vec3<u32>(32u)), ~vec3<u32>(33825u, var_2.c, 0u)))));
    let var_3 = vec3<i32>(var_0.a.x, firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_mult_i32(-var_1.x, abs(var_1.x)), -var_1.x ^ _wgslsmith_dot_vec4_i32(vec4<i32>(19050i, var_1.x, 2147483647i, 2799i), vec4<i32>(var_2.a.x, -23968i, var_1.x, 3369i)))), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(var_2.a.zz, vec2<i32>(var_0.a.x, var_0.a.x) << (u_input.d % vec2<u32>(32u))) << (_wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_0.e, 4294967295u, var_0.e, var_0.c)), max(vec4<u32>(var_2.c, var_0.c, var_2.e, 30673u), vec4<u32>(81708u, u_input.d.x, u_input.d.x, var_0.e))) % 32u), _wgslsmith_div_i32(reverseBits(u_input.c) | var_0.a.x, reverseBits(var_2.a.x))));
    return var_0.b;
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: f32) -> bool {
    let var_0 = Struct_1(vec3<i32>(select(_wgslsmith_mod_i32(u_input.a, -31397i), -45563i, true || all(vec4<bool>(true, false, true, true))), ~u_input.c, u_input.c), func_3(), reverseBits(u_input.d.x), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(trunc(-112f)), arg_1.x, _wgslsmith_f_op_f32(-arg_2.a)))))), ~(reverseBits(_wgslsmith_clamp_u32(u_input.b.x, 0u, u_input.b.x)) | 22671u));
    let var_1 = 2567f;
    return false;
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: u32) -> bool {
    return select(select(all(vec3<bool>(true, true, true)), false, !(max(u_input.c, u_input.c) == u_input.a)), func_2(arg_2, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_0, arg_0, -1233f)))))), Struct_2(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(1674f - -1226f))), -132f), any(vec3<bool>(all(vec2<bool>(true, true)), true, all(vec2<bool>(false, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(511f + -721f), -444f)))));
    var_0 = Struct_2(var_0.a);
    var var_1 = Struct_1(select(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(u_input.a, 1i, u_input.c)), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.c, -31447i), vec3<i32>(-1002i, u_input.a, u_input.a))), reverseBits(-vec3<i32>(u_input.a, -10175i, -2791i))), select(~vec3<i32>(u_input.a, 15630i, u_input.c), vec3<i32>(-42553i, 16996i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -31062i), vec2<i32>(u_input.a, u_input.c))), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)), true), func_1(_wgslsmith_f_op_f32(var_0.a * var_0.a), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(var_0.a, 1348f), 838f, _wgslsmith_div_f32(var_0.a, var_0.a), _wgslsmith_f_op_f32(exp2(var_0.a))))), ~((0u >> (u_input.d.x % 32u)) ^ countOneBits(u_input.d.x))), u_input.b.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(239f, var_0.a, -1079f, var_0.a) + vec4<f32>(1000f, var_0.a, -547f, var_0.a))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, 2172f, var_0.a, var_0.a), vec4<f32>(var_0.a, -1000f, 697f, 1210f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.a, 1343f, 1000f, -175f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.a, 587f, -921f) + vec4<f32>(-887f, var_0.a, 1558f, var_0.a))))), u_input.b.x);
    var var_2 = Struct_2(-208f);
    let var_3 = Struct_1(vec3<i32>(_wgslsmith_div_i32(countOneBits(firstTrailingBit(2147483647i)), u_input.a), 1i, 1i), var_1.b, ~max(40360u, abs(var_1.e)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.d) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_2.a, var_2.a, var_2.a))) + _wgslsmith_f_op_vec4_f32(var_1.d * _wgslsmith_div_vec4_f32(var_1.d, vec4<f32>(var_0.a, var_2.a, var_2.a, var_0.a)))), var_1.d), u_input.b.x);
    let var_4 = -2147483647i;
    let var_5 = Struct_1(vec3<i32>(-2147483647i, 1i & -abs(var_3.a.x), -var_1.a.x), ~_wgslsmith_mod_i32(i32(-1i) * -49013i, 5163i) < _wgslsmith_add_i32(u_input.c << (~1u % 32u), _wgslsmith_sub_i32(16568i, var_1.a.x) & ~0i), 48409u, var_3.d, firstLeadingBit(32171u));
    var var_6 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1111f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(var_3.d.xwy, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_3.d.ywy - vec3<f32>(var_3.d.x, var_5.d.x, var_3.d.x)))))), true)), abs(var_5.a), (vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_5.c, 53353u, 9827u, var_1.c), vec4<u32>(4294967295u, 44029u, 77902u, 28249u)), u_input.b.x, 26385u) >> (abs(~vec3<u32>(var_3.e, 52968u, 2490u)) % vec3<u32>(32u))) & ~vec3<u32>(4294967295u, var_3.c, u_input.d.x >> (var_5.e % 32u)), _wgslsmith_add_vec4_i32(~(-(vec4<i32>(-2147483647i, -3298i, -11339i, 0i) ^ vec4<i32>(var_3.a.x, var_1.a.x, u_input.a, -1i))), countOneBits(countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(31673i, 4862i, u_input.c, var_1.a.x), vec4<i32>(var_3.a.x, u_input.a, -7190i, var_3.a.x), vec4<i32>(var_3.a.x, -34320i, 1i, 2147483647i))))));
}

