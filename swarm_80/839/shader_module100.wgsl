struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17>;

var<private> global1: array<vec4<f32>, 27>;

var<private> global2: Struct_3 = Struct_3(Struct_2(vec4<u32>(24526u, 0u, 1u, 53983u), -31925i, Struct_1(vec2<u32>(1647u, 0u), vec3<u32>(95445u, 76057u, 4477u))), vec3<f32>(448f, 279f, 1360f));

var<private> global3: array<vec4<bool>, 25>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4) -> u32 {
    global2 = arg_0;
    let var_0 = arg_0.a;
    global3 = array<vec4<bool>, 25>();
    let var_1 = global2.a.c;
    var var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1510f + 296f), _wgslsmith_f_op_f32(-127f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.b.x + global2.b.x), _wgslsmith_div_f32(-875f, global2.b.x), true))), global2.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.b.x, -613f, _wgslsmith_f_op_f32(floor(-144f))), _wgslsmith_f_op_vec3_f32(global2.b * global2.b))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global2.b.x, 1941f), _wgslsmith_f_op_f32(max(333f, global2.b.x)), _wgslsmith_f_op_f32(1683f - 1424f)))));
    return arg_1.a;
}

fn func_2() -> Struct_2 {
    var var_0 = !(!vec2<bool>(_wgslsmith_clamp_i32(u_input.a.x, u_input.c, -42734i) >= select(global2.a.b, -1i, false), false));
    let var_1 = firstTrailingBit(global2.a.b);
    let var_2 = Struct_4(~(~func_3(Struct_3(Struct_2(global2.a.a, 2888i, global2.a.c), vec3<f32>(global2.b.x, global2.b.x, global2.b.x)), Struct_4(23626u))) ^ global2.a.a.x);
    let var_3 = Struct_3(global2.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(global2.b, global2.b)), global2.b))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.x) * _wgslsmith_f_op_f32(1396f - global2.b.x)), global2.b.x, -129f)));
    let var_4 = Struct_2(reverseBits(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.a, 0u, u_input.b, global0[_wgslsmith_index_u32(4294967295u, 17u)]), vec4<u32>(4294967295u, 55913u, 18367u, 19129u))), global2.a.b, global2.a.c);
    return Struct_2(abs(var_3.a.a) << (_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_4.a.x, 9884u, 13258u), vec4<u32>(0u, var_3.a.a.x, global0[_wgslsmith_index_u32(46053u, 17u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_3.a.a.x, 17u)], 17u)])), ~var_3.a.a), ~vec4<u32>(global0[_wgslsmith_index_u32(global2.a.c.b.x, 17u)], var_4.c.b.x, 4294967295u, global0[_wgslsmith_index_u32(0u, 17u)])) % vec4<u32>(32u)), 1i, Struct_1(~global2.a.c.a, var_4.a.ywy));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec4<bool>, arg_3: vec3<i32>) -> Struct_3 {
    var var_0 = (global2.a.b >> (arg_1 % 32u)) & ~(u_input.c << (~4618u % 32u));
    global0 = array<u32, 17>();
    var var_1 = -(abs(u_input.a.x) ^ 2147483647i);
    let var_2 = global1[_wgslsmith_index_u32(0u, 27u)];
    return Struct_3(func_2(), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.x) * _wgslsmith_f_op_f32(-global2.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(global2.b.x, var_2.x)))) * global2.b.x), var_2.x));
}

fn func_1() -> Struct_4 {
    let var_0 = -8217i;
    let var_1 = -12835i;
    global1 = array<vec4<f32>, 27>();
    global2 = func_4(func_2(), global2.a.c.a.x, select(global3[_wgslsmith_index_u32(u_input.b, 25u)], select(!select(global3[_wgslsmith_index_u32(u_input.b, 25u)], vec4<bool>(true, false, false, true), global3[_wgslsmith_index_u32(u_input.b, 25u)]), global3[_wgslsmith_index_u32(1u, 25u)], select(vec4<bool>(false, false, true, true), global3[_wgslsmith_index_u32(58563u, 25u)], select(vec4<bool>(true, true, true, true), global3[_wgslsmith_index_u32(1u, 25u)], global3[_wgslsmith_index_u32(global2.a.c.b.x, 25u)]))), false), _wgslsmith_mod_vec3_i32(vec3<i32>(var_0, -23681i, global2.a.b ^ u_input.a.x), -_wgslsmith_sub_vec3_i32(u_input.a.wzy, vec3<i32>(-598i, 2147483647i, -4925i))) ^ vec3<i32>(global2.a.b, global2.a.b | _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 1i, var_0), vec3<i32>(2147483647i, -521i, var_0)), var_1));
    let var_2 = func_2().a;
    return Struct_4(global0[_wgslsmith_index_u32(global2.a.c.b.x, 17u)]);
}

