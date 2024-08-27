struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<u32, 22> = array<u32, 22>(52104u, 3063u, 4294967295u, 24115u, 4294967295u, 1u, 1u, 0u, 45162u, 42914u, 1u, 4294967295u, 1u, 4294967295u, 29428u, 0u, 0u, 131u, 1u, 4294967295u, 14790u, 1u);

var<private> global2: f32 = 1107f;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: u32) -> f32 {
    global2 = global0.a;
    var var_0 = u_input.a ^ ((vec4<i32>(14640i, u_input.a.x, 2147483647i, -25890i) & (-vec4<i32>(2147483647i, 1i, global0.c.x, 6496i) << (vec4<u32>(u_input.b.x, arg_1.x, 1636u, 4294967295u) % vec4<u32>(32u)))) ^ vec4<i32>(max(_wgslsmith_add_i32(global0.c.x, -1i), _wgslsmith_mod_i32(u_input.a.x, -58208i)), _wgslsmith_sub_i32(global0.c.x, countOneBits(global0.c.x)), reverseBits(0i), 2147483647i));
    var var_1 = Struct_3(!select(!(!global0.b.a), global0.b.a, select(!vec4<bool>(true, false, global0.b.a.x, global0.b.a.x), global0.b.a, false)));
    let var_2 = vec3<i32>(abs(var_0.x ^ u_input.a.x), 21057i, -max(_wgslsmith_add_i32(-1i, global0.c.x), firstLeadingBit(-global0.c.x)));
    var var_3 = u_input.a;
    return -1873f;
}

fn func_2(arg_0: u32) -> u32 {
    global1 = array<u32, 22>();
    let var_0 = _wgslsmith_f_op_f32(func_3(global0.c.x, reverseBits(u_input.c), ~_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(~66202u, 22u)], 1u) << (u_input.b.x % 32u)));
    var var_1 = var_0;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-1000f - global0.a), _wgslsmith_f_op_f32(ceil(474f)), -261f);
    var var_3 = _wgslsmith_mult_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-86233i, 0i, u_input.a.x), u_input.a.ywx), -1i, 2147483647i), _wgslsmith_sub_vec3_i32(abs(u_input.a.xxx), vec3<i32>(42514i, u_input.a.x, global0.c.x))), vec3<i32>(_wgslsmith_dot_vec3_i32(countOneBits(u_input.a.xzz), select(vec3<i32>(global0.c.x, -453i, -2366i), vec3<i32>(-23492i, -10132i, 2147483647i), select(global0.b.a.wyx, global0.b.a.xzy, vec3<bool>(false, global0.b.a.x, true)))), _wgslsmith_div_i32(select(u_input.a.x << (u_input.b.x % 32u), ~u_input.a.x, global0.b.a.x), -12445i), 1i));
    return 1u;
}

fn func_1(arg_0: i32, arg_1: vec4<u32>) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c.x, ~(~func_2(global1[_wgslsmith_index_u32(~1u, 22u)])), 0u), 22u)];
    global1 = array<u32, 22>();
    let var_1 = arg_1.x;
    global1 = array<u32, 22>();
    var_0 = ~_wgslsmith_mod_u32(4294967295u, ~_wgslsmith_mult_u32(43164u, arg_1.x & arg_1.x));
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(func_1(global0.c.x, u_input.c ^ vec4<u32>(~u_input.b.x, 0u, global1[_wgslsmith_index_u32(26763u, 22u)], _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 22u)], 22u)], 4294967295u)))), global0.b, vec2<i32>(_wgslsmith_add_i32(global0.c.x, u_input.a.x >> (u_input.c.x % 32u)), global0.c.x));
    var var_1 = Struct_3(vec4<bool>(false, global0.b.a.x, all(select(vec2<bool>(true, true), select(vec2<bool>(global0.b.a.x, global0.b.a.x), vec2<bool>(global0.b.a.x, false), false), vec2<bool>(false, true))), var_0.b.a.x | global0.b.a.x));
    var var_2 = u_input.c.wx;
    var var_3 = Struct_2(Struct_1(2147483647i, any(vec4<bool>(var_0.b.a.x == true, var_1.a.x, select(var_1.a.x, true, false), !global0.b.a.x)), _wgslsmith_f_op_f32(-global0.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, _wgslsmith_div_f32(-239f, var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2287f * -1000f) + 1241f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(554f, var_0.a, var_0.a))))), vec2<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(trunc(var_0.a))), Struct_1(select(u_input.a.x, 71379i, any(global0.b.a.xzz)) << ((1u ^ u_input.c.x) % 32u), true, _wgslsmith_f_op_f32(1795f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global0.c.x, u_input.c)) + _wgslsmith_f_op_f32(-global0.a)))), Struct_1(-(2147483647i ^ u_input.a.x), all(global0.b.a.zyy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.a.x, vec4<u32>(1u, u_input.b.x, u_input.b.x, 4294967295u)))) - -444f)));
    var var_4 = Struct_3(vec4<bool>(false, any(vec2<bool>(true, any(var_1.a.yw))), false, all(var_1.a)));
    var var_5 = vec4<f32>(var_3.c.x, var_0.a, 1775f, _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(-var_0.a)));
    let var_6 = vec2<f32>(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -407f));
    global0 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_6.x - 309f), var_3.d.c, -917f))), _wgslsmith_div_i32((countOneBits(0i) ^ var_3.d.a) ^ _wgslsmith_add_i32(42188i, var_0.c.x), global0.c.x), _wgslsmith_mult_i32(u_input.a.x, firstLeadingBit(~(-11828i) >> (1u % 32u))));
}

