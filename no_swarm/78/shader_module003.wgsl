struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: f32,
    d: vec2<u32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec3<bool>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<bool, 22> = array<bool, 22>(false, true, false, false, true, true, false, true, false, true, true, true, false, false, false, true, true, false, true, false, false, true);

var<private> global2: vec4<bool>;

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: i32, arg_3: vec2<i32>) -> f32 {
    return _wgslsmith_f_op_f32(global3.c + _wgslsmith_f_op_f32(738f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-121f - _wgslsmith_f_op_f32(-global3.c)))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<i32>) -> bool {
    var var_0 = !global1[_wgslsmith_index_u32(~abs(global0.x), 22u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-256f, _wgslsmith_f_op_f32(func_3(Struct_3(_wgslsmith_mod_i32(1i, global3.a.x)), select(select(global2.zy, global2.wz, global2.x), !vec2<bool>(true, global3.b), global2.x != false), 7936i, vec2<i32>(abs(1i), 0i))), global3.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.c, global3.c)), 300f))));
    let var_2 = Struct_1(~_wgslsmith_add_vec2_i32(arg_0.xz, ~u_input.a), all(vec3<bool>(false, (global3.c != -447f) & true, false)), global3.c, vec2<u32>(~(~6512u), global0.x), _wgslsmith_dot_vec2_u32(vec2<u32>(~1u, (global0.x | global3.e) & (1u ^ global0.x)), vec2<u32>(9665u, firstTrailingBit(~global3.e))));
    var var_3 = Struct_3(0i);
    let var_4 = var_1.xzy;
    return true;
}

