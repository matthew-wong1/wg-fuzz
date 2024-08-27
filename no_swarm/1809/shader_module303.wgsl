struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
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

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: bool;

var<private> global2: array<Struct_1, 6>;

var<private> global3: array<vec4<u32>, 18> = array<vec4<u32>, 18>(vec4<u32>(4294967295u, 1u, 4294967295u, 0u), vec4<u32>(1u, 0u, 74040u, 22808u), vec4<u32>(1u, 0u, 0u, 55635u), vec4<u32>(0u, 0u, 0u, 19373u), vec4<u32>(24982u, 43978u, 34530u, 34816u), vec4<u32>(10131u, 4294967295u, 2133u, 1u), vec4<u32>(66989u, 12374u, 1u, 1u), vec4<u32>(4434u, 1u, 0u, 59005u), vec4<u32>(21959u, 4294967295u, 57870u, 4294967295u), vec4<u32>(20286u, 1u, 0u, 19347u), vec4<u32>(1u, 0u, 4359u, 39547u), vec4<u32>(1u, 9346u, 14983u, 1u), vec4<u32>(12668u, 48893u, 4294967295u, 8374u), vec4<u32>(1u, 4294967295u, 78408u, 34258u), vec4<u32>(13963u, 11891u, 51105u, 0u), vec4<u32>(0u, 1u, 0u, 19067u), vec4<u32>(60597u, 26957u, 0u, 4294967295u), vec4<u32>(0u, 0u, 4294967295u, 4294967295u));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec2<bool>, arg_3: Struct_3) -> bool {
    global1 = true;
    global3 = array<vec4<u32>, 18>();
    global1 = arg_3.d;
    let var_0 = 529f;
    let var_1 = -u_input.a.x;
    return true;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3) -> vec2<f32> {
    global0 = select(select(vec2<bool>(global0.x, true), !(!vec2<bool>(arg_0.x, true)), vec2<bool>(arg_1.c.a.a || !arg_1.b.a, -44231i <= arg_1.c.a.c.x)), arg_0.wy, false);
    let var_0 = arg_1.c;
    var var_1 = global2[_wgslsmith_index_u32(firstLeadingBit(~1u), 6u)];
    var var_2 = Struct_2(global2[_wgslsmith_index_u32(var_1.b, 6u)], var_1.c.yz & _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(var_1.c.x, 2147483647i)), ~var_0.b), var_1.c.yx), ~var_1.b);
    var var_3 = arg_1.c;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-938f, -104f), vec2<f32>(-687f, -1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1436f, 558f), vec2<f32>(1134f, 1616f))) - vec2<f32>(257f, 483f)), all(vec3<bool>(var_1.a, true, false)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1623f, -410f), -1000f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-678f, -1023f) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-176f, 822f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1335f, -438f))), vec2<f32>(-1686f, 1104f), !arg_0.yx)))));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> vec2<u32> {
    let var_0 = Struct_3(!any(select(!vec3<bool>(global0.x, global0.x, true), vec3<bool>(false, false, global0.x), arg_0.b < 29617u)), Struct_1((true | arg_0.a) || true, arg_0.b, ~(_wgslsmith_add_vec3_i32(arg_0.c, u_input.a.xxy) & -arg_0.c)), Struct_2(Struct_1(~u_input.d.x >= abs(arg_0.b), 0u, max(arg_0.c, arg_0.c) ^ arg_0.c), ~(min(u_input.a.xw, vec2<i32>(u_input.a.x, -1i)) << (vec2<u32>(1u, 29801u) % vec2<u32>(32u))), ~0u), false);
    var var_1 = _wgslsmith_f_op_vec2_f32(func_4(vec4<bool>((0u >= (var_0.b.b ^ 0u)) || global0.x, func_3(i32(-1i) * -23944i, arg_0.b, !vec2<bool>(var_0.a, true), Struct_3(true, Struct_1(var_0.d, arg_0.b, vec3<i32>(arg_0.c.x, 25537i, var_0.b.c.x)), var_0.c, var_0.c.a.a)) || !(u_input.b == u_input.b), all(vec2<bool>(true, true)), !(arg_0.a & (false & global0.x))), Struct_3(false, Struct_1(func_3(u_input.c << (33005u % 32u), firstLeadingBit(arg_0.b), select(vec2<bool>(global0.x, true), vec2<bool>(true, false), vec2<bool>(var_0.c.a.a, var_0.c.a.a)), Struct_3(global0.x, arg_0, Struct_2(Struct_1(false, 142235u, var_0.c.a.c), var_0.b.c.yx, var_0.c.c), global0.x)), abs(~4294967295u), _wgslsmith_clamp_vec3_i32(abs(u_input.a.wxz), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, 1i, 1i), arg_0.c), _wgslsmith_add_vec3_i32(arg_0.c, var_0.c.a.c))), var_0.c, !global0.x)));
    let var_2 = vec4<u32>(38831u, 1u, arg_1, arg_1 >> (~max(_wgslsmith_add_u32(17597u, var_0.b.b), ~var_0.b.b) % 32u));
    global1 = !(27711u < _wgslsmith_mult_u32(~_wgslsmith_sub_u32(var_2.x, 1u), arg_0.b));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, -602f)) + vec3<f32>(2729f, 340f, -992f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-836f, var_1.x, -658f))) + _wgslsmith_div_vec3_f32(vec3<f32>(490f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-1268f * 1731f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.x, var_1.x, -214f))), vec3<f32>(-327f, 185f, -1000f), !vec3<bool>(true, var_0.b.a, true))))) * _wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(523f, 1417f)) - _wgslsmith_f_op_f32(step(-1000f, var_1.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1540f + var_1.x), _wgslsmith_f_op_vec2_f32(func_4(vec4<bool>(true, arg_0.a, var_0.c.a.a, arg_0.a), Struct_3(arg_0.a, arg_0, Struct_2(global2[_wgslsmith_index_u32(var_2.x, 6u)], vec2<i32>(var_0.b.c.x, -1i), arg_0.b), true))).x, var_1.x))));
    return abs(u_input.d);
}

