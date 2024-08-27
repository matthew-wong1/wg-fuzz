struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: Struct_1,
    d: vec2<bool>,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec3<bool>, 19>;

var<private> global2: array<vec3<f32>, 10>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: Struct_2, arg_3: bool) -> bool {
    global0 = any(vec3<bool>(select(any(select(vec3<bool>(arg_2.d.x, false, arg_2.d.x), arg_2.a, global1[_wgslsmith_index_u32(52278u, 19u)])), !arg_3, all(select(vec2<bool>(arg_1.a.b, arg_3), arg_1.b.a.a, arg_2.c.a))), !any(vec2<bool>(true, true)), all(arg_1.b.d)));
    let var_0 = -2604f;
    global1 = array<vec3<bool>, 19>();
    var var_1 = Struct_5(arg_1.b.b.xw, _wgslsmith_mult_vec2_i32(arg_0, arg_0), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -1396f) + vec2<f32>(-1462f, 402f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.e, var_0) + vec2<f32>(arg_2.e, arg_2.e))), false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-915f, arg_2.e), vec2<f32>(-298f, var_0), arg_3))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, arg_1.a.e))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, -1175f), vec2<f32>(arg_2.e, 328f), arg_2.d)))), !arg_1.a.a.x)), Struct_1(arg_2.a.yx));
    var var_2 = all(!arg_1.b.d);
    return !(-373f >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.a.e - var_0), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2.e + 345f), _wgslsmith_f_op_f32(step(var_1.c.x, arg_2.e)), arg_3 | true)))));
}

fn func_2(arg_0: vec3<i32>) -> vec3<bool> {
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(((u_input.a >> (u_input.a % vec2<u32>(32u))) ^ ~vec2<u32>(43552u, u_input.a.x)) << (u_input.a % vec2<u32>(32u)), abs(~(~u_input.a))), 19u)], !func_3(firstTrailingBit(-arg_0.zx), Struct_4(Struct_2(vec3<bool>(true, false, true), true, Struct_1(vec2<bool>(false, false)), vec2<bool>(true, true), -115f), Struct_3(Struct_1(vec2<bool>(true, false)), vec4<u32>(u_input.a.x, 1u, 3959u, 1u), vec3<u32>(53298u, 26716u, u_input.a.x), vec4<bool>(false, false, false, true))), Struct_2(vec3<bool>(true, true, true), true, Struct_1(vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), _wgslsmith_f_op_f32(1519f * -986f)), true), Struct_1(select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true)), arg_0.x > 2147483647i)), !vec2<bool>(select(1u, 17402u, true) <= (u_input.a.x << (681u % 32u)), false), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2398f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -706f), _wgslsmith_f_op_f32(392f - 265f)))))));
    var var_1 = countOneBits(countOneBits(_wgslsmith_mod_i32(15659i, 16967i))) >= abs(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(arg_0.zy, vec2<i32>(2113i, 75i)), _wgslsmith_add_i32(895i, 0i)), vec2<i32>(0i, -arg_0.x)));
    let var_2 = Struct_1(select(var_0.a.xx, var_0.d, !((arg_0.x > 20492i) | (false && var_0.a.x))));
    let var_3 = Struct_3(Struct_1(vec2<bool>(true, (false | var_2.a.x) & false)), ~max(~vec4<u32>(4294967295u, u_input.a.x, 0u, u_input.a.x) << (abs(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x)) % vec4<u32>(32u)), firstLeadingBit(firstTrailingBit(vec4<u32>(1u, u_input.a.x, 1u, u_input.a.x)))), ~abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 27192u), vec3<u32>(29543u, 59073u, 13287u), vec3<u32>(u_input.a.x, 32095u, u_input.a.x)) << (abs(vec3<u32>(u_input.a.x, 17036u, 27881u)) % vec3<u32>(32u))), !vec4<bool>(var_2.a.x, !(!var_2.a.x), select(var_0.a.x, true, 2225i == arg_0.x), var_2.a.x));
    let var_4 = var_3.c.yz;
    return var_0.a;
}

fn func_1() -> Struct_4 {
    var var_0 = Struct_3(Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), ~(~(~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 58898u)))), vec3<u32>(14541u, 4294967295u, select(5714u | (u_input.a.x >> (4294967295u % 32u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 79952u, 4294967295u, 10814u)), true)), vec4<bool>(all(!func_2(vec3<i32>(0i, 2147483647i, 2147483647i))), any(!global1[_wgslsmith_index_u32(~1u, 19u)]), ~u_input.a.x == ~1u, !(u_input.a.x < ~u_input.a.x)));
    global1 = array<vec3<bool>, 19>();
    var var_1 = Struct_5(vec2<u32>(29009u, _wgslsmith_add_u32(abs(1u), ~_wgslsmith_sub_u32(51297u, var_0.b.x))), -(~vec2<i32>(~(-37106i), select(20752i, -2147483647i, true))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1489f)), 488f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(select(478f, 1029f, var_0.d.x))) - -214f)), Struct_1(var_0.d.wy));
    let var_2 = var_0.d;
    var var_3 = vec4<f32>(788f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) * _wgslsmith_f_op_f32(264f + var_1.c.x)) + var_1.c.x) * _wgslsmith_f_op_f32(trunc(1379f))), _wgslsmith_f_op_f32(select(var_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1421f)))), var_1.d.a.x)), 1872f);
    return Struct_4(Struct_2(var_2.yyw, var_2.x, Struct_1(select(vec2<bool>(var_2.x, var_1.d.a.x), vec2<bool>(false, false), vec2<bool>(var_1.d.a.x, var_1.d.a.x))), select(!select(var_0.d.zy, vec2<bool>(var_0.d.x, var_1.d.a.x), true), select(vec2<bool>(var_0.d.x, false), vec2<bool>(var_0.d.x, var_1.d.a.x), var_1.d.a), !(!var_0.a.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(576f)) + -952f)), Struct_3(var_1.d, _wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.a.x, var_0.b.x, min(27802u, var_0.c.x)), vec4<u32>(14724u, ~var_0.b.x, var_0.b.x << (var_1.a.x % 32u), 25911u)), _wgslsmith_sub_vec3_u32(var_0.c, abs(~vec3<u32>(1u, u_input.a.x, 1u))), !var_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-651f, -233f, false)), -356f, 445f, _wgslsmith_f_op_f32(select(598f, 549f, false))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1771f), _wgslsmith_f_op_f32(f32(-1f) * -496f), -1200f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1758f, -245f, 1720f, 206f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 342f, -654f, -665f) + vec4<f32>(-250f, -483f, 195f, 324f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1661f, -1338f, -1477f, -177f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(515f, 108f, 875f, 566f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-482f, 1193f, 270f, -2221f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(531f, -552f, -1000f, -326f))))));
    let var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, abs(_wgslsmith_sub_i32(abs(-8971i), firstTrailingBit(1i)) ^ _wgslsmith_dot_vec4_i32(min(vec4<i32>(-2147483647i, -1i, -2147483647i, 2147483647i), vec4<i32>(1i, 1i, 44755i, 2147483647i)), abs(vec4<i32>(2147483647i, 24755i, 1i, 1i)))));
}

