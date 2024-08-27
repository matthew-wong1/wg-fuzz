struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: u32,
    d: vec4<f32>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    var var_0 = Struct_2(true, Struct_1(_wgslsmith_div_i32(arg_0.x, u_input.a.x), false, vec2<f32>(_wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1143f))), u_input.b), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(4294967295u, u_input.b), false), ~vec2<u32>(4294967295u, u_input.b)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(72722u, u_input.b), vec2<u32>(u_input.b, u_input.b), vec2<u32>(14373u, u_input.b))), _wgslsmith_mod_vec2_u32(abs(vec2<u32>(u_input.b, u_input.b)), select(_wgslsmith_mod_vec2_u32(vec2<u32>(4326u, u_input.b), vec2<u32>(3451u, 1113u)), ~vec2<u32>(34412u, 27702u), vec2<bool>(true, true)))));
    let var_1 = ~max(reverseBits(u_input.b), firstLeadingBit(~_wgslsmith_div_u32(1u, u_input.b)));
    var_0 = Struct_2(var_0.b.b, Struct_1(1i, var_0.b.b, vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(var_0.b.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-639f - 1665f))), 4294967295u), select(var_0.c, vec2<u32>(u_input.b >> (49957u % 32u), 32065u), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(var_0.a, false, var_0.b.b, true)))) | countOneBits(vec2<u32>(~94494u, u_input.b)));
    var_0 = Struct_2(true, Struct_1(-var_0.b.a, var_0.b.b, vec2<f32>(_wgslsmith_f_op_f32(110f - _wgslsmith_f_op_f32(-var_0.b.c.x)), var_0.b.c.x), u_input.b), (~var_0.c >> (~(~vec2<u32>(12334u, u_input.b)) % vec2<u32>(32u))) << (_wgslsmith_mult_vec2_u32(~var_0.c & select(var_0.c, vec2<u32>(var_1, var_1), true), _wgslsmith_mult_vec2_u32(var_0.c, abs(vec2<u32>(17518u, var_1)))) % vec2<u32>(32u)));
    var_0 = Struct_2(true, var_0.b, abs(abs(_wgslsmith_mod_vec2_u32(select(vec2<u32>(10826u, var_1), var_0.c, vec2<bool>(var_0.a, var_0.a)), vec2<u32>(4294967295u, var_1)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(sign(156f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.c.x)))) + _wgslsmith_f_op_f32(floor(199f)));
}

fn func_2(arg_0: vec4<bool>) -> vec3<bool> {
    var var_0 = Struct_1(53108i, true, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.a)) - 1715f), _wgslsmith_f_op_f32(-175f * _wgslsmith_div_f32(-218f, -1634f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), u_input.b);
    return arg_0.xyx;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<i32>) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1283f)))) * _wgslsmith_f_op_f32(-136f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(465f - 2951f)))))));
    let var_1 = vec3<bool>(true, any(func_2(!vec4<bool>(false, true, arg_0.x, true))) || arg_0.x, false);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(933f, var_0, 1530f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0, var_0, var_0), vec3<f32>(-1000f, -225f, var_0))))))));
    let var_3 = vec3<bool>(all(!vec2<bool>(var_1.x, u_input.a.x >= arg_1.x)), select(arg_0.x, (arg_1.x < -arg_1.x) | arg_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0 * var_2.x))) < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(ceil(var_2.x)), !var_1.x))), all(select(vec4<bool>(true, any(vec4<bool>(false, var_1.x, var_1.x, false)), true, var_1.x), !select(vec4<bool>(arg_0.x, true, true, var_1.x), vec4<bool>(true, var_1.x, true, false), var_1.x), vec4<bool>(!arg_0.x, arg_0.x, arg_0.x, true))));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_0, 363f) - vec3<f32>(var_2.x, var_2.x, -1335f)) * vec3<f32>(-468f, 1466f, -1726f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0, var_2.x, 559f))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(404f, 1896f, -611f))))))));
    return StorageBuffer(vec3<i32>(-1i) * -vec3<i32>(36077i, _wgslsmith_mult_i32(u_input.a.x, 1i), select(15889i, u_input.a.x, var_1.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_2.yy), _wgslsmith_div_vec2_f32(vec2<f32>(-167f, -1809f), _wgslsmith_f_op_vec2_f32(sign(var_2.zy))), !all(select(vec2<bool>(true, arg_0.x), vec2<bool>(true, true), vec2<bool>(false, var_3.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(false, true), vec2<bool>(true, true))), any(vec2<bool>(true, true))), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, ~(u_input.a.x & 1i)));
}

