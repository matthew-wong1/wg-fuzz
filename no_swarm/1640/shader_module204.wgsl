struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(floor(arg_2));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, 722f) - vec2<f32>(-355f, 616f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1034f, -506f))))), !(any(vec4<bool>(true, true, false, false)) && !(1i != u_input.c.x)), true);
    var var_2 = !(~(~u_input.b) >= ~(~arg_1)) | true;
    var var_3 = arg_2;
    var_2 = !all(vec4<bool>(false, !any(vec2<bool>(true, false)), var_1.b, true));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-var_1.a), var_1.b, var_1.c);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: bool) -> f32 {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f * -864f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-355f * -621f), -1000f)))), arg_2, true);
    let var_1 = func_1(~(_wgslsmith_mod_vec2_i32(~arg_0, vec2<i32>(2147483647i, 2147483647i) ^ arg_0) << (arg_1 % vec2<u32>(32u))), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(813f - var_0.a.x))))));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(var_1.a)), true, !all(vec4<bool>(true, arg_2, true, arg_2)));
    var var_2 = vec2<u32>(~3614u, ~_wgslsmith_dot_vec3_u32(~(vec3<u32>(4294967295u, u_input.a, 59388u) << (vec3<u32>(u_input.a, arg_1.x, u_input.d) % vec3<u32>(32u))), vec3<u32>(min(arg_1.x, u_input.d), firstTrailingBit(u_input.d), 40808u)));
    let var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(869f + var_1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -691f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-592f))), var_1.a.x));
    return -1297f;
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -409f))), _wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-296f + 1382f))), -2206f, _wgslsmith_f_op_f32(max(-201f, 405f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(vec2<i32>(u_input.c.x, u_input.c.x), vec2<u32>(4550u, 24189u), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-161f + -381f)), 124f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -222f), _wgslsmith_f_op_f32(f32(-1f) * -1761f))))));
    var var_1 = ~abs(vec2<u32>(countOneBits(reverseBits(4294967295u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 4294967295u, u_input.d), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, 13950u, 1u), vec3<u32>(u_input.b, 4294967295u, 131162u)))));
    let var_2 = func_1(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(-u_input.c.yy, abs(u_input.c.zz)), _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, -11739i), firstLeadingBit(u_input.c.zy))) | _wgslsmith_clamp_vec2_i32(~u_input.c.zy << (vec2<u32>(55836u, var_1.x) % vec2<u32>(32u)), u_input.c.zz, firstLeadingBit(u_input.c.zx)), u_input.d, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1309f * 292f))) - -817f))));
    var var_3 = 52690u;
    let var_4 = _wgslsmith_dot_vec3_u32(~(~(~abs(vec3<u32>(var_1.x, 0u, 4294967295u)))), _wgslsmith_clamp_vec3_u32(vec3<u32>(select(select(1398u, u_input.d, true), 4294967295u, var_2.b), ~(~15661u), _wgslsmith_clamp_u32(var_1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 24836u, var_1.x), vec3<u32>(u_input.d, 0u, var_1.x)), u_input.a)), reverseBits(~vec3<u32>(u_input.d, 4294967295u, 58713u)), vec3<u32>(var_1.x, 51034u, ~(~40915u))));
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_sub_i32(u_input.c.x, u_input.c.x);
    var var_1 = func_1(_wgslsmith_mod_vec2_i32(~vec2<i32>(~u_input.c.x, 987i), -vec2<i32>(27792i, 1i)), 50573u, 1506f);
    var_1 = func_1(reverseBits(vec2<i32>(1i, _wgslsmith_div_i32(-u_input.c.x, _wgslsmith_mult_i32(0i, u_input.c.x)))), u_input.a, var_1.a.x);
    let var_2 = u_input.d;
    let var_3 = vec2<f32>(func_1(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(~u_input.c.xz, vec2<i32>(var_0, u_input.c.x)), vec2<i32>(11698i, func_2()), (vec2<i32>(u_input.c.x, u_input.c.x) | vec2<i32>(-30152i, 0i)) ^ vec2<i32>(u_input.c.x, 37679i)), 0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.x, var_1.a.x)) * -1000f)).a.x, _wgslsmith_f_op_f32(max(var_1.a.x, -1067f)));
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-745f, _wgslsmith_f_op_f32(func_3(u_input.c.zy, vec2<u32>(68945u, 76932u), var_1.b)))))), any(!vec2<bool>(func_1(vec2<i32>(u_input.c.x, 8168i), 2542u, -272f).c, false)), true);
    let var_5 = Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1704f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.a.x + var_3.x) + _wgslsmith_f_op_f32(-var_3.x))), vec2<f32>(585f, var_4.a.x))), any(vec3<bool>(var_4.a.x >= _wgslsmith_f_op_f32(1021f * var_4.a.x), false, var_4.a.x != -1000f)), func_1((u_input.c.zy >> (vec2<u32>(4294967295u, 1413u) % vec2<u32>(32u))) | vec2<i32>(u_input.c.x ^ -16303i, var_0), var_2, _wgslsmith_f_op_f32(sign(var_4.a.x))).b);
    let x = u_input.a;
    s_output = StorageBuffer(abs(3273i), vec2<i32>(-_wgslsmith_add_i32(-1i, var_0) >> (var_2 % 32u), -var_0), -_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(u_input.c.yzz, vec3<i32>(13547i, u_input.c.x, var_0)), ~u_input.c.wwy, vec3<i32>(-6592i, var_0, var_0) | vec3<i32>(-31921i, u_input.c.x, var_0)), vec3<i32>(-2147483647i, 29817i, u_input.c.x | 1i)), vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_add_i32(u_input.c.x, 2147483647i)));
}

