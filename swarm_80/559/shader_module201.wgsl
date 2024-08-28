struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = select(arg_0.b.xz, vec2<bool>(arg_0.b.x, all(!arg_0.b)), vec2<bool>(!arg_0.c.b, false));
    var_0 = vec2<bool>(false, false);
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-1064f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d - -598f) * _wgslsmith_f_op_f32(trunc(-386f)))), arg_0.c.a.x)));
    var_0 = select(arg_0.b.wz, arg_0.b.zw, !any(arg_0.b.yzw));
    var_0 = select(arg_0.b.wy, select(select(select(arg_0.b.yy, select(vec2<bool>(var_0.x, var_0.x), arg_0.b.zy, var_0.x), select(vec2<bool>(arg_0.b.x, var_0.x), vec2<bool>(true, arg_0.c.b), vec2<bool>(arg_0.c.b, true))), !(!arg_0.b.wy), arg_0.c.b), vec2<bool>(arg_0.c.b, !(var_0.x && true)), true), !arg_0.b.yw);
    return -1i;
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_2) -> vec2<bool> {
    var var_0 = select(reverseBits(_wgslsmith_clamp_vec3_i32(u_input.c.yww, vec3<i32>(arg_1.x, ~arg_1.x, arg_1.x & arg_1.x), ~(~u_input.c.wwy))), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 8497i), vec3<i32>(max(u_input.c.x, _wgslsmith_sub_i32(arg_1.x, arg_1.x)), ~29100i, func_3(arg_3)), vec3<i32>(-1i, u_input.c.x, ~u_input.a.x)), any(vec2<bool>(all(select(arg_3.b, vec4<bool>(arg_2.b, arg_0, arg_2.b, true), arg_3.b.x)), false)));
    let var_1 = vec4<bool>(true, false, (arg_3.a.x & 35928u) <= ~(~_wgslsmith_dot_vec2_u32(arg_3.a, vec2<u32>(arg_3.a.x, 7594u))), arg_0);
    var var_2 = arg_3.b;
    let var_3 = _wgslsmith_mod_i32(u_input.c.x, _wgslsmith_dot_vec2_i32(var_0.xx, vec2<i32>(func_3(arg_3), arg_1.x << (125449u % 32u)))) | reverseBits(_wgslsmith_add_i32(~firstLeadingBit(28783i), _wgslsmith_mod_i32(var_0.x, i32(-1i) * -1i)));
    let var_4 = -(~_wgslsmith_add_i32(-arg_1.x, 42212i));
    return arg_3.b.xz;
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: vec2<i32>, arg_3: u32) -> i32 {
    let var_0 = 4294967295u;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(417f, -510f, 1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(588f, -1110f, 183f))), vec3<f32>(714f, 1903f, _wgslsmith_f_op_f32(step(659f, -1000f)))))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1035f)))) - _wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-683f, -367f))), -1468f));
    var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-133f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(ceil(var_1.x))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-837f + -1837f), _wgslsmith_f_op_f32(var_1.x * var_1.x))), -708f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 1000f, 158f)));
    var var_2 = arg_3;
    let var_3 = _wgslsmith_f_op_f32(sign(-1000f));
    return _wgslsmith_sub_i32(64183i, _wgslsmith_dot_vec3_i32(~_wgslsmith_sub_vec3_i32(u_input.c.yyw, abs(vec3<i32>(arg_2.x, -6523i, 46029i))), _wgslsmith_sub_vec3_i32(u_input.b.wxy, _wgslsmith_clamp_vec3_i32(~vec3<i32>(arg_2.x, -1126i, 6318i), u_input.b.wyy, -vec3<i32>(35934i, arg_2.x, 20757i)))));
}

fn func_1(arg_0: vec4<f32>) -> u32 {
    let var_0 = Struct_1(arg_0, !(u_input.c.x == u_input.c.x));
    let var_1 = vec3<i32>(func_4(firstTrailingBit(~firstTrailingBit(4294967295u)), select(!func_2(true, vec2<i32>(u_input.a.x, 2147483647i), Struct_1(vec4<f32>(432f, var_0.a.x, -257f, var_0.a.x), var_0.b), Struct_2(vec2<u32>(4294967295u, 52579u), vec4<bool>(var_0.b, var_0.b, false, var_0.b), var_0, 2764f)), !select(vec2<bool>(false, false), vec2<bool>(false, var_0.b), vec2<bool>(false, var_0.b)), select(!vec2<bool>(var_0.b, var_0.b), vec2<bool>(true, true), !vec2<bool>(true, var_0.b))), ~u_input.a.yy, ~abs(firstLeadingBit(11951u))), u_input.c.x, _wgslsmith_dot_vec2_i32(abs(u_input.a.zx), u_input.b.wz));
    var var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(1000f + -217f))), var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + 1f) * -671f), _wgslsmith_div_f32(-1000f, var_0.a.x)), var_0.b);
    var_2 = var_0;
    var_2 = var_0;
    return min(min(_wgslsmith_div_u32(1u, 1u), 1u), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(770f, 1339f))))));
    let var_1 = 0u >> (countOneBits(~func_1(vec4<f32>(var_0.x, var_0.x, var_0.x, 212f))) % 32u);
    let var_2 = Struct_2((vec2<u32>(_wgslsmith_mult_u32(var_1, 1u), 50751u) & ((vec2<u32>(var_1, 0u) << (vec2<u32>(69282u, var_1) % vec2<u32>(32u))) & (vec2<u32>(var_1, 76771u) & vec2<u32>(var_1, 4294967295u)))) ^ vec2<u32>(0u, countOneBits(reverseBits(1006u))), !vec4<bool>(true, !(75512u != var_1), all(vec4<bool>(true, true, false, false)) || (var_1 < var_1), all(vec3<bool>(true, true, true)) & any(vec4<bool>(true, true, false, false))), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(812f, 482f, var_0.x, var_0.x))))))), !(!(-19847i <= u_input.b.x))), 661f);
    var var_3 = var_2.c;
    var_3 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.d)))), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(4294967295u, var_1), 29463u, _wgslsmith_sub_u32(10881u, var_2.a.x)), vec3<u32>(68582u, _wgslsmith_clamp_u32(1u, 0u, 6845u), var_1))));
}

