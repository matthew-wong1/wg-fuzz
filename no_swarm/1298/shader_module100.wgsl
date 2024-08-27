struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: i32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 3>;

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec2<bool>(true, false), 1332f, 15746i, 907f, 22186u), Struct_1(vec2<bool>(true, true), 1340f, 42797i, -679f, 29037u), Struct_1(vec2<bool>(true, true), -933f, -54i, 237f, 0u), Struct_1(vec2<bool>(true, false), -544f, 0i, -867f, 0u), Struct_1(vec2<bool>(true, false), -838f, 16073i, -384f, 0u), Struct_1(vec2<bool>(false, true), 118f, 0i, -590f, 0u), Struct_1(vec2<bool>(false, false), 928f, i32(-2147483648), -508f, 1u), Struct_1(vec2<bool>(false, false), 1627f, 20675i, 1652f, 0u), Struct_1(vec2<bool>(true, false), -735f, 12558i, 269f, 1u), Struct_1(vec2<bool>(true, true), -302f, -15680i, -372f, 0u), Struct_1(vec2<bool>(false, true), 934f, 0i, 549f, 75062u), Struct_1(vec2<bool>(true, true), -1219f, 1i, 2343f, 0u), Struct_1(vec2<bool>(true, false), -1000f, -28395i, -1928f, 4294967295u), Struct_1(vec2<bool>(true, false), 199f, 67212i, 114f, 0u), Struct_1(vec2<bool>(false, false), -561f, 1i, -1537f, 32579u), Struct_1(vec2<bool>(false, true), -462f, -33381i, 1896f, 47184u), Struct_1(vec2<bool>(true, false), -377f, 16957i, -274f, 41773u), Struct_1(vec2<bool>(false, true), 1934f, i32(-2147483648), 570f, 0u));

var<private> global2: Struct_1 = Struct_1(vec2<bool>(false, false), -1000f, -14309i, 1049f, 0u);

var<private> global3: array<Struct_2, 30>;

var<private> global4: f32 = -171f;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(select(65109u, u_input.c.x, !((global2.a.x && true) & true)), _wgslsmith_mult_u32(15643u, u_input.c.x)), 18u)];
    let var_1 = vec3<bool>(!all(var_0.a), true, global2.a.x | (_wgslsmith_f_op_f32(global2.b * -1313f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b))));
    let var_2 = _wgslsmith_dot_vec2_u32(~u_input.d.zz, vec2<u32>(abs(select(~u_input.b.x, _wgslsmith_dot_vec4_u32(u_input.a, u_input.c), var_1.x && var_0.a.x)), 4294967295u));
    var var_3 = !vec4<bool>(any(var_1), true, var_1.x, true);
    let var_4 = var_1.yx;
    return var_2;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_3) -> u32 {
    var var_0 = Struct_3(max(-vec2<i32>(~(-1i), abs(1i)), _wgslsmith_mod_vec2_i32(arg_1.a, arg_2.a)));
    var var_1 = ~global2.c;
    var var_2 = arg_1;
    let var_3 = vec4<u32>(_wgslsmith_mult_u32(global2.e, _wgslsmith_mod_u32(firstTrailingBit(u_input.b.x), global2.e)), ~global2.e, global2.e, _wgslsmith_sub_u32(1u | (abs(global2.e) | ~u_input.b.x), (global2.e & func_3(vec3<f32>(global2.b, global2.b, global2.d))) | global2.e));
    let var_4 = arg_0;
    return ~19590u;
}

fn func_2() -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(max(_wgslsmith_mult_u32(global2.e, func_4(global0[_wgslsmith_index_u32(func_3(vec3<f32>(684f, -605f, -668f)), 3u)], Struct_3(vec2<i32>(0i, 19417i)), Struct_3(vec2<i32>(global2.c, global2.c))) ^ u_input.a.x), _wgslsmith_dot_vec2_u32(u_input.d.yz, ~u_input.d.zz)), 18u)];
    var var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.c, u_input.c, _wgslsmith_mult_vec4_u32(u_input.c, u_input.c)) & max(vec4<u32>(24839u, 1u, var_0.e, 4294967295u), ~u_input.c), abs(u_input.c)), 18u)];
    let var_2 = vec3<bool>(select(true & (true || select(false, false, false)), all(vec2<bool>(all(vec3<bool>(var_0.a.x, true, var_1.a.x)), any(global0[_wgslsmith_index_u32(45340u, 3u)]))), true), true, any(!(!(!global0[_wgslsmith_index_u32(55362u, 3u)]))));
    var var_3 = _wgslsmith_f_op_f32(-global2.d);
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-476f, var_1.b, var_1.b, var_0.d)), vec4<f32>(global2.d, var_1.d, 751f, var_1.d))) + vec4<f32>(_wgslsmith_f_op_f32(1000f - var_0.d), global2.d, 2427f, global2.b)))));
    return var_1.e << ((_wgslsmith_mult_u32(abs(u_input.b.x), 0u) >> (global2.e % 32u)) % 32u);
}

fn func_1(arg_0: bool) -> i32 {
    global0 = array<vec3<bool>, 3>();
    var var_0 = false;
    let var_1 = global3[_wgslsmith_index_u32(~abs(_wgslsmith_div_u32(33800u, global2.e) & func_2()), 30u)];
    var var_2 = !global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~func_4(vec3<bool>(true, global2.a.x, arg_0), Struct_3(vec2<i32>(global2.c, -1i)), Struct_3(vec2<i32>(-2147483647i, -2147483647i))), func_2()), 3u)];
    var var_3 = Struct_3(~(-select(vec2<i32>(var_1.c.c, -27647i), vec2<i32>(global2.c, 2147483647i), var_2.yy)) | _wgslsmith_mult_vec2_i32(min(vec2<i32>(-23802i, global2.c), vec2<i32>(global2.c, 2147483647i) >> (vec2<u32>(4294967295u, 2680u) % vec2<u32>(32u))), vec2<i32>(-2147483647i << (0u % 32u), var_1.c.c)));
    return (_wgslsmith_add_i32(-2147483647i, global2.c) ^ _wgslsmith_dot_vec3_i32(select(vec3<i32>(var_1.c.c, 18211i, 0i), vec3<i32>(var_3.a.x, 27675i, -2147483647i), vec3<bool>(var_2.x, false, true)) << (countOneBits(u_input.b) % vec3<u32>(32u)), firstTrailingBit(~vec3<i32>(var_3.a.x, -76431i, 1i)))) << (firstLeadingBit(max(global2.e, 46737u)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_clamp_vec2_i32(~vec2<i32>(0i, 1i), firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(global2.c, global2.c) >> (vec2<u32>(u_input.d.x, u_input.a.x) % vec2<u32>(32u)), countOneBits(vec2<i32>(global2.c, -4919i)))), _wgslsmith_mult_vec2_i32(vec2<i32>(~global2.c, 2147483647i), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(0i, global2.c)), vec2<i32>(-33541i, global2.c)))));
    let var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(abs(global2.c), func_1(!global2.a.x), abs(global2.c), -15643i), vec4<i32>(-10627i, select(~36252i | max(global2.c, var_0.a.x), ~var_0.a.x, false), 0i, -12731i));
    global0 = array<vec3<bool>, 3>();
    let var_2 = global1[_wgslsmith_index_u32(u_input.c.x, 18u)];
    global1 = array<Struct_1, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a | vec4<u32>(0u, _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(global2.e, u_input.c.x, 4294967295u, 48919u)), u_input.d.x << ((4294967295u << (var_2.e % 32u)) % 32u), u_input.a.x));
}

