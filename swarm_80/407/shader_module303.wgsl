struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: bool,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<f32, 31>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = !arg_0;
    var var_1 = vec4<i32>(select(-1i, ~firstLeadingBit(-3635i), all(!vec4<bool>(arg_0, var_0, arg_0, var_0))), abs(~(-1i)), _wgslsmith_mod_i32(2147483647i, ~(~(-2147483647i))), ~2868i) | (_wgslsmith_add_vec4_i32(-(vec4<i32>(2147483647i, -6960i, -15513i, 78963i) >> (vec4<u32>(u_input.a, 17074u, u_input.a, 70272u) % vec4<u32>(32u))), reverseBits(vec4<i32>(20341i, -1i, -9087i, -47067i)) >> (~vec4<u32>(51092u, 1u, u_input.a, u_input.a) % vec4<u32>(32u))) << (_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(1u, 1u)), 82936u, 1u, 51184u), vec4<u32>(u_input.a, 0u >> (u_input.a % 32u), ~u_input.a, firstTrailingBit(0u))) % vec4<u32>(32u)));
    var var_2 = all(select(!vec3<bool>(var_0, true, !arg_0), select(vec3<bool>(false, -1592f < global1[_wgslsmith_index_u32(u_input.a, 31u)], select(var_0, false, var_0)), vec3<bool>(false, arg_0, true), var_0), vec3<bool>(arg_0, any(!vec4<bool>(arg_0, var_0, false, var_0)), !any(vec2<bool>(true, false)))));
    var_2 = false;
    var_2 = true;
    return false;
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = 100856u;
    var var_1 = vec4<bool>(select(true, !(true || any(vec3<bool>(false, true, true))), false), false, (select(func_3(true), true, select(false, false, true)) & all(vec2<bool>(true, true))) || all(vec2<bool>(true, true)), select(true, true, all(vec3<bool>(true, true, true))));
    let var_2 = Struct_1(~max(~(~vec2<u32>(43480u, u_input.a)), _wgslsmith_div_vec2_u32(vec2<u32>(17492u, 0u), vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(0u, 110817u) % vec2<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1157f, global1[_wgslsmith_index_u32(u_input.a, 31u)], global1[_wgslsmith_index_u32(u_input.a, 31u)], 1270f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 31u)], 146f, arg_0, arg_0) - vec4<f32>(620f, global1[_wgslsmith_index_u32(0u, 31u)], arg_0, global1[_wgslsmith_index_u32(1u, 31u)]))))), !var_1.x, ~countOneBits(~_wgslsmith_clamp_u32(39460u, 6891u, u_input.a)), all(select(vec2<bool>(arg_0 == arg_0, true), select(vec2<bool>(true, true), vec2<bool>(true, var_1.x), var_1.x), var_1.x)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, var_2.b.x))), 967f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1221f + global1[_wgslsmith_index_u32(4294967295u, 31u)]) + var_2.b.x));
    var_1 = vec4<bool>(!var_1.x, (_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-476f - var_2.b.x))) < global1[_wgslsmith_index_u32(u_input.a, 31u)]) && !var_2.e, var_1.x, _wgslsmith_clamp_i32(-20291i, 1i, _wgslsmith_clamp_i32(~29169i, ~(-49048i), firstLeadingBit(-6607i))) != firstLeadingBit(1i));
    return var_2;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = max(_wgslsmith_add_vec3_u32(~vec3<u32>(arg_1.d, 1u, u_input.a), ~min(vec3<u32>(0u, arg_3.a.x, 1u), vec3<u32>(arg_1.a.x, u_input.a, 0u))) >> (_wgslsmith_mod_vec3_u32(~(~vec3<u32>(9786u, 0u, 0u)), select(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, arg_1.a.x, arg_3.d), vec3<u32>(u_input.a, arg_3.a.x, 102015u)), _wgslsmith_div_vec3_u32(vec3<u32>(arg_1.a.x, 33723u, 14988u), vec3<u32>(arg_1.d, 0u, arg_3.d)), select(vec3<bool>(false, arg_1.e, arg_3.c), vec3<bool>(true, arg_3.e, true), vec3<bool>(true, true, true)))) % vec3<u32>(32u)), ~_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, u_input.a, arg_3.d), vec3<u32>(16020u, 45920u, 95502u)), vec3<u32>(~21014u, abs(u_input.a), _wgslsmith_mult_u32(59308u, 51834u))));
    var var_1 = arg_3;
    let var_2 = reverseBits(select((~var_1.a >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))) >> (var_1.a % vec2<u32>(32u)), ~(~vec2<u32>(u_input.a, 25647u)), false));
    let var_3 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(-800f + global1[_wgslsmith_index_u32(1u, 31u)]))));
    let var_4 = ~(~(-_wgslsmith_dot_vec4_i32(max(vec4<i32>(2147483647i, 0i, -1i, 8936i), vec4<i32>(0i, 40847i, -2147483647i, -24381i)), vec4<i32>(1i, 91748i, 1i, 14024i))));
    return var_3;
}

