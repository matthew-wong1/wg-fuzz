struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 5> = array<vec3<i32>, 5>(vec3<i32>(-3234i, 1i, 2147483647i), vec3<i32>(-6233i, 27565i, i32(-2147483648)), vec3<i32>(-31616i, -37310i, -36321i), vec3<i32>(1911i, 0i, 32920i), vec3<i32>(-1i, 2147483647i, -5104i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1717f), _wgslsmith_f_op_f32(abs(195f)), _wgslsmith_f_op_f32(select(1568f, -796f, false)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(457f, 2451f, -269f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-427f, -771f, 1383f)))))));
    let var_1 = vec2<i32>(~countOneBits(2010i), countOneBits(arg_0 | -41037i));
    let var_2 = var_0.zx;
    let var_3 = arg_1.x;
    var var_4 = Struct_1(~global0[_wgslsmith_index_u32(_wgslsmith_add_u32(firstTrailingBit(64138u & u_input.a.x), 1u), 5u)], _wgslsmith_clamp_vec4_i32(reverseBits(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-23582i, var_1.x, -14285i, arg_0), vec4<i32>(-2147483647i, var_1.x, 60924i, arg_0), vec4<i32>(15733i, arg_0, var_1.x, 2147483647i)), ~vec4<i32>(46783i, -1250i, arg_0, u_input.c.x))), abs(~vec4<i32>(-31749i, 39102i, -1572i, 32767i)), -vec4<i32>(_wgslsmith_div_i32(u_input.c.x, arg_0), u_input.d, u_input.c.x << (u_input.b.x % 32u), -37536i)));
    return arg_1;
}

fn func_2(arg_0: i32) -> f32 {
    let var_0 = Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x << (u_input.a.x % 32u), _wgslsmith_mult_u32(~4294967295u, u_input.a.x) << (~1u % 32u)), 5u)], vec4<i32>(-1i) * -countOneBits(vec4<i32>(-18393i, 2147483647i, -36302i, -1446i)));
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-605f, -1650f, -1346f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(732f))), _wgslsmith_f_op_f32(f32(-1f) * -391f), -219f) + vec3<f32>(1262f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(380f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(524f - 877f))))));
    global0 = array<vec3<i32>, 5>();
    let var_2 = Struct_2(var_0, var_0, select(!func_3(-arg_0, vec4<bool>(true, false, false, true)), vec4<bool>(select(true, true, true), true, true, true), vec4<bool>(any(vec3<bool>(true, true, false)), !select(true, true, false), func_3(_wgslsmith_div_i32(-6867i, 17103i), vec4<bool>(true, true, true, true)).x, true)), select(_wgslsmith_dot_vec2_u32(u_input.a.zx, ~u_input.b), ~_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), true) >> (u_input.a.x % 32u), Struct_1(vec3<i32>(_wgslsmith_sub_i32(-u_input.c.x, u_input.d & arg_0), -16011i, -2147483647i), vec4<i32>(1i, _wgslsmith_div_i32(arg_0 | u_input.c.x, ~0i), -3542i, _wgslsmith_mult_i32(var_0.b.x, -72i))));
    global0 = array<vec3<i32>, 5>();
    return -1000f;
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = min(vec3<i32>(arg_0.b.x, min(_wgslsmith_mult_i32(-2147483647i, 1i), 1i), min(u_input.c.x << (u_input.a.x % 32u), select(0i, arg_0.a.x, false)) >> (~0u % 32u)), firstTrailingBit(countOneBits(vec3<i32>(u_input.c.x, arg_0.b.x, 0i))));
    let var_1 = arg_0.b.x;
    let var_2 = 181f;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(391f, 109f, var_2)) + vec3<f32>(var_2, -590f, _wgslsmith_f_op_f32(func_2(u_input.c.x)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-285f * var_2), _wgslsmith_f_op_f32(var_2 + var_2), var_2), vec3<f32>(_wgslsmith_f_op_f32(var_2 * -1286f), var_2, _wgslsmith_f_op_f32(trunc(var_2)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -3072f), 158f, _wgslsmith_f_op_f32(-var_2)))));
    var var_4 = true;
    return abs(select(var_1, var_0.x, ~(u_input.b.x >> (0u % 32u)) < 1u));
}

