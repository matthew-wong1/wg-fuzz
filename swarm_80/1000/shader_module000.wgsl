struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: u32,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: i32,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17>;

var<private> global1: vec2<i32> = vec2<i32>(17255i, 0i);

var<private> global2: vec2<f32>;

var<private> global3: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(vec2<f32>(-400f, -1000f), vec2<u32>(1u, 14677u), Struct_1(true), Struct_1(true)), Struct_2(vec2<f32>(959f, -449f), vec2<u32>(0u, 0u), Struct_1(false), Struct_1(true)), Struct_2(vec2<f32>(578f, -652f), vec2<u32>(14696u, 51454u), Struct_1(false), Struct_1(true)), Struct_2(vec2<f32>(-2750f, -535f), vec2<u32>(0u, 64218u), Struct_1(false), Struct_1(true)), Struct_2(vec2<f32>(-2211f, 861f), vec2<u32>(7445u, 73136u), Struct_1(true), Struct_1(true)), Struct_2(vec2<f32>(-1549f, 1028f), vec2<u32>(1u, 0u), Struct_1(false), Struct_1(false)));

var<private> global4: array<vec3<f32>, 30>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: u32) -> u32 {
    global2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(arg_0.a, arg_2.b.a)));
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-951f, 386f), _wgslsmith_f_op_vec2_f32(arg_0.a * arg_2.b.a))), arg_2.b.a, vec2<bool>(false, true))), ~vec2<u32>(19080u, ~_wgslsmith_mult_u32(arg_3, 4294967295u)), arg_0.d, Struct_1(true));
    global3 = array<Struct_2, 6>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.d.wzx * arg_2.d.yyy)));
    var var_2 = 1163f;
    return ~_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_3, 1u, 12510u, _wgslsmith_div_u32(u_input.a.x, 4294967295u)), u_input.d);
}

