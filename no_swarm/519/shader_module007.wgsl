struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32> = array<i32, 32>(-1i, i32(-2147483648), -1i, 2147483647i, 0i, 14173i, 2147483647i, 45497i, 1i, 2147483647i, -1i, i32(-2147483648), 1i, 1i, 46539i, -1i, 27521i, 4934i, -15860i, 0i, 2147483647i, 2147483647i, -1i, 0i, i32(-2147483648), 0i, 1i, 0i, 37586i, 1i, -1i, -40i);

var<private> global1: array<u32, 30>;

var<private> global2: array<i32, 26> = array<i32, 26>(15738i, -1i, -29741i, 1i, 40387i, 64356i, i32(-2147483648), -41238i, 9345i, 2147483647i, 53882i, -16332i, 4429i, 1i, -1i, i32(-2147483648), 2147483647i, 0i, 54485i, 19548i, 0i, 1i, 18157i, -3816i, 2147483647i, 2147483647i);

var<private> global3: array<Struct_1, 29>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2742f - _wgslsmith_f_op_f32(floor(-1475f))))), 1000f);
    var var_1 = firstLeadingBit(~_wgslsmith_div_u32(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 3467u), u_input.b), 30u)], u_input.a.x));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(941f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(133f - -574f) * _wgslsmith_f_op_f32(select(-415f, -734f, false)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-124f)), 1000f))));
    var var_3 = !any(vec4<bool>(true, true, true, all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true))));
    var_1 = 44082u;
    return -586f;
}

fn func_2() -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1320f)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x + 221f))))) * var_0.x));
    var var_2 = _wgslsmith_dot_vec3_u32(abs(vec3<u32>(_wgslsmith_mult_u32(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16280u, 30u)], 30u)] ^ u_input.c), global1[_wgslsmith_index_u32(abs(12439u), 30u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, global1[_wgslsmith_index_u32(u_input.b.x, 30u)], global1[_wgslsmith_index_u32(u_input.b.x, 30u)], global1[_wgslsmith_index_u32(50516u, 30u)]), vec4<u32>(4294967295u, 37869u, 1u, 3040u) | vec4<u32>(global1[_wgslsmith_index_u32(1u, 30u)], 19550u, global1[_wgslsmith_index_u32(1u, 30u)], 4294967295u)), 30u)])), min(max(~vec3<u32>(66326u, 12039u, u_input.c), vec3<u32>(u_input.b.x, u_input.c, 0u)), countOneBits(~vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 30u)], 0u, u_input.b.x))) ^ _wgslsmith_mod_vec3_u32(abs(~vec3<u32>(4294967295u, u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 30u)], 30u)], 30u)])), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 12447u, 3472u) << (vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 30u)], 30u)], global1[_wgslsmith_index_u32(4602u, 30u)], 3158u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(4294967295u, 30u)], 19127u), vec3<u32>(global1[_wgslsmith_index_u32(14468u, 30u)], u_input.c, u_input.a.x)), vec3<u32>(4294967295u, 58728u, 79970u) & vec3<u32>(25820u, u_input.a.x, 8506u))));
    var var_3 = vec2<bool>(true, 109302u < global1[_wgslsmith_index_u32(u_input.b.x | _wgslsmith_add_u32(u_input.b.x, 4294967295u), 30u)]);
    global0 = array<i32, 32>();
    return abs(max(~firstTrailingBit(~vec3<u32>(6271u, global1[_wgslsmith_index_u32(38651u, 30u)], global1[_wgslsmith_index_u32(u_input.c, 30u)])), min(~vec3<u32>(1u, 4294967295u, 0u), reverseBits(vec3<u32>(3897u, 0u, u_input.a.x))) << (_wgslsmith_add_vec3_u32(max(vec3<u32>(3245u, 2461u, global1[_wgslsmith_index_u32(u_input.c, 30u)]), vec3<u32>(u_input.a.x, 23005u, u_input.c)), ~vec3<u32>(1u, 42589u, global1[_wgslsmith_index_u32(0u, 30u)])) % vec3<u32>(32u))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: vec3<bool>, arg_3: vec3<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_dot_vec4_i32(~select(vec4<i32>(min(global2[_wgslsmith_index_u32(14134u, 26u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(39202u, 30u)], 30u)], 30u)], 26u)]), -global0[_wgslsmith_index_u32(0u, 32u)], _wgslsmith_div_i32(4016i, -40801i), -global2[_wgslsmith_index_u32(56646u, 26u)]), vec4<i32>(global0[_wgslsmith_index_u32(arg_3.x, 32u)], global0[_wgslsmith_index_u32(0u, 32u)], -2147483647i, -2147483647i) >> (vec4<u32>(1u, 23278u, u_input.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 30u)], 30u)]) % vec4<u32>(32u)), vec4<bool>(true, arg_2.x, true, -654f == arg_1.x)), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(_wgslsmith_sub_i32(0i, -43838i), _wgslsmith_div_i32(global0[_wgslsmith_index_u32(1u, 32u)], global2[_wgslsmith_index_u32(u_input.b.x, 26u)]), -global0[_wgslsmith_index_u32(u_input.c, 32u)], -global0[_wgslsmith_index_u32(1u, 32u)])), firstLeadingBit(vec4<i32>(global0[_wgslsmith_index_u32(arg_3.x, 32u)], global2[_wgslsmith_index_u32(abs(4294967295u), 26u)], ~2147483647i, -1i))));
    global1 = array<u32, 30>();
    global0 = array<i32, 32>();
    let var_1 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - arg_0.x))), arg_1.x), vec2<i32>(~global0[_wgslsmith_index_u32(4294967295u, 32u)], _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(85570u, 32u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 123264u, u_input.a.x), vec3<u32>(u_input.b.x, u_input.a.x, 44310u)), 32u)])), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), ~min(~vec2<u32>(0u, 23633u), ~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(33385u, 30u)], 30u)], 0u))), 30u)], global3[_wgslsmith_index_u32(64538u, 29u)]);
    global2 = array<i32, 26>();
    return Struct_2(Struct_1(vec4<f32>(arg_1.x, arg_0.x, arg_0.x, _wgslsmith_f_op_f32(round(var_1.d.a.x)))), _wgslsmith_div_f32(-586f, arg_0.x), Struct_1(_wgslsmith_f_op_vec4_f32(max(arg_0, var_1.d.a))));
}

