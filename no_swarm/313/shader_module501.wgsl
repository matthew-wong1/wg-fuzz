struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<i32>,
    d: vec2<bool>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: bool) -> vec2<bool> {
    let var_0 = arg_2;
    var var_1 = arg_0.xz;
    var_1 = arg_0.xz;
    let var_2 = u_input.d;
    let var_3 = u_input.c.x;
    return vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1483f, 529f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(f32(-1f) * -2406f)) * -350f), !(!(!select(arg_2, var_1.x, true))));
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    return true;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(func_4(~(u_input.a << (u_input.c.x % 32u)), abs(vec3<u32>(~u_input.a, u_input.b & u_input.a, ~u_input.c.x)), Struct_1(all(vec3<bool>(true, true, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1967f)), _wgslsmith_f_op_f32(step(1800f, 1244f))), _wgslsmith_add_vec2_i32(-u_input.d.xx, vec2<i32>(21138i, 1i)), select(func_3(vec4<bool>(true, true, true, false), vec2<f32>(-440f, -845f), false), vec2<bool>(true, true), true), _wgslsmith_f_op_f32(min(248f, -524f))), Struct_1(true, -143f, ~(~u_input.d.ww), vec2<bool>(true, true), _wgslsmith_f_op_f32(max(316f, 1f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -230f), 1f))), abs(reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d.x, 6239i), vec2<i32>(-41733i, -32541i)))) << (u_input.c.xx % vec2<u32>(32u)), vec2<bool>(true, true), _wgslsmith_f_op_f32(1f * -830f));
    let var_1 = -10941i;
    var var_2 = vec4<i32>(max(_wgslsmith_add_i32(u_input.d.x, firstLeadingBit(~var_0.c.x)), _wgslsmith_add_i32(abs(-2147483647i), _wgslsmith_mod_i32(var_0.c.x, -1i))), -1i, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(~firstTrailingBit(vec3<i32>(53286i, 1i, -1i)), u_input.d.www), var_0.c.x), 3520i);
    var_2 = abs(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(-24835i, 1i, var_2.x), -1i), _wgslsmith_div_i32(var_0.c.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(var_2.x, var_0.c.x, 2147483647i), vec3<i32>(u_input.d.x, var_0.c.x, 1i))), min(_wgslsmith_mult_i32(0i >> (u_input.a % 32u), var_1 >> (u_input.b % 32u)), 2147483647i), u_input.d.x));
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1169f), _wgslsmith_div_f32(-1105f, -1000f))) + var_0.b))), -197f));
    return var_0;
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> vec2<i32> {
    var var_0 = select(vec2<u32>(1u, arg_0.x), _wgslsmith_add_vec2_u32(vec2<u32>(~1u, arg_0.x ^ arg_0.x), ~(~vec2<u32>(113224u, arg_0.x))) & abs(vec2<u32>(0u, ~0u)), arg_2.d);
    let var_1 = Struct_1(!(abs(4294967295u) <= min(u_input.b, var_0.x ^ u_input.c.x)), arg_2.e, ~(~(vec2<i32>(-1i) * -vec2<i32>(u_input.d.x, arg_1.c.x))), vec2<bool>(any(!vec2<bool>(arg_1.a, false)), true), arg_1.b);
    var_0 = vec2<u32>(4294967295u, 7229u);
    var_0 = vec2<u32>(59464u, ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 51553u)), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(5948u, arg_0.x), arg_0), u_input.c.zz | u_input.c.zw)));
    var var_2 = func_2();
    return u_input.d.wz;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<f32>) -> bool {
    var var_0 = countOneBits(vec2<i32>(-1i) * -(~abs(vec2<i32>(1i, u_input.d.x))));
    var_0 = ~(-u_input.d.wy & func_5(firstLeadingBit(u_input.c.zz), func_2(), func_2())) << (vec2<u32>(~u_input.a, 0u) % vec2<u32>(32u));
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, _wgslsmith_div_f32(arg_1.x, arg_1.x), arg_1.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-335f, arg_1.x, arg_1.x) - vec3<f32>(arg_1.x, arg_1.x, -760f))))))));
    let var_2 = func_2();
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, arg_1.x, arg_1.x) - vec3<f32>(var_1.x, -349f, var_1.x)))), !arg_0.xyx)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-692f, var_1.x, _wgslsmith_f_op_f32(sign(-1000f))))));
    return select(u_input.b >= 47609u, func_2().d.x, any(arg_0.zx));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(u_input.d.zx ^ vec2<i32>(-47767i, u_input.d.x << (4294967295u % 32u)), countOneBits(vec2<i32>(17850i, -u_input.d.x))), _wgslsmith_mult_vec2_i32(u_input.d.zz, abs(vec2<i32>(u_input.d.x >> (4294967295u % 32u), ~u_input.d.x))));
    var_0 = u_input.d.yy;
    var_0 = _wgslsmith_sub_vec2_i32(u_input.d.wy, u_input.d.xz);
    var var_1 = Struct_1(func_1(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -853f))) == any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-268f + -1017f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-803f, 1000f))) + -1399f)), u_input.d.ww, !(!select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), func_3(vec4<bool>(true, true, false, false), vec2<f32>(-480f, -718f), false), vec2<bool>(true, true))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-688f, -1229f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(679f - -1305f)))))));
    var_1 = func_2();
    var_0 = u_input.d.yx;
    let x = u_input.a;
    s_output = StorageBuffer(-13921i, _wgslsmith_clamp_vec4_i32(~u_input.d, u_input.d, vec4<i32>(_wgslsmith_mult_i32(-u_input.d.x, i32(-1i) * -15716i), -24170i, u_input.d.x, abs(_wgslsmith_sub_i32(-2147483647i, -27639i)))));
}

