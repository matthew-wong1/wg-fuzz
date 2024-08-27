struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<f32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: u32;

var<private> global2: array<Struct_4, 1> = array<Struct_4, 1>(Struct_4(vec4<i32>(-33997i, -42587i, -27808i, 2147483647i), vec2<f32>(-124f, 448f), -1000f));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> bool {
    global0 = vec2<bool>(true, false);
    let var_0 = _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(reverseBits(~u_input.b | vec2<u32>(4294967295u, 61436u)), select(vec2<u32>(abs(35197u), ~u_input.d.x), ~vec2<u32>(1u, u_input.b.x), vec2<bool>(global0.x & global0.x, all(vec2<bool>(false, global0.x))))), u_input.b);
    let var_1 = Struct_5(Struct_2(15622u, !(!select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, true, true), global0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-363f + 1245f)), _wgslsmith_f_op_f32(select(-285f, _wgslsmith_div_f32(628f, 1065f), all(vec3<bool>(global0.x, true, global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -975f)), 644f)), Struct_3(select(vec3<bool>(true, global0.x, !global0.x), vec3<bool>(!global0.x, global0.x, true | global0.x), -2147483647i > u_input.c), vec3<u32>(4294967295u, u_input.d.x, 19843u << (u_input.d.x % 32u)), Struct_2(~(~u_input.d.x), !select(vec3<bool>(global0.x, false, true), vec3<bool>(false, global0.x, false), vec3<bool>(true, global0.x, global0.x))), Struct_2(var_0.x, !vec3<bool>(global0.x, false, global0.x))));
    return true;
}