fn func_1(arg_0: bool) -> f32 {
    let var_0 = func_4(vec4<f32>(1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -430f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(109f * 1066f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(570f - 1421f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(184f)), _wgslsmith_f_op_f32(min(-1771f, _wgslsmith_f_op_f32(f32(-1f) * -630f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(524f)), _wgslsmith_f_op_f32(182f - -1398f))))), vec3<bool>(true, !(!(!arg_0)), !(true & arg_0)), _wgslsmith_mult_vec3_u32(func_2(), vec3<u32>(firstTrailingBit(global1[_wgslsmith_index_u32(u_input.c, 30u)]), ~(global1[_wgslsmith_index_u32(28296u, 30u)] & 1u), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(4294967295u, global1[_wgslsmith_index_u32(4294967295u, 30u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(92945u, global1[_wgslsmith_index_u32(4294967295u, 30u)], 35888u), vec3<u32>(0u, u_input.b.x, 26573u))), 30u)])));
    global0 = array<i32, 32>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.a.x) + -223f);
    var var_2 = global0[_wgslsmith_index_u32(0u, 32u)] >= global0[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, select(1u, 4294967295u, arg_0)), 30u)]), 32u)];
    global1 = array<u32, 30>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1000f)))));
}

fn func_5(arg_0: Struct_2) -> bool {
    let var_0 = -25078i;
    let var_1 = vec4<f32>(898f, _wgslsmith_f_op_f32(func_1(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)))), 1000f, _wgslsmith_f_op_f32(func_1(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)))))));
    global2 = array<i32, 26>();
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1928f * arg_0.a.a.x), -1000f)), var_1.wy);
    global0 = array<i32, 32>();
    return all(!vec4<bool>(any(vec4<bool>(true, true, true, false)) & all(vec4<bool>(true, false, false, true)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(u_input.a.x, 30u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 30u)], 30u)], 30u)]), 30u)] == ~56893u, true, all(vec3<bool>(true, false, false)) | all(vec3<bool>(false, false, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(((vec4<u32>(u_input.b.x, 1u, global1[_wgslsmith_index_u32(u_input.b.x, 30u)], u_input.b.x) ^ vec4<u32>(31288u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 30u)], 30u)], 30u)], 4294967295u, u_input.c)) ^ vec4<u32>(u_input.a.x, 1u, u_input.b.x, 25946u)) ^ select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 1u, 63961u), vec4<u32>(global1[_wgslsmith_index_u32(u_input.c, 30u)], 4294967295u, 1u, 36661u)), vec4<u32>(45500u, 39616u, 13081u, 8285u) ^ vec4<u32>(u_input.a.x, global1[_wgslsmith_index_u32(u_input.b.x, 30u)], 1u, u_input.b.x), vec4<bool>(true, true, true, true))));
    global2 = array<i32, 26>();
    var var_1 = func_5(Struct_2(global3[_wgslsmith_index_u32(~var_0.x, 29u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(101f - 340f)) * _wgslsmith_f_op_f32(func_1(true))), func_4(vec4<f32>(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(1441f - 493f), -1547f, _wgslsmith_f_op_f32(min(-1498f, -1000f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1068f, -441f)))), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false)), min(vec3<u32>(u_input.b.x, 4294967295u, global1[_wgslsmith_index_u32(u_input.b.x, 30u)]), ~vec3<u32>(var_0.x, var_0.x, u_input.a.x))).a));
    global0 = array<i32, 32>();
    var var_2 = Struct_3(995f, -((vec2<i32>(global0[_wgslsmith_index_u32(38398u, 32u)], 1i) << (u_input.b % vec2<u32>(32u))) & -vec2<i32>(2147483647i, 701i)) << (~abs(u_input.b) % vec2<u32>(32u)), 17670u, func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1010f, -1215f, -1045f, -1380f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(814f, -645f, 728f, -1000f) + vec4<f32>(144f, 1420f, 312f, 504f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-167f, -2317f, -2317f))), select(vec3<bool>(true, true, var_0.x <= 79573u), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false))), select(any(vec4<bool>(false, true, false, false)), true, 0u < var_0.x)), vec3<u32>(abs(39391u), ~var_0.x, ~(~4294967295u))).c);
    let var_3 = func_4(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a + var_2.d.a.x) * var_2.a))), _wgslsmith_f_op_f32(var_2.a - var_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -432f))), var_2.d.a.x), _wgslsmith_f_op_vec3_f32(var_2.d.a.wxx - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(679f, _wgslsmith_f_op_f32(min(var_2.d.a.x, 894f)), _wgslsmith_f_op_f32(-var_2.a))))), vec3<bool>(true, true, all(vec3<bool>(all(vec3<bool>(false, true, true)), all(vec3<bool>(true, true, true)), all(vec2<bool>(false, true))))), func_2() >> (var_0.xxy % vec3<u32>(32u))).a;
    global2 = array<i32, 26>();
    let var_4 = all(vec3<bool>(true, true, true));
    global0 = array<i32, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.x, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.a.x, _wgslsmith_f_op_f32(step(157f, _wgslsmith_f_op_f32(-var_3.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(135f * var_2.a)), 600f), var_3.a, !var_4)), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(global0[_wgslsmith_index_u32(11283u, 32u)], 26820i, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.x, 30u)], 32u)], -1i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 32u)], global0[_wgslsmith_index_u32(53564u, 32u)], global2[_wgslsmith_index_u32(67947u, 26u)], var_2.b.x) & vec4<i32>(-1i, -65702i, global0[_wgslsmith_index_u32(var_2.c, 32u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.x, 30u)], 30u)], 26u)])), vec4<i32>(-1i, _wgslsmith_sub_i32(-1i, -1i), _wgslsmith_dot_vec2_i32(var_2.b, vec2<i32>(global2[_wgslsmith_index_u32(8853u, 26u)], global2[_wgslsmith_index_u32(28653u, 26u)])), _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(u_input.c, 32u)], 1i))), select(_wgslsmith_add_vec4_i32(min(vec4<i32>(-2147483647i, var_2.b.x, var_2.b.x, -22906i), vec4<i32>(46376i, global0[_wgslsmith_index_u32(4294967295u, 32u)], 0i, var_2.b.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 26u)], global0[_wgslsmith_index_u32(var_0.x, 32u)], global0[_wgslsmith_index_u32(13160u, 32u)], -18730i), vec4<i32>(-31767i, global0[_wgslsmith_index_u32(var_2.c, 32u)], global2[_wgslsmith_index_u32(var_0.x, 26u)], var_2.b.x), vec4<i32>(1245i, global0[_wgslsmith_index_u32(1u, 32u)], global2[_wgslsmith_index_u32(34553u, 26u)], -55051i))), min(select(vec4<i32>(var_2.b.x, var_2.b.x, -1i, global2[_wgslsmith_index_u32(var_0.x, 26u)]), vec4<i32>(var_2.b.x, global2[_wgslsmith_index_u32(0u, 26u)], var_2.b.x, 2147483647i), vec4<bool>(true, true, true, true)), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 2147483647i, -18665i, 44014i), vec4<i32>(var_2.b.x, 2147483647i, global2[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(1u, 32u)]))), select(select(vec4<bool>(var_4, var_4, var_4, var_4), vec4<bool>(var_4, var_4, true, false), var_4), vec4<bool>(var_4, var_4, false, var_4), !var_4))));
}

