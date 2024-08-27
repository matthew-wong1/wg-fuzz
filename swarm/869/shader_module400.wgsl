struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 17>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>) -> vec3<f32> {
    var var_0 = firstTrailingBit(~_wgslsmith_div_u32(_wgslsmith_mod_u32(firstTrailingBit(arg_1.x), _wgslsmith_dot_vec3_u32(arg_1.zwy, u_input.e)), u_input.e.x << (arg_1.x % 32u)));
    var var_1 = Struct_1(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(1756f, 1000f)), _wgslsmith_f_op_f32(min(-2222f, -560f)), 1000f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(338f, -1000f, -978f))))), all(vec3<bool>(true, true, true)) && true);
    global0 = array<vec2<i32>, 17>();
    let var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(-1680f)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x + var_1.b.x) - _wgslsmith_f_op_f32(-var_1.b.x))), var_1.b, select(false, !all(vec4<bool>(var_1.c, var_1.a, var_1.a, false)), !(_wgslsmith_f_op_f32(-var_1.b.x) <= _wgslsmith_f_op_f32(round(var_1.b.x)))));
    var var_3 = max(vec4<i32>(firstLeadingBit(_wgslsmith_sub_i32(arg_0, -2147483647i)), ~(-21015i), max(-3537i, _wgslsmith_mod_i32(arg_0, arg_0)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, arg_0, arg_0), vec3<i32>(-1i, arg_0, 0i))), ~_wgslsmith_add_vec4_i32(vec4<i32>(12510i, arg_0, arg_0, arg_0), ~vec4<i32>(-2079i, arg_0, 25303i, -1i))) << ((vec4<u32>(1u, 25963u, arg_1.x, _wgslsmith_dot_vec2_u32(u_input.a.yz, abs(vec2<u32>(4294967295u, arg_1.x)))) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(~11650u, ~arg_1.x, ~u_input.b, 53961u), vec4<u32>(firstLeadingBit(u_input.d), ~arg_1.x, 1u, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-458f))), _wgslsmith_f_op_f32(floor(var_1.b.x)))), var_2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1365f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-328f * var_2.b.x)))) + vec3<f32>(_wgslsmith_f_op_f32(max(1067f, _wgslsmith_f_op_f32(min(-1139f, _wgslsmith_f_op_f32(-var_1.b.x))))), -1356f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1475f))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-861f * -128f), _wgslsmith_f_op_f32(-var_2.b.x), var_1.c)))));
}

fn func_2() -> Struct_1 {
    var var_0 = reverseBits(~(u_input.b << (_wgslsmith_dot_vec4_u32(~u_input.a, u_input.a) % 32u)));
    global0 = array<vec2<i32>, 17>();
    let var_1 = -1i;
    let var_2 = Struct_1(false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(var_1, u_input.a))), vec3<f32>(-2420f, _wgslsmith_f_op_f32(max(-1057f, -978f)), _wgslsmith_f_op_f32(f32(-1f) * -2532f))))), select(true, true, true));
    var_0 = u_input.e.x;
    return var_2;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<bool>) -> u32 {
    var var_0 = Struct_1(arg_2.a, arg_2.b, false);
    var var_1 = 4294967295u;
    var_1 = u_input.c;
    var_0 = arg_1;
    let var_2 = arg_2;
    return ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.d, ~countOneBits(79354u)), 14510u);
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec2<i32>, arg_3: vec2<i32>) -> Struct_1 {
    global0 = array<vec2<i32>, 17>();
    global0 = array<vec2<i32>, 17>();
    var var_0 = vec2<u32>(u_input.a.x, func_4(_wgslsmith_dot_vec3_i32(~vec3<i32>(1i, arg_3.x, arg_2.x), ~vec3<i32>(arg_2.x, arg_3.x, 4673i)) | (~arg_2.x << (_wgslsmith_dot_vec2_u32(u_input.e.zz, vec2<u32>(4294967295u, 53433u)) % 32u)), func_2(), arg_0, !(!(!vec4<bool>(arg_0.c, true, true, arg_0.c)))));
    var var_1 = Struct_1(arg_0.c & true, arg_0.b, any(select(!(!vec2<bool>(true, arg_0.c)), !(!vec2<bool>(arg_0.a, false)), select(vec2<bool>(arg_0.c, arg_0.c), !vec2<bool>(arg_0.a, true), select(vec2<bool>(arg_0.c, false), vec2<bool>(true, false), true)))));
    let var_2 = arg_0;
    return Struct_1(~var_0.x > reverseBits(_wgslsmith_add_u32(~1u, max(2369u, u_input.e.x))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.b + _wgslsmith_f_op_vec3_f32(arg_0.b - vec3<f32>(var_1.b.x, 674f, 347f))), vec3<f32>(_wgslsmith_div_f32(var_1.b.x, var_1.b.x), -239f, _wgslsmith_f_op_f32(var_1.b.x + var_2.b.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.b * var_2.b))))), true);
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: Struct_1) -> vec3<f32> {
    let var_0 = Struct_1(false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_3.b)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(722f, 1879f, arg_3.b.x)), vec3<f32>(arg_0.b.x, arg_3.b.x, 271f))))), false);
    global0 = array<vec2<i32>, 17>();
    let var_1 = !(!(!(!select(vec3<bool>(false, true, false), vec3<bool>(arg_2, var_0.c, arg_0.a), false))));
    let var_2 = arg_0;
    var var_3 = func_1(func_1(Struct_1(false, func_1(arg_0, arg_1, _wgslsmith_add_vec2_i32(global0[_wgslsmith_index_u32(u_input.b, 17u)], global0[_wgslsmith_index_u32(91687u, 17u)]), vec2<i32>(2147483647i, 51i)).b, any(!vec4<bool>(false, var_2.a, true, arg_2))), 0u, vec2<i32>(23985i, _wgslsmith_mod_i32(~(-2147483647i), countOneBits(2147483647i))), vec2<i32>(1i, 1i) | global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(23589u, arg_1), 17u)]), _wgslsmith_mod_u32(arg_1, 33364u) ^ 1u, vec2<i32>(23770i, 0i), (~select(global0[_wgslsmith_index_u32(138470u, 17u)], global0[_wgslsmith_index_u32(18444u, 17u)], false) | select(~vec2<i32>(-65619i, -1i), global0[_wgslsmith_index_u32(11997u | arg_1, 17u)], any(vec4<bool>(var_1.x, var_1.x, var_2.a, var_1.x)))) << (~firstLeadingBit(abs(u_input.a.wx)) % vec2<u32>(32u)));
    return _wgslsmith_f_op_vec3_f32(sign(var_2.b));
}

