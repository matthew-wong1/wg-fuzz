struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<bool, 32>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    var var_0 = true;
    var var_1 = select(u_input.d.xyz, _wgslsmith_clamp_vec3_i32(u_input.d.xyz, min(firstTrailingBit(~global0.b.a), global0.b.a), global0.b.a << (~_wgslsmith_mult_vec3_u32(global0.b.c.xzx, vec3<u32>(0u, global0.b.c.x, 4294967295u)) % vec3<u32>(32u))), any(select(!vec3<bool>(global1[_wgslsmith_index_u32(global0.b.c.x, 32u)], false, arg_0.x), !(!vec3<bool>(arg_0.x, global1[_wgslsmith_index_u32(0u, 32u)], global1[_wgslsmith_index_u32(u_input.b.x, 32u)])), false)));
    var var_2 = _wgslsmith_mult_i32(39687i, _wgslsmith_add_i32(countOneBits(max(var_1.x, u_input.a)), reverseBits(1i))) & -_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 34226i), ~global0.b.a.yz);
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(-global0.a), global0.b);
    var_2 = _wgslsmith_mult_i32(~global0.b.a.x, 0i);
    return global0.a.x;
}

fn func_2() -> Struct_3 {
    let var_0 = abs(-(~_wgslsmith_mult_i32(global0.b.b, u_input.c))) << (0u % 32u);
    global0 = Struct_2(vec4<f32>(global0.a.x, 1258f, global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1538f - _wgslsmith_f_op_f32(-global0.a.x)))), global0.b);
    var var_1 = _wgslsmith_add_u32(u_input.b.x >> (121945u % 32u), global0.b.c.x << (_wgslsmith_dot_vec4_u32(select(global0.b.c, vec4<u32>(global0.b.c.x, 4294967295u, 18939u, 0u), vec4<bool>(false, true, global1[_wgslsmith_index_u32(global0.b.c.x, 32u)], true)) | vec4<u32>(global0.b.c.x, global0.b.c.x, global0.b.c.x, 59221u), u_input.b) % 32u));
    global1 = array<bool, 32>();
    global1 = array<bool, 32>();
    return Struct_3(vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(func_3(vec2<bool>(global0.a.x >= 109f, global1[_wgslsmith_index_u32(~u_input.b.x, 32u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.a.x + -122f))) + _wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(global0.a.x + -691f)))), select(select(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 32u)], true, true, global1[_wgslsmith_index_u32(84081u, 32u)]), select(vec4<bool>(false, global1[_wgslsmith_index_u32(global0.b.c.x, 32u)], global1[_wgslsmith_index_u32(global0.b.c.x, 32u)], global1[_wgslsmith_index_u32(u_input.b.x, 32u)]), vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.b.x, 32u)], true), true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 32u)], global1[_wgslsmith_index_u32(global0.b.c.x, 32u)], true, global1[_wgslsmith_index_u32(4294967295u, 32u)])), !select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 32u)], global1[_wgslsmith_index_u32(global0.b.c.x, 32u)], global1[_wgslsmith_index_u32(20634u, 32u)], global1[_wgslsmith_index_u32(0u, 32u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(44001u, 32u)], global1[_wgslsmith_index_u32(69280u, 32u)], true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 32u)], global1[_wgslsmith_index_u32(58645u, 32u)], false, global1[_wgslsmith_index_u32(u_input.b.x, 32u)])), global1[_wgslsmith_index_u32(min(611u, 2805u), 32u)]), select(select(select(vec4<bool>(global1[_wgslsmith_index_u32(16237u, 32u)], global1[_wgslsmith_index_u32(global0.b.c.x, 32u)], false, false), vec4<bool>(global1[_wgslsmith_index_u32(0u, 32u)], global1[_wgslsmith_index_u32(39362u, 32u)], global1[_wgslsmith_index_u32(u_input.b.x, 32u)], true), true), !vec4<bool>(global1[_wgslsmith_index_u32(0u, 32u)], true, true, global1[_wgslsmith_index_u32(global0.b.c.x, 32u)]), false), !select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 32u)], false, true, false), vec4<bool>(true, false, global1[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(global0.b.c.x, 32u)]), global1[_wgslsmith_index_u32(u_input.b.x, 32u)]), u_input.a < _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, global0.b.a.x), u_input.d.xy)), select(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.b.x, 32u)], true), vec4<bool>(global1[_wgslsmith_index_u32(23588u, 32u)], global1[_wgslsmith_index_u32(u_input.b.x, 32u)], global1[_wgslsmith_index_u32(0u, 32u)], global1[_wgslsmith_index_u32(21153u, 32u)])), !(!vec4<bool>(true, true, global1[_wgslsmith_index_u32(1u, 32u)], true)), select(!vec4<bool>(true, global1[_wgslsmith_index_u32(55130u, 32u)], global1[_wgslsmith_index_u32(global0.b.c.x, 32u)], global1[_wgslsmith_index_u32(0u, 32u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 32u)], false, false, global1[_wgslsmith_index_u32(global0.b.c.x, 32u)]), vec4<bool>(true, false, true, global1[_wgslsmith_index_u32(51908u, 32u)]), vec4<bool>(global1[_wgslsmith_index_u32(global0.b.c.x, 32u)], true, global1[_wgslsmith_index_u32(global0.b.c.x, 32u)], global1[_wgslsmith_index_u32(global0.b.c.x, 32u)])), !vec4<bool>(true, false, global1[_wgslsmith_index_u32(4294967295u, 32u)], global1[_wgslsmith_index_u32(u_input.b.x, 32u)])))), ~vec4<u32>(abs(118585u), countOneBits(u_input.b.x), 4294967295u, ~(u_input.b.x | 42882u)));
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> Struct_1 {
    let var_0 = func_2().b;
    global0 = Struct_2(vec4<f32>(arg_1.a.x, global0.a.x, _wgslsmith_f_op_f32(func_3(arg_1.b.yz)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(318f)), global0.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.a.x, 1019f))))), global0.b);
    let var_1 = global0.b;
    var var_2 = arg_1;
    let var_3 = func_2();
    return global0.b;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_2 {
    var var_0 = ~_wgslsmith_clamp_vec2_u32(~(~arg_2.c.wz), vec2<u32>(_wgslsmith_mult_u32(arg_1.c.x, 1u), _wgslsmith_mult_u32(global0.b.c.x, u_input.b.x)), arg_2.c.xw) & (arg_1.c.xy | _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(0u, 0u, 22493u, 4294967295u)), u_input.b.x), _wgslsmith_mod_vec2_u32(~vec2<u32>(arg_1.c.x, 18750u), ~arg_1.c.yx)));
    var var_1 = global0.a.zzw;
    let var_2 = func_2();
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_2.a))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-882f, arg_3.x, 892f), vec3<f32>(var_2.a.x, 231f, var_1.x)), _wgslsmith_f_op_vec3_f32(trunc(var_2.a)), !vec3<bool>(global1[_wgslsmith_index_u32(global0.b.c.x, 32u)], false, arg_0))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global0.a.zzy)), _wgslsmith_f_op_vec3_f32(var_2.a - vec3<f32>(var_1.x, global0.a.x, global0.a.x))) - _wgslsmith_div_vec3_f32(global0.a.yyy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.x, var_1.x, 1810f)))))), vec4<bool>(false && (true & func_2().b.x), arg_0, true, select(!(!global1[_wgslsmith_index_u32(1u, 32u)]), any(!var_2.b), global1[_wgslsmith_index_u32(global0.b.c.x, 32u)])), vec4<u32>(_wgslsmith_sub_u32(84318u, _wgslsmith_add_u32(global0.b.c.x, ~61188u)), arg_1.c.x | global0.b.c.x, ~global0.b.c.x, 1u));
    let var_4 = ~(~u_input.b.x);
    return Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global0.a, _wgslsmith_f_op_vec4_f32(-global0.a)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a))), Struct_1(vec3<i32>((i32(-1i) * -36311i) ^ global0.b.b, 0i, _wgslsmith_div_i32(24297i ^ u_input.d.x, func_4(true, Struct_3(global0.a.yyz, vec4<bool>(global1[_wgslsmith_index_u32(arg_1.c.x, 32u)], var_2.b.x, var_2.b.x, true), var_3.c)).d.x)), max(~_wgslsmith_dot_vec3_i32(global0.b.a, vec3<i32>(arg_1.d.x, -1i, -41816i)), _wgslsmith_mult_i32(u_input.d.x, i32(-1i) * -56735i)), min(vec4<u32>(_wgslsmith_mod_u32(21000u, u_input.b.x), 1u, ~1u, 0u), _wgslsmith_mod_vec4_u32(arg_2.c, var_2.c)), func_4(true, func_2()).d << (vec3<u32>(~var_2.c.x, 0u, 1u) % vec3<u32>(32u))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: vec4<u32>) -> Struct_3 {
    global0 = func_5(false, func_4(!(!global1[_wgslsmith_index_u32(4294967295u, 32u)]), func_2()), func_4(global1[_wgslsmith_index_u32(18701u << (func_4(false, Struct_3(global0.a.yzz, vec4<bool>(global1[_wgslsmith_index_u32(arg_0.x, 32u)], false, global1[_wgslsmith_index_u32(4294967295u, 32u)], global1[_wgslsmith_index_u32(arg_0.x, 32u)]), arg_2)).c.x % 32u), 32u)] || !any(vec2<bool>(false, false)), func_2()), _wgslsmith_f_op_vec2_f32(global0.a.xx + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a.zx)), vec2<f32>(_wgslsmith_f_op_f32(1000f - -422f), -211f), vec2<bool>(false, global1[_wgslsmith_index_u32(~4294967295u, 32u)])))));
    global0 = func_5(true, Struct_1(-func_5(global1[_wgslsmith_index_u32(13999u, 32u)], func_4(true, Struct_3(global0.a.wxy, vec4<bool>(true, false, true, true), vec4<u32>(47637u, 28449u, 0u, arg_1.x))), global0.b, global0.a.yz).b.d, 19079i, func_4(!global1[_wgslsmith_index_u32(reverseBits(1u), 32u)], func_2()).c, vec3<i32>(2147483647i, i32(-1i) * -25660i, u_input.a)), Struct_1(~countOneBits(-global0.b.d), _wgslsmith_sub_i32(-28540i ^ u_input.a, -22091i) ^ 2147483647i, _wgslsmith_mod_vec4_u32(vec4<u32>(0u, ~u_input.b.x, 91122u, 8620u), _wgslsmith_div_vec4_u32(select(vec4<u32>(arg_0.x, 1u, 4294967295u, 25783u), global0.b.c, vec4<bool>(global1[_wgslsmith_index_u32(arg_2.x, 32u)], true, global1[_wgslsmith_index_u32(arg_1.x, 32u)], true)), vec4<u32>(u_input.b.x, 0u, 0u, 28796u))), ~(~global0.b.d)), vec2<f32>(1f, 1f));
    let var_0 = global1[_wgslsmith_index_u32(12314u, 32u)];
    let var_1 = vec2<f32>(_wgslsmith_div_f32(630f, -1000f), 740f);
    return Struct_3(func_2().a, !(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, global1[_wgslsmith_index_u32(4294967295u, 32u)], global1[_wgslsmith_index_u32(u_input.b.x, 32u)]), -977f < global0.a.x)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~arg_1.x, min(4294967295u, 0u), _wgslsmith_dot_vec2_u32(u_input.b.zz, global0.b.c.xw)), ~arg_2.wyz >> (_wgslsmith_mult_vec3_u32(arg_0, arg_2.xyw) % vec3<u32>(32u))), _wgslsmith_clamp_u32(reverseBits(~1u), 5137u, func_5(!global1[_wgslsmith_index_u32(arg_2.x, 32u)], Struct_1(u_input.d.xwy, global0.b.b, vec4<u32>(25210u, global0.b.c.x, 12395u, 99364u), global0.b.d), global0.b, _wgslsmith_f_op_vec2_f32(-var_1)).b.c.x), 65532u, 4294967295u));
}

