struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: bool,
    d: vec3<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29>;

var<private> global1: array<Struct_3, 5>;

var<private> global2: i32 = i32(-2147483648);

var<private> global3: bool = true;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: vec3<f32>, arg_3: vec3<u32>) -> u32 {
    global2 = ~13431i;
    let var_0 = select(vec4<bool>(true, false, !(select(arg_1.x, arg_1.x, true) & true), min(_wgslsmith_dot_vec4_i32(vec4<i32>(-50423i, -1i, -60745i, -1i), vec4<i32>(2147483647i, -2147483647i, -1i, 0i)), _wgslsmith_mult_i32(0i, -14809i)) < -48278i), vec4<bool>(all(!arg_1), true, ~arg_0.x >= arg_0.x, (_wgslsmith_f_op_f32(arg_2.x * -785f) != _wgslsmith_f_op_f32(-arg_2.x)) && arg_1.x), !select(vec4<bool>(false, any(vec4<bool>(arg_1.x, false, arg_1.x, false)), !arg_1.x, true), vec4<bool>(true, true, true, true), select(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), select(vec4<bool>(arg_1.x, arg_1.x, false, true), vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(false, false, true, false)), true)));
    var var_1 = -abs(firstLeadingBit(-min(vec4<i32>(-1i, 0i, 2147483647i, 1i), vec4<i32>(13830i, 1i, 0i, 0i))));
    return ~4294967295u;
}

fn func_2(arg_0: Struct_3, arg_1: u32) -> bool {
    var var_0 = max(~func_3(arg_0.d.d.xy, arg_0.b.b.b, vec3<f32>(_wgslsmith_f_op_f32(select(arg_0.c.a.a.x, arg_0.c.a.e, true)), arg_0.c.a.e, _wgslsmith_f_op_f32(-arg_0.c.a.e)), ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 1u, 0u), vec3<u32>(4294967295u, arg_0.d.d.x, u_input.a.x))), ~_wgslsmith_mult_u32(arg_0.a.a.d.x, ~_wgslsmith_add_u32(u_input.a.x, arg_0.a.b.d.x)));
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.d.e, arg_0.d.e)) + _wgslsmith_f_op_f32(round(arg_0.c.a.a.x))), arg_0.c.b.a.x))));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.b.b.e)))), _wgslsmith_f_op_f32(-arg_0.c.a.a.x), arg_0.a.b.e), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.d.e))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - var_1.x)), 1179f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x)))), !select(select(select(arg_0.a.b.b, arg_0.a.b.b, vec3<bool>(arg_0.c.b.b.x, arg_0.e, true)), select(vec3<bool>(arg_0.d.c, true, arg_0.e), vec3<bool>(arg_0.b.a.b.x, true, false), arg_0.b.b.c), arg_0.e), select(!arg_0.c.b.b, !arg_0.c.a.b, select(arg_0.c.b.b, arg_0.c.b.b, arg_0.d.c)), true)));
    let var_3 = select(vec4<u32>(~92167u, 0u, 103850u, ~arg_0.d.d.x & 0u), vec4<u32>(arg_0.d.d.x, arg_0.b.b.d.x, u_input.b.x, ~39826u) ^ abs(vec4<u32>(1u, 1u, arg_1, 1u) | u_input.a), false) & (~_wgslsmith_div_vec4_u32(reverseBits(u_input.a), u_input.a) & _wgslsmith_sub_vec4_u32(~vec4<u32>(12456u, arg_0.c.b.d.x, 4294967295u, arg_1), u_input.a));
    return false;
}

