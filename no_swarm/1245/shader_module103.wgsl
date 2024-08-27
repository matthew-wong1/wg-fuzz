struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec4<i32>,
    d: f32,
    e: bool,
}

struct Struct_4 {
    a: i32,
    b: u32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_2,
    c: bool,
    d: vec2<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23>;

var<private> global1: Struct_3 = Struct_3(1000f, Struct_1(false, true), vec4<i32>(1i, 1i, 15567i, 2147483647i), 911f, true);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: vec3<u32>, arg_3: u32) -> bool {
    global1 = Struct_3(_wgslsmith_div_f32(1f, global0[_wgslsmith_index_u32(arg_2.x, 23u)]), Struct_1(true, global1.b.a), global1.c, -932f, !global1.b.a);
    let var_0 = Struct_2(Struct_1(!(global1.b.a && false) | false, global1.b.b));
    let var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(-(_wgslsmith_add_i32(arg_1.a, 0i) << (~16871u % 32u)), 1i), select(-select(u_input.a.xz, firstLeadingBit(global1.c.xy), select(vec2<bool>(global1.e, true), vec2<bool>(global1.e, global1.b.a), vec2<bool>(true, global1.e))), abs(u_input.a.yz), select(!select(vec2<bool>(var_0.a.b, global1.b.a), vec2<bool>(global1.b.b, global1.e), true), select(select(vec2<bool>(var_0.a.b, var_0.a.a), vec2<bool>(global1.e, false), vec2<bool>(false, true)), select(vec2<bool>(var_0.a.b, true), vec2<bool>(var_0.a.a, global1.b.b), vec2<bool>(true, var_0.a.a)), !vec2<bool>(var_0.a.a, true)), !select(vec2<bool>(var_0.a.a, var_0.a.b), vec2<bool>(var_0.a.b, true), true))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(158f + 169f) - -851f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -209f) - _wgslsmith_div_f32(-429f, 1000f)), global1.d) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_3, 23u)]), global1.d, global0[_wgslsmith_index_u32(arg_3, 23u)], _wgslsmith_f_op_f32(select(136f, -808f, false))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(338f - global1.a), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(8398u, 23u)])), 559f, -163f))));
    var var_3 = Struct_5(arg_2.yx, Struct_2(Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(-112006i, 14581i), u_input.a.zy) < _wgslsmith_clamp_i32(arg_0, arg_0, arg_0), var_0.a.b)), var_0.a.b, _wgslsmith_mult_vec2_i32(global1.c.zw << (_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, arg_3) & arg_2.zx, vec2<u32>(arg_3, 0u), arg_2.xx) % vec2<u32>(32u)), min(vec2<i32>(-arg_0, 25490i), var_1)), var_0);
    return global1.b.a;
}

