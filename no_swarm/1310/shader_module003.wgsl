struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: vec2<f32>) -> f32 {
    let var_0 = Struct_1(max(~u_input.c.x, ~arg_0), firstTrailingBit(~(-19845i)) & -(~arg_1.c.x), ~0u, vec3<i32>(abs(_wgslsmith_dot_vec4_i32(arg_1.c, arg_1.c)), 43950i, min(reverseBits(46947i), _wgslsmith_dot_vec3_i32(u_input.a, u_input.a))) << (u_input.c.yzx % vec3<u32>(32u)), select(true, any(vec2<bool>(arg_1.c.x >= -2147483647i, any(vec2<bool>(false, arg_1.b)))), any(!vec2<bool>(true, arg_1.b)) && any(!vec2<bool>(false, arg_1.b))));
    var var_1 = arg_1;
    let var_2 = arg_1;
    var_1 = Struct_4(10020u, all(!vec3<bool>(var_0.e, u_input.a.x != u_input.a.x, false)), _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(-var_2.c & ~var_2.c, _wgslsmith_add_vec4_i32(select(vec4<i32>(0i, 37349i, 1i, var_1.c.x), var_1.c, var_2.b), vec4<i32>(-2065i, -2147483647i, var_0.b, -13363i))), _wgslsmith_add_vec4_i32(arg_1.c, ~(-vec4<i32>(63007i, arg_1.c.x, -1i, arg_1.c.x))), ~_wgslsmith_div_vec4_i32(~vec4<i32>(var_1.c.x, 5602i, var_1.c.x, var_1.c.x), arg_1.c)));
    let var_3 = vec3<i32>(~(~_wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, var_2.c.x), vec2<i32>(arg_1.c.x, -2147483647i))), arg_1.c.x, var_1.c.x);
    return -652f;
}

fn func_2(arg_0: vec4<f32>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_div_u32(~3471u, ~u_input.c.x), Struct_4(~u_input.c.x, all(vec3<bool>(false, true, false)), firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, -2147483647i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.wx * arg_0.wx)))))));
    var var_1 = vec3<i32>(-24638i, -7i, -u_input.a.x);
    var_1 = ~vec3<i32>(u_input.a.x, _wgslsmith_mult_i32(_wgslsmith_add_i32(1i, max(-1i, 53368i)), -1i), i32(-1i) * -u_input.a.x);
    let var_2 = vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -323f))) + 1f));
    var var_3 = Struct_4(77072u, any(!select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true))), vec4<i32>(-(var_1.x ^ _wgslsmith_div_i32(-1i, var_1.x)), 0i, -reverseBits(_wgslsmith_mod_i32(-12435i, var_1.x)), abs(u_input.b)));
    return max(_wgslsmith_clamp_vec2_u32(~_wgslsmith_add_vec2_u32(countOneBits(u_input.c.yx), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 64681u), u_input.c.xy)), u_input.c.zz, ~_wgslsmith_mod_vec2_u32(u_input.c.zw, vec2<u32>(var_3.a, 35131u) | vec2<u32>(var_3.a, u_input.c.x))), ~(~(vec2<u32>(32774u, 0u) >> (vec2<u32>(var_3.a, var_3.a) % vec2<u32>(32u))) & firstTrailingBit(vec2<u32>(var_3.a, u_input.c.x) & vec2<u32>(4294967295u, 107884u))));
}

fn func_1(arg_0: i32, arg_1: vec4<i32>) -> f32 {
    var var_0 = u_input.c.x;
    var_0 = ~(~min(90678u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 0u), func_2(vec4<f32>(1067f, 1390f, 2338f, -866f)))));
    var_0 = 86420u;
    var_0 = _wgslsmith_div_u32(0u, func_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-250f, -242f, 115f, 196f), vec4<f32>(1944f, -256f, 259f, -930f))), vec4<f32>(-1297f, -345f, 296f, 285f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-710f, -2449f, -1188f, 1000f)))))).x);
    var_0 = u_input.c.x;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * -946f) * _wgslsmith_f_op_f32(f32(-1f) * -910f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-903f)) + _wgslsmith_f_op_f32(round(533f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~41968u, u_input.b, 4294967295u << (u_input.c.x % 32u), u_input.a, true);
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(320f * 1121f), _wgslsmith_f_op_f32(func_1(u_input.a.x, vec4<i32>(-12035i, u_input.a.x, var_0.b, var_0.b))), -278f, _wgslsmith_f_op_f32(max(-2572f, 372f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(-1268f, 501f, -398f, -529f), vec4<f32>(-463f, -705f, 1000f, 1270f)))), true))), var_0.e || var_0.e);
    var var_2 = u_input.c.zyw;
    let var_3 = (var_0.e && all(select(vec4<bool>(true, false, false, var_1.b), !vec4<bool>(var_1.b, true, var_1.b, var_1.b), !var_0.e))) | true;
    var var_4 = !(!(!select(vec2<bool>(var_1.b, false), !vec2<bool>(true, var_0.e), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(var_1.a)), vec4<i32>(min(abs(max(var_0.d.x, u_input.a.x)), 1i), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(var_0.d, var_0.d) << (u_input.c.wyy % vec3<u32>(32u)), ~(vec3<i32>(1i, -2147483647i, -47936i) ^ vec3<i32>(var_0.b, 39228i, var_0.d.x))), -56089i, ~(~(~2147483647i))), u_input.a.x);
}

