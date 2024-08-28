struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: i32,
    d: vec4<bool>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: u32;

var<private> global2: vec4<i32>;

var<private> global3: Struct_3;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: u32, arg_3: Struct_2) -> vec3<u32> {
    var var_0 = select(!global3.d.wy, global3.b.a, true);
    global1 = _wgslsmith_sub_u32(~arg_1, 23083u);
    var var_1 = vec3<u32>(abs(arg_3.b.b.x), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, 24806u), vec2<u32>(0u, 61214u))), 78081u) | ~_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(45740u, arg_1, 11869u), vec3<u32>(1u, arg_2, arg_0.a.x)), abs(44684u), arg_0.a.x), reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.b.d.b.x, 1u, 70040u), vec3<u32>(arg_0.b.b.b.x, arg_3.d.b.x, 1u))));
    global2 = -(~(~vec4<i32>(global3.b.b.a << (38612u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 8849i, -1i, arg_0.c), vec4<i32>(-2147483647i, u_input.a, 2147483647i, 1162i)), -1i, min(global2.x, -31335i))));
    var var_2 = Struct_3(firstLeadingBit(~min(global3.a >> (vec2<u32>(arg_2, 23025u) % vec2<u32>(32u)), ~vec2<u32>(arg_1, arg_1))), Struct_2(!(!arg_3.a), global3.b.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.b.b.c * _wgslsmith_f_op_vec2_f32(-global3.e.xz))), Struct_1(firstTrailingBit(global2.x), vec2<u32>(~1u, _wgslsmith_mod_u32(var_1.x, 29434u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-277f, 114f), vec2<f32>(220f, arg_3.d.c.x)))))), -2147483647i, !(!vec4<bool>(true, global3.b.c.x != 225f, arg_2 == var_1.x, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(global3.e)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.e.x, global3.e.x, global3.b.c.x))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.c.x, global3.e.x, -161f) - vec3<f32>(1868f, -710f, arg_3.b.c.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b.c.x, arg_3.c.x, global3.b.b.c.x) - arg_0.e)))));
    return _wgslsmith_clamp_vec3_u32(countOneBits(firstLeadingBit(~(vec3<u32>(43867u, var_1.x, 0u) ^ vec3<u32>(33876u, 1903u, 102642u)))), ~abs(vec3<u32>(~global3.b.d.b.x, firstTrailingBit(1u), ~arg_2)), ~min(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_2, 42876u), vec3<u32>(53635u, 42804u, 4294967295u)), 0u, _wgslsmith_mod_u32(4294967295u, global3.a.x)), select(~vec3<u32>(var_2.b.d.b.x, arg_2, 4294967295u), vec3<u32>(arg_3.d.b.x, 23500u, 8446u) ^ vec3<u32>(var_1.x, var_1.x, 0u), !arg_0.d.wwx)));
}

fn func_4(arg_0: i32, arg_1: vec2<i32>, arg_2: vec3<u32>) -> vec2<bool> {
    var var_0 = Struct_3(arg_2.zx, Struct_2(vec2<bool>(false, global3.d.x), global3.b.d, _wgslsmith_f_op_vec2_f32(-global3.e.yx), global3.b.d), arg_1.x, !global3.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.b.c.x, global3.b.b.c.x, -182f)) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global3.b.c.x, -2211f))))) - global3.e));
    global1 = _wgslsmith_mod_u32(_wgslsmith_add_u32(var_0.b.b.b.x, 4294967295u), _wgslsmith_div_u32(var_0.b.b.b.x, _wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_2.x, global3.a.x), vec2<u32>(var_0.a.x, 17423u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(global3.b.b.b.x, arg_2.x), ~vec2<u32>(global3.b.b.b.x, global3.b.d.b.x), vec2<u32>(0u, global3.a.x)))));
    let var_1 = var_0.e.x;
    return select(!(!global3.d.xz), var_0.d.yy, select(var_0.b.a, !vec2<bool>(any(vec3<bool>(global3.b.a.x, var_0.d.x, global3.d.x)), true), !vec2<bool>(!var_0.b.a.x, var_0.b.a.x || var_0.d.x)));
}

