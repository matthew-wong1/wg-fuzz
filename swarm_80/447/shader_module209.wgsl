struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(1000f, 469f, 949f, 232f), vec2<f32>(-707f, 657f), vec4<i32>(2992i, 2147483647i, 29908i, 14771i));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> bool {
    var var_0 = Struct_1(global1.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1956f, -991f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, 2530f)))), vec4<i32>(-36816i, _wgslsmith_sub_i32(~global1.c.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 0u, 0u), vec3<u32>(4522u, u_input.b.x, 26693u)) % 32u), max(-11781i << (u_input.b.x % 32u), i32(-1i) * -18103i)), _wgslsmith_mod_i32(1i, select(countOneBits(global1.c.x), u_input.c, true)), u_input.c));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(441f)), _wgslsmith_f_op_f32(ceil(global1.b.x)), -1384f, global1.b.x) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, var_0.b.x, var_0.a.x, -656f) - vec4<f32>(var_0.a.x, 385f, global1.a.x, var_0.a.x)), global1.a))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(var_0.a, var_0.a)))))), global1.b, min(~_wgslsmith_add_vec4_i32(global1.c, abs(global1.c)), countOneBits(vec4<i32>(-global1.c.x, _wgslsmith_clamp_i32(u_input.c, -2147483647i, global1.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(15225i, 55055i, u_input.c, var_0.c.x), vec4<i32>(var_0.c.x, global1.c.x, u_input.c, u_input.c)), u_input.c))));
    global0 = false;
    var var_1 = _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), vec4<u32>(20770u, u_input.a, u_input.a, 0u)), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) << (vec4<u32>(4294967295u, 19697u, u_input.b.x, 36455u) % vec4<u32>(32u))), ~(~vec4<u32>(u_input.a, 0u, u_input.b.x, 131623u))), vec4<u32>(1u & u_input.b.x, firstTrailingBit(u_input.a) ^ u_input.b.x, 11880u, u_input.b.x)), select(~vec4<u32>(67086u, u_input.a, u_input.a, u_input.a) | ~(~vec4<u32>(u_input.a, 27724u, 0u, u_input.b.x)), ~(vec4<u32>(46103u, 0u, u_input.a, u_input.b.x) | vec4<u32>(28228u, u_input.b.x, u_input.a, u_input.a)) ^ max(vec4<u32>(u_input.b.x, 4294967295u, 1u, 2406u), vec4<u32>(u_input.b.x, u_input.a, 4294967295u, 35559u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(338f, global1.a.x, true)), 1680f)) >= global1.b.x));
    var var_2 = Struct_1(vec4<f32>(-1402f, _wgslsmith_f_op_f32(-global1.a.x), -1000f, var_0.a.x), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) + var_0.b.x), var_0.b.x))), countOneBits(vec4<i32>(~var_0.c.x, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(var_0.c, vec4<i32>(var_0.c.x, 26048i, -11793i, var_0.c.x)), firstLeadingBit(global1.c)), var_0.c.x, 11864i)));
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> vec2<f32> {
    let var_0 = global1.c;
    let var_1 = vec4<bool>(u_input.c == (select(arg_1.x | u_input.c, max(1i, global1.c.x), true) & ((global1.c.x | arg_0.c.x) & _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, var_0.x), arg_1.wz))), !select(_wgslsmith_f_op_f32(select(-450f, arg_0.b.x, false)) > 1299f, !any(vec3<bool>(true, true, false)), any(vec3<bool>(false, false, true))), !(!(!func_3())), false);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.a)), vec2<f32>(global1.b.x, 778f), ~(~_wgslsmith_div_vec4_i32(~global1.c, _wgslsmith_clamp_vec4_i32(global1.c, arg_2.c, arg_0.c))));
    global1 = var_2;
    global1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.a.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_2.a.x, -2896f))) - -460f), 212f, -2613f), vec2<f32>(_wgslsmith_f_op_f32(round(arg_2.b.x)), global1.a.x), ~(~abs(firstLeadingBit(arg_0.c))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_2.b, arg_2.b, true)), arg_0.a.yw) * vec2<f32>(arg_2.b.x, -752f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, -1237f) * _wgslsmith_div_vec2_f32(vec2<f32>(arg_2.b.x, global1.a.x), global1.a.yz))))) - vec2<f32>(arg_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1938f)));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> StorageBuffer {
    var var_0 = Struct_1(global1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(arg_1, firstTrailingBit(abs(global1.c)), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(683f, arg_1.a.x, arg_1.a.x, global1.a.x))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.a.x, global1.a.x), vec2<f32>(arg_1.a.x, global1.b.x))), vec4<i32>(-16632i, -23181i, 0i, global1.c.x)))) - arg_1.b), firstLeadingBit(-global1.c));
    var var_1 = _wgslsmith_clamp_u32(u_input.b.x, u_input.a, ~0u);
    return StorageBuffer(_wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1067f)))), ~(~countOneBits(global1.c.x)), _wgslsmith_mod_vec3_i32(var_0.c.ywz, arg_1.c.yzy), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(firstTrailingBit(_wgslsmith_clamp_vec4_i32(~vec4<i32>(-1i, 0i, 22106i, 0i), global1.c, global1.c)), Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-992f, global1.b.x, -148f, 637f), vec4<f32>(global1.b.x, global1.b.x, global1.a.x, -1364f)), vec4<f32>(1243f, global1.b.x, global1.a.x, 1343f), vec4<bool>(false, true, false, false))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(543f))), global1.a.x), -_wgslsmith_mult_vec4_i32(vec4<i32>(global1.c.x, -1124i, global1.c.x, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -29118i, 0i, u_input.c), global1.c))));
}

