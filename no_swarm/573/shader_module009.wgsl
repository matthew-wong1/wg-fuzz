struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_2,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(1u, 1u), true);

var<private> global1: Struct_2;

var<private> global2: array<Struct_4, 2>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: vec4<u32>, arg_3: vec3<i32>) -> Struct_4 {
    global2 = array<Struct_4, 2>();
    return Struct_4(_wgslsmith_div_vec4_i32(-vec4<i32>(min(arg_3.x, 0i), _wgslsmith_dot_vec4_i32(global1.b, global1.b), 1i, -global1.b.x), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.a.x, -34872i, arg_3.x, arg_3.x), vec4<i32>(2147483647i, u_input.a, 63107i, -40455i)), ~global1.a.x, -global1.a.x, -30986i) << (arg_2 % vec4<u32>(32u))), !vec3<bool>(all(vec2<bool>(true, true)), true, false));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, global1.c.x, arg_0.x, -1442f) + vec4<f32>(global1.c.x, 717f, -654f, -1233f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-260f, -1760f, -168f, global1.c.x))))), _wgslsmith_f_op_vec4_f32(global1.c * global1.c)));
    global0 = Struct_1(~vec2<u32>(~global1.d.x | _wgslsmith_div_u32(27914u, 54747u), 69750u), any(select(vec4<bool>(all(vec2<bool>(global0.b, global0.b)), true, !global0.b, var_0.x != -1000f), !vec4<bool>(global0.b, false, true, global0.b), global0.b == select(global0.b, global0.b, false))));
    let var_1 = countOneBits(abs(47118u << (global1.d.x % 32u)));
    let var_2 = func_2(_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(global1.d.x, 4294967295u, global0.a.x) | select(u_input.b, u_input.b, true)), vec3<u32>(_wgslsmith_clamp_u32(u_input.b.x, 11855u, global1.d.x) >> (u_input.b.x % 32u), ~u_input.b.x << ((u_input.b.x >> (u_input.b.x % 32u)) % 32u), global0.a.x)), ~(~(~global1.d.x)), ~_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global0.a.x, 40086u, var_1), vec4<u32>(global0.a.x, 23184u, 68522u, 4294967295u)), vec4<u32>(u_input.b.x, global0.a.x, 33413u, u_input.b.x)), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 22005u, 40432u, 67917u), vec4<u32>(6623u, 0u, 0u, 4294967295u), vec4<u32>(43315u, var_1, 4294967295u, 4294967295u)), ~vec4<u32>(u_input.b.x, global0.a.x, 1u, var_1)), select(vec4<u32>(u_input.b.x, 72095u, 1u, global0.a.x) ^ vec4<u32>(u_input.b.x, u_input.b.x, global1.d.x, 135435u), reverseBits(vec4<u32>(u_input.b.x, global1.d.x, global0.a.x, 1u)), vec4<bool>(global0.b, false, global0.b, global0.b))), vec3<i32>(_wgslsmith_mult_i32(-2147483647i, _wgslsmith_clamp_i32(-32201i, -30036i, -u_input.a)), -2147483647i, _wgslsmith_div_i32(-1i, abs(global1.a.x)))).a.yzw;
    global1 = Struct_2(vec4<i32>(1i, arg_1, abs(global1.a.x), _wgslsmith_div_i32(arg_1, (1i ^ var_2.x) << (2853u % 32u))), reverseBits(global1.b), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(global1.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1876f, _wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(max(global1.c.x, var_0.x)), _wgslsmith_f_op_f32(-var_0.x)) + global1.c))), _wgslsmith_clamp_vec2_u32(vec2<u32>(abs(global1.d.x), 1u), vec2<u32>(4294967295u, reverseBits(0u)), ~u_input.b.yy & vec2<u32>(u_input.b.x, ~global1.d.x)));
    return var_1 ^ ~(~(20978u & ~global1.d.x));
}

