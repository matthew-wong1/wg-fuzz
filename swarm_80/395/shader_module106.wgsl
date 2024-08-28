struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: Struct_3) -> i32 {
    var var_0 = arg_2.b.x;
    var var_1 = ~1u;
    var_0 = select(all(!vec4<bool>(any(vec2<bool>(true, arg_2.b.x)), false, arg_2.a, true)), true, arg_2.b.x);
    return _wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(30168i), 2147483647i, -(~(-29143i))), firstLeadingBit(u_input.d.zzz));
}

fn func_2() -> vec4<u32> {
    var var_0 = Struct_2(-1i);
    var_0 = Struct_2(-(~(-2147483647i) & _wgslsmith_add_i32(~u_input.d.x, func_3(vec2<i32>(var_0.a, 49178i), u_input.d.yxx, Struct_3(false, vec3<bool>(false, true, true), u_input.e)))));
    let var_1 = Struct_3(false, vec3<bool>(_wgslsmith_mod_u32(u_input.c.x, _wgslsmith_div_u32(u_input.b.x, 0u)) > ~select(u_input.b.x, 101091u, false), _wgslsmith_mod_i32(abs(0i), 2147483647i) == ~(-var_0.a), true), ~(~(~abs(u_input.e))));
    let var_2 = Struct_1(select(vec4<u32>(u_input.c.x, ~(~1376u), _wgslsmith_dot_vec2_u32(~var_1.c.yx, ~vec2<u32>(4294967295u, 111093u)), _wgslsmith_mod_u32(var_1.c.x, _wgslsmith_mod_u32(56745u, 28216u))), vec4<u32>(1u, _wgslsmith_dot_vec4_u32(~u_input.c, vec4<u32>(u_input.e.x, 40646u, u_input.c.x, 85151u)), 45325u, 11399u), !(!(!vec4<bool>(var_1.b.x, false, false, var_1.a)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1106f, 1221f, -1000f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-394f + 247f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -502f), -1000f), -1188f)));
    var_0 = Struct_2(select(-(u_input.d.x & 72357i) | var_0.a, u_input.a.x, all(var_1.b)));
    return ~_wgslsmith_mod_vec4_u32(var_1.c, ~u_input.e >> (vec4<u32>(_wgslsmith_clamp_u32(u_input.e.x, var_1.c.x, var_1.c.x), countOneBits(var_2.a.x), 43078u, _wgslsmith_div_u32(var_2.a.x, 1u)) % vec4<u32>(32u)));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: i32) -> i32 {
    let var_0 = u_input.e | func_2();
    return -_wgslsmith_sub_i32(arg_2.a, arg_3);
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> vec3<f32> {
    var var_0 = firstLeadingBit(firstLeadingBit(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, 0i), u_input.a.yy, vec2<i32>(2147483647i, -20861i)), u_input.d.xx), max(select(u_input.a.xy, u_input.a.zx, false), _wgslsmith_add_vec2_i32(vec2<i32>(-50487i, arg_0.a), vec2<i32>(arg_0.a, -13351i))))));
    let var_1 = 317f;
    var_0 = _wgslsmith_mod_vec2_i32(u_input.a.zz, _wgslsmith_add_vec2_i32(-((u_input.d.ww ^ u_input.a.yz) | ~vec2<i32>(u_input.d.x, var_0.x)), ~(vec2<i32>(-1i) * -vec2<i32>(2147483647i, 2147483647i))));
    var_0 = firstTrailingBit(vec2<i32>(-firstLeadingBit(arg_1), -39371i));
    var_0 = ~_wgslsmith_sub_vec2_i32(select(u_input.d.xz, _wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.d.x, -7113i), firstTrailingBit(u_input.a.zz)), true), vec2<i32>(-2147483647i, 21917i));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_f32(sign(-625f)), _wgslsmith_f_op_f32(-1924f * var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-662f, -608f, 1633f))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1004f, 1412f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(232f, -468f, -1384f)))))) + _wgslsmith_f_op_vec3_f32(func_4(Struct_2(func_1(vec4<u32>(u_input.c.x, u_input.e.x, 74017u, 4294967295u), u_input.d.xz, Struct_2(29721i), u_input.d.x) & (0i << (1u % 32u))), ~(u_input.d.x | u_input.a.x) & u_input.a.x)));
    let var_1 = vec4<bool>(all(vec2<bool>(true, true)), false, all(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true))), any(select(vec4<bool>(true, u_input.c.x < u_input.b.x, true, false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), vec4<bool>(false, false, true, true))));
    let var_2 = Struct_3(any(!vec2<bool>(all(vec2<bool>(var_1.x, true)), any(var_1.wx))), select(select(var_1.wxw, !select(vec3<bool>(true, var_1.x, var_1.x), var_1.zyz, vec3<bool>(true, var_1.x, var_1.x)), false && any(var_1.zyx)), select(var_1.yyx, vec3<bool>(false, true, any(var_1.xyx)), var_1.x), !select(var_1.wzw, var_1.wyw, 326f == var_0.x)), ~(vec4<u32>(~u_input.c.x, firstLeadingBit(u_input.e.x), ~62659u, 1u) & ~abs(vec4<u32>(0u, u_input.c.x, 70129u, u_input.e.x))));
    var var_3 = var_0.x;
    var var_4 = true;
    let var_5 = 6202i;
    var var_6 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_add_vec2_i32(firstLeadingBit(_wgslsmith_sub_vec2_i32(u_input.a.zz, u_input.d.xw)), u_input.d.yx)), var_6.c);
}

