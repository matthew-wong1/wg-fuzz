struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: vec2<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: array<vec4<f32>, 28>;

var<private> global2: array<u32, 13>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool) -> i32 {
    var var_0 = select(select(vec3<bool>(any(!vec4<bool>(false, arg_0, arg_0, false)), !(!arg_0), !all(vec4<bool>(arg_0, true, arg_0, arg_0))), vec3<bool>(arg_0 == all(vec3<bool>(false, arg_0, false)), all(!vec4<bool>(arg_0, false, false, false)), global2[_wgslsmith_index_u32(~5897u, 13u)] < (0u & u_input.c.x)), any(select(!vec4<bool>(arg_0, arg_0, true, false), select(vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(arg_0, arg_0, false, true)), vec4<bool>(arg_0, arg_0, arg_0, arg_0)))), select(!(!vec3<bool>(arg_0, false, false)), vec3<bool>(arg_0, min(-1i, u_input.d.x) <= (u_input.d.x << (1u % 32u)), all(vec3<bool>(arg_0, arg_0, false))), !select(vec3<bool>(false, true, arg_0), vec3<bool>(false, true, arg_0), select(vec3<bool>(arg_0, false, false), vec3<bool>(true, arg_0, false), vec3<bool>(arg_0, arg_0, false)))), !arg_0);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(1200f)))));
    global1 = array<vec4<f32>, 28>();
    var_0 = vec3<bool>(arg_0, true, !var_0.x);
    var var_2 = var_1;
    return u_input.d.x;
}

fn func_2() -> bool {
    let var_0 = Struct_1(!vec4<bool>((u_input.d.x < 2147483647i) && true, u_input.d.x == func_3(true), true, true), ~select(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, global2[_wgslsmith_index_u32(18382u, 13u)], 50281u, 3301u), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, global2[_wgslsmith_index_u32(19159u, 13u)], global2[_wgslsmith_index_u32(20877u, 13u)], u_input.a.x), vec4<u32>(u_input.c.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(5815u, 13u)], 13u)], 51059u, 4294967295u))), vec4<u32>(7041u, max(global2[_wgslsmith_index_u32(u_input.c.x, 13u)], u_input.c.x), ~52066u, 40712u), false), vec4<i32>(-38958i, -u_input.b, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(_wgslsmith_mod_i32(-1i, 2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, -44907i, -44590i, 0i), vec4<i32>(58143i, u_input.d.x, 1i, u_input.d.x)), ~u_input.d.x)), -32147i));
    var var_1 = !any(select(var_0.a, vec4<bool>(var_0.a.x, all(var_0.a.zx), select(false, false, false), all(var_0.a)), !vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x)));
    let var_2 = Struct_1(var_0.a, _wgslsmith_add_vec4_u32(~(var_0.b << (vec4<u32>(1u, global2[_wgslsmith_index_u32(4294967295u, 13u)], u_input.e, u_input.a.x) % vec4<u32>(32u))), vec4<u32>(countOneBits(4969u), abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(16371u, 13u)], 13u)]), countOneBits(u_input.e), countOneBits(0u))) & vec4<u32>(u_input.e, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.x, u_input.e, var_0.b.x), ~u_input.a), 1u, ~var_0.b.x), abs(vec4<i32>(-1i) * -countOneBits(vec4<i32>(1i, var_0.c.x, u_input.b, var_0.c.x))));
    let var_3 = ~(~_wgslsmith_div_u32(24603u, reverseBits(var_0.b.x)));
    let var_4 = 624f;
    return var_2.a.x;
}

