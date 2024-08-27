struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: bool,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: Struct_1,
    d: vec2<bool>,
    e: vec4<f32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2>;

var<private> global1: vec4<i32> = vec4<i32>(2147483647i, i32(-2147483648), -1i, 2147483647i);

var<private> global2: array<Struct_1, 9>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    return ~_wgslsmith_mult_u32(arg_0.x, 4894u);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: vec2<bool>) -> bool {
    var var_0 = select(select(vec3<bool>(true, false, all(vec4<bool>(false, false, arg_2.x, arg_0.x))), vec3<bool>(true, all(select(arg_0.zzz, arg_0.wwz, vec3<bool>(true, false, false))), false), arg_0.x & arg_2.x), !select(!vec3<bool>(arg_1.x, arg_2.x, true), !(!arg_1.zxz), arg_1.xwz), !vec3<bool>(arg_1.x && arg_2.x, arg_1.x, true));
    var var_1 = false;
    let var_2 = Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 267u, ~1u), _wgslsmith_mod_vec3_u32(vec3<u32>(firstTrailingBit(4294967295u), ~17173u, 1u), select(~vec3<u32>(4294967295u, 1u, 19986u), _wgslsmith_div_vec3_u32(vec3<u32>(35209u, 53171u, 0u), vec3<u32>(33720u, 1u, 16103u)), !vec3<bool>(true, arg_0.x, true)))), 2u)], false);
    var var_3 = func_3(min(min(max(vec3<u32>(var_2.a.e, 4294967295u, 96476u), vec3<u32>(var_2.a.e, 1u, var_2.a.e)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, var_2.a.e, var_2.a.e), vec3<u32>(var_2.a.e, var_2.a.e, var_2.a.e)) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_mod_u32(0u, 70389u), 0u, 22178u)), reverseBits(vec3<u32>(var_2.a.e, 19160u, 226u)) | _wgslsmith_mult_vec3_u32(vec3<u32>(var_2.a.e, var_2.a.e, 0u), vec3<u32>(var_2.a.e, 29151u, var_2.a.e) & vec3<u32>(0u, var_2.a.e, var_2.a.e))));
    let var_4 = global0[_wgslsmith_index_u32(var_2.a.e, 2u)];
    return arg_2.x;
}

fn func_1(arg_0: u32) -> bool {
    let var_0 = abs(~(u_input.a.yx << (~(vec2<u32>(57987u, arg_0) & vec2<u32>(44011u, 1u)) % vec2<u32>(32u))));
    var var_1 = select(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false))), vec4<bool>(!func_2(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true), vec2<bool>(true, true)), _wgslsmith_add_u32(6668u, arg_0) > ~85964u, any(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), abs(-36364i | var_0.x) > 15615i), !select(vec4<bool>(select(false, true, false), false, false, func_2(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec2<bool>(false, true))), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true), !(var_0.x != 1i)));
    let var_2 = Struct_5(reverseBits(~arg_0));
    global2 = array<Struct_1, 9>();
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1983f, _wgslsmith_f_op_f32(f32(-1f) * -1984f)))))) <= 828f;
    return false;
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_2, arg_3: Struct_3) -> vec4<i32> {
    global2 = array<Struct_1, 9>();
    let var_0 = arg_2;
    let var_1 = !vec2<bool>(false, arg_0.x || true);
    return vec4<i32>(-45764i, -(i32(-1i) * -(~(-32780i))), -_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global1.x, 2147483647i, var_0.c.a.x, arg_3.a.a.x), vec4<i32>(var_0.c.a.x, global1.x, arg_2.c.a.x, 19236i)), vec4<i32>(arg_2.c.a.x, var_0.c.a.x, arg_2.c.a.x, 15297i), ~var_0.c.a), countOneBits(vec4<i32>(var_0.c.a.x, arg_3.a.a.x, -2147483647i, 0i) >> (vec4<u32>(45339u, 4294967295u, 0u, 73327u) % vec4<u32>(32u)))), 0i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(~(~(-31404i)) << (_wgslsmith_dot_vec2_u32(~abs(vec2<u32>(4294967295u, 8204u)), vec2<u32>(82982u, 1u)) % 32u), _wgslsmith_dot_vec4_i32(func_4(vec3<bool>(true, true, true), func_1(33308u), Struct_2(vec3<bool>(true, false, false), vec3<u32>(1u, 56918u, 15385u), global2[_wgslsmith_index_u32(4294967295u, 9u)], false), Struct_3(global2[_wgslsmith_index_u32(4294967295u, 9u)], true)) ^ (func_4(vec3<bool>(true, true, true), true, Struct_2(vec3<bool>(true, true, false), vec3<u32>(60924u, 1u, 29004u), Struct_1(vec4<i32>(global1.x, global1.x, 0i, u_input.a.x), true, false, -685f, 0u), true), Struct_3(global2[_wgslsmith_index_u32(1u, 9u)], true)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, global1.x, -56912i, u_input.a.x)), _wgslsmith_add_i32(max(~_wgslsmith_dot_vec3_i32(u_input.a, u_input.a), -1i), -70220i));
    global2 = array<Struct_1, 9>();
    var var_1 = _wgslsmith_add_vec3_i32(abs(vec3<i32>(func_4(vec3<bool>(true, true, true), false, Struct_2(vec3<bool>(false, true, true), vec3<u32>(0u, 4294967295u, 25033u), global2[_wgslsmith_index_u32(33856u, 9u)], true), Struct_3(global0[_wgslsmith_index_u32(0u, 2u)], true)).x, 0i, u_input.a.x)), _wgslsmith_mod_vec3_i32(global1.yxx, vec3<i32>(~max(global1.x, var_0.x), global1.x >> (countOneBits(4294967295u) % 32u), 1i)));
    var var_2 = Struct_3(Struct_1(~vec4<i32>(u_input.a.x, ~25879i, global1.x, -global1.x), true, true, _wgslsmith_div_f32(146f, _wgslsmith_f_op_f32(-467f + _wgslsmith_f_op_f32(ceil(1469f)))), firstLeadingBit(1u)), !any(!select(vec2<bool>(true, true), vec2<bool>(true, true), false)));
    var var_3 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-649f, var_2.a.d), vec2<f32>(var_2.a.d, var_2.a.d)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, var_2.a.e, 1150u), select(vec3<u32>(8937u, var_2.a.e, 109151u), vec3<u32>(var_2.a.e, 107952u, var_2.a.e), vec3<bool>(true, true, var_2.b))) << (var_2.a.e % 32u), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(7642u, var_2.a.e, 0u, var_2.a.e), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.a.e, var_2.a.e, 0u, var_2.a.e), vec4<u32>(1u, 1u, var_2.a.e, var_2.a.e), vec4<u32>(4294967295u, 4294967295u, 4294967295u, var_2.a.e))), 0u)), i32(-1i) * -var_0.x, _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, ~var_2.a.e), _wgslsmith_mult_vec2_u32((vec2<u32>(25832u, var_2.a.e) | vec2<u32>(0u, var_2.a.e)) | _wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.a.e, 0u), vec2<u32>(1u, var_2.a.e), vec2<u32>(var_2.a.e, var_2.a.e)), abs(_wgslsmith_div_vec2_u32(vec2<u32>(var_2.a.e, var_2.a.e), vec2<u32>(0u, 9165u)))), ~abs(~vec2<u32>(69556u, 1u))), var_2.a.d);
}

