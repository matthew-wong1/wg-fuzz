struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
    c: vec2<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_3;

var<private> global2: array<vec2<bool>, 12>;

var<private> global3: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(vec3<bool>(false, false, true), -1345f), Struct_3(vec3<bool>(true, true, false), -100f), Struct_3(vec3<bool>(false, true, true), -620f), Struct_3(vec3<bool>(false, false, false), -957f), Struct_3(vec3<bool>(true, false, true), 290f), Struct_3(vec3<bool>(true, true, false), 880f), Struct_3(vec3<bool>(true, false, true), -1000f), Struct_3(vec3<bool>(false, true, false), 827f), Struct_3(vec3<bool>(true, false, true), -1341f), Struct_3(vec3<bool>(true, true, true), 579f), Struct_3(vec3<bool>(true, true, false), -1280f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: Struct_4) -> vec4<u32> {
    global3 = array<Struct_3, 11>();
    global3 = array<Struct_3, 11>();
    let var_0 = 0u;
    var var_1 = true;
    global0 = select(global1.a.x | false, !(!any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, global1.a.x), vec3<bool>(global1.a.x, global1.a.x, global1.a.x)))), global1.a.x | true);
    return _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.d.x, max(~0u, 1u), u_input.c.x, ~u_input.c.x >> (~1u % 32u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.d.x, 56500u, 21431u, 95278u), vec4<u32>(var_0, 87640u, 4294967295u, 0u)), select(vec4<u32>(var_0, u_input.c.x, arg_2.d.x, 32934u), vec4<u32>(0u, 1u, 0u, 1u), vec4<bool>(true, false, global1.a.x, true)), max(vec4<u32>(78257u, 14640u, var_0, arg_3.d.x), u_input.c)) ^ arg_2.d) << (~reverseBits(~_wgslsmith_clamp_vec4_u32(arg_3.d, vec4<u32>(42635u, arg_3.d.x, arg_2.d.x, 87285u), u_input.c)) % vec4<u32>(32u));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: vec3<bool>, arg_3: Struct_2) -> vec4<u32> {
    var var_0 = arg_3.a.yx;
    let var_1 = u_input.b;
    global0 = (true && !(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, -27795i, 0i), vec3<i32>(10300i, arg_0.x, -1i)) <= 47653i)) | false;
    global2 = array<vec2<bool>, 12>();
    let var_2 = ~(-arg_0.x ^ ~1i);
    return _wgslsmith_add_vec4_u32(u_input.c, _wgslsmith_clamp_vec4_u32(u_input.c, vec4<u32>(54657u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.d.x, 4294967295u, arg_3.d.x), u_input.c.xzz), 1u, arg_1), vec4<u32>(~(arg_3.d.x ^ arg_3.d.x), 1169u, u_input.c.x, arg_3.d.x)));
}

fn func_2(arg_0: i32, arg_1: vec2<u32>) -> vec4<u32> {
    global2 = array<vec2<bool>, 12>();
    global1 = Struct_3(vec3<bool>(global1.a.x, global1.a.x, global1.a.x), global1.b);
    global3 = array<Struct_3, 11>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.b))), 792f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-409f * _wgslsmith_f_op_f32(sign(-530f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-941f)) * _wgslsmith_f_op_f32(187f * global1.b))), _wgslsmith_div_f32(2804f, -300f)));
    global1 = global3[_wgslsmith_index_u32(arg_1.x, 11u)];
    return func_3(u_input.b, _wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(74810u, u_input.c.x, u_input.c.x)), firstLeadingBit(u_input.c.zzy)), countOneBits(_wgslsmith_dot_vec2_u32(min(vec2<u32>(1u, arg_1.x), arg_1), select(vec2<u32>(55384u, u_input.c.x), u_input.c.yx, true)))), global1.a, Struct_2(vec4<f32>(2237f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, 1797f)) - -102f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), global1.b), var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -456f), vec4<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.c.x, 0u), abs(4294967295u)), arg_1.x, _wgslsmith_div_u32(min(arg_1.x, 58664u), arg_1.x), _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(10956u, 73257u, 0u, arg_1.x), vec4<u32>(u_input.c.x, 0u, arg_1.x, arg_1.x))))));
}

fn func_4(arg_0: vec4<u32>) -> Struct_3 {
    let var_0 = !vec4<bool>(false, all(!(!vec2<bool>(true, global1.a.x))), global1.a.x && ((arg_0.x > 28842u) && global1.a.x), 0i >= ~countOneBits(u_input.a));
    global0 = -u_input.a > -2147483647i;
    let var_1 = Struct_4(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.b & vec2<i32>(u_input.b.x, u_input.a), ~u_input.b), -7909i), u_input.a, ~(~(1i ^ u_input.b.x))), _wgslsmith_f_op_f32(round(global1.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-679f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-265f))))), ~arg_0);
    let var_2 = global1.a.yy;
    global0 = true;
    return global3[_wgslsmith_index_u32(min(arg_0.x, u_input.c.x & ~(~4294967295u)) & (~var_1.d.x >> (_wgslsmith_clamp_u32(~4294967295u, var_1.d.x, abs(var_1.d.x)) % 32u)), 11u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(1u, 11u)];
    global2 = array<vec2<bool>, 12>();
    global0 = true;
    global2 = array<vec2<bool>, 12>();
    var var_1 = func_4(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x ^ u_input.c.x, 4294967295u, u_input.c.x ^ ~25396u, ~u_input.c.x), _wgslsmith_mod_vec4_u32(func_1(vec4<i32>(3019i, u_input.d, 1i, -38791i), vec3<i32>(u_input.a, u_input.b.x, -14168i), Struct_4(vec3<i32>(-2147483647i, -26131i, 1i), -363f, vec2<f32>(-855f, -913f), vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x)), Struct_4(vec3<i32>(u_input.a, 0i, 37013i), -1000f, vec2<f32>(global1.b, global1.b), vec4<u32>(0u, u_input.c.x, u_input.c.x, u_input.c.x))) << (~vec4<u32>(13739u, u_input.c.x, 4294967295u, 28586u) % vec4<u32>(32u)), func_2(u_input.b.x, vec2<u32>(12190u, u_input.c.x)))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2435f) - var_0.b)))), var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)), 1f, _wgslsmith_f_op_f32(ceil(233f))))), firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, -18531i, u_input.a, -2147483647i) | -vec4<i32>(u_input.a, 18676i, u_input.d, u_input.a), vec4<i32>(19861i, select(1i, u_input.a, true), -u_input.a, -9934i), _wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(-2232i, u_input.d, 4162i, 16178i)), vec4<i32>(u_input.a, -16939i, u_input.b.x, u_input.d)))), vec3<u32>(4294967295u, ~1u, u_input.c.x));
}

