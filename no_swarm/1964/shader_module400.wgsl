struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec3<u32>(0u, 37078u, 4294967295u), vec3<f32>(-1626f, 736f, -951f), 186f, vec2<bool>(false, true)), Struct_1(vec3<u32>(1u, 82629u, 23865u), vec3<f32>(1184f, 1000f, 1000f), -2222f, vec2<bool>(true, true)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> i32 {
    let var_0 = select(arg_1, false, false);
    global0 = array<Struct_1, 2>();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-arg_3.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_3.b.x)) - _wgslsmith_div_f32(564f, 1f)), _wgslsmith_f_op_f32(-302f * _wgslsmith_f_op_f32(f32(-1f) * -220f)));
    let var_2 = ~u_input.e.x;
    let var_3 = !select(vec4<bool>(arg_1, !(false && var_0), select(true, false, true), all(select(vec3<bool>(arg_3.d.x, var_0, false), vec3<bool>(arg_3.d.x, var_0, var_0), vec3<bool>(arg_3.d.x, arg_1, false)))), select(vec4<bool>(all(vec4<bool>(false, var_0, arg_3.d.x, true)), all(vec3<bool>(true, true, arg_3.d.x)), true, arg_3.d.x), !(!vec4<bool>(var_0, arg_3.d.x, var_0, false)), !(!vec4<bool>(arg_3.d.x, true, false, true))), !any(vec2<bool>(var_0, false)));
    return arg_2;
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = vec4<i32>(u_input.d, -1i, -func_3(_wgslsmith_div_u32(22715u, u_input.e.x), !arg_1.d.x, arg_0, global0[_wgslsmith_index_u32(4294967295u << (_wgslsmith_mod_u32(84295u, u_input.e.x) % 32u), 2u)]), _wgslsmith_add_i32(_wgslsmith_clamp_i32(abs(arg_0), -firstTrailingBit(2308i), firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, arg_0, 2147483647i), vec4<i32>(-39391i, -71150i, -10415i, u_input.c)))), firstTrailingBit(_wgslsmith_dot_vec3_i32(-vec3<i32>(-40788i, 1i, -51135i), vec3<i32>(0i, u_input.d, 2147483647i)))));
    var_0 = countOneBits(-max(countOneBits(vec4<i32>(arg_0, 1i, -1i, u_input.d)), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, u_input.c, var_0.x, -1i), vec4<i32>(arg_0, 14211i, -54719i, arg_0)))));
    var var_1 = Struct_1(select(vec3<u32>(arg_1.a.x, 4294967295u & ~u_input.e.x, u_input.e.x), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(arg_1.a << (arg_1.a % vec3<u32>(32u)), ~arg_1.a), vec3<u32>(arg_1.a.x, 1u, abs(u_input.e.x))), !(!(!arg_1.d.x))), _wgslsmith_f_op_vec3_f32(-arg_1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_1.b.x, arg_1.b.x)))) - arg_1.c), select(select(select(arg_1.d, select(arg_1.d, vec2<bool>(arg_1.d.x, arg_1.d.x), arg_1.d.x), arg_1.d), vec2<bool>(false, all(vec4<bool>(arg_1.d.x, false, arg_1.d.x, arg_1.d.x))), true), select(select(select(vec2<bool>(true, arg_1.d.x), arg_1.d, vec2<bool>(true, arg_1.d.x)), arg_1.d, vec2<bool>(true, arg_1.d.x)), vec2<bool>(arg_1.d.x, !arg_1.d.x), true || !arg_1.d.x), arg_1.d));
    var var_2 = _wgslsmith_mult_i32(u_input.d, 42499i);
    var var_3 = true;
    return vec3<u32>(~1u, max(u_input.e.x, u_input.e.x), ~1u);
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_2, arg_3: vec4<i32>) -> Struct_2 {
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(arg_2.d.c, _wgslsmith_f_op_f32(arg_2.e - -269f)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.c.c)))))));
    var var_1 = Struct_1(func_2(~(~arg_3.x), Struct_1(~(~arg_2.d.a), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1301f, var_0.x, 777f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(564f, var_0.x, arg_2.e) - vec3<f32>(arg_2.c.c, arg_2.c.c, arg_2.e)))), _wgslsmith_f_op_f32(abs(-400f)), select(!arg_2.d.d, select(arg_2.d.d, arg_2.d.d, arg_2.d.d), select(arg_2.c.d.x, arg_2.c.d.x, false)))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_0.x)), 664f)))), _wgslsmith_f_op_f32(397f * var_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(673f - _wgslsmith_f_op_f32(1377f - -1000f)), 1882f)), _wgslsmith_f_op_f32(f32(-1f) * -850f), arg_2.d.d);
    return arg_2;
}