fn func_6(arg_0: bool, arg_1: Struct_3, arg_2: Struct_2, arg_3: bool) -> Struct_1 {
    let var_0 = func_1(vec3<u32>(~(~13850u), ~1u & ~func_4(arg_3, Struct_3(arg_2.a.xzy, vec4<bool>(arg_3, true, false, arg_1.b.x), arg_1.c)).c.x, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(20295u, arg_2.b.c.x, arg_2.b.c.x, global0.b.c.x), global0.b.c), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, arg_1.c.x, 4294967295u, u_input.b.x), u_input.b)), vec4<u32>(~32971u, max(arg_2.b.c.x, 70587u), func_4(arg_0, Struct_3(arg_2.a.wyz, arg_1.b, vec4<u32>(77114u, arg_2.b.c.x, 4294967295u, u_input.b.x))).c.x, ~52460u))), select(arg_2.b.c, ~(~u_input.b), !(!(!arg_1.b))), ~((arg_2.b.c << ((vec4<u32>(arg_1.c.x, global0.b.c.x, 1u, 1u) & vec4<u32>(0u, arg_2.b.c.x, 65872u, global0.b.c.x)) % vec4<u32>(32u))) >> (u_input.b % vec4<u32>(32u))));
    let var_1 = Struct_1(firstLeadingBit(-global0.b.a), 2147483647i, arg_2.b.c & vec4<u32>(0u, ~(~arg_1.c.x), 6389u, 1u), arg_2.b.d);
    let var_2 = Struct_1(~(~vec3<i32>(0i, _wgslsmith_add_i32(1i, 28624i), u_input.d.x)), ~_wgslsmith_mod_i32(-(i32(-1i) * -27518i), arg_2.b.b), ~arg_1.c, _wgslsmith_mod_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(-1i, var_1.a.x, arg_2.b.a.x) & arg_2.b.d, -vec3<i32>(var_1.a.x, 1i, arg_2.b.b)), countOneBits(~vec3<i32>(var_1.a.x, var_1.a.x, arg_2.b.b) << ((u_input.b.zwy << (vec3<u32>(var_0.c.x, arg_1.c.x, var_0.c.x) % vec3<u32>(32u))) % vec3<u32>(32u)))));
    global1 = array<bool, 32>();
    var var_3 = var_2;
    return func_4(true, arg_1);
}

