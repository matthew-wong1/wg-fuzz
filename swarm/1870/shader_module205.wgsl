struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec2<f32>,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
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

var<private> global0: vec4<u32> = vec4<u32>(77786u, 82223u, 101705u, 0u);

var<private> global1: i32 = 2147483647i;

var<private> global2: array<u32, 3> = array<u32, 3>(1u, 1u, 1u);

var<private> global3: bool = false;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_2) -> f32 {
    global1 = abs(-46702i >> (arg_0.b.x % 32u));
    global1 = arg_0.a ^ _wgslsmith_dot_vec3_i32(select(vec3<i32>(~(-2147483647i), max(14884i, 0i), ~2147483647i), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(28704i, arg_0.a, 1i), vec3<i32>(-14446i, -1i, 0i)), -arg_0.c.a.wwy, abs(vec3<i32>(-2147483647i, -2147483647i, 1i))), arg_0.c.e), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(-38796i, arg_0.a, arg_0.c.a.x), vec3<i32>(-2147483647i, arg_0.c.a.x, arg_0.c.a.x), false), -vec3<i32>(-62166i, 1i, arg_0.a), arg_0.c.a.zyx << (vec3<u32>(48030u, global2[_wgslsmith_index_u32(global0.x, 3u)], 1u) % vec3<u32>(32u))), vec3<i32>(~arg_0.c.a.x, -arg_0.c.a.x, _wgslsmith_mod_i32(arg_0.c.a.x, 32142i))));
    let var_0 = vec4<bool>(false, all(!(!vec3<bool>(arg_0.c.d, arg_0.c.d, true))), true, arg_0.c.d);
    global3 = var_0.x;
    var var_1 = false;
    return _wgslsmith_f_op_f32(arg_0.c.b.x * -922f);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<f32>) -> Struct_1 {
    global1 = -2147483647i;
    let var_0 = global0.wzx;
    let var_1 = Struct_1(max(vec4<i32>(max(-1i, 81044i), min(i32(-1i) * -52283i, _wgslsmith_dot_vec4_i32(vec4<i32>(-8344i, -58640i, 0i, -2147483647i), vec4<i32>(0i, 2147483647i, -1i, 17428i))), -14320i, min(i32(-1i) * -59332i, _wgslsmith_div_i32(17540i, -43377i))), vec4<i32>(1i, 1i, -min(43710i, 2147483647i), min(~(-2147483647i), -33230i))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(185f, arg_1.x, arg_1.x)))) - vec3<f32>(_wgslsmith_f_op_f32(arg_1.x + arg_1.x), -1209f, _wgslsmith_div_f32(arg_1.x, -1221f))))), _wgslsmith_mod_vec2_u32(global0.yw, _wgslsmith_add_vec2_u32((arg_0 & var_0.yx) << (arg_0 % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(arg_0, ~vec2<u32>(global0.x, 4294967295u)))), true, 315f <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(102f + _wgslsmith_f_op_f32(func_3(Struct_2(0i, global0.wz, Struct_1(vec4<i32>(31455i, -2147483647i, -8758i, 9084i), vec3<f32>(483f, -713f, 675f), vec2<u32>(u_input.b, 1u), true, true))))), arg_1.x));
    global1 = var_1.a.x;
    global0 = min(vec4<u32>(0u, ~var_1.c.x, arg_0.x, _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(48136u, var_1.c.x), vec2<u32>(u_input.c, 4294967295u)), 0u)), vec4<u32>(~global0.x, var_1.c.x >> (~_wgslsmith_mult_u32(u_input.b, var_1.c.x) % 32u), 62055u, 4294967295u));
    return Struct_1(min(var_1.a, var_1.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-345f, 1000f, 175f)))) - vec3<f32>(-441f, 517f, -1415f))), vec2<u32>(~global2[_wgslsmith_index_u32(var_1.c.x, 3u)], var_0.x), false, true && all(vec3<bool>(!var_1.d, !var_1.d, !var_1.e)));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_4) -> Struct_1 {
    var var_0 = abs(vec2<u32>(global0.x, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_1.c.x, global0.x), vec3<u32>(arg_1.c.x, global2[_wgslsmith_index_u32(11480u, 3u)], 30630u)))));
    global1 = -1i;
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x)), arg_3.b.x, arg_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.x) * _wgslsmith_f_op_f32(round(arg_3.b.x))))));
    global2 = array<u32, 3>();
    global2 = array<u32, 3>();
    return Struct_1(_wgslsmith_mod_vec4_i32(arg_2.a, arg_3.d.c.a), _wgslsmith_f_op_vec3_f32(-var_1.xwy), abs(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(arg_2.c, arg_2.c ^ vec2<u32>(u_input.c, arg_3.d.c.c.x)), _wgslsmith_clamp_vec2_u32(~arg_1.c, countOneBits(global0.zx), select(vec2<u32>(0u, arg_2.c.x), vec2<u32>(0u, u_input.b), vec2<bool>(true, true))))), arg_1.e, true);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: bool) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1163f - func_2(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.c.x, 3u)], 3u)], 3u)], 1u), arg_0.b.xz).b.x) + arg_2.c.b.x), -726f, _wgslsmith_f_op_f32(arg_2.c.b.x + _wgslsmith_f_op_f32(arg_0.b.x + 1209f))));
    let var_1 = 523f;
    global2 = array<u32, 3>();
    var var_2 = global0.x;
    global1 = _wgslsmith_mult_i32(firstLeadingBit(1i >> (_wgslsmith_sub_u32(arg_2.b.x, arg_0.c.x) % 32u)) ^ _wgslsmith_mod_i32(~firstLeadingBit(arg_0.a.x), -2147483647i), arg_2.a);
    return Struct_3(func_4(all(!select(vec2<bool>(true, arg_2.c.d), vec2<bool>(arg_2.c.e, true), vec2<bool>(true, false))), arg_0, func_2(max(arg_2.c.c, vec2<u32>(18642u, 8762u)), var_0.xx), Struct_4(func_4(arg_3 & false, arg_2.c, func_2(vec2<u32>(4294967295u, 1u), arg_2.c.b.zy), Struct_4(arg_1.x, arg_0.b.yx, arg_3, Struct_3(arg_2.c, global0.xyy, Struct_1(arg_0.a, vec3<f32>(1761f, var_1, 162f), vec2<u32>(u_input.c, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], 3u)]), true, arg_0.e), vec4<bool>(arg_2.c.e, false, true, false)))).a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1582f, -1000f), var_0.zw))), any(vec4<bool>(false, arg_2.c.e, false, arg_2.c.d)), Struct_3(func_2(arg_0.c, var_0.xz), abs(vec3<u32>(global0.x, 1u, arg_0.c.x)), Struct_1(arg_0.a, arg_0.b, vec2<u32>(global0.x, 1u), false, true), vec4<bool>(false, arg_2.c.e, false, arg_2.c.d)))), vec3<u32>(~48851u & select(1u, arg_0.c.x, arg_0.d), 0u, _wgslsmith_sub_u32(min(14530u, arg_2.c.c.x), _wgslsmith_add_u32(4294967295u, global0.x))) & vec3<u32>(0u, global2[_wgslsmith_index_u32(arg_0.c.x, 3u)], u_input.a), func_4(17278u < func_2(_wgslsmith_clamp_vec2_u32(arg_2.c.c, vec2<u32>(631u, global0.x), vec2<u32>(global2[_wgslsmith_index_u32(global0.x, 3u)], 102698u)), vec2<f32>(var_0.x, -932f)).c.x, func_2(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), ~arg_0.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-489f, 376f) + vec2<f32>(arg_0.b.x, -1183f)))), Struct_1(countOneBits(-arg_0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, arg_0.b.x, arg_0.b.x)))), ~vec2<u32>(4294967295u, 4294967295u), all(!vec2<bool>(arg_0.d, true)), arg_3), Struct_4(~arg_1.x << (_wgslsmith_mult_u32(arg_0.c.x, global0.x) % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -962f))), countOneBits(arg_2.b.x) > (global2[_wgslsmith_index_u32(arg_0.c.x, 3u)] | 0u), Struct_3(func_2(global0.wy, var_0.zz), global0.yxx, Struct_1(vec4<i32>(arg_2.a, -21502i, 1i, arg_1.x), var_0.wwx, global0.zy, false, true), select(vec4<bool>(arg_0.d, true, arg_0.d, true), vec4<bool>(arg_3, false, arg_0.e, true), vec4<bool>(false, arg_2.c.d, true, arg_3))))), !vec4<bool>(true, true, all(vec4<bool>(false, arg_3, true, arg_0.e)), any(vec2<bool>(true, true))));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    var var_0 = Struct_4(-2147483647i, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 400f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1143f, _wgslsmith_f_op_f32(-arg_2.c.b.x)) - _wgslsmith_f_op_vec2_f32(-arg_2.c.b.zz)))), true, func_5(func_4(arg_1.c.e, func_2(~vec2<u32>(0u, 25105u), arg_1.c.b.zy), func_2(countOneBits(global0.xx), _wgslsmith_f_op_vec2_f32(arg_2.c.b.yy + arg_1.c.b.yz)), Struct_4(arg_2.c.a.x, _wgslsmith_f_op_vec2_f32(-arg_1.c.b.xy), func_2(global0.zz, arg_2.c.b.zz).e, Struct_3(Struct_1(arg_2.c.a, vec3<f32>(533f, arg_2.c.b.x, arg_2.c.b.x), arg_1.c.c, arg_1.c.e, arg_1.c.d), global0.zwz, Struct_1(vec4<i32>(-3387i, arg_1.c.a.x, 0i, arg_2.c.a.x), vec3<f32>(arg_1.c.b.x, arg_2.c.b.x, -118f), global0.wz, false, arg_2.c.d), vec4<bool>(arg_2.c.d, arg_2.c.d, true, arg_2.c.e)))), ~arg_2.c.a.zzx, Struct_2(0i, vec2<u32>(4294967295u, 4294967295u | u_input.c), func_2(global0.zw, vec2<f32>(-570f, arg_1.c.b.x))), true));
    var var_1 = Struct_1(arg_1.c.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-572f, _wgslsmith_f_op_f32(-arg_1.c.b.x), _wgslsmith_f_op_f32(-1000f - arg_1.c.b.x)))), vec2<u32>(_wgslsmith_mod_u32(arg_2.c.c.x, 27364u) << (firstTrailingBit(arg_0) % 32u), arg_2.b.x) >> (abs(~_wgslsmith_add_vec2_u32(arg_1.c.c, vec2<u32>(arg_1.b.x, 0u))) % vec2<u32>(32u)), any(!var_0.d.d), func_2(vec2<u32>(u_input.a, arg_2.c.c.x), var_0.d.c.b.xx).d);
    var_0 = Struct_4(max(_wgslsmith_clamp_i32(~(-39470i), 20172i, var_1.a.x), arg_1.a) >> (var_0.d.b.x % 32u), var_1.b.xx, true, func_5(func_4(true, func_5(func_5(Struct_1(vec4<i32>(arg_2.c.a.x, arg_1.a, -2498i, arg_2.c.a.x), vec3<f32>(-309f, arg_1.c.b.x, 457f), vec2<u32>(1u, u_input.c), arg_2.c.e, var_1.e), vec3<i32>(-26142i, arg_1.a, 0i), arg_2, true).a, -vec3<i32>(1i, 35268i, 0i), arg_2, var_1.d).c, func_2(_wgslsmith_mult_vec2_u32(global0.ww, vec2<u32>(arg_0, global2[_wgslsmith_index_u32(0u, 3u)])), _wgslsmith_f_op_vec2_f32(arg_1.c.b.zx * arg_2.c.b.yz)), Struct_4(22258i, arg_2.c.b.zz, select(true, true, var_0.c), var_0.d)), ~select(arg_2.c.a.yzz, arg_2.c.a.xzy, var_0.d.a.d) ^ (vec3<i32>(-1i) * -vec3<i32>(-1i, 21101i, var_1.a.x)), arg_2, all(vec4<bool>(true, true, true, true))));
    var_1 = Struct_1(func_2(func_5(arg_2.c, vec3<i32>(arg_2.c.a.x & var_1.a.x, func_4(var_0.d.a.e, var_0.d.a, arg_1.c, Struct_4(1i, var_1.b.yy, true, Struct_3(arg_1.c, vec3<u32>(1428u, arg_1.b.x, arg_1.c.c.x), arg_2.c, var_0.d.d))).a.x, _wgslsmith_add_i32(arg_2.c.a.x, arg_2.c.a.x)), Struct_2(-75936i, ~vec2<u32>(1u, 36170u), func_4(false, arg_2.c, arg_1.c, Struct_4(var_0.d.a.a.x, vec2<f32>(arg_2.c.b.x, arg_1.c.b.x), false, Struct_3(Struct_1(vec4<i32>(29587i, var_1.a.x, arg_2.c.a.x, -14956i), arg_2.c.b, vec2<u32>(var_0.d.c.c.x, 1u), var_0.d.d.x, false), global0.xyy, Struct_1(vec4<i32>(var_1.a.x, var_1.a.x, arg_2.a, -24604i), vec3<f32>(arg_1.c.b.x, 502f, var_0.d.c.b.x), global0.xy, var_0.c, arg_1.c.e), var_0.d.d)))), false).b.yx, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_0.b, var_0.b)) * var_1.b.zz), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b + arg_1.c.b.xy), vec2<f32>(arg_1.c.b.x, arg_1.c.b.x)))).a, _wgslsmith_f_op_vec3_f32(-arg_1.c.b), arg_2.c.c, var_1.e, 4294967295u == (_wgslsmith_mod_u32(min(4294967295u, 9870u), func_4(true, Struct_1(var_1.a, vec3<f32>(423f, 1399f, 210f), vec2<u32>(44187u, arg_2.c.c.x), false, false), Struct_1(vec4<i32>(var_1.a.x, -1i, -2147483647i, var_1.a.x), var_1.b, global0.zx, true, arg_2.c.e), Struct_4(19065i, vec2<f32>(var_1.b.x, var_1.b.x), arg_1.c.d, var_0.d)).c.x) << (1u % 32u)));
    var var_2 = _wgslsmith_clamp_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(49116i, var_0.d.a.a.x ^ -49691i, select(1i, -23787i, var_0.d.a.e)), ~var_0.d.a.a.wyx), arg_2.c.a.yzy, -(~vec3<i32>(0i, -10650i, _wgslsmith_clamp_i32(-4421i, var_0.a, var_1.a.x))));
    return var_0.d.a;
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: Struct_2) -> u32 {
    var var_0 = _wgslsmith_div_vec2_i32(abs(arg_0.yx), abs(_wgslsmith_sub_vec2_i32(arg_1.c.a.wx, arg_1.c.a.ww)));
    var var_1 = global0.ywx;
    var_0 = countOneBits(arg_0.xz);
    global1 = select(24839i, _wgslsmith_add_i32(arg_1.a, ~var_0.x) & _wgslsmith_div_i32(arg_3.a, -7826i), arg_1.c.e);
    var var_2 = Struct_3(Struct_1(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(arg_0, -vec4<i32>(arg_3.a, var_0.x, 10622i, -36225i)), func_2(arg_3.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(602f, -236f))).a), arg_2.yww, vec2<u32>(4294967295u, ~reverseBits(1u)), true, all(!(!vec4<bool>(arg_1.c.e, false, arg_1.c.e, arg_1.c.d)))), firstLeadingBit(vec3<u32>(18944u, 59031u, _wgslsmith_div_u32(global2[_wgslsmith_index_u32(arg_1.c.c.x, 3u)], abs(0u)))), arg_3.c, vec4<bool>(!(-981f <= arg_3.c.b.x), false, false, all(vec3<bool>(arg_1.c.d, select(true, arg_1.c.e, true), !arg_3.c.d))));
    return 49225u;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = false;
    global1 = ~_wgslsmith_sub_i32(-reverseBits(~1i), 0i);
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(475f * -673f))) - _wgslsmith_f_op_f32(-1f))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -149f) + 792f));
    global1 = 12827i << (func_6(reverseBits(~abs(vec4<i32>(2147483647i, 1i, 16575i, 51503i))), Struct_2(-1i, global0.yw >> (global0.yz % vec2<u32>(32u)), func_1(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(41234u, 3u)], 3u)], Struct_2(1i, vec2<u32>(global0.x, 2102u), Struct_1(vec4<i32>(-33908i, 6962i, 1i, 10598i), vec3<f32>(-1614f, 1242f, -855f), global0.wy, true, true)), Struct_2(7155i, vec2<u32>(global0.x, global2[_wgslsmith_index_u32(global0.x, 3u)]), Struct_1(vec4<i32>(-2147483647i, -11052i, 0i, 48093i), vec3<f32>(318f, 1000f, -145f), global0.zw, false, true)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-702f, -248f, 628f, 200f) - vec4<f32>(1800f, 230f, -1000f, 264f)) * vec4<f32>(768f, 165f, 1290f, 101f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -643f), _wgslsmith_f_op_f32(179f - 428f), func_5(Struct_1(vec4<i32>(2147483647i, -7869i, -1i, -13068i), vec3<f32>(-1887f, -1292f, -136f), global0.zy, true, true), vec3<i32>(1i, 2147483647i, -2147483647i), Struct_2(24302i, vec2<u32>(global0.x, global0.x), Struct_1(vec4<i32>(34799i, 1i, 0i, -10454i), vec3<f32>(-668f, -1456f, 717f), global0.zz, false, true)), false).c.b.x, 408f)), Struct_2(-31201i, global0.xy, func_4(true, func_5(Struct_1(vec4<i32>(-2502i, 46806i, 4041i, -42210i), vec3<f32>(-371f, 744f, -534f), vec2<u32>(1u, 34426u), false, true), vec3<i32>(-1i, -1i, 0i), Struct_2(-1i, global0.xy, Struct_1(vec4<i32>(1188i, 19111i, -1i, 0i), vec3<f32>(-845f, 596f, -1000f), global0.ww, true, false)), true).a, func_2(vec2<u32>(global2[_wgslsmith_index_u32(42236u, 3u)], global0.x), vec2<f32>(345f, 459f)), Struct_4(2147483647i, vec2<f32>(-1000f, -1704f), true, Struct_3(Struct_1(vec4<i32>(1i, 0i, 2147483647i, -38659i), vec3<f32>(-1172f, 736f, -1112f), global0.yw, true, true), global0.xxw, Struct_1(vec4<i32>(1i, 31920i, -1i, 23275i), vec3<f32>(-503f, -933f, -196f), global0.xz, true, false), vec4<bool>(false, false, false, true)))))) % 32u);
    var var_0 = func_2((global0.yx & _wgslsmith_add_vec2_u32(global0.xy, max(vec2<u32>(17699u, 0u), vec2<u32>(2825u, 24015u)))) | global0.yy, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-func_5(func_4(false, Struct_1(vec4<i32>(-9377i, -1i, -35582i, -2147483647i), vec3<f32>(662f, 625f, -1551f), global0.yy, false, false), Struct_1(vec4<i32>(0i, -2147483647i, 2147483647i, -1i), vec3<f32>(-861f, 1723f, -1244f), vec2<u32>(0u, 16785u), true, false), Struct_4(0i, vec2<f32>(303f, 169f), true, Struct_3(Struct_1(vec4<i32>(50998i, -50500i, 2147483647i, -12116i), vec3<f32>(-1571f, 702f, -1584f), global0.wx, true, false), vec3<u32>(u_input.a, 4294967295u, u_input.a), Struct_1(vec4<i32>(-1i, 0i, 2872i, -2147483647i), vec3<f32>(288f, -921f, 1624f), vec2<u32>(u_input.b, u_input.c), true, false), vec4<bool>(false, false, true, false)))), vec3<i32>(-4767i, 0i, -3800i), Struct_2(69574i, vec2<u32>(4294967295u, 63709u), Struct_1(vec4<i32>(-2147483647i, 2118i, 38277i, -11439i), vec3<f32>(-294f, 1715f, -113f), vec2<u32>(0u, 34791u), true, false)), func_2(global0.wx, vec2<f32>(-379f, 794f)).e).c.b.yz))));
    global3 = func_5(func_1(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~var_0.c.x, 3u)], 3u)], Struct_2(0i & countOneBits(var_0.a.x), ~vec2<u32>(0u, var_0.c.x), Struct_1(~var_0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_0.b.x, -431f)), ~global0.yz, select(true, true, var_0.e), all(vec2<bool>(false, var_0.d)))), Struct_2(-2147483647i, ~countOneBits(global0.xz), Struct_1(_wgslsmith_add_vec4_i32(var_0.a, vec4<i32>(22223i, -86232i, var_0.a.x, var_0.a.x)), _wgslsmith_f_op_vec3_f32(var_0.b * vec3<f32>(1915f, var_0.b.x, var_0.b.x)), _wgslsmith_mod_vec2_u32(global0.xz, global0.xz), !var_0.d, var_0.e))), -(vec3<i32>(_wgslsmith_dot_vec2_i32(var_0.a.ww, vec2<i32>(29510i, var_0.a.x)), -2147483647i | var_0.a.x, var_0.a.x << (global0.x % 32u)) >> (_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(global0.yzw, vec3<u32>(var_0.c.x, 85159u, u_input.a)), global0.wwx) % vec3<u32>(32u))), Struct_2(-1i, reverseBits(~(~global0.xx)), Struct_1(countOneBits(-vec4<i32>(var_0.a.x, var_0.a.x, 54193i, var_0.a.x)), var_0.b, _wgslsmith_mult_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(5482u, 3u)], global0.x), ~var_0.c), !(var_0.d == var_0.e), var_0.b.x < 636f)), true).c.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(4294967295u, global0.x));
}

