struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<bool>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
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

var<private> global0: bool = true;

var<private> global1: array<bool, 30>;

var<private> global2: array<vec3<i32>, 14> = array<vec3<i32>, 14>(vec3<i32>(0i, 0i, 1i), vec3<i32>(-1i, 24306i, 27134i), vec3<i32>(2147483647i, 43640i, 2147483647i), vec3<i32>(i32(-2147483648), 7172i, 28736i), vec3<i32>(0i, 1i, i32(-2147483648)), vec3<i32>(1i, -54192i, 27173i), vec3<i32>(-15744i, -31303i, 0i), vec3<i32>(66865i, -1i, -30i), vec3<i32>(108793i, 1i, i32(-2147483648)), vec3<i32>(0i, 2147483647i, -1i), vec3<i32>(2147483647i, 1i, 3678i), vec3<i32>(-25251i, 29370i, 0i), vec3<i32>(-43178i, -26789i, -4752i), vec3<i32>(0i, 1i, 30131i));

var<private> global3: array<vec2<u32>, 8>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2() -> vec3<i32> {
    let var_0 = -964f;
    return vec3<i32>(-1i, firstTrailingBit(-u_input.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x >> (u_input.b % 32u), -abs(-1i), ~(-u_input.c.x), 1i), _wgslsmith_mod_vec4_i32(-vec4<i32>(-57668i, -52727i, -1i, 30750i), -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, u_input.c.x, -49241i, -2147483647i)))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: vec3<f32>) -> f32 {
    var var_0 = vec4<i32>(i32(-1i) * -(~abs(u_input.c.x)), -2147483647i, -2147483647i, u_input.c.x);
    var var_1 = Struct_1(var_0.x << (abs(arg_1.x) % 32u), _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(-arg_2.x)), select(arg_0, arg_0, !arg_0), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2.x)) - -156f), arg_2.x, _wgslsmith_f_op_f32(-220f * arg_2.x), arg_2.x));
    let var_2 = Struct_1(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-561f)))), select(var_1.c, var_1.c, select(any(var_1.c.xzz) & !arg_0.x, any(select(vec4<bool>(global1[_wgslsmith_index_u32(arg_1.x, 30u)], global1[_wgslsmith_index_u32(671u, 30u)], false, false), vec4<bool>(arg_0.x, false, var_1.c.x, true), var_1.c)), false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(arg_2.x, arg_2.x), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(abs(332f)), _wgslsmith_f_op_f32(f32(-1f) * -1016f))))));
    let var_3 = _wgslsmith_clamp_u32(u_input.a, _wgslsmith_mod_u32(arg_1.x >> (0u % 32u), u_input.a), arg_1.x);
    var var_4 = var_2;
    return arg_2.x;
}

fn func_1() -> vec4<u32> {
    var var_0 = u_input.c;
    let var_1 = ~u_input.a;
    var var_2 = max(abs(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, 2147483647i), global2[_wgslsmith_index_u32(55367u, 14u)]), -u_input.c.x), var_0.x, var_0.x)), func_2());
    global3 = array<vec2<u32>, 8>();
    var var_3 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(859f, 496f), _wgslsmith_f_op_f32(abs(249f)))) + 1414f), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(599f + _wgslsmith_f_op_f32(floor(1812f)))), 1313f), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-189f, -1405f, _wgslsmith_f_op_f32(func_3(vec4<bool>(true, global1[_wgslsmith_index_u32(var_1, 30u)], false, global1[_wgslsmith_index_u32(u_input.b, 30u)]), vec3<u32>(var_1, var_1, 51988u), vec3<f32>(-585f, -1000f, 489f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1269f, 2239f)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(240f, 893f, -973f), vec3<f32>(845f, 1028f, 1000f)))))))));
    return _wgslsmith_clamp_vec4_u32(~select(vec4<u32>(_wgslsmith_sub_u32(var_1, u_input.b), 19603u ^ var_1, var_1, 29403u), max(vec4<u32>(u_input.b, var_1, var_1, 0u), vec4<u32>(1u, u_input.a, u_input.b, 4294967295u)), global1[_wgslsmith_index_u32((u_input.a << (var_1 % 32u)) << (4294967295u % 32u), 30u)]), ~reverseBits(~vec4<u32>(4294967295u, var_1, var_1, u_input.b)), ~(~(~(~vec4<u32>(4294967295u, u_input.a, var_1, 1u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(4294967295u, (u_input.a ^ u_input.b) | ~(~_wgslsmith_sub_u32(4294967295u, u_input.b)), ~_wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.a, 0u, u_input.b), vec3<u32>(u_input.a, u_input.a, 0u)) << (~vec3<u32>(19972u, u_input.a, 4294967295u) % vec3<u32>(32u)), countOneBits(~vec3<u32>(79112u, u_input.b, u_input.b))), 30850u);
    global2 = array<vec3<i32>, 14>();
    var var_1 = func_1();
    let var_2 = ~2147483647i;
    global0 = false;
    var var_3 = reverseBits(var_0.x);
    let var_4 = Struct_1(0i, _wgslsmith_f_op_f32(step(910f, -959f)), select(vec4<bool>(!all(vec3<bool>(true, global1[_wgslsmith_index_u32(9560u, 30u)], true)), !(!global1[_wgslsmith_index_u32(4294967295u, 30u)]), !(!global1[_wgslsmith_index_u32(u_input.a, 30u)]), true), select(!vec4<bool>(true, true, global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(var_0.x, 30u)]), vec4<bool>(all(vec2<bool>(false, global1[_wgslsmith_index_u32(12262u, 30u)])), false, global1[_wgslsmith_index_u32(func_1().x, 30u)], true), vec4<bool>(true, true, !global1[_wgslsmith_index_u32(1u, 30u)], global1[_wgslsmith_index_u32(_wgslsmith_add_u32(30458u, 0u), 30u)])), select(global1[_wgslsmith_index_u32(~4294967295u | var_0.x, 30u)], !any(vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 30u)], true, false)), global1[_wgslsmith_index_u32(u_input.a, 30u)])), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(267f, 160f)))), 814f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(186f - 731f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-481f)), 1502f))), 567f));
    var_3 = _wgslsmith_add_u32(firstLeadingBit(~(~3873u)), var_0.x);
    var var_5 = _wgslsmith_mult_vec2_i32(vec2<i32>(reverseBits(~var_2 ^ -44581i), i32(-1i) * -max(0i, -2966i)), vec2<i32>(~var_4.a, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2 & var_2, _wgslsmith_dot_vec2_i32(u_input.c, u_input.c), u_input.c.x, -1i), ~(-vec4<i32>(2147483647i, -1i, -22682i, u_input.c.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.x, 1u >> (~var_1.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(~10159u, 4294967295u, 1u << (1u % 32u), 4294967295u), vec4<u32>(~78927u, var_0.x, ~0u, ~var_1.x)), countOneBits(_wgslsmith_clamp_vec2_u32(global3[_wgslsmith_index_u32(~u_input.b, 8u)], _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 0u) >> (vec2<u32>(67337u, 8889u) % vec2<u32>(32u)), vec2<u32>(1u, 0u), vec2<u32>(var_1.x, 0u)), ~max(var_1.yz, var_1.zw))), _wgslsmith_f_op_vec4_f32(min(var_4.d, vec4<f32>(var_4.d.x, var_4.d.x, -745f, _wgslsmith_f_op_f32(-361f + 1000f)))));
}

