struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(116f * _wgslsmith_f_op_f32(f32(-1f) * -433f))));
    let var_1 = Struct_2(-u_input.c, var_0);
    let var_2 = _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, _wgslsmith_sub_u32(2815u, u_input.a.x), u_input.a.x), _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a, u_input.b), ~u_input.a)), u_input.a) | u_input.b;
    var var_3 = Struct_1(1i, min(~firstLeadingBit(firstLeadingBit(var_2.x)), select(49430u, u_input.b.x, all(vec2<bool>(true, true)))), ~max(~(~u_input.a.x), abs(0u) | u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(554f, var_0)) + var_0), true != (var_1.a != min(-u_input.c, u_input.c)));
    let var_4 = vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(-25641i, 1i, u_input.c), vec3<i32>(var_3.a, var_3.a, var_3.a)), abs(-vec3<i32>(var_1.a, 0i, u_input.c)), ~(vec3<i32>(-10942i, var_1.a, -18528i) >> (var_2 % vec3<u32>(32u))));
    return select(vec4<bool>(!(var_3.e & true), !var_3.e, var_3.e, var_3.e), vec4<bool>(var_3.e, true, true, !(!all(vec3<bool>(var_3.e, var_3.e, var_3.e)))), !vec4<bool>(!var_3.e, var_3.e, var_3.e, var_3.e));
}

fn func_2() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -3309f))))) + -688f);
    var var_1 = vec3<bool>(any(!vec3<bool>(select(false, true, true), var_0 <= var_0, true)), any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true), select(vec4<bool>(true, true, true, true), func_3(), true), true)), any(!(!func_3().xx)));
    let var_2 = ~_wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(1i, u_input.c, 75499i, 39896i)), max(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<i32>(-5952i, -6780i, u_input.c, u_input.c)))), vec4<i32>(~(~u_input.c), 8289i, -20240i, abs(u_input.c) | 1i));
    var_1 = !select(vec3<bool>(true, var_1.x, any(!vec4<bool>(var_1.x, var_1.x, false, var_1.x))), !vec3<bool>(var_1.x, var_1.x, true), false);
    var_1 = vec3<bool>(!var_1.x, var_1.x, true);
    return func_3().yyw;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = select(select(select(select(!vec3<bool>(arg_0.e, arg_0.e, arg_0.e), !vec3<bool>(arg_0.e, false, arg_0.e), arg_0.e), select(select(vec3<bool>(true, arg_0.e, arg_0.e), vec3<bool>(arg_0.e, false, arg_0.e), vec3<bool>(true, true, false)), vec3<bool>(arg_0.e, arg_0.e, true), any(vec2<bool>(false, arg_0.e))), all(vec2<bool>(arg_0.e, arg_0.e)) && !arg_0.e), select(!vec3<bool>(true, false, arg_0.e), select(func_2(), vec3<bool>(arg_0.e, arg_0.e, arg_0.e), true), any(vec4<bool>(arg_0.e, true, arg_0.e, arg_0.e)) != !arg_0.e), vec3<bool>(arg_0.d != 705f, func_2().x, -u_input.c < u_input.c)), func_2(), all(func_3().wx));
    let var_1 = min(u_input.c, -_wgslsmith_add_i32(u_input.c, -_wgslsmith_div_i32(arg_0.a, -1i)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.d, _wgslsmith_f_op_f32(arg_0.d * _wgslsmith_f_op_f32(-arg_0.d))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d + 648f)))));
    return Struct_1(-2147483647i, _wgslsmith_div_u32(~53327u, 1u) >> (_wgslsmith_dot_vec2_u32(u_input.b.xx, firstTrailingBit(_wgslsmith_clamp_vec2_u32(u_input.b.zy, vec2<u32>(0u, arg_0.c), vec2<u32>(1u, u_input.b.x)))) % 32u), arg_0.b, _wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(f32(-1f) * -280f)), arg_0.e & !(-u_input.c <= u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(-(u_input.c & u_input.c) ^ u_input.c, ~_wgslsmith_clamp_u32(max(u_input.a.x, u_input.d.x), 1u, _wgslsmith_mult_u32(u_input.d.x, u_input.a.x)), ~(~(~u_input.a.x)), _wgslsmith_div_f32(184f, _wgslsmith_div_f32(1656f, -1639f)), all(vec3<bool>(true, any(vec3<bool>(false, false, true)), true))));
    var var_1 = Struct_2(-2147483647i, var_0.d);
    var_1 = Struct_2(_wgslsmith_mult_i32(var_0.a, (u_input.c << (11762u % 32u)) ^ (~(-2147483647i) >> (firstLeadingBit(1u) % 32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b + 264f), _wgslsmith_f_op_f32(var_0.d * var_1.b)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.d)) - var_1.b)) * var_0.d));
    var_1 = Struct_2(firstTrailingBit(-36978i), _wgslsmith_f_op_f32(var_1.b - 1899f));
    var_1 = Struct_2(max(~_wgslsmith_div_i32(firstLeadingBit(u_input.c), var_1.a & u_input.c), 27443i), _wgslsmith_f_op_f32(f32(-1f) * -634f));
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.b, var_1.b, _wgslsmith_f_op_f32(ceil(1000f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d, -647f, -1100f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-405f, -1000f, -748f)))))))));
}

