struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(1205u, 4294967295u, 64585u), vec3<u32>(3563u, 19577u, 6374u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(34357u, 10049u, 1u), vec3<u32>(11823u, 7322u, 22057u), vec3<u32>(4294967295u, 44325u, 19701u), vec3<u32>(89180u, 17868u, 102631u), vec3<u32>(1u, 61992u, 4294967295u));

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(1981f, -537f, vec3<u32>(2294u, 96949u, 0u));

var<private> global3: array<Struct_1, 9>;

var<private> global4: Struct_1 = Struct_1(-1256f, -408f, vec3<u32>(91151u, 12479u, 4294967295u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    let var_0 = ~20436u;
    global3 = array<Struct_1, 9>();
    var var_1 = Struct_1(global4.b, arg_0.a, ~vec3<u32>(var_0, _wgslsmith_dot_vec2_u32(firstTrailingBit(global2.c.xy), ~vec2<u32>(var_0, global4.c.x)), ~1u));
    var var_2 = Struct_1(global4.a, _wgslsmith_div_f32(315f, global2.b), vec3<u32>(~arg_0.c.x, ~global4.c.x, 24703u));
    global3 = array<Struct_1, 9>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(select(-1000f, -2189f, false)), _wgslsmith_f_op_f32(arg_0.b * var_2.b), _wgslsmith_f_op_f32(select(arg_0.a, var_1.a, true)), _wgslsmith_f_op_f32(var_2.b + 1565f)))), vec4<f32>(global4.b, _wgslsmith_f_op_f32(sign(global4.b)), global4.a, -1000f))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-213f, -116f, var_2.b, arg_0.b))) - vec4<f32>(-2029f, _wgslsmith_f_op_f32(round(-471f)), _wgslsmith_f_op_f32(var_2.b - 457f), _wgslsmith_f_op_f32(global2.a * -1091f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-591f, var_2.a, -1000f, -267f) - vec4<f32>(var_1.b, global1.b, -250f, 184f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, var_1.b, -788f, global2.b)))))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<i32>) -> bool {
    var var_0 = 288f;
    let var_1 = -2147483647i;
    global4 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, ~select(~_wgslsmith_dot_vec2_u32(vec2<u32>(global1.c.x, 1u), vec2<u32>(global1.c.x, u_input.a)), max(4294967295u, 4294967295u), any(vec2<bool>(false, false)))), 9u)];
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(firstTrailingBit(min(firstTrailingBit(global1.c.x), reverseBits(49171u))), ~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, global2.c.x, 0u), global4.c), global4.c) & 25642u), 9u)];
    var var_3 = arg_0.yw;
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: bool, arg_3: bool) -> Struct_1 {
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(global3[_wgslsmith_index_u32(global4.c.x, 9u)]))), _wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(-arg_1.x, ~21900i, -46520i)), u_input.c));
    let var_1 = Struct_1(_wgslsmith_div_f32(global4.b, 280f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(global1.b)))), arg_0.c);
    let var_2 = vec4<i32>(~_wgslsmith_sub_i32(arg_1.x, 1i) << (abs(u_input.b.x) % 32u), ~u_input.d, arg_1.x, max(-30959i, min(arg_1.x, -15615i)));
    var_0 = true;
    var var_3 = -(~abs(_wgslsmith_dot_vec3_i32(min(var_2.wxx, var_2.xyx), var_2.zyw)));
    return arg_0;
}

