struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec4<i32>) -> bool {
    global0 = _wgslsmith_clamp_i32(0i, ~_wgslsmith_mod_i32(firstLeadingBit(-10700i), -arg_2.x), -_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(arg_2, arg_2), arg_2.x)) >> ((~u_input.c.x | u_input.b.x) % 32u);
    global0 = arg_2.x;
    var var_0 = Struct_1(select(arg_1.a, vec3<bool>(arg_1.a.x | arg_1.c.x, true, !(4294967295u > arg_0)), !arg_1.a), _wgslsmith_clamp_vec2_u32(arg_1.b, vec2<u32>(86057u, abs(0u)), u_input.b) >> (vec2<u32>(select(arg_1.b.x << (5747u % 32u), 6205u, true), ~arg_1.b.x ^ ~72256u) % vec2<u32>(32u)), arg_1.c);
    global0 = -1i;
    var var_1 = vec4<u32>(select(_wgslsmith_sub_u32(var_0.b.x, arg_1.b.x >> (~2448u % 32u)), u_input.c.x, var_0.a.x), arg_1.b.x, _wgslsmith_div_u32(1u, arg_0), u_input.d);
    return var_0.a.x;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec2<bool>) -> bool {
    var var_0 = _wgslsmith_clamp_u32(~(~0u), 1u & _wgslsmith_dot_vec2_u32(max(arg_1.b, arg_1.b), u_input.c.zz), 38447u >> ((firstLeadingBit(arg_0) >> (_wgslsmith_mult_u32(16457u << (arg_0 % 32u), u_input.c.x & 4294967295u) % 32u)) % 32u));
    let var_1 = Struct_1(!vec3<bool>(true || arg_2.x, true, func_3(0u >> (0u % 32u), arg_1, firstLeadingBit(u_input.a))), arg_1.b, arg_2);
    global0 = _wgslsmith_clamp_i32(~u_input.a.x, 10184i & ~(~u_input.a.x), 2147483647i) & firstTrailingBit(2147483647i);
    let var_2 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.b.x, _wgslsmith_mult_u32(countOneBits(u_input.b.x), 32153u), arg_0, 0u), ~countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.b.x, 13756u, 1u, 0u), vec4<u32>(1u, var_1.b.x, 1u, 1u), vec4<u32>(4294967295u, u_input.d, var_1.b.x, 13282u))));
    var_0 = ~arg_1.b.x;
    return !(true && (~u_input.e.x > (-u_input.a.x ^ (u_input.e.x << (4294967295u % 32u)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = arg_0;
    let var_1 = Struct_1(arg_3.a, abs(firstTrailingBit(vec2<u32>(0u, arg_3.b.x) << (arg_2.b % vec2<u32>(32u)))) & (~vec2<u32>(arg_3.b.x, 1u) & (~vec2<u32>(8079u, arg_2.b.x) | (arg_3.b >> (vec2<u32>(u_input.b.x, 1u) % vec2<u32>(32u))))), select(vec2<bool>(all(select(vec4<bool>(false, false, true, arg_2.c.x), vec4<bool>(true, arg_0.a.x, var_0.c.x, true), vec4<bool>(false, false, arg_2.a.x, var_0.a.x))), true), arg_2.c, select(!arg_3.c.x && func_2(u_input.d, Struct_1(vec3<bool>(var_0.c.x, false, arg_2.a.x), vec2<u32>(arg_0.b.x, 0u), var_0.c), arg_3.c), select(true, true, false), arg_0.a.x)));
    let var_2 = Struct_1(vec3<bool>(select(_wgslsmith_mod_u32(14229u, arg_0.b.x) >= _wgslsmith_clamp_u32(1u, 1u, arg_0.b.x), any(!vec4<bool>(true, false, arg_2.a.x, arg_2.a.x)), any(!arg_2.a)), var_1.a.x, func_3(_wgslsmith_mod_u32(~u_input.d, firstTrailingBit(4294967295u)), Struct_1(var_0.a, arg_0.b, vec2<bool>(true, var_1.c.x)), ~u_input.a)), vec2<u32>(var_1.b.x, 48142u), !arg_3.c);
    var var_3 = arg_3;
    global0 = u_input.a.x;
    return _wgslsmith_mod_i32(firstLeadingBit(u_input.a.x), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.e.x;
    let var_0 = !(!select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true)), false));
    let var_1 = Struct_1(!(!vec3<bool>(true, true, var_0.x & var_0.x)), vec2<u32>(1u, u_input.b.x), var_0.zw);
    global0 = _wgslsmith_sub_i32(-1i, 20095i);
    global0 = u_input.a.x;
    global0 = _wgslsmith_sub_i32(0i, -((abs(u_input.a.x) >> (_wgslsmith_mult_u32(1u, 4294967295u) % 32u)) ^ max(func_1(Struct_1(var_0.xyx, vec2<u32>(var_1.b.x, 25805u), vec2<bool>(true, var_0.x)), u_input.a.ww, Struct_1(vec3<bool>(false, false, false), vec2<u32>(u_input.d, 36673u), vec2<bool>(var_0.x, var_0.x)), Struct_1(vec3<bool>(var_0.x, false, false), var_1.b, var_1.c)), _wgslsmith_dot_vec2_i32(vec2<i32>(26616i, 8074i), vec2<i32>(0i, 0i)))));
    var var_2 = Struct_1(select(vec3<bool>(func_2(abs(var_1.b.x), var_1, var_0.xy), select(func_2(17945u, var_1, var_1.a.zz), false, var_1.a.x), select(true, u_input.a.x == u_input.a.x, any(vec3<bool>(false, var_1.c.x, var_0.x)))), select(!(!vec3<bool>(false, var_0.x, false)), vec3<bool>(true, any(vec4<bool>(var_1.a.x, true, false, var_0.x)), var_1.a.x), vec3<bool>(false, true || var_0.x, true)), !var_0.x & true), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(18934u, 0u, 1u) & u_input.c, vec3<u32>(u_input.c.x, var_1.b.x, 3248u)), 32486u) << (vec2<u32>(1u, ~reverseBits(u_input.c.x)) % vec2<u32>(32u)), select(select(vec2<bool>(any(var_0), false), !var_1.c, var_0.zw), vec2<bool>(var_0.x, false), false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(680f, -1000f)) * vec2<f32>(_wgslsmith_f_op_f32(step(-499f, -428f)), _wgslsmith_div_f32(-2036f, 854f)))), _wgslsmith_sub_u32(_wgslsmith_mult_u32(14121u, ~(~2067u)), _wgslsmith_mult_u32(1u, 0u)), vec2<u32>(var_2.b.x << (((1u ^ u_input.d) >> (17405u % 32u)) % 32u), firstTrailingBit(~(~0u))));
}

