struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<i32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<f32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10>;

var<private> global1: array<i32, 28> = array<i32, 28>(1i, 38513i, 1i, 2147483647i, -58495i, 45434i, 2147483647i, 20531i, -11990i, -1003i, 2147483647i, -12982i, -41408i, -6555i, 1i, 1i, i32(-2147483648), 35275i, i32(-2147483648), 42175i, 1i, -19010i, -11914i, -54264i, 0i, -1i, i32(-2147483648), 22946i);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> i32 {
    var var_0 = Struct_4(Struct_1(all(select(!vec3<bool>(arg_0.b.b, true, arg_0.b.b), select(vec3<bool>(arg_1.a, arg_0.b.a, arg_0.b.a), vec3<bool>(true, arg_0.b.a, arg_1.a), arg_0.b.b), !vec3<bool>(arg_1.d, arg_0.b.a, arg_1.d))), true, _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(arg_1.c, _wgslsmith_clamp_vec3_i32(arg_1.c, vec3<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 28u)], 1i, arg_1.e), arg_1.c)), abs(vec3<i32>(arg_1.e, 2147483647i, arg_1.c.x)) << (u_input.b % vec3<u32>(32u))), !arg_0.b.d, ~1i));
    var var_1 = Struct_3(arg_0.b, _wgslsmith_sub_vec2_u32(select(vec2<u32>(4294967295u, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))), u_input.b.xy, !vec2<bool>(arg_0.b.b, false)), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(~u_input.b.yy, u_input.b.zz), u_input.b.zx)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1282f - arg_2), _wgslsmith_f_op_f32(abs(-514f)), _wgslsmith_f_op_f32(ceil(1297f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(1305f, 746f, arg_2), vec3<f32>(-1127f, -227f, 1870f)))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(round(arg_2)), _wgslsmith_div_f32(-1145f, 309f)))))));
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(625f * -1023f))))));
    var_1 = Struct_3(Struct_1(select(all(select(vec3<bool>(true, arg_0.b.a, false), vec3<bool>(false, var_1.a.b, false), vec3<bool>(var_0.a.d, true, arg_0.b.d))), arg_0.b.d, false), true, _wgslsmith_mod_vec3_i32(abs(var_0.a.c), arg_0.b.c), var_1.a.a & !all(vec4<bool>(false, true, var_1.a.d, var_0.a.d)), firstLeadingBit(select(i32(-1i) * -38429i, var_0.a.c.x ^ var_0.a.c.x, false || arg_1.b))), _wgslsmith_add_vec2_u32(~abs(_wgslsmith_div_vec2_u32(u_input.b.zy, vec2<u32>(var_1.b.x, 1u))), reverseBits(u_input.b.xz >> (var_1.b % vec2<u32>(32u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(var_1.d)), _wgslsmith_f_op_vec3_f32(-var_1.e))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_1.d, vec3<f32>(arg_0.a, arg_0.a, -1287f), vec3<bool>(false, arg_1.b, arg_0.b.d))), _wgslsmith_f_op_vec3_f32(var_1.c * var_1.c)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_f_op_f32(-arg_2)), -205f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(arg_2))))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(var_1.e)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-295f, -1388f, -604f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.x, var_1.c.x, arg_2) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(-255f, arg_0.a, arg_0.c.x), var_1.c), vec3<f32>(var_1.d.x, arg_0.a, -1000f)))))));
    global1 = array<i32, 28>();
    return 62064i;
}

