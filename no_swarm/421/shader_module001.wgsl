struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: vec3<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32> = array<u32, 32>(52692u, 0u, 1u, 4294967295u, 37432u, 1u, 1u, 9694u, 0u, 5295u, 101541u, 0u, 46775u, 83508u, 4294967295u, 23021u, 0u, 4294967295u, 0u, 0u, 0u, 0u, 0u, 0u, 4294967295u, 26294u, 4294967295u, 12592u, 1u, 14113u, 1u, 30741u);

var<private> global1: array<i32, 25> = array<i32, 25>(-1i, -26302i, -1i, 39835i, 2147483647i, -7965i, -29868i, i32(-2147483648), 69365i, -16152i, 2147483647i, -1i, i32(-2147483648), 2147483647i, 50526i, 0i, -19003i, 27576i, 0i, -24038i, 0i, -1i, -26210i, -49523i, 0i);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: vec3<i32>) -> f32 {
    var var_0 = select(-arg_2, abs(vec3<i32>(countOneBits(global1[_wgslsmith_index_u32(~u_input.a.x, 25u)]), -countOneBits(global1[_wgslsmith_index_u32(15554u, 25u)]), ~(~global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 32u)], 25u)]))), true);
    let var_1 = Struct_1(vec2<f32>(-719f, _wgslsmith_f_op_f32(-554f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.x)) + _wgslsmith_f_op_f32(trunc(2918f))))), select(var_0.yx, vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], -var_0.x), vec2<bool>(global1[_wgslsmith_index_u32(22187u, 25u)] < -2147483647i, all(vec3<bool>(false, true, false)))) & vec2<i32>(-1i, 1i >> ((4543u >> (u_input.a.x % 32u)) % 32u)), ~vec3<i32>(firstTrailingBit(arg_2.x), arg_2.x, arg_2.x));
    let var_2 = vec4<bool>(4294967295u < ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(17453u, 32u)], 4294967295u), vec3<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], 55524u, 1u))), true, true || all(vec2<bool>(true, true)), all(vec2<bool>(false, all(select(vec2<bool>(true, false), vec2<bool>(false, false), true)))));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -332f);
    let var_4 = arg_0;
    return -2728f;
}