fn func_3(arg_0: u32, arg_1: vec2<bool>) -> vec2<f32> {
    var var_0 = ~u_input.a ^ (vec3<u32>(abs(func_2(global3[_wgslsmith_index_u32(4294967295u, 6u)], vec2<i32>(0i, -2147483647i), Struct_3(global2.x, Struct_2(vec2<f32>(1011f, -1043f), vec2<u32>(45163u, arg_0), Struct_1(arg_1.x), Struct_1(arg_1.x)), 0u, vec4<f32>(-487f, -1055f, global2.x, global2.x), Struct_1(arg_1.x)), arg_0)), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(5994u, 0u, arg_0)), _wgslsmith_sub_vec3_u32(u_input.d.xxx, vec3<u32>(1u, 23675u, arg_0))), ~1u) >> (firstLeadingBit(u_input.d.xxy) % vec3<u32>(32u)));
    var var_1 = func_2(Struct_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(max(global2.x, global2.x)), _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-982f, -712f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1095f, -1505f))))), arg_1.x)), abs(_wgslsmith_div_vec2_u32(var_0.zx, u_input.d.zx)), Struct_1(false | any(vec4<bool>(arg_1.x, arg_1.x, false, false))), Struct_1(_wgslsmith_f_op_f32(floor(global2.x)) >= _wgslsmith_f_op_f32(global2.x - global2.x))), _wgslsmith_clamp_vec2_i32(-(~countOneBits(vec2<i32>(4783i, -2147483647i))), vec2<i32>(global0[_wgslsmith_index_u32(21009u, 17u)], -796i >> (~u_input.a.x % 32u)), _wgslsmith_div_vec2_i32(select(~vec2<i32>(0i, -1i), -vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], 0i), select(vec2<bool>(true, arg_1.x), arg_1, false)), ~vec2<i32>(global1.x, global1.x))), Struct_3(_wgslsmith_f_op_f32(-global2.x), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1930f, 837f))), _wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, 75622u), vec2<u32>(36664u, arg_0)), Struct_1(true), Struct_1(false)), arg_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global2.x, global2.x), -1000f, _wgslsmith_div_f32(global2.x, -198f), _wgslsmith_div_f32(global2.x, global2.x))), Struct_1(arg_1.x)), u_input.b);
    let var_2 = Struct_3(1040f, global3[_wgslsmith_index_u32(reverseBits(abs(max(u_input.c, 37904u) & (u_input.c >> (4294967295u % 32u)))), 6u)], select(arg_0, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.a.x, 13657u, 1u), u_input.d), all(select(vec3<bool>(arg_1.x, false, arg_1.x), vec3<bool>(arg_1.x, false, false), true))) << (_wgslsmith_mod_u32(arg_0, 4294967295u) % 32u), vec4<f32>(global2.x, _wgslsmith_f_op_f32(trunc(global2.x)), global2.x, _wgslsmith_f_op_f32(select(-1145f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(683f - global2.x) + -1000f), all(!vec3<bool>(arg_1.x, true, arg_1.x))))), Struct_1(all(vec3<bool>(all(vec3<bool>(false, arg_1.x, arg_1.x)), any(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true)), all(vec4<bool>(true, arg_1.x, arg_1.x, true))))));
    return var_2.d.yx;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<f32>) -> Struct_2 {
    var var_0 = Struct_5(vec3<i32>(global0[_wgslsmith_index_u32(0u, 17u)] | -25685i, min(_wgslsmith_clamp_i32(3355i, global1.x, 0i), ~(global0[_wgslsmith_index_u32(1u, 17u)] & global1.x)), abs(-11975i) >> (~u_input.a.x % 32u)));
    var var_1 = _wgslsmith_f_op_f32(step(-1455f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.x)))));
    let var_2 = true;
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_1 * _wgslsmith_f_op_vec2_f32(func_3(func_2(global3[_wgslsmith_index_u32(0u, 6u)], var_0.a.yx, Struct_3(-1237f, global3[_wgslsmith_index_u32(0u, 6u)], 23044u, vec4<f32>(global2.x, 1139f, 999f, -1785f), Struct_1(arg_0.x)), 4294967295u), arg_0))))));
    var var_3 = vec4<u32>(u_input.b, 0u, (select(4294967295u, u_input.b, arg_0.x) >> (_wgslsmith_add_u32(u_input.d.x, 77329u) % 32u)) & 39574u, u_input.b) << (_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(64226u, func_2(global3[_wgslsmith_index_u32(u_input.b, 6u)], var_0.a.yx, Struct_3(global2.x, Struct_2(vec2<f32>(arg_1.x, arg_1.x), vec2<u32>(14971u, 41682u), Struct_1(var_2), Struct_1(true)), u_input.c, vec4<f32>(global2.x, global2.x, -983f, arg_1.x), Struct_1(false)), u_input.b), ~1u, u_input.c), firstLeadingBit(_wgslsmith_clamp_vec4_u32(u_input.d, u_input.d, vec4<u32>(u_input.c, 1u, 80804u, 21720u)))), min(firstTrailingBit(u_input.d), _wgslsmith_sub_vec4_u32(vec4<u32>(49942u, 84020u, 0u, 96063u), vec4<u32>(u_input.a.x, 19368u, u_input.c, 56551u)) >> (u_input.d % vec4<u32>(32u)))) % vec4<u32>(32u));
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(arg_1, _wgslsmith_f_op_vec2_f32(-arg_1))))), vec2<u32>(var_3.x, min(1u, u_input.d.x | abs(var_3.x))), Struct_1(all(select(!vec3<bool>(arg_0.x, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, var_2, var_2), vec3<bool>(var_2, var_2, true), vec3<bool>(arg_0.x, var_2, true))))), Struct_1(!select(true, 384f >= arg_1.x, arg_0.x)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_3, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-150f))), Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1322f, arg_3.x))))), _wgslsmith_f_op_vec2_f32(-arg_3.zz), false)), _wgslsmith_div_vec2_u32(vec2<u32>(arg_2.b.b.x | u_input.b, ~arg_2.b.b.x), u_input.a.zy), func_1(vec2<bool>(arg_1.b != global1.x, arg_0.e.a), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-619f, 1000f) + vec2<f32>(1151f, arg_3.x))))).d, Struct_1(arg_0.a != _wgslsmith_f_op_f32(sign(arg_0.d.x)))), ~(~u_input.a.x), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_2.d, arg_2.d))))), arg_0.e);
    var var_1 = !(!vec2<bool>(arg_0.b.d.a || arg_2.b.c.a, !select(false, true, true)));
    global2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.a.x - 158f), _wgslsmith_f_op_f32(trunc(arg_2.a))), _wgslsmith_f_op_f32(floor(var_0.a))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(868f, 1790f), arg_3.zy)))));
    let var_2 = arg_0.c;
    let var_3 = _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(-_wgslsmith_mod_vec4_i32(min(vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(68917u, 17u)], arg_1.b, 1i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 17u)], global1.x, global0[_wgslsmith_index_u32(0u, 17u)], arg_1.b)), vec4<i32>(global1.x, global0[_wgslsmith_index_u32(var_0.b.b.x, 17u)], global1.x, 0i)), _wgslsmith_mult_vec4_i32(-vec4<i32>(global0[_wgslsmith_index_u32(0u, 17u)], 0i, 6950i, global1.x), -vec4<i32>(0i, global1.x, global1.x, arg_1.b)) | vec4<i32>(~24615i, arg_1.b, min(-31630i, global1.x), 17011i), _wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(-1i, 1i, 26066i, 1i)), ~vec4<i32>(-1i, global0[_wgslsmith_index_u32(var_0.b.b.x, 17u)], global1.x, -55482i)) & select(vec4<i32>(arg_1.b, -1i, arg_1.b, arg_1.b) | vec4<i32>(global1.x, 1i, global0[_wgslsmith_index_u32(arg_2.c, 17u)], arg_1.b), _wgslsmith_div_vec4_i32(vec4<i32>(-1288i, global1.x, 0i, global1.x), vec4<i32>(global1.x, 50807i, 50556i, global0[_wgslsmith_index_u32(0u, 17u)])), true)), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global1.x, 28474i, -2147483647i, arg_1.b), vec4<i32>(global0[_wgslsmith_index_u32(57044u, 17u)], 2147483647i, arg_1.b, 60362i)), vec4<i32>(arg_1.b, 2147483647i, global0[_wgslsmith_index_u32(92596u, 17u)], global1.x)), -vec4<i32>(-5741i, 66677i, arg_1.b, -1i)), vec4<i32>(i32(-1i) * -2147483647i, -arg_1.b & arg_1.b, global1.x, 7473i), vec4<i32>(_wgslsmith_div_i32(global1.x, -1i), ~_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(16460u, 17u)], 21690i, arg_1.b), _wgslsmith_div_i32(-858i, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, arg_1.b), vec2<i32>(arg_1.b, global1.x))), 0i)));
    return func_1(select(select(!vec2<bool>(true, arg_1.a), vec2<bool>(true, false), !var_1.x), select(!select(vec2<bool>(var_0.b.d.a, false), vec2<bool>(arg_1.a, arg_2.e.a), arg_0.b.d.a), vec2<bool>(true, true), vec2<bool>(true, any(vec4<bool>(false, false, arg_1.a, arg_0.b.c.a)))), !select(select(vec2<bool>(false, true), vec2<bool>(arg_0.b.c.a, false), var_1.x), select(vec2<bool>(arg_1.a, arg_0.e.a), vec2<bool>(true, true), vec2<bool>(var_0.b.d.a, var_1.x)), !arg_0.b.d.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(3209f, -1525f) - arg_3.yy)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-901f, arg_0.a))))).c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2.x, global2.x)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, global2.x) + vec2<f32>(-652f, 170f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-700f, global2.x) - vec2<f32>(-336f, global2.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(global2.x + global2.x)))), vec2<u32>(u_input.b, u_input.d.x), Struct_1(true), func_4(Struct_3(global2.x, func_1(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1615f, global2.x)))), u_input.c, _wgslsmith_div_vec4_f32(vec4<f32>(global2.x, global2.x, 409f, 1273f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.x, 1143f, global2.x, global2.x), vec4<f32>(global2.x, global2.x, -1303f, global2.x)))), func_1(select(vec2<bool>(true, true), vec2<bool>(false, false), true), _wgslsmith_f_op_vec2_f32(vec2<f32>(1143f, -206f) - vec2<f32>(global2.x, 269f))).d), Struct_4(func_1(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, -2147f) - vec2<f32>(445f, global2.x))).d.a, global0[_wgslsmith_index_u32(~u_input.a.x, 17u)] >> (~4294967295u % 32u)), Struct_3(global2.x, Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, -1733f) + vec2<f32>(global2.x, -1000f)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d.x, u_input.a.x), u_input.a.yy, u_input.d.wy), func_1(vec2<bool>(true, false), vec2<f32>(-516f, 1272f)).c, Struct_1(true)), max(4294967295u, u_input.b), vec4<f32>(_wgslsmith_f_op_f32(ceil(1453f)), _wgslsmith_f_op_f32(ceil(global2.x)), _wgslsmith_f_op_f32(ceil(global2.x)), global2.x), func_1(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, 788f))).d), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global4[_wgslsmith_index_u32(max(u_input.d.x, u_input.a.x), 30u)] + _wgslsmith_f_op_vec3_f32(-global4[_wgslsmith_index_u32(u_input.d.x, 30u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global4[_wgslsmith_index_u32(4294967295u, 30u)] + vec3<f32>(global2.x, 425f, global2.x)) - _wgslsmith_div_vec3_f32(global4[_wgslsmith_index_u32(9331u, 30u)], vec3<f32>(global2.x, -1711f, global2.x))), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(func_1(vec2<bool>(var_0.c.a, var_0.d.a), vec2<f32>(1000f, 247f)).a.x, _wgslsmith_f_op_f32(-337f - 1000f)))) * 234f));
    var var_2 = ~vec3<u32>(~0u, 67084u, abs(u_input.c));
    var var_3 = -18052i;
    var var_4 = global3[_wgslsmith_index_u32(var_2.x, 6u)];
    var var_5 = _wgslsmith_f_op_f32(874f - _wgslsmith_f_op_f32(max(var_4.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)))))));
    var_4 = global3[_wgslsmith_index_u32(~(~(~(~4294967295u))), 6u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_4.b.x, 26380u, var_4.b.x, ~abs(var_2.x) >> (1u % 32u)));
}

