struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: bool,
    d: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_2,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30> = array<i32, 30>(37045i, 1725i, i32(-2147483648), 0i, i32(-2147483648), 0i, 0i, -48424i, 24542i, 45958i, -17409i, 0i, i32(-2147483648), -32190i, 0i, 33151i, -1i, 45542i, -36574i, i32(-2147483648), -9392i, -13766i, -29606i, 7305i, 65077i, -7026i, -1i, 0i, -15617i, 0i);

var<private> global1: Struct_3 = Struct_3(true, -317f, Struct_2(vec2<i32>(12890i, 2147483647i), 186f, true, vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(true, false, true, true), 64358u), 778f);

var<private> global2: array<f32, 27>;

var<private> global3: array<f32, 31>;

var<private> global4: vec2<f32> = vec2<f32>(719f, 712f);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    var var_0 = global1.d;
    let var_1 = Struct_3(false, 1851f, global1.c, global1.d, arg_0.x);
    let var_2 = var_0.a.x;
    var_0 = Struct_1(var_0.a, ~3938u);
    let var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(100970u, 6706u, 63944u)), 1u, var_1.d.b, 20037u) >> (vec4<u32>(1u, 28168u, _wgslsmith_dot_vec2_u32(vec2<u32>(39351u, 13163u), u_input.b.zy), _wgslsmith_mult_u32(global1.d.b, 0u)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 58204u, global1.d.b, var_1.d.b), vec4<u32>(var_0.b, 28632u, 84419u, 4294967295u)), vec4<u32>(firstTrailingBit(25359u), 28464u | global1.d.b, 22658u & var_0.b, 0u))) & 28495u;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(arg_0.x))));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_2) -> u32 {
    var var_0 = vec4<i32>(_wgslsmith_mod_i32(global1.c.a.x, arg_0.x), 1i, arg_2.a.x, -1i);
    let var_1 = global1.d;
    global2 = array<f32, 27>();
    global4 = vec2<f32>(global4.x, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1.d.b, 0u, 31772u), 31u)], global1.e, _wgslsmith_f_op_f32(-277f * global1.b)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(72919u, 31u)], global1.c.b, global1.e) - vec3<f32>(-1395f, global1.b, global3[_wgslsmith_index_u32(var_1.b, 31u)])))))));
    global3 = array<f32, 31>();
    return var_1.b;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<i32>) -> Struct_3 {
    var var_0 = ~(~(~(~vec4<u32>(0u, 46395u, 5569u, global1.d.b)))) ^ ~_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_add_u32(global1.d.b, 1u), abs(u_input.d), func_2(u_input.a.zw, true, arg_0), 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 1u, global1.d.b, 1u) ^ vec4<u32>(10513u, global1.d.b, u_input.d, 7224u), vec4<u32>(global1.d.b, 4294967295u, 28876u, u_input.d) ^ vec4<u32>(u_input.d, 4294967295u, u_input.b.x, global1.d.b), _wgslsmith_div_vec4_u32(vec4<u32>(global1.d.b, 0u, u_input.b.x, 6992u), vec4<u32>(global1.d.b, 50u, 49598u, 25501u))));
    var var_1 = global1.c.a.x;
    global3 = array<f32, 31>();
    var var_2 = Struct_2(vec2<i32>(-arg_1.x, arg_1.x), -212f, all(vec2<bool>(~1u > ~var_0.x, arg_0.c)), select(global1.c.d, !arg_0.d, !(global1.c.d.x && (-1138f < arg_0.b))));
    var var_3 = vec2<u32>(_wgslsmith_dot_vec2_u32(select(_wgslsmith_mod_vec2_u32(u_input.b.xz, var_0.xz), vec2<u32>(14539u, u_input.b.x), all(global1.c.d.zw)), vec2<u32>(4294967295u, 1u)), var_0.x);
    return Struct_3(all(!var_2.d), 951f, global1.c, Struct_1(select(select(var_2.d, select(arg_0.d, var_2.d, arg_0.d), global1.c.d), vec4<bool>(all(var_2.d.xwx), true, true, !var_2.c), !select(global1.d.a, vec4<bool>(true, true, arg_0.c, var_2.d.x), global1.d.a)), ~(~(~24709u))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-292f)))), _wgslsmith_div_f32(424f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -735f))))));
}

fn func_4(arg_0: Struct_3) -> vec2<f32> {
    let var_0 = -32330i << (abs(global1.d.b) % 32u);
    global1 = Struct_3(0u >= (~func_1(Struct_2(arg_0.c.a, 685f, false, global1.d.a), u_input.a).d.b << (u_input.b.x % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1550f - 1483f) + global2[_wgslsmith_index_u32(~64910u, 27u)]), 1000f)), global1.c, func_1(arg_0.c, abs(~max(u_input.a, vec4<i32>(-1i, -31563i, global0[_wgslsmith_index_u32(arg_0.d.b, 30u)], global1.c.a.x)))).d, _wgslsmith_f_op_f32(-1830f + _wgslsmith_f_op_f32(f32(-1f) * -430f)));
    var var_1 = global1.c.d.x;
    global3 = array<f32, 31>();
    var var_2 = ~(~global1.d.b) > 2595u;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-745f, -1000f)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(global1.d.b, 31u)], 417f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2[_wgslsmith_index_u32(1u, 27u)], 988f), vec2<f32>(arg_0.e, global3[_wgslsmith_index_u32(16008u, 31u)]), arg_0.d.a.x))), vec2<f32>(_wgslsmith_div_f32(599f, -1000f), _wgslsmith_f_op_f32(f32(-1f) * -352f)), true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, global1.a != !(_wgslsmith_f_op_f32(exp2(global4.x)) == 1000f), false || !global1.d.a.x, true);
    let var_1 = _wgslsmith_f_op_vec2_f32(func_4(func_1(global1.c, vec4<i32>(27612i, _wgslsmith_div_i32(global1.c.a.x ^ global0[_wgslsmith_index_u32(global1.d.b, 30u)], abs(2147483647i)), (global0[_wgslsmith_index_u32(global1.d.b, 30u)] ^ -26644i) << ((178285u >> (global1.d.b % 32u)) % 32u), ~33523i))));
    var var_2 = u_input.a.xx;
    var var_3 = global1.d;
    var_0 = !var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(~(global1.c.a.x ^ func_1(func_1(Struct_2(u_input.a.xx, var_1.x, var_0.x, var_3.a), u_input.a).c, -u_input.a).c.a.x), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, func_1(Struct_2(global1.c.a, 1091f, true, global1.c.d), u_input.a).d.b, 16066u, 18199u), vec4<u32>(u_input.b.x, var_3.b >> (16639u % 32u), global1.d.b, global1.d.b)), 28071u, 0u >> (var_3.b % 32u), u_input.b.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(19787u & global1.d.b, 31u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_3.b, 27u)])), _wgslsmith_f_op_f32(select(global1.c.b, var_1.x, false))), var_1, !(!global1.c.d.xx))));
}

