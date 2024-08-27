struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: vec2<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: Struct_4,
    d: vec3<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_4) -> u32 {
    let var_0 = ~vec2<i32>(select(countOneBits(-2147483647i) << (u_input.b.x % 32u), ~(~(-9000i)), true), _wgslsmith_mult_i32(i32(-1i) * -6864i, ~(~1274i)));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(floor(arg_0.a)));
    var_1 = arg_0;
    var_1 = arg_0;
    var var_2 = Struct_3(u_input.b.x, Struct_1(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(557f, -576f) + vec2<f32>(arg_0.a, -550f)))))), select(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true), vec3<bool>(all(vec4<bool>(true, true, true, true)), 1u < u_input.a, true), vec3<bool>(all(vec4<bool>(true, true, true, true)), true, true))));
    return 65745u;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_5, arg_2: bool, arg_3: f32) -> f32 {
    let var_0 = Struct_3(func_3(arg_1.c), Struct_1(select(vec2<bool>(arg_1.e.b.a.x, any(vec3<bool>(arg_1.e.c.b.x, arg_1.e.b.a.x, false))), !select(vec2<bool>(true, arg_1.e.c.d.x), arg_1.e.b.a, arg_1.e.b.a.x), arg_1.e.c.d.xy), arg_1.e.b.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(435f, arg_3), arg_1.d.xx)))), select(select(!vec3<bool>(arg_2, false, arg_1.e.c.b.x), !vec3<bool>(true, arg_1.e.b.d.x, true), !arg_1.e.c.d), vec3<bool>(all(vec3<bool>(arg_1.e.c.d.x, false, true)), false && arg_1.e.c.d.x, true), arg_1.e.c.b.x)));
    let var_1 = var_0.b.a;
    var var_2 = u_input.b;
    var var_3 = _wgslsmith_div_i32(arg_1.b.x, -186i) >> (~select(var_0.a, firstLeadingBit(~arg_1.e.a), any(vec2<bool>(false, var_0.b.b.x))) % 32u);
    let var_4 = var_0;
    return -561f;
}