fn func_5(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: vec2<u32>, arg_3: Struct_4) -> Struct_3 {
    global2 = Struct_3(func_2(), vec3<f32>(global2.b.x, _wgslsmith_f_op_f32(round(global2.b.x)), _wgslsmith_f_op_f32(floor(global2.b.x))));
    let var_0 = Struct_2(vec4<u32>(~firstTrailingBit(55325u), abs(~4294967295u), abs(281u), 0u), u_input.c, Struct_1(func_2().c.a, vec3<u32>(global2.a.a.x, global0[_wgslsmith_index_u32(firstLeadingBit(~global0[_wgslsmith_index_u32(1u, 17u)]), 17u)], _wgslsmith_div_u32(firstLeadingBit(arg_3.a), ~global2.a.a.x))));
    var var_1 = Struct_2(reverseBits(global2.a.a), firstTrailingBit(_wgslsmith_mod_i32(~(u_input.a.x >> (var_0.c.a.x % 32u)), -17900i)), global2.a.c);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 566f, -1150f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1261f, 1000f, -469f)))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(704f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, global2.b.x) * _wgslsmith_f_op_f32(select(global2.b.x, 261f, false)))) * -473f));
    return func_4(Struct_2(~global2.a.a, -(~(i32(-1i) * -9664i)), func_4(func_4(var_0, global2.a.a.x, vec4<bool>(false, false, false, arg_0.x), countOneBits(u_input.a.yww)).a, 4612u, !vec4<bool>(false, false, true, arg_0.x), vec3<i32>(~u_input.a.x, ~(-10702i), global2.a.b)).a.c), var_1.c.b.x, select(vec4<bool>(!arg_0.x && any(arg_1), arg_0.x, true | any(vec2<bool>(arg_0.x, arg_0.x)), false), select(vec4<bool>(u_input.a.x == var_0.b, all(arg_1), !arg_1.x, !arg_1.x), select(global3[_wgslsmith_index_u32(u_input.b & 105184u, 25u)], select(vec4<bool>(arg_1.x, arg_0.x, true, arg_0.x), vec4<bool>(arg_1.x, false, arg_0.x, false), arg_1.x), arg_1.x), global3[_wgslsmith_index_u32(global2.a.c.a.x, 25u)]), !vec4<bool>(true, false, any(arg_0.xy), any(arg_0))), ~u_input.a.yyx);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_5(select(vec3<bool>(true, true, true), vec3<bool>(any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), select(true, any(vec3<bool>(true, false, false)), true), true & any(global3[_wgslsmith_index_u32(u_input.b, 25u)])), !all(select(global3[_wgslsmith_index_u32(1u, 25u)], global3[_wgslsmith_index_u32(741u, 25u)], false))), vec2<bool>(true, true), ~_wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(76782u, global0[_wgslsmith_index_u32(0u, 17u)]) & vec2<u32>(u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 17u)], 17u)])), countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(u_input.b, 17u)], 42890u), vec2<u32>(32792u, 68503u)))), func_1());
    global0 = array<u32, 17>();
    let var_0 = u_input.c;
    var var_1 = global2.a.a;
    let var_2 = vec2<i32>(_wgslsmith_clamp_i32(-(~(-u_input.a.x)), var_0, _wgslsmith_mult_i32(u_input.a.x | select(global2.a.b, -8386i, false), 1i)), _wgslsmith_dot_vec2_i32(-u_input.a.wz >> (select(var_1.zz, vec2<u32>(global2.a.a.x, global0[_wgslsmith_index_u32(var_1.x, 17u)]), false) % vec2<u32>(32u)), u_input.a.wz) & var_0);
    let var_3 = Struct_3(func_2(), func_4(Struct_2(global2.a.a, 2147483647i, func_4(func_2(), ~1u, !global3[_wgslsmith_index_u32(58222u, 25u)], u_input.a.yxw).a.c), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, global0[_wgslsmith_index_u32(7084u, 17u)], 40512u, var_1.x), func_2().a), vec4<u32>(~global2.a.c.b.x, global2.a.c.a.x, abs(0u), abs(var_1.x))), vec4<bool>(~global0[_wgslsmith_index_u32(global2.a.a.x, 17u)] == var_1.x, any(select(global3[_wgslsmith_index_u32(var_1.x, 25u)], global3[_wgslsmith_index_u32(1u, 25u)], global3[_wgslsmith_index_u32(u_input.b, 25u)])), any(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~u_input.b, 17u)], 25u)]), true), vec3<i32>(~max(-12447i, 0i), var_2.x, var_0)).b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(func_5(vec3<bool>(false, true, true), vec2<bool>(true, true), var_3.a.a.wy, Struct_4(30881u)).b.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -187f))), _wgslsmith_f_op_f32(f32(-1f) * -939f), _wgslsmith_f_op_f32(f32(-1f) * -342f))), global2.b.x, var_3.b.x);
}