fn func_5(arg_0: Struct_1) -> u32 {
    var var_0 = _wgslsmith_mult_vec3_u32(global1.c, ~reverseBits((global4.c & vec3<u32>(50051u, 4294967295u, 78947u)) ^ global0[_wgslsmith_index_u32(firstTrailingBit(22830u), 8u)]));
    global4 = Struct_1(-729f, 122f, _wgslsmith_div_vec3_u32(vec3<u32>(~(~12038u), reverseBits(var_0.x), 47941u), vec3<u32>(4294967295u, global4.c.x, 1u)));
    global0 = array<vec3<u32>, 8>();
    let var_1 = vec3<i32>(-24465i, -6410i, u_input.c.x);
    global2 = Struct_1(-331f, _wgslsmith_f_op_f32(floor(908f)), countOneBits(global0[_wgslsmith_index_u32(0u >> (global2.c.x % 32u), 8u)] << (vec3<u32>(~var_0.x, arg_0.c.x, 0u ^ global2.c.x) % vec3<u32>(32u))));
    return ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a, 81095u), 4294967295u);
}

fn func_1() -> Struct_1 {
    var var_0 = global3[_wgslsmith_index_u32(global1.c.x, 9u)];
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, ~global1.c.x), 9u)];
    var var_2 = _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, ~(~global2.c.x)), vec2<u32>(~var_1.c.x >> (16535u % 32u), ~firstLeadingBit(45022u)));
    var var_3 = all(vec2<bool>(true, false));
    let var_4 = _wgslsmith_mod_vec2_u32(~vec2<u32>(func_5(func_2(global3[_wgslsmith_index_u32(46836u, 9u)], u_input.c.yz, false, true)), 82705u), min(global1.c.yx, reverseBits(global2.c.yz)));
    return func_2(func_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a * global1.a), global1.b), global1.b, _wgslsmith_sub_vec3_u32(global4.c, global2.c >> (global4.c % vec3<u32>(32u)))), countOneBits(firstTrailingBit(u_input.e)), all(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, false))), true), select(u_input.c.yz, vec2<i32>(countOneBits(_wgslsmith_sub_i32(-60568i, -1101i)), u_input.d), !vec2<bool>(any(vec3<bool>(false, false, true)), true)), true && all(vec3<bool>(true, all(vec4<bool>(true, true, true, false)), false)), true || (u_input.c.x < -1i));
}

fn func_6(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.a)) * _wgslsmith_f_op_f32(global2.a * global2.a)), _wgslsmith_f_op_f32(661f * global1.a)), global1.a))));
    let var_1 = vec4<u32>(global4.c.x, func_1().c.x, ~(~_wgslsmith_add_u32(arg_0.c.x, 0u)) >> (global2.c.x % 32u), u_input.b.x);
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_2(func_2(func_1(), u_input.e, true, true), vec2<i32>(arg_1.x, -77034i), false, false).a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(242f)))));
    let var_2 = arg_1.x;
    var var_3 = func_2(func_1(), ~arg_1.wx, false, any(vec3<bool>(true, true, true)));
    return Struct_1(-2765f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)), ~(~global4.c) >> (vec3<u32>(firstTrailingBit(21713u), 22396u & _wgslsmith_mod_u32(global2.c.x, 2573u), select(~8519u, ~54336u, any(vec2<bool>(false, false)))) % vec3<u32>(32u)));
}

fn func_7(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = func_6(arg_0, vec4<i32>(u_input.e.x, u_input.e.x, _wgslsmith_mult_i32(_wgslsmith_add_i32(-1462i, 9160i) << (global1.c.x % 32u), u_input.c.x), -_wgslsmith_mult_i32(u_input.c.x | 969i, abs(u_input.d))), ~global1.c.x);
    global3 = array<Struct_1, 9>();
    global4 = func_2(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.c.x, _wgslsmith_mult_u32(_wgslsmith_sub_u32(global1.c.x, global1.c.x | arg_0.c.x), 41798u)), 9u)], ~u_input.e, true & any(select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, false), any(vec3<bool>(false, true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-508f * arg_0.a))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.a) * _wgslsmith_f_op_f32(select(global4.b, arg_0.b, true)))));
    let var_1 = global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec3_u32(abs(var_0.c), _wgslsmith_mod_vec3_u32(select(vec3<u32>(u_input.b.x, global2.c.x, 44245u), select(global0[_wgslsmith_index_u32(71195u, 8u)], global0[_wgslsmith_index_u32(1u, 8u)], vec3<bool>(false, false, false)), false), _wgslsmith_div_vec3_u32(vec3<u32>(17874u, u_input.b.x, 15345u), ~vec3<u32>(13926u, var_0.c.x, global2.c.x))))), 9u)];
    let var_2 = func_2(arg_0, firstTrailingBit(_wgslsmith_add_vec2_i32(~select(u_input.c.yy, u_input.c.yy, vec2<bool>(false, true)), min(-u_input.e, u_input.e))), !(!any(vec4<bool>(false, true, false, true))), !all(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false))));
    return u_input.c;
}

