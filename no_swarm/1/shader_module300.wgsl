struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: array<Struct_2, 22>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: bool) -> vec4<bool> {
    var var_0 = min(~(~(~arg_2.a.a.a.x)) << (1u % 32u), select(~firstTrailingBit(1u), arg_2.b.x, !(!(!arg_1.x))));
    let var_1 = arg_2.a;
    global0 = array<Struct_1, 31>();
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1085f * -1010f), -342f, arg_3))) - _wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -873f))), _wgslsmith_f_op_f32(round(-635f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -851f))))), _wgslsmith_f_op_f32(-1925f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-365f)))))));
    var var_3 = arg_1.x;
    return !(!select(select(vec4<bool>(arg_1.x, arg_3, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x), vec4<bool>(true, arg_1.x, false, arg_3)), vec4<bool>(all(vec3<bool>(true, arg_1.x, true)), all(vec4<bool>(true, arg_1.x, true, arg_1.x)), true, !arg_3), !(true & arg_3)));
}

fn func_2(arg_0: Struct_2) -> vec4<u32> {
    var var_0 = select(!vec4<bool>(4294967295u < arg_0.a.a.x, true, true, true), func_3(Struct_1(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(arg_0.b.a, arg_0.c.a, vec4<u32>(arg_0.b.d, 4294967295u, arg_0.b.a.x, 10548u)), abs(vec4<u32>(1u, arg_0.b.d, arg_0.a.b, arg_0.a.d))), arg_0.a.b, -vec3<i32>(0i, -31147i, arg_0.b.c.x), arg_0.b.b), vec2<bool>(!select(true, true, true), false), Struct_3(arg_0, _wgslsmith_mult_vec4_u32(arg_0.c.a, abs(vec4<u32>(4294967295u, 20636u, arg_0.a.b, 0u)))), false), func_3(arg_0.a, select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, -1i < u_input.d)), Struct_3(Struct_2(global0[_wgslsmith_index_u32(~4761u, 31u)], arg_0.a, Struct_1(vec4<u32>(arg_0.a.d, arg_0.b.d, arg_0.a.b, 32226u), 7406u, vec3<i32>(arg_0.b.c.x, u_input.e, 0i), arg_0.b.d)), min(arg_0.b.a, ~arg_0.c.a)), all(vec4<bool>(true, true, true, true))).x);
    var_0 = !vec4<bool>(!var_0.x, true, !((-2147483647i < arg_0.c.c.x) || !var_0.x), var_0.x);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1408f - _wgslsmith_f_op_f32(sign(699f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1009f)), _wgslsmith_f_op_f32(-440f - -1333f))) - -525f));
    let var_2 = _wgslsmith_dot_vec3_u32(abs(arg_0.c.a.xzz), ~arg_0.b.a.wyy);
    var var_3 = global0[_wgslsmith_index_u32(9835u, 31u)];
    return ~abs(select(arg_0.c.a, reverseBits(arg_0.c.a), var_0.x)) << (arg_0.b.a % vec4<u32>(32u));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<u32>) -> vec3<bool> {
    var var_0 = global1[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(~firstTrailingBit(arg_1.x << (arg_1.x % 32u)), ~arg_1.x | 19237u), 0u), 22u)];
    let var_1 = _wgslsmith_mod_i32(var_0.b.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(~15660i, ~0i, firstLeadingBit(_wgslsmith_mult_i32(u_input.e, var_0.c.c.x)), 20528i), ~(~_wgslsmith_mult_vec4_i32(vec4<i32>(-62567i, u_input.e, 2147483647i, u_input.e), vec4<i32>(29705i, u_input.b.x, -1i, var_0.b.c.x)))));
    let var_2 = Struct_3(Struct_2(var_0.a, var_0.c, Struct_1(~func_2(Struct_2(var_0.c, Struct_1(vec4<u32>(arg_1.x, 1u, arg_1.x, var_0.a.d), 4294967295u, var_0.b.c, arg_1.x), global0[_wgslsmith_index_u32(arg_1.x, 31u)])), arg_1.x, var_0.a.c, max(~arg_1.x, ~arg_1.x))), _wgslsmith_mult_vec4_u32(~abs(vec4<u32>(arg_1.x, arg_1.x, 1u, var_0.b.d)), vec4<u32>(~var_0.b.d, 4294967295u, ~arg_1.x, abs(arg_1.x))));
    global1 = array<Struct_2, 22>();
    var var_3 = _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(arg_1.wy >> (~(~vec2<u32>(62353u, 0u)) % vec2<u32>(32u)), ~arg_1.wx), 37848u);
    return vec3<bool>(0u >= (1u & (arg_1.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b.x, 8864u, arg_1.x, var_2.b.x), vec4<u32>(1u, 1u, var_0.c.a.x, 4294967295u)) % 32u))), arg_0.x, arg_0.x);
}