fn func_1() -> Struct_1 {
    var var_0 = vec3<bool>(!all(vec2<bool>(true, true)), all(vec3<bool>(true, false, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -356f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<u32>(u_input.a, 4294967295u, 58359u, u_input.a), Struct_5(vec2<u32>(34895u, u_input.a), vec3<i32>(-31946i, u_input.d, 16149i), Struct_4(-388f), vec3<f32>(251f, 1739f, 1833f), Struct_2(u_input.b.x, Struct_1(vec2<bool>(false, true), vec2<bool>(true, true), vec2<f32>(270f, -2611f), vec3<bool>(true, true, false)), Struct_1(vec2<bool>(true, true), vec2<bool>(true, false), vec2<f32>(489f, 1000f), vec3<bool>(false, true, false)))), true, 277f)))) != -131f);
    var var_1 = Struct_5(reverseBits(max(vec2<u32>(u_input.e >> (u_input.a % 32u), _wgslsmith_div_u32(u_input.b.x, u_input.e)), u_input.b)), -vec3<i32>(_wgslsmith_div_i32(firstLeadingBit(u_input.c), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, 46916i, 1i, u_input.c), vec4<i32>(u_input.d, 0i, -2147483647i, 21309i))), i32(-1i) * -42671i, 28197i), Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1006f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1052f) * _wgslsmith_div_f32(1171f, 132f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-216f, 103f, -174f) + vec3<f32>(_wgslsmith_f_op_f32(-1366f + -799f), _wgslsmith_f_op_f32(select(-186f, 604f, var_0.x)), _wgslsmith_f_op_f32(sign(-1022f)))))), Struct_2(u_input.e, Struct_1(vec2<bool>(select(var_0.x, true, false), var_0.x), var_0.xz, _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -343f), vec2<f32>(1433f, 859f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1536f, 203f), vec2<f32>(-1553f, 179f), vec2<bool>(var_0.x, false)))), vec3<bool>(u_input.b.x >= u_input.a, true, false)), Struct_1(var_0.xz, !(!vec2<bool>(false, var_0.x)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 381f) - vec2<f32>(1168f, -1054f)))), select(!vec3<bool>(true, false, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x))));
    let var_2 = var_0.x;
    var var_3 = var_0.x;
    var_3 = false;
    return Struct_1(select(select(var_1.e.c.b, vec2<bool>(false | var_1.e.c.a.x, all(vec2<bool>(var_1.e.c.b.x, var_1.e.b.a.x))), !(!vec2<bool>(var_0.x, true))), vec2<bool>(!(!var_1.e.c.d.x), true), vec2<bool>(var_1.e.c.b.x, _wgslsmith_f_op_f32(-var_1.d.x) == _wgslsmith_f_op_f32(exp2(var_1.c.a)))), !var_0.zy, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, var_1.c.a)), 880f), var_1.e.b.d);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec4<bool>) -> vec2<bool> {
    var var_0 = all(vec2<bool>(true, arg_2.b.d.x));
    var_0 = !(!all(arg_3));
    let var_1 = arg_1;
    var var_2 = Struct_4(-554f);
    var var_3 = true;
    return select(select(select(vec2<bool>(true, -1000f < arg_2.b.c.x), vec2<bool>(arg_2.b.d.x == arg_3.x, var_1.b.x), func_1().d.x), arg_2.b.b, select(func_1().a, vec2<bool>(!var_1.b.x, 356f < var_2.a), false)), vec2<bool>(!(!var_1.b.x != arg_3.x), u_input.d < 8133i), !select(arg_2.b.d.yy, arg_2.b.b, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(false, all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true))), func_4(~abs(-vec3<i32>(-31951i, u_input.c, -17708i)), func_1(), Struct_3(90940u, Struct_1(vec2<bool>(false, false), vec2<bool>(true, true), vec2<f32>(308f, -1231f), vec3<bool>(true, true, true))), vec4<bool>(true, true, true, true)), !(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(743f - -1286f))) < 1f));
    let var_1 = Struct_3(1u, Struct_1(select(func_1().b, var_0, func_4(reverseBits(vec3<i32>(0i, -2147483647i, -1i)), Struct_1(var_0, var_0, vec2<f32>(397f, 1177f), vec3<bool>(var_0.x, var_0.x, false)), Struct_3(u_input.a, Struct_1(vec2<bool>(var_0.x, var_0.x), var_0, vec2<f32>(-1309f, 941f), vec3<bool>(var_0.x, true, var_0.x))), vec4<bool>(true, var_0.x, var_0.x, var_0.x))), var_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1000f + 527f), _wgslsmith_f_op_f32(abs(267f)))), func_1().d));
    let var_2 = ~vec3<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.b.x, 18509u, var_1.a), vec3<u32>(65033u, 7881u, 4294967295u), var_1.b.a.x), vec3<u32>(93930u, 1u, 0u)), ~u_input.b.x, 1u) & vec3<u32>(_wgslsmith_div_u32(u_input.e ^ ~u_input.e, _wgslsmith_sub_u32(abs(69514u), firstLeadingBit(u_input.e))), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_1.a, var_1.a, var_1.a, 55828u)) | abs(vec4<u32>(4294967295u, var_1.a, u_input.e, 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(29941u, u_input.a, 49085u, var_1.a) ^ vec4<u32>(u_input.e, 4294967295u, 1u, 0u), vec4<u32>(u_input.e, 4294967295u, 4294967295u, 1u))), (_wgslsmith_sub_u32(var_1.a, 1u) << (~8832u % 32u)) | var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b.c.x, var_1.b.c.x) + -461f))), 1000f, ~(~vec4<u32>(abs(u_input.a), _wgslsmith_mod_u32(85644u, var_1.a), _wgslsmith_mod_u32(26415u, 7000u), _wgslsmith_clamp_u32(0u, 46107u, 4294967295u))));
}

