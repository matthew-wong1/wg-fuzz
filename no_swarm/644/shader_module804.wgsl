struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: vec2<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-240f, true, vec3<i32>(-24595i, -1i, -1i), 250f);

var<private> global1: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(18169i, 1i), vec2<i32>(2147483647i, 14522i), vec2<i32>(35484i, 24575i), vec2<i32>(-7315i, 2147483647i), vec2<i32>(2147483647i, 9899i), vec2<i32>(20637i, 0i), vec2<i32>(2147483647i, -1i), vec2<i32>(1i, -1i), vec2<i32>(2147483647i, 0i), vec2<i32>(22342i, 2147483647i), vec2<i32>(-25588i, 2147483647i), vec2<i32>(-45030i, -1i), vec2<i32>(-7011i, -27063i), vec2<i32>(-13760i, 1i), vec2<i32>(-36944i, -19677i), vec2<i32>(-13924i, 1i));

var<private> global2: array<u32, 6>;

var<private> global3: Struct_2;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(-1245f, global0.b != false, vec3<i32>(~((u_input.a.x ^ 11097i) >> (107357u % 32u)), _wgslsmith_dot_vec4_i32(countOneBits(u_input.a), firstLeadingBit(vec4<i32>(global0.c.x, global0.c.x, -36344i, -1i))), global0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.e.d - global0.a))))));
    var var_1 = _wgslsmith_f_op_f32(578f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), global0.d)) + var_0.a));
    let var_2 = ~(-1i);
    var_1 = -385f;
    global1 = array<vec2<i32>, 16>();
    return global3.a.x;
}

fn func_2(arg_0: u32) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global0.a, -2164f), _wgslsmith_f_op_f32(sign(-305f)))), u_input.b == 32252u, ~(~(-(~vec3<i32>(1i, global3.d.x, 25554i)))), _wgslsmith_div_f32(_wgslsmith_div_f32(global3.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(793f + 1039f))), _wgslsmith_f_op_f32(f32(-1f) * -1886f)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0.d, -868f))), global0.d)), firstTrailingBit(select(global3.b, global3.b, global3.e.b)) < -(global3.b & min(2147483647i, 79234i)), vec3<i32>(-1i) * -u_input.a.yxw, _wgslsmith_f_op_f32(597f + var_0.a));
    var var_2 = select(~u_input.b, min(func_3(), _wgslsmith_div_u32(u_input.b, 0u)), !(!all(!vec3<bool>(false, global3.e.b, global0.b))));
    var var_3 = global3.e;
    global1 = array<vec2<i32>, 16>();
    return var_1.c.x << (1608u % 32u);
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: bool, arg_3: Struct_2) -> vec4<i32> {
    var var_0 = Struct_1(-1124f, (global2[_wgslsmith_index_u32(abs(4294967295u), 6u)] | arg_0.a.x) < ~firstLeadingBit(4294967295u), -vec3<i32>(abs(max(arg_3.d.x, global3.d.x)), _wgslsmith_clamp_i32(-arg_0.b, 1i | global3.d.x, func_2(arg_0.a.x)), arg_3.d.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_1 = select(select(!select(vec2<bool>(global3.e.b, false), select(vec2<bool>(arg_0.e.b, arg_3.e.b), vec2<bool>(arg_0.e.b, arg_3.e.b), vec2<bool>(arg_1, true)), !arg_3.e.b), select(select(select(vec2<bool>(arg_2, arg_3.e.b), vec2<bool>(global3.e.b, arg_3.e.b), vec2<bool>(true, var_0.b)), select(vec2<bool>(true, arg_2), vec2<bool>(arg_1, true), vec2<bool>(true, var_0.b)), true), vec2<bool>(true, global3.e.b), !vec2<bool>(global0.b, global3.e.b)), global3.e.b), vec2<bool>(arg_0.e.b, true), !vec2<bool>(arg_0.e.b || !arg_1, any(vec4<bool>(arg_2, false, var_0.b, true))));
    let var_2 = global3.a.xy;
    var_0 = Struct_1(1221f, arg_1, vec3<i32>(firstLeadingBit(i32(-1i) * -2147483647i), arg_0.d.x, func_2(arg_0.a.x)) & (vec3<i32>(~arg_3.e.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_3.b, -42641i, -49923i), u_input.a), 0i) << (global3.a % vec3<u32>(32u))), var_0.a);
    let var_3 = arg_0.e;
    return _wgslsmith_mult_vec4_i32(vec4<i32>(func_2(0u | max(global3.a.x, u_input.b)), -_wgslsmith_add_i32(-15194i, -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(arg_0.e.c.x, 14683i, var_3.c.x), 0i), vec2<i32>(-1i) * -vec2<i32>(-1i, arg_0.d.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(-10889i, -19992i), ~abs(vec2<i32>(10807i, arg_3.e.c.x)))), u_input.a);
}

