struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec3<f32>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32;

var<private> global2: array<u32, 29>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global2 = array<u32, 29>();
    var var_0 = arg_2;
    var_0 = arg_2;
    global0 = arg_2;
    var_0 = arg_2;
    return countOneBits(~max(_wgslsmith_add_u32(10698u, select(arg_3.d, arg_0, true)), 4294967295u));
}

fn func_3() -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1057f);
    let var_1 = -(~countOneBits(_wgslsmith_add_vec2_i32(abs(u_input.c.zy), u_input.c.zy)));
    var var_2 = true;
    var var_3 = _wgslsmith_dot_vec2_i32(var_1, var_1) >> (0u % 32u);
    var var_4 = Struct_1(global0.a, max(u_input.c.x, ~var_1.x), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-691f, global0.c.x, -968f) - _wgslsmith_f_op_vec3_f32(sign(global0.c))), global0.c)))), 1u, (~firstTrailingBit(u_input.a) | ~(~1866u)) >> (abs(~_wgslsmith_dot_vec3_u32(global0.a, global0.a)) % 32u));
    return _wgslsmith_div_vec3_f32(var_4.c, vec3<f32>(_wgslsmith_f_op_f32(min(724f, var_4.c.x)), -384f, -970f));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec3<f32>) -> vec3<f32> {
    global0 = arg_0;
    let var_0 = !vec4<bool>(true, (global0.e | abs(arg_0.e)) >= 29160u, true, max(_wgslsmith_mod_i32(-1i, -2147483647i), u_input.c.x << (global0.e % 32u)) > _wgslsmith_dot_vec4_i32(~vec4<i32>(0i, -2147483647i, 1i, u_input.c.x), u_input.b));
    global0 = Struct_1(arg_0.a, u_input.b.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, _wgslsmith_f_op_f32(min(-338f, _wgslsmith_f_op_f32(f32(-1f) * -459f))), 1379f) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(1133f, global0.c.x, -1607f) + _wgslsmith_f_op_vec3_f32(-arg_0.c))))), _wgslsmith_add_u32(1u, global2[_wgslsmith_index_u32(~0u, 29u)] ^ ~(~54299u)), _wgslsmith_add_u32(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~select(global2[_wgslsmith_index_u32(global0.e, 29u)], 16786u, arg_1), 1u), 29u)], 29u)]));
    var var_1 = u_input.b.zwy;
    global1 = u_input.a;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.c * vec3<f32>(2720f, -369f, 881f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(816f, arg_2.x, global0.c.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1343f, -1000f, -165f)), var_0.xzw))) - _wgslsmith_f_op_vec3_f32(func_3())) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(global0.c)))));
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = 33968u;
    global2 = array<u32, 29>();
    let var_1 = Struct_1(vec3<u32>(arg_0, _wgslsmith_sub_u32(max(global0.e, 4294967295u ^ global2[_wgslsmith_index_u32(arg_0, 29u)]), min(global2[_wgslsmith_index_u32(~global0.d, 29u)], firstTrailingBit(46352u))), arg_0 >> (115596u % 32u)), _wgslsmith_div_i32(~(-6355i), abs(_wgslsmith_sub_i32(firstLeadingBit(u_input.c.x), 61232i))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.c.x, global0.c.x)))), global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(890f, -1883f))))), _wgslsmith_clamp_u32((u_input.a ^ (global0.e ^ 22656u)) & u_input.a, global2[_wgslsmith_index_u32(64130u, 29u)], _wgslsmith_dot_vec4_u32(vec4<u32>(48316u, ~arg_0, 24436u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(23656u, arg_0, u_input.a, 7256u), vec4<u32>(arg_0, 4294967295u, global0.d, global2[_wgslsmith_index_u32(0u, 29u)])), 29u)], 29u)]), ~select(vec4<u32>(arg_0, 105181u, 73174u, u_input.a), vec4<u32>(u_input.a, 1u, u_input.a, 4294967295u), false))), abs(~global0.d));
    global1 = _wgslsmith_dot_vec4_u32(~firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(16876u, 39752u, arg_0, 87113u), vec4<u32>(var_1.a.x, 28372u, 1u, global0.a.x))), firstLeadingBit(firstTrailingBit(vec4<u32>(9230u, var_1.e, var_1.a.x, arg_0) ^ vec4<u32>(var_1.a.x, 1u, u_input.a, arg_0)))) ^ _wgslsmith_sub_u32(~1510u, var_1.e | var_1.a.x);
    var var_2 = vec4<i32>(~global0.b, ~(-13553i), firstLeadingBit(var_1.b), var_1.b) ^ (_wgslsmith_mult_vec4_i32(u_input.c, u_input.b) << (vec4<u32>(func_2(28639u, abs(vec2<i32>(0i, -1i)), var_1, var_1), global0.d, ~(~var_1.e), 1u) % vec4<u32>(32u)));
    return Struct_1(max(vec3<u32>(_wgslsmith_mod_u32(u_input.a, 2692u), 4294967295u, min(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(33843u, 29u)], 29u)], 149066u) | countOneBits(1u)), ~(~vec3<u32>(4294967295u, 0u, u_input.a))), global0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(var_1, all(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(285f, 1081f, global0.c.x)) - _wgslsmith_f_op_vec3_f32(func_3()))))), 1u, 63841u);
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> u32 {
    global0 = Struct_1(global0.a >> ((~arg_1.a & abs(select(global0.a, vec3<u32>(41479u, arg_1.d, global0.d), true))) % vec3<u32>(32u)), _wgslsmith_div_i32(u_input.b.x, ~_wgslsmith_add_i32(-13598i, 25637i)), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)), -528f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-635f)) + _wgslsmith_div_f32(100f, arg_1.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-808f))))), ~u_input.a, arg_3.e);
    let var_0 = 1u;
    var var_1 = -firstTrailingBit(arg_3.b);
    let var_2 = func_1(global0.e);
    let var_3 = vec2<bool>(true & arg_0, !(any(select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, true), vec2<bool>(arg_0, true))) && true));
    return global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_add_u32(arg_2, 1586u)) ^ 0u, 29u)], 29u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 29>();
    var var_0 = vec4<u32>(~(~(~(~global2[_wgslsmith_index_u32(u_input.a, 29u)]))), func_5(true, Struct_1(select(global0.a, global0.a, vec3<bool>(true, false, false)), -20732i, vec3<f32>(1059f, _wgslsmith_f_op_f32(-607f - global0.c.x), global0.c.x), countOneBits(~u_input.a), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(4294967295u, 4294967295u, u_input.a, 52263u)), _wgslsmith_mult_vec4_u32(vec4<u32>(11230u, 8038u, 4294967295u, global2[_wgslsmith_index_u32(4294967295u, 29u)]), vec4<u32>(0u, u_input.a, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 29u)], 29u)], 29u)])))), u_input.a, func_1(u_input.a)), ~15097u, 1u);
    let var_1 = !(!select(vec4<bool>(all(vec4<bool>(false, false, true, true)), true, false, all(vec3<bool>(true, false, false))), select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), false), any(vec2<bool>(false, false))), vec4<bool>(false, all(vec4<bool>(true, false, false, true)), true, true)));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(global0.c, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1021f), _wgslsmith_f_op_f32(f32(-1f) * -2332f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -695f)))), global0.c, vec3<bool>(u_input.b.x < ~(-8428i), true, false))), any(var_1.yw)));
    global1 = 1u ^ ~_wgslsmith_div_u32(global0.e, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(func_1(global0.e).e, global0.b >> (4294967295u % 32u), vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), -1303f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_2.x)))), -1025f)), var_2.x, _wgslsmith_f_op_vec3_f32(func_3()).x);
}

