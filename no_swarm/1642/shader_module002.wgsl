struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: i32,
    d: vec4<bool>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<f32, 28> = array<f32, 28>(-132f, 1000f, -1216f, -466f, 186f, -423f, -303f, -1000f, 694f, 491f, -289f, 357f, 1279f, 159f, -1260f, -963f, 745f, 2373f, -512f, -1000f, 155f, -1000f, 504f, 1021f, -1469f, -239f, 809f, -1000f);

var<private> global2: array<Struct_1, 32>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<i32>) -> f32 {
    var var_0 = Struct_1(!select(vec3<bool>(true, false, all(vec4<bool>(false, true, false, true))), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), false), arg_0.zxy, u_input.a, vec4<bool>(!any(vec3<bool>(true, true, false)), ~u_input.b <= 17854u, any(vec3<bool>(true, true, true)), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-220f, -640f, global1[_wgslsmith_index_u32(u_input.b, 28u)], global1[_wgslsmith_index_u32(102853u, 28u)])))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(71175u, 28u)], 624f, global1[_wgslsmith_index_u32(31593u, 28u)], 1171f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-935f, -1065f, global0.x, 590f))))));
    let var_1 = Struct_1(select(var_0.d.xyy, select(var_0.a, !select(vec3<bool>(var_0.d.x, true, var_0.d.x), var_0.d.zyz, true), select(vec3<bool>(true, true, var_0.d.x), var_0.a, vec3<bool>(false, true, false))), vec3<bool>(any(vec3<bool>(var_0.d.x, true, var_0.a.x)), all(var_0.d), true)), _wgslsmith_div_vec3_i32(~firstTrailingBit(firstLeadingBit(arg_0.zxw)), arg_1.yyw), _wgslsmith_dot_vec3_i32(var_0.b, _wgslsmith_sub_vec3_i32(-vec3<i32>(18566i, 0i, arg_0.x), _wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.a, 11149i, arg_1.x), arg_0.wyw | var_0.b, abs(vec3<i32>(arg_1.x, -7450i, 2147483647i))))), select(var_0.d, vec4<bool>(select(var_0.b.x != 0i, all(var_0.d.wy), false || var_0.a.x), true, all(var_0.a), true), vec4<bool>(var_0.d.x, true, true, !(global1[_wgslsmith_index_u32(u_input.b, 28u)] == var_0.e.x))), var_0.e);
    let var_2 = !vec3<bool>(var_1.d.x && true, false, false);
    global0 = var_1.e.zwx;
    var var_3 = all(select(var_1.a, select(select(select(var_0.a, vec3<bool>(false, false, var_0.d.x), var_1.a), !var_0.d.zyy, all(vec3<bool>(false, var_2.x, var_2.x))), !var_0.a, var_2.x), true));
    return -433f;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = u_input.a;
    global2 = array<Struct_1, 32>();
    var var_1 = Struct_1(select(vec3<bool>(false, !(!arg_0.d.x), arg_3.a.x), !(!(!arg_2.a)), true), -(vec3<i32>(arg_0.b.x, arg_2.b.x, arg_0.b.x) | vec3<i32>(30116i, arg_2.c, u_input.a)) & _wgslsmith_mod_vec3_i32(vec3<i32>(1i & u_input.a, u_input.a, arg_2.b.x & arg_0.c), vec3<i32>(-2147483647i, arg_0.b.x, arg_3.c) | arg_0.b), -1i, !(!vec4<bool>(arg_2.d.x | arg_0.d.x, true, arg_0.a.x && false, any(arg_0.d.wy))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2.e.x * arg_3.e.x))), _wgslsmith_f_op_f32(-1749f + _wgslsmith_f_op_f32(trunc(439f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(629f)) * arg_3.e.x) - _wgslsmith_f_op_f32(sign(arg_3.e.x))), _wgslsmith_f_op_f32(abs(arg_3.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -653f)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1827f * _wgslsmith_f_op_f32(-arg_1)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(243f)), _wgslsmith_f_op_f32(626f + 1079f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_3.e.x * arg_3.e.x))))));
    var var_3 = Struct_1(!(!arg_3.d.wzy), countOneBits(_wgslsmith_clamp_vec3_i32(arg_0.b, abs(_wgslsmith_mod_vec3_i32(arg_0.b, var_1.b)), ~(~vec3<i32>(arg_2.c, arg_3.c, -14999i)))), arg_0.b.x, !(!arg_3.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 28u)], -385f, 105f, 906f), vec4<f32>(1127f, -2156f, -496f, arg_1)))))));
    return arg_0.b;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec4<u32> {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.e.x, arg_1.e.x, global0.x)) * arg_0.e.wxy), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(arg_2.e.zzy)) + arg_0.e.wyy)), vec3<f32>(_wgslsmith_f_op_f32(-720f * 457f), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(sign(arg_0.e.x))), -1304f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.e.x, 556f, arg_0.e.x) * arg_2.e.zyy), vec3<f32>(arg_2.e.x, -1358f, arg_3.e.x))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(418f, arg_2.e.x, 716f) + vec3<f32>(arg_1.e.x, arg_2.e.x, arg_1.e.x)))))));
    let var_0 = -_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(_wgslsmith_clamp_i32(-29313i, 0i, 0i), -u_input.a, 1i, arg_3.c)), ~_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_2.b.x, 1i, 0i, arg_3.c), vec4<i32>(-1i, arg_2.b.x, -701i, u_input.a)), vec4<i32>(arg_3.b.x, u_input.a, arg_1.b.x, 0i), _wgslsmith_div_vec4_i32(vec4<i32>(45932i, arg_2.c, arg_3.b.x, -13705i), vec4<i32>(arg_3.b.x, arg_2.b.x, u_input.a, arg_0.c))));
    global2 = array<Struct_1, 32>();
    var var_1 = vec3<i32>(abs(~0i), (-_wgslsmith_div_i32(-42138i, arg_0.b.x) ^ abs(arg_0.c)) ^ u_input.a, _wgslsmith_dot_vec3_i32(select(-(~vec3<i32>(-6517i, arg_1.c, 0i)), _wgslsmith_sub_vec3_i32(arg_1.b, ~vec3<i32>(1i, arg_3.c, u_input.a)), select(!vec3<bool>(true, false, arg_2.a.x), arg_0.d.ywz, select(arg_2.d.xxy, vec3<bool>(arg_3.a.x, true, arg_1.d.x), arg_3.a.x))), min(_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(arg_2.b.x, 252i, -2147483647i)), vec3<i32>(31386i, -1i, u_input.a)), select(_wgslsmith_sub_vec3_i32(arg_1.b, vec3<i32>(-2147483647i, -33775i, 0i)), vec3<i32>(arg_2.b.x, arg_3.c, arg_2.b.x), select(arg_3.a, vec3<bool>(true, true, false), vec3<bool>(arg_2.d.x, arg_2.d.x, arg_3.a.x))))));
    var var_2 = Struct_1(select(vec3<bool>(!(false || arg_3.a.x), _wgslsmith_add_u32(1u, 1u) == u_input.b, (arg_1.d.x | false) && true), !arg_0.a, arg_2.a), _wgslsmith_mod_vec3_i32(func_4(global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_div_u32(u_input.b, u_input.b)), 32u)], _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(min(1u, 104540u), 28u)])), Struct_1(vec3<bool>(arg_0.d.x, arg_0.d.x, arg_3.a.x), firstLeadingBit(vec3<i32>(0i, -863i, arg_2.b.x)), var_1.x, vec4<bool>(false, true, false, true), _wgslsmith_f_op_vec4_f32(-arg_2.e)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(10780u, u_input.b, 68334u), vec3<u32>(u_input.b, u_input.b, u_input.b)), 32u)]), -vec3<i32>(func_4(arg_0, arg_0.e.x, Struct_1(arg_0.d.wwx, arg_1.b, 2147483647i, vec4<bool>(false, true, false, true), arg_0.e), global2[_wgslsmith_index_u32(4294967295u, 32u)]).x, var_1.x, -24600i)), 34107i, !vec4<bool>(arg_1.a.x, true, true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(105555u, 28u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(144187u, 28u)], -1289f))), _wgslsmith_f_op_f32(step(arg_0.e.x, arg_3.e.x)), _wgslsmith_f_op_f32(f32(-1f) * -371f))));
    return min(_wgslsmith_add_vec4_u32(vec4<u32>(~1u, u_input.b | 14804u, u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 79309u), vec2<u32>(u_input.b, 4294967295u))), countOneBits(max(vec4<u32>(4294967295u, 34361u, u_input.b, u_input.b), vec4<u32>(0u, 0u, u_input.b, 96710u)))) ^ ~vec4<u32>(28681u, ~u_input.b, select(1u, 1u, true), ~u_input.b), ~vec4<u32>((20295u | u_input.b) & u_input.b, 1635u, 4294967295u, firstLeadingBit(1u)));
}