fn func_2() -> vec3<u32> {
    let var_0 = vec2<u32>((~(u_input.b.x >> (u_input.d.x % 32u)) & 0u) ^ firstTrailingBit(u_input.d.x), ~reverseBits(~u_input.b.x) << (~u_input.d.x % 32u));
    let var_1 = _wgslsmith_div_u32(0u, _wgslsmith_clamp_u32(u_input.d.x, _wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(var_0.x, 87956u, u_input.d.x, u_input.b.x)), vec4<u32>(var_0.x | var_0.x, u_input.d.x, 4294967295u, _wgslsmith_mod_u32(52541u, u_input.d.x))), 1u));
    var var_2 = vec3<u32>(_wgslsmith_sub_u32(~22669u, ~u_input.d.x), u_input.b.x, ~_wgslsmith_clamp_u32(4294967295u, ~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 16526u, 83766u, 0u), vec4<u32>(0u, 0u, 13756u, 5755u)))) & ~select(vec3<u32>(_wgslsmith_sub_u32(42837u, u_input.d.x), var_0.x | 65089u, var_0.x), max(~vec3<u32>(var_0.x, u_input.b.x, 19023u), ~vec3<u32>(0u, 22895u, var_0.x)), func_3());
    global2 = array<Struct_4, 1>();
    let var_3 = u_input.e;
    return vec3<u32>(u_input.d.x, ~var_0.x, var_1);
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = Struct_1(select(select(~(~vec3<u32>(arg_1, 1u, arg_1)), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.d.x, u_input.b.x, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.d.x, 7531u), vec3<u32>(1u, 51289u, arg_1))), true), select(func_2(), ~max(vec3<u32>(14142u, 0u, arg_1), vec3<u32>(u_input.d.x, 1u, arg_1)), _wgslsmith_f_op_f32(abs(arg_2.x)) != _wgslsmith_f_op_f32(-arg_0)), !select(!vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, global0.x, global0.x), arg_2.x <= arg_2.x)), -u_input.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, 1005f)) * 1546f), _wgslsmith_f_op_f32(-604f - _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-arg_0))), false)));
    let var_1 = abs(((~vec4<i32>(0i, var_0.b, u_input.c, u_input.a.x) ^ -vec4<i32>(var_0.b, -29828i, 2147483647i, -6196i)) ^ ((vec4<i32>(u_input.a.x, var_0.b, -2147483647i, var_0.b) | u_input.a) << (_wgslsmith_div_vec4_u32(vec4<u32>(arg_1, 52188u, u_input.b.x, 0u), vec4<u32>(33886u, var_0.a.x, 59371u, 18999u)) % vec4<u32>(32u)))) & u_input.a);
    return Struct_2(~arg_1, !vec3<bool>(false, any(!vec4<bool>(false, global0.x, false, global0.x)), false));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: u32, arg_3: bool) -> Struct_3 {
    var var_0 = abs(22500u & u_input.d.x);
    global0 = select(arg_1.b.xy, arg_1.b.zz, arg_3);
    var var_1 = reverseBits(_wgslsmith_mult_i32(1272i, u_input.e.x));
    var var_2 = arg_0.c;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2367f, arg_0.c, 906f, arg_0.b.x) + vec4<f32>(arg_0.b.x, 2871f, arg_0.b.x, -821f))))) - vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(254f + arg_0.c))), 338f, _wgslsmith_f_op_f32(ceil(1034f)), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-405f - -132f)))));
    return Struct_3(arg_1.b, vec3<u32>(_wgslsmith_sub_u32(countOneBits(arg_2), 1u), arg_2, ~u_input.d.x), arg_1, arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(select(select(vec3<bool>(global0.x, false, false), vec3<bool>(global0.x, false, global0.x), false), vec3<bool>(global0.x, false, true), vec3<bool>(global0.x, false, global0.x)), vec3<bool>(false, global0.x, select(global0.x, global0.x, true)), !select(global0.x, true, false)));
    let var_1 = func_4(global2[_wgslsmith_index_u32(4294967295u & ~u_input.d.x, 1u)], func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1124f + -1000f))), 1u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-1907f, -726f)), _wgslsmith_div_f32(1594f, 554f), _wgslsmith_f_op_f32(-382f - -1310f), _wgslsmith_f_op_f32(f32(-1f) * -348f)))), _wgslsmith_sub_u32(3353u, countOneBits(10272u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-398f, 591f)) * -1092f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(192f)))));
    var var_2 = ~var_1.b.yy;
    let var_3 = Struct_3(vec3<bool>(!global0.x, var_0.x, var_0.x), var_1.b, func_4(Struct_4(_wgslsmith_mult_vec4_i32(vec4<i32>(6596i, u_input.a.x, u_input.a.x, u_input.e.x), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.e.x, u_input.e.x, u_input.a.x, 8460i), vec4<i32>(-4696i, u_input.c, 0i, 31939i))), vec2<f32>(-1865f, _wgslsmith_f_op_f32(730f + 250f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -448f))), func_1(496f, ~var_1.d.a, vec4<f32>(_wgslsmith_f_op_f32(select(-2109f, 994f, false)), _wgslsmith_f_op_f32(f32(-1f) * -1513f), _wgslsmith_f_op_f32(floor(-355f)), -947f)), 4294967295u, true).c, var_1.c);
    let var_4 = func_4(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(min(var_3.b.x, 1u), _wgslsmith_add_u32(var_1.b.x, min(~u_input.d.x, 1u))), 1u)], Struct_2(countOneBits(reverseBits(var_3.c.a)), vec3<bool>(false, global0.x, var_3.d.b.x)), reverseBits(4294967295u) >> ((_wgslsmith_mod_u32(_wgslsmith_add_u32(var_3.c.a, var_2.x), 1u) ^ 85293u) % 32u), false);
    var_2 = _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(10494u, 42912u)), vec2<u32>(_wgslsmith_mult_u32(14214u, 23142u), var_1.d.a) >> (countOneBits(var_3.b.yy) % vec2<u32>(32u))), vec2<u32>(31963u, abs(var_4.d.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(202f, 906f) + _wgslsmith_div_vec2_f32(vec2<f32>(-852f, -391f), vec2<f32>(1317f, -611f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1000f - -652f), _wgslsmith_f_op_f32(f32(-1f) * -1042f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1f, 1f, 1f)))), vec4<u32>(var_4.b.x, var_2.x, 1u, var_2.x), -55093i, abs(abs(select(min(vec4<u32>(var_4.b.x, 12431u, 95661u, var_1.c.a), vec4<u32>(u_input.d.x, var_4.b.x, 1u, var_1.d.a)), ~vec4<u32>(22114u, var_1.c.a, 39525u, var_3.d.a), !vec4<bool>(var_3.c.b.x, false, var_3.d.b.x, var_3.a.x)))));
}