fn func_5(arg_0: vec3<bool>, arg_1: vec2<f32>) -> f32 {
    let var_0 = Struct_3(Struct_2(global0[_wgslsmith_index_u32(min(1u, ~1u), 31u)], Struct_1(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_div_u32(0u, 61600u), reverseBits(-vec3<i32>(u_input.a, -35749i, u_input.b.x)), ~71964u), Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(0u, 0u, 13554u, 0u)), firstLeadingBit(~5753u), vec3<i32>(~u_input.d, u_input.b.x, max(u_input.c.x, 0i)), min(690u, 12233u) << (min(74194u, 0u) % 32u))), select(vec4<u32>(1u, 1u, 1u, 1u), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), func_2(global1[_wgslsmith_index_u32(4164u, 22u)]))), !(!vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x))));
    var var_1 = firstLeadingBit(var_0.a.a.c.xy ^ _wgslsmith_div_vec2_i32(vec2<i32>(~(-7057i), -29651i), u_input.c));
    var var_2 = Struct_1(vec4<u32>(~var_0.b.x, ~(~1u), var_0.b.x, var_0.b.x), abs(~36959u), vec3<i32>(abs(var_1.x), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.a.c.x, abs(1i)), u_input.b.zz), var_1.x & firstLeadingBit(u_input.c.x)), ~min(~4294967295u, var_0.a.c.b));
    global0 = array<Struct_1, 31>();
    global0 = array<Struct_1, 31>();
    return _wgslsmith_f_op_f32(f32(-1f) * -776f);
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(func_5(func_4(vec2<bool>(all(vec2<bool>(true, true)), any(vec3<bool>(true, false, true))), select(_wgslsmith_div_vec4_u32(func_2(Struct_2(global0[_wgslsmith_index_u32(37921u, 31u)], Struct_1(vec4<u32>(95613u, 1u, 35123u, 19405u), 0u, vec3<i32>(u_input.c.x, 351i, u_input.e), 4294967295u), Struct_1(vec4<u32>(20385u, 0u, 23671u, 1u), 802u, vec3<i32>(-10148i, u_input.a, -1i), 3392u))), ~vec4<u32>(21459u, 1u, 18816u, 38608u)), vec4<u32>(1u, 24912u, 4294967295u, 5003u), vec4<bool>(true, true, true, true))), vec2<f32>(1f, 1f)));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(~4398u), ~(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 41894u, 1u, 24696u), vec4<u32>(1u, 1u, 1u, 1u)) | _wgslsmith_sub_u32(1u, ~4294967295u))), 31u)];
    let var_2 = global1[_wgslsmith_index_u32(var_1.d, 22u)];
    global1 = array<Struct_2, 22>();
    let var_3 = -(~(~(-23827i)));
    return _wgslsmith_mod_u32(4294967295u, _wgslsmith_mult_u32(1u, var_2.c.d));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 31>();
    let var_0 = Struct_3(Struct_2(global0[_wgslsmith_index_u32(func_1(), 31u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(22736u, 8104u, 13218u, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), select(vec4<u32>(4294967295u, 3497u, 0u, 4294967295u), vec4<u32>(108870u, 525u, 0u, 9381u), true), ~vec4<u32>(0u, 1u, 4294967295u, 108467u))), 31u)], Struct_1(vec4<u32>(firstLeadingBit(67856u), _wgslsmith_sub_u32(4294967295u, 0u), 40735u, _wgslsmith_mult_u32(4294967295u, 0u)), ~(~50478u), ~u_input.b, 39553u)), firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)));
    var var_1 = 1f;
    global0 = array<Struct_1, 31>();
    var var_2 = Struct_2(Struct_1(~(~vec4<u32>(var_0.a.b.b, 1u, var_0.b.x, 0u)) ^ vec4<u32>(_wgslsmith_sub_u32(16543u, var_0.b.x), ~var_0.a.b.a.x, ~4294967295u, firstLeadingBit(0u)), firstLeadingBit(~14998u), vec3<i32>(_wgslsmith_mod_i32(u_input.c.x << (var_0.a.a.b % 32u), u_input.d), u_input.c.x, firstLeadingBit(0i)), min(~(~var_0.b.x), var_0.b.x)), global0[_wgslsmith_index_u32(var_0.b.x, 31u)], global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(var_0.b.zw, ~vec2<u32>(12847u, var_0.a.b.b))), 31u)]);
    let var_3 = vec2<bool>(true, true);
    var var_4 = vec2<bool>(var_3.x, var_3.x);
    var var_5 = func_3(global0[_wgslsmith_index_u32(~(~(~firstTrailingBit(13999u))), 31u)], vec2<bool>(func_4(var_3, var_0.a.b.a).x, true), var_0, var_3.x || !var_3.x).x;
    var var_6 = Struct_3(global1[_wgslsmith_index_u32(var_0.b.x, 22u)], ~_wgslsmith_add_vec4_u32(var_0.a.a.a, ~func_2(global1[_wgslsmith_index_u32(39324u, 22u)])));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.a.c.xz, _wgslsmith_add_vec3_u32(max(var_6.b.zyw, reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(67490u, 4294967295u, 12677u), var_6.a.b.a.xxz, var_6.a.c.a.xyz))), _wgslsmith_mod_vec3_u32(abs(vec3<u32>(var_6.a.b.b, var_2.a.b, 1463u)), var_6.a.c.a.xzz)), 15148u);
}