fn func_2() -> Struct_2 {
    let var_0 = abs(~reverseBits(select(1u, ~26908u, true)));
    global1 = _wgslsmith_mult_u32(~_wgslsmith_mult_u32(~var_0, _wgslsmith_div_u32(~global3.b.d.b.x, firstTrailingBit(28746u))), 54645u);
    var var_1 = global3.d;
    var var_2 = Struct_2(select(global3.b.a, global3.d.zy, !func_4(global2.x, _wgslsmith_mult_vec2_i32(vec2<i32>(global3.b.d.a, -19926i), vec2<i32>(-1i, global3.c)), func_3(Struct_3(global3.b.d.b, Struct_2(vec2<bool>(true, global3.d.x), global3.b.b, vec2<f32>(-1769f, global3.b.b.c.x), Struct_1(0i, vec2<u32>(global3.b.b.b.x, 0u), global3.e.zx)), u_input.b.x, vec4<bool>(false, false, false, var_1.x), vec3<f32>(768f, 1000f, 2287f)), global3.a.x, var_0, Struct_2(vec2<bool>(global3.b.a.x, false), Struct_1(62558i, global3.b.b.b, global3.e.yx), vec2<f32>(global3.e.x, global3.e.x), Struct_1(-14198i, vec2<u32>(8897u, 1u), vec2<f32>(658f, global3.b.d.c.x)))))), Struct_1(1i, vec2<u32>(_wgslsmith_div_u32(abs(global3.a.x), _wgslsmith_mod_u32(global3.a.x, var_0)), ~var_0), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.b.d.c) + vec2<f32>(_wgslsmith_f_op_f32(-global3.e.x), global3.b.d.c.x))), global3.e.yz, global3.b.b);
    let var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(-(~abs(u_input.b.x)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.b.a, -18951i), u_input.b.xz), -1i, abs(_wgslsmith_div_i32(-1i, 25472i) ^ u_input.a)), ~(-abs(vec4<i32>(-1i, -1i, var_2.d.a, -23251i) ^ vec4<i32>(var_2.b.a, 2147483647i, var_2.b.a, var_2.d.a))));
    return global3.b;
}

fn func_5(arg_0: vec4<i32>, arg_1: f32, arg_2: vec2<u32>, arg_3: Struct_2) -> u32 {
    var var_0 = reverseBits(arg_3.d.b.x);
    let var_1 = -arg_0.x;
    var var_2 = 1000f;
    global0 = 0u;
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1761f)), -1904f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(375f - _wgslsmith_f_op_f32(-arg_3.b.c.x))));
    return max(global3.a.x, global3.a.x);
}