fn func_1() -> Struct_1 {
    let var_0 = ~_wgslsmith_add_u32(u_input.a.x, ~(17390u >> (0u % 32u)));
    global1 = array<Struct_3, 5>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-316f, -255f) * vec2<f32>(140f, 1781f))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -244f), -751f)))), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, any(vec4<bool>(true, true, false, true))), !any(vec3<bool>(false, true, false))), select(vec3<bool>(true, true, u_input.a.x == u_input.a.x), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), vec3<bool>(all(vec3<bool>(true, true, true)), true, all(vec2<bool>(true, true))))), (true | !func_2(global1[_wgslsmith_index_u32(42866u, 5u)], 31892u)) || true, ~(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, var_0, var_0), vec3<u32>(u_input.b.x, var_0, 0u)) << (_wgslsmith_div_vec3_u32(reverseBits(u_input.a.yzx), vec3<u32>(var_0, 44843u, var_0) ^ u_input.b.wyy) % vec3<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(562f + _wgslsmith_f_op_f32(step(-2493f, _wgslsmith_f_op_f32(f32(-1f) * -1095f)))) + -920f));
    var var_2 = ~_wgslsmith_div_u32(u_input.b.x, var_1.d.x & ~_wgslsmith_add_u32(16532u, var_1.d.x));
    let var_3 = func_2(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~firstTrailingBit(43202u), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, var_0, 0u), var_1.d), _wgslsmith_mult_vec3_u32(vec3<u32>(2959u, var_0, var_1.d.x), vec3<u32>(53177u, 0u, u_input.b.x)))), 5u)], 4294967295u) || !var_1.c;
    return Struct_1(var_1.a, var_1.b, var_1.b.x, _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(79750u, ~5698u, 57644u), vec3<u32>(~u_input.b.x, 1484u, ~4294967295u)), vec3<u32>(abs(firstLeadingBit(1u)), 54943u << (var_1.d.x % 32u), u_input.b.x)), 372f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(func_1(), Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-853f, -1000f), vec2<f32>(-1118f, 384f), vec2<bool>(true, true))))), !select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), true, _wgslsmith_sub_vec3_u32(~u_input.b.xww, ~vec3<u32>(4294967295u, 348u, u_input.a.x)), _wgslsmith_f_op_f32(abs(-2244f)))), Struct_2(func_1(), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2291f, 565f) - vec2<f32>(-883f, -415f))), vec3<bool>(any(vec2<bool>(true, false)), true, all(vec2<bool>(true, false))), true, ~(~vec3<u32>(44354u, u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(floor(-136f)))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-690f, 1802f))), vec3<bool>(true, true, u_input.b.x <= u_input.b.x), true, ~u_input.a.xxw, _wgslsmith_f_op_f32(max(-355f, _wgslsmith_f_op_f32(min(-1944f, -462f))))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-153f, 1000f)))), vec3<bool>(true, true, true), false, vec3<u32>(0u, 22068u, 32132u) << (~u_input.a.xyy % vec3<u32>(32u)), _wgslsmith_f_op_f32(trunc(-130f)))), func_1(), _wgslsmith_div_u32(32134u, u_input.b.x) > ~(~min(u_input.a.x, 8182u)));
    global1 = array<Struct_3, 5>();
    var_0 = Struct_3(Struct_2(func_1(), var_0.a.a), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_0.a.b.d, _wgslsmith_add_vec3_u32(vec3<u32>(abs(206u), var_0.d.d.x, abs(var_0.c.a.d.x)), ~var_0.b.b.d ^ u_input.a.wxz)), 29u)], Struct_2(Struct_1(var_0.c.b.a, var_0.a.a.b, false, _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 39644u, u_input.b.x), ~var_0.d.d), var_0.b.b.a.x), var_0.a.b), func_1(), any(vec2<bool>(false, all(vec4<bool>(false, var_0.d.b.x, true, false)) && any(vec4<bool>(false, var_0.d.b.x, true, true)))));
    let var_1 = !vec4<bool>(false, _wgslsmith_f_op_f32(var_0.b.a.a.x + _wgslsmith_f_op_f32(-1398f + var_0.b.b.e)) < 788f, true, all(!(!vec4<bool>(var_0.a.b.b.x, var_0.e, var_0.c.b.c, false))));
    global1 = array<Struct_3, 5>();
    let x = u_input.a;
    s_output = StorageBuffer((select(select(vec4<i32>(2147483647i, -38227i, -1i, -8441i), vec4<i32>(-48320i, -23954i, 2147483647i, -3476i), var_1.x), vec4<i32>(-18805i, 4140i, 19817i, -1i), var_0.c.b.b.x) & (~vec4<i32>(9125i, 1i, 0i, 0i) << (~u_input.a % vec4<u32>(32u)))) & ~vec4<i32>(_wgslsmith_mod_i32(0i, -1i), ~(-1i), 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(1887i, 35479i, -29285i), vec3<i32>(7757i, 2147483647i, 1i))), _wgslsmith_div_i32(29214i, reverseBits(733i)));
}

