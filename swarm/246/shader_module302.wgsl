struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: i32 = -41605i;

var<private> global2: vec2<f32>;

var<private> global3: array<bool, 21> = array<bool, 21>(false, false, true, true, true, true, false, true, true, false, false, false, true, false, true, true, true, true, false, true, false);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec3<f32>, arg_3: i32) -> bool {
    let var_0 = vec2<bool>(!(!(!(!global0.c.c))), all(!vec3<bool>(true, global3[_wgslsmith_index_u32(global0.a.b, 21u)] | false, select(global0.c.a, global3[_wgslsmith_index_u32(arg_1, 21u)], arg_0))));
    let var_1 = Struct_1(all(select(vec4<bool>(!global0.a.a, any(vec3<bool>(global3[_wgslsmith_index_u32(arg_1, 21u)], global0.a.c, var_0.x)), true, true), vec4<bool>(true, select(true, false, global3[_wgslsmith_index_u32(arg_1, 21u)]), !global0.a.a, true), select(vec4<bool>(true, true, true, true), vec4<bool>(global3[_wgslsmith_index_u32(1u, 21u)], var_0.x, global3[_wgslsmith_index_u32(global0.e.b, 21u)], true), select(vec4<bool>(false, global3[_wgslsmith_index_u32(arg_1, 21u)], global3[_wgslsmith_index_u32(49071u, 21u)], true), vec4<bool>(global0.a.a, global0.a.a, true, arg_0), false)))), 1u, !(!any(vec3<bool>(global3[_wgslsmith_index_u32(1u, 21u)], true, true))) | var_0.x);
    var var_2 = Struct_2(Struct_1(true == var_0.x, _wgslsmith_sub_u32(~arg_1, arg_1), false), var_1.b, global0.e, vec4<u32>(max(_wgslsmith_add_u32(_wgslsmith_add_u32(1u, 67760u), arg_1 | var_1.b), arg_1), 1u, var_1.b, ~select(_wgslsmith_mod_u32(var_1.b, global0.a.b), arg_1, select(true, false, false))), Struct_1(global0.a.a && all(select(var_0, vec2<bool>(false, false), false)), ~20916u, global0.c.c));
    var var_3 = arg_3;
    let var_4 = max(var_2.d.wxy, vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.b, var_2.d.x), ~(~var_2.d.xy)), ~(arg_1 ^ _wgslsmith_mult_u32(1u, 4294967295u)), arg_1));
    return !arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> vec2<f32> {
    global1 = u_input.a;
    let var_0 = global0.e;
    let var_1 = Struct_2(Struct_1(arg_0.a, ~global0.c.b, true), arg_1.e.b, arg_0, vec4<u32>(~(~1u), abs(_wgslsmith_dot_vec2_u32(min(vec2<u32>(0u, global0.c.b), global0.d.xx), ~global0.d.yz)), var_0.b, 69161u), Struct_1(func_3(all(!vec4<bool>(global0.a.c, false, var_0.a, arg_0.c)), global0.c.b, vec3<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(global2.x + global2.x), 226f), _wgslsmith_mult_i32(firstTrailingBit(-7058i), -44582i)), 4294967295u, !all(vec3<bool>(global3[_wgslsmith_index_u32(arg_1.d.x, 21u)], var_0.a, true))));
    var var_2 = u_input.a;
    var_2 = _wgslsmith_sub_i32(_wgslsmith_add_i32(~1i, _wgslsmith_div_i32(-16631i, -(u_input.a >> (0u % 32u)))), -_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(u_input.a, 18662i)), vec2<i32>(-93823i, u_input.a)), select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-1i, u_input.a), global3[_wgslsmith_index_u32(1204u, 21u)])));
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-923f, -157f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, 1175f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-889f, 123f) - vec2<f32>(-1000f, global2.x)))))));
}

fn func_2() -> vec4<u32> {
    var var_0 = global3[_wgslsmith_index_u32(abs(abs(31756u)), 21u)];
    var_0 = false;
    global2 = _wgslsmith_f_op_vec2_f32(func_4(Struct_1(all(!select(vec4<bool>(true, global0.a.a, true, global0.e.c), vec4<bool>(false, true, global0.e.a, global3[_wgslsmith_index_u32(global0.a.b, 21u)]), global0.c.c)), _wgslsmith_mult_u32(31294u, global0.b) >> (_wgslsmith_mod_u32(20920u, _wgslsmith_clamp_u32(global0.b, global0.d.x, 65247u)) % 32u), !func_3(true, global0.b, vec3<f32>(-2250f, 407f, 1179f), _wgslsmith_div_i32(0i, u_input.a))), Struct_2(Struct_1(global3[_wgslsmith_index_u32(global0.a.b, 21u)], 4294967295u, true), 4294967295u & ~_wgslsmith_add_u32(global0.c.b, 4294967295u), global0.c, _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(global0.d << (global0.d % vec4<u32>(32u)), ~vec4<u32>(4294967295u, global0.b, 4294967295u, 5750u)), global0.d), Struct_1(true, 4294967295u, 1347f > global2.x))));
    let var_1 = ~u_input.a;
    global0 = Struct_2(global0.c, 1u, global0.a, global0.d, global0.a);
    return (~(~(vec4<u32>(global0.a.b, 1u, 4294967295u, global0.b) | global0.d)) >> (vec4<u32>(0u, ~(~global0.a.b), 1u, ~(~1u)) % vec4<u32>(32u))) << (~(~vec4<u32>(global0.a.b, ~1u, _wgslsmith_mult_u32(4294967295u, 0u), abs(1u))) % vec4<u32>(32u));
}

