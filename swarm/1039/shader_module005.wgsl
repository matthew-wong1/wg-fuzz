struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec2<i32>,
    d: f32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(vec3<u32>(u_input.a, 40608u, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, u_input.a), firstLeadingBit(vec3<u32>(u_input.a, 1u, u_input.a)) >> (vec3<u32>(4294967295u, u_input.d, u_input.d) % vec3<u32>(32u)))), any(select(select(vec2<bool>(true, true), vec2<bool>(false, false), 35050u == u_input.a), select(vec2<bool>(true, false), vec2<bool>(false, true), true), true)), ~countOneBits(vec2<i32>(18261i, u_input.c)) << (_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(89706u, 0u)), vec2<u32>(u_input.a, u_input.d) << (vec2<u32>(0u, u_input.a) % vec2<u32>(32u))), ~vec2<u32>(u_input.a, 1u) << (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, u_input.a), vec2<u32>(u_input.d, 4294967295u)) % vec2<u32>(32u))) % vec2<u32>(32u)), -798f, reverseBits(_wgslsmith_mult_vec4_i32(-(vec4<i32>(-2147483647i, 0i, u_input.b, 0i) << (vec4<u32>(1u, u_input.d, u_input.a, 0u) % vec4<u32>(32u))), vec4<i32>(i32(-1i) * -1i, min(u_input.c, -27728i), 21788i, abs(u_input.b)))));
    return firstLeadingBit(_wgslsmith_add_i32(~_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(var_0.e, var_0.e), select(var_0.e, var_0.e, vec4<bool>(false, true, var_0.b, true))), firstTrailingBit(u_input.c)));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: vec3<bool>, arg_3: f32) -> i32 {
    var var_0 = vec2<i32>(-1i) * -abs(max(-arg_0.zy, vec2<i32>(24982i, u_input.b) >> (arg_1.zz % vec2<u32>(32u))));
    var_0 = -arg_0.zz;
    var_0 = -vec2<i32>(func_3(), u_input.b);
    let var_1 = -u_input.c ^ u_input.b;
    var_0 = _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(0i, -var_1), arg_0.wx), ~select(-vec2<i32>(u_input.b, var_1), vec2<i32>(-22658i, arg_0.x), vec2<bool>(arg_2.x, arg_2.x)), -_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(arg_0.x, arg_0.x), vec2<i32>(396i, 2147483647i)), reverseBits(arg_0.xz))), ~arg_0.yw);
    return firstTrailingBit(u_input.c);
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = ~(select(countOneBits(vec4<u32>(arg_3.a.x, arg_1.x, arg_1.x, arg_1.x)), abs(arg_1), true) << (~abs(~arg_1) % vec4<u32>(32u)));
    var var_1 = Struct_1(arg_1.zzy, (!all(vec2<bool>(arg_3.b, arg_3.b)) && false) | arg_3.b, ~arg_3.e.zy, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0))))), vec4<i32>(arg_3.e.x, arg_2.e.x, func_2(arg_3.e, ~min(arg_2.a, arg_3.a), !select(vec3<bool>(true, arg_3.b, arg_3.b), vec3<bool>(true, true, arg_3.b), vec3<bool>(arg_2.b, false, arg_2.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.d)) * 296f)), ~abs(-2147483647i)));
    var var_2 = arg_2;
    var_0 = arg_1;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(arg_0 * -1091f), _wgslsmith_f_op_f32(f32(-1f) * -1247f), _wgslsmith_div_f32(var_2.d, arg_0)))));
    return _wgslsmith_sub_vec2_u32(arg_1.zw, _wgslsmith_mult_vec2_u32(~vec2<u32>(arg_1.x, arg_2.a.x), vec2<u32>(countOneBits(3203u), 1u))) & arg_2.a.xz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ((1u >> ((~u_input.d ^ 4294967295u) % 32u)) >> (reverseBits(firstLeadingBit(~u_input.a)) % 32u)) != u_input.d;
    var var_1 = var_0;
    let var_2 = select(select(select(vec4<bool>(false, true, var_0, true & var_0), !(!vec4<bool>(var_0, var_0, var_0, var_0)), !(!vec4<bool>(var_0, var_0, var_0, false))), !select(vec4<bool>(var_0, true, false, var_0), !vec4<bool>(false, var_0, var_0, true), !var_0), select(!vec4<bool>(var_0, true, var_0, false), vec4<bool>(all(vec2<bool>(false, true)), var_0 && var_0, select(false, var_0, false), all(vec2<bool>(true, var_0))), select(vec4<bool>(true, true, true, true), !vec4<bool>(true, var_0, var_0, var_0), var_0))), !(!(!(!vec4<bool>(var_0, true, var_0, true)))), !var_0);
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1353f, _wgslsmith_f_op_f32(f32(-1f) * -950f))));
    var var_4 = firstLeadingBit(_wgslsmith_div_vec2_u32(max(select(vec2<u32>(u_input.d, u_input.d), vec2<u32>(9373u, u_input.d) & vec2<u32>(13876u, 4294967295u), !vec2<bool>(true, var_0)), ~vec2<u32>(4294967295u, u_input.d)), (func_1(-1452f, vec4<u32>(u_input.a, 12302u, 56u, u_input.d), Struct_1(vec3<u32>(u_input.d, u_input.a, 15154u), false, vec2<i32>(-1i, u_input.b), -662f, vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.c)), Struct_1(vec3<u32>(29203u, 13352u, u_input.d), true, vec2<i32>(-39813i, u_input.b), 1078f, vec4<i32>(-1i, 1i, u_input.c, u_input.c))) >> (vec2<u32>(u_input.d, u_input.a) % vec2<u32>(32u))) ^ (vec2<u32>(u_input.a, 1u) ^ ~vec2<u32>(u_input.d, u_input.d))));
    let var_5 = var_2;
    var_1 = var_0;
    var_3 = -157f;
    let var_6 = _wgslsmith_mult_u32(~_wgslsmith_mult_u32(1u, 1106u), _wgslsmith_div_u32(1u << (_wgslsmith_sub_u32(u_input.a << (u_input.a % 32u), ~var_4.x) % 32u), _wgslsmith_clamp_u32(u_input.d, u_input.a, u_input.d)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(-545f, -717f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-100f))), -496f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1504f), _wgslsmith_f_op_f32(f32(-1f) * -1534f), 827f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1585f)), 738f)), -func_3(), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-497f, 218f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-148f * 189f))), _wgslsmith_f_op_f32(select(-1950f, -874f, true)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1f))))));
}