fn func_1(arg_0: vec4<i32>, arg_1: bool, arg_2: i32) -> vec4<i32> {
    global2 = array<Struct_4, 2>();
    let var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(-_wgslsmith_div_i32(22797i, u_input.a), -_wgslsmith_mult_i32(u_input.a, -2147483647i), arg_2, -63783i) << (vec4<u32>(_wgslsmith_sub_u32(firstTrailingBit(0u), 0u), global0.a.x, abs(~1u), ~4294967295u) % vec4<u32>(32u)), vec4<i32>(-_wgslsmith_dot_vec3_i32(-vec3<i32>(-18644i, -6111i, arg_0.x), global1.b.zxx), _wgslsmith_sub_i32((global1.b.x & u_input.a) & abs(u_input.a), ~(arg_2 | 2147483647i)), arg_2, u_input.a));
    var var_1 = func_2(u_input.b, 1u, abs(_wgslsmith_add_vec4_u32(firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 40060u, 1u, global1.d.x), vec4<u32>(u_input.b.x, global1.d.x, 0u, 14131u))), ~select(vec4<u32>(u_input.b.x, 4599u, global0.a.x, global1.d.x), vec4<u32>(u_input.b.x, 0u, 0u, global1.d.x), global0.b))), firstLeadingBit(_wgslsmith_mod_vec3_i32(abs(arg_0.wxy), _wgslsmith_add_vec3_i32(arg_0.wyy, vec3<i32>(var_0.x, global1.a.x, global1.b.x))) ^ reverseBits(global1.a.wzw)));
    var var_2 = global1.c.x;
    global1 = Struct_2(-_wgslsmith_mod_vec4_i32(min(~var_1.a, max(var_1.a, vec4<i32>(u_input.a, var_0.x, arg_0.x, var_1.a.x))), global1.b), max(-var_0, abs(-(~var_0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global1.c, vec4<f32>(699f, global1.c.x, global1.c.x, 568f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(324f, global1.c.x)), global1.c.x, -603f, _wgslsmith_f_op_f32(374f - global1.c.x)))), vec2<u32>(~69730u, _wgslsmith_sub_u32(13996u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 1u), vec4<u32>(0u, global1.d.x, 4294967295u, 0u))) << (max(func_3(vec3<f32>(-147f, global1.c.x, global1.c.x), global1.a.x), 62440u >> (global0.a.x % 32u)) % 32u)));
    return firstTrailingBit(vec4<i32>(-_wgslsmith_add_i32(arg_2, 0i), arg_2, arg_0.x, 1i)) ^ vec4<i32>(32325i, -abs(func_2(vec3<u32>(u_input.b.x, global0.a.x, u_input.b.x), 0u, vec4<u32>(u_input.b.x, 1u, global1.d.x, 0u), vec3<i32>(var_1.a.x, var_1.a.x, arg_0.x)).a.x), arg_0.x, var_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    global0 = Struct_1(global1.d, !(global1.c.x < _wgslsmith_f_op_f32(max(1204f, _wgslsmith_f_op_f32(f32(-1f) * -1107f)))));
    let var_1 = global0.b;
    var var_2 = Struct_3(~_wgslsmith_div_vec4_i32(-global1.b << (vec4<u32>(65164u, 82910u, 12657u, 41313u) % vec4<u32>(32u)), ~func_1(vec4<i32>(2147483647i, -41039i, global1.a.x, u_input.a), global0.b, 1i)), vec4<bool>(any(vec3<bool>(global0.b, !global0.b, true | global0.b)), any(vec2<bool>(!global0.b, global0.b)), false, global0.b), Struct_1(firstLeadingBit(u_input.b.xz) & select(vec2<u32>(global0.a.x, global1.d.x), global1.d, select(vec2<bool>(global0.b, true), vec2<bool>(false, true), vec2<bool>(global0.b, true))), true), Struct_2(~vec4<i32>(u_input.a, -2147483647i, -24345i ^ global1.a.x, abs(global1.b.x)), vec4<i32>(_wgslsmith_dot_vec2_i32(global1.b.xw ^ global1.b.zx, global1.a.zw), 1i, func_2(u_input.b, ~global1.d.x, ~vec4<u32>(global0.a.x, u_input.b.x, 33665u, global1.d.x), global1.b.yxw).a.x, -u_input.a), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -695f), 245f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(global1.c.x, global1.c.x, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1294f)) - -1000f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.c.x, global1.c.x) + _wgslsmith_f_op_f32(-global1.c.x))), vec2<u32>(1u, global1.d.x)), _wgslsmith_f_op_vec2_f32(ceil(global1.c.wz)));
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.b.x, global0.a.x), select(global1.d.x, ~global1.d.x, all(var_2.b.xy))), 2u)];
    var var_4 = vec4<bool>(select(true, true, u_input.b.x != ~(~u_input.b.x)), false, false, !all(vec4<bool>(global1.d.x >= global1.d.x, false, var_3.b.x, !var_3.b.x)));
    var var_5 = var_2.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(global1.c.x)))) - _wgslsmith_f_op_f32(ceil(-459f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.d.c.x - _wgslsmith_f_op_f32(f32(-1f) * -101f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.c.x)) - _wgslsmith_div_f32(global1.c.x, var_5.c.x))))));
}

