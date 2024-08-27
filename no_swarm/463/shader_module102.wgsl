struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec4<u32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -78364i;

var<private> global1: vec2<bool>;

var<private> global2: array<u32, 20>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: i32) -> vec2<u32> {
    let var_0 = !vec3<bool>(global1.x, false, false);
    global2 = array<u32, 20>();
    var var_1 = arg_1.b.x;
    let var_2 = arg_2.x;
    var var_3 = arg_1;
    return var_3.a >> (_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(arg_1.a, ~vec2<u32>(0u, global2[_wgslsmith_index_u32(var_3.c, 20u)])), max(var_3.a, ~(arg_1.a << (var_3.a % vec2<u32>(32u))))) % vec2<u32>(32u));
}

fn func_2(arg_0: vec3<f32>, arg_1: u32) -> Struct_2 {
    global1 = !(!vec2<bool>(false, global1.x));
    global2 = array<u32, 20>();
    global2 = array<u32, 20>();
    var var_0 = Struct_4(!select(!(!vec2<bool>(global1.x, global1.x)), select(!vec2<bool>(global1.x, true), !vec2<bool>(global1.x, global1.x), vec2<bool>(true, true)), global1.x), Struct_2(true, Struct_1(func_3(!global1.x, Struct_1(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_1, 20u)], 20u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_1, 20u)], 20u)]), vec4<f32>(-129f, 1000f, arg_0.x, -824f), 0u), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 716f) + vec4<f32>(733f, 336f, 1000f, arg_0.x)), ~1i), vec4<f32>(_wgslsmith_div_f32(arg_0.x, arg_0.x), arg_0.x, 1472f, _wgslsmith_f_op_f32(select(963f, -1048f, true))), 0u), firstLeadingBit(2147483647i)), ~max(firstTrailingBit(~vec4<u32>(512u, global2[_wgslsmith_index_u32(13830u, 20u)], arg_1, 2575u)), _wgslsmith_div_vec4_u32(~vec4<u32>(arg_1, 1u, arg_1, global2[_wgslsmith_index_u32(arg_1, 20u)]), ~vec4<u32>(arg_1, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], 20u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 20u)], 20u)], 80109u))), vec4<f32>(1000f, _wgslsmith_f_op_f32(-arg_0.x), -643f, -1000f));
    let var_1 = var_0.a.x;
    return var_0.b;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> vec2<bool> {
    global1 = vec2<bool>(global1.x, global1.x);
    var var_0 = Struct_4(!(!vec2<bool>(global1.x, all(vec2<bool>(false, false)))), func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-250f, arg_1.b.b.x, -1501f)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.b.b.x, -581f, -2419f)))), arg_1.b.a.x), ~vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.b.a.x, global2[_wgslsmith_index_u32(4294967295u, 20u)], arg_1.b.a.x, 1u), vec4<u32>(4294967295u, arg_1.b.c, arg_1.b.c, 25196u)), ~vec4<u32>(global2[_wgslsmith_index_u32(arg_0.c, 20u)], arg_0.a.x, 86368u, 1u)), ~32223u, max(0u, ~arg_1.b.a.x), 1u), _wgslsmith_f_op_vec4_f32(arg_0.b - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.b.b.x), _wgslsmith_f_op_f32(-arg_1.b.b.x), 536f, _wgslsmith_f_op_f32(-676f * 1000f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, -1000f, arg_0.b.x, arg_0.b.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1676f, arg_0.b.x, -1085f, 2270f) * vec4<f32>(-289f, arg_1.b.b.x, 2888f, -887f))))));
    var_0 = Struct_4(vec2<bool>(select(all(vec2<bool>(var_0.b.a, false)) && true, !all(var_0.a), !(true && arg_1.a)), all(select(select(vec3<bool>(var_0.a.x, var_0.b.a, true), vec3<bool>(false, true, false), var_0.b.a), vec3<bool>(global1.x, var_0.b.a, arg_1.a), select(vec3<bool>(global1.x, true, var_0.b.a), vec3<bool>(true, arg_1.a, arg_1.a), var_0.a.x)))), func_2(arg_0.b.zyy, var_0.b.b.c), vec4<u32>(select(~var_0.c.x, countOneBits(_wgslsmith_add_u32(var_0.c.x, arg_1.b.c)), !any(vec4<bool>(false, false, false, arg_1.a))), arg_0.c, 0u, _wgslsmith_clamp_u32(50840u, global2[_wgslsmith_index_u32(1u, 20u)] | min(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.a.x, 20u)], 20u)], 62102u), global2[_wgslsmith_index_u32(1u, 20u)])), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, 120f, -416f, arg_0.b.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, -700f, arg_1.b.b.x, 619f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.b.b.x, var_0.d.x, 871f, 726f))), arg_0.b)), arg_0.b, true)));
    global2 = array<u32, 20>();
    global1 = select(vec2<bool>(false, true), select(select(var_0.a, select(vec2<bool>(true, true), select(vec2<bool>(var_0.a.x, false), var_0.a, var_0.a), var_0.a.x), arg_1.a), vec2<bool>(!var_0.b.a | all(var_0.a), any(!vec2<bool>(arg_1.a, arg_1.a))), global1.x), !var_0.a);
    return !(!var_0.a);
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: vec2<bool>, arg_3: bool) -> vec2<bool> {
    var var_0 = vec2<f32>(-427f, 1170f);
    var var_1 = func_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -267f) * _wgslsmith_div_f32(var_0.x, var_0.x))), -585f, -791f), global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(105930u, 20u)] << (_wgslsmith_add_u32(57562u, 72111u) % 32u), 20u)]);
    let var_2 = ~(~(~max(global2[_wgslsmith_index_u32(var_1.b.a.x, 20u)], 0u)) ^ ~(~global2[_wgslsmith_index_u32(var_1.b.c, 20u)] & ~var_1.b.c));
    let var_3 = _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32((vec4<i32>(50690i, u_input.d.x, var_1.c, -1i) & (vec4<i32>(u_input.d.x, var_1.c, 1039i, arg_0.x) & vec4<i32>(1i, u_input.a, u_input.b.x, -1i))) >> ((reverseBits(vec4<u32>(global2[_wgslsmith_index_u32(0u, 20u)], var_2, 0u, var_1.b.c)) >> (abs(vec4<u32>(1u, 1u, 1u, 58853u)) % vec4<u32>(32u))) % vec4<u32>(32u)), min(-abs(vec4<i32>(25485i, -22977i, var_1.c, -2147483647i)), vec4<i32>(-1i) * -vec4<i32>(-2926i, arg_0.x, u_input.b.x, var_1.c))), vec4<i32>(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(2147483647i), 32221i, var_1.c), abs(~vec3<i32>(u_input.b.x, 10644i, -32124i))), ~(-20449i), abs(arg_0.x)));
    let var_4 = _wgslsmith_add_u32(var_1.b.c, 6516u);
    return !(!vec2<bool>(any(select(vec4<bool>(global1.x, false, arg_2.x, false), vec4<bool>(arg_1, global1.x, true, arg_2.x), vec4<bool>(true, false, global1.x, arg_3))), var_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(reverseBits((-u_input.d >> (abs(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17906u, 20u)], 20u)], 20u)], 20u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 20u)], 20u)])) % vec2<u32>(32u))) ^ u_input.d), global1.x, select(!select(func_1(Struct_1(vec2<u32>(0u, 69424u), vec4<f32>(514f, -494f, -107f, 115f), 42778u), Struct_2(false, Struct_1(vec2<u32>(1u, global2[_wgslsmith_index_u32(5698u, 20u)]), vec4<f32>(1543f, -850f, -1817f, -710f), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12435u, 20u)], 20u)]), u_input.a)), vec2<bool>(true, global1.x), vec2<bool>(true, true)), select(!func_1(Struct_1(vec2<u32>(39749u, 28911u), vec4<f32>(-2212f, 2149f, 1582f, -233f), global2[_wgslsmith_index_u32(66422u, 20u)]), Struct_2(true, Struct_1(vec2<u32>(global2[_wgslsmith_index_u32(1u, 20u)], global2[_wgslsmith_index_u32(1u, 20u)]), vec4<f32>(-1000f, 1419f, 1412f, 1370f), 0u), 29425i)), select(vec2<bool>(true, false), !vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, global1.x)), vec2<bool>(false && global1.x, true)), any(select(select(vec4<bool>(false, global1.x, false, false), vec4<bool>(false, global1.x, global1.x, true), global1.x), !vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(false, global1.x, global1.x, global1.x)))), true);
    var var_0 = select(!(!(!select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(true, global1.x, global1.x)))), vec3<bool>(!((false && global1.x) | !global1.x), any(!vec3<bool>(global1.x, global1.x, true)), true), global1.x);
    global0 = abs(u_input.c);
    let var_1 = Struct_3(!(!global1.x), _wgslsmith_mod_i32(u_input.d.x, firstTrailingBit(~(-1i))), firstLeadingBit(vec3<u32>(_wgslsmith_sub_u32(firstLeadingBit(global2[_wgslsmith_index_u32(114541u, 20u)]), ~4294967295u), global2[_wgslsmith_index_u32(func_3(true, Struct_1(vec2<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(74537u, 20u)], 20u)]), vec4<f32>(642f, 1000f, 449f, 1000f), global2[_wgslsmith_index_u32(4294967295u, 20u)]), vec4<f32>(-437f, -2019f, 646f, -2740f), u_input.a).x >> (~1u % 32u), 20u)], _wgslsmith_mult_u32(3215u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(9308u, 20u)], 20u)]) | ~29465u)), Struct_1(firstTrailingBit(~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(56039u, 20u)], 20u)], 20u)], 20u)], 20u)]), vec2<u32>(28752u, 61566u))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-437f, -1264f, 264f, _wgslsmith_f_op_f32(f32(-1f) * -772f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-206f, 330f, 852f, 1126f)))), ~u_input.b.x == func_2(vec3<f32>(-1187f, 823f, -361f), 0u).c)), min(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(9550u, global2[_wgslsmith_index_u32(1u, 20u)], 219u, global2[_wgslsmith_index_u32(1u, 20u)]) << (vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(83686u, 20u)], 20u)], global2[_wgslsmith_index_u32(62987u, 20u)], 15546u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 20u)], 20u)]) % vec4<u32>(32u)), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(29104u, 20u)], 20u)], global2[_wgslsmith_index_u32(21108u, 20u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(9654u, 20u)], 20u)], 20u)], 0u)))));
    let var_2 = Struct_4(func_4(~(~vec2<i32>(-34092i, u_input.a)) >> ((vec2<u32>(var_1.d.c, 58007u) >> (_wgslsmith_div_vec2_u32(var_1.c.yy, vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(32268u, 20u)], 20u)], global2[_wgslsmith_index_u32(4294967295u, 20u)])) % vec2<u32>(32u))) % vec2<u32>(32u)), select(4294967295u < ~var_1.c.x, var_1.a, func_1(func_2(var_1.d.b.wxy, global2[_wgslsmith_index_u32(var_1.c.x, 20u)]).b, func_2(vec3<f32>(954f, -1286f, 695f), var_1.c.x)).x), vec2<bool>(true, all(vec4<bool>(false, var_1.a, var_0.x, false))), true), Struct_2(select(false, func_2(var_1.d.b.wxx, var_1.d.a.x).a, true) && false, var_1.d, 15425i), vec4<u32>(4294967295u, var_1.c.x, var_1.c.x, 54747u << (~abs(var_1.d.a.x) % 32u)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.d.b.x), _wgslsmith_f_op_f32(-var_1.d.b.x), _wgslsmith_f_op_f32(f32(-1f) * -2404f), 306f)))));
    var var_3 = ~vec4<i32>(_wgslsmith_add_i32(0i, _wgslsmith_div_i32(1i, -21438i)), var_1.b, 0i, -12217i);
    var var_4 = Struct_2(true, Struct_1(select(var_1.d.a, ~(~var_1.d.a), !func_4(vec2<i32>(-2655i, u_input.a), false, vec2<bool>(true, false), var_2.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-780f, 1062f, -739f, var_2.d.x), var_2.d)), var_1.d.b))), func_3(true, func_2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.d.x, var_1.d.b.x, 754f))), ~global2[_wgslsmith_index_u32(1u, 20u)]).b, var_1.d.b, var_2.b.c).x), _wgslsmith_add_i32(~(_wgslsmith_dot_vec4_i32(vec4<i32>(20254i, u_input.d.x, var_1.b, 0i), vec4<i32>(var_3.x, var_1.b, 23257i, -30802i)) << (_wgslsmith_mult_u32(4447u, 82199u) % 32u)), ~(~_wgslsmith_dot_vec2_i32(var_3.yx, var_3.yw))));
    var var_5 = var_4.b.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d.a.x, _wgslsmith_div_vec2_i32(var_3.xy, var_3.yy) & vec2<i32>(~_wgslsmith_add_i32(1i, -22735i), 602i), -vec4<i32>(~6477i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.x, var_3.x, var_4.c, 932i), vec4<i32>(var_1.b, -15111i, -2147483647i, 0i)), 1911i, var_1.b) << (select(var_2.c, vec4<u32>(var_1.d.c, ~var_1.c.x, 4294967295u, func_3(true, Struct_1(vec2<u32>(var_1.c.x, 50990u), vec4<f32>(var_1.d.b.x, var_2.b.b.b.x, 3705f, -1016f), global2[_wgslsmith_index_u32(var_1.c.x, 20u)]), vec4<f32>(-993f, var_1.d.b.x, var_1.d.b.x, 512f), -2147483647i).x), vec4<bool>(true, true, true, true)) % vec4<u32>(32u)), var_4.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_1.d.b.x, 1317f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.b.b.b.x)))) * var_2.d.x));
}

