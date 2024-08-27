struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2) -> vec4<u32> {
    var var_0 = ~_wgslsmith_mod_vec3_u32(select(~u_input.b.yyz, vec3<u32>(_wgslsmith_div_u32(arg_0.a.x, u_input.b.x), 4294967295u, 1u), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), max(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 3021u, 18736u), u_input.b.xwx), ~u_input.b.x, u_input.b.x), ~_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.a.x, u_input.b.x, 0u), vec3<u32>(arg_0.b, arg_0.b, u_input.b.x))));
    var_0 = u_input.b.xzw;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1213f, -110f, 845f, -202f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1943f, -1820f, -325f, 284f) + vec4<f32>(-946f, 1118f, 247f, 1023f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1243f, 205f, -818f, -129f))))));
    var_0 = ~vec3<u32>(16194u, _wgslsmith_add_u32(abs(u_input.b.x), u_input.b.x), 0u);
    let var_2 = Struct_2(_wgslsmith_div_vec2_u32(vec2<u32>(51226u, countOneBits(var_0.x >> (u_input.b.x % 32u))), abs(vec2<u32>(_wgslsmith_clamp_u32(arg_0.b, var_0.x, 0u), select(var_0.x, 5252u, false)))), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, u_input.b.x, 1u), vec4<u32>(u_input.b.x, _wgslsmith_dot_vec3_u32(min(vec3<u32>(arg_0.b, arg_0.a.x, 4294967295u), u_input.b.wyw), ~u_input.b.xxw), arg_0.a.x, ~_wgslsmith_div_u32(1u, arg_0.a.x))), vec3<i32>(arg_0.c.x, u_input.a.x, _wgslsmith_add_i32(50699i, ~arg_0.c.x) | -(arg_0.c.x << (1u % 32u))));
    return _wgslsmith_mult_vec4_u32(select(u_input.b, ~u_input.b, true != !any(vec3<bool>(false, false, false))), ~(~u_input.b));
}

fn func_2(arg_0: vec2<u32>) -> bool {
    let var_0 = u_input.a.x;
    var var_1 = Struct_1(vec2<u32>(arg_0.x >> (_wgslsmith_dot_vec4_u32(func_3(Struct_2(u_input.b.ww, arg_0.x, vec3<i32>(-2147483647i, u_input.a.x, var_0))), ~vec4<u32>(1u, u_input.b.x, arg_0.x, 622u)) % 32u), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.b.yzz >> (u_input.b.wxw % vec3<u32>(32u)), ~u_input.b.yzw), ~arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1128f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -705f)))))), 1f);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(713f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c + var_1.c)))));
    var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(452f, var_1.b) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 763f) + vec2<f32>(-372f, 2336f)))))), vec2<f32>(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(f32(-1f) * -2152f)), -127f));
    var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c * -307f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, -1153f) - var_2.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1683f, var_2.x) - vec2<f32>(var_2.x, var_1.b)))))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2106f - -742f) + var_1.c) - _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(f32(-1f) * -415f))))) <= _wgslsmith_f_op_f32(-716f - var_1.b);
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = !all(vec4<bool>(true, true | func_2(u_input.b.xw), arg_0, !(u_input.a.x >= -46358i)));
    var var_1 = ~_wgslsmith_add_vec2_u32(countOneBits(firstTrailingBit(vec2<u32>(u_input.b.x, u_input.b.x))), vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b.x), u_input.b.xw)), u_input.b.x));
    var var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-998f, -820f)))) - vec2<f32>(1244f, 571f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1074f, -212f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(714f, -437f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-828f, -699f), vec2<f32>(-231f, 2148f), var_0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-224f, 1000f))))))));
    var var_3 = ~1u;
    var var_4 = !(!(!vec2<bool>(any(vec4<bool>(true, var_0, arg_0, arg_0)), any(vec2<bool>(var_0, true)))));
    return Struct_2(_wgslsmith_div_vec2_u32(~u_input.b.xy, abs(~u_input.b.xz ^ vec2<u32>(0u, 2296u))), _wgslsmith_sub_u32(_wgslsmith_mult_u32(var_1.x, 4294967295u), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 3590u), vec2<u32>(u_input.b.x, 1u)), _wgslsmith_div_u32(~var_1.x, u_input.b.x))), vec3<i32>(u_input.a.x, ~(-87756i), _wgslsmith_add_i32(u_input.a.x ^ u_input.a.x, ~1i)) ^ (~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) & abs(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(24948i, u_input.a.x, 40559i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-731f))));
    var var_1 = ~firstLeadingBit(abs(_wgslsmith_clamp_vec2_i32(u_input.a >> (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)), max(u_input.a, vec2<i32>(u_input.a.x, -14955i)), u_input.a)));
    let var_2 = func_1(true);
    let var_3 = false;
    var_1 = _wgslsmith_mult_vec2_i32(func_1(all(!(!vec4<bool>(true, var_3, true, true)))).c.yz, vec2<i32>(var_2.c.x, _wgslsmith_sub_i32(var_2.c.x, _wgslsmith_sub_i32(var_2.c.x, 2147483647i) & -40075i)));
    var var_4 = !vec3<bool>(any(select(vec4<bool>(false, var_3, var_3, var_3), vec4<bool>(var_3, var_3, false, false), var_3)) && (~var_2.a.x < firstLeadingBit(1u)), var_3, countOneBits(func_1(true).a.x) <= _wgslsmith_sub_u32(38485u, 31910u));
    var var_5 = _wgslsmith_add_u32(abs(~firstTrailingBit(0u)), u_input.b.x);
    var var_6 = Struct_1(vec2<u32>(_wgslsmith_add_u32(0u | ~u_input.b.x, u_input.b.x), u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(105f + _wgslsmith_f_op_f32(765f * var_0)))) + var_0), var_0);
    let var_7 = true;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(abs(~(-1i))), _wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(reverseBits(34389u), func_1(true).a.x)), ~(~reverseBits(vec2<u32>(11684u, var_6.a.x)))));
}

