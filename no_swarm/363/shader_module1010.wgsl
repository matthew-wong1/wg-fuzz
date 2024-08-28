struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> vec2<u32> {
    global0 = ~_wgslsmith_sub_i32(abs(arg_3.d), arg_3.d & -(arg_3.d << (0u % 32u)));
    let var_0 = _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -338f)) - -665f));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(339f * arg_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -974f) + -1381f), -679f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * arg_2) * _wgslsmith_f_op_f32(max(1000f, arg_2))), _wgslsmith_f_op_f32(-arg_2))));
    global0 = firstTrailingBit(~arg_3.d);
    global0 = _wgslsmith_dot_vec2_i32(select(-vec2<i32>(0i, arg_3.b) >> ((vec2<u32>(u_input.a, arg_0.x) | arg_0.yz) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, arg_3.b), vec3<i32>(-2147483647i, arg_3.d, arg_3.d)), countOneBits(arg_3.b)), select(select(arg_3.c, vec2<bool>(true, arg_1), vec2<bool>(false, true)), arg_3.c, !arg_3.c.x)), vec2<i32>(~(44889i & arg_3.b), ~arg_3.d)) | arg_3.d;
    return vec2<u32>(~firstTrailingBit(~(u_input.a ^ 4294967295u)), u_input.a | (u_input.b.x ^ min(1439u, u_input.b.x)));
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: f32) -> u32 {
    var var_0 = Struct_1(!any(vec2<bool>(arg_1.x, !arg_1.x)), abs(34275i) << (reverseBits(~u_input.b.x) % 32u), arg_1, -55024i);
    var var_1 = ~func_3(max(u_input.b.yzx, vec3<u32>(u_input.b.x ^ u_input.b.x, u_input.a >> (u_input.a % 32u), u_input.a)), any(select(arg_1, arg_1, vec2<bool>(var_0.a, var_0.a))) || false, arg_0, Struct_1(!any(vec4<bool>(var_0.a, arg_1.x, true, var_0.c.x)), -var_0.b, vec2<bool>(true, var_0.a), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-1i, var_0.b, var_0.b, var_0.b)), _wgslsmith_add_vec4_i32(vec4<i32>(13651i, var_0.d, 1i, var_0.b), vec4<i32>(4714i, var_0.b, var_0.d, 56314i)))));
    let var_2 = Struct_3(!select(!(!vec4<bool>(var_0.a, arg_1.x, false, false)), vec4<bool>(!var_0.a, arg_1.x & true, arg_1.x, arg_1.x && var_0.a), arg_1.x), var_0.d);
    global0 = 0i;
    let var_3 = 6037i;
    return u_input.b.x;
}

fn func_1() -> Struct_2 {
    var var_0 = min(vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(0i, -32610i), 41225i), -(~0i), _wgslsmith_add_i32(-6011i >> (0u % 32u), _wgslsmith_mod_i32(-23209i, -1i))), select(_wgslsmith_add_vec3_i32(-vec3<i32>(-18381i, 2147483647i, -21719i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-7339i, -2007i, 3820i), vec3<i32>(2147483647i, -24446i, -20258i), vec3<i32>(-1i, -18887i, -74033i))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-54384i, -16346i, 0i, -1i), vec4<i32>(2368i, -1i, 11003i, 39056i)), -5837i, 1i), false)) & -abs(~(~vec3<i32>(1i, -58225i, -17549i)));
    let var_1 = reverseBits(var_0.x);
    var var_2 = _wgslsmith_f_op_f32(floor(-2009f));
    var var_3 = Struct_1(false, abs(_wgslsmith_dot_vec3_i32(-max(vec3<i32>(var_0.x, -2147483647i, var_1), vec3<i32>(var_1, var_1, var_1)), vec3<i32>(_wgslsmith_sub_i32(-14716i, var_1), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1, var_1), var_0.xy), abs(4385i)))), vec2<bool>(false, all(!select(vec2<bool>(false, false), vec2<bool>(false, true), false))), 2147483647i);
    let var_4 = 4294967295u;
    return Struct_2(Struct_1((1u << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_4, u_input.a), vec2<u32>(u_input.a, 50441u)) % 32u)) < func_2(-673f, vec2<bool>(var_3.a, false), _wgslsmith_div_f32(-754f, 169f)), var_3.d, !vec2<bool>(var_3.a, false), 7357i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 0i;
    global0 = firstTrailingBit(-_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -37579i, -2147483647i, -29052i), vec4<i32>(-73397i, -2015i, -55229i, -39096i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-260i, 0i, 0i), vec3<i32>(2147483647i, -60740i, 25358i))) ^ _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(7876i, 2147483647i), vec2<i32>(1i, -46281i)), ~(-1i)));
    var var_0 = vec2<i32>(max(~(-1i), _wgslsmith_clamp_i32(~(-2147483647i), 21640i, _wgslsmith_sub_i32(-13606i, 1i)) | -1i), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1247i) >> (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u)), ~vec2<i32>(-2147483647i, 1i)), -74052i) & countOneBits(_wgslsmith_clamp_i32(1i, _wgslsmith_div_i32(10603i, 4975i), _wgslsmith_mult_i32(-7507i, 0i))));
    var var_1 = func_1();
    var_1 = Struct_2(var_1.a);
    global0 = var_0.x;
    var var_2 = _wgslsmith_mod_u32(u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, ~max(4671u, func_2(661f, var_1.a.c, 281f))));
    var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(1319f, reverseBits(_wgslsmith_add_vec3_i32(~(~vec3<i32>(var_1.a.d, var_1.a.b, 22875i)), firstLeadingBit(vec3<i32>(-5201i, 2950i, -62074i)))));
}