fn func_1(arg_0: f32) -> vec4<u32> {
    global0 = array<Struct_1, 2>();
    var var_0 = min(vec3<u32>(_wgslsmith_mult_u32(1u, u_input.e.x) << (u_input.e.x % 32u), _wgslsmith_mod_u32(u_input.e.x, u_input.e.x >> (0u % 32u)), 11274u) ^ ~(~(vec3<u32>(u_input.e.x, 0u, u_input.e.x) & vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x))), ~_wgslsmith_mult_vec3_u32(~select(vec3<u32>(5147u, u_input.e.x, u_input.e.x), vec3<u32>(1u, 1u, 17570u), vec3<bool>(true, true, false)), ~vec3<u32>(41552u, u_input.e.x, u_input.e.x)));
    var var_1 = abs(abs(vec4<i32>(u_input.a, -5944i, firstTrailingBit(u_input.c), 1i)) >> ((~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, var_0.x, u_input.e.x, 1234u), vec4<u32>(104701u, 0u, u_input.e.x, 89020u), vec4<u32>(0u, 57399u, u_input.e.x, u_input.e.x)) | (_wgslsmith_mult_vec4_u32(vec4<u32>(18177u, 70965u, 4294967295u, var_0.x), vec4<u32>(var_0.x, 34302u, 18739u, 4294967295u)) & vec4<u32>(9449u, u_input.e.x, var_0.x, var_0.x))) % vec4<u32>(32u)));
    var var_2 = func_4(var_1.x, var_0.x, Struct_2(vec2<i32>(firstLeadingBit(abs(u_input.c)), i32(-1i) * -u_input.a), _wgslsmith_clamp_i32(~(-2147483647i), ~var_1.x & -49957i, select(1i, 37695i, true)), Struct_1(func_2(_wgslsmith_clamp_i32(var_1.x, var_1.x, u_input.c), Struct_1(vec3<u32>(0u, var_0.x, 10718u), vec3<f32>(1000f, 127f, arg_0), arg_0, vec2<bool>(true, false))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1022f, arg_0, -109f)), _wgslsmith_div_vec3_f32(vec3<f32>(267f, -1550f, 1848f), vec3<f32>(-140f, -525f, 240f)), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)))), 1013f, vec2<bool>(true, true)), Struct_1(~vec3<u32>(58760u, u_input.e.x, var_0.x) >> ((vec3<u32>(u_input.e.x, u_input.e.x, var_0.x) & vec3<u32>(4294967295u, 24425u, u_input.e.x)) % vec3<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(abs(913f)), -488f), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-1000f + 828f)), vec2<bool>(true, true)), _wgslsmith_f_op_f32(-arg_0)), reverseBits(~vec4<i32>(select(u_input.b, 1i, false), var_1.x, u_input.a << (55267u % 32u), _wgslsmith_add_i32(7026i, var_1.x))));
    var var_3 = func_2(46568i, var_2.c).x;
    return vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(abs(_wgslsmith_mult_u32(9601u, var_2.c.a.x)), var_0.x), reverseBits(var_0.x), 16012u), countOneBits(func_4(0i, _wgslsmith_mult_u32(~u_input.e.x, var_2.d.a.x), func_4(reverseBits(u_input.a), 69508u, func_4(var_2.b, 1u, Struct_2(vec2<i32>(-2147483647i, u_input.d), var_2.b, global0[_wgslsmith_index_u32(var_2.c.a.x, 2u)], global0[_wgslsmith_index_u32(0u, 2u)], var_2.c.c), vec4<i32>(0i, 0i, u_input.b, var_2.a.x)), abs(vec4<i32>(33453i, -40498i, -1i, -2147483647i))), -max(vec4<i32>(-1i, u_input.a, -11176i, u_input.c), vec4<i32>(0i, var_2.b, u_input.d, var_1.x))).c.a.x), var_2.d.a.x, var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 2>();
    var var_0 = ~(~firstTrailingBit(-vec4<i32>(0i, u_input.a, 0i, u_input.d)) << (~(~func_1(800f)) % vec4<u32>(32u)));
    var_0 = vec4<i32>(_wgslsmith_mod_i32(-u_input.c, 2147483647i), reverseBits(u_input.c) << (u_input.e.x % 32u), firstTrailingBit(u_input.c), ~(firstTrailingBit(22182i) & ~2147483647i));
    let var_1 = !(!(!vec3<bool>(all(vec3<bool>(false, true, true)), u_input.a != -1i, true)));
    let var_2 = !(((4294967295u << (~u_input.e.x % 32u)) != _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, 10253u, u_input.e.x), vec4<u32>(4294967295u, 56371u, u_input.e.x, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.e.x, 6681u, u_input.e.x), vec4<u32>(15707u, u_input.e.x, 54969u, 4294967295u)))) | true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(u_input.e, func_2(var_0.x >> (~u_input.e.x % 32u), func_4(-u_input.c, 4200u, Struct_2(var_0.xw, 2147483647i, Struct_1(vec3<u32>(3183u, 4294967295u, u_input.e.x), vec3<f32>(1000f, 544f, 191f), 1000f, vec2<bool>(var_2, false)), Struct_1(vec3<u32>(51277u, 50067u, 4294967295u), vec3<f32>(188f, -1771f, 538f), -1178f, vec2<bool>(var_2, var_2)), 881f), vec4<i32>(u_input.c, var_0.x, var_0.x, 2147483647i) & vec4<i32>(u_input.a, -2147483647i, var_0.x, 3187i)).d).zx), -_wgslsmith_mult_vec4_i32(-vec4<i32>(var_0.x, var_0.x, 2147483647i, var_0.x), abs(~vec4<i32>(-2147483647i, 63961i, u_input.c, var_0.x))));
}

