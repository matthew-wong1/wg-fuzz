struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 18> = array<vec4<bool>, 18>(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true));

var<private> global1: Struct_2;

var<private> global2: array<f32, 23> = array<f32, 23>(1351f, -1895f, 1631f, 1247f, 979f, -1919f, 148f, 1549f, -1258f, 2147f, -1123f, 309f, -216f, 2654f, -899f, 1346f, 823f, -650f, 317f, -1000f, 350f, 1798f, -327f);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool) -> vec4<i32> {
    global0 = array<vec4<bool>, 18>();
    let var_0 = global2[_wgslsmith_index_u32(countOneBits(global1.e.x) ^ _wgslsmith_add_u32(global1.e.x, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 39783u, global1.e.x, global1.e.x), countOneBits(vec4<u32>(global1.e.x, global1.e.x, 1u, 486u))), ~(~vec4<u32>(0u, 1u, 33697u, u_input.c.x)))), 23u)];
    var var_1 = vec3<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 23u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(43314u, 23u)])) - _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(4294967295u, 23u)]))) + 122f))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 23u)]));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1.e.x, 23u)]), 545f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(620f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1939f * var_1.x))))));
    var var_3 = Struct_2(_wgslsmith_mod_vec4_i32(global1.a, ~(~firstLeadingBit(vec4<i32>(global1.a.x, -53363i, -39705i, -2147483647i)))), Struct_1(~(20226i << (global1.e.x % 32u)), global1.b.b), 0i, ~_wgslsmith_add_i32(-2147483647i, -(18850i << (u_input.c.x % 32u))), vec2<u32>(~firstTrailingBit(1u), 1u));
    return global1.a;
}

fn func_2(arg_0: i32, arg_1: vec4<u32>) -> Struct_2 {
    let var_0 = global1.b;
    var var_1 = abs(~(arg_1.zw | arg_1.xy));
    var var_2 = Struct_1(-40351i, select(var_0.b, select(var_0.b, !(!vec2<bool>(global1.b.b.x, var_0.b.x)), vec2<bool>(false, all(global0[_wgslsmith_index_u32(global1.e.x, 18u)]))), var_0.b.x));
    global2 = array<f32, 23>();
    var var_3 = _wgslsmith_add_vec3_u32(vec3<u32>(103244u, ~(~max(var_1.x, arg_1.x)), abs(99833u)), ~(~(~(vec3<u32>(0u, 717u, 13874u) ^ arg_1.xwx))));
    return Struct_2(abs(func_3(-1511f <= _wgslsmith_f_op_f32(floor(245f)))), Struct_1(((global1.b.a & -1i) & 77649i) ^ _wgslsmith_dot_vec2_i32(~vec2<i32>(0i, -6987i), vec2<i32>(5962i, var_2.a)), vec2<bool>(true, true)), ~_wgslsmith_add_i32(var_2.a, var_0.a), countOneBits(u_input.a.x), vec2<u32>(_wgslsmith_mod_u32(0u, 64474u), ~arg_1.x));
}

