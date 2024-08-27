struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<f32>(535f, -282f), vec2<f32>(-316f, -2232f)), false, vec2<bool>(true, true));

var<private> global1: array<vec2<f32>, 24> = array<vec2<f32>, 24>(vec2<f32>(493f, 263f), vec2<f32>(301f, -1087f), vec2<f32>(2290f, 579f), vec2<f32>(211f, 209f), vec2<f32>(-1577f, -1000f), vec2<f32>(-986f, -1856f), vec2<f32>(-722f, -576f), vec2<f32>(-790f, 796f), vec2<f32>(1399f, 586f), vec2<f32>(-1396f, 1000f), vec2<f32>(989f, -2142f), vec2<f32>(1005f, 1029f), vec2<f32>(-432f, -302f), vec2<f32>(-690f, 404f), vec2<f32>(-743f, 1866f), vec2<f32>(1762f, -741f), vec2<f32>(-1446f, -1505f), vec2<f32>(123f, 958f), vec2<f32>(-1000f, -647f), vec2<f32>(341f, 2235f), vec2<f32>(254f, -102f), vec2<f32>(283f, 683f), vec2<f32>(-115f, 1940f), vec2<f32>(1118f, 1664f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_3) -> vec2<bool> {
    let var_0 = ~u_input.a;
    global0 = Struct_2(arg_2.a, true, !vec2<bool>(arg_2.b, all(vec2<bool>(false, true))));
    global1 = array<vec2<f32>, 24>();
    global0 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.b.x * global0.a.b.x)), -2204f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a.b)))), arg_2.b, vec2<bool>(arg_2.c.x == u_input.b.x, false & ((29259u ^ arg_2.c.x) > 49042u)));
    let var_1 = -1346f;
    return global0.c;
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: f32, arg_3: vec2<f32>) -> Struct_2 {
    var var_0 = true;
    var var_1 = Struct_2(Struct_1(vec2<f32>(global0.a.a.x, 269f), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global0.a.a)), _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(45778u, 24u)])) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global0.a.b))))), false, !func_3(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.c.x, 26711u, 4294967295u), vec4<u32>(u_input.b.x, 4164u, u_input.c.x, u_input.c.x)), ~vec4<u32>(2616u, 0u, 1u, u_input.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, arg_3.x, -1192f)) + vec3<f32>(arg_3.x, -593f, arg_2)), Struct_3(Struct_1(arg_3, global1[_wgslsmith_index_u32(1u, 24u)]), false, ~vec3<u32>(u_input.c.x, 0u, 4234u))));
    return Struct_2(global0.a, true & (0u <= _wgslsmith_sub_u32(21228u ^ u_input.c.x, 1u)), vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) + _wgslsmith_f_op_f32(-var_1.a.a.x)) > _wgslsmith_f_op_f32(sign(var_1.a.b.x)), -arg_0 > firstTrailingBit(0i)));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: bool) -> Struct_3 {
    var var_0 = arg_2.a.b;
    let var_1 = Struct_2(func_2(-1i, _wgslsmith_mod_i32(~(-10233i), -2147483647i), _wgslsmith_f_op_f32(1320f * _wgslsmith_f_op_f32(ceil(global0.a.a.x))), arg_2.a.b).a, all(arg_1), select(global0.c, vec2<bool>(all(!vec4<bool>(false, true, arg_2.b, true)), func_2(u_input.a, 9572i, global0.a.a.x, vec2<f32>(var_0.x, global0.a.a.x)).c.x), all(arg_1.xz)));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(arg_2.a.b, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.x, var_0.x), vec2<f32>(2247f, var_0.x)))))), var_1.a.a), arg_2.c.x || false, !(!(!vec2<bool>(true, arg_1.x))));
    var var_3 = Struct_3(Struct_1(var_2.a.a, global0.a.b), any(select(!vec4<bool>(true, false, var_1.c.x, arg_2.c.x), vec4<bool>(true, true, var_1.b, true), true)) || func_2(-1i, 0i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1007f)), global1[_wgslsmith_index_u32(~(~0u), 24u)]).c.x, abs(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(arg_0.x, 16246u, u_input.c.x), _wgslsmith_add_u32(43078u, u_input.b.x)), ~u_input.c.x, arg_0.x)));
    let var_4 = ~u_input.b.x;
    return Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(func_2(u_input.a, u_input.a, var_1.a.b.x, var_2.a.b).a.a.x, var_2.a.b.x), _wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(max(var_4, arg_0.x), 24u)] + vec2<f32>(var_2.a.b.x, global0.a.a.x)), any(vec4<bool>(var_3.b, true, false, false)))), _wgslsmith_f_op_vec2_f32(step(global1[_wgslsmith_index_u32(reverseBits(1u) << (var_3.c.x % 32u), 24u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(-761f, -246f))))), true, min(~_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 53u, 46525u), vec3<u32>(var_3.c.x, 4294967295u, u_input.c.x)), u_input.c ^ var_3.c), _wgslsmith_mult_vec3_u32(var_3.c, _wgslsmith_clamp_vec3_u32(select(var_3.c, var_3.c, true), u_input.c & u_input.c, ~var_3.c))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> vec4<u32> {
    let var_0 = firstTrailingBit(u_input.a);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.a.a.x, global0.a.b.x)));
    global1 = array<vec2<f32>, 24>();
    var var_2 = !vec4<bool>(arg_0.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1000f)))) <= global0.a.a.x, false, !any(select(vec2<bool>(arg_1.b, true), vec2<bool>(global0.b, true), false)));
    var_2 = vec4<bool>(!(!var_2.x), !any(arg_0.c), all(vec3<bool>((arg_1.a.a.x > arg_1.a.b.x) | var_2.x, all(!vec2<bool>(false, global0.b)), arg_0.b)), true);
    return ~vec4<u32>(_wgslsmith_add_u32(~(u_input.b.x ^ u_input.c.x), _wgslsmith_sub_u32(10706u, countOneBits(u_input.c.x))), _wgslsmith_sub_u32(u_input.c.x, 32415u), abs(arg_1.c.x), u_input.c.x);
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: bool, arg_3: vec4<u32>) -> Struct_3 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1885f, -2003f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.b.x, global0.a.b.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1492f, 891f))), _wgslsmith_f_op_vec2_f32(-global0.a.b))), arg_1, vec2<bool>(arg_2, select(false, !(!arg_1), arg_2)));
    var var_1 = func_5(var_0, func_4(u_input.b, !(!(!vec3<bool>(true, var_0.c.x, arg_2))), func_2(-(arg_0 | 7367i), u_input.a, var_0.a.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(arg_3.x, 24u)]))), any(select(select(vec3<bool>(false, global0.c.x, arg_1), vec3<bool>(true, arg_2, true), vec3<bool>(false, false, false)), select(vec3<bool>(true, false, true), vec3<bool>(arg_2, var_0.c.x, true), global0.b), var_0.b))));
    let var_2 = _wgslsmith_mult_u32(~select(~arg_3.x, 21913u, u_input.c.x == 4294967295u), ~_wgslsmith_mod_u32(49509u, max(9788u, arg_3.x) << (abs(u_input.c.x) % 32u)));
    return Struct_3(var_0.a, all(select(select(select(vec3<bool>(arg_2, true, arg_1), vec3<bool>(false, var_0.c.x, false), vec3<bool>(true, var_0.b, arg_1)), !vec3<bool>(false, true, arg_2), vec3<bool>(false, false, true)), !select(vec3<bool>(true, false, arg_2), vec3<bool>(var_0.c.x, false, arg_1), false), !(!vec3<bool>(arg_2, true, arg_1)))), var_1.zzz);
}