fn func_8(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> vec3<bool> {
    global4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(1408f - 439f)), _wgslsmith_f_op_f32(-2105f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_1.c.x, func_6(global3[_wgslsmith_index_u32(4294967295u, 9u)], _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(21397i, -2147483647i, -1i, u_input.c.x), vec4<i32>(arg_3.x, u_input.c.x, 0i, 1i)), vec4<i32>(-1i, u_input.c.x, u_input.c.x, arg_3.x) ^ vec4<i32>(u_input.c.x, -3128i, 1i, 36305i)), _wgslsmith_mult_u32(u_input.b.x, 1u)).c.x), 8u)]);
    let var_0 = ~(i32(-1i) * -3565i);
    var var_1 = ~(27108u & global2.c.x);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global4.b))) + -448f)), func_6(func_6(global3[_wgslsmith_index_u32(global1.c.x, 9u)], _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, 0i, 1i, arg_3.x), _wgslsmith_add_vec4_i32(vec4<i32>(arg_3.x, -17599i, 2147483647i, arg_3.x), vec4<i32>(2147483647i, -2147483647i, u_input.d, var_0))), global4.c.x), -vec4<i32>(arg_3.x << (u_input.b.x % 32u), 1i, u_input.c.x, ~u_input.c.x), ~global1.c.x >> (firstLeadingBit(firstTrailingBit(global2.c.x)) % 32u)).a, abs(vec3<u32>(~func_5(arg_1), ~global2.c.x, 0u)));
    var var_3 = _wgslsmith_f_op_f32(-arg_0.x);
    return !select(!select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), vec3<bool>((1u == var_2.c.x) | true, true, false), 18385u <= global2.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.c.yx;
    var var_1 = ~_wgslsmith_sub_u32(abs(1u), var_0.x);
    let var_2 = !func_8(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global1.b, global4.a), 216f, _wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(-global1.a)), vec4<f32>(_wgslsmith_f_op_f32(min(-557f, global4.a)), _wgslsmith_f_op_f32(-global4.b), 320f, global4.a)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.b))), global4.a, vec3<u32>(39301u, reverseBits(global1.c.x), 4578u)), global3[_wgslsmith_index_u32(1u, 9u)], func_7(func_6(func_1(), vec4<i32>(u_input.c.x, u_input.e.x, u_input.e.x, u_input.d) & vec4<i32>(1i, -57846i, 20142i, u_input.d), func_1().c.x)));
    var var_3 = vec2<bool>(!all(select(var_2.xx, var_2.zx, var_2.xx)), !var_2.x);
    var var_4 = 33812i;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_dot_vec3_i32(u_input.c, u_input.c), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, global4.a, 736f, global2.b)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(367f, global1.a, global2.b, global1.b)) - vec4<f32>(-282f, global2.a, global2.a, 375f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global4.a, global1.b, global2.b, global1.b), vec4<f32>(971f, global4.b, -818f, global4.a))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(781f, -529f, global1.a, global2.a))))), select(var_3.x, var_2.x, true))), -(vec4<i32>(u_input.c.x, u_input.e.x, ~u_input.c.x, _wgslsmith_add_i32(-64530i, -13734i)) ^ vec4<i32>(1i, 1i, abs(1i), -u_input.e.x)), ~(~u_input.b.x));
}

