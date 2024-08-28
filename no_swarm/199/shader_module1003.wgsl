struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(sign(549f));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), 346f);
    let var_2 = Struct_2(-(~_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, u_input.a.x), u_input.a.xz, u_input.a.xz)) << (_wgslsmith_mult_vec2_u32(~(~vec2<u32>(u_input.c, u_input.c)), ~(vec2<u32>(u_input.c, u_input.c) << (vec2<u32>(0u, u_input.c) % vec2<u32>(32u)))) % vec2<u32>(32u)), !(!select(any(vec4<bool>(true, true, false, true)), all(vec3<bool>(true, false, false)), all(vec4<bool>(false, true, false, false)))), _wgslsmith_f_op_f32(-var_1.x));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-610f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + -433f))), vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), var_2.c)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-261f - -195f)), 1412f) * vec2<f32>(var_1.x, 228f)));
    var_0 = var_2.c;
    return vec3<bool>(true, 1f != _wgslsmith_f_op_f32(-var_2.c), var_2.b & true);
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = vec2<i32>(select(u_input.a.x >> (u_input.c % 32u), 13713i, false), 2147483647i);
    let var_1 = !select(vec3<bool>(any(vec3<bool>(arg_0, true, false)), !(!arg_0), all(vec3<bool>(arg_0, false, arg_0))), !func_3(), all(vec3<bool>(all(vec3<bool>(true, true, arg_0)), !arg_0, false)));
    var var_2 = Struct_3(Struct_2(vec2<i32>(~var_0.x, _wgslsmith_mult_i32(u_input.a.x, -59396i) ^ _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.b, u_input.b, 35092i, u_input.b))), true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-392f - 1256f), _wgslsmith_f_op_f32(step(-379f, 1000f)))))), vec2<bool>(false || !func_3().x, !(!var_1.x & true)), var_1);
    var_2 = Struct_3(var_2.a, var_2.c.zy, select(var_1, vec3<bool>(true, true, true), vec3<bool>(true, select(true, u_input.c < 26704u, arg_0), all(var_2.c))));
    var var_3 = Struct_1(vec2<bool>(false && (~u_input.b >= (62730i << (1u % 32u))), any(!vec4<bool>(false, var_1.x, true, arg_0)) && var_2.a.b));
    return var_2.a;
}

fn func_4(arg_0: Struct_3) -> vec3<i32> {
    var var_0 = _wgslsmith_mod_i32(9977i, ~_wgslsmith_div_i32((arg_0.a.a.x | -31861i) | -1i, -_wgslsmith_div_i32(1i, arg_0.a.a.x)));
    let var_1 = select(~vec3<i32>(-1i, u_input.a.x, ~_wgslsmith_clamp_i32(u_input.a.x, arg_0.a.a.x, 27077i)), abs(vec3<i32>(arg_0.a.a.x, abs(arg_0.a.a.x), _wgslsmith_dot_vec4_i32(abs(u_input.a), vec4<i32>(2147483647i, arg_0.a.a.x, 0i, u_input.a.x) ^ u_input.a))), func_3());
    let var_2 = func_2(func_3().x);
    var_0 = i32(-1i) * -8360i;
    let var_3 = !select(vec2<bool>(true, true), vec2<bool>(!any(arg_0.b), var_2.b), any(select(vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.c.x, var_2.b), select(vec4<bool>(true, false, true, var_2.b), vec4<bool>(var_2.b, true, var_2.b, var_2.b), arg_0.c.x), arg_0.b.x)));
    return countOneBits(vec3<i32>(select(var_1.x, u_input.b, arg_0.c.x), -32185i, var_1.x)) | reverseBits(var_1);
}