fn func_2(arg_0: i32) -> vec4<bool> {
    var var_0 = Struct_4(Struct_1(true, true, vec3<i32>(max(global0[_wgslsmith_index_u32(0u, 10u)], 0i), func_3(Struct_2(200f, Struct_1(false, false, vec3<i32>(16091i, u_input.a, arg_0), false, 8004i), vec2<f32>(-809f, -271f), 2147483647i), Struct_1(true, false, vec3<i32>(-1i, global0[_wgslsmith_index_u32(u_input.b.x, 10u)], global0[_wgslsmith_index_u32(14865u, 10u)]), true, 2147483647i), -1156f), 70935i) ^ vec3<i32>(1i, -2147483647i, 1i), !(global1[_wgslsmith_index_u32(abs(4294967295u), 28u)] != reverseBits(u_input.a)), _wgslsmith_add_i32(-10877i, _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(u_input.b.x, 28u)] & -9153i, 28149i))));
    var_0 = Struct_4(var_0.a);
    var_0 = Struct_4(var_0.a);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(1513f - -2640f), var_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1727f))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1071f, 1234f), vec2<f32>(-894f, -220f))))), global1[_wgslsmith_index_u32(u_input.b.x, 28u)]);
    var var_2 = var_1;
    return !select(!(!select(vec4<bool>(var_2.b.a, var_0.a.a, false, true), vec4<bool>(true, true, false, var_0.a.d), false)), vec4<bool>(true, var_2.b.d, var_2.b.b, _wgslsmith_div_i32(arg_0, var_1.d) > global1[_wgslsmith_index_u32(u_input.b.x, 28u)]), _wgslsmith_f_op_f32(select(var_2.a, _wgslsmith_f_op_f32(-720f + 561f), false)) >= 420f);
}

