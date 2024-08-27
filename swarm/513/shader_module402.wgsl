struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec3<bool>,
    d: vec2<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: f32,
    d: f32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 7>;

var<private> global1: array<Struct_3, 5>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3) -> vec4<i32> {
    let var_0 = 1u;
    global0 = array<Struct_4, 7>();
    global0 = array<Struct_4, 7>();
    var var_1 = firstLeadingBit(arg_1.b.a.d.x);
    let var_2 = Struct_1(arg_1.b.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-351f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.b.x, -1534f) + arg_0.a.b.x), arg_0.a.b.x, -403f)), select(arg_1.d.c, !vec3<bool>(true, any(vec2<bool>(false, false)), any(arg_0.c.zy)), arg_1.b.a.e.x), vec2<i32>(0i, ~(~(~arg_1.d.a.d.x))), !(!arg_0.a.e));
    return _wgslsmith_div_vec4_i32(vec4<i32>(select(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(arg_0.a.d.x, -49146i, arg_1.b.a.d.x), 1i), ~(-2147483647i), true), -2147483647i, -21774i, select(~(-2312i) << (firstTrailingBit(arg_0.b) % 32u), min(-var_2.d.x, 2147483647i), arg_0.c.x)), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, 64999i, 6628i, -51178i), vec4<i32>(arg_0.a.d.x, arg_0.a.d.x, arg_0.a.d.x, 0i)), select(vec4<i32>(-56053i, arg_1.d.a.d.x, -1i, -44977i), vec4<i32>(var_2.d.x, arg_0.a.d.x, arg_0.a.d.x, var_2.d.x), vec4<bool>(false, true, false, var_2.e.x))), vec4<i32>(abs(var_2.d.x), _wgslsmith_add_i32(-2147483647i, arg_1.d.a.d.x), _wgslsmith_div_i32(0i, -1i), var_2.d.x)) >> (~_wgslsmith_add_vec4_u32(~vec4<u32>(var_0, 4294967295u, 13536u, 41080u), ~vec4<u32>(arg_1.d.b, u_input.a, var_0, var_0)) % vec4<u32>(32u)));
}

