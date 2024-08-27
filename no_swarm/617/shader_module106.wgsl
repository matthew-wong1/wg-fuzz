struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: bool,
    d: i32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-1i, -1i, -13489i);

var<private> global1: vec4<f32>;

var<private> global2: array<f32, 26>;

var<private> global3: array<Struct_1, 5>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> bool {
    let var_0 = ~26839u;
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1372f, 554f, global1.x, _wgslsmith_f_op_f32(-213f * _wgslsmith_f_op_f32(round(-956f)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(u_input.a.x, 26u)])))), _wgslsmith_div_f32(194f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-867f, global1.x))), global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - -251f)));
    var var_1 = global3[_wgslsmith_index_u32(9183u, 5u)];
    let var_2 = Struct_1(true, vec4<bool>(all(vec3<bool>(global1.x <= global1.x, all(vec4<bool>(true, var_1.c, true, false)), 25363u >= u_input.b)), var_1.c, select(all(var_1.b.ww), var_1.b.x, any(var_1.b.yw)), !all(var_1.b)), true, global0.x, var_1.e);
    global0 = vec3<i32>(_wgslsmith_mod_i32(~var_2.d, var_2.d), -_wgslsmith_dot_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, global0.x, 0i), vec3<i32>(0i, var_2.d, 11463i)), vec3<i32>(1i, i32(-1i) * -22155i, var_2.d)), var_2.d);
    return true;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<f32>) -> vec4<f32> {
    var var_0 = Struct_1(select(-global0.x, max(i32(-1i) * -2147483647i, global0.x), ~u_input.a.x < 42795u) <= _wgslsmith_sub_i32(_wgslsmith_mult_i32(-2147483647i, 0i | global0.x), firstTrailingBit(-31732i)), !(!(!vec4<bool>(true, false, arg_0.x, arg_0.x))), any(vec4<bool>(false, true, arg_0.x, true)), select(abs(global0.x), -_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global0.x, global0.x, 40386i), vec3<i32>(global0.x, global0.x, 31237i)), vec3<i32>(global0.x, 2147483647i, 2147483647i)), false), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(~0u, 26u)], _wgslsmith_f_op_f32(-global1.x)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)), global1.wz, arg_0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global1.x, -255f), _wgslsmith_f_op_vec2_f32(sign(arg_1.xx))) * global1.zy)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, -1258f, 1000f, -817f) + vec4<f32>(arg_1.x, global1.x, -1120f, 1525f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(26579u, 26u)], 408f, global1.x, global2[_wgslsmith_index_u32(4294967295u, 26u)])))))));
    global3 = array<Struct_1, 5>();
    global0 = vec3<i32>(countOneBits(var_0.d), _wgslsmith_sub_i32(abs(13334i), reverseBits(var_0.d)), global0.x);
    let var_2 = arg_0.x;
    return _wgslsmith_f_op_vec4_f32(step(var_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(var_1)))));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<u32>) -> f32 {
    global1 = _wgslsmith_f_op_vec4_f32(func_4(vec3<bool>(any(vec3<bool>(all(vec4<bool>(true, false, false, true)), any(vec2<bool>(false, true)), true)), !any(vec2<bool>(false, true)) | any(vec4<bool>(true, true, true, true)), func_3()), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.xyz)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.wxw) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1914f, -515f) + vec3<f32>(global1.x, 151f, global1.x))))))));
    global1 = arg_0;
    let var_0 = global3[_wgslsmith_index_u32(~(~0u), 5u)];
    global0 = vec3<i32>(reverseBits(-_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, global0.x, global0.x, var_0.d), vec4<i32>(2147483647i, 2147483647i, 1i, 30631i))), firstLeadingBit(-(~global0.x)), _wgslsmith_mult_i32(-13963i, -var_0.d) | (i32(-1i) * -2147483647i));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-810f, _wgslsmith_f_op_f32(-673f + global1.x), _wgslsmith_f_op_f32(select(-1000f, 1777f, true)), _wgslsmith_f_op_f32(min(973f, arg_0.x))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(-var_0.e.x), 2350f, _wgslsmith_f_op_f32(f32(-1f) * -446f)))));
    return -440f;
}