fn func_1(arg_0: bool) -> bool {
    var var_0 = false;
    let var_1 = 58692u;
    global3 = array<vec4<u32>, 18>();
    var var_2 = func_2(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(~select(global3[_wgslsmith_index_u32(var_1, 18u)], global3[_wgslsmith_index_u32(24405u, 18u)], vec4<bool>(false, global0.x, true, false))), select(_wgslsmith_div_vec4_u32(global3[_wgslsmith_index_u32(17713u, 18u)], abs(global3[_wgslsmith_index_u32(u_input.d.x, 18u)])), _wgslsmith_clamp_vec4_u32(global3[_wgslsmith_index_u32(var_1, 18u)], global3[_wgslsmith_index_u32(1u, 18u)], _wgslsmith_add_vec4_u32(global3[_wgslsmith_index_u32(1u, 18u)], vec4<u32>(var_1, var_1, var_1, u_input.d.x))), arg_0)), 6u)], 91134u);
    var_0 = global0.x && all(vec3<bool>(var_2.x < reverseBits(14235u), global0.x, false));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec2<bool>(false, !func_1(true)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-729f, -655f, global0.x)), _wgslsmith_f_op_f32(floor(204f)))));
    let var_2 = true;
    let var_3 = Struct_2(Struct_1(global0.x, ~112224u, min(vec3<i32>(firstLeadingBit(u_input.c), 1i | u_input.a.x, 2147483647i), reverseBits(vec3<i32>(1i, 2147483647i, 47421i)))), select(u_input.a.wy, u_input.a.wx & ~(-vec2<i32>(u_input.b, u_input.a.x)), vec2<bool>(true, true)), ~select(_wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(4294967295u, 4294967295u)), 4294967295u, any(select(vec4<bool>(true, true, false, global0.x), vec4<bool>(global0.x, false, var_2, false), vec4<bool>(true, var_2, false, true)))));
    let var_4 = firstLeadingBit(~(-u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-789f + 223f) - _wgslsmith_f_op_f32(f32(-1f) * -320f)) + -967f) * _wgslsmith_f_op_f32(sign(163f))));
}

