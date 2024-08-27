struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_clamp_u32(36727u, 4294967295u, min(_wgslsmith_mod_u32(1u, ~u_input.b), max(~40119u, ~53350u))), ~4294967295u, vec3<i32>(u_input.a, u_input.a, u_input.a), _wgslsmith_mult_i32(-u_input.a & _wgslsmith_sub_i32(15050i >> (u_input.c.x % 32u), u_input.a), -(~(~33458i))));
    var var_1 = -2828f;
    var var_2 = Struct_1(var_0.c | (-vec3<i32>(-17337i, u_input.a, u_input.a) << ((u_input.c.zxw << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.c.x, var_0.b), u_input.c.zxy, u_input.c.zzy) % vec3<u32>(32u))) % vec3<u32>(32u))), u_input.c, u_input.c, u_input.c, _wgslsmith_mod_vec4_i32(vec4<i32>(abs(var_0.d), _wgslsmith_clamp_i32(8922i, -30031i, _wgslsmith_mult_i32(5673i, var_0.d)), i32(-1i) * -var_0.d, _wgslsmith_mod_i32(~var_0.c.x, firstTrailingBit(1i))), ~vec4<i32>(var_0.c.x, 0i, 0i, 2147483647i) ^ _wgslsmith_div_vec4_i32(vec4<i32>(var_0.c.x, -38140i, u_input.a, u_input.a), reverseBits(vec4<i32>(u_input.a, -35104i, var_0.c.x, 1i)))));
    let var_3 = Struct_2(var_0.a, _wgslsmith_mod_u32(25441u, _wgslsmith_sub_u32(~4294967295u, _wgslsmith_clamp_u32(min(var_2.b.x, 0u), var_2.d.x, 0u))), -var_0.c, (min(35929i, -46744i) & ~(u_input.a | var_0.c.x)) >> (firstLeadingBit(0u) % 32u));
    let var_4 = countOneBits(u_input.a);
    return Struct_2(4294967295u, ~var_2.c.x, vec3<i32>(var_3.d, -1i, _wgslsmith_mod_i32(-(~var_0.c.x), -34064i)), ~(-var_3.d));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_2, arg_3: i32) -> u32 {
    let var_0 = ~select(vec2<u32>(~76446u, arg_2.a), _wgslsmith_sub_vec2_u32(arg_0.xz, vec2<u32>(arg_0.x << (arg_0.x % 32u), _wgslsmith_div_u32(u_input.c.x, arg_2.a))), select(!all(vec2<bool>(true, false)), true, true));
    let var_1 = true;
    var var_2 = vec3<bool>(true, true, false);
    var_2 = vec3<bool>(var_1, true, !var_1);
    var_2 = !select(!select(!vec3<bool>(var_1, false, var_1), select(vec3<bool>(true, var_1, true), vec3<bool>(false, true, var_1), vec3<bool>(var_2.x, var_2.x, false)), 36504i > arg_2.d), vec3<bool>(!all(vec3<bool>(true, var_2.x, false)), true, false), !any(!vec3<bool>(var_1, false, var_2.x)));
    return 0u;
}

fn func_4(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_2) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1804f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(959f + -716f) * _wgslsmith_f_op_f32(f32(-1f) * -165f))))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: vec2<bool>, arg_3: vec4<bool>) -> bool {
    let var_0 = func_2();
    let var_1 = arg_0;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(vec3<u32>(func_3(vec3<u32>(4294967295u, var_1.x, 55018u), -281f, Struct_2(u_input.c.x, u_input.c.x, var_0.c, var_0.d), u_input.a), var_1.x, u_input.b), true, var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1345f + -1576f))))), -942f, -654f, _wgslsmith_f_op_f32(sign(1859f)));
    let var_3 = true;
    var var_4 = select(select(!vec4<bool>(true, any(arg_3.yx), true, !arg_2.x), !vec4<bool>(arg_3.x, true & var_3, true, var_3), any(vec3<bool>(all(arg_3.wz), var_3, !arg_3.x))), vec4<bool>(!all(arg_2), var_3, all(arg_3.zy), arg_1.x), any(arg_1));
    return var_0.d > var_0.c.x;
}

fn func_5(arg_0: vec4<bool>) -> Struct_2 {
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(205f, -1014f, 596f, -461f)))))));
    let var_1 = func_5(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, func_1(vec2<u32>(u_input.c.x, u_input.b), vec4<bool>(false, false, true, false), vec2<bool>(true, true), vec4<bool>(true, false, true, false)), false, true), !all(vec4<bool>(true, false, false, true))));
    let var_2 = min(_wgslsmith_dot_vec2_i32(var_1.c.xy, -(vec2<i32>(var_1.c.x, 7011i) ^ (var_1.c.zx ^ vec2<i32>(13366i, var_1.c.x)))), 0i);
    let var_3 = select(_wgslsmith_clamp_vec2_u32(~(~vec2<u32>(4294967295u, var_1.a) | u_input.c.xw), u_input.c.yy, u_input.c.yw), _wgslsmith_add_vec2_u32(u_input.c.yz, u_input.c.yw), !(!vec2<bool>(any(vec3<bool>(true, false, true)), true)));
    var var_4 = Struct_2(8537u, u_input.b, reverseBits(~_wgslsmith_add_vec3_i32(-vec3<i32>(var_1.c.x, var_2, 2147483647i), var_1.c)), 0i);
    var var_5 = select(~min(select(reverseBits(vec3<u32>(52065u, 40207u, var_4.a)), ~u_input.c.yyz, vec3<bool>(true, true, true)), firstLeadingBit(vec3<u32>(var_3.x, 0u, var_1.a))), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_div_u32(4294967295u, select(44520u, var_3.x, true)), ~var_3.x, ~(~u_input.c.x)), _wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(var_4.b, u_input.b, var_1.b)), u_input.c.zwy) << (~vec3<u32>(var_1.b, 24093u, 129523u) % vec3<u32>(32u))), !(!vec3<bool>(true, all(vec3<bool>(true, false, true)), u_input.a <= var_4.d)));
    let var_6 = Struct_1(var_4.c, u_input.c >> (vec4<u32>(_wgslsmith_add_u32(~var_5.x, ~44501u), abs(abs(4294967295u)), 4294967295u, ~9256u) % vec4<u32>(32u)), u_input.c, ~u_input.c, (abs(-vec4<i32>(var_1.d, 28988i, -1i, 2147483647i)) | ~_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 0i, var_2, var_1.d), vec4<i32>(-1i, 1i, var_1.c.x, -10909i))) | -(~(vec4<i32>(var_4.d, 473i, var_4.c.x, var_2) >> (vec4<u32>(u_input.c.x, var_4.a, var_1.b, 21277u) % vec4<u32>(32u)))));
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1141f, 2126f, var_0.x, 386f), vec4<f32>(-1546f, var_0.x, -1000f, 474f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(488f, var_0.x, var_0.x, var_0.x) - vec4<f32>(var_0.x, var_0.x, var_0.x, 1000f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-581f, var_0.x, var_0.x, -296f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, var_0.x, var_0.x, 626f), vec4<f32>(558f, var_0.x, var_0.x, var_0.x)))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(345f, var_0.x, 1985f, 277f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -962f, var_0.x, 1000f), vec4<f32>(var_0.x, var_0.x, -1000f, -1170f)) * vec4<f32>(var_0.x, -983f, var_0.x, var_0.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0.wxw, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(919f, 889f, var_0.x), var_0.yzx))), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_0.x, var_0.x))))), _wgslsmith_sub_i32(var_4.c.x, ~80840i), -func_2().c.zz, var_6.a.x);
}

