struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = arg_0;
    var_0 = Struct_1(~abs(~var_0.a), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(3339f, var_0.b.x, arg_0.b.x))), vec3<f32>(_wgslsmith_f_op_f32(var_0.b.x * arg_1.b.x), -262f, _wgslsmith_f_op_f32(exp2(arg_0.b.x))), (81012u << (1u % 32u)) != _wgslsmith_mod_u32(var_0.a.x, 57000u))))));
    let var_1 = arg_1;
    let var_2 = countOneBits(firstLeadingBit(~firstLeadingBit(~vec3<u32>(var_0.a.x, var_1.a.x, var_1.a.x))));
    var_0 = arg_0;
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-var_1.b))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-700f, -1000f, arg_0.b.x) + var_1.b))))), vec3<f32>(-680f, _wgslsmith_f_op_f32(ceil(1031f)), 1339f), 1790f <= _wgslsmith_f_op_f32(arg_0.b.x * -800f)))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(vec2<u32>(_wgslsmith_clamp_u32(arg_0.a.x, ~6842u, 1u), arg_0.a.x), vec3<f32>(arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(280f * arg_0.b.x) + -1174f)), _wgslsmith_f_op_f32(round(681f))));
    var var_1 = Struct_1(arg_0.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1328f, arg_0.b.x, -1000f) - _wgslsmith_f_op_vec3_f32(func_3(arg_0, arg_0))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(var_0.b - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, var_0.b.x, 602f) + arg_0.b))))));
    return Struct_1(abs(~(~(~vec2<u32>(25677u, 65373u)))), _wgslsmith_f_op_vec3_f32(select(arg_0.b, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(min(-1000f, 399f)), var_1.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, -581f, var_0.b.x)) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-375f, -1665f, -1123f)))), vec3<bool>(true, true, true))), !(_wgslsmith_div_i32(-12344i, u_input.a) != (-2147483647i & u_input.a)))));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: vec3<u32>) -> vec2<bool> {
    let var_0 = reverseBits(-abs(reverseBits(abs(vec4<i32>(u_input.d, u_input.a, -28484i, -2147483647i)))));
    var var_1 = ~arg_2.a.x >= (_wgslsmith_mod_u32(arg_3.x, countOneBits(min(arg_2.a.x, arg_3.x))) << (~(~(~arg_3.x)) % 32u));
    var var_2 = arg_2.b.x;
    var_2 = func_2(arg_2).b.x;
    var var_3 = _wgslsmith_dot_vec2_u32(~(arg_3.zz ^ ~vec2<u32>(arg_3.x, 9527u)), select(arg_2.a, _wgslsmith_mult_vec2_u32(arg_2.a, _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, arg_3.x), _wgslsmith_clamp_vec2_u32(arg_3.yy, arg_2.a, arg_3.zz))), (arg_2.a.x & countOneBits(4294967295u)) > arg_3.x));
    return vec2<bool>(any(vec3<bool>(true, !arg_1, !arg_1)) & arg_1, false);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(vec2<u32>(1u, ~130980u), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 172f, -204f) + vec3<f32>(1000f, 430f, -103f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-580f, 1449f, 1000f))) + vec3<f32>(869f, -1000f, 552f)), vec3<bool>(true, true, true))))));
    let var_1 = u_input.c.x | 0i;
    let var_2 = func_4(2147483647i, any(select(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), true), vec4<bool>(true, false, true, false), true)), func_2(Struct_1(vec2<u32>(max(12250u, 4294967295u), var_0.a.x & var_0.a.x), var_0.b)), vec3<u32>(var_0.a.x, ~(~_wgslsmith_clamp_u32(var_0.a.x, 0u, var_0.a.x)), ~var_0.a.x));
    var var_3 = func_2(Struct_1(~vec2<u32>(~var_0.a.x, ~1346u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(802f, -1000f, var_0.b.x))))));
    var_0 = func_2(func_2(Struct_1(~(~vec2<u32>(var_3.a.x, 1u)), var_0.b)));
    return Struct_1(reverseBits(abs(_wgslsmith_div_vec2_u32(~vec2<u32>(94779u, 27983u), var_3.a))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(func_2(Struct_1(vec2<u32>(var_3.a.x, var_0.a.x), var_0.b)).b.x, _wgslsmith_div_f32(-1585f, _wgslsmith_f_op_f32(f32(-1f) * -1210f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(412f, var_0.b.x)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - var_3.b.x)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_3.b.x, var_0.b.x), _wgslsmith_f_op_f32(abs(-137f)))), var_0.b.x), var_2.x)));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    let var_0 = vec4<u32>(arg_3.a.x, arg_0.a.x, select(17978u, 0u, true), ~arg_0.a.x);
    var var_1 = vec4<bool>(any(!select(vec3<bool>(arg_2, false, arg_2), vec3<bool>(false, arg_2, arg_2), vec3<bool>(arg_2, false, arg_2))) & select(!arg_2, true, arg_2), arg_2 & (_wgslsmith_add_i32(_wgslsmith_mult_i32(2147483647i, u_input.c.x), ~u_input.e) != u_input.e), true, true || any(func_4(~u_input.e, arg_2, Struct_1(vec2<u32>(1u, arg_0.a.x), vec3<f32>(-1000f, arg_3.b.x, arg_1.x)), vec3<u32>(0u, 41375u, 5693u))));
    return arg_3;
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0.a.x;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), abs(~vec2<u32>(34389u, 7168u))));
    let var_1 = vec2<bool>(true, true);
    var var_2 = Struct_1(~_wgslsmith_sub_vec2_u32(vec2<u32>(~4294967295u, var_0.x), vec2<u32>(1u, 37800u) << (~vec2<u32>(var_0.x, var_0.x) % vec2<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2139f) - _wgslsmith_f_op_f32(320f - -552f)))), _wgslsmith_f_op_f32(trunc(-598f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2513f - 366f))))));
    var_2 = func_6(func_5(func_1(), _wgslsmith_f_op_vec3_f32(-var_2.b), true, func_1()));
    let var_3 = ~(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, ~var_0.x, 0u), ~(vec3<u32>(var_0.x, var_0.x, var_0.x) ^ vec3<u32>(var_2.a.x, 5854u, 5811u))));
    let var_4 = var_2.a;
    var_2 = func_1();
    var_2 = func_1();
    let var_5 = vec3<i32>(countOneBits(min(~u_input.a, ~2147483647i) >> (var_0.x % 32u)), countOneBits(firstTrailingBit(~u_input.b)), u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(-_wgslsmith_mult_vec3_i32(vec3<i32>(-39059i, 26564i, -14335i), var_5), _wgslsmith_sub_vec3_i32(~vec3<i32>(0i, u_input.b, u_input.a), vec3<i32>(-43307i, var_5.x, u_input.a) | u_input.c), select(vec3<bool>(true, true, true), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, var_1.x, var_1.x))) >> (~(~vec3<u32>(var_0.x, 1u, 1u)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-func_1().b.x));
}

