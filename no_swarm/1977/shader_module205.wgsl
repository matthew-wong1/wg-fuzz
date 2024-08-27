struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<f32>,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 21>;

var<private> global1: u32;

var<private> global2: u32;

var<private> global3: array<vec3<u32>, 11>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: vec4<bool>) -> vec4<f32> {
    let var_0 = Struct_3(1848f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-197f, _wgslsmith_div_f32(435f, -232f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(316f, 991f)))) + vec2<f32>(1f, 1f)), u_input.d, _wgslsmith_dot_vec3_i32(select(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.e, -1i, u_input.e) ^ vec3<i32>(-11215i, 1i, u_input.e), vec3<i32>(-25412i, -14033i, -2147483647i)), -select(vec3<i32>(15198i, -1i, -25692i), vec3<i32>(u_input.e, u_input.e, u_input.e), arg_0), select(vec3<bool>(false, false, arg_2.x), arg_2.wyx, vec3<bool>(true, false, true))), _wgslsmith_mod_vec3_i32(min(vec3<i32>(u_input.e, u_input.e, u_input.e), vec3<i32>(u_input.e, u_input.e, u_input.e)) ^ -vec3<i32>(u_input.e, -3958i, u_input.e), ~vec3<i32>(-45711i, u_input.e, 9002i) << (vec3<u32>(u_input.d, u_input.a.x, u_input.a.x) % vec3<u32>(32u)))));
    global0 = array<vec4<u32>, 21>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.a, var_0.a))) - _wgslsmith_f_op_vec2_f32(abs(var_0.b))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(var_0.b)))));
    global0 = array<vec4<u32>, 21>();
    let var_2 = Struct_2(_wgslsmith_mult_i32(u_input.e & _wgslsmith_div_i32(~var_0.d, firstLeadingBit(44692i)), countOneBits(var_0.d)), Struct_1(-(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.d, var_0.d, u_input.e), vec3<i32>(var_0.d, var_0.d, 41536i)) >> (~var_0.c % 32u)), 523f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.a, var_1.x, 1230f), vec3<f32>(var_1.x, var_0.a, 1000f))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2166f, var_1.x, var_0.a), vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x), false))))), abs(-vec4<i32>(-2147483647i, var_0.d, 1i, var_0.d) | ~vec4<i32>(-8618i, var_0.d, -18457i, u_input.e)), Struct_1(~_wgslsmith_clamp_i32(_wgslsmith_mod_i32(1i, u_input.e), 2147483647i, 2147483647i), var_1.x));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_1.x, -647f, var_1.x)) + vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(sign(var_0.b.x)), var_1.x, var_0.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-464f, var_1.x, var_1.x, 1073f) + vec4<f32>(var_2.e.b, var_2.c.x, var_0.a, -849f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, -1820f, var_1.x, var_0.b.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.b, var_2.e.b, var_2.b.b, 311f)))))) + vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(-1493f, var_2.c.x), var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.b)))), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.b)), 2884f));
}

fn func_4(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_3) -> f32 {
    global1 = 42135u;
    global0 = array<vec4<u32>, 21>();
    var var_0 = Struct_3(_wgslsmith_f_op_f32(max(-108f, -1379f)), arg_1.zw, abs(~(~_wgslsmith_div_u32(arg_2.c, u_input.b))), u_input.e);
    var var_1 = ~vec2<i32>(~(-9735i), u_input.e);
    let var_2 = arg_2;
    return -291f;
}