fn func_2(arg_0: Struct_1) -> bool {
    let var_0 = select(arg_0.d.xxx, !vec3<bool>(true, all(arg_0.d.yyy), !(!arg_0.a.x)), true);
    let var_1 = arg_0.e;
    let var_2 = true;
    global1 = array<f32, 28>();
    var var_3 = func_5(global2[_wgslsmith_index_u32(u_input.b, 32u)], arg_0, Struct_1(vec3<bool>(!(true & var_2), var_0.x, true), (countOneBits(vec3<i32>(u_input.a, 1i, u_input.a)) | firstLeadingBit(vec3<i32>(0i, -47103i, -1i))) ^ func_4(Struct_1(var_0, vec3<i32>(-1i, u_input.a, u_input.a), -2147483647i, vec4<bool>(var_2, var_2, true, false), arg_0.e), _wgslsmith_f_op_f32(func_3(vec4<i32>(u_input.a, arg_0.b.x, u_input.a, 21221i), vec4<i32>(u_input.a, u_input.a, 2147483647i, 0i))), Struct_1(var_0, vec3<i32>(-23945i, 53217i, -68297i), -14189i, arg_0.d, var_1), global2[_wgslsmith_index_u32(select(0u, 4294967295u, var_2), 32u)]), -17350i, select(arg_0.d, !vec4<bool>(true, var_2, false, arg_0.d.x), any(vec3<bool>(true, var_0.x, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -956f, 493f, global1[_wgslsmith_index_u32(83862u, 28u)]) * vec4<f32>(1008f, 283f, arg_0.e.x, 234f)))), global2[_wgslsmith_index_u32(0u, 32u)]);
    return all(select(var_0.yx, select(var_0.xx, !vec2<bool>(arg_0.a.x, arg_0.d.x), -4629i == -arg_0.c), vec2<bool>(arg_0.d.x, true)));
}

