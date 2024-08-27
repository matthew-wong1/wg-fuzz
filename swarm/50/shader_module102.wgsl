struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: vec2<f32>,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: i32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-400f, -155f, 1712f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-450f, -746f, 409f) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-169f, 1951f, 570f), vec3<f32>(-1043f, -749f, -291f)))))));
    let var_1 = !select(true, !any(vec2<bool>(true, true)) & all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), select(false, true, u_input.a.x < -u_input.a.x));
    let var_2 = -u_input.a.x;
    var var_3 = _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(~max(vec4<i32>(u_input.a.x, 14309i, 1i, u_input.a.x), -vec4<i32>(var_2, var_2, u_input.a.x, 37982i)), vec4<i32>(2147483647i, u_input.a.x, 1i, select(i32(-1i) * -1i, -u_input.a.x, var_1))), countOneBits(~(~vec4<i32>(1i, 1i, 1i, 1i))));
    let var_4 = u_input.a;
    return !var_1;
}

fn func_2() -> f32 {
    var var_0 = vec3<bool>(true, func_3(), u_input.a.x > 43871i);
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-398f, 1439f, -588f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(928f, -811f, -531f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1092f, -377f, 624f)))))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(var_1.xx));
    var_0 = select(!vec3<bool>(all(vec4<bool>(false, var_0.x, false, var_0.x)), true, false), !(!select(!vec3<bool>(var_0.x, true, false), select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(false, var_0.x, false), vec3<bool>(false, false, var_0.x)), true)), true);
    var_0 = vec3<bool>(var_0.x, var_0.x, true);
    return _wgslsmith_f_op_f32(f32(-1f) * -338f);
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2()))))));
    var var_1 = Struct_1(~32812u, firstLeadingBit(_wgslsmith_clamp_u32(4294967295u, 42336u, 0u)), -2147483647i, ~(~select(~vec4<u32>(80038u, 9862u, 55048u, 0u), firstLeadingBit(vec4<u32>(434u, 0u, 7057u, 41994u)), any(vec2<bool>(true, false)))));
    let var_2 = Struct_1(countOneBits(var_1.a), var_1.d.x, abs(~(~min(var_1.c, u_input.a.x))), ~(abs(vec4<u32>(53001u, 18094u, 25925u, var_1.a)) << (var_1.d % vec4<u32>(32u))) | var_1.d);
    return Struct_2(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_mult_i32(4411i, u_input.a.x), 24621i, _wgslsmith_div_i32(var_1.c, 2147483647i)) | _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(var_2.c, 1i, -2147483647i, var_1.c)), vec4<i32>(u_input.a.x, var_1.c, -1i, -22787i)), ~vec4<i32>(var_1.c, _wgslsmith_div_i32(2147483647i, var_1.c), firstTrailingBit(32629i), -u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-423f * -324f) - -568f) * var_0)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0, 355f))))) * vec2<f32>(var_0, var_0)))), _wgslsmith_mult_vec3_u32(var_2.d.zyy, var_2.d.wxx) | var_1.d.zwz, Struct_1(var_1.b, var_2.a | reverseBits(var_2.b ^ 4294967295u), -firstTrailingBit(var_2.c), var_1.d));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: u32) -> Struct_3 {
    let var_0 = false;
    let var_1 = any(select(!vec4<bool>(!arg_0, true, arg_0, !var_0), select(!vec4<bool>(true, var_0, arg_0, false), !select(vec4<bool>(true, false, true, arg_0), vec4<bool>(var_0, false, var_0, arg_0), vec4<bool>(var_0, false, var_0, false)), arg_0 | func_3()), vec4<bool>(func_3(), true, !(false || arg_0), true)));
    let var_2 = Struct_3(arg_1.e);
    let var_3 = _wgslsmith_sub_vec2_i32(firstTrailingBit(u_input.a.zy), ~arg_1.a.wy);
    let var_4 = vec3<u32>(arg_1.d.x, arg_1.d.x | countOneBits(1u), _wgslsmith_dot_vec4_u32(~arg_1.e.d, abs(~vec4<u32>(var_2.a.a, 115236u, arg_2, 0u))));
    return Struct_3(func_1().e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_add_vec2_u32(~vec2<u32>(~408u, countOneBits(4294967295u)), abs(_wgslsmith_clamp_vec2_u32(~vec2<u32>(30213u, 1u), ~vec2<u32>(4294967295u, 1u), ~vec2<u32>(55017u, 1u))));
    var var_1 = ~(~var_0);
    var var_2 = Struct_3(Struct_1(var_1.x >> (1u % 32u), var_0.x, ~u_input.a.x, countOneBits(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 4294967295u, 0u, var_1.x), vec4<u32>(49300u, var_0.x, var_1.x, 42260u)), ~vec4<u32>(var_0.x, 21584u, var_0.x, 5691u)))));
    var_2 = func_4((~(~3231i) < ~var_2.a.c) || all(vec4<bool>(true, true, true, true)), func_1(), min(var_0.x, 1u));
    var_1 = var_2.a.d.ww;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(224f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, -1000f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(433f))))), -374f));
}