fn func_2() -> Struct_3 {
    global0 = array<vec4<u32>, 21>();
    var var_0 = -2147483647i;
    let var_1 = Struct_1(u_input.e, _wgslsmith_f_op_f32(func_4(-2147483647i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(false, vec2<bool>(false, true), vec4<bool>(true, true, true, true))) - vec4<f32>(1f, 1f, 1f, 1f)), Struct_3(_wgslsmith_f_op_f32(2586f * 246f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1680f, 888f) - vec2<f32>(-688f, -408f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1623f, 1000f)), vec2<bool>(true, true))), u_input.b ^ 1u, u_input.e))));
    var var_2 = _wgslsmith_f_op_f32(max(-363f, _wgslsmith_f_op_f32(floor(var_1.b))));
    let var_3 = Struct_3(-1154f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, var_1.b) + vec2<f32>(653f, var_1.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-851f, var_1.b)))))), _wgslsmith_sub_u32(33176u, 0u), ~(~(~(-4080i))));
    return Struct_3(_wgslsmith_f_op_f32(-823f * var_1.b), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-525f, 325f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.b - vec2<f32>(var_1.b, var_3.a)))))), abs(~_wgslsmith_add_u32(51682u, u_input.a.x) ^ 0u), var_3.d);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_3) -> Struct_3 {
    let var_0 = false & !any(vec2<bool>(true, true));
    global3 = array<vec3<u32>, 11>();
    var var_1 = false;
    var var_2 = Struct_1(arg_1.d, arg_1.b.x);
    let var_3 = arg_1;
    return Struct_3(939f, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(arg_1.b - _wgslsmith_f_op_vec2_f32(arg_1.b - arg_1.b)))), 21875u, var_3.d);
}

fn func_1(arg_0: bool, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = func_5(u_input.a.zzx, func_2());
    global1 = ~15482u;
    global0 = array<vec4<u32>, 21>();
    var var_1 = Struct_1(0i, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))));
    global1 = 1u;
    return Struct_1(var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-689f + -268f))), _wgslsmith_f_op_f32(var_0.a * var_0.a)))));
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -533f))), _wgslsmith_f_op_f32(-903f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(104f, 584f)))));
    global0 = array<vec4<u32>, 21>();
    global3 = array<vec3<u32>, 11>();
    global3 = array<vec3<u32>, 11>();
    let var_1 = firstLeadingBit(~(~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.c.x, 4294967295u, 1u), u_input.d << (26691u % 32u), 4294967295u)));
    return arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_6(func_1(true, select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true))), _wgslsmith_f_op_f32(f32(-1f) * -254f), Struct_1(_wgslsmith_mult_i32(u_input.e, 2147483647i), func_1(false, vec4<bool>(false, false, false, true)).b))), -1000f, _wgslsmith_f_op_f32(abs(func_1(true, select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true))).b))) * vec3<f32>(361f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(func_5(global3[_wgslsmith_index_u32(u_input.b, 11u)], Struct_3(-423f, vec2<f32>(-2476f, 1000f), u_input.b, u_input.e)).a, _wgslsmith_f_op_f32(func_4(u_input.e, vec4<f32>(282f, 936f, 809f, 1000f), Struct_3(916f, vec2<f32>(-260f, 214f), u_input.c.x, 4994i))), false)), 829f)), func_1(true, vec4<bool>(true, true, true, true)).b));
    var var_1 = var_0.x;
    var var_2 = vec3<f32>(518f, -756f, var_0.x);
    var var_3 = ~_wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(109801u, _wgslsmith_sub_u32(u_input.b, u_input.a.x))), ~vec2<u32>(_wgslsmith_add_u32(u_input.d, u_input.a.x), ~26179u));
    var var_4 = -firstLeadingBit(vec2<i32>(~7118i, min(u_input.e, u_input.e)) ^ ~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.e, -164i), vec2<i32>(2147483647i, u_input.e)));
    global1 = ~_wgslsmith_mult_u32(var_3.x, u_input.c.x);
    let var_5 = ~(~(-vec3<i32>(var_4.x ^ var_4.x, -u_input.e, -u_input.e)));
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(max(-15725i, var_5.x) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 1u, 4294967295u), vec3<u32>(u_input.c.x, 51291u, u_input.b)) % 32u), ~_wgslsmith_mult_i32(var_4.x, var_4.x), func_2().d), _wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -(~var_5.xx), _wgslsmith_clamp_vec2_i32(~vec2<i32>(var_4.x, 1i), vec2<i32>(u_input.e, var_5.x << (u_input.d % 32u)), ~firstTrailingBit(vec2<i32>(14313i, var_5.x)))), var_3.x);
}