fn func_1() -> vec3<u32> {
    var var_0 = Struct_1(vec4<bool>(false, true, func_2(), true || (_wgslsmith_f_op_f32(step(-270f, 924f)) < _wgslsmith_div_f32(-688f, -697f))), countOneBits(vec4<u32>(u_input.a.x, _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(u_input.e, 13u)], 4294967295u, 1u), max(1u, u_input.c.x), global2[_wgslsmith_index_u32(1u, 13u)] ^ global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(668u, 13u)], 13u)]) ^ _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.e, u_input.c.x), vec4<u32>(1257u, 0u, global2[_wgslsmith_index_u32(u_input.c.x, 13u)], 0u)), vec4<u32>(1u, u_input.e, global2[_wgslsmith_index_u32(41973u, 13u)], u_input.c.x))), _wgslsmith_div_vec4_i32(~(~vec4<i32>(-1i, 0i, u_input.d.x, u_input.b)) ^ vec4<i32>(-23181i, 1i, ~2147483647i, u_input.b), min(vec4<i32>(-29214i, u_input.d.x, 20740i, -50282i), vec4<i32>(u_input.d.x, u_input.d.x, u_input.b, 36488i)) | _wgslsmith_add_vec4_i32(min(vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.d.x), vec4<i32>(u_input.d.x, u_input.b, u_input.d.x, u_input.d.x)), vec4<i32>(u_input.b, -24461i, -1i, 19240i))));
    var var_1 = Struct_1(select(var_0.a, !var_0.a, var_0.a), min(~vec4<u32>(u_input.a.x, 49566u, ~0u, 117258u), var_0.b), _wgslsmith_sub_vec4_i32(-_wgslsmith_sub_vec4_i32(max(vec4<i32>(u_input.b, var_0.c.x, 0i, u_input.b), vec4<i32>(var_0.c.x, u_input.d.x, var_0.c.x, u_input.b)), vec4<i32>(-2147483647i, var_0.c.x, 3739i, var_0.c.x)), vec4<i32>(-var_0.c.x >> (~0u % 32u), -_wgslsmith_add_i32(-1i, 12312i), ~(~var_0.c.x), max(_wgslsmith_add_i32(var_0.c.x, -124i), ~u_input.d.x))));
    global0 = array<Struct_1, 14>();
    var_1 = global0[_wgslsmith_index_u32(var_1.b.x, 14u)];
    let var_2 = false;
    return reverseBits((_wgslsmith_add_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(var_0.b.x, 13u)], 0u, 4294967295u), _wgslsmith_mod_vec3_u32(var_0.b.yww, vec3<u32>(var_0.b.x, 1u, 51848u))) & vec3<u32>(u_input.a.x, 0u << (global2[_wgslsmith_index_u32(1u, 13u)] % 32u), 98022u << (var_0.b.x % 32u))) >> (~countOneBits(vec3<u32>(u_input.c.x, var_1.b.x, 0u)) % vec3<u32>(32u)));
}

