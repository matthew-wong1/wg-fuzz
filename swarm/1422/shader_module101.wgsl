struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: bool,
    d: vec2<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 28>;

var<private> global1: array<Struct_2, 12>;

var<private> global2: vec2<u32> = vec2<u32>(17713u, 4294967295u);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool) -> f32 {
    global0 = array<Struct_3, 28>();
    var var_0 = u_input.a;
    global1 = array<Struct_2, 12>();
    var_0 = 18473i << ((select(0u, _wgslsmith_dot_vec2_u32(u_input.c, u_input.c) >> (57913u % 32u), true) >> (_wgslsmith_dot_vec2_u32(u_input.c, ~(~vec2<u32>(global2.x, 4294967295u))) % 32u)) % 32u);
    var var_1 = -436f;
    return 576f;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2) -> vec3<u32> {
    global2 = _wgslsmith_mult_vec2_u32(abs(vec2<u32>(~0u | arg_0.x, u_input.c.x)), _wgslsmith_div_vec2_u32(firstLeadingBit(u_input.c | u_input.c) >> (select(vec2<u32>(1u, arg_0.x), vec2<u32>(u_input.b, u_input.b), true) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(70861u, u_input.b, 0u), abs(global2.x)), ~select(arg_0, vec2<u32>(918u, global2.x), true), abs(u_input.c))));
    var var_0 = _wgslsmith_f_op_f32(sign(331f));
    return vec3<u32>((max(1u, 4294967295u) & (arg_0.x >> (global2.x % 32u))) | max(abs(15148u), _wgslsmith_dot_vec4_u32(vec4<u32>(61354u, global2.x, 12939u, 24380u), vec4<u32>(global2.x, arg_0.x, u_input.c.x, u_input.b))), 1u, _wgslsmith_div_u32(~(~1u), global2.x)) >> (vec3<u32>(global2.x, _wgslsmith_div_u32(abs(u_input.b), _wgslsmith_add_u32(firstTrailingBit(arg_0.x), _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(u_input.b, 21726u)))), ~select(0u, 23601u, false) >> ((_wgslsmith_mult_u32(u_input.c.x, 0u) << ((51842u & u_input.b) % 32u)) % 32u)) % vec3<u32>(32u));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_3(~vec2<u32>(~_wgslsmith_mult_u32(4294967295u, global2.x), _wgslsmith_mult_u32(_wgslsmith_mod_u32(global2.x, 4294967295u), ~global2.x)));
    let var_1 = arg_1.a;
    var var_2 = true;
    var var_3 = Struct_3(~var_0.a);
    global0 = array<Struct_3, 28>();
    return _wgslsmith_div_i32(-10377i, reverseBits(u_input.a));
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: vec2<f32>, arg_3: i32) -> f32 {
    let var_0 = func_5(func_4(u_input.c, Struct_2(vec3<f32>(arg_2.x, 430f, 135f), ~(-vec3<i32>(-96795i, -20381i, arg_0.x)), vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(func_3(true)), _wgslsmith_f_op_f32(arg_2.x + -1776f), arg_2.x))), Struct_1(reverseBits(-vec4<i32>(arg_3, -10155i, -27143i, -7454i)), -732f, true, -abs(abs(vec2<i32>(-1i, u_input.a))), !vec2<bool>(select(false, true, false), true)));
    var var_1 = Struct_1(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(var_0, arg_3, var_0, u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.a, -2147483647i, u_input.a), vec4<i32>(-2147483647i, 1i, var_0, 13438i))), vec4<i32>(arg_3, arg_0.x, _wgslsmith_sub_i32(arg_3, -1i), u_input.a)), (_wgslsmith_sub_vec4_i32(vec4<i32>(21228i, arg_0.x, 2147483647i, -2110i), vec4<i32>(u_input.a, arg_0.x, arg_0.x, -2147483647i)) | _wgslsmith_div_vec4_i32(vec4<i32>(arg_0.x, -6959i, arg_0.x, arg_3), vec4<i32>(-31931i, arg_0.x, 21579i, -24019i))) ^ -vec4<i32>(u_input.a, arg_3, -2147483647i, 50547i)), arg_2.x, u_input.a >= 51777i, -arg_0, vec2<bool>(true, true));
    let var_2 = global0[_wgslsmith_index_u32(1u, 28u)];
    let var_3 = Struct_1(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1060f)) - _wgslsmith_f_op_f32(min(-706f, var_1.b))), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-var_1.b)), any(select(vec4<bool>(false, true, var_1.c, true), vec4<bool>(false, false, true, var_1.e.x), true)))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1988f, 1507f))), !(!(false & var_1.c)), arg_0, select(select(vec2<bool>(true, false), select(var_1.e, !var_1.e, select(vec2<bool>(false, var_1.e.x), vec2<bool>(true, var_1.e.x), vec2<bool>(var_1.c, true))), var_1.e), !var_1.e, select(vec2<bool>(false, var_1.c && true), var_1.e, true)));
    global2 = var_2.a;
    return arg_2.x;
}

