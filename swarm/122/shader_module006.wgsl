struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 29>;

var<private> global1: i32;

var<private> global2: array<i32, 20> = array<i32, 20>(i32(-2147483648), -12636i, -31093i, 0i, 18197i, 49706i, i32(-2147483648), -1i, 1i, 2147483647i, 35731i, 4597i, 5728i, 0i, -16026i, 31150i, 43754i, -1i, 1i, -2748i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: bool) -> vec2<bool> {
    global0 = array<vec4<bool>, 29>();
    let var_0 = !vec4<bool>(arg_3, false, !(true & (arg_3 | true)), false);
    global1 = reverseBits(u_input.c) << (u_input.b % 32u);
    var var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_f32(min(arg_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-407f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.a + 111f), var_1.a))) * 1309f)));
    return vec2<bool>(true, false);
}

fn func_2(arg_0: i32) -> i32 {
    global0 = array<vec4<bool>, 29>();
    var var_0 = 2281i;
    var var_1 = ~(~select(~vec2<i32>(u_input.c, arg_0) | vec2<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], u_input.c), vec2<i32>(-20148i, global2[_wgslsmith_index_u32(u_input.a.x, 20u)]) & vec2<i32>(arg_0, u_input.c), select(vec2<bool>(true, true), func_3(Struct_1(137f), vec2<i32>(u_input.c, arg_0), Struct_1(-675f), false), vec2<bool>(true, true))));
    var_0 = -u_input.c;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -369f), _wgslsmith_f_op_f32(-1298f - 1934f)) * -610f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1004f - -1849f) + -357f))));
    return _wgslsmith_mod_i32(select(-var_1.x, _wgslsmith_add_i32(abs(-2147483647i << (u_input.a.x % 32u)), min(_wgslsmith_div_i32(var_1.x, 0i), 1839i)), any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false))) == any(global0[_wgslsmith_index_u32(66532u, 29u)])), 0i << (~u_input.a.x % 32u));
}

fn func_4(arg_0: u32, arg_1: vec2<f32>, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_mult_i32(u_input.c, 2147483647i);
    var var_1 = 48379i;
    var_0 = -(countOneBits(u_input.c) ^ ~(i32(-1i) * -1539i)) | 21544i;
    global2 = array<i32, 20>();
    var var_2 = -_wgslsmith_add_vec3_i32(vec3<i32>(0i, u_input.c, abs(_wgslsmith_mod_i32(u_input.c, 0i))), vec3<i32>(-769i, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, arg_2.x), arg_2.zy, arg_2.xy), vec2<i32>(global2[_wgslsmith_index_u32(arg_0, 20u)], 53857i)), ~(-47088i)));
    return arg_3;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<bool>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(round(-852f)));
    let var_1 = func_4(u_input.b, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(arg_0.xy)))), vec3<i32>(-func_2(global2[_wgslsmith_index_u32(u_input.a.x, 20u)] << (u_input.b % 32u)), _wgslsmith_div_i32(-17380i, reverseBits(1i)), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 20u)], 0i, u_input.c, 2147483647i), firstTrailingBit(vec4<i32>(u_input.c, 2147483647i, global2[_wgslsmith_index_u32(50069u, 20u)], global2[_wgslsmith_index_u32(u_input.a.x, 20u)])), vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(u_input.a.x, 20u)], -8651i, global2[_wgslsmith_index_u32(u_input.a.x, 20u)]) << (vec4<u32>(u_input.a.x, 35336u, u_input.b, u_input.b) % vec4<u32>(32u))), vec4<i32>(~global2[_wgslsmith_index_u32(4294967295u, 20u)], _wgslsmith_dot_vec2_i32(vec2<i32>(-53465i, global2[_wgslsmith_index_u32(9605u, 20u)]), vec2<i32>(u_input.c, -2147483647i)), -1i, global2[_wgslsmith_index_u32(~u_input.b, 20u)]))), Struct_1(arg_0.x));
    global1 = min(28538i, global2[_wgslsmith_index_u32(u_input.b ^ _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.b, 1u), ~(~vec2<u32>(u_input.b, 71865u))), 20u)]);
    var var_2 = _wgslsmith_mult_vec3_i32(~(~vec3<i32>(u_input.c, -24143i, global2[_wgslsmith_index_u32(23571u, 20u)]) ^ -vec3<i32>(-93871i, -17537i, u_input.c)) ^ firstLeadingBit(vec3<i32>(2147483647i, u_input.c, _wgslsmith_clamp_i32(1i, 0i, 2147483647i))), firstTrailingBit(vec3<i32>(select(1i, abs(-1i), any(vec2<bool>(arg_1.x, arg_1.x))), ~(~u_input.c), -(i32(-1i) * -12949i))));
    global1 = var_2.x;
    return -763f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    global1 = -6842i;
    var var_1 = 29802u;
    var var_2 = u_input.c <= -(~_wgslsmith_dot_vec4_i32(~vec4<i32>(29741i, u_input.c, u_input.c, 2147483647i), vec4<i32>(u_input.c, 35375i, global2[_wgslsmith_index_u32(1u, 20u)], u_input.c) << (vec4<u32>(var_0, 4294967295u, 10524u, u_input.a.x) % vec4<u32>(32u))));
    var_1 = min(var_0 ^ 0u, u_input.b);
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-452f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(106f, 923f, 574f, 982f) - vec4<f32>(353f, -418f, 189f, 2405f)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)))))))));
    let var_4 = ~vec4<i32>(reverseBits(global2[_wgslsmith_index_u32(~(~1u), 20u)]), u_input.c, -(~min(-4163i, -1i)), -global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~var_0, _wgslsmith_mod_u32(40895u, var_0)), 20u)]);
    var_1 = _wgslsmith_mod_u32(~(~(~var_0 ^ u_input.a.x)), 4294967295u ^ ~reverseBits(_wgslsmith_clamp_u32(23733u, var_0, 0u)));
    let var_5 = func_4(1u, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1041f, _wgslsmith_f_op_f32(func_1(_wgslsmith_div_vec4_f32(vec4<f32>(-1483f, -306f, var_3, 153f), vec4<f32>(879f, var_3, -913f, -905f)), vec2<bool>(true, true)))), vec2<f32>(_wgslsmith_f_op_f32(-var_3), 959f), all(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(false, true))))), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(var_4.yzy, var_4.xyw) & var_4.wyz, vec3<i32>(2147483647i, -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_4.x, var_4.x, 1i, global2[_wgslsmith_index_u32(var_0, 20u)]), vec4<i32>(16285i, 2147483647i, var_4.x, u_input.c))), ~(-(~var_4.yxx))), Struct_1(_wgslsmith_f_op_f32(ceil(329f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_mod_u32(0u, ~(~u_input.a.x)), 11456u));
}