fn func_6(arg_0: Struct_3, arg_1: i32, arg_2: vec4<u32>) -> Struct_2 {
    global1 = array<vec2<f32>, 24>();
    let var_0 = abs(max(2147483647i, _wgslsmith_sub_i32(u_input.a, -1i)) << (13129u % 32u));
    var var_1 = firstLeadingBit(vec4<i32>(firstLeadingBit(-1i), ~select(_wgslsmith_div_i32(var_0, var_0), firstTrailingBit(65829i), false), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-24409i, var_0, -2147483647i, 1i), ~vec4<i32>(2147483647i, 2147483647i, 12838i, var_0)), -(~max(-891i, arg_1))));
    var_1 = vec4<i32>(arg_1, var_1.x, u_input.a, ~2147483647i);
    let var_2 = _wgslsmith_clamp_vec3_i32(select(vec3<i32>(0i, firstTrailingBit(8476i), var_0), var_1.yzz, !(0i != var_1.x)), var_1.yzw, vec3<i32>(max(arg_1, -44240i) << (4294967295u % 32u), ~(-70388i >> (u_input.b.x % 32u)), _wgslsmith_div_i32(1i, ~(-28821i)))) << (countOneBits(vec3<u32>(32403u, _wgslsmith_div_u32(u_input.b.x, 0u), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(arg_2.yz, u_input.c.xz), vec2<u32>(arg_0.c.x, u_input.b.x)))) % vec3<u32>(32u));
    return func_2(_wgslsmith_sub_i32(36846i, var_1.x), u_input.a, 1083f, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global0.a.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(834f, global0.a.b.x) * vec2<f32>(global0.a.a.x, arg_0.a.a.x)))) * _wgslsmith_f_op_vec2_f32(trunc(global1[_wgslsmith_index_u32(reverseBits(arg_2.x), 24u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_0.a.b + global0.a.a), vec2<f32>(global0.a.b.x, global0.a.a.x), global0.c)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(110f, -977f)))), func_3(37867u, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.a.a.x, global0.a.a.x, 1896f))))), arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(func_1(-2147483647i, !(!(48375u > u_input.b.x)), global0.b & global0.c.x, _wgslsmith_mod_vec4_u32(abs(vec4<u32>(u_input.b.x, u_input.c.x, 22275u, u_input.c.x) ^ vec4<u32>(u_input.c.x, u_input.c.x, u_input.b.x, u_input.c.x)), vec4<u32>(~u_input.b.x, _wgslsmith_add_u32(u_input.b.x, 1u), ~u_input.b.x, _wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, u_input.c.x)))), _wgslsmith_add_i32(u_input.a, min(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -23258i, u_input.a, u_input.a) >> (vec4<u32>(15425u, u_input.b.x, 22160u, u_input.c.x) % vec4<u32>(32u)), select(vec4<i32>(-1i, u_input.a, u_input.a, u_input.a), vec4<i32>(1i, u_input.a, u_input.a, 0i), true)), _wgslsmith_div_i32(~u_input.a, ~u_input.a))), vec4<u32>(u_input.b.x, ~abs(u_input.c.x), _wgslsmith_sub_u32(u_input.b.x, 1u), 52178u) & (~(~vec4<u32>(4294967295u, 4294967295u, 52280u, 18813u)) ^ max(vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 0u, 0u, u_input.b.x))));
    var var_0 = select(select(vec4<bool>(!global0.b, !func_1(u_input.a, global0.c.x, true, vec4<u32>(20328u, 1u, 0u, 5904u)).b, true, false), select(!select(vec4<bool>(global0.b, global0.c.x, global0.b, true), vec4<bool>(global0.b, global0.c.x, global0.b, true), false), select(!vec4<bool>(global0.b, false, global0.b, global0.c.x), vec4<bool>(false, global0.c.x, global0.c.x, false), !vec4<bool>(global0.c.x, global0.c.x, true, true)), true), vec4<bool>(false, !global0.c.x, global0.b, u_input.a >= select(40691i, -13202i, false))), !select(!select(vec4<bool>(global0.b, true, global0.b, global0.b), vec4<bool>(global0.b, global0.b, true, global0.b), false), select(!vec4<bool>(false, global0.b, global0.b, true), !vec4<bool>(global0.b, global0.c.x, global0.b, false), !vec4<bool>(global0.b, global0.c.x, global0.c.x, false)), vec4<bool>(true | global0.b, global0.b, true, global0.a.a.x > global0.a.a.x)), global0.c.x);
    var var_1 = global0.a.b.x;
    var var_2 = _wgslsmith_add_u32(55142u >> (u_input.c.x % 32u), _wgslsmith_mult_u32(_wgslsmith_add_u32(0u, ~75762u), _wgslsmith_dot_vec2_u32(~u_input.c.yy, _wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, 3751u), ~vec2<u32>(u_input.b.x, u_input.c.x), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(56983u, 4294967295u))))));
    global1 = array<vec2<f32>, 24>();
    var_2 = select(~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, 1u, 52055u), vec4<u32>(u_input.b.x, u_input.c.x, u_input.b.x, 0u)))), u_input.b.x, func_3(~(~0u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.a.a.x, 932f, 1855f))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.a.a.x, -1523f, 266f))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global0.a.a.x, -1000f)), vec3<f32>(-1000f, global0.a.a.x, global0.a.b.x), true))), Struct_3(Struct_1(_wgslsmith_div_vec2_f32(global1[_wgslsmith_index_u32(0u, 24u)], global0.a.a), _wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(48093u, 24u)] - global1[_wgslsmith_index_u32(u_input.c.x, 24u)])), global0.c.x, ~vec3<u32>(u_input.b.x, 1u, 40315u))).x);
    let var_3 = global0.a;
    let var_4 = func_2(firstLeadingBit(10424i), abs(min(u_input.a, i32(-1i) * -u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.b.x + global0.a.a.x), _wgslsmith_div_f32(var_3.a.x, -339f)) - _wgslsmith_f_op_f32(trunc(974f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global0.a.b)) - vec2<f32>(-1350f, 308f)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_3.b.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a.x, var_3.a.x) + vec2<f32>(267f, global0.a.b.x)), true)))));
    var var_5 = func_4(vec2<u32>(u_input.c.x & func_5(var_4, Struct_3(global0.a, true, vec3<u32>(4294967295u, 0u, u_input.b.x))).x, u_input.c.x), select(!select(!vec3<bool>(var_4.b, true, true), var_0.xzx, vec3<bool>(var_4.c.x, var_0.x, var_0.x)), vec3<bool>(func_1(-2147483647i, any(vec4<bool>(var_0.x, true, false, var_4.c.x)), !var_0.x, ~vec4<u32>(1u, u_input.c.x, 4294967295u, u_input.b.x)).b, true & (var_0.x != global0.c.x), global0.b), !select(!var_0.zzx, !var_0.zxy, select(var_0.wzw, vec3<bool>(var_0.x, global0.c.x, true), var_0.x))), Struct_2(Struct_1(vec2<f32>(176f, _wgslsmith_div_f32(1435f, -1388f)), vec2<f32>(func_2(u_input.a, u_input.a, var_4.a.a.x, vec2<f32>(-342f, -2606f)).a.a.x, func_6(Struct_3(var_4.a, false, u_input.c), 0i, vec4<u32>(u_input.c.x, 25830u, u_input.b.x, u_input.c.x)).a.a.x)), !all(func_6(Struct_3(Struct_1(var_3.b, vec2<f32>(268f, global0.a.b.x)), var_0.x, u_input.c), u_input.a, vec4<u32>(u_input.b.x, 4294967295u, 59833u, 17020u)).c), select(var_4.c, vec2<bool>(true, any(var_0.zxx)), func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, -50930i), vec4<i32>(-34949i, 62909i, -30281i, -30330i)), -u_input.a, _wgslsmith_f_op_f32(-global0.a.a.x), _wgslsmith_f_op_vec2_f32(var_3.a + vec2<f32>(var_3.b.x, 2988f))).b)), var_4.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.a, _wgslsmith_sub_i32(-5487i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(1i, u_input.a, u_input.a, -22600i))), u_input.a, 2147483647i) ^ max(max(min(vec4<i32>(u_input.a, u_input.a, 25506i, u_input.a), vec4<i32>(u_input.a, u_input.a, -1i, u_input.a)), min(vec4<i32>(0i, u_input.a, 28472i, 2147483647i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))), -abs(vec4<i32>(26016i, -35256i, u_input.a, u_input.a))), -u_input.a << (u_input.b.x % 32u));
}