fn func_1(arg_0: vec4<i32>, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    global0 = !arg_2.x;
    var var_0 = func_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 1f) - global1[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 31u)]), arg_1)), func_2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(select(u_input.a, ~arg_3.a.x, !arg_2.x), 31u)])), !select(arg_2.zy, !select(vec2<bool>(true, arg_3.e), vec2<bool>(true, arg_3.c), arg_2.xz), arg_2.zz), func_2(arg_1));
    var var_1 = true;
    global1 = array<f32, 31>();
    var_1 = false;
    return func_2(_wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(func_4(1628f, Struct_1(arg_3.a, vec4<f32>(arg_3.b.x, 1186f, -1223f, -488f), var_0.c, var_0.a.x, true), vec2<bool>(arg_2.x, true), arg_3).b.x + _wgslsmith_f_op_f32(f32(-1f) * -372f))));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_sub_u32(~_wgslsmith_mod_u32(arg_0.x, u_input.a), ~firstTrailingBit(func_4(_wgslsmith_f_op_f32(f32(-1f) * -1000f), func_4(global1[_wgslsmith_index_u32(0u, 31u)], arg_1, vec2<bool>(arg_1.c, true), arg_1), select(vec2<bool>(false, true), vec2<bool>(true, arg_1.c), arg_1.e), Struct_1(arg_0.yy, vec4<f32>(795f, -677f, 781f, arg_1.b.x), arg_1.e, arg_1.a.x, true)).d));
    var var_1 = 16988u;
    global1 = array<f32, 31>();
    global1 = array<f32, 31>();
    var var_2 = vec4<u32>(arg_1.d, _wgslsmith_dot_vec3_u32(firstTrailingBit(~arg_0), vec3<u32>(u_input.a, reverseBits(4294967295u), 4294967295u)), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0, 1u, 1u, 0u), ~vec4<u32>(u_input.a, 0u, arg_1.a.x, 50665u)), vec4<u32>(firstLeadingBit(u_input.a), var_0, _wgslsmith_dot_vec2_u32(arg_0.yx, vec2<u32>(arg_0.x, 34465u)), abs(67626u))), ~var_0) >> (vec4<u32>(33980u, select(func_1(vec4<i32>(-2147483647i, 0i, -1i, 2147483647i), -1398f, vec4<bool>(arg_1.e, arg_1.e, arg_1.e, arg_1.c), arg_1).d >> (abs(var_0) % 32u), _wgslsmith_mod_u32(select(var_0, arg_0.x, true), var_0), true), ~arg_0.x, arg_1.d) % vec4<u32>(32u));
    return Struct_1(~(~(~(arg_0.yz | arg_0.yy))), _wgslsmith_f_op_vec4_f32(-arg_1.b), arg_1.c, 31388u >> (arg_1.d % 32u), arg_1.c);
}

fn func_6(arg_0: Struct_1, arg_1: vec3<i32>) -> i32 {
    let var_0 = arg_0.e;
    let var_1 = !select(vec3<bool>(func_3(var_0), arg_0.c, true), select(!(!vec3<bool>(false, arg_0.c, true)), vec3<bool>(true, true, true), vec3<bool>(false || var_0, func_5(vec3<u32>(0u, arg_0.d, arg_0.a.x), Struct_1(arg_0.a, vec4<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x), true, 1u, arg_0.e)).c, arg_0.e)), !((var_0 | arg_0.e) & var_0));
    var var_2 = _wgslsmith_f_op_f32(ceil(169f));
    global1 = array<f32, 31>();
    global0 = func_2(-1395f).c;
    return -(~max(arg_1.x, arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 31>();
    let var_0 = ~vec2<i32>(func_6(func_5(min(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(0u, u_input.a, u_input.a)), func_1(vec4<i32>(-1i, -2147483647i, 2147483647i, -23533i), -708f, vec4<bool>(false, true, false, true), Struct_1(vec2<u32>(0u, 62753u), vec4<f32>(global1[_wgslsmith_index_u32(0u, 31u)], global1[_wgslsmith_index_u32(0u, 31u)], -1420f, global1[_wgslsmith_index_u32(u_input.a, 31u)]), true, u_input.a, false))), vec3<i32>(countOneBits(4128i), _wgslsmith_mod_i32(-172i, 28435i), 2147483647i)), 36514i);
    var var_1 = _wgslsmith_mod_u32(func_2(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 52399u), vec4<u32>(0u, u_input.a, u_input.a, 26817u)), 31u)]).a.x, ~64642u) >> (~u_input.a % 32u);
    global0 = var_0.x <= -1i;
    var var_2 = Struct_1(min(min(func_2(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 4294967295u, u_input.a), 31u)]).a, vec2<u32>(~0u, 1u)), vec2<u32>(22838u, u_input.a) << (vec2<u32>(u_input.a, 29764u) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(335f, global1[_wgslsmith_index_u32(50633u, 31u)], global1[_wgslsmith_index_u32(26830u, 31u)], 1120f), vec4<f32>(global1[_wgslsmith_index_u32(0u, 31u)], -1453f, global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)]))))), true, u_input.a, ~(~(u_input.a << (u_input.a % 32u))) == ~u_input.a);
    var_2 = Struct_1(~select(var_2.a, ~var_2.a, var_2.e), var_2.b, !(!all(vec2<bool>(var_2.e, var_2.c))), 1u, var_2.e);
    global1 = array<f32, 31>();
    global0 = var_2.e;
    let var_3 = min(~var_2.a, ~abs(vec2<u32>(8469u, var_2.a.x)) | vec2<u32>(firstTrailingBit(26045u), 58627u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1055f), ~_wgslsmith_mult_vec4_i32(~vec4<i32>(-19864i, -40907i, 1i, var_0.x), vec4<i32>(abs(8938i), ~var_0.x, firstTrailingBit(var_0.x), 0i)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(abs(54897u), 31u)]), _wgslsmith_div_vec2_f32(var_2.b.yy, vec2<f32>(814f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-365f)))))));
}

