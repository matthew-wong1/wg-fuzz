struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: f32,
}

struct Struct_4 {
    a: u32,
    b: vec2<bool>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 6> = array<vec4<bool>, 6>(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false));

var<private> global1: Struct_4 = Struct_4(0u, vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global2: array<f32, 27> = array<f32, 27>(640f, -1430f, 1088f, -952f, 1082f, -220f, 822f, -1445f, 2428f, -188f, -1153f, -1000f, 2124f, -715f, 1275f, -215f, 1002f, 2029f, -1169f, 1000f, -2278f, 698f, 1907f, 269f, -1144f, 608f, 1000f);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: i32) -> vec2<bool> {
    global0 = array<vec4<bool>, 6>();
    global0 = array<vec4<bool>, 6>();
    var var_0 = Struct_3(Struct_2(Struct_1(vec4<u32>(global1.a >> (global1.a % 32u), global1.a, reverseBits(12720u), global1.a & u_input.d.x), global1.a), Struct_1(~vec4<u32>(u_input.d.x, u_input.d.x, global1.a, 47518u), ~8612u | _wgslsmith_dot_vec2_u32(u_input.d, u_input.d))), ~global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(~u_input.c, 27u)])) - -1000f)));
    global2 = array<f32, 27>();
    let var_1 = !global1.b.x;
    return global1.c;
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    global2 = array<f32, 27>();
    global0 = array<vec4<bool>, 6>();
    global1 = Struct_4(~1u, vec2<bool>(all(vec2<bool>(true, true)), any(select(vec2<bool>(false, global1.b.x), select(vec2<bool>(global1.c.x, global1.c.x), vec2<bool>(false, true), global1.b), global1.c))), func_3(-2147483647i, arg_0.x));
    var var_0 = Struct_4(~(~max(26915u, u_input.c ^ 96453u)), !vec2<bool>(1i <= u_input.a.x, true), func_3(2147483647i, _wgslsmith_add_i32(firstLeadingBit(u_input.b.x ^ -25090i), 0i >> ((global1.a & 0u) % 32u))));
    let var_1 = 1i;
    return Struct_2(Struct_1(~_wgslsmith_div_vec4_u32(~vec4<u32>(27838u, 1u, u_input.c, global1.a), vec4<u32>(0u, 51507u, u_input.c, 42256u)), _wgslsmith_mult_u32(2466u, 1u)), Struct_1(vec4<u32>(u_input.d.x, 36044u >> (abs(global1.a) % 32u), 2621u, global1.a), global1.a));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> u32 {
    var var_0 = global1.c.x;
    var var_1 = func_3(-13050i, ~_wgslsmith_dot_vec2_i32(countOneBits(u_input.a), ~u_input.b.wz) | firstTrailingBit(abs(abs(u_input.b.x))));
    global0 = array<vec4<bool>, 6>();
    var var_2 = vec3<f32>(1000f, arg_0.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(10984u, 27u)]) - _wgslsmith_div_f32(arg_0.c, global2[_wgslsmith_index_u32(4294967295u, 27u)]))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_3 = u_input.b.zzz;
    return global1.a;
}

