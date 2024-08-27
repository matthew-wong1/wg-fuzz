struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4> = array<u32, 4>(56284u, 40634u, 118091u, 90645u);

var<private> global1: vec3<i32>;

var<private> global2: array<vec4<i32>, 29> = array<vec4<i32>, 29>(vec4<i32>(-5917i, -1i, 33900i, 26335i), vec4<i32>(0i, -1i, 2147483647i, 0i), vec4<i32>(-1i, i32(-2147483648), 0i, 0i), vec4<i32>(-7118i, 0i, 1i, 0i), vec4<i32>(0i, -37228i, 50380i, 0i), vec4<i32>(i32(-2147483648), -2557i, 9514i, i32(-2147483648)), vec4<i32>(10104i, 2147483647i, i32(-2147483648), -1i), vec4<i32>(11390i, i32(-2147483648), 2147483647i, 10703i), vec4<i32>(19826i, i32(-2147483648), 21443i, 2147483647i), vec4<i32>(22843i, i32(-2147483648), 0i, -22300i), vec4<i32>(-1i, -1i, 0i, -1i), vec4<i32>(0i, 1i, -1i, -30699i), vec4<i32>(15919i, 7325i, -27787i, 1i), vec4<i32>(-49829i, 0i, 2147483647i, -39983i), vec4<i32>(200i, 2970i, -27934i, -11915i), vec4<i32>(2147483647i, 0i, -1i, -49708i), vec4<i32>(2147483647i, -16178i, 1050i, -36236i), vec4<i32>(20610i, 15830i, 1i, 34274i), vec4<i32>(2147483647i, -45260i, 37254i, 2147483647i), vec4<i32>(-75646i, 2147483647i, 8392i, -17530i), vec4<i32>(56195i, 0i, -31336i, 2147483647i), vec4<i32>(-22074i, 2147483647i, 149i, 2147483647i), vec4<i32>(-13512i, 16198i, 8907i, 1i), vec4<i32>(i32(-2147483648), -1i, -926i, 28149i), vec4<i32>(1i, 0i, 22033i, 0i), vec4<i32>(2147483647i, -14947i, -76627i, 2147483647i), vec4<i32>(27866i, -1173i, i32(-2147483648), 2147483647i), vec4<i32>(0i, 2136i, 14185i, -25126i), vec4<i32>(i32(-2147483648), i32(-2147483648), 15227i, -10330i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> vec2<u32> {
    var var_0 = _wgslsmith_sub_vec3_i32(select(vec3<i32>(~u_input.c.x & _wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(arg_0, 29u)], vec4<i32>(global1.x, u_input.c.x, 30251i, 9496i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-2224i, u_input.d.x, -37769i, 12629i) << (vec4<u32>(arg_0, arg_0, 10819u, 9369u) % vec4<u32>(32u)), u_input.d), -35361i), u_input.d.wwz, any(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)))), countOneBits(abs(select(~u_input.d.zzx, u_input.c.xyz, true))));
    var_0 = u_input.d.wxy;
    let var_1 = Struct_1(arg_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-754f, 621f, false))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-484f, -635f) - _wgslsmith_f_op_f32(ceil(-1000f)))))), (abs(global0[_wgslsmith_index_u32(arg_0 << (32532u % 32u), 4u)]) < _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(62501u, 4u)], global0[_wgslsmith_index_u32(81225u, 4u)]), vec2<u32>(global0[_wgslsmith_index_u32(arg_0, 4u)], u_input.a)), u_input.b.zy << (u_input.b.yx % vec2<u32>(32u)))) || !select(true, true, global0[_wgslsmith_index_u32(arg_0, 4u)] >= 4294967295u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + vec4<f32>(1f, 1f, 1f, 1f)))));
    let var_2 = ~select(vec4<u32>(36856u, ~arg_0, select(global0[_wgslsmith_index_u32(var_1.a, 4u)], 54729u, var_1.c), 4294967295u), vec4<u32>(arg_0, _wgslsmith_sub_u32(arg_0, 1u), arg_0 << (1u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 28119u), vec2<u32>(global0[_wgslsmith_index_u32(1u, 4u)], 0u))), vec4<bool>(false, false, false, any(vec3<bool>(var_1.c, var_1.c, true)))) | select(((vec4<u32>(60840u, 14350u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 4u)], 4u)], arg_0) >> (vec4<u32>(arg_0, 60934u, var_1.a, 1u) % vec4<u32>(32u))) >> (vec4<u32>(101329u, arg_0, 31452u, 4294967295u) % vec4<u32>(32u))) >> (~select(vec4<u32>(4294967295u, u_input.b.x, 13333u, 20217u), vec4<u32>(u_input.b.x, 631u, 0u, var_1.a), vec4<bool>(var_1.c, false, false, true)) % vec4<u32>(32u)), countOneBits(_wgslsmith_div_vec4_u32(~vec4<u32>(0u, 20831u, 1u, 4294967295u), vec4<u32>(arg_0, var_1.a, global0[_wgslsmith_index_u32(arg_0, 4u)], u_input.b.x) | vec4<u32>(var_1.a, 1u, arg_0, global0[_wgslsmith_index_u32(0u, 4u)]))), all(vec4<bool>(!var_1.c, !var_1.c, true, var_1.c)));
    let var_3 = true;
    return ~vec2<u32>(firstTrailingBit(var_2.x), _wgslsmith_add_u32(1u, arg_0));
}

