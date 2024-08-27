struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: f32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    var var_0 = !all(vec4<bool>(false, false, any(vec4<bool>(true, true, true, true)), true));
    var var_1 = false;
    var var_2 = Struct_1(any(select(vec3<bool>(true, all(vec2<bool>(false, true)), all(vec2<bool>(true, false))), vec3<bool>(true, true, true), true)), -772f, !select(true, (u_input.c.x > 66222u) || (u_input.c.x > u_input.c.x), (u_input.b.x <= 2147483647i) || all(vec2<bool>(false, false))));
    let var_3 = Struct_1(!(!all(vec2<bool>(false, var_2.c))), _wgslsmith_f_op_f32(floor(580f)), var_2.c);
    let var_4 = 4294967295u;
    return var_2.a;
}

fn func_2() -> f32 {
    var var_0 = Struct_1(!(true || func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2923f + 2945f) - _wgslsmith_f_op_f32(574f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(round(-1391f)), true)))), countOneBits(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.b.x, u_input.a.x, u_input.b.x, 20748i)), firstTrailingBit(vec4<i32>(0i, u_input.a.x, 2807i, u_input.b.x)))) <= (_wgslsmith_dot_vec4_i32(~vec4<i32>(25967i, u_input.b.x, u_input.a.x, u_input.b.x), u_input.b & u_input.b) & abs(u_input.b.x)));
    let var_1 = Struct_1(var_0.c, 832f, false);
    var_0 = Struct_1(true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)) * 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-319f)) + _wgslsmith_f_op_f32(ceil(514f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-827f, -648f)))))), any(select(!select(vec2<bool>(false, true), vec2<bool>(var_0.a, var_1.a), vec2<bool>(true, false)), select(!vec2<bool>(var_1.c, var_0.a), vec2<bool>(true, var_1.c), all(vec3<bool>(false, true, true))), true)));
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.b)) + _wgslsmith_div_f32(var_0.b, var_0.b)) * -706f) + 148f), all(vec3<bool>(var_1.a, all(!vec4<bool>(var_0.c, true, var_0.a, var_0.a)), u_input.c.x == 19370u)));
    var var_2 = 0i;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + 941f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b))))));
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> Struct_1 {
    var var_0 = u_input.b.wwy;
    let var_1 = arg_0.b;
    let var_2 = vec3<f32>(-446f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * arg_0.c), -211f);
    var_0 = _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(~u_input.b.yxy, max(~u_input.b.xwy | u_input.b.zzw, u_input.b.yxy)), _wgslsmith_mult_vec3_i32(abs(min(vec3<i32>(-1i, var_0.x, var_1), u_input.b.yxy) ^ firstLeadingBit(vec3<i32>(var_0.x, 1i, -35809i))), u_input.b.zyy));
    var_0 = select(u_input.b.zxx, select(_wgslsmith_clamp_vec3_i32(u_input.b.zwz, u_input.b.yxy, vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.b.yyw, u_input.b.zyw), 24905i, u_input.b.x)), _wgslsmith_div_vec3_i32(u_input.b.wyy, ~(~u_input.b.xwz)), vec3<bool>(true != (var_2.x < 2135f), false, all(vec3<bool>(true, true, true)))), vec3<bool>(true, false, any(vec2<bool>(true, true))));
    return Struct_1(true, -1023f, select(any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1487f + var_2.x) * _wgslsmith_div_f32(-991f, -810f)), any(vec2<bool>(true, true))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<u32>) -> vec4<bool> {
    var var_0 = arg_0;
    var_0 = Struct_2(_wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, firstTrailingBit(15965u)), firstLeadingBit(35721u) & u_input.c.x), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(37763u, u_input.c.x, 13462u, 4294967295u), u_input.c), ~(~15268u))), _wgslsmith_clamp_i32(-1i, -firstTrailingBit(47004i) | ~abs(var_0.b), 14350i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) + -665f))), var_0.d);
    let var_1 = countOneBits(0u);
    let var_2 = Struct_2(_wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_0.a, 44387u), u_input.c.xyy & vec3<u32>(var_0.a, 33641u, 4294967295u))), _wgslsmith_dot_vec3_u32(vec3<u32>(34587u, 27630u, ~12419u), u_input.c.ywx)), firstLeadingBit(-1i) << ((1u ^ arg_2.x) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.b - _wgslsmith_f_op_f32(-arg_0.c))))), max(select(countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(var_0.b, 37946i), u_input.b.zx)), arg_0.d, !(arg_1.a | arg_1.a)), _wgslsmith_add_vec2_i32(abs(vec2<i32>(u_input.a.x, 56095i)), _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, u_input.a.x), var_0.d))));
    var_0 = Struct_2(firstTrailingBit(max(4294967295u, 1u)), 0i, _wgslsmith_f_op_f32(trunc(954f)), -max(arg_0.d, _wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.a.x, 6155i), arg_0.d)));
    return vec4<bool>(any(vec4<bool>(!(1769f > var_0.c), select(true, arg_1.c, arg_1.c), true, !arg_1.c)), any(!(!(!vec3<bool>(arg_1.a, true, false)))), arg_1.c, arg_1.c);
}