fn func_1() -> vec4<f32> {
    global1 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(~1u, 26u)], global2[_wgslsmith_index_u32(~4294967295u, 26u)])))), global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-243f - global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(91514u, u_input.a.x, 0u), 26u)])))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.x * global2[_wgslsmith_index_u32(0u, 26u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<f32>(global2[_wgslsmith_index_u32(u_input.b, 26u)], 1387f, -143f, global1.x), vec3<u32>(u_input.b, u_input.a.x, u_input.b))))), _wgslsmith_dot_vec2_i32(~vec2<i32>(global0.x, 2147483647i), global0.xx) > global0.x)));
    global3 = array<Struct_1, 5>();
    let var_0 = abs(~global0.xy);
    var var_1 = _wgslsmith_f_op_f32(sign(-1675f));
    let var_2 = ~(vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(~vec3<i32>(2147483647i, -2147483647i, 36843i), vec3<i32>(var_0.x, var_0.x, -1i)));
    return _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~u_input.b, 26u)] + 249f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1315f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(17038u, 26u)]) + -398f)), global1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b, 26u)])))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_1()), vec4<f32>(global1.x, -1000f, global1.x, -704f), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1136f, -2070f, global2[_wgslsmith_index_u32(u_input.a.x, 26u)], 1455f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1162f, global2[_wgslsmith_index_u32(u_input.a.x, 26u)], -395f, global1.x)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global1.x, global2[_wgslsmith_index_u32(u_input.a.x, 26u)]))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.x))), 1137f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f + 1084f))))));
    let var_0 = Struct_1(true, select(select(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), false), vec4<bool>(any(vec2<bool>(false, false)), any(vec4<bool>(true, false, false, false)), true, false), false), !vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 26u)] != global1.x, true, global0.x >= global0.x), false), !(true && (global1.x <= _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 26u)]))), _wgslsmith_dot_vec3_i32(~abs(-vec3<i32>(global0.x, -19078i, global0.x)), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global0.x, -22853i, -1i), ~vec3<i32>(global0.x, global0.x, global0.x), vec3<i32>(global0.x, global0.x, 1i)), abs(vec3<i32>(-2147483647i, global0.x, 1i)) << (select(vec3<u32>(56678u, 41061u, 76037u), vec3<u32>(1u, 0u, 4294967295u), true) % vec3<u32>(32u)))), _wgslsmith_f_op_vec2_f32(global1.xw + vec2<f32>(_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_vec4_f32(func_1()).x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(u_input.a.x, 26u)])) * _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 26u)] * global2[_wgslsmith_index_u32(11071u, 26u)])))));
    var var_1 = false;
    var var_2 = true;
    var var_3 = firstTrailingBit(vec4<i32>(-9026i, 2147483647i, -21915i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1408i, min(0i, -1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.x, global0.x, global0.x), _wgslsmith_sub_vec3_i32(vec3<i32>(global0.x, global0.x, global0.x), vec3<i32>(42913i, 1i, var_0.d)), ~vec3<i32>(global0.x, var_0.d, var_0.d)))));
    var var_4 = 2147483647i;
    global1 = vec4<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, select(_wgslsmith_div_u32(u_input.a.x, 53317u), u_input.b | u_input.a.x, true)), 26u)]), _wgslsmith_f_op_f32(abs(1434f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(~u_input.a.x, 26u)]))), _wgslsmith_f_op_f32(select(var_0.e.x, _wgslsmith_f_op_vec4_f32(func_1()).x, true)));
    let var_5 = reverseBits(u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(11447u, 72u), _wgslsmith_sub_vec2_u32(u_input.a, u_input.a)), u_input.a)), min(max(vec4<u32>(u_input.b, 18591u, u_input.a.x, 25836u), vec4<u32>(var_5, 1u, var_5, 34614u)) ^ ~vec4<u32>(4294967295u, var_5, var_5, 1u), vec4<u32>(~var_5, 1u, countOneBits(23054u), ~20167u)) | abs(~vec4<u32>(1u, 1u, 22597u, 0u)), 26256u);
}