fn func_2() -> vec4<i32> {
    global1 = Struct_3(_wgslsmith_f_op_f32(global1.a * 718f), Struct_1(global1.b.b, !(!global1.b.a) && (true && func_3(u_input.a.x, Struct_4(0i, 1u), vec3<u32>(4294967295u, 26051u, 1u), 4294967295u))), ~(-vec4<i32>(u_input.a.x & global1.c.x, i32(-1i) * -2147483647i, 2147483647i, ~(-1i))), 994f, global1.b.a);
    var var_0 = any(select(vec3<bool>(global1.e, false, any(!vec4<bool>(false, global1.b.b, global1.b.b, false))), vec3<bool>(global1.b.b, true, all(vec4<bool>(false, global1.e, true, false))), select(!select(vec3<bool>(global1.e, false, false), vec3<bool>(false, true, false), true), vec3<bool>(any(vec2<bool>(global1.b.b, true)), any(vec4<bool>(global1.e, true, global1.e, global1.e)), false), any(vec3<bool>(false, true, global1.e)) & (global1.c.x >= global1.c.x))));
    let var_1 = Struct_5(_wgslsmith_div_vec2_u32(max(vec2<u32>(1u, 4294967295u), countOneBits(vec2<u32>(u_input.b, 1u))), select(select(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(u_input.b, u_input.b), vec2<bool>(global1.e, global1.e)), vec2<u32>(u_input.b, 8208u), global1.b.b || global1.e)) ^ ~(vec2<u32>(u_input.b, u_input.b) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))), Struct_2(global1.b), true, vec2<i32>(~global1.c.x, global1.c.x), Struct_2(global1.b));
    global0 = array<f32, 23>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 23u)] + -1321f), 1000f, -134f)))));
    return _wgslsmith_sub_vec4_i32(~abs(vec4<i32>(var_1.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 7005i, u_input.a.x), u_input.a), ~(-48379i), 2147483647i)), min(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(~global1.c, abs(global1.c)), global1.c), vec4<i32>(global1.c.x, var_1.d.x, 0i, abs(var_1.d.x)) ^ (vec4<i32>(0i, global1.c.x, var_1.d.x, var_1.d.x) | select(vec4<i32>(var_1.d.x, global1.c.x, u_input.a.x, 2147483647i), vec4<i32>(u_input.a.x, var_1.d.x, -2147483647i, global1.c.x), global1.b.b))));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_4) -> Struct_4 {
    global1 = Struct_3(-149f, global1.b, func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(arg_0.b, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)]))), global1.d)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.d))), -1562f)), any(vec2<bool>(true, true)));
    var var_0 = Struct_2(global1.b);
    var var_1 = Struct_2(global1.b);
    var var_2 = _wgslsmith_div_f32(global1.a, -652f);
    global0 = array<f32, 23>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_clamp_i32(_wgslsmith_mod_i32(_wgslsmith_div_i32(global1.c.x & u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a.xz, vec2<i32>(u_input.a.x, u_input.a.x))), global1.c.x), -1i, u_input.a.x);
    var var_1 = ~4294967295u;
    var var_2 = func_1(Struct_4(abs(global1.c.x), u_input.b), Struct_4(~(-_wgslsmith_mod_i32(var_0, global1.c.x)), 21405u));
    var var_3 = func_1(func_1(Struct_4(u_input.a.x, _wgslsmith_clamp_u32(u_input.b ^ u_input.b, u_input.b, u_input.b)), func_1(Struct_4(_wgslsmith_dot_vec4_i32(global1.c, vec4<i32>(-39053i, 1i, 2147483647i, u_input.a.x)), u_input.b & var_2.b), Struct_4(1i, ~123350u))), Struct_4(max(21952i, reverseBits(var_2.a)), _wgslsmith_dot_vec4_u32(countOneBits(firstLeadingBit(vec4<u32>(u_input.b, 0u, 1u, var_2.b))), reverseBits(max(vec4<u32>(u_input.b, var_2.b, var_2.b, u_input.b), vec4<u32>(var_2.b, var_2.b, u_input.b, 4294967295u))))));
    var var_4 = (vec4<u32>(1u, var_2.b, var_2.b, _wgslsmith_sub_u32(0u, 0u)) & countOneBits(firstLeadingBit(vec4<u32>(u_input.b, var_2.b, var_3.b, var_3.b) >> (vec4<u32>(var_2.b, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u))))) << ((vec4<u32>(_wgslsmith_div_u32(~var_2.b, 1u), ~(~75950u), ~(~var_3.b), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b, var_2.b, 1u, 23971u), vec4<u32>(u_input.b, 51473u, 60119u, 1u)), 1u)) & _wgslsmith_div_vec4_u32(~vec4<u32>(var_3.b, var_2.b, 0u, var_3.b) ^ _wgslsmith_div_vec4_u32(vec4<u32>(var_3.b, u_input.b, 10294u, var_2.b), vec4<u32>(var_2.b, 31296u, u_input.b, var_2.b)), ~vec4<u32>(1u, 20289u, 15170u, 60050u) & ~vec4<u32>(var_2.b, 0u, 0u, u_input.b))) % vec4<u32>(32u));
    global0 = array<f32, 23>();
    var_1 = func_1(Struct_4(_wgslsmith_mod_i32(0i, 91540i), var_3.b << (_wgslsmith_mod_u32(_wgslsmith_sub_u32(24244u, var_4.x), ~var_2.b) % 32u)), func_1(Struct_4(u_input.a.x, abs(1u)), Struct_4(_wgslsmith_mod_i32(var_3.a, min(global1.c.x, -1i)), 49140u))).b;
    var_4 = _wgslsmith_add_vec4_u32(reverseBits(firstTrailingBit(~(~vec4<u32>(var_4.x, 4294967295u, u_input.b, 56412u)))), abs(_wgslsmith_div_vec4_u32(firstLeadingBit(~vec4<u32>(55912u, u_input.b, 4294967295u, var_3.b)), vec4<u32>(max(var_3.b, 12248u), 49369u, var_3.b, abs(var_3.b)))));
    var_1 = 39969u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1291f, global0[_wgslsmith_index_u32(var_3.b << (var_4.x % 32u), 23u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-651f, -327f))), global1.a)), u_input.a.zy, firstLeadingBit(-vec2<i32>(countOneBits(0i), u_input.a.x >> (25315u % 32u))));
}