fn func_1(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec4<bool>, arg_3: vec2<f32>) -> u32 {
    global2 = vec4<i32>(u_input.b.x, ~_wgslsmith_div_i32(1i, -1i), _wgslsmith_dot_vec3_i32(global2.zyx, _wgslsmith_mod_vec3_i32(vec3<i32>(0i, u_input.b.x, global2.x), u_input.b)), _wgslsmith_mod_i32(-22144i, _wgslsmith_clamp_i32(global2.x, global2.x, 0i) & global3.b.b.a)) << (vec4<u32>(arg_0.b.b.b.x, func_5(vec4<i32>(_wgslsmith_mod_i32(5182i, 52661i), 1i, arg_0.c, 1i), arg_3.x, ~min(arg_1, vec2<u32>(85676u, global3.b.b.b.x)), func_2()), ~(~(~37646u)), 0u) % vec4<u32>(32u));
    let var_0 = arg_0.d;
    global3 = Struct_3(~firstTrailingBit((arg_0.a ^ vec2<u32>(47252u, 2289u)) & vec2<u32>(36390u, arg_0.a.x)), Struct_2(func_4(global2.x, ~_wgslsmith_add_vec2_i32(u_input.b.xy, vec2<i32>(global2.x, arg_0.b.b.a)), _wgslsmith_add_vec3_u32(vec3<u32>(global3.a.x, 7026u, 0u) ^ vec3<u32>(arg_1.x, arg_0.b.d.b.x, arg_0.a.x), ~vec3<u32>(69795u, arg_0.b.d.b.x, arg_1.x))), func_2().b, _wgslsmith_f_op_vec2_f32(min(arg_0.e.xx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3)))), func_2().b), max(-42076i, arg_0.c), vec4<bool>(any(!var_0), all(!select(arg_2, vec4<bool>(false, true, false, arg_2.x), arg_0.d.x)), func_2().a.x, var_0.x & var_0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(func_2().b.c.x, _wgslsmith_f_op_f32(1532f + 446f), u_input.a <= 0i)), _wgslsmith_f_op_f32(-1f), global3.e.x) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(arg_0.e - _wgslsmith_div_vec3_f32(arg_0.e, global3.e))))));
    let var_1 = -(vec4<i32>(u_input.a, _wgslsmith_add_i32(global3.c, 2147483647i) & ~(-23846i), 14271i, -(~16100i)) >> (~(~(~vec4<u32>(arg_0.b.d.b.x, arg_1.x, global3.b.d.b.x, arg_1.x))) % vec4<u32>(32u)));
    let var_2 = arg_0.b.b.a;
    return ~_wgslsmith_mod_u32(abs(30077u), ~arg_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(global3.d);
    global3 = Struct_3(_wgslsmith_clamp_vec2_u32(vec2<u32>(~(~0u), global3.b.b.b.x), vec2<u32>(~func_1(Struct_3(global3.b.b.b, Struct_2(global3.d.xx, global3.b.b, vec2<f32>(-711f, 1603f), global3.b.b), global3.c, global3.d, global3.e), vec2<u32>(global3.b.b.b.x, 1u), vec4<bool>(false, global3.d.x, global3.d.x, true), global3.b.c), func_5(~vec4<i32>(u_input.b.x, -35883i, 0i, 7779i), global3.e.x, global3.b.b.b, Struct_2(vec2<bool>(true, true), Struct_1(-28831i, vec2<u32>(global3.a.x, global3.b.b.b.x), global3.b.d.c), global3.b.c, global3.b.b))), ~(~select(vec2<u32>(global3.a.x, global3.b.b.b.x), global3.a, global3.b.a))), func_2(), -firstLeadingBit(8247i), !vec4<bool>(true, !(!global3.d.x), _wgslsmith_mod_i32(u_input.a, global2.x) != u_input.a, false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(global3.e)) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-356f))), global3.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global3.b.d.c.x))))));
    var var_1 = u_input.b;
    let var_2 = _wgslsmith_clamp_vec3_i32(~u_input.b, u_input.b, u_input.b);
    var var_3 = vec4<i32>(-_wgslsmith_dot_vec2_i32(-var_1.yy, vec2<i32>(select(global2.x, -22797i, global3.d.x), -10239i)), _wgslsmith_div_i32(reverseBits(_wgslsmith_mod_i32(~var_2.x, _wgslsmith_div_i32(0i, var_2.x))), -_wgslsmith_mod_i32(global3.b.d.a, 0i)), 1i, ~_wgslsmith_sub_i32(-(~u_input.a), ~min(2147483647i, u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(Struct_3((vec2<u32>(21823u, global3.a.x) << (global3.b.d.b % vec2<u32>(32u))) & _wgslsmith_clamp_vec2_u32(vec2<u32>(8778u, global3.b.d.b.x), vec2<u32>(global3.b.d.b.x, 4294967295u), vec2<u32>(global3.b.d.b.x, global3.a.x)), global3.b, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_3.yw, u_input.b.xy), var_3.xx), !(!vec4<bool>(true, true, global3.b.a.x, global3.d.x)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global3.e)))), vec2<u32>(global3.a.x & global3.a.x, ~(~global3.a.x)), vec4<bool>(all(!global3.b.a), func_4(2147483647i, vec2<i32>(10016i, 45923i), vec3<u32>(global3.b.b.b.x, global3.a.x, 4294967295u)).x, !func_2().a.x, global3.d.x), vec2<f32>(_wgslsmith_f_op_f32(-1531f + _wgslsmith_f_op_f32(f32(-1f) * -194f)), -275f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 736f, global3.e.x, global3.e.x), vec3<u32>(~(~(global3.a.x >> (1u % 32u))), ~global3.a.x, ~_wgslsmith_add_u32(23711u, global3.b.d.b.x | 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.e.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global3.b.d.c.x, global3.b.b.c.x))))) - global3.e.x));
}