fn func_1(arg_0: f32) -> Struct_1 {
    global2 = array<f32, 23>();
    var var_0 = select(4294967295u ^ (firstTrailingBit(_wgslsmith_mult_u32(u_input.c.x, u_input.c.x)) | u_input.c.x), 0u, all(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(75588u, u_input.c.x, u_input.b.x), 18u)]));
    global1 = func_2(firstLeadingBit(abs(-global1.b.a)), firstLeadingBit(reverseBits(~(~vec4<u32>(26940u, u_input.b.x, 1u, 1u)))));
    let var_1 = Struct_2(_wgslsmith_sub_vec4_i32(countOneBits(global1.a), ~max(vec4<i32>(28409i, -18787i, 28795i, u_input.a.x), firstTrailingBit(global1.a))), func_2(global1.d, vec4<u32>(_wgslsmith_clamp_u32(1u, global1.e.x, u_input.c.x) << ((8697u << (u_input.b.x % 32u)) % 32u), _wgslsmith_div_u32(u_input.b.x, min(global1.e.x, global1.e.x)), _wgslsmith_mult_u32(reverseBits(0u), global1.e.x), ~(~1u))).b, global1.b.a, _wgslsmith_mult_i32(global1.b.a, -39775i), abs(reverseBits(vec2<u32>(4294967295u, 4294967295u)) & ~_wgslsmith_mult_vec2_u32(global1.e, global1.e)));
    var var_2 = min(-1i, ~0i);
    return func_2(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(global1.a.xy, vec2<i32>(4431i, global1.b.a)), -(var_1.a.zw ^ vec2<i32>(var_1.c, -1i))), -14708i), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, global1.e.x, u_input.b.x, 4138u), min(vec4<u32>(u_input.c.x, 18996u, 0u, 0u), vec4<u32>(global1.e.x, 84838u, 36294u, 4294967295u))), firstLeadingBit(vec4<u32>(11431u, 4294967295u, u_input.b.x, 0u) << (vec4<u32>(1u, var_1.e.x, global1.e.x, u_input.b.x) % vec4<u32>(32u))), abs(vec4<u32>(global1.e.x, 1u, 0u, global1.e.x))) >> (vec4<u32>(select(~u_input.c.x, ~1u, var_1.b.b.x == var_1.b.b.x), 66782u << (0u % 32u), countOneBits(global1.e.x) ^ 2835u, min(~50516u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.e.x, 44480u, u_input.c.x, var_1.e.x), vec4<u32>(u_input.b.x, 47129u, 76805u, 8827u)))) % vec4<u32>(32u))).b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(-global1.a, func_1(1000f), -func_3(!(!global1.b.b.x)).x, -1i, global1.e);
    var var_0 = -31399i;
    var var_1 = Struct_1(u_input.a.x, vec2<bool>(!(!global1.b.b.x), select(true, true, !select(global1.b.b.x, global1.b.b.x, false))));
    var var_2 = Struct_2(~global1.a, func_2(firstTrailingBit(abs(-2147483647i)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.e.x, 0u, u_input.b.x, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, u_input.b.x, global1.e.x, global1.e.x), vec4<u32>(4294967295u, 4294967295u, 4294967295u, global1.e.x)), ~vec4<u32>(u_input.b.x, 0u, 1u, u_input.c.x))).b, 8903i, -2147483647i, vec2<u32>(u_input.b.x >> ((abs(4294967295u) & (57634u << (u_input.b.x % 32u))) % 32u), 17751u));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(~countOneBits(~45275u), 23u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, var_3, global2[_wgslsmith_index_u32(global1.e.x, 23u)], var_3) * vec4<f32>(-1077f, 1565f, global2[_wgslsmith_index_u32(var_2.e.x, 23u)], -424f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2[_wgslsmith_index_u32(1u, 23u)], 271f, global2[_wgslsmith_index_u32(global1.e.x, 23u)], global2[_wgslsmith_index_u32(u_input.c.x, 23u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-372f, var_3, 1783f, -1000f)), global0[_wgslsmith_index_u32(~var_2.e.x, 18u)])))), min(func_2(_wgslsmith_sub_i32(countOneBits(-2001i), global1.d ^ 0i), _wgslsmith_clamp_vec4_u32(~vec4<u32>(var_2.e.x, global1.e.x, 13306u, global1.e.x), ~vec4<u32>(var_2.e.x, 1u, global1.e.x, global1.e.x), select(vec4<u32>(1u, global1.e.x, u_input.b.x, u_input.b.x), vec4<u32>(40294u, 1u, u_input.b.x, 95470u), true))).a, vec4<i32>(_wgslsmith_dot_vec2_i32(global1.a.yw, u_input.a), ~_wgslsmith_div_i32(var_1.a, u_input.a.x), -u_input.a.x, -var_1.a)));
}