fn func_7(arg_0: u32, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_f32(floor(global0.a.x));
    let var_1 = vec3<i32>(-1i ^ _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(u_input.d.yzy, vec3<i32>(arg_1.d.x, u_input.a, arg_1.b)) ^ _wgslsmith_div_i32(2147483647i, global0.b.b), _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, 23375i, 1i), func_4(global1[_wgslsmith_index_u32(abs(u_input.b.x), 32u)], func_2()).d.x), u_input.c, firstTrailingBit(max(~1i, (global0.b.d.x & -11648i) << (global0.b.c.x % 32u))));
    global0 = Struct_2(global0.a, global0.b);
    var var_2 = Struct_2(global0.a, Struct_1(vec3<i32>(u_input.d.x, _wgslsmith_div_i32(u_input.a, ~var_1.x), _wgslsmith_add_i32(u_input.a, ~(-9037i))), arg_1.b << (func_6(true, func_1(vec3<u32>(arg_1.c.x, global0.b.c.x, arg_0), global0.b.c, u_input.b), Struct_2(global0.a, arg_1), true).c.x % 32u), ~(~u_input.b), vec3<i32>(~u_input.a, global0.b.d.x, -2147483647i)));
    var var_3 = global1[_wgslsmith_index_u32(~78932u, 32u)];
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(-2147483647i, global0.b.b);
    let var_1 = !func_7(4294967295u, func_6(true, func_1(global0.b.c.zxy, global0.b.c, ~u_input.b), Struct_2(_wgslsmith_f_op_vec4_f32(-global0.a), Struct_1(u_input.d.yww, -2147483647i, u_input.b, vec3<i32>(39722i, 2147483647i, u_input.c))), global1[_wgslsmith_index_u32(u_input.b.x ^ func_4(global1[_wgslsmith_index_u32(57057u, 32u)], Struct_3(vec3<f32>(-233f, global0.a.x, global0.a.x), vec4<bool>(true, false, true, true), vec4<u32>(u_input.b.x, 17248u, global0.b.c.x, u_input.b.x))).c.x, 32u)]));
    var var_2 = ~_wgslsmith_sub_vec4_u32(u_input.b ^ (~global0.b.c ^ _wgslsmith_mod_vec4_u32(vec4<u32>(global0.b.c.x, u_input.b.x, 1u, global0.b.c.x), u_input.b)), ~vec4<u32>(global0.b.c.x, global0.b.c.x >> (u_input.b.x % 32u), global0.b.c.x, 4294967295u));
    var var_3 = firstLeadingBit(reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, func_6(var_1, Struct_3(global0.a.www, vec4<bool>(true, var_1, global1[_wgslsmith_index_u32(1u, 32u)], true), vec4<u32>(u_input.b.x, global0.b.c.x, var_2.x, 1u)), Struct_2(vec4<f32>(global0.a.x, global0.a.x, global0.a.x, -1327f), global0.b), var_1).a.x), vec2<i32>(-21791i, ~7289i))));
    var var_4 = vec4<f32>(-211f, -775f, _wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(145f, 248f))))), global0.a.x);
    var var_5 = func_5(false, func_6(global1[_wgslsmith_index_u32(~abs(global0.b.c.x), 32u)], func_1(reverseBits(vec3<u32>(0u, global0.b.c.x, 1u)), ~(~vec4<u32>(u_input.b.x, var_2.x, u_input.b.x, u_input.b.x)), vec4<u32>(abs(var_2.x), var_2.x, ~var_2.x, _wgslsmith_clamp_u32(var_2.x, var_2.x, 1u))), func_5(false, global0.b, func_4(true, Struct_3(global0.a.zxz, vec4<bool>(false, var_1, false, true), vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 4294967295u))), vec2<f32>(638f, var_4.x)), func_2().b.x), global0.b, global0.a.yz);
    var_5 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-364f, global0.a.x, var_4.x, 1802f))), Struct_1(var_5.b.a, ~(~var_5.b.a.x & 21649i), func_6(func_2().b.x, Struct_3(vec3<f32>(global0.a.x, 1226f, global0.a.x), select(vec4<bool>(true, false, true, true), vec4<bool>(global1[_wgslsmith_index_u32(global0.b.c.x, 32u)], global1[_wgslsmith_index_u32(4294967295u, 32u)], false, true), false), vec4<u32>(14944u, u_input.b.x, 30967u, var_2.x) ^ vec4<u32>(global0.b.c.x, var_2.x, u_input.b.x, var_5.b.c.x)), func_5(var_2.x != 1u, func_5(var_1, global0.b, global0.b, vec2<f32>(var_4.x, 651f)).b, global0.b, var_4.zw), !var_1).c, _wgslsmith_sub_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, u_input.c, 68738i), global0.b.d), var_5.b.a)));
    var var_6 = Struct_2(var_5.a, var_5.b);
    var_3 = ~_wgslsmith_mod_vec2_i32(~var_6.b.a.yx & _wgslsmith_mod_vec2_i32(u_input.d.xz, vec2<i32>(var_3.x, 31942i)), -min(vec2<i32>(u_input.d.x, var_5.b.b), vec2<i32>(-11745i, var_5.b.b))) << (func_4(var_1, Struct_3(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-651f, -594f, var_5.a.x) + vec3<f32>(var_6.a.x, var_5.a.x, -1503f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1350f, var_5.a.x, var_4.x))))), !(!vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(u_input.b.x, 32u)])), ~u_input.b)).c.xx % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-global0.a.x), var_4.x, _wgslsmith_f_op_f32(select(-1127f, var_4.x, var_1)), var_6.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_6.a) + var_6.a))), 13598u);
}