fn func_4(arg_0: vec4<i32>) -> i32 {
    global3 = Struct_2(_wgslsmith_mult_vec3_u32(global3.a, _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(global3.a, global3.a) << (global3.a % vec3<u32>(32u)), (vec3<u32>(u_input.b, global2[_wgslsmith_index_u32(u_input.b, 6u)], 50734u) & global3.a) | _wgslsmith_add_vec3_u32(vec3<u32>(0u, global3.a.x, 23379u), vec3<u32>(global2[_wgslsmith_index_u32(28075u, 6u)], 58092u, 8643u)))), _wgslsmith_dot_vec2_i32(arg_0.zy, _wgslsmith_mod_vec2_i32(-(global0.c.yz ^ vec2<i32>(global0.c.x, global0.c.x)), _wgslsmith_sub_vec2_i32(select(vec2<i32>(0i, -1i), global1[_wgslsmith_index_u32(u_input.b, 16u)], global0.b), vec2<i32>(-2147483647i, global0.c.x)))), -934f, vec2<i32>(countOneBits(arg_0.x), -u_input.a.x << (~4294967295u % 32u)), global3.e);
    var var_0 = arg_0.xxw ^ firstTrailingBit(firstTrailingBit(global3.e.c));
    var var_1 = vec3<u32>(0u, countOneBits(max(global2[_wgslsmith_index_u32(func_3(), 6u)], 4294967295u)), 1u >> (1u % 32u));
    var var_2 = Struct_2(~global3.a, 1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a * 242f), -730f)) + -359f), countOneBits(firstLeadingBit(vec2<i32>(-1i, 0i)) & global1[_wgslsmith_index_u32(1u, 16u)]), global3.e);
    let var_3 = -1i;
    return arg_0.x;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> i32 {
    global0 = global3.e;
    let var_0 = Struct_2(~abs(global3.a), _wgslsmith_dot_vec2_i32(global0.c.zy, -func_1(Struct_2(global3.a, arg_3, 1259f, global1[_wgslsmith_index_u32(35369u, 16u)], global3.e), global3.e.b, arg_1.b, Struct_2(vec3<u32>(0u, 40884u, u_input.b), arg_3, 507f, global0.c.zy, global3.e)).yw), global3.c, -_wgslsmith_div_vec2_i32(~global3.d << (global3.a.yy % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_3, arg_2), global1[_wgslsmith_index_u32(1u, 16u)]), max(arg_1.c.zx, vec2<i32>(-44172i, arg_1.c.x)))), Struct_1(global0.a, global0.d != -1017f, _wgslsmith_clamp_vec3_i32(countOneBits(~vec3<i32>(global3.e.c.x, 42815i, global0.c.x)), vec3<i32>(global3.b, global3.b, -global0.c.x), vec3<i32>(arg_1.c.x, 0i, global3.d.x & 0i)), 266f));
    let var_1 = select(vec3<bool>(false, all(select(vec2<bool>(false, arg_1.b), select(vec2<bool>(true, var_0.e.b), vec2<bool>(var_0.e.b, true), vec2<bool>(global0.b, global3.e.b)), true)), true), vec3<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(arg_1.b, var_0.e.b, true, var_0.e.b), vec4<bool>(true, true, true, true))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(global0.b, global3.e.b), vec2<bool>(arg_1.b, true), vec2<bool>(global3.e.b, var_0.e.b)))), true), true);
    let var_2 = vec3<i32>(arg_3, arg_1.c.x, arg_3);
    var var_3 = vec4<bool>(arg_3 <= (-_wgslsmith_div_i32(10603i, -2147483647i) << (firstLeadingBit(~var_0.a.x) % 32u)), !(!all(vec2<bool>(global0.b, var_0.e.b))), !any(select(var_1, var_1, select(var_1, vec3<bool>(true, arg_1.b, false), vec3<bool>(true, true, var_0.e.b)))), var_0.e.b);
    return -_wgslsmith_add_i32(-58745i ^ func_4(_wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(var_2.x, global3.e.c.x, 40442i, arg_3))), ~global3.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.d + global3.e.d), global0.a))), global3.e, firstTrailingBit(func_4(select(func_1(Struct_2(vec3<u32>(0u, global2[_wgslsmith_index_u32(1u, 6u)], 4294967295u), -1i, global3.c, u_input.a.xz, Struct_1(global3.e.d, global3.e.b, u_input.a.xzx, 1622f)), global0.b, false, Struct_2(global3.a, -39960i, global0.a, vec2<i32>(23321i, -4482i), Struct_1(global0.d, false, vec3<i32>(1i, 9616i, -2147483647i), 1418f))), u_input.a, true))), -global3.e.c.x);
    var var_1 = !(!select(vec4<bool>(!global3.e.b, any(vec2<bool>(global0.b, false)), u_input.b < global2[_wgslsmith_index_u32(1u, 6u)], true), vec4<bool>(-2318f != global0.d, true, any(vec4<bool>(global0.b, false, global3.e.b, global3.e.b)), all(vec2<bool>(global3.e.b, global3.e.b))), u_input.a.x <= -1i));
    var var_2 = !(!select(var_1.xz, var_1.ww, var_1.yy));
    let var_3 = vec2<bool>(var_1.x, global0.b);
    let var_4 = _wgslsmith_f_op_f32(-global3.e.d);
    let var_5 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1599f + -447f), -102f, select(var_2.x, var_3.x | global3.e.b, var_4 == global3.e.d))) + global3.e.d), var_4));
    let x = u_input.a;
    s_output = StorageBuffer(-1i ^ global3.b, vec4<f32>(global0.a, -1058f, global3.e.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-690f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1135f, var_4))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_4, global3.e.d, -1130f, global3.c)))))) + vec4<f32>(-3500f, _wgslsmith_f_op_f32(max(-367f, global3.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d + -564f) + _wgslsmith_f_op_f32(-736f * global3.e.d)), var_5)), ~0i);
}