fn func_2(arg_0: bool) -> Struct_1 {
    global0 = array<u32, 4>();
    var var_0 = ~(~_wgslsmith_mult_vec4_u32(firstTrailingBit(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 4u)], global0[_wgslsmith_index_u32(61424u, 4u)], 20348u, 0u)), abs(vec4<u32>(1u, 1u, global0[_wgslsmith_index_u32(4294967295u, 4u)], 42957u))));
    var var_1 = ~u_input.b.yx;
    var var_2 = vec3<u32>(reverseBits(~var_1.x), abs(_wgslsmith_dot_vec2_u32(~var_0.wy >> (func_3(var_0.x) % vec2<u32>(32u)), max(_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.x, 43648u), u_input.b.xz), vec2<u32>(u_input.a, 0u)))), ~(_wgslsmith_div_u32(u_input.b.x, _wgslsmith_mult_u32(38545u, var_0.x)) >> (~(~0u) % 32u)));
    var var_3 = 1352f;
    return Struct_1(~122372u, _wgslsmith_f_op_f32(149f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -903f), _wgslsmith_f_op_f32(sign(479f)))))), true, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1449f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-268f - 1786f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-393f + 935f), _wgslsmith_div_f32(607f, 1450f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1362f + 781f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-803f)), -2387f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1485f))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = !(-4393i <= arg_3.b);
    var var_1 = !(!vec3<bool>(all(arg_2.a.yz), arg_1.c, all(!vec4<bool>(arg_0, arg_3.c.c, arg_2.a.x, arg_0))));
    let var_2 = Struct_1(firstLeadingBit(_wgslsmith_mult_u32(5402u & arg_1.a, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_2.c.a, 1u), vec2<u32>(4294967295u, u_input.b.x)), vec2<u32>(global0[_wgslsmith_index_u32(arg_3.c.a, 4u)], 61085u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.c.d.x * -1200f) * 1117f))), arg_1.b), var_1.x, vec4<f32>(1970f, arg_1.b, _wgslsmith_f_op_f32(-arg_3.c.d.x), -1515f));
    global2 = array<vec4<i32>, 29>();
    global0 = array<u32, 4>();
    return select(select(arg_2.a, vec3<bool>(-898f >= _wgslsmith_f_op_f32(ceil(var_2.b)), _wgslsmith_div_i32(0i, arg_2.b) >= ~61011i, true), !all(!arg_2.a)), !arg_2.a, 4294967295u != ~(~arg_3.c.a));
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: u32, arg_3: Struct_2) -> i32 {
    global0 = array<u32, 4>();
    var var_0 = Struct_2(!func_4(global0[_wgslsmith_index_u32(firstTrailingBit(22682u), 4u)] > ~55675u, func_2(false), Struct_2(vec3<bool>(true, arg_3.c.c, arg_0), -arg_3.b, arg_3.c, func_2(arg_0).c), arg_3), u_input.d.x, Struct_1(u_input.b.x >> (u_input.b.x % 32u), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(arg_1.x * -683f)), !select(true, any(arg_3.a), arg_0), _wgslsmith_f_op_vec4_f32(min(arg_1, vec4<f32>(-205f, _wgslsmith_f_op_f32(-arg_3.c.b), -1035f, arg_3.c.d.x)))), arg_0);
    var var_1 = -1133f;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_div_f32(_wgslsmith_div_f32(arg_3.c.b, arg_1.x), var_0.c.b)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.b, _wgslsmith_f_op_f32(min(arg_1.x, arg_1.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1840f - 777f) - arg_1.x) + _wgslsmith_f_op_f32(exp2(var_0.c.d.x)))));
    var var_3 = func_2(!all(!arg_3.a.zz));
    return 62241i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~(-reverseBits(vec3<i32>(func_1(false, vec4<f32>(1078f, 445f, -535f, -815f), 4294967295u, Struct_2(vec3<bool>(false, true, false), -1585i, Struct_1(u_input.a, 461f, true, vec4<f32>(990f, 420f, -1571f, -1209f)), true)), _wgslsmith_mult_i32(u_input.c.x, global1.x), 2147483647i)));
    let var_0 = _wgslsmith_f_op_f32(step(1f, -1564f));
    var var_1 = Struct_1(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.b.zx, vec2<u32>(u_input.a, 65861u)), ~u_input.a, u_input.a), u_input.b)), _wgslsmith_f_op_f32(-var_0), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0, 889f, var_0, var_0))) - vec4<f32>(var_0, _wgslsmith_f_op_f32(var_0 - var_0), var_0, -721f)) + vec4<f32>(var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(var_0 + var_0)), var_0, var_0)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2387f, var_1.d.x, var_1.d.x, var_1.d.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-727f, -349f, var_1.d.x, 504f)))), select(!vec4<bool>(true, var_1.c, var_1.c, var_1.c), vec4<bool>(true, var_1.c, var_1.c, var_1.c), 1u < global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.a, 4u)], 4u)]))))));
    let var_3 = vec2<u32>(~var_1.a, global0[_wgslsmith_index_u32(61831u, 4u)]);
    var var_4 = Struct_2(vec3<bool>(var_1.c, var_1.c, true | (_wgslsmith_div_i32(2147483647i, u_input.c.x) < 0i)), 1i, Struct_1(68713u, _wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, var_2.x)))), var_1.c, vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0, 552f), _wgslsmith_f_op_f32(f32(-1f) * -299f))), -1556f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + 1625f) - 203f), 1306f)), any(select(!func_4(var_1.c, Struct_1(var_3.x, -1098f, var_1.c, vec4<f32>(1000f, 293f, var_1.d.x, var_2.x)), Struct_2(vec3<bool>(var_1.c, var_1.c, false), -26999i, Struct_1(0u, -1767f, false, var_1.d), true), Struct_2(vec3<bool>(true, true, true), global1.x, Struct_1(75021u, 395f, var_1.c, vec4<f32>(1046f, var_2.x, var_0, 705f)), var_1.c)).yx, !select(vec2<bool>(var_1.c, var_1.c), vec2<bool>(false, var_1.c), vec2<bool>(var_1.c, false)), func_4(var_1.c, func_2(false), Struct_2(vec3<bool>(false, false, var_1.c), u_input.c.x, Struct_1(20047u, 225f, var_1.c, vec4<f32>(var_2.x, var_0, var_0, -1065f)), true), Struct_2(vec3<bool>(var_1.c, var_1.c, var_1.c), u_input.d.x, Struct_1(0u, var_0, var_1.c, vec4<f32>(289f, 1191f, 999f, var_0)), false)).yz)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(~max(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 4u)], 4u)], var_1.a)), 1u, ~_wgslsmith_mod_u32(_wgslsmith_div_u32(8744u, global0[_wgslsmith_index_u32(1u, 4u)]), min(var_4.c.a, 30157u)), ~(~1u)));
}

