struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
}

struct Struct_5 {
    a: u32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_3 = Struct_3(vec2<u32>(32092u, 2479u), 810f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: f32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -392f))), global1.b, 320f));
    global1 = Struct_3(vec2<u32>(66768u, global1.a.x), _wgslsmith_f_op_f32(-259f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.b))) + var_0.x)));
    global0 = any(select(vec2<bool>(true, (arg_0 >> (1u % 32u)) == select(-9982i, 1i, false)), vec2<bool>(any(vec4<bool>(false, true, true, false)), !all(vec3<bool>(true, false, true))), select(!select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, global1.a.x >= u_input.a.x), vec2<bool>(true, true))));
    global1 = Struct_3(vec2<u32>(u_input.e.x, global1.a.x), -893f);
    var var_1 = Struct_2(-1i & (u_input.d << (0u % 32u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(322f - var_0.x))), 2192f)));
    return select(vec4<bool>(0i > firstLeadingBit(abs(u_input.b)), -2147483647i <= _wgslsmith_mult_i32(firstLeadingBit(u_input.d), reverseBits(2147483647i)), !(-u_input.b >= _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, 1i, 2147483647i), vec3<i32>(-2147483647i, -2147483647i, var_1.a))), true), !vec4<bool>(all(vec3<bool>(true, true, true)), select(true, true, any(vec3<bool>(false, true, true))), all(vec2<bool>(true, true)), true), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec2<bool>(false, false)))) == select(true | (var_0.x >= var_0.x), true, any(vec3<bool>(false, false, false))));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> Struct_3 {
    var var_0 = Struct_5(abs(arg_0), !vec3<bool>(true, all(func_3(arg_2.a, arg_2.b)), all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)))));
    global0 = (-_wgslsmith_div_i32(~(-2147483647i), arg_2.a) >= firstTrailingBit(arg_2.a)) & var_0.b.x;
    let var_1 = arg_1.a;
    var var_2 = arg_1.a;
    let var_3 = u_input.e;
    return Struct_3(~vec2<u32>(0u, ~var_1), _wgslsmith_f_op_f32(558f * -1581f));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>) -> f32 {
    global1 = func_2(41582u, Struct_1(1u), Struct_2(arg_1.x, _wgslsmith_f_op_f32(floor(179f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f * 440f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-155f, 1000f))))));
    let var_0 = !(!func_3(arg_1.x, _wgslsmith_f_op_f32(global1.b * -1000f)).yzx);
    global1 = func_2(_wgslsmith_div_u32(u_input.e.x >> (u_input.e.x % 32u), 4294967295u), Struct_1(~(~0u) & arg_0), Struct_2(-(i32(-1i) * -13777i), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.b)))), _wgslsmith_f_op_f32(-global1.b));
    var var_1 = Struct_2(47435i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b))));
    let var_2 = u_input.e.zzy;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-930f, _wgslsmith_f_op_f32(-global1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(8086u, (vec3<i32>(0i, -2147483647i, u_input.d) ^ vec3<i32>(-61208i, u_input.d, u_input.b)) & vec3<i32>(-33740i, 1i, u_input.b))), 315f)) < global1.b;
    let var_1 = Struct_1(~u_input.a.x);
    global0 = all(!(!(!vec3<bool>(var_0, true, true)))) && var_0;
    global1 = func_2(0u, Struct_1(~countOneBits(15012u)), Struct_2(~(-(~u_input.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-979f + 221f))), _wgslsmith_f_op_f32(func_1(global1.a.x, _wgslsmith_div_vec3_i32(-abs(vec3<i32>(u_input.b, -1i, u_input.d)), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(u_input.d, u_input.b, u_input.d)), -vec3<i32>(2147483647i, u_input.b, -1i))))));
    global1 = func_2(reverseBits(~(~u_input.c)), Struct_1(var_1.a << (_wgslsmith_clamp_u32(u_input.c, 0u, ~65766u) % 32u)), Struct_2(u_input.b, global1.b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(global1.b * -2039f))), _wgslsmith_f_op_f32(-global1.b))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.b, 607f, -624f))) - _wgslsmith_div_vec3_f32(vec3<f32>(global1.b, 375f, -363f), vec3<f32>(global1.b, global1.b, global1.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-var_2), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.x, global1.b)))) * vec2<f32>(var_2.x, global1.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-190f, global1.b, -1177f) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(944f, global1.b, var_2.x)), vec3<f32>(var_2.x, global1.b, global1.b), true))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.b, 1599f, var_2.x))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1616f, var_2.x, -1766f))))))), 88755u, u_input.a.x);
}

