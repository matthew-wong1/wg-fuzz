struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec4<bool>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_2 = Struct_2(Struct_1(-1i, vec2<i32>(2147483647i, -26600i), vec4<i32>(i32(-2147483648), 0i, -9054i, i32(-2147483648)), 19271u, -18451i), -451f, Struct_1(71464i, vec2<i32>(22887i, 34988i), vec4<i32>(0i, 0i, i32(-2147483648), i32(-2147483648)), 4294967295u, -27448i), vec4<bool>(true, false, true, false), vec2<f32>(766f, -326f));

var<private> global2: u32;

var<private> global3: array<vec2<i32>, 17>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    global3 = array<vec2<i32>, 17>();
    let var_0 = 139i;
    global1 = Struct_2(Struct_1(max(global1.a.b.x, firstTrailingBit(abs(1i))), -vec2<i32>(_wgslsmith_add_i32(global1.a.b.x, 71728i), 11613i), global1.c.c, global1.a.d, ~_wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.c, 0i), 1i)), _wgslsmith_f_op_f32(-global0.x), global1.a, global1.d, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global1.e.x) + _wgslsmith_f_op_vec2_f32(-global1.e))))));
    let var_1 = 4294967295u;
    var var_2 = vec2<u32>(global1.c.d, var_1);
    return global1.d.x;
}

fn func_2() -> Struct_2 {
    let var_0 = select(!(!(!(!vec3<bool>(global1.d.x, true, true)))), global1.d.zzx, select(select(global1.d.xzy, !(!global1.d.zzy), true), select(!select(vec3<bool>(true, true, global1.d.x), vec3<bool>(true, true, true), global1.d.yyx), !global1.d.wyy, vec3<bool>(func_3(), all(vec3<bool>(global1.d.x, global1.d.x, false)), global1.d.x)), all(!select(global1.d.www, global1.d.xzx, false))));
    global3 = array<vec2<i32>, 17>();
    var var_1 = -148f;
    let var_2 = ~7223i;
    var var_3 = vec4<u32>(1u, 22413u, ~(~global1.c.d ^ 1u), global1.a.d);
    return Struct_2(global1.c, -1058f, Struct_1(max(_wgslsmith_clamp_i32(-2147483647i, var_2, -2147483647i), min(global1.a.c.x & -5875i, u_input.c)), -abs(min(global3[_wgslsmith_index_u32(0u, 17u)], global1.c.c.wy)), vec4<i32>(global1.a.e, firstTrailingBit(u_input.c), -reverseBits(-1i), global1.c.b.x), _wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(19776u, 39288u, var_3.x, 10325u), vec4<u32>(28903u, 4294967295u, 0u, u_input.a)), ~(~vec4<u32>(4294967295u, 31846u, global1.c.d, 1u))), u_input.c << (_wgslsmith_mod_u32(1356u, var_3.x) % 32u)), !global1.d, global1.e);
}

fn func_1(arg_0: bool) -> vec4<i32> {
    let var_0 = !vec2<bool>(true, arg_0 || (true != any(global1.d.yz)));
    global1 = func_2();
    global2 = global1.a.d;
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(288f, global0.x, -519f, global1.b) + vec4<f32>(global1.e.x, global0.x, -306f, global0.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.e.x, global0.x, -690f, 1000f) + vec4<f32>(-206f, global1.b, global0.x, 525f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(424f, -260f, -1871f, -985f), vec4<f32>(global1.e.x, -1653f, -372f, global1.b)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, 607f, -246f, global0.x)))))) * vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.x), 692f, true)), global1.b, global1.b, _wgslsmith_f_op_f32(-global1.b))), func_2().d));
    let var_2 = vec4<i32>(-1i, firstLeadingBit(41499i), global1.c.b.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(select(global1.a.c.zzx, global1.c.c.ywz, true), global1.c.c.wxw) ^ global1.c.e, -35183i));
    return global1.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(max(-_wgslsmith_mod_i32(~global1.c.b.x, 0i), _wgslsmith_mod_i32(-u_input.c & u_input.c, global1.c.c.x)), reverseBits(global1.c.c.yz), vec4<i32>(_wgslsmith_sub_i32(global1.a.e, 2147483647i), _wgslsmith_sub_i32(-2147483647i >> (u_input.b.x % 32u), -1i), firstLeadingBit(_wgslsmith_sub_i32(u_input.c, 0i)), ~_wgslsmith_sub_i32(u_input.c, 58294i)) ^ -_wgslsmith_clamp_vec4_i32(func_1(false), _wgslsmith_div_vec4_i32(vec4<i32>(1i, global1.c.e, 0i, u_input.c), global1.a.c), vec4<i32>(1i, global1.a.e, -34107i, -2147483647i)), (~_wgslsmith_dot_vec4_u32(vec4<u32>(68313u, 1u, 4294967295u, 0u), vec4<u32>(global1.c.d, global1.a.d, u_input.b.x, u_input.b.x)) & _wgslsmith_clamp_u32(_wgslsmith_add_u32(15720u, global1.c.d), 1u, u_input.b.x)) & 32997u, 2147483647i);
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(func_2().b, global1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0.x)), -302f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, 1716f, global1.e.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1784f, -563f, -569f), vec3<f32>(-133f, -132f, global1.e.x)) * vec3<f32>(-1359f, global1.b, 106f)), min(global1.c.d, 1u) > 1u)))));
    global2 = ~global1.c.d;
    let var_2 = all(select(global1.d, func_2().d, global1.d));
    global3 = array<vec2<i32>, 17>();
    var var_3 = global1.c;
    global2 = _wgslsmith_mod_u32((var_0.d & max(_wgslsmith_div_u32(var_0.d, 0u), func_2().c.d)) >> (14755u % 32u), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_3.d, ~var_3.d), u_input.a, 132526u));
    let var_4 = Struct_1(abs(min(~global1.c.e, ~(-14199i))), _wgslsmith_div_vec2_i32(reverseBits(~min(var_0.c.zw, global1.c.c.zw)), vec2<i32>(_wgslsmith_clamp_i32(0i, -12790i, var_3.c.x) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0.d, 25449u, var_0.d), vec4<u32>(917u, 32192u, 0u, 74080u)) % 32u), -reverseBits(var_3.c.x))), global1.c.c, ~firstLeadingBit(~var_0.d), abs(firstTrailingBit(_wgslsmith_mod_i32(global1.a.e, countOneBits(-2147483647i)))));
    global3 = array<vec2<i32>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, _wgslsmith_mod_u32(41038u, 1u)), ~u_input.b.xy), vec2<u32>(0u, select(select(firstLeadingBit(var_4.d), max(u_input.b.x, u_input.a), var_2), ~var_4.d, global1.d.x)), _wgslsmith_f_op_f32(global1.e.x * -392f), _wgslsmith_sub_i32(~(-24771i), 1i));
}

