struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec4<bool>,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: Struct_3,
    d: Struct_3,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14>;

var<private> global1: array<i32, 28>;

var<private> global2: bool;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: Struct_3) -> vec4<f32> {
    return arg_0.d;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> f32 {
    return arg_3;
}

fn func_2() -> Struct_3 {
    var var_0 = true;
    var var_1 = all(vec2<bool>(true, _wgslsmith_div_i32(2147483647i, u_input.a.x) >= abs(u_input.a.x))) || !(_wgslsmith_f_op_f32(f32(-1f) * -200f) < _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec2<u32>(4294967295u, 0u), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 14u)], 28u)], vec4<bool>(true, true, true, true), vec4<f32>(430f, 1283f, 165f, 844f), 376f), Struct_3(vec4<i32>(u_input.a.x, -41196i, -4693i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(19559u, 14u)], 28u)])), vec3<f32>(-2195f, -1316f, -500f), Struct_3(vec4<i32>(u_input.a.x, -19678i, u_input.a.x, u_input.a.x)))), Struct_1(vec2<u32>(30009u, global0[_wgslsmith_index_u32(4294967295u, 14u)]), 11826i, vec4<bool>(false, true, true, false), vec4<f32>(1097f, -150f, -940f, -1971f), -1000f), global0[_wgslsmith_index_u32(~1u, 14u)], _wgslsmith_f_op_f32(sign(336f)))));
    let var_2 = Struct_3(max(-_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21484u, 14u)], 14u)], 14u)], 28u)], u_input.a.x, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22695u, 14u)], 28u)])), abs(vec4<i32>(-1i, global1[_wgslsmith_index_u32(0u, 28u)], -2147483647i, 0i))), select(vec4<i32>(abs(u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, 1i, u_input.a.x), vec4<i32>(0i, u_input.a.x, global1[_wgslsmith_index_u32(52716u, 28u)], u_input.a.x)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 68010u, 4294967295u, 101712u), vec4<u32>(4294967295u, 4294967295u, 2163u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20954u, 14u)], 14u)])), 28u)], u_input.a.x ^ 0i), reverseBits(firstTrailingBit(vec4<i32>(u_input.a.x, 9046i, u_input.a.x, -17777i))), true)));
    global0 = array<u32, 14>();
    let var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2104f, 370f, 950f, -1688f))), vec4<f32>(-557f, -356f, 2771f, 1441f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(302f, -768f, 898f, 1000f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -143f)), 4051f, -239f, _wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec2<u32>(2997u, global0[_wgslsmith_index_u32(4294967295u, 14u)]), 0i, vec4<bool>(true, true, false, false), vec4<f32>(872f, 824f, 1000f, 1870f), 1998f), Struct_3(var_2.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2144f, 111f, -295f)), var_2)).x), !select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, false), true)))));
    return Struct_3(select(-vec4<i32>(_wgslsmith_mult_i32(0i, -3671i), _wgslsmith_dot_vec4_i32(var_2.a, var_2.a), -19157i, u_input.a.x), firstTrailingBit(vec4<i32>(-var_2.a.x, -13394i, _wgslsmith_div_i32(-2147483647i, u_input.a.x), global1[_wgslsmith_index_u32(0u, 28u)])), select(global0[_wgslsmith_index_u32(~0u, 14u)] > 42165u, 1i <= u_input.a.x, true)));
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    let var_0 = arg_0.a.x;
    let var_1 = Struct_5(select(~abs(vec2<u32>(43296u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21060u, 14u)], 14u)], 14u)]) >> (vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13576u, 14u)], 14u)], global0[_wgslsmith_index_u32(61078u, 14u)]) % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(vec2<u32>(0u >> (global0[_wgslsmith_index_u32(11442u, 14u)] % 32u), select(global0[_wgslsmith_index_u32(40608u, 14u)], 1u, false)), firstLeadingBit(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 14u)], 14u)], 14u)], 13997u) >> (vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 40863u) % vec2<u32>(32u)))), select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), true | all(vec2<bool>(false, true)))), !(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true)))), func_2(), Struct_3(vec4<i32>(14515i & global1[_wgslsmith_index_u32(4294967295u, 28u)], func_2().a.x, 1i, ~(-2147483647i)) | ((vec4<i32>(-40594i, 20803i, var_0, -1i) << (vec4<u32>(0u, 1447u, global0[_wgslsmith_index_u32(0u, 14u)], 29952u) % vec4<u32>(32u))) ^ vec4<i32>(u_input.a.x, -1i, 51163i, 2147483647i))), vec4<bool>(any(vec3<bool>(true, true, any(vec4<bool>(false, false, false, false)))), false, any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), any(vec4<bool>(true, true, true, true))));
    var var_2 = Struct_4(-14743i);
    let var_3 = u_input.a.yy;
    global1 = array<i32, 28>();
    return Struct_2(Struct_1(firstTrailingBit(var_1.a), -_wgslsmith_mod_i32(0i, _wgslsmith_div_i32(-1i, var_1.c.a.x)), var_1.b, vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1012f, -1096f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1069f + 1264f), -125f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-505f * 197f)), 185f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -312f))), true && var_1.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_4(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -933f), _wgslsmith_f_op_f32(1852f * 1000f), _wgslsmith_f_op_f32(sign(-602f)), _wgslsmith_f_op_f32(382f * 555f)), Struct_1(vec2<u32>(55063u, 4294967295u) & vec2<u32>(0u, var_1.a.x), var_1.c.a.x, var_1.b, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-439f, -136f, -293f, 575f), vec4<f32>(-217f, -557f, -301f, -704f))), 786f), ~var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec4<f32>(476f, -506f, 467f, -882f), Struct_1(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.a.x, 14u)], 14u)], 14u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3581u, 14u)], 14u)]), global1[_wgslsmith_index_u32(var_1.a.x, 28u)], var_1.e, vec4<f32>(1622f, 566f, 1000f, 1123f), -1000f), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.a.x, 14u)], 14u)], 14u)], 486f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-517f, 1401f, -629f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 497f, 508f) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(480f, 187f, -1619f), vec3<f32>(-570f, 304f, -209f)))))), firstLeadingBit(vec2<i32>(_wgslsmith_mod_i32(var_0, arg_0.a.x), select(global1[_wgslsmith_index_u32(36497u, 28u)], 41897i, false)) ^ _wgslsmith_sub_vec2_i32(vec2<i32>(11175i, 1993i), vec2<i32>(-1i, var_0) | var_3)));
}

