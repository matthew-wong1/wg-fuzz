struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec3<bool>,
}

struct Struct_5 {
    a: i32,
    b: vec3<bool>,
    c: bool,
    d: vec4<bool>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec3<f32>(-434f, -171f, 1517f), vec2<u32>(34718u, 23041u), false), Struct_1(vec3<f32>(338f, -347f, 445f), vec2<u32>(4294967295u, 1u), false), Struct_1(vec3<f32>(1000f, 775f, 1619f), vec2<u32>(0u, 0u), false), Struct_1(vec3<f32>(556f, -1251f, 359f), vec2<u32>(4294967295u, 0u), true), Struct_1(vec3<f32>(-1183f, 1249f, -726f), vec2<u32>(1u, 1u), false));

var<private> global1: vec3<f32>;

var<private> global2: Struct_2 = Struct_2(vec2<u32>(0u, 50691u), 582f, Struct_1(vec3<f32>(468f, 1141f, 1104f), vec2<u32>(1u, 4294967295u), false));

var<private> global3: Struct_1;

var<private> global4: vec3<u32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: i32) -> bool {
    let var_0 = u_input.c;
    global2 = Struct_2(vec2<u32>(~(0u << (0u % 32u)) ^ select(~131u, _wgslsmith_div_u32(1u, 4294967295u), global2.c.c), _wgslsmith_sub_u32(~(~global3.b.x), min(_wgslsmith_mult_u32(57653u, global2.a.x), u_input.a))), _wgslsmith_f_op_f32(f32(-1f) * -488f), global0[_wgslsmith_index_u32(u_input.a, 5u)]);
    return select(4294967295u, 0u, all(vec4<bool>(all(vec2<bool>(false, true)), global2.c.c, !global3.c, all(vec2<bool>(false, true))))) <= _wgslsmith_sub_u32(1u, max(max(16972u, global2.a.x) << (82422u % 32u), ~global3.b.x));
}

fn func_2() -> Struct_2 {
    global3 = global2.c;
    let var_0 = Struct_5(u_input.d, select(vec3<bool>(all(vec3<bool>(global3.c, true, true)), true, global3.c), !select(!vec3<bool>(global2.c.c, global2.c.c, true), select(vec3<bool>(global3.c, false, global2.c.c), vec3<bool>(global3.c, true, true), vec3<bool>(global2.c.c, false, global3.c)), vec3<bool>(true, global2.c.c, global3.c)), ~(~u_input.a) < global2.c.b.x), true, vec4<bool>(global2.c.c, func_3(i32(-1i) * -24251i, _wgslsmith_f_op_vec2_f32(global3.a.yz + vec2<f32>(1592f, 733f)), 0i), (global3.c != true) | any(vec3<bool>(true, true, false)), 6320i >= ~_wgslsmith_mult_i32(-1i, u_input.b)), Struct_3(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -140f), _wgslsmith_f_op_f32(-global1.x)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.c.a * vec3<f32>(global1.x, 943f, 1000f))), global4.zx, true & global3.c), 1i, Struct_2(~global3.b, global3.a.x, global2.c)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(500f, var_0.e.a.x, -935f, var_0.e.d.c.a.x))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.a.x, global3.a.x, global1.x, -1388f)))))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(498f, -323f, -671f, var_0.e.d.b) - vec4<f32>(927f, -156f, -723f, -467f)))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + -423f), -716f, 679f, -1000f)));
    global4 = vec3<u32>(var_0.e.b.b.x, 38263u, ~89385u | global2.a.x);
    return var_0.e.d;
}

fn func_1(arg_0: vec4<f32>, arg_1: i32) -> u32 {
    global2 = func_2();
    var var_0 = Struct_3(arg_0.yy, func_2().c, 0i, Struct_2(~(~abs(global4.xz)), _wgslsmith_f_op_f32(sign(-1887f)), func_2().c));
    var var_1 = firstLeadingBit(~(~var_0.d.a.x));
    var var_2 = ~abs(var_0.c);
    var var_3 = u_input.c;
    return global3.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.d, 15611i), 1i) ^ ~abs(i32(-1i) * -15409i);
    global0 = array<Struct_1, 5>();
    let var_1 = max(~countOneBits((vec4<u32>(22416u, u_input.a, global3.b.x, global3.b.x) << (vec4<u32>(4294967295u, global4.x, 4294967295u, u_input.a) % vec4<u32>(32u))) >> (max(vec4<u32>(global2.a.x, global4.x, 4294967295u, 20525u), vec4<u32>(global2.c.b.x, 0u, 4294967295u, u_input.a)) % vec4<u32>(32u))), ~vec4<u32>(global2.c.b.x, _wgslsmith_clamp_u32(23739u, ~u_input.a, func_1(vec4<f32>(global1.x, global3.a.x, global2.b, global3.a.x), 2147483647i)), _wgslsmith_dot_vec4_u32(~vec4<u32>(35386u, 4294967295u, global3.b.x, global2.a.x), firstLeadingBit(vec4<u32>(0u, 42106u, global2.c.b.x, global2.c.b.x))), global4.x));
    global0 = array<Struct_1, 5>();
    var var_2 = Struct_2(_wgslsmith_div_vec2_u32(global3.b, abs(~vec2<u32>(global3.b.x, global4.x) << (vec2<u32>(u_input.a, var_1.x) % vec2<u32>(32u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global1.x, global3.a.x, !global2.c.c)))), 1f), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(654f)), _wgslsmith_div_f32(global3.a.x, global2.b), 1715f) + func_2().c.a), _wgslsmith_add_vec2_u32(~global4.zx, var_1.yw), global2.c.c));
    let var_3 = global3.a.x;
    let var_4 = func_2().c;
    global3 = Struct_1(_wgslsmith_f_op_vec3_f32(-global2.c.a), ~global2.c.b, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-823f)) - global3.a.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(global1.x, -2610f)), _wgslsmith_f_op_f32(-var_4.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-639f * 174f), _wgslsmith_div_f32(global3.a.x, -420f)), var_4.a.x), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2.c.a.x, 289f, global3.a.x, -979f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, global3.a.x, global1.x, global3.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(303f, -2605f, -285f, -534f), vec4<f32>(934f, 1420f, var_4.a.x, var_4.a.x)))))));
}

