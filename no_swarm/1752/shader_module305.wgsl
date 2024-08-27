struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_2,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
    c: vec4<bool>,
    d: vec3<f32>,
    e: vec2<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec2<f32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8> = array<f32, 8>(1548f, 362f, 737f, -1641f, 583f, 691f, 1174f, -308f);

var<private> global1: i32 = i32(-2147483648);

var<private> global2: Struct_3 = Struct_3(vec4<bool>(true, false, true, true), Struct_1(-1i, 4890u, i32(-2147483648), vec3<i32>(1469i, i32(-2147483648), 2147483647i)), Struct_2(1i, vec3<u32>(0u, 4294967295u, 72697u)), vec3<i32>(3498i, 7676i, 2147483647i), vec4<i32>(0i, i32(-2147483648), 24736i, 35110i));

var<private> global3: bool;

var<private> global4: f32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<i32>) -> f32 {
    var var_0 = vec3<bool>(!(!all(arg_0.yx)) | global2.a.x, true || global2.a.x, -1i != _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a >> (global2.c.b.x % 32u), select(arg_1.x, 59465i, arg_0.x), arg_1.x, ~44438i), arg_1));
    let var_1 = 1034f;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1477f, -944f)))))) + global0[_wgslsmith_index_u32(~1u, 8u)]) - global0[_wgslsmith_index_u32(~(~reverseBits(78044u)), 8u)]);
    let var_3 = _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 15817u, 0u, global2.b.b), u_input.c), _wgslsmith_dot_vec2_u32(vec2<u32>(global2.b.b, 11811u), vec2<u32>(global2.b.b, 14341u)))), ~abs(select(61855u, 4294967295u, global2.a.x))), u_input.b);
    var var_4 = -1168f;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2), global0[_wgslsmith_index_u32(~global2.b.b >> ((_wgslsmith_div_u32(51686u, global2.c.b.x) | ~global2.c.b.x) % 32u), 8u)], !(1f <= _wgslsmith_f_op_f32(round(283f)))))));
}

fn func_2() -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(~73505u, 8u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(1u, 8u)], -367f)), _wgslsmith_f_op_f32(1069f * global0[_wgslsmith_index_u32(18524u, 8u)])))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(308f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-608f * 523f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1000f, 625f))))) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -125f), _wgslsmith_f_op_f32(floor(-1871f)), _wgslsmith_f_op_f32(func_3(global2.a.wzw, global2.e))), vec3<f32>(-230f, -2376f, global0[_wgslsmith_index_u32(min(global2.c.b.x, 4294967295u), 8u)]))));
    var var_2 = -1156f;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * global0[_wgslsmith_index_u32(17801u, 8u)])))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1068f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, _wgslsmith_mult_u32(global2.c.b.x, u_input.d.x)), 8u)] + _wgslsmith_f_op_f32(305f + -1928f))));
    let var_4 = global2.a.x;
    return Struct_1(_wgslsmith_dot_vec3_i32(~global2.d, vec3<i32>(min(1i, firstLeadingBit(1i)), abs(i32(-1i) * -18456i), u_input.a)), _wgslsmith_sub_u32(global2.b.b, select(~_wgslsmith_mult_u32(46628u, 0u), _wgslsmith_sub_u32(u_input.b.x, ~61336u), _wgslsmith_f_op_f32(var_3 + 890f) <= _wgslsmith_f_op_f32(f32(-1f) * -604f))), ~_wgslsmith_mod_i32(global2.c.a, _wgslsmith_mod_i32(2147483647i, u_input.a) << (90684u % 32u)), countOneBits(global2.b.d));
}