fn func_5(arg_0: Struct_2, arg_1: i32) -> Struct_2 {
    var var_0 = 83438u;
    var var_1 = true == arg_0.b;
    global1 = array<i32, 28>();
    var var_2 = func_1(Struct_3(~(-_wgslsmith_mod_vec4_i32(vec4<i32>(-53885i, -1i, global1[_wgslsmith_index_u32(47494u, 28u)], global1[_wgslsmith_index_u32(108623u, 28u)]), vec4<i32>(-26046i, global1[_wgslsmith_index_u32(19951u, 28u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.a.a.x, 14u)], 14u)], 28u)], -4900i))))).e;
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1287f))));
    return Struct_2(func_1(func_2()).a, false, arg_0.d.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(arg_0.a.d.zzz)), vec3<f32>(-1000f, _wgslsmith_div_f32(821f, -235f), arg_0.d.x)))), u_input.a.yy);
}

fn func_6(arg_0: i32, arg_1: Struct_2, arg_2: f32, arg_3: f32) -> vec3<bool> {
    global0 = array<u32, 14>();
    let var_0 = _wgslsmith_mod_vec3_u32(reverseBits(countOneBits(vec3<u32>(arg_1.a.a.x, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], ~32255u))), vec3<u32>(func_1(func_2()).a.a.x, ~(~4294967295u), global0[_wgslsmith_index_u32(98042u, 14u)]) << (_wgslsmith_sub_vec3_u32(vec3<u32>(max(global0[_wgslsmith_index_u32(arg_1.a.a.x, 14u)], 18669u), arg_1.a.a.x, arg_1.a.a.x | arg_1.a.a.x), (vec3<u32>(arg_1.a.a.x, arg_1.a.a.x, arg_1.a.a.x) << (vec3<u32>(arg_1.a.a.x, global0[_wgslsmith_index_u32(arg_1.a.a.x, 14u)], arg_1.a.a.x) % vec3<u32>(32u))) | ~vec3<u32>(11089u, arg_1.a.a.x, 24033u)) % vec3<u32>(32u)));
    let var_1 = Struct_5(var_0.xz, select(arg_1.a.c, !vec4<bool>(arg_1.a.c.x, true, all(vec3<bool>(false, arg_1.b, arg_1.b)), false), select(_wgslsmith_mod_u32(var_0.x, 1u) >= var_0.x, true, true)), func_2(), func_2(), func_5(arg_1, arg_1.a.b).a.c);
    global1 = array<i32, 28>();
    let var_2 = vec3<i32>(-_wgslsmith_add_i32(arg_1.a.b, 26866i), -15224i, _wgslsmith_mult_i32(~(-func_1(Struct_3(vec4<i32>(global1[_wgslsmith_index_u32(0u, 28u)], arg_1.e.x, -45646i, arg_0))).a.b), i32(-1i) * -(~0i)));
    return vec3<bool>(arg_1.a.c.x, func_5(arg_1, ~(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 14u)], 28u)] << (4294967295u % 32u))).b | any(var_1.b), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false), select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), true), !(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false))), func_6(u_input.a.x, func_5(func_1(Struct_3(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), u_input.a.x), _wgslsmith_f_op_f32(-807f + -1000f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-837f - -511f), -246f)))), vec3<bool>(true, false, true), vec3<bool>(true, true, true));
    let var_1 = Struct_3(abs(vec4<i32>(~global1[_wgslsmith_index_u32(0u, 28u)], countOneBits(-2147483647i), -2147483647i, -2147483647i << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 14u)], 14u)], 14u)], 14u)] % 32u))) ^ select(vec4<i32>(u_input.a.x | 38897i, 2147483647i, reverseBits(-2147483647i), 39204i), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(-22284i, 37364i, u_input.a.x, 32831i)), _wgslsmith_div_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(2049u, 28u)], -4497i, 8415i, u_input.a.x), vec4<i32>(-1i, global1[_wgslsmith_index_u32(5954u, 28u)], global1[_wgslsmith_index_u32(46858u, 28u)], u_input.a.x))), vec4<bool>(true, var_0.x, false, var_0.x)));
    let var_2 = Struct_4(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(-u_input.a, vec3<i32>(u_input.a.x, _wgslsmith_div_i32(0i, -2147483647i), -var_1.a.x)), select(-1i, 1i, true)));
    global0 = array<u32, 14>();
    let var_3 = Struct_5(vec2<u32>(50568u, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(42604u, 14u)], 14u)], _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(1u, 14u)], 1u)) << (~(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43429u, 14u)], 14u)] << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(69219u, 14u)], 14u)] % 32u)) % 32u)), vec4<bool>(true, var_0.x, func_1(Struct_3(~vec4<i32>(1i, 1i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37399u, 14u)], 28u)], -9610i))).b, var_0.x), var_1, Struct_3(var_1.a), func_1(func_2()).a.c);
    global2 = any(var_3.b.ww);
    global2 = false | (var_1.a.x > 1i);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 46404u, global0[_wgslsmith_index_u32(4294967295u, 14u)], 105883u), vec4<u32>(global0[_wgslsmith_index_u32(var_3.a.x, 14u)], global0[_wgslsmith_index_u32(var_3.a.x, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)], 35095u))));
}

