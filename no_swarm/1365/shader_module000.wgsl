struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: array<i32, 8> = array<i32, 8>(-1i, -30066i, -1i, 1i, 1i, -1i, -3785i, 0i);

var<private> global2: array<vec4<bool>, 28> = array<vec4<bool>, 28>(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true));

var<private> global3: array<i32, 1> = array<i32, 1>(2147483647i);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(select(~(-1i), -u_input.a.x, select(false, false, true)), _wgslsmith_dot_vec3_i32(u_input.a, _wgslsmith_mult_vec3_i32(u_input.a, u_input.a)), ~10115i, global3[_wgslsmith_index_u32(1u, 1u)]), vec4<i32>(0i, _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 15418u), vec2<u32>(113259u, 84043u)), 1u)], -1i), _wgslsmith_sub_i32(_wgslsmith_sub_i32(19726i, u_input.b), u_input.b), 1i), vec4<i32>(18755i, abs(-2147483647i), abs(global1[_wgslsmith_index_u32(reverseBits(1u), 8u)]), -2147483647i)), ~_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(3109i, u_input.a.x, 2147483647i, 1i), vec4<i32>(-57780i, u_input.a.x, global1[_wgslsmith_index_u32(4294967295u, 8u)], 0i)), vec4<i32>(-25481i, global3[_wgslsmith_index_u32(61189u, 1u)], 0i, -2147483647i)), vec4<i32>(~global1[_wgslsmith_index_u32(494u, 8u)], i32(-1i) * -9i, global1[_wgslsmith_index_u32(1u, 8u)], -global3[_wgslsmith_index_u32(0u, 1u)])));
    var var_1 = !(true || all(vec4<bool>(true, true, true, true)));
    let var_2 = Struct_1(vec2<bool>(_wgslsmith_f_op_f32(step(-103f, _wgslsmith_f_op_f32(f32(-1f) * -1356f))) > -829f, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2210f), _wgslsmith_f_op_f32(569f - 1167f))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1684f, -371f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1031f, -203f) * vec2<f32>(266f, 1193f)))))), firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)), select(_wgslsmith_clamp_vec3_i32(~u_input.a, -u_input.a, vec3<i32>(var_0, 52953i, var_0)), vec3<i32>(0i, _wgslsmith_div_i32(var_0, -30943i), min(global1[_wgslsmith_index_u32(1u, 8u)], global3[_wgslsmith_index_u32(74825u, 1u)])), select(true, true, true)) & (_wgslsmith_mod_vec3_i32(~u_input.a, -u_input.a) | min(u_input.a, firstLeadingBit(u_input.a))));
    global0 = -28091i;
    let var_3 = ~(~(~max(~var_2.c.x, var_2.c.x | 4294967295u)));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(var_2.b.x))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: vec3<i32>) -> u32 {
    global0 = -2147483647i;
    global0 = -1i;
    var var_0 = Struct_1(vec2<bool>(true, false), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(659f, -1991f, false)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1368f))))), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(~(~vec4<u32>(42908u, 15717u, 5885u, 17413u)), vec4<u32>(~arg_1.x, arg_0.x ^ arg_1.x, 69633u, 70918u)), vec4<u32>(1496u, arg_1.x, max(1u, 22165u) & ~arg_1.x, max(arg_0.x & 2310u, _wgslsmith_mult_u32(0u, arg_1.x)))), u_input.a);
    var var_1 = all(select(vec4<bool>(all(vec4<bool>(true, var_0.a.x, true, false)), true, !var_0.a.x, true), !global2[_wgslsmith_index_u32(arg_0.x, 28u)], select(select(!global2[_wgslsmith_index_u32(arg_0.x, 28u)], !vec4<bool>(var_0.a.x, false, var_0.a.x, var_0.a.x), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, arg_1.x, arg_0.x), 28u)]), select(select(global2[_wgslsmith_index_u32(4294967295u, 28u)], vec4<bool>(false, var_0.a.x, var_0.a.x, true), var_0.a.x), !global2[_wgslsmith_index_u32(3355u, 28u)], select(false, true, true)), _wgslsmith_f_op_f32(235f + var_0.b.x) < 1643f)));
    global2 = array<vec4<bool>, 28>();
    return _wgslsmith_mod_u32(arg_1.x, firstLeadingBit(~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(arg_1, vec4<u32>(arg_0.x, var_0.c.x, 34874u, arg_0.x), vec4<u32>(14768u, arg_1.x, 30461u, 113936u)), vec4<u32>(0u, 65172u, arg_1.x, 0u))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global1 = array<i32, 8>();
    var var_0 = arg_2;
    var_0 = Struct_1(!vec2<bool>(~arg_1.c.x > min(0u, arg_2.c.x), ~(-2147483647i) <= arg_2.d.x), arg_1.b, vec4<u32>(1u, 1u, ~max(_wgslsmith_sub_u32(arg_0, arg_2.c.x), arg_1.c.x), _wgslsmith_mod_u32(arg_1.c.x, ~119896u) | ~abs(arg_0)), var_0.d << (arg_2.c.wyx % vec3<u32>(32u)));
    global3 = array<i32, 1>();
    let var_1 = Struct_1(select(arg_2.a, select(!vec2<bool>(arg_1.a.x, var_0.a.x), vec2<bool>(global1[_wgslsmith_index_u32(arg_0, 8u)] < u_input.a.x, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), !select(arg_1.a, arg_2.a, arg_2.a.x), any(vec4<bool>(var_0.a.x, false, var_0.a.x, arg_1.a.x)))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1070f, 1287f), var_0.b)), vec4<u32>(abs(~8880u), arg_1.c.x, 6983u, ~_wgslsmith_div_u32(11532u, ~var_0.c.x)), -u_input.a);
    return arg_2;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec4<i32>) -> f32 {
    let var_0 = vec3<u32>(arg_0.c.x, max(1u, arg_0.c.x), ~4294967295u);
    global0 = ~2147483647i;
    var var_1 = ~vec2<i32>(u_input.a.x, ((arg_3.x | global1[_wgslsmith_index_u32(4294967295u, 8u)]) & abs(global1[_wgslsmith_index_u32(1u, 8u)])) ^ 2147483647i);
    global2 = array<vec4<bool>, 28>();
    global0 = 0i;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2.b.x + 1269f)));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 7103i, -1155i, 18817i), ~vec4<i32>(u_input.a.x, 2147483647i, -28090i, -52521i)), global3[_wgslsmith_index_u32(~(~(~19515u)), 1u)]), u_input.a.zy);
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(340f))));
    var_1 = _wgslsmith_f_op_f32(func_5(Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-279f, 1126f) + vec2<f32>(-872f, -457f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-2471f, -693f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1000f)))), ~select(abs(vec4<u32>(0u, 29511u, 4294967295u, 1165u)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, 41698u, 3249u), vec4<u32>(48253u, 4294967295u, 39397u, 1u)), true), u_input.a), _wgslsmith_mod_vec3_u32(vec3<u32>(max(_wgslsmith_clamp_u32(1u, 18377u, 0u), ~4294967295u), 1u, 37002u << (0u % 32u)), vec3<u32>(_wgslsmith_sub_u32(0u, 0u), ~27972u, 1u) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), func_4(func_2(~vec4<u32>(7860u, 4294967295u, 1u, 0u), vec4<u32>(1u, 1u, 1u, 1u), vec3<i32>(~(-10605i), ~(-1i), -51085i)), Struct_1(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), true), vec2<f32>(-751f, -1381f), vec4<u32>(1u, ~0u, 24624u, ~0u), vec3<i32>(_wgslsmith_mult_i32(25965i, -21481i), max(u_input.b, global1[_wgslsmith_index_u32(78846u, 8u)]), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(12586u, 1u), 1u)])), Struct_1(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), _wgslsmith_div_vec2_f32(vec2<f32>(1000f, 687f), vec2<f32>(-1373f, -435f)), vec4<u32>(1u, 1u, 1u, 1u), u_input.a << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)))), -((vec4<i32>(17407i, -1i, 1i, 0i) | select(vec4<i32>(1i, -29178i, var_0, 2147483647i), vec4<i32>(0i, global3[_wgslsmith_index_u32(7239u, 1u)], global3[_wgslsmith_index_u32(14537u, 1u)], -1i), vec4<bool>(true, true, true, true))) << (vec4<u32>(func_2(vec4<u32>(19799u, 64309u, 18787u, 1u), vec4<u32>(1u, 70973u, 33153u, 21845u), u_input.a), reverseBits(45996u), 7264u, 1u) % vec4<u32>(32u)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -273f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1258f + -608f)));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3()))));
    return Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-1253f)), _wgslsmith_f_op_f32(ceil(-220f)))), vec4<u32>(~_wgslsmith_mod_u32(abs(4294967295u), ~1011u), 1u, ~4294967295u, countOneBits(38264u)), _wgslsmith_mod_vec3_i32(-vec3<i32>(~global3[_wgslsmith_index_u32(12461u, 1u)], ~26690i, var_0), -_wgslsmith_mult_vec3_i32(~u_input.a, vec3<i32>(var_0, 4901i, var_0) | vec3<i32>(global3[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(1u, 8u)], -1i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global3 = array<i32, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_dot_vec4_u32(abs(var_0.c), _wgslsmith_add_vec4_u32(vec4<u32>(32724u, 68620u, var_0.c.x, var_0.c.x), var_0.c))), u_input.a, var_0.c.x, _wgslsmith_div_vec4_i32(~vec4<i32>(select(global3[_wgslsmith_index_u32(var_0.c.x, 1u)], 1i, var_0.a.x), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_0.c, vec4<u32>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x)), 1u)], max(var_0.d.x, global3[_wgslsmith_index_u32(var_0.c.x, 1u)]), var_0.d.x), _wgslsmith_mod_vec4_i32(-vec4<i32>(21186i, 3344i, u_input.b, u_input.b), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.d.x, var_0.d.x, u_input.a.x, global3[_wgslsmith_index_u32(4294967295u, 1u)]), vec4<i32>(var_0.d.x, global1[_wgslsmith_index_u32(var_0.c.x, 8u)], u_input.b, u_input.b))) << (~vec4<u32>(1u, var_0.c.x, var_0.c.x, var_0.c.x) % vec4<u32>(32u))));
}