fn func_4(arg_0: Struct_1) -> vec3<i32> {
    global2 = Struct_3(!global2.a, Struct_1(u_input.a, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, global2.b.b), vec2<u32>(u_input.b.x, global2.c.b.x)), u_input.b.zx), 4294967295u), u_input.a, vec3<i32>(max(arg_0.c & u_input.a, select(2147483647i, arg_0.c, false)), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1i, arg_0.d.x), arg_0.d) | _wgslsmith_dot_vec2_i32(vec2<i32>(35628i, 2147483647i), vec2<i32>(0i, 21307i)), abs(-2147483647i))), global2.c, vec3<i32>(arg_0.c, -20266i, -32916i), global2.e);
    var var_0 = global2.b;
    var var_1 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.b, 4294967295u), 8u)] - _wgslsmith_div_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~u_input.c, vec4<u32>(var_0.b, 4294967295u, arg_0.b, 21478u)) ^ ((global2.c.b.x | 4294967295u) << ((arg_0.b ^ 4294967295u) % 32u)), 8u)], _wgslsmith_f_op_f32(836f - _wgslsmith_f_op_f32(-1000f - 373f))));
    global2 = Struct_3(vec4<bool>(any(select(select(vec4<bool>(false, global2.a.x, global2.a.x, global2.a.x), vec4<bool>(true, true, false, false), true), !vec4<bool>(true, global2.a.x, global2.a.x, false), global2.a)), all(global2.a.xyx), !(_wgslsmith_mod_u32(1u, u_input.b.x) <= var_0.b), !all(vec2<bool>(true, true))), Struct_1(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(1u << (u_input.b.x % 32u), 0u, u_input.b.x), u_input.b), global2.d.x, _wgslsmith_add_vec3_i32(arg_0.d, var_0.d)), global2.c, -(-var_0.d << (vec3<u32>(_wgslsmith_mod_u32(0u, 5058u), ~u_input.b.x, 5931u) % vec3<u32>(32u))), vec4<i32>(-max(-2147483647i, u_input.a), abs(max(-30042i, 0i)), -1i, var_0.a | select(global2.e.x, arg_0.a, true)) | _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, var_0.c, u_input.a << (u_input.b.x % 32u), select(-72021i, var_0.d.x, false)), vec4<i32>(var_0.d.x << (global2.c.b.x % 32u), 1i, var_0.a, -1i)));
    var var_2 = Struct_5(Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(abs(-12352i), select(-12936i, 53345i, global2.a.x)), global2.d.yz >> (select(u_input.c.wz, global2.c.b.yy, false) % vec2<u32>(32u))), ~vec3<u32>(29933u | var_0.b, u_input.d.x | var_0.b, u_input.b.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2579f, global0[_wgslsmith_index_u32(1u, 8u)], 208f, -700f), vec4<f32>(-1789f, global0[_wgslsmith_index_u32(global2.b.b, 8u)], global0[_wgslsmith_index_u32(88972u, 8u)], 1608f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(322f, 1017f, -1183f, global0[_wgslsmith_index_u32(global2.c.b.x, 8u)]))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(var_0.b, 8u)], 769f, -693f)))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-487f, -1000f, 1346f, 1769f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 8u)], global0[_wgslsmith_index_u32(35507u, 8u)], global0[_wgslsmith_index_u32(u_input.d.x, 8u)], global0[_wgslsmith_index_u32(u_input.c.x, 8u)]))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global2.b.b, 8u)] - 1487f)))), !global2.a.x);
    return arg_0.d;
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: u32, arg_3: Struct_2) -> bool {
    var var_0 = vec2<u32>(_wgslsmith_mod_u32(arg_2, arg_3.b.x), _wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(~arg_3.b.x, firstLeadingBit(0u)), ~1u, 4294967295u), global2.c.b.x));
    global1 = abs(max(52194i, 0i));
    let var_1 = Struct_3(global2.a, global2.b, Struct_2(-11887i, ~vec3<u32>(0u, var_0.x, ~var_0.x)), select(global2.d, func_4(func_2()), any(select(vec3<bool>(true, true, false), select(global2.a.wwx, vec3<bool>(true, global2.a.x, global2.a.x), false), select(false, global2.a.x, false)))), reverseBits(countOneBits(vec4<i32>(-1i) * -global2.e)));
    global1 = 0i;
    let var_2 = global2.b;
    return any(var_1.a.yy);
}

fn func_5(arg_0: vec4<i32>, arg_1: bool, arg_2: vec2<u32>, arg_3: Struct_4) -> Struct_1 {
    global3 = all(vec3<bool>(!all(!arg_3.c), false, true));
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~arg_2.x, 8u)]))) + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1073f + arg_3.b), _wgslsmith_f_op_f32(f32(-1f) * -3019f))))));
    let var_0 = arg_2.x;
    global0 = array<f32, 8>();
    global0 = array<f32, 8>();
    return Struct_1(-arg_0.x, firstLeadingBit(4294967295u), 34637i, ~vec3<i32>(_wgslsmith_sub_i32(arg_0.x, -1i), 3033i, arg_3.a.x));
}