fn func_5(arg_0: vec3<i32>) -> Struct_2 {
    var var_0 = select(!vec2<bool>(all(func_3().zz), any(vec2<bool>(false, false))), vec2<bool>(true, !func_3().x), all(vec3<bool>(true, true, true)));
    var var_1 = min(_wgslsmith_clamp_vec2_i32(arg_0.yz, firstTrailingBit(u_input.a.zw), vec2<i32>(2147483647i, 1i)), countOneBits(~vec2<i32>(-4376i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, arg_0.x, 0i, 88668i), vec4<i32>(u_input.a.x, arg_0.x, arg_0.x, arg_0.x)))));
    var_1 = reverseBits(vec2<i32>(func_2(var_0.x).a.x, -33510i));
    var var_2 = _wgslsmith_mult_vec2_u32(~(~(~vec2<u32>(u_input.c, 1u))), reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(~0u, 7767u), select(~vec2<u32>(83924u, u_input.c), ~vec2<u32>(u_input.c, 0u), !vec2<bool>(var_0.x, var_0.x)))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(963f, -587f));
    return func_2(var_0.x);
}

fn func_1() -> vec3<bool> {
    let var_0 = Struct_1(vec2<bool>(select(any(vec2<bool>(true, true)), select(false, false, false), true) && !select(false, false, true), !any(vec4<bool>(false, true, false, true))));
    let var_1 = -_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_div_i32(u_input.a.x, -u_input.b), ~(u_input.b >> (0u % 32u)), u_input.b), -(u_input.a & u_input.a));
    var var_2 = Struct_3(func_5(func_4(Struct_3(func_2(var_0.a.x), func_3().xy, select(vec3<bool>(var_0.a.x, true, var_0.a.x), vec3<bool>(true, var_0.a.x, var_0.a.x), false)))), !func_3().zz, !(!(!(!vec3<bool>(var_0.a.x, true, var_0.a.x)))));
    let var_3 = (_wgslsmith_sub_i32(0i ^ var_2.a.a.x, ~(-23066i) >> (u_input.c % 32u)) >> (u_input.c % 32u)) ^ firstLeadingBit(_wgslsmith_dot_vec2_i32(select(vec2<i32>(var_2.a.a.x, var_2.a.a.x) << (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u)), vec2<i32>(var_1.x, -1i), any(vec4<bool>(false, true, var_0.a.x, var_2.c.x))), countOneBits(~vec2<i32>(60341i, var_1.x))));
    var var_4 = _wgslsmith_div_u32(~_wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, 1u), _wgslsmith_add_u32(4294967295u, u_input.c)), 9426u) >= 1u;
    return vec3<bool>(true, !(!((true || var_2.b.x) || var_2.a.b)), !(!var_2.c.x));
}

fn func_6(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: f32) -> Struct_3 {
    return Struct_3(func_5(vec3<i32>(arg_0 | 0i, 29547i | u_input.a.x, u_input.b)), arg_2.a, arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(u_input.b, select(select(select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), func_1()), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), all(vec2<bool>(false, false))), false), vec3<bool>(~38670u <= u_input.c, false, any(vec4<bool>(false, true, true, true))), false), Struct_1(vec2<bool>(func_3().x, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1376f - 554f), _wgslsmith_f_op_f32(-576f - 729f)))), -741f));
    let var_1 = select(!(!vec4<bool>(true, -1344f >= var_0.a.c, any(var_0.c), var_0.a.b)), !vec4<bool>(var_0.a.b, 11155u <= reverseBits(u_input.c), any(vec4<bool>(var_0.c.x, var_0.b.x, var_0.b.x, true)), all(var_0.c)), vec4<bool>(true, !(!(true && var_0.c.x)), select(!(u_input.c > 41420u), abs(1u) == _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 33077u, 0u), vec3<u32>(u_input.c, 30630u, u_input.c)), var_0.a.b), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(0i, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(20571i, var_0.a.a.x, var_0.a.a.x, ~43883i)), ~_wgslsmith_div_i32(var_0.a.a.x ^ -27309i, ~0i), func_4(func_6(u_input.b, vec3<bool>(true, false, false), Struct_1(vec2<bool>(false, false)), -1668f)).x), 4294967295u | u_input.c, 999f, u_input.b, 1u);
}