fn func_2(arg_0: i32) -> i32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-336f, -398f, 518f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-612f, -169f, 2095f)))), _wgslsmith_f_op_f32(max(-339f, 590f)), ~(~vec3<i32>(-21237i, arg_0, 42762i)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -276f)))), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -806f));
    var var_1 = ~u_input.a.x;
    return max(global1[_wgslsmith_index_u32(0u, 25u)], -(global1[_wgslsmith_index_u32(firstLeadingBit(abs(4294967295u)), 25u)] & -47355i));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<u32>) -> Struct_1 {
    global1 = array<i32, 25>();
    let var_0 = _wgslsmith_add_vec4_i32(select(min(_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(-5117i, 0i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 32u)], 32u)], 32u)], 25u)], 492i)), -vec4<i32>(19332i, arg_0.c.x, -5434i, -1i)), vec4<i32>(global1[_wgslsmith_index_u32(reverseBits(19501u), 25u)], ~(-10183i), 25271i, global1[_wgslsmith_index_u32(3063u, 25u)] << (u_input.a.x % 32u))), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-7892i, 0i, global1[_wgslsmith_index_u32(u_input.a.x, 25u)], global1[_wgslsmith_index_u32(58932u, 25u)]), vec4<i32>(arg_0.b.x, 0i, -16439i, arg_0.c.x)), vec4<i32>(-85954i, arg_0.c.x, arg_0.b.x, -1i)), abs(vec4<i32>(global1[_wgslsmith_index_u32(59478u, 25u)], 38954i, global1[_wgslsmith_index_u32(4294967295u, 25u)], arg_0.b.x))), (1u <= (global0[_wgslsmith_index_u32(4294967295u, 32u)] << (4294967295u % 32u))) & false), ~vec4<i32>(arg_0.b.x, abs(func_2(global1[_wgslsmith_index_u32(arg_2.x, 25u)])), firstTrailingBit(-1294i & arg_0.c.x), global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(arg_2.x, 66194u), 25u)]));
    var var_1 = any(vec3<bool>(all(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, false), any(vec2<bool>(true, false)))), all(vec2<bool>(true, true)), true));
    var var_2 = vec2<f32>(149f, arg_0.a.x);
    var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-359f)) - _wgslsmith_f_op_f32(-arg_1.x)), 1471f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-773f, 2246f) - _wgslsmith_f_op_f32(960f * arg_1.x)))) + arg_1.xz);
    return Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -137f), _wgslsmith_f_op_f32(-arg_1.x)), vec2<f32>(_wgslsmith_f_op_f32(sign(-811f)), _wgslsmith_f_op_f32(f32(-1f) * -151f))))), _wgslsmith_sub_vec2_i32(select(~vec2<i32>(1i, var_0.x) & -var_0.wz, _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, -1i), var_0.zx), vec2<i32>(global1[_wgslsmith_index_u32(16649u, 25u)], arg_0.c.x)), false), reverseBits(vec2<i32>(min(var_0.x, 0i), var_0.x))), firstTrailingBit(vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, global1[_wgslsmith_index_u32(1u, 25u)], arg_0.b.x), vec3<i32>(2147483647i, 42721i, var_0.x))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_1 {
    global1 = array<i32, 25>();
    var var_0 = func_1(func_1(arg_1, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2212f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)), 1553f, arg_1.a.x), vec3<u32>(0u, _wgslsmith_sub_u32(u_input.a.x, 1u), global0[_wgslsmith_index_u32(~max(10249u, 68022u), 32u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-func_1(arg_1, vec4<f32>(arg_1.a.x, 1000f, -1346f, arg_1.a.x), vec3<u32>(67242u, u_input.a.x, 1u)).a.x), 1f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, arg_1.a.x, 501f), vec3<f32>(-1098f, -2033f, -400f))), -1000f, vec3<i32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(89325u, 32u)], 32u)], 25u)], -18264i, global1[_wgslsmith_index_u32(31324u, 25u)]))), 325f)), abs(vec3<u32>(countOneBits(global0[_wgslsmith_index_u32(~u_input.a.x, 32u)]), ~_wgslsmith_mod_u32(12908u, 4294967295u), 51085u)));
    var var_1 = Struct_1(var_0.a, vec2<i32>(firstLeadingBit(_wgslsmith_mod_i32(~arg_1.b.x, 1i)), abs(1i)), ~(-(arg_1.c & vec3<i32>(10083i, var_0.c.x, arg_1.c.x))));
    var var_2 = arg_1;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(230f)))));
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec3<i32>) -> u32 {
    let var_0 = ~(arg_0.b.x << (13920u % 32u));
    global1 = array<i32, 25>();
    var var_1 = arg_2;
    let var_2 = !select(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), false)), vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(false, false)), firstLeadingBit(28705u) >= ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(55080u, 32u)], 32u)], !select(true, true, true), all(vec2<bool>(true, true))));
    let var_3 = _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_add_u32(~1u, 0u), u_input.a.x ^ 1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(35231u, 32u)], u_input.a.x, 93636u), ~vec3<u32>(18051u, 39723u, 24838u)), _wgslsmith_dot_vec2_u32(~u_input.a, u_input.a)), vec4<u32>(~_wgslsmith_mult_u32(u_input.a.x, 17577u), global0[_wgslsmith_index_u32(u_input.a.x, 32u)], _wgslsmith_mod_u32(~global0[_wgslsmith_index_u32(4294967295u, 32u)], 15917u), ~_wgslsmith_div_u32(u_input.a.x, u_input.a.x))), vec4<u32>(u_input.a.x, 48696u, max(0u, u_input.a.x >> (8535u % 32u)), 4294967295u << ((3828u ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35093u, 32u)], 32u)]) % 32u)) >> (vec4<u32>(1u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(41600u, 32u)], 32u)] << (94860u % 32u), 32u)], 4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(101368u, u_input.a.x, 0u, 45105u), vec4<u32>(95997u, global0[_wgslsmith_index_u32(4294967295u, 32u)], u_input.a.x, 4294967295u)), ~vec4<u32>(137913u, global0[_wgslsmith_index_u32(4334u, 32u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 32u)], 32u)], 32u)], 0u))) % vec4<u32>(32u)));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 25>();
    let var_0 = true;
    global0 = array<u32, 32>();
    let var_1 = vec4<i32>(_wgslsmith_div_i32(firstLeadingBit(-6653i), 10694i) & _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(371i, 9930i)), ~global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~u_input.a.x, 32u)], 25u)]), 23598i, select(global1[_wgslsmith_index_u32(func_5(func_4(!vec4<bool>(var_0, var_0, var_0, var_0), func_1(Struct_1(vec2<f32>(-552f, -630f), vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], 58611i), vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], global1[_wgslsmith_index_u32(0u, 25u)], 9413i)), vec4<f32>(412f, 115f, -705f, 764f), vec3<u32>(1u, u_input.a.x, 1u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1023f, -537f, -826f, 1124f)) - vec4<f32>(-756f, 620f, -982f, 121f)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(903f, -487f) * vec2<f32>(159f, 1293f)), vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 25u)], global1[_wgslsmith_index_u32(0u, 25u)]), vec3<i32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 32u)], 25u)], 0i, 2147483647i)), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(-12103i, 23011i, 1i), vec3<i32>(-4024i, -2147483647i, global1[_wgslsmith_index_u32(0u, 25u)])))), 25u)], -14733i, !var_0), ~(~(-_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(14046u, 25u)], global1[_wgslsmith_index_u32(u_input.a.x, 25u)]))));
    global0 = array<u32, 32>();
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(647f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(743f, -1280f, -1000f)), _wgslsmith_f_op_f32(max(488f, 631f)), var_1.yyw)))), _wgslsmith_f_op_f32(487f - _wgslsmith_div_f32(-860f, _wgslsmith_f_op_f32(f32(-1f) * -714f)))));
    let var_3 = var_2.x;
    var var_4 = firstLeadingBit(vec4<i32>(global1[_wgslsmith_index_u32(42249u, 25u)], 1i, -5170i, _wgslsmith_div_i32(-2147483647i, -42502i))) & -var_1;
    var var_5 = !vec2<bool>(-_wgslsmith_add_i32(0i, var_1.x) > var_1.x, any(!vec4<bool>(true, true, var_0, var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(494f, _wgslsmith_f_op_f32(-var_2.x), var_2.x), ~4294967295u, _wgslsmith_f_op_f32(var_3 - -1407f), firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(func_2(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18464u, 32u)], 32u)], 32u)], 32u)], 25u)]), var_4.x, ~var_1.x), var_4.wzz)), var_1.zxx);
}

