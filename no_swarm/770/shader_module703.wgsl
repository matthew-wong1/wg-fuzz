struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: vec3<bool>, arg_3: u32) -> bool {
    var var_0 = vec3<f32>(482f, 103f, _wgslsmith_f_op_f32(f32(-1f) * -1065f));
    var var_1 = 489f;
    let var_2 = 105f;
    return arg_1.x;
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> u32 {
    let var_0 = Struct_3(vec3<i32>(-(u_input.c.x & u_input.c.x), u_input.c.x, 1i));
    var var_1 = Struct_1(-_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(37316i, 2147483647i, 2147483647i)), max(vec3<i32>(var_0.a.x, -2147483647i, -5954i), vec3<i32>(arg_1.c.a, u_input.c.x, 0i))), firstTrailingBit(~var_0.a)));
    let var_2 = _wgslsmith_clamp_vec4_i32(max(max(-vec4<i32>(u_input.c.x, var_0.a.x, var_0.a.x, arg_1.c.a) << (vec4<u32>(u_input.a.x, arg_1.b.x, u_input.a.x, 10772u) % vec4<u32>(32u)), vec4<i32>(2147483647i, -u_input.c.x, 1i, -arg_1.c.a)), (~vec4<i32>(var_1.a, 1i, -2147483647i, -11627i) & select(vec4<i32>(var_0.a.x, arg_1.c.a, 2147483647i, u_input.c.x), vec4<i32>(var_0.a.x, -2147483647i, 2147483647i, 22446i), arg_1.d)) ^ (-vec4<i32>(-15053i, u_input.c.x, -4211i, arg_1.c.a) | (vec4<i32>(-19315i, var_1.a, var_0.a.x, -9755i) ^ vec4<i32>(var_1.a, 52043i, var_1.a, u_input.c.x)))), _wgslsmith_add_vec4_i32(vec4<i32>(-(~var_0.a.x), reverseBits(arg_1.c.a), countOneBits(firstTrailingBit(var_1.a)), u_input.c.x), ~(-countOneBits(vec4<i32>(-50016i, 2147483647i, u_input.c.x, var_1.a)))), firstTrailingBit(vec4<i32>(-1i) * -firstLeadingBit(vec4<i32>(0i, -44398i, var_0.a.x, 62808i))));
    let var_3 = ~(-var_2);
    var var_4 = arg_1.d;
    return 0u;
}

fn func_4(arg_0: bool) -> f32 {
    var var_0 = u_input.c.x;
    var var_1 = u_input.b.zz;
    let var_2 = _wgslsmith_f_op_f32(811f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(665f, -370f)))))) * -371f));
    var var_3 = ~abs(40844i);
    var var_4 = func_1(firstLeadingBit(firstTrailingBit(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(44690u, u_input.b.x)))), !(!select(select(vec2<bool>(arg_0, true), vec2<bool>(false, arg_0), vec2<bool>(true, arg_0)), vec2<bool>(true, arg_0), true)), !vec3<bool>(false, func_1(firstLeadingBit(u_input.b.wy), !vec2<bool>(true, arg_0), !vec3<bool>(arg_0, true, true), u_input.b.x), !arg_0), 4294967295u & (_wgslsmith_div_u32(u_input.a.x | 1u, reverseBits(var_1.x)) ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, u_input.a.x, 63769u, 64082u), vec4<u32>(u_input.b.x, 2682u, var_1.x, var_1.x))));
    return 1210f;
}

fn func_2() -> f32 {
    return _wgslsmith_f_op_f32(func_4(abs(~func_3(u_input.b.x, Struct_2(-995f, vec3<u32>(9248u, u_input.b.x, 10909u), Struct_1(1i), true))) > (firstTrailingBit(112331u) << (u_input.a.x % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true && (u_input.c.x <= u_input.c.x)), select(vec3<bool>(true, func_1(u_input.b.yw, vec2<bool>(false, false), vec3<bool>(false, false, true), u_input.b.x), true), vec3<bool>(-1i < u_input.c.x, false, true), select(vec3<bool>(true, false, false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), true)), vec3<bool>(false, true | select(true, true, true), select(true, true, true)));
    var var_1 = ~u_input.b.yyw;
    let var_2 = var_0.yy;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(149f, -1217f, 1502f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-645f, 2094f, -243f), vec3<f32>(536f, -1000f, -349f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-388f, 1077f, 1459f)))));
    var_3 = vec3<f32>(524f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.x))), _wgslsmith_f_op_f32(-var_3.x));
    var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(816f, var_3.x, 859f), vec3<f32>(var_3.x, -900f, 329f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_3.x, var_3.x, var_3.x))), vec3<bool>(false, var_0.x, var_0.x))))), vec3<f32>(_wgslsmith_f_op_f32(floor(-481f)), 1224f, _wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(step(774f, 608f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(ceil(-1621f)), var_3.x), vec3<f32>(834f, _wgslsmith_f_op_f32(min(var_3.x, var_3.x)), _wgslsmith_f_op_f32(1000f * var_3.x)))) + vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(680f + var_3.x))), var_3.x, _wgslsmith_f_op_f32(func_2()))));
    var var_4 = firstTrailingBit(vec2<i32>(_wgslsmith_add_i32(-u_input.c.x, max(u_input.c.x, 1i)), _wgslsmith_div_i32(1i, u_input.c.x)));
    var var_5 = vec3<f32>(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x * var_3.x))))), _wgslsmith_f_op_f32(-var_3.x));
    var var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1597f)) + _wgslsmith_f_op_f32(var_5.x + var_3.x)) > _wgslsmith_f_op_f32(trunc(var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, vec4<f32>(_wgslsmith_f_op_f32(var_5.x + var_5.x), _wgslsmith_f_op_f32(-var_5.x), _wgslsmith_f_op_f32(var_5.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -896f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_5.x)), var_3.x))), abs(~reverseBits(min(var_4.x, 2147483647i))), ((~u_input.a.xx | var_1.xz) << (var_1.yz % vec2<u32>(32u))) >> (~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, var_1.x), firstLeadingBit(u_input.b.xw), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, u_input.a.x), u_input.b.zw)) % vec2<u32>(32u)));
}