fn func_1() -> Struct_3 {
    let var_0 = select(vec4<bool>(!(false & global3.b) || global1[_wgslsmith_index_u32(0u, 22u)], true, global2.x, any(!global2.xzz)), select(!(!select(vec4<bool>(global2.x, true, global3.b, global3.b), vec4<bool>(global1[_wgslsmith_index_u32(global0.x, 22u)], false, global1[_wgslsmith_index_u32(1u, 22u)], false), vec4<bool>(false, global3.b, true, global2.x))), !vec4<bool>(true, false, func_2(vec3<i32>(global3.a.x, u_input.a.x, global3.a.x), vec4<i32>(-3964i, global3.a.x, 0i, u_input.c)), false), vec4<bool>(global1[_wgslsmith_index_u32(global3.d.x << (global3.d.x % 32u), 22u)], all(vec3<bool>(global1[_wgslsmith_index_u32(global3.d.x, 22u)], global2.x, global2.x)), (global1[_wgslsmith_index_u32(4294967295u, 22u)] & global2.x) | global2.x, global2.x)), global3.b);
    var var_1 = Struct_2(2147483647i, ~0u, var_0.xyx, Struct_1(global3.a, global3.b, global3.c, global3.d, u_input.b), _wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a.x, -2147483647i, -2147483647i, global3.a.x)), countOneBits(vec4<i32>(u_input.d.x, 2147483647i, 2147483647i, global3.a.x))), -select(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, 1i, u_input.a.x), vec4<i32>(12891i, global3.a.x, 6922i, 2147483647i), vec4<i32>(global3.a.x, global3.a.x, 46819i, u_input.a.x)), -vec4<i32>(-2147483647i, 0i, -12428i, u_input.d.x), false)));
    var var_2 = _wgslsmith_dot_vec3_u32(firstTrailingBit(~reverseBits(vec3<u32>(1u, u_input.b, global0.x))), ~vec3<u32>(abs(0u), _wgslsmith_mult_u32(global0.x, 0u), u_input.b)) << (max(global3.d.x, ~30395u) % 32u);
    var var_3 = Struct_2(var_1.e, abs(~select(var_1.b, firstLeadingBit(4294967295u), true)), vec3<bool>(global3.b, func_2(vec3<i32>(var_1.a, 63104i, var_1.e) | vec3<i32>(0i, u_input.a.x, 20359i), select(reverseBits(vec4<i32>(-1i, -10232i, u_input.a.x, var_1.d.a.x)), min(vec4<i32>(global3.a.x, u_input.d.x, u_input.a.x, var_1.a), vec4<i32>(52677i, global3.a.x, global3.a.x, var_1.a)), true)), true), var_1.d, reverseBits(~global3.a.x | max(2147483647i, _wgslsmith_div_i32(38726i, -2147483647i))));
    let var_4 = true;
    return Struct_3(_wgslsmith_div_i32(_wgslsmith_mult_i32(reverseBits(-1i), firstTrailingBit(global3.a.x)), u_input.c) ^ (1i >> (global3.e % 32u)));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: i32) -> bool {
    var var_0 = Struct_1(u_input.d | (vec2<i32>(0i, 0i ^ u_input.c) | _wgslsmith_add_vec2_i32(arg_1.wx, vec2<i32>(-61396i, -28966i))), false, global3.c, vec2<u32>(select(min(u_input.b, 0u), countOneBits(u_input.b), global1[_wgslsmith_index_u32(u_input.b, 22u)]), 0u) << (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b << (global0.x % 32u), u_input.b), ~firstTrailingBit(vec2<u32>(global3.e, global3.d.x))) % vec2<u32>(32u)), ~(~(~_wgslsmith_mult_u32(0u, u_input.b))));
    global2 = vec4<bool>(false, 12808u == (global0.x & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_0.d.x, global0.x, global3.d.x), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.d.x, 15261u, 27177u, u_input.b), vec4<u32>(var_0.e, global3.e, 85379u, global3.e)))), !all(!global2.xz) && all(select(global2.zw, select(vec2<bool>(false, false), vec2<bool>(var_0.b, true), vec2<bool>(global2.x, global2.x)), true)), select(false, _wgslsmith_div_i32(arg_2, -3104i) < u_input.d.x, any(vec4<bool>(true, var_0.b, global2.x, false))) | !(_wgslsmith_f_op_f32(1140f - global3.c) > -1720f));
    let var_1 = vec4<i32>(~arg_2, abs(0i), _wgslsmith_add_i32(2147483647i, global3.a.x), -6596i);
    let var_2 = ~(~1u);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(~max(-vec2<i32>(global3.a.x, global3.a.x), vec2<i32>(_wgslsmith_mult_i32(-1i, 9044i), _wgslsmith_sub_i32(u_input.d.x, global3.a.x))), true, global3.c, vec2<u32>(global3.d.x, ~_wgslsmith_clamp_u32(73637u, global3.e, ~global0.x)), 0u);
    global2 = vec4<bool>(false, !(!any(vec2<bool>(global3.b, true)) & (_wgslsmith_f_op_f32(-671f - global3.c) >= _wgslsmith_div_f32(global3.c, global3.c))), all(!vec4<bool>(!global3.b, !global3.b, any(global2.zy), select(false, global1[_wgslsmith_index_u32(0u, 22u)], true))), func_4(func_1(), vec4<i32>(1i, -(~37976i), reverseBits(-28281i), _wgslsmith_clamp_i32(-42717i, global3.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.d.x, 1i, global3.a.x), vec4<i32>(global3.a.x, -2147483647i, global3.a.x, global3.a.x)))), 0i));
    let var_0 = vec3<u32>(~min(~(~0u), _wgslsmith_mod_u32(_wgslsmith_add_u32(70548u, u_input.b), 55215u >> (global3.e % 32u))), global3.d.x, ~_wgslsmith_clamp_u32(15412u, ~u_input.b & _wgslsmith_sub_u32(1u, global0.x), 26495u));
    global1 = array<bool, 22>();
    global3 = Struct_1(select(reverseBits(_wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(u_input.c, -12022i)), vec2<i32>(19657i, global3.a.x))), ((u_input.a | global3.a) ^ -vec2<i32>(global3.a.x, 2147483647i)) ^ u_input.d, global1[_wgslsmith_index_u32(u_input.b | reverseBits(1u | var_0.x), 22u)]), 45473u < countOneBits(global3.d.x), _wgslsmith_div_f32(global3.c, -990f), vec2<u32>(~(~8059u), firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_0.x, global0.x, 14593u), 39332u))), var_0.x);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(func_3(func_1(), vec2<bool>(false, false), u_input.c, u_input.d)), _wgslsmith_f_op_f32(f32(-1f) * -1169f));
    global1 = array<bool, 22>();
    let var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3.c, global3.c, global3.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.c, global3.c, global3.c)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.c, -685f, -599f) * vec3<f32>(472f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-479f, -158f)) + _wgslsmith_f_op_f32(max(var_1.x, 152f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1292f, -226f)))), vec4<i32>(global3.a.x, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(44715i, 0i), vec2<i32>(-1i, 26314i) << (vec2<u32>(global0.x, global3.e) % vec2<u32>(32u)))), ~firstTrailingBit(-2147483647i), _wgslsmith_add_i32(1i, (global3.a.x & -18955i) >> (1u % 32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(func_1(), select(vec2<bool>(global3.b, global3.b), vec2<bool>(global2.x, true), select(vec2<bool>(global2.x, global3.b), global2.xx, false)), abs(-2147483647i << (0u % 32u)), -u_input.a)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global3.c + _wgslsmith_f_op_f32(max(-1649f, 332f)))))));
}