fn func_6(arg_0: vec2<i32>, arg_1: vec2<f32>) -> vec4<i32> {
    global1 = array<Struct_2, 12>();
    global1 = array<Struct_2, 12>();
    global2 = vec2<u32>(u_input.c.x, firstLeadingBit(18724u));
    var var_0 = 0u << (firstTrailingBit(global2.x | ~firstTrailingBit(global2.x)) % 32u);
    var var_1 = true;
    return ~vec4<i32>(~(-func_5(vec3<u32>(u_input.b, u_input.b, 0u), Struct_1(vec4<i32>(arg_0.x, arg_0.x, -2147483647i, -15128i), -780f, false, arg_0, vec2<bool>(true, true)))), -1i, ~arg_0.x, ~(_wgslsmith_dot_vec3_i32(vec3<i32>(-6901i, 1i, 0i), vec3<i32>(u_input.a, -1i, u_input.a)) | 11700i));
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: vec2<i32>, arg_3: u32) -> vec4<i32> {
    global2 = ~arg_0.a;
    let var_0 = vec4<i32>(arg_2.x, 11996i, abs(_wgslsmith_dot_vec4_i32(~(~vec4<i32>(arg_2.x, 24344i, arg_2.x, -47156i)), ~abs(vec4<i32>(arg_2.x, 42381i, -37182i, 0i)))), u_input.a);
    let var_1 = vec4<i32>(-u_input.a, select(-48963i, u_input.a, false & (_wgslsmith_f_op_f32(select(-1038f, -171f, true)) < -1000f)), var_0.x << ((4294967295u | arg_0.a.x) % 32u), _wgslsmith_div_i32(52213i, var_0.x));
    var var_2 = _wgslsmith_sub_vec2_u32(u_input.c, ~(~vec2<u32>(countOneBits(arg_0.a.x), 69790u)));
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(218f * 945f), -1594f));
    return func_6(~(arg_2 ^ -_wgslsmith_mult_vec2_i32(vec2<i32>(arg_2.x, 1846i), vec2<i32>(u_input.a, u_input.a))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(arg_2, 17603i, vec2<f32>(432f, 1000f), var_1.x)), _wgslsmith_div_f32(-912f, var_3), any(vec3<bool>(true, true, true))))) - vec2<f32>(var_3, var_3)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 28>();
    let var_0 = (-func_1(Struct_3(u_input.c), u_input.b, vec2<i32>(u_input.a, u_input.a), ~global2.x) & _wgslsmith_mod_vec4_i32(abs(~vec4<i32>(u_input.a, -9850i, u_input.a, u_input.a)), reverseBits(vec4<i32>(u_input.a, u_input.a, -14453i, u_input.a) ^ vec4<i32>(u_input.a, u_input.a, -2258i, u_input.a)))) | select(vec4<i32>(-2147483647i, u_input.a, 1i, u_input.a) << (min(firstTrailingBit(vec4<u32>(19768u, global2.x, 1u, global2.x)), select(vec4<u32>(u_input.c.x, global2.x, 64274u, 0u), vec4<u32>(70533u, u_input.b, 0u, 0u), true)) % vec4<u32>(32u)), min(-func_6(vec2<i32>(6851i, 0i), vec2<f32>(-1136f, 414f)), vec4<i32>(u_input.a, u_input.a, -16508i, -32437i) >> (select(vec4<u32>(u_input.b, u_input.c.x, 4294967295u, 0u), vec4<u32>(1u, 0u, global2.x, 14955u), false) % vec4<u32>(32u))), 2101f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(151f)) + _wgslsmith_f_op_f32(abs(-2728f))));
    let var_1 = select(var_0.zy, vec2<i32>(max(var_0.x, 37134i), reverseBits(u_input.a)), !(true & all(vec2<bool>(true, true))));
    global2 = ~(~_wgslsmith_add_vec2_u32(abs(~vec2<u32>(global2.x, u_input.b)), vec2<u32>(global2.x, 0u) >> (~u_input.c % vec2<u32>(32u))));
    var var_2 = 30048i;
    let var_3 = -813f;
    let var_4 = 12152u;
    global2 = u_input.c;
    global1 = array<Struct_2, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, ~(_wgslsmith_mod_vec3_u32(vec3<u32>(global2.x, global2.x, global2.x), vec3<u32>(global2.x, u_input.c.x, 5481u)) & ~vec3<u32>(u_input.b, u_input.b, 53998u)) ^ select(select(select(vec3<u32>(19065u, var_4, 16474u), vec3<u32>(8658u, 20140u, u_input.b), true), ~vec3<u32>(63492u, global2.x, 95380u), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), vec3<u32>(~u_input.b, ~12470u, 0u), !(var_3 <= var_3)), global2.x, -var_0.wzw);
}