fn func_2(arg_0: Struct_3) -> u32 {
    var var_0 = ~_wgslsmith_div_vec4_i32(reverseBits(-vec4<i32>(arg_0.b.a.d.x, -49981i, arg_0.b.a.d.x, -1i)) & -vec4<i32>(arg_0.b.a.d.x, arg_0.d.a.d.x, arg_0.b.a.d.x, arg_0.d.a.d.x), func_3(arg_0.d, Struct_3(false, Struct_2(arg_0.b.a, 89964u, vec3<bool>(arg_0.b.a.c.x, arg_0.b.a.a.x, false)), _wgslsmith_f_op_f32(f32(-1f) * -806f), arg_0.b)));
    var_0 = countOneBits(-_wgslsmith_mod_vec4_i32(vec4<i32>(reverseBits(1i), -1i, var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_0.d.a.d.x, -34798i), vec3<i32>(-32986i, 1i, -2147483647i))), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, var_0.x, arg_0.b.a.d.x, -1i), vec4<i32>(var_0.x, var_0.x, -2147483647i, var_0.x)), firstLeadingBit(vec4<i32>(42108i, -2147483647i, 1339i, var_0.x)))));
    var var_1 = arg_0.b;
    global0 = array<Struct_4, 7>();
    var var_2 = !(!vec4<bool>(true, arg_0.b.c.x, false, var_1.c.x));
    return arg_0.d.b;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: i32) -> f32 {
    global1 = array<Struct_3, 5>();
    global0 = array<Struct_4, 7>();
    var var_0 = Struct_2(Struct_1(select(vec3<bool>(true, arg_0.x, true), !vec3<bool>(arg_0.x, false, false), false), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1352f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(347f, -732f))), 371f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1628f)) * _wgslsmith_f_op_f32(-942f + 265f))), !(!select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(true, arg_0.x, arg_0.x))), max(abs(vec2<i32>(arg_2, arg_2)) << (arg_1.yx % vec2<u32>(32u)), func_3(Struct_2(Struct_1(vec3<bool>(arg_0.x, true, arg_0.x), vec4<f32>(688f, 1526f, 318f, -1000f), vec3<bool>(true, arg_0.x, true), vec2<i32>(arg_2, arg_2), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), u_input.a, vec3<bool>(arg_0.x, true, true)), Struct_3(false, Struct_2(Struct_1(vec3<bool>(false, true, true), vec4<f32>(-603f, -204f, -1141f, -551f), vec3<bool>(arg_0.x, false, true), vec2<i32>(arg_2, 2147483647i), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x)), arg_1.x, vec3<bool>(false, arg_0.x, false)), 1030f, Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<f32>(1401f, -444f, -731f, 1781f), vec3<bool>(true, true, true), vec2<i32>(-2147483647i, 1i), vec4<bool>(true, false, arg_0.x, false)), u_input.a, vec3<bool>(arg_0.x, true, arg_0.x)))).zz), vec4<bool>(any(vec3<bool>(arg_0.x, arg_0.x, true)), arg_0.x, false, !all(vec3<bool>(false, true, arg_0.x)))), ~(~_wgslsmith_mult_u32(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 34839u, arg_1.x), arg_1.zyz))), vec3<bool>(true, true, (true || arg_0.x) == true));
    var var_1 = Struct_1(vec3<bool>(false, all(vec3<bool>(true, true != arg_0.x, true)), var_0.c.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.b.x, -670f, var_0.a.b.x, var_0.a.b.x), vec4<f32>(var_0.a.b.x, var_0.a.b.x, -393f, -272f), vec4<bool>(false, true, false, var_0.c.x)))) + var_0.a.b)), vec3<bool>(_wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, var_0.a.d.x, -1i, 2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_2, 13257i, -19622i, 7853i), vec4<i32>(-1i, arg_2, 0i, var_0.a.d.x))) >= _wgslsmith_add_i32(select(24078i, var_0.a.d.x, var_0.a.c.x), _wgslsmith_sub_i32(0i, -1i)), arg_0.x, !all(vec3<bool>(var_0.c.x, arg_0.x, false))), reverseBits(vec2<i32>(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2, var_0.a.d.x, -17168i), select(vec3<i32>(38309i, -2147483647i, var_0.a.d.x), vec3<i32>(0i, var_0.a.d.x, var_0.a.d.x), arg_0.x)))), select(var_0.a.e, !(!var_0.a.e), vec4<bool>(true, false, (false || var_0.a.a.x) | all(arg_0), var_0.a.c.x)));
    let var_2 = ~arg_1.x;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.b.x))), var_1.b.x));
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec4<u32>(abs(47177u), ~4294967295u, _wgslsmith_div_u32(0u, arg_0), func_2(global1[_wgslsmith_index_u32(60010u, 5u)])), _wgslsmith_mod_vec4_u32(vec4<u32>(72338u, u_input.a, u_input.a, arg_0), vec4<u32>(u_input.a, arg_0, u_input.a, 1u)), any(vec3<bool>(true, true, true))), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, 15300i, 26454i), -vec4<i32>(51956i, -50498i, -1i, 0i))))));
    var var_1 = Struct_1(select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true), vec3<bool>(any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), true)), (0u & u_input.a) > ~u_input.a, any(vec3<bool>(true, false, true))), true | any(vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1801f * 1109f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1163f)), -1763f, _wgslsmith_f_op_f32(f32(-1f) * -187f))), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), all(vec2<bool>(true, false)))), vec3<bool>(true, true, all(vec4<bool>(true, false, true, true))), !select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), vec3<bool>(false, true, false), true)), _wgslsmith_div_vec2_i32(~vec2<i32>(~(-11281i), func_3(Struct_2(Struct_1(vec3<bool>(true, true, true), vec4<f32>(1000f, -361f, -973f, 220f), vec3<bool>(true, true, false), vec2<i32>(-2147483647i, 48616i), vec4<bool>(false, false, true, false)), 67534u, vec3<bool>(false, true, false)), global1[_wgslsmith_index_u32(u_input.a, 5u)]).x), vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, -8935i), vec2<i32>(-2147483647i, -18193i))), vec4<bool>(select(false, false, false), all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1702f * -405f))) != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-803f + 1296f))), any(vec3<bool>(true, all(vec4<bool>(true, false, true, false)), true))));
    var var_2 = var_1.e.x;
    var var_3 = Struct_1(!(!(!var_1.e.wyz)), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_div_f32(var_1.b.x, var_1.b.x)))), var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.b.x + var_1.b.x), 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(194f + _wgslsmith_div_f32(-321f, var_1.b.x)))), select(select(select(var_1.c, vec3<bool>(false, false, var_1.a.x), var_1.a.x), !vec3<bool>(var_1.a.x, false, true), !any(var_1.c.zz)), vec3<bool>(true, false, var_1.a.x), select(vec3<bool>(var_1.e.x, false, true), var_1.c, false)), vec2<i32>(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-29543i, var_1.d.x, var_1.d.x, -2147483647i)), vec4<i32>(-21147i, 2147483647i, var_1.d.x, var_1.d.x) & vec4<i32>(14645i, 19465i, 1i, var_1.d.x)) ^ ~(~11411i), _wgslsmith_mod_i32(_wgslsmith_add_i32(var_1.d.x, 21232i), ~(-1i) >> (arg_0 % 32u))), vec4<bool>(false, all(var_1.c.zx), var_1.e.x, true));
    let var_4 = Struct_2(Struct_1(var_3.a, vec4<f32>(_wgslsmith_f_op_f32(1772f * _wgslsmith_f_op_f32(exp2(var_3.b.x))), _wgslsmith_div_f32(1969f, _wgslsmith_f_op_f32(var_3.b.x - -1719f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1240f))), -690f), var_1.c, vec2<i32>(var_1.d.x, -_wgslsmith_dot_vec2_i32(var_1.d, var_1.d)), var_1.e), 1u, vec3<bool>(all(select(select(var_1.a, vec3<bool>(var_1.e.x, var_3.a.x, false), false), vec3<bool>(false, false, false), true)), countOneBits(3595u) <= ~u_input.a, all(var_3.e)));
    return Struct_1(vec3<bool>(false && !(var_3.d.x > -98057i), any(vec2<bool>(var_4.a.c.x, true)), all(select(!vec4<bool>(var_3.c.x, var_3.a.x, false, true), var_1.e, vec4<bool>(var_1.a.x, var_4.c.x, true, var_3.a.x)))), var_3.b, select(!(!(!vec3<bool>(var_3.c.x, false, var_1.e.x))), vec3<bool>(var_1.a.x & var_3.e.x, false, any(select(var_1.c.zz, var_4.c.xz, true))), true), -vec2<i32>(_wgslsmith_mod_i32(firstTrailingBit(var_3.d.x), min(var_3.d.x, var_4.a.d.x)), _wgslsmith_mult_i32(~var_4.a.d.x, var_3.d.x)), vec4<bool>(!((u_input.a >= u_input.a) || var_3.e.x), var_1.a.x, !any(var_1.e), var_4.c.x));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_5, arg_2: f32) -> bool {
    let var_0 = global1[_wgslsmith_index_u32(arg_1.a.b.b & firstLeadingBit(~(59658u << (u_input.a % 32u)) | reverseBits(~u_input.a)), 5u)];
    global0 = array<Struct_4, 7>();
    var var_1 = 72270u;
    global1 = array<Struct_3, 5>();
    var_1 = 98731u;
    return 0i == -var_0.b.a.d.x;
}