fn func_5(arg_0: vec4<bool>, arg_1: bool, arg_2: vec4<f32>, arg_3: bool) -> Struct_2 {
    var var_0 = func_1(Struct_2(~_wgslsmith_sub_u32(4294967295u, u_input.c.x) | ~(~u_input.c.x), ~_wgslsmith_mod_i32(u_input.a.x, countOneBits(-1i)), -1281f, -vec2<i32>(u_input.a.x, u_input.a.x)), max(u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-25226i, 0i, 2147483647i, -42271i), vec4<i32>(u_input.a.x, 7996i, -55272i, 2147483647i)), 1i, _wgslsmith_mod_i32(u_input.b.x, u_input.a.x)), -u_input.b.zxz)));
    var_0 = Struct_1(!all(arg_0), var_0.b, 0i >= (-1i ^ u_input.a.x));
    var var_1 = Struct_1(arg_1, -883f, false);
    var_1 = Struct_1(arg_1, _wgslsmith_f_op_f32(-var_1.b), true == !arg_1);
    var_1 = Struct_1(all(vec4<bool>(var_0.b <= var_1.b, true, all(vec3<bool>(true, var_1.c, false)), true)) | ((any(arg_0.zwx) && true) & true), var_0.b, !func_3());
    return Struct_2(~u_input.c.x, countOneBits(~(-2147483647i)), _wgslsmith_f_op_f32(-var_1.b), vec2<i32>(_wgslsmith_add_i32(-11007i, u_input.a.x) << (reverseBits(_wgslsmith_div_u32(u_input.c.x, u_input.c.x)) % 32u), 1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(1u, 31803i, 1f, u_input.b.xy);
    let var_1 = func_5(select(vec4<bool>(false, any(vec3<bool>(false, false, true)) | any(vec4<bool>(true, false, false, true)), !(var_0.c != 356f), var_0.c == _wgslsmith_f_op_f32(f32(-1f) * -2008f)), !func_4(var_0, func_1(var_0, var_0.b), vec2<u32>(1u, var_0.a) & vec2<u32>(var_0.a, var_0.a)), true), all(vec2<bool>((1i > u_input.b.x) & true, false)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, var_0.c, -1737f, 861f)) + vec4<f32>(var_0.c, var_0.c, 1194f, -1000f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(379f, var_0.c, -324f, var_0.c))), vec4<f32>(-567f, _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(sign(315f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))))), true);
    var var_2 = firstLeadingBit(min(~(~var_1.a), ~1u));
    var_2 = _wgslsmith_add_u32(firstLeadingBit(u_input.c.x), 37935u);
    var_2 = 32488u;
    var var_3 = Struct_2(_wgslsmith_sub_u32(_wgslsmith_add_u32(1u, reverseBits(var_1.a)), var_0.a), var_0.b, var_0.c, _wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(~(-1i), _wgslsmith_clamp_i32(~var_1.d.x, var_1.d.x, -var_0.b))));
    var_3 = Struct_2(~_wgslsmith_add_u32(var_3.a, 74946u), select(abs(u_input.a.x), min(var_0.b, _wgslsmith_mod_i32(_wgslsmith_mult_i32(0i, -1i), _wgslsmith_clamp_i32(var_3.b, var_0.d.x, -2889i))), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.c, -607f)) * _wgslsmith_div_f32(var_1.c, -559f)) - _wgslsmith_f_op_f32(var_3.c + -291f))), vec2<i32>(-var_0.b, abs(-1i)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_u32(u_input.c.xwz, vec3<u32>(~u_input.c.x, 36908u, _wgslsmith_mod_u32(var_1.a, 1u))), select(_wgslsmith_sub_i32(var_0.b, ~0i), -5367i, select(true, true, true)), ~(~(~min(vec3<u32>(0u, var_0.a, 0u), u_input.c.ywx))), vec2<i32>(-1246i, var_1.b), 0i);
}