fn func_6(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    global1 = ~(~u_input.a << (1u % 32u));
    var var_0 = func_2();
    let var_1 = arg_2.d;
    var var_2 = 761f;
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-452f, _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(0u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(16504u, arg_1), vec2<u32>(var_0.b, u_input.c.x)) % 32u), 8u)])))) + 1263f);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.b;
    let var_1 = func_6(select(!vec2<bool>(global2.a.x, false || global2.a.x), select(vec2<bool>(any(global2.a), global2.a.x), !select(global2.a.xy, global2.a.yx, global2.a.zy), select(select(global2.a.xy, global2.a.yw, false), global2.a.zy, true)), any(vec2<bool>(true, true))), _wgslsmith_dot_vec2_u32(global2.c.b.xz, _wgslsmith_sub_vec2_u32(global2.c.b.zz, ~global2.c.b.zz) & global2.c.b.xz), func_5(~global2.e, func_1(-abs(global2.b.d.xz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(215f))), select(min(10108u, var_0.b), ~var_0.b, u_input.a <= var_0.d.x), Struct_2(-58654i, ~vec3<u32>(1u, 13821u, u_input.b.x))), vec2<u32>(~(~36612u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, 1u, global2.c.b.x), ~vec3<u32>(75697u, 0u, var_0.b))), Struct_4(var_0.d, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.b, 50713u), 8u)]), global2.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-123f, 518f, global0[_wgslsmith_index_u32(4294967295u, 8u)]) * vec3<f32>(global0[_wgslsmith_index_u32(4621u, 8u)], global0[_wgslsmith_index_u32(u_input.c.x, 8u)], 151f))), ~(~global2.c.b.yz))));
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-925f)), _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(var_0.b, 8u)]))) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(countOneBits(var_1.b), 8u)]))));
    var var_2 = global2.c;
    let var_3 = Struct_4(var_0.d, global0[_wgslsmith_index_u32(4294967295u, 8u)], select(vec4<bool>(func_1(vec2<i32>(var_2.a, var_2.a), _wgslsmith_f_op_f32(floor(-1121f)), abs(4294967295u), Struct_2(56203i, global2.c.b)), true, true, !global2.a.x), select(!global2.a, vec4<bool>(all(global2.a.wx), true, any(vec4<bool>(true, global2.a.x, global2.a.x, true)), global2.a.x || false), select(vec4<bool>(global2.a.x, global2.a.x, true, global2.a.x), global2.a, global2.a)), select(select(select(global2.a, global2.a, false), vec4<bool>(false, global2.a.x, global2.a.x, false), false), global2.a, global2.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(var_0.b, 8u)], global0[_wgslsmith_index_u32(var_2.b.x, 8u)], -141f) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, global0[_wgslsmith_index_u32(var_2.b.x, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)])))))), select(u_input.b.zx, _wgslsmith_div_vec2_u32(firstTrailingBit(u_input.c.yx ^ u_input.c.yz), select(min(vec2<u32>(65538u, u_input.c.x), u_input.b.xy), vec2<u32>(global2.c.b.x, 4294967295u), global2.a.ww)), vec2<bool>(global2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -757f) <= global0[_wgslsmith_index_u32(var_1.b, 8u)])));
    let var_4 = Struct_5(global2.c, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 8u)] * global0[_wgslsmith_index_u32(var_2.b.x, 8u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.d.x))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 8u)] * _wgslsmith_f_op_f32(122f * global0[_wgslsmith_index_u32(~global2.b.b, 8u)])), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(44962u, 8u)] * -562f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_3.d.x - var_3.b), _wgslsmith_f_op_f32(-var_3.d.x))), _wgslsmith_f_op_f32(max(-1120f, 965f)))), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_3.e.x, 8u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-675f + 1269f) + _wgslsmith_f_op_f32(-var_3.b))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(1u, 8u)])) * var_3.d.x));
    var_2 = global2.c;
    let x = u_input.a;
    s_output = StorageBuffer(global2.d.x >> (~0u % 32u), max(global2.c.b.x, select(4294967295u, ~(~4294967295u), false)), var_3.e.x);
}