fn func_4(arg_0: vec3<u32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(trunc(-2256f))));
    let var_1 = Struct_1(select(vec4<bool>((u_input.d.x | 2147483647i) <= u_input.d.x, true, true, true), !vec4<bool>(all(vec3<bool>(false, false, true)), true, true, true), vec4<bool>(!any(vec2<bool>(true, true)), true, true, false)), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(min(vec4<u32>(4294967295u, 8054u, 1u, 21737u), vec4<u32>(34355u, 22193u, u_input.c.x, u_input.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 2542u, u_input.e), vec4<u32>(4294967295u, u_input.e, global2[_wgslsmith_index_u32(0u, 13u)], arg_0.x)), ~vec4<u32>(u_input.c.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(21506u, 13u)], 13u)], global2[_wgslsmith_index_u32(u_input.c.x, 13u)], u_input.c.x)), select(_wgslsmith_add_vec4_u32(vec4<u32>(8491u, 4294967295u, u_input.c.x, 0u), vec4<u32>(u_input.a.x, 0u, arg_0.x, u_input.c.x)), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.x, 13u)], 13u)], u_input.a.x, global2[_wgslsmith_index_u32(4038u, 13u)], 3663u) ^ vec4<u32>(4294967295u, 58415u, 10065u, arg_0.x), vec4<bool>(true, true, true, true))), ~vec4<u32>(85213u, u_input.c.x, 22396u, 25056u) | vec4<u32>(arg_0.x, 129285u & global2[_wgslsmith_index_u32(79767u, 13u)], global2[_wgslsmith_index_u32(14562u, 13u)], global2[_wgslsmith_index_u32(41204u, 13u)] | 4294967295u)), ~select(vec4<i32>(u_input.b, u_input.b, u_input.d.x, u_input.d.x), ~vec4<i32>(u_input.b, 0i, u_input.d.x, -2282i), vec4<bool>(true, true, false, false)) | vec4<i32>(u_input.d.x, ~countOneBits(u_input.d.x), -22491i & firstTrailingBit(u_input.d.x), u_input.b));
    var var_2 = _wgslsmith_div_f32(var_0, -299f);
    global0 = array<Struct_1, 14>();
    var var_3 = ~((~var_1.b | var_1.b) >> (~((var_1.b ^ vec4<u32>(1u, 4294967295u, 12706u, global2[_wgslsmith_index_u32(64781u, 13u)])) | ~vec4<u32>(4294967295u, 1u, 55998u, 1u)) % vec4<u32>(32u)));
    return var_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), false), func_4(func_1())), select(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true), _wgslsmith_mult_vec4_u32(~((vec4<u32>(63495u, u_input.a.x, global2[_wgslsmith_index_u32(0u, 13u)], u_input.a.x) & vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.c.x)) | (vec4<u32>(global2[_wgslsmith_index_u32(u_input.c.x, 13u)], 1u, u_input.a.x, u_input.e) ^ vec4<u32>(83926u, u_input.e, global2[_wgslsmith_index_u32(u_input.e, 13u)], u_input.a.x))), select(vec4<u32>(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(23195u, 13u)], 13u)], u_input.e, ~0u, 11790u), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(1u, 13u)], global2[_wgslsmith_index_u32(u_input.a.x, 13u)], 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(u_input.c.x, 13u)], 4294967295u, global2[_wgslsmith_index_u32(0u, 13u)], 4312u), vec4<u32>(31333u, 0u, 1u, 1u), vec4<u32>(49488u, u_input.a.x, 52124u, 4294967295u))), true)), select(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.b, 27663i, 21693i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, u_input.d.x, u_input.d.x, u_input.b), vec4<i32>(11510i, u_input.d.x, 30057i, -18249i), vec4<i32>(u_input.b, u_input.b, 22027i, 2147483647i))) >> (~min(vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 13u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 13u)], 13u)], 4294967295u, 0u), vec4<u32>(global2[_wgslsmith_index_u32(u_input.c.x, 13u)], 45802u, 0u, global2[_wgslsmith_index_u32(u_input.c.x, 13u)])) % vec4<u32>(32u)), abs(~(-vec4<i32>(0i, 1i, 1i, 1i))), false));
    var_0 = Struct_1(!vec4<bool>(false, false, all(select(vec2<bool>(true, false), vec2<bool>(false, false), var_0.a.x)), false), reverseBits(var_0.b), reverseBits(vec4<i32>(var_0.c.x, u_input.b, -60853i, u_input.b) | vec4<i32>(1i, u_input.b, u_input.b, -33562i)) | countOneBits(vec4<i32>(-38131i, var_0.c.x, 1i, var_0.c.x >> (var_0.b.x % 32u))));
    global0 = array<Struct_1, 14>();
    var_0 = global0[_wgslsmith_index_u32(u_input.c.x, 14u)];
    var var_1 = ~var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(6071u, 28u)] + global1[_wgslsmith_index_u32(0u, 28u)]) * global1[_wgslsmith_index_u32(select(global2[_wgslsmith_index_u32(var_0.b.x, 13u)], var_0.b.x, false), 28u)]))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-356f - -107f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2089f)))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2464f, _wgslsmith_f_op_f32(f32(-1f) * -2608f)))), 4294967295u, vec2<u32>(u_input.c.x, _wgslsmith_mult_u32(4294967295u, select(1u, var_0.b.x, true))), global1[_wgslsmith_index_u32(var_0.b.x, 28u)]);
}