fn func_6(arg_0: vec3<bool>, arg_1: vec2<bool>) -> Struct_2 {
    var var_0 = Struct_5(global1[_wgslsmith_index_u32(~abs(u_input.a), 5u)]);
    global0 = array<Struct_4, 7>();
    global1 = array<Struct_3, 5>();
    let var_1 = 1u;
    var var_2 = Struct_1(select(select(var_0.a.b.c, !func_1(0u).e.ywz, !vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), vec3<bool>(true, true, func_1(firstLeadingBit(u_input.a)).e.x), var_0.a.d.a.c), var_0.a.b.a.b, !select(var_0.a.d.c, select(select(vec3<bool>(var_0.a.b.c.x, var_0.a.b.c.x, false), vec3<bool>(true, true, false), arg_1.x), vec3<bool>(var_0.a.b.a.a.x, arg_1.x, false), true), true), var_0.a.d.a.d, var_0.a.b.a.e);
    return var_0.a.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(vec3<bool>(true, true, true), vec2<bool>(func_5(func_1(u_input.a), Struct_5(Struct_3(false, Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<f32>(1000f, 1000f, -952f, 253f), vec3<bool>(true, true, false), vec2<i32>(-26871i, -1i), vec4<bool>(true, true, true, true)), u_input.a, vec3<bool>(true, true, false)), 125f, Struct_2(Struct_1(vec3<bool>(false, true, false), vec4<f32>(-1128f, 1912f, 703f, 1000f), vec3<bool>(false, true, false), vec2<i32>(-2147483647i, -14202i), vec4<bool>(true, true, false, true)), u_input.a, vec3<bool>(false, false, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1404f - -260f))), !all(vec3<bool>(true, true, true))));
    var var_1 = ~_wgslsmith_mod_i32(var_0.a.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.d.x, -2147483647i), firstLeadingBit(var_0.a.d >> (vec2<u32>(60084u, var_0.b) % vec2<u32>(32u)))));
    var_1 = var_0.a.d.x;
    let var_2 = var_0.a.b.xw;
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, 37115u), 7u)];
    global0 = array<Struct_4, 7>();
    global0 = array<Struct_4, 7>();
    global1 = array<Struct_3, 5>();
    var_1 = _wgslsmith_sub_i32(reverseBits(var_3.a), _wgslsmith_sub_i32(var_3.a, _wgslsmith_div_i32(var_0.a.d.x, _wgslsmith_add_i32(_wgslsmith_div_i32(var_0.a.d.x, var_3.a), var_3.a))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(max(896u, 1u), var_3.b), -_wgslsmith_mod_vec3_i32(-vec3<i32>(var_0.a.d.x, -65054i, var_0.a.d.x), firstLeadingBit(-vec3<i32>(var_3.a, var_3.a, var_3.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(740f * var_2.x), 529f, var_0.a.b.x, _wgslsmith_f_op_f32(var_2.x - var_3.d)))));
}

