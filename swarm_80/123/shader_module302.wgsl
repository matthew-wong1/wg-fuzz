struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6> = array<i32, 6>(1i, 4757i, 14160i, 25001i, 8792i, 2147483647i);

var<private> global1: array<Struct_1, 12>;

var<private> global2: f32 = -133f;

var<private> global3: Struct_1;

var<private> global4: u32 = 0u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_1) -> f32 {
    let var_0 = u_input.c;
    var var_1 = global1[_wgslsmith_index_u32(countOneBits(28634u), 12u)];
    var var_2 = arg_0;
    var var_3 = u_input.d;
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1265f - arg_2.x)), arg_2.x, arg_2.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(173f, 1000f)), arg_2.x))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_2.x)), _wgslsmith_f_op_f32(arg_2.x * arg_2.x), _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(min(arg_2.x, arg_2.x))), _wgslsmith_f_op_f32(select(arg_2.x, -1638f, all(var_2.a.yx))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(504f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.x) - -309f)) - arg_2.x));
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    global2 = -1555f;
    global3 = Struct_1(vec3<bool>(all(vec3<bool>(u_input.d.x >= -2147483647i, global3.a.x, true)), true, true), global3.b);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1422f + 887f)) * _wgslsmith_f_op_f32(-1200f + _wgslsmith_f_op_f32(func_3(Struct_1(vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x), vec4<u32>(4294967295u, 4294967295u, 0u, arg_0.b.x)), 0u, vec2<f32>(1000f, -936f), global1[_wgslsmith_index_u32(u_input.a.x, 12u)])))) + -779f));
    var var_0 = global1[_wgslsmith_index_u32(~firstLeadingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.b.x, 33097u, u_input.b), reverseBits(vec3<u32>(57591u, global3.b.x, arg_0.b.x)))) ^ ~((arg_0.b.x ^ _wgslsmith_dot_vec4_u32(u_input.c, u_input.c)) << (arg_0.b.x % 32u)), 12u)];
    var_0 = global1[_wgslsmith_index_u32(0u, 12u)];
    return var_0.a.yz;
}

fn func_4(arg_0: vec2<u32>) -> Struct_1 {
    global4 = 14627u;
    var var_0 = -34393i;
    global1 = array<Struct_1, 12>();
    global3 = Struct_1(vec3<bool>(false, false, all(!func_2(Struct_1(global3.a, vec4<u32>(global3.b.x, arg_0.x, 1u, 4294967295u))))), countOneBits(_wgslsmith_add_vec4_u32(abs(vec4<u32>(arg_0.x, 1u, global3.b.x, u_input.a.x)), u_input.c)) & ~_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(50212u, arg_0.x, 0u, 641u)), ~global3.b));
    global0 = array<i32, 6>();
    return global1[_wgslsmith_index_u32(global3.b.x, 12u)];
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_1) -> vec3<u32> {
    global3 = arg_3;
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2 + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(arg_2, vec2<f32>(arg_2.x, 505f), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1024f, arg_0))))));
    var var_1 = func_4(select(_wgslsmith_add_vec2_u32(arg_1.b.xx, ~vec2<u32>(arg_3.b.x, 33233u)), arg_3.b.zy >> (((vec2<u32>(arg_1.b.x, global3.b.x) << (arg_1.b.yw % vec2<u32>(32u))) | arg_3.b.yz) % vec2<u32>(32u)), func_2(arg_3)));
    var var_2 = var_0.x;
    global4 = countOneBits(arg_3.b.x);
    return firstLeadingBit(~var_1.b.xxx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_div_u32(1u, ~(global3.b.x | global3.b.x));
    var var_1 = reverseBits(4294967295u);
    let var_2 = func_1(1f, Struct_1(global3.a, ~min(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 0u, 15527u, 44768u), vec4<u32>(4294967295u, 62356u, 0u, 1u)), firstTrailingBit(vec4<u32>(4294967295u, 0u, 10824u, 24233u)))), vec2<f32>(-286f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-144f, 1000f)), -756f))), Struct_1(vec3<bool>(all(vec4<bool>(false, true, global3.a.x, true)), true, global3.a.x), ~global3.b));
    var var_3 = vec4<bool>(true, true, !(!any(vec2<bool>(true, true))), func_2(func_4(vec2<u32>(588u, 12189u << (u_input.c.x % 32u)))).x);
    global4 = ~(~var_2.x);
    var_3 = select(select(vec4<bool>(global3.a.x, true, func_4(_wgslsmith_clamp_vec2_u32(global3.b.yy, vec2<u32>(var_2.x, 4294967295u), u_input.a)).a.x, _wgslsmith_f_op_f32(round(187f)) != _wgslsmith_f_op_f32(step(-1526f, -211f))), select(vec4<bool>(true, var_3.x, var_3.x, true), select(!vec4<bool>(global3.a.x, false, var_3.x, true), vec4<bool>(var_3.x, global3.a.x, true, var_3.x), all(var_3.zz)), !select(vec4<bool>(true, false, var_3.x, var_3.x), vec4<bool>(false, false, var_3.x, false), vec4<bool>(false, var_3.x, false, var_3.x))), func_2(global1[_wgslsmith_index_u32(4294967295u, 12u)]).x), !vec4<bool>(global3.a.x, global3.a.x, var_3.x, true), global3.a.x & func_2(func_4(firstLeadingBit(global3.b.xx))).x);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1139f, 1006f)));
    let var_4 = select(vec2<u32>(u_input.b, ~min(firstTrailingBit(u_input.a.x), 50872u)), _wgslsmith_add_vec2_u32(~(~abs(var_2.yy)), global3.b.zw), func_2(func_4(vec2<u32>(~global3.b.x, 1u))));
    var var_5 = Struct_1(vec3<bool>((any(var_3.yx) | all(vec3<bool>(true, false, var_3.x))) && (!global3.a.x | false), func_2(func_4(~u_input.c.xx)).x, any(vec4<bool>(var_3.x || var_3.x, global3.a.x, global3.a.x, global3.a.x))), global3.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_5.b.x, 1u, 0u, 30218u), min(_wgslsmith_sub_u32(_wgslsmith_mult_u32(4294967295u, 1u) << (_wgslsmith_sub_u32(0u, var_2.x) % 32u), _wgslsmith_clamp_u32(4294967295u, 68485u, var_5.b.x | 4294967295u)), 1940u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1140f, -303f, 774f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1633f, -408f, -1107f) - vec3<f32>(-990f, -406f, -296f)), vec3<f32>(956f, -710f, -167f), var_5.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-301f, 591f, 548f)))))), reverseBits(_wgslsmith_mult_i32(countOneBits(-2147483647i) >> (~var_2.x % 32u), u_input.d.x)));
}