fn func_4(arg_0: i32, arg_1: vec3<f32>) -> vec2<bool> {
    let var_0 = Struct_1(vec3<i32>(u_input.c.x, u_input.d, firstLeadingBit(_wgslsmith_add_i32(u_input.c.x, -2147483647i)) | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -7349i, arg_0, u_input.c.x), vec4<i32>(21181i, 3587i, u_input.d, u_input.c.x))), max(~(-vec4<i32>(arg_0, -1i, 35437i, arg_0)), -vec4<i32>(firstTrailingBit(32442i), max(arg_0, arg_0), 1i, 5226i)));
    var var_1 = _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(1u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.b.x), u_input.b.x)), ~_wgslsmith_sub_u32(1u & u_input.b.x, u_input.b.x)), u_input.a.x);
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))), _wgslsmith_f_op_f32(-arg_1.x))) > arg_1.x;
    var_1 = _wgslsmith_mod_u32(u_input.a.x, u_input.b.x);
    var var_3 = Struct_2(var_0, Struct_1(_wgslsmith_div_vec3_i32(countOneBits(u_input.c) >> (reverseBits(u_input.a) % vec3<u32>(32u)), ~(-u_input.c)), countOneBits(vec4<i32>(19948i, -1i & var_0.a.x, arg_0, countOneBits(arg_0)))), vec4<bool>((firstLeadingBit(u_input.a.x) ^ ~39968u) != max(1593u, u_input.a.x), false, any(!func_3(2147483647i, vec4<bool>(true, false, true, false)).yy), true), abs(0u), var_0);
    return vec2<bool>(true, var_3.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 5>();
    global0 = array<vec3<i32>, 5>();
    global0 = array<vec3<i32>, 5>();
    let var_0 = vec3<bool>(true, true, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.d, 0i, 1i, u_input.d), -vec4<i32>(-7888i, -19708i, u_input.d, u_input.c.x)), 1i) < -2147483647i);
    global0 = array<vec3<i32>, 5>();
    let var_1 = select(select(vec2<i32>(~1i, min(u_input.d, -45454i << (0u % 32u))), u_input.c.xx, func_4(u_input.c.x & func_1(Struct_1(vec3<i32>(u_input.d, u_input.c.x, u_input.c.x), vec4<i32>(-1i, 42423i, u_input.c.x, u_input.d))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-546f, -1219f, -2033f) + vec3<f32>(797f, 1000f, 2405f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(446f, 548f, -1000f))), vec3<bool>(true, true, false))))), ~u_input.c.xx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(461f * 1188f)) - 1f) != _wgslsmith_f_op_f32(ceil(-292f)));
    let var_2 = !(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(sign(2442f))))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2009f)));
    var var_3 = vec4<u32>(0u, u_input.b.x, 44635u, select(1u ^ ~_wgslsmith_add_u32(u_input.b.x, u_input.a.x), firstTrailingBit(39923u), var_0.x));
    let var_4 = Struct_2(Struct_1(_wgslsmith_add_vec3_i32(~global0[_wgslsmith_index_u32(var_3.x ^ u_input.a.x, 5u)], ~global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, var_3.x), 5u)]), _wgslsmith_mod_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(-17309i, var_1.x, 39880i, -2147483647i), vec4<i32>(-76140i, -2147483647i, 7810i, 1i)), vec4<i32>(-u_input.c.x, i32(-1i) * -24560i, u_input.c.x ^ 2147483647i, var_1.x))), Struct_1(abs(vec3<i32>(~u_input.d, var_1.x, -var_1.x)), ~vec4<i32>(-1i, -10029i, countOneBits(var_1.x), 1i)), vec4<bool>(false, true, true, false), abs(var_3.x), Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(1993i, var_1.x), var_1.x, 2147483647i), -global0[_wgslsmith_index_u32(~27184u, 5u)], u_input.c), min(vec4<i32>(~u_input.c.x, 81351i, func_1(Struct_1(global0[_wgslsmith_index_u32(var_3.x, 5u)], vec4<i32>(-2147483647i, u_input.c.x, u_input.d, -51243i))), _wgslsmith_sub_i32(64540i, 1i)), abs(vec4<i32>(var_1.x, var_1.x, u_input.d, var_1.x)) << (~vec4<u32>(var_3.x, 1u, 7412u, var_3.x) % vec4<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(0i, min(u_input.d, var_4.e.b.x), var_1.x >> (var_3.x % 32u)), 1i) & var_1.x);
}