fn func_6(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_1(arg_0.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(arg_1.x, -209f), _wgslsmith_f_op_f32(-arg_0.b.x), arg_0.b.x), vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(-352f + 150f), _wgslsmith_f_op_f32(-arg_2.b.x)), !select(vec3<bool>(true, false, false), vec3<bool>(arg_0.a, arg_2.c, true), arg_0.c))), arg_1.xwz), false);
    var var_1 = func_2();
    let var_2 = -select(reverseBits(2147483647i), _wgslsmith_clamp_i32(~50447i, -21975i, select(_wgslsmith_div_i32(0i, 1i), _wgslsmith_mult_i32(-1i, 36198i), true)), !(!(!var_1.c)));
    var var_3 = Struct_1(arg_0.a, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_5(func_1(arg_2, 0u, vec2<i32>(var_2, var_2), global0[_wgslsmith_index_u32(494u, 17u)]), max(u_input.b, 47663u), arg_0.a, func_1(arg_0, u_input.b, vec2<i32>(var_2, -54899i), vec2<i32>(var_2, var_2)))).x * _wgslsmith_f_op_f32(round(1280f))), _wgslsmith_div_f32(795f, _wgslsmith_f_op_f32(1000f - 649f)), _wgslsmith_f_op_f32(-1000f + -693f)), u_input.d < (38037u | u_input.e.x));
    var_1 = func_2();
    return func_1(arg_2, 4294967295u, -(vec2<i32>(var_2, var_2) & ~global0[_wgslsmith_index_u32(74297u, 17u)]) & (_wgslsmith_clamp_vec2_i32(-global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)] | vec2<i32>(1i, var_2), select(vec2<i32>(var_2, -35618i), global0[_wgslsmith_index_u32(u_input.c, 17u)], vec2<bool>(false, true))) ^ reverseBits(~global0[_wgslsmith_index_u32(34705u, 17u)])), -abs(~(-global0[_wgslsmith_index_u32(0u, 17u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_1(any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(Struct_1(true, vec3<f32>(857f, -708f, 233f), true), ~u_input.b, all(vec3<bool>(false, true, false)), func_1(Struct_1(false, vec3<f32>(422f, -1000f, 1492f), false), 1u, global0[_wgslsmith_index_u32(8602u, 17u)], vec2<i32>(-1i, -41026i)))) - vec3<f32>(_wgslsmith_div_f32(-409f, -1276f), _wgslsmith_f_op_f32(f32(-1f) * -713f), 1f)), !all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1347f, 1145f, -1000f, 1000f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1801f, 2003f, -226f, 999f)))), func_1(func_2(), u_input.e.x, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, u_input.d), 17u)], global0[_wgslsmith_index_u32(u_input.b | 15439u, 17u)]), u_input.a.x);
    var var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(firstLeadingBit(-60348i), ~_wgslsmith_mod_i32(~79407i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, 3296i, 0i), vec4<i32>(-2147483647i, 1i, 0i, 0i)))), vec2<i32>(_wgslsmith_mod_i32(-abs(-15905i), -reverseBits(-2550i)), 1i));
    global0 = array<vec2<i32>, 17>();
    global0 = array<vec2<i32>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(max(-min(vec4<i32>(var_1.x, 73386i, 47087i, var_1.x), vec4<i32>(var_1.x, 50237i, -2147483647i, 0i)), vec4<i32>(var_1.x, abs(var_1.x), 1i, var_1.x)) & _wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, -112131i, var_1.x, var_1.x), -_wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, 1i, var_1.x, var_1.x), vec4<i32>(var_1.x, 0i, var_1.x, var_1.x))));
}