fn func_1(arg_0: vec2<bool>) -> Struct_4 {
    global2 = array<f32, 27>();
    global1 = Struct_4(_wgslsmith_div_u32(u_input.c, func_4(Struct_3(func_2(vec4<i32>(u_input.a.x, 0i, -1i, u_input.a.x)), global1.a << (13204u % 32u), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), func_2(abs(u_input.b)))), !vec2<bool>(global1.b.x, _wgslsmith_mod_u32(u_input.d.x, 55687u) >= ~1u), !global1.c);
    let var_0 = false;
    global1 = Struct_4(~u_input.c, select(vec2<bool>(true, true), !global1.c, global1.c), select(select(func_3(2147483647i, -33242i), vec2<bool>(func_3(u_input.a.x, 30227i).x, any(vec2<bool>(global1.c.x, true))), u_input.c <= u_input.c), select(vec2<bool>(global2[_wgslsmith_index_u32(3219u, 27u)] <= 553f, u_input.b.x != u_input.e), select(func_3(1i, u_input.a.x), vec2<bool>(arg_0.x, false), var_0), !select(arg_0, global1.b, global1.c.x)), arg_0.x));
    var var_1 = _wgslsmith_add_vec3_u32(~(min(vec3<u32>(4294967295u, u_input.c, u_input.c), vec3<u32>(35885u, 0u, 5450u) >> (vec3<u32>(u_input.c, u_input.c, 1u) % vec3<u32>(32u))) << (abs(vec3<u32>(global1.a, u_input.d.x, 0u)) % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(~abs(min(vec3<u32>(32861u, global1.a, global1.a), vec3<u32>(global1.a, u_input.c, 19787u))), _wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(global1.a, global1.a, 28724u)), vec3<u32>(_wgslsmith_add_u32(74740u, global1.a), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 36132u, global1.a), vec3<u32>(u_input.c, global1.a, 1u)), global1.a))));
    return Struct_4(abs(_wgslsmith_div_u32(firstLeadingBit(5025u), ~(~u_input.c))), func_3(-max(_wgslsmith_add_i32(-26567i, u_input.a.x), ~u_input.b.x), _wgslsmith_mod_i32(1i, i32(-1i) * -87131i)), !(!vec2<bool>(1u >= global1.a, global1.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(!select(global1.c, !(!global1.c), any(!vec2<bool>(false, global1.c.x))));
    global1 = func_1(global1.c);
    global0 = array<vec4<bool>, 6>();
    var var_0 = func_2(~u_input.b);
    var var_1 = _wgslsmith_mod_vec3_i32(~reverseBits(vec3<i32>(u_input.e | -6292i, u_input.e >> (0u % 32u), _wgslsmith_dot_vec2_i32(u_input.b.yw, vec2<i32>(u_input.a.x, u_input.b.x)))), abs(u_input.b.xxy) & vec3<i32>(abs(_wgslsmith_mod_i32(u_input.b.x, -2147483647i)), u_input.e, u_input.a.x));
    var var_2 = select(0i, var_1.x, !global1.c.x || (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-439f * global2[_wgslsmith_index_u32(56216u, 27u)]) * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(57163u, 27u)])) == global2[_wgslsmith_index_u32(11507u, 27u)]));
    var var_3 = 4294967295u;
    var_3 = 49881u;
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2[_wgslsmith_index_u32(~global1.a, 27u)], global2[_wgslsmith_index_u32(func_4(Struct_3(Struct_2(Struct_1(vec4<u32>(u_input.c, u_input.d.x, global1.a, 0u), var_0.b.a.x), Struct_1(vec4<u32>(u_input.d.x, 1u, u_input.d.x, var_0.b.b), 1u)), 0u, global2[_wgslsmith_index_u32(u_input.c, 27u)]), Struct_2(var_0.a, var_0.b)), 27u)], 461f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(37127u, 27u)], global2[_wgslsmith_index_u32(19721u, 27u)], global2[_wgslsmith_index_u32(77896u, 27u)]))))), any(!(!global1.b)))), vec3<u32>(func_1(!global1.b).a, _wgslsmith_div_u32(select(120969u, ~var_0.a.a.x, true), _wgslsmith_clamp_u32(~u_input.c, ~global1.a, ~37583u)), 4294967295u), _wgslsmith_add_vec4_i32(abs(_wgslsmith_clamp_vec4_i32(u_input.b, vec4<i32>(u_input.a.x, var_1.x, u_input.b.x, -39512i), min(u_input.b, u_input.b))), u_input.b & firstLeadingBit(countOneBits(vec4<i32>(1i, 472i, -5238i, -16425i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.d.x, 27u)] + global2[_wgslsmith_index_u32(21962u, 27u)]), _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(u_input.c, 27u)])), -197f)))), firstLeadingBit(var_1.x));
}