fn func_1(arg_0: u32) -> vec2<i32> {
    global1 = array<f32, 28>();
    global1 = array<f32, 28>();
    var var_0 = vec2<bool>(!func_2(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(min(27834u, 35275u), abs(arg_0)), 32u)]), true);
    var var_1 = min(-vec4<i32>(u_input.a, 2147483647i, reverseBits(-33574i), ~u_input.a), vec4<i32>(min(firstLeadingBit(u_input.a), 36594i), abs(u_input.a), -33167i, u_input.a));
    var var_2 = firstTrailingBit((_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(u_input.b, 1u)), arg_0 | arg_0, arg_0) & 4294967295u) >> (1u % 32u));
    return _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32((var_1.wy >> (vec2<u32>(4294967295u, arg_0) % vec2<u32>(32u))) ^ firstTrailingBit(vec2<i32>(15137i, u_input.a)), vec2<i32>(var_1.x, u_input.a), vec2<i32>(_wgslsmith_div_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-51264i, -57932i), var_1.ww)), ~firstTrailingBit(u_input.a))), _wgslsmith_sub_vec2_i32(max(vec2<i32>(-var_1.x, -1i), abs(~var_1.xz)), -reverseBits(~vec2<i32>(var_1.x, 6780i))));
}

fn func_6(arg_0: bool, arg_1: f32, arg_2: i32) -> StorageBuffer {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(select(~firstLeadingBit(1u), 4294967295u, true), max(19280u, u_input.b)), 28u)];
    let var_1 = 34789u;
    var var_2 = arg_0;
    var var_3 = var_1;
    let var_4 = Struct_1(!(!(!select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, true, true), arg_0))), -_wgslsmith_mult_vec3_i32(vec3<i32>(arg_2, _wgslsmith_mult_i32(u_input.a, u_input.a), 2147483647i), select(vec3<i32>(2147483647i, 6813i, arg_2), func_4(global2[_wgslsmith_index_u32(28149u, 32u)], global1[_wgslsmith_index_u32(63388u, 28u)], Struct_1(vec3<bool>(arg_0, arg_0, true), vec3<i32>(2147483647i, u_input.a, u_input.a), 0i, vec4<bool>(false, arg_0, arg_0, true), vec4<f32>(1370f, arg_1, 784f, global1[_wgslsmith_index_u32(var_1, 28u)])), Struct_1(vec3<bool>(true, true, arg_0), vec3<i32>(-2147483647i, arg_2, 2147483647i), -25435i, vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<f32>(arg_1, 802f, global1[_wgslsmith_index_u32(u_input.b, 28u)], 1635f))), arg_0)), -44516i, !(!(!vec4<bool>(true, arg_0, false, arg_0))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1 - -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - global1[_wgslsmith_index_u32(u_input.b, 28u)])), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1624f, 290f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(var_1, 28u)], arg_1, 242f, -726f) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-966f, -1171f, -481f, arg_1), vec4<f32>(global0.x, global0.x, global1[_wgslsmith_index_u32(65713u, 28u)], -1119f)))))));
    return StorageBuffer(var_4.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-191f * global0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -214f)), _wgslsmith_dot_vec2_i32(func_1(~u_input.b), vec2<i32>(min(u_input.a, 1i), 1i << (u_input.b % 32u))) | _wgslsmith_sub_i32(_wgslsmith_add_i32(-2147483647i, max(u_input.a, -39775i)), _wgslsmith_mult_i32(firstTrailingBit(-1i), ~20655i)));
}

