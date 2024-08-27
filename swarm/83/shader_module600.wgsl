struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: vec2<bool>,
    d: vec2<u32>,
    e: bool,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec4<bool>) -> bool {
    return ~_wgslsmith_dot_vec3_i32(~abs(vec3<i32>(-65672i, 12940i, 0i)), _wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(0i, -1403i, 1i)), abs(vec3<i32>(1i, 0i, 0i)))) != -1i;
}

fn func_3(arg_0: u32, arg_1: f32) -> vec2<u32> {
    let var_0 = ~vec4<u32>(max(_wgslsmith_dot_vec4_u32(vec4<u32>(9862u, arg_0, 35568u, arg_0), vec4<u32>(66952u, 0u, 20228u, 5311u)) | arg_0, u_input.a.x), 1u, u_input.a.x, _wgslsmith_div_u32(9512u, 48117u));
    var var_1 = ~vec2<i32>(select(16151i, _wgslsmith_mult_i32(1i, 1i), any(vec4<bool>(false, false, false, true))), -7999i) >> (vec2<u32>(arg_0, u_input.a.x) % vec2<u32>(32u));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-749f, arg_1, arg_1))))));
    let var_3 = select(var_0.x, _wgslsmith_mod_u32(~u_input.a.x, _wgslsmith_mult_u32(var_0.x, ~65607u)), any(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), true), vec4<bool>(false, true, true, false), all(vec4<bool>(true, false, false, false)))));
    var var_4 = Struct_3(!(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), true))));
    return ~_wgslsmith_add_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0, 0u), firstLeadingBit(vec2<u32>(4294967295u, var_0.x))), u_input.a.yz << (var_0.xx % vec2<u32>(32u)));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: bool, arg_3: vec3<u32>) -> Struct_3 {
    var var_0 = Struct_2(~arg_3.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(140f + 770f)), _wgslsmith_f_op_f32(sign(-357f))) - vec2<f32>(_wgslsmith_f_op_f32(-799f * _wgslsmith_f_op_f32(abs(129f))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-855f, -828f))))), vec2<bool>(all(!select(arg_0.xzz, vec3<bool>(arg_0.x, arg_0.x, arg_0.x), arg_0.yzx)), arg_0.x | !func_2(arg_0)), select(max(arg_3.xz, select(vec2<u32>(1u, 1u) >> (u_input.a.yx % vec2<u32>(32u)), func_3(4294967295u, -608f), select(arg_0.wy, arg_0.zx, vec2<bool>(true, false)))), ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yw)), select(!vec2<bool>(arg_0.x, arg_2), !(!vec2<bool>(arg_2, true)), true)), arg_0.x);
    let var_1 = Struct_3(!var_0.c);
    var var_2 = max(-firstTrailingBit(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, arg_1.x, 1i), arg_1.xwx, arg_1.wwz), firstTrailingBit(vec3<i32>(2147483647i, arg_1.x, -2147483647i)), any(vec4<bool>(true, true, true, arg_2)))), ~arg_1.wxw);
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, 1184f, var_0.b.x))))))));
    var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_3.a));
    return Struct_3(vec2<bool>(var_0.c.x, var_0.c.x));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3) -> Struct_3 {
    var var_0 = Struct_4(func_1(vec4<bool>(arg_1.a.x, true, false, any(arg_0.yww)), vec4<i32>(~(-38413i), _wgslsmith_mod_i32(_wgslsmith_mult_i32(33704i, 1i), firstTrailingBit(33521i)), 1i, ~(~(-10193i))), select(any(!vec3<bool>(arg_0.x, false, true)), _wgslsmith_f_op_f32(select(-937f, -199f, true)) > _wgslsmith_f_op_f32(sign(814f)), all(arg_0)), u_input.a.xwx), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1359f, 1554f, -704f) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1031f, 1910f, -2031f), vec3<f32>(105f, 1857f, -1465f)))))), 1i);
    var var_1 = ~12039u;
    var_1 = ~(~u_input.a.x | ~u_input.a.x);
    var_0 = Struct_4(func_1(vec4<bool>(var_0.b.a.x < 666f, true, false, all(arg_0)), -(~(vec4<i32>(-1i, var_0.c, var_0.c, -5392i) ^ vec4<i32>(2147483647i, var_0.c, 10928i, var_0.c))), all(!arg_0) == (!arg_0.x == false), vec3<u32>(~58619u, max(countOneBits(10453u), countOneBits(u_input.a.x)), ~countOneBits(0u))), var_0.b, i32(-1i) * -(_wgslsmith_div_i32(var_0.c, var_0.c) & max(var_0.c, var_0.c)));
    var var_2 = var_0.b.a.x;
    return var_0.a;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_3) -> Struct_4 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2077f, -1587f, arg_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 639f, arg_0.x) * vec3<f32>(arg_0.x, 1704f, arg_0.x)), vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(526f, arg_0.x, -2511f)), vec3<f32>(_wgslsmith_f_op_f32(840f + 659f), _wgslsmith_f_op_f32(min(-343f, 1530f)), arg_0.x)))));
    var var_1 = _wgslsmith_f_op_f32(ceil(arg_0.x));
    let var_2 = abs(u_input.a.yx);
    var var_3 = !(!select(!(!vec4<bool>(arg_1.a.x, true, arg_1.a.x, arg_1.a.x)), !(!vec4<bool>(false, arg_1.a.x, false, arg_1.a.x)), vec4<bool>(arg_1.a.x, 85011u == u_input.a.x, any(vec3<bool>(false, arg_1.a.x, arg_1.a.x)), true)));
    let var_4 = Struct_3(vec2<bool>(true, arg_1.a.x));
    return Struct_4(Struct_3(!arg_1.a), Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_0.a, var_0.a), var_0.a)))), ~(-1i << (firstLeadingBit(var_2.x) % 32u)) | _wgslsmith_sub_i32(-1i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 0i), vec2<i32>(340i, 54617i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2454f, -1124f) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-758f, -582f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1476f, 422f) + vec2<f32>(1269f, -1450f)), vec2<f32>(-1000f, 624f))))))), func_4(vec4<bool>(true, true, any(vec2<bool>(true, true)), true), func_1(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), 52454u > u_input.a.x), ~vec4<i32>(1i, 1i, 1i, 1i), countOneBits(1u) >= min(u_input.a.x, 36685u), u_input.a.xxz)));
    var var_1 = Struct_2(_wgslsmith_mult_u32(u_input.a.x, ~(~_wgslsmith_div_u32(u_input.a.x, 18552u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b.a.xx * var_0.b.a.xy)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.b.a.x, -165f)))))))), !var_0.a.a, u_input.a.zy, !var_0.a.a.x);
    var_0 = Struct_4(func_5(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2118f, -603f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.a.x, -597f) - vec2<f32>(-414f, var_0.b.a.x))), vec2<bool>(true, func_5(var_0.b.a.xx, Struct_3(var_0.a.a)).a.a.x))), func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1238f, 1396f)) - _wgslsmith_f_op_vec2_f32(var_1.b * vec2<f32>(1957f, 293f))), func_4(!vec4<bool>(var_1.c.x, var_0.a.a.x, var_1.e, true), Struct_3(vec2<bool>(true, var_0.a.a.x)))).a).a, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_0.b.a + vec3<f32>(var_1.b.x, var_0.b.a.x, 528f)))) * _wgslsmith_f_op_vec3_f32(step(var_0.b.a, vec3<f32>(1016f, 2361f, var_0.b.a.x))))), 0i);
    let var_2 = Struct_2(abs(29962u), var_0.b.a.zx, vec2<bool>(!(_wgslsmith_f_op_f32(-var_0.b.a.x) <= var_1.b.x), true), var_1.d, select(var_0.a.a.x, func_1(vec4<bool>(true, var_1.e, var_1.c.x, false), vec4<i32>(-2147483647i, 2147483647i, 0i, var_0.c), true, u_input.a.zyz).a.x, (var_0.a.a.x || false) | true) || !var_0.a.a.x);
    let var_3 = func_5(vec2<f32>(713f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.x - _wgslsmith_f_op_f32(-var_2.b.x)) - var_1.b.x)), var_0.a).a.a;
    var_0 = func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1061f, var_1.b.x)) - _wgslsmith_f_op_vec2_f32(var_1.b + var_0.b.a.yx)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(var_1.b, var_0.b.a.zz)), _wgslsmith_f_op_vec2_f32(var_0.b.a.yz + var_1.b), var_3.x))))), func_4(vec4<bool>(true, all(vec2<bool>(true, var_0.a.a.x)), var_1.c.x, all(select(vec3<bool>(var_3.x, var_1.c.x, var_2.c.x), vec3<bool>(var_0.a.a.x, var_3.x, var_1.e), vec3<bool>(true, var_2.e, var_3.x)))), func_1(!(!vec4<bool>(false, var_0.a.a.x, false, false)), -_wgslsmith_mult_vec4_i32(vec4<i32>(6429i, var_0.c, var_0.c, var_0.c), vec4<i32>(41492i, var_0.c, -20387i, var_0.c)), any(var_1.c) == var_2.c.x, ~u_input.a.xzw)));
    var_1 = var_2;
    var var_4 = ~var_1.a;
    var_4 = _wgslsmith_div_u32(36781u, 18597u);
    let x = u_input.a;
    s_output = StorageBuffer(~(-select(vec2<i32>(var_0.c, var_0.c), vec2<i32>(12572i, var_0.c), var_1.e)) << (vec2<u32>(_wgslsmith_dot_vec3_u32(~u_input.a.zyw, ~u_input.a.wzw), ~reverseBits(var_1.a)) % vec2<u32>(32u)));
}

