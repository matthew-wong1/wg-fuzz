struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 26> = array<vec3<bool>, 26>(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false));

var<private> global1: array<Struct_2, 6>;

var<private> global2: Struct_2 = Struct_2(-716f, Struct_1(vec4<u32>(1u, 42683u, 51148u, 1u), -444f, vec4<i32>(i32(-2147483648), -6206i, 3200i, 36679i), vec4<i32>(6498i, 1i, 25368i, 0i), 4294967295u));

var<private> global3: array<vec3<f32>, 28>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: vec2<u32>, arg_3: vec3<bool>) -> f32 {
    let var_0 = all(!select(select(!vec4<bool>(arg_3.x, arg_3.x, arg_3.x, arg_3.x), select(vec4<bool>(arg_3.x, arg_3.x, true, true), vec4<bool>(false, true, arg_3.x, arg_3.x), vec4<bool>(arg_3.x, arg_3.x, arg_3.x, false)), true), select(select(vec4<bool>(true, arg_3.x, true, arg_3.x), vec4<bool>(false, arg_3.x, arg_3.x, arg_3.x), vec4<bool>(true, arg_3.x, arg_3.x, arg_3.x)), vec4<bool>(arg_3.x, arg_3.x, arg_3.x, false), arg_3.x & true), arg_3.x));
    var var_1 = any(select(select(vec4<bool>(any(arg_3), !arg_3.x, arg_3.x, var_0 && false), !select(vec4<bool>(arg_3.x, arg_3.x, var_0, false), vec4<bool>(false, var_0, var_0, arg_3.x), arg_3.x), arg_3.x), !vec4<bool>(true, true, arg_3.x, var_0), vec4<bool>(all(!arg_3.zx), any(!vec3<bool>(true, var_0, var_0)), arg_3.x, all(arg_3))));
    global3 = array<vec3<f32>, 28>();
    global2 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1996f), 674f), Struct_1(min(firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 4294967295u, global2.b.a.x, 89565u), vec4<u32>(25674u, arg_0.x, u_input.a.x, 4294967295u))), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 35805u, u_input.c.x, arg_0.x), global2.b.a)), -1664f, vec4<i32>(-abs(-20979i), select(1i >> (0u % 32u), 93861i, !arg_3.x), global2.b.c.x, u_input.b), vec4<i32>(u_input.b, ~2147483647i, global2.b.c.x, 7169i), arg_0.x ^ _wgslsmith_div_u32(24503u, 1u)));
    var_1 = any(arg_3.yz);
    return arg_1;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = Struct_1(vec4<u32>(43456u, ~17855u, _wgslsmith_mult_u32(u_input.c.x, ~firstTrailingBit(49180u)), arg_0.b.e), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(global2.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.b.b))), global2.b.a.yy, arg_1.wxy)))), vec4<i32>(i32(-1i) * -countOneBits(arg_0.b.d.x), reverseBits(u_input.b & _wgslsmith_mult_i32(arg_0.b.d.x, u_input.b)), ~(-1i), ~1i), vec4<i32>(min(global2.b.d.x, firstLeadingBit(16031i)), -1533i, 2147483647i | _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.b, 40459i), u_input.b), global2.b.c.x), global2.b.a.x);
    var var_1 = _wgslsmith_add_vec4_u32(~(~(vec4<u32>(global2.b.a.x, global2.b.a.x, 10383u, arg_0.b.e) | (arg_0.b.a >> (vec4<u32>(var_0.e, 91136u, global2.b.e, 4294967295u) % vec4<u32>(32u))))), vec4<u32>(reverseBits(abs(43614u)), global2.b.a.x, u_input.a.x, 1u) >> ((vec4<u32>(85571u, _wgslsmith_dot_vec3_u32(var_0.a.zxw, vec3<u32>(global2.b.a.x, 26239u, 4294967295u)), u_input.d, ~35836u) >> (((arg_0.b.a & global2.b.a) << (global2.b.a % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_2 = arg_0.b.c ^ global2.b.c;
    var var_3 = arg_0;
    global0 = array<vec3<bool>, 26>();
    return Struct_2(838f, global2.b);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2) -> vec2<bool> {
    let var_0 = global3[_wgslsmith_index_u32(~(~(_wgslsmith_sub_u32(~global2.b.e, 39923u) ^ select(firstLeadingBit(u_input.a.x), countOneBits(0u), all(global0[_wgslsmith_index_u32(arg_1.b.e, 26u)])))), 28u)];
    var var_1 = arg_1;
    var var_2 = func_2(global1[_wgslsmith_index_u32(~0u, 6u)], vec4<bool>(!(!all(vec2<bool>(false, false))), all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2125f) + -690f) >= arg_1.a, false | (all(vec3<bool>(false, false, false)) || select(true, true, false))));
    var var_3 = arg_1.b.a.zww;
    global0 = array<vec3<bool>, 26>();
    return !select(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false))), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), false), true);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = global2.b.c.x;
    let var_1 = select(select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a, ~arg_2.a.xyw, min(vec3<u32>(u_input.a.x, arg_0.e, global2.b.e), arg_0.a.zzz)), vec3<u32>(arg_2.e, arg_1.x, arg_0.e)), 26u)], global0[_wgslsmith_index_u32(6123u, 26u)], select(global0[_wgslsmith_index_u32(arg_2.e, 26u)], vec3<bool>(true, true, arg_3.x), arg_3.x)), !(!vec3<bool>(arg_3.x && false, false, true)), ~1i >= select(arg_2.d.x, max(2703i, select(11624i, global2.b.d.x, true)), !select(arg_3.x, arg_3.x, false)));
    var var_2 = vec4<i32>(firstTrailingBit(1i), -50707i, arg_0.c.x, firstLeadingBit(-arg_2.d.x | ~(-39137i)));
    global2 = func_2(func_2(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(min(global2.b.e, _wgslsmith_mult_u32(0u, 0u)), global2.b.e), 6u)], vec4<bool>(arg_3.x, !(var_1.x | false), true, any(vec4<bool>(var_1.x, var_1.x, false, true)) || !var_1.x)), vec4<bool>(!any(!global0[_wgslsmith_index_u32(4294967295u, 26u)]), arg_2.e >= arg_2.e, all(vec4<bool>(arg_3.x, !arg_3.x, arg_3.x, arg_3.x)), any(vec3<bool>(true, false, true)) && false));
    global3 = array<vec3<f32>, 28>();
    return Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1052f + global2.a)))), func_2(func_2(Struct_2(296f, func_2(Struct_2(global2.b.b, Struct_1(arg_2.a, arg_2.b, global2.b.c, vec4<i32>(-28280i, -1i, var_2.x, var_2.x), u_input.a.x)), vec4<bool>(true, arg_3.x, arg_3.x, arg_3.x)).b), select(vec4<bool>(false, false, arg_3.x, arg_3.x), !vec4<bool>(arg_3.x, false, true, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, false))), select(vec4<bool>(false || arg_3.x, true, any(vec3<bool>(false, false, arg_3.x)), true), select(vec4<bool>(arg_3.x, true, false, var_1.x), select(vec4<bool>(var_1.x, var_1.x, false, arg_3.x), vec4<bool>(arg_3.x, true, arg_3.x, true), var_1.x), func_4(arg_2.a.ywy, Struct_2(arg_0.b, global2.b)).x), arg_3.x)).b);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_1 {
    global1 = array<Struct_2, 6>();
    global3 = array<vec3<f32>, 28>();
    let var_0 = func_5(arg_1, global2.b.a, arg_1, !select(vec2<bool>(true, true), func_4(~u_input.a, func_2(global1[_wgslsmith_index_u32(1u, 6u)], vec4<bool>(false, true, true, false))), _wgslsmith_add_u32(arg_1.a.x, global2.b.e) <= ~1u));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(func_3(vec4<u32>(global2.b.a.x, global2.b.e, var_0.b.e, arg_1.a.x), _wgslsmith_f_op_f32(112f - var_0.b.b), arg_1.a.zy, select(vec3<bool>(false, false, false), global0[_wgslsmith_index_u32(103800u, 26u)], vec3<bool>(true, true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -302f)), 1000f, -196f), vec4<f32>(-648f, arg_1.b, -451f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(477f)), 887f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.b, arg_2.x, var_0.a, arg_0.x), vec4<f32>(var_0.a, -866f, var_0.b.b, 2167f), false))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, arg_0.x, global2.b.b, var_0.b.b), vec4<f32>(1029f, arg_1.b, -549f, -629f), false)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, -720f, -461f, var_0.b.b))))), func_4(vec3<u32>(1u, 21543u, ~(~121487u)), func_2(func_2(func_2(global1[_wgslsmith_index_u32(1u, 6u)], vec4<bool>(true, false, true, true)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), true)), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), true)))).x));
    let var_2 = i32(-1i) * -2147483647i;
    return Struct_1(vec4<u32>(0u, ~_wgslsmith_dot_vec3_u32(arg_1.a.xxw >> (var_0.b.a.xzx % vec3<u32>(32u)), select(u_input.a, vec3<u32>(u_input.d, u_input.d, u_input.a.x), vec3<bool>(false, true, true))), ~abs(var_0.b.a.x), _wgslsmith_mult_u32(~u_input.c.x << ((1u & u_input.d) % 32u), arg_1.a.x)), global2.b.b, _wgslsmith_div_vec4_i32(countOneBits(max(global2.b.c, ~arg_1.c)), var_0.b.c), abs(vec4<i32>(~abs(51804i), global2.b.d.x, var_2 & select(-1i, arg_1.d.x, false), func_5(var_0.b, vec4<u32>(arg_1.e, 1u, u_input.a.x, 26721u), func_2(global1[_wgslsmith_index_u32(var_0.b.a.x, 6u)], vec4<bool>(false, false, true, false)).b, vec2<bool>(true, true)).b.c.x)), func_2(var_0, vec4<bool>(false, true, true, true)).b.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.b.b, global2.b.b, -1057f)))), _wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(u_input.c.x, 28u)])), Struct_1(~global2.b.a, -1745f, global2.b.d & -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, 0i, u_input.b), vec4<i32>(u_input.b, global2.b.d.x, 1i, -20454i)), -global2.b.c << (_wgslsmith_sub_vec4_u32(global2.b.a ^ global2.b.a, firstTrailingBit(global2.b.a)) % vec4<u32>(32u)), global2.b.e), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.d, 1u >> (1u % 32u)), 28u)]);
    var var_1 = func_5(Struct_1(~(~vec4<u32>(0u, global2.b.e, 11444u, 1u)) ^ func_5(global2.b, _wgslsmith_mod_vec4_u32(global2.b.a, global2.b.a), func_1(vec3<f32>(global2.b.b, var_0.b, 1000f), global2.b, global3[_wgslsmith_index_u32(26363u, 28u)]), select(vec2<bool>(false, false), vec2<bool>(false, false), true)).b.a, -1206f, global2.b.d, abs(vec4<i32>(-24437i, 61384i, _wgslsmith_dot_vec3_i32(global2.b.d.yxx, var_0.c.zyz), -37979i)), ~select(4294967295u, 47881u, true) >> (~(~global2.b.a.x) % 32u)), global2.b.a, global2.b, vec2<bool>(select(true, !any(vec2<bool>(true, false)), true), true));
    global1 = array<Struct_2, 6>();
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-821f, 1000f, 1000f, -511f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(419f, 234f))), var_1.b.b, var_0.b)));
    let var_3 = var_1.b;
    let var_4 = false;
    let var_5 = _wgslsmith_f_op_f32(global2.a - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.b.b + var_1.b.b), _wgslsmith_f_op_f32(-var_3.b)))), var_3.b)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<u32>(~var_0.a.x, _wgslsmith_add_u32(var_0.a.x, 10918u))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-726f, _wgslsmith_f_op_f32(exp2(var_3.b)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(-455f, -1028f)) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(806f, -475f, var_0.b, 1241f) + vec4<f32>(1144f, -1252f, 1000f, var_3.b))))))), vec4<i32>(u_input.b, _wgslsmith_div_i32(max(func_2(global1[_wgslsmith_index_u32(1u, 6u)], vec4<bool>(true, true, var_4, true)).b.d.x, 30109i), func_2(global1[_wgslsmith_index_u32(40836u, 6u)], vec4<bool>(true, false, var_4, var_4)).b.d.x), 22531i, -1i), _wgslsmith_add_vec2_u32(vec2<u32>(~var_3.a.x, var_1.b.e) ^ ~vec2<u32>(global2.b.a.x, 4294967295u), u_input.a.zz ^ ~(~vec2<u32>(0u, 1u))));
}