fn func_5(arg_0: vec3<i32>, arg_1: i32, arg_2: vec4<u32>, arg_3: Struct_1) -> i32 {
    let var_0 = Struct_1(global3[_wgslsmith_index_u32(arg_2.x, 21u)], ~(arg_3.b & select(~global0.e.b, ~74668u, !global3[_wgslsmith_index_u32(arg_3.b, 21u)])), arg_3.c);
    var var_1 = ~vec3<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_3.b, arg_2.x, 1u, 661u), global0.d, vec4<bool>(var_0.c, false, arg_3.a, false)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.x, arg_3.b, 1u, 36964u), vec4<u32>(92341u, 37000u, arg_3.b, 40627u))) & var_0.b, ~global0.d.x, var_0.b);
    let var_2 = Struct_1(all(!vec3<bool>(!arg_3.c, 18936u < global0.e.b, 15908u != global0.c.b)), 12792u, true);
    let var_3 = min(abs(vec3<i32>(1i, arg_1, arg_1)), arg_0);
    let var_4 = var_0.a;
    return _wgslsmith_dot_vec3_i32(var_3, firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(66675i, -1i, 0i), abs(var_3)))) | (arg_0.x | u_input.a);
}

fn func_1(arg_0: vec2<i32>) -> i32 {
    let var_0 = func_5(vec3<i32>(reverseBits(-arg_0.x), 1i, arg_0.x), 22338i, ~firstTrailingBit(_wgslsmith_div_vec4_u32(func_2(), global0.d & global0.d)), global0.a);
    global0 = Struct_2(global0.c, ~_wgslsmith_dot_vec2_u32(global0.d.zw, global0.d.zz), Struct_1(~global0.b <= global0.d.x, ~select(~2733u, global0.e.b, global3[_wgslsmith_index_u32(global0.a.b, 21u)]), select(select(true, true, global0.e.a), global0.a.a, (arg_0.x < 2147483647i) && (48470u != global0.d.x))), ~vec4<u32>(_wgslsmith_dot_vec4_u32(global0.d, global0.d), _wgslsmith_mult_u32(96390u, global0.a.b), ~global0.b, _wgslsmith_mod_u32(global0.a.b, global0.c.b)) ^ global0.d, Struct_1(false, abs((global0.e.b << (4294967295u % 32u)) >> (func_2().x % 32u)), global0.a.a));
    var var_1 = Struct_2(Struct_1(true, 1u, abs(i32(-1i) * -2147483647i) < var_0), global0.c.b, Struct_1(global3[_wgslsmith_index_u32(global0.e.b, 21u)], select(_wgslsmith_div_u32(global0.b, 142100u) << (global0.e.b % 32u), ~global0.a.b, !(arg_0.x > 1i)), all(vec2<bool>(true, true))), ~(~(~vec4<u32>(global0.a.b, global0.a.b, global0.a.b, 1u))), global0.a);
    let var_2 = var_1.e;
    var var_3 = ~(~abs(_wgslsmith_sub_vec3_u32(vec3<u32>(83706u, 0u, 32041u), ~global0.d.xyy)));
    return -(-(u_input.a >> (_wgslsmith_add_u32(0u, var_3.x) % 32u)) << ((18710u | _wgslsmith_add_u32(_wgslsmith_clamp_u32(4294967295u, global0.c.b, var_2.b), var_3.x)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<i32>(915i << ((firstLeadingBit(global0.c.b) >> (_wgslsmith_add_u32(4587u, 1u) % 32u)) % 32u), -(2147483647i & _wgslsmith_sub_i32(u_input.a, 22711i)), func_1(~(-vec2<i32>(u_input.a, u_input.a))));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.x, global2.x, _wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(-925f * 1005f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, 139f, -1450f, global2.x) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-905f, global2.x, global2.x, 575f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2.x, 1040f, global2.x, global2.x), vec4<f32>(global2.x, 285f, global2.x, -549f))), vec4<f32>(global2.x, global2.x, -602f, global2.x), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 21u)], global0.c.c, global3[_wgslsmith_index_u32(1u, 21u)], true)))))));
    global1 = -14762i;
    var var_2 = global0.d.x;
    let var_3 = Struct_2(global0.a, func_2().x, Struct_1(firstLeadingBit(~global0.e.b) <= 55365u, _wgslsmith_add_u32(countOneBits(75450u), ~abs(global0.b)), global3[_wgslsmith_index_u32(4294967295u, 21u)]), _wgslsmith_mod_vec4_u32(~max(vec4<u32>(global0.a.b, global0.d.x, 4294967295u, 20326u), global0.d) << (global0.d % vec4<u32>(32u)), vec4<u32>(~countOneBits(global0.e.b), (global0.e.b & 63338u) >> (global0.b % 32u), _wgslsmith_add_u32(~4294967295u, 0u), global0.c.b)), global0.a);
    var var_4 = !(!select(true, select(!global3[_wgslsmith_index_u32(global0.c.b, 21u)], global3[_wgslsmith_index_u32(var_3.c.b, 21u)], true), var_3.e.a));
    let var_5 = vec4<i32>(0i, ~14383i ^ (firstLeadingBit(u_input.a) ^ 1i), ~u_input.a, u_input.a);
    let var_6 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(global0.d.x, _wgslsmith_mod_vec4_u32(global0.d, ~(var_3.d >> (global0.d % vec4<u32>(32u))) >> ((~global0.d ^ var_3.d) % vec4<u32>(32u))));
}