fn func_1() -> i32 {
    global1 = array<i32, 28>();
    var var_0 = _wgslsmith_div_i32(-7458i, 1i);
    global0 = array<i32, 10>();
    var var_1 = !func_2(27874i << (abs(u_input.b.x ^ u_input.b.x) % 32u));
    global1 = array<i32, 28>();
    return _wgslsmith_div_i32(min(53518i, ~_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-19585i, 5586i, -2147483647i)), vec3<i32>(u_input.a, 63352i, global1[_wgslsmith_index_u32(u_input.b.x, 28u)]))), -27847i);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec3<f32>) -> Struct_2 {
    let var_0 = u_input.b;
    var var_1 = vec3<bool>(true, any(select(select(select(vec4<bool>(arg_1.b, arg_1.a, false, true), vec4<bool>(false, arg_2.a.d, false, false), arg_1.a), !vec4<bool>(arg_1.a, arg_1.b, arg_1.d, true), select(arg_2.a.d, arg_2.a.d, true)), vec4<bool>(false, arg_1.a, func_2(-1i).x, true), arg_2.a.a)), arg_1.d);
    let var_2 = vec4<bool>(any(!(!(!vec3<bool>(arg_2.a.b, false, false)))), arg_1.a, arg_3.x >= 239f, arg_2.a.d);
    var var_3 = countOneBits(vec4<u32>(arg_2.b.x, 3119u, ~6828u, ~1u) | vec4<u32>(20008u, 32306u, ~var_0.x, ~arg_2.b.x)) << (~(~((vec4<u32>(arg_0, var_0.x, 4294967295u, var_0.x) << (vec4<u32>(arg_0, var_0.x, 0u, 20096u) % vec4<u32>(32u))) << (_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_0.x, u_input.b.x, 4294967295u), vec4<u32>(u_input.b.x, 1u, var_0.x, 1u)) % vec4<u32>(32u)))) % vec4<u32>(32u));
    var var_4 = Struct_1(false, -1480f <= arg_2.c.x, arg_1.c, true, ~_wgslsmith_dot_vec2_i32(min(arg_2.a.c.yz, arg_2.a.c.xy) >> (select(var_3.xx, var_3.xx, true) % vec2<u32>(32u)), arg_2.a.c.zy));
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(156f)) * _wgslsmith_f_op_f32(step(-126f, arg_2.c.x))) * _wgslsmith_div_f32(arg_2.e.x, _wgslsmith_div_f32(1000f, 1000f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-666f)), _wgslsmith_f_op_f32(-1288f + 902f)) + -1371f)), Struct_1(any(select(func_2(arg_2.a.c.x).zw, vec2<bool>(true, true), select(vec2<bool>(false, var_1.x), var_1.zx, var_1.yz))), !all(!vec4<bool>(false, true, var_1.x, false)), vec3<i32>(-1i) * -(var_4.c & var_4.c), select(u_input.a < 0i, select(!arg_1.b, all(vec2<bool>(arg_2.a.d, var_4.b)), true), _wgslsmith_f_op_f32(floor(arg_3.x)) <= -1000f), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(var_0.xy, arg_2.b), 10u)] >> (0u % 32u)), vec2<f32>(-1442f, _wgslsmith_f_op_f32(-arg_3.x)), max(min(-(arg_1.c.x | -2147483647i), 2147483647i), var_4.e));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: f32) -> Struct_1 {
    let var_0 = ~global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 30131u), abs(~u_input.b)), _wgslsmith_dot_vec3_u32(~u_input.b, vec3<u32>(u_input.b.x, 4294967295u, 1u)) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(65344u, 1u, 26200u, 77350u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)))), 28u)];
    return func_4(_wgslsmith_div_u32(4294967295u, countOneBits(~firstLeadingBit(29993u))), func_4(~u_input.b.x, func_4(u_input.b.x, arg_0.b, Struct_3(Struct_1(arg_0.b.b, arg_0.b.b, vec3<i32>(arg_0.d, -1i, global0[_wgslsmith_index_u32(u_input.b.x, 10u)]), arg_0.b.d, var_0), vec2<u32>(106734u, u_input.b.x) & u_input.b.xz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2368f, arg_0.c.x, arg_0.c.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.x, -1000f, 859f) + vec3<f32>(arg_2, arg_2, arg_0.c.x)), vec3<f32>(arg_0.c.x, arg_0.a, 804f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1, 263f, arg_0.c.x), vec3<f32>(-586f, arg_2, arg_2))) + _wgslsmith_div_vec3_f32(vec3<f32>(-1114f, arg_2, 943f), vec3<f32>(arg_0.a, arg_1, arg_0.c.x)))).b, Struct_3(func_4(firstTrailingBit(u_input.b.x), func_4(u_input.b.x, arg_0.b, Struct_3(Struct_1(false, arg_0.b.b, arg_0.b.c, true, var_0), u_input.b.zz, vec3<f32>(arg_2, arg_1, 376f), vec3<f32>(-1841f, -259f, 1000f), vec3<f32>(968f, 743f, 323f)), vec3<f32>(arg_2, 796f, 697f)).b, Struct_3(arg_0.b, u_input.b.xz, vec3<f32>(1052f, 367f, arg_1), vec3<f32>(-2054f, arg_0.a, arg_0.c.x), vec3<f32>(571f, arg_1, arg_1)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2, arg_1, -623f), vec3<f32>(880f, 370f, arg_2)))).b, ~vec2<u32>(0u, u_input.b.x), vec3<f32>(arg_1, 127f, 232f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1125f, 1357f, -227f) - vec3<f32>(arg_1, arg_0.a, arg_2))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1, arg_0.a, -737f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_1, arg_1)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, 1043f, arg_1))))).b, Struct_3(Struct_1(!(474f > arg_2), arg_0.b.b & !arg_0.b.a, vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], 1i, -2147483647i), arg_0.b.a, -var_0), vec2<u32>(_wgslsmith_div_u32(u_input.b.x >> (u_input.b.x % 32u), abs(0u)), _wgslsmith_add_u32(u_input.b.x, _wgslsmith_sub_u32(59184u, u_input.b.x))), vec3<f32>(494f, arg_2, arg_2), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2, arg_0.a, arg_1))) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1, arg_2, -835f), vec3<f32>(arg_0.a, arg_1, 762f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1355f, -1680f, -810f))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1271f, -818f, -1000f)))), vec3<f32>(-2411f, _wgslsmith_f_op_f32(round(1018f)), -2120f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-979f - arg_2), _wgslsmith_f_op_f32(floor(438f)), _wgslsmith_f_op_f32(-223f + arg_0.c.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.c.x, arg_1, arg_1), vec3<f32>(arg_0.a, -584f, 800f), arg_0.b.d)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1319f, 1000f, 359f))))))).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(false, true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1347f + _wgslsmith_f_op_f32(f32(-1f) * -354f)))) <= -756f);
    global0 = array<i32, 10>();
    let var_1 = func_5(func_4(~firstLeadingBit(_wgslsmith_mult_u32(0u, 1574u)), Struct_1(var_0.x | (u_input.b.x > 30563u), ~global0[_wgslsmith_index_u32(u_input.b.x, 10u)] <= ~global1[_wgslsmith_index_u32(4294967295u, 28u)], _wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(global0[_wgslsmith_index_u32(69093u, 10u)], 16732i, u_input.a)), ~vec3<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 28u)], global1[_wgslsmith_index_u32(14678u, 28u)], u_input.a)), false, abs(func_1())), Struct_3(Struct_1(false, var_0.x, _wgslsmith_add_vec3_i32(vec3<i32>(-1i, -2147483647i, 0i), vec3<i32>(u_input.a, -19559i, global0[_wgslsmith_index_u32(u_input.b.x, 10u)])), any(var_0.zz), reverseBits(2147483647i)), ~_wgslsmith_sub_vec2_u32(u_input.b.xz, vec2<u32>(15103u, u_input.b.x)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(170f, -1162f, 1538f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(686f, 1586f, -548f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-600f, -395f, 1539f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1593f, 1255f, -331f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-219f, 1592f, 823f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-943f, -1455f, -1379f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-154f, -634f, -679f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(444f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1293f))))))));
    var var_2 = ~abs(_wgslsmith_add_vec3_u32(u_input.b, ~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.b.x, 95046u), vec3<u32>(6310u, u_input.b.x, 83156u), u_input.b)));
    var var_3 = Struct_4(func_4(firstLeadingBit(4294967295u), func_4(~(u_input.b.x >> (var_2.x % 32u)), Struct_1(false, true, -vec3<i32>(0i, global0[_wgslsmith_index_u32(u_input.b.x, 10u)], u_input.a), !var_0.x, ~10094i), Struct_3(var_1, ~vec2<u32>(u_input.b.x, 0u), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2120f, -490f, -178f) + vec3<f32>(-482f, -1000f, -804f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(135f, 489f, -778f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(674f, 882f, 977f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(808f, -371f, 962f), vec3<f32>(1322f, 1287f, -1741f), var_0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1693f, -561f, 885f)))).b, Struct_3(var_1, _wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(4294967295u, u_input.b.x)), vec2<u32>(u_input.b.x, u_input.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(913f, -1199f, -1569f), vec3<f32>(-677f, -1133f, -391f))) - vec3<f32>(129f, -111f, 463f)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(661f, -946f, -1000f), vec3<f32>(1316f, -452f, -1428f))))), vec3<f32>(_wgslsmith_f_op_f32(-132f + -855f), -1503f, -229f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-173f, -690f, _wgslsmith_f_op_f32(step(-284f, 1471f))), vec3<f32>(_wgslsmith_f_op_f32(-1730f + -1566f), -1144f, -1532f)))).b);
    var var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1454f) * _wgslsmith_div_f32(545f, 657f))));
    var var_5 = Struct_4(Struct_1(false, var_1.b || !(global0[_wgslsmith_index_u32(0u, 10u)] < var_3.a.e), func_5(func_4(4294967295u | var_2.x, Struct_1(var_1.a, true, vec3<i32>(-11059i, 6559i, global1[_wgslsmith_index_u32(53028u, 28u)]), false, 2147483647i), Struct_3(Struct_1(false, var_1.b, vec3<i32>(var_1.c.x, u_input.a, 0i), var_0.x, -2147483647i), vec2<u32>(44799u, 0u), vec3<f32>(-200f, -1089f, -1369f), vec3<f32>(-930f, -120f, 2022f), vec3<f32>(-542f, 1022f, 1048f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-842f, -1642f, 1000f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(543f + -1509f), func_4(1u, Struct_1(var_0.x, false, var_1.c, false, 2147483647i), Struct_3(Struct_1(var_3.a.d, false, var_1.c, var_1.d, u_input.a), u_input.b.yz, vec3<f32>(-616f, -176f, 371f), vec3<f32>(-1227f, 845f, -134f), vec3<f32>(365f, 446f, 193f)), vec3<f32>(-1685f, -795f, -440f)).c.x)), -931f).c, !(!var_3.a.a) && any(var_0.xx), _wgslsmith_dot_vec2_i32(var_3.a.c.xx, var_3.a.c.zx)));
    var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -769f) - -1030f))), -377f);
    var var_6 = firstTrailingBit(u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.b.x, min(1u, _wgslsmith_div_u32(32093u, u_input.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(950f, -1671f) + vec2<f32>(670f, 530f))))))), ~(~(select(vec4<u32>(24261u, 8810u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 59879u, var_2.x, 24548u), var_3.a.b) << (firstLeadingBit(vec4<u32>(1u, 77370u, var_2.x, var_2.x)) % vec4<u32>(32u)))));
}

