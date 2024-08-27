struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_1,
    d: f32,
}

struct Struct_5 {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<f32, 7>;

var<private> global2: array<Struct_2, 2>;

var<private> global3: Struct_5;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> vec4<u32> {
    global1 = array<f32, 7>();
    global0 = !any(vec2<bool>(true, true));
    let var_0 = Struct_4(Struct_3(global2[_wgslsmith_index_u32(~(0u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 62383u, 1u, global3.c), vec4<u32>(arg_0, global3.c, global3.c, 1u))), 2u)], Struct_2(Struct_1(1i << (arg_0 % 32u), u_input.c.yz, any(vec3<bool>(false, true, false))), -_wgslsmith_mod_i32(global3.e.x, u_input.a.x), reverseBits(-4065i), global1[_wgslsmith_index_u32(~63900u, 7u)], Struct_1(max(global3.e.x, u_input.a.x), u_input.c.zy, true)), 20975i & abs(1i << (u_input.c.x % 32u)), firstLeadingBit(~vec3<u32>(67420u, 0u, 934u))), -628f, Struct_1(countOneBits((u_input.a.x & 2147483647i) << ((global3.c & 0u) % 32u)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.c, u_input.b), firstTrailingBit(vec2<u32>(arg_0, u_input.b))), 42214u), all(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), true))), _wgslsmith_f_op_f32(-826f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1232f)))));
    global0 = any(select(!select(vec2<bool>(var_0.c.c, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), !vec2<bool>(true, var_0.c.c))) || true;
    let var_1 = -28290i << (_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(countOneBits(_wgslsmith_sub_vec3_u32(var_0.a.d, u_input.c.wzy)), _wgslsmith_mult_vec3_u32(var_0.a.d, u_input.c.xzz)), _wgslsmith_div_u32(abs(var_0.c.b.x), ~68317u) ^ ~(~u_input.b)) % 32u);
    return vec4<u32>(var_0.a.d.x, ~(~11975u), var_0.a.d.x, 25978u);
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = func_3(u_input.c.x);
    global1 = array<f32, 7>();
    let var_1 = Struct_3(Struct_2(Struct_1(global3.e.x, min(u_input.c.xx, ~vec2<u32>(global3.c, u_input.b)), _wgslsmith_f_op_f32(673f - global1[_wgslsmith_index_u32(var_0.x, 7u)]) >= _wgslsmith_f_op_f32(abs(112f))), u_input.a.x, -_wgslsmith_sub_i32(firstTrailingBit(u_input.a.x), _wgslsmith_mod_i32(-1i, 17348i)), _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global3.c, global3.c), 7u)])), Struct_1(global3.e.x, var_0.xw, false)), global2[_wgslsmith_index_u32(4294967295u, 2u)], u_input.a.x, abs(firstLeadingBit(var_0.yzy)));
    global2 = array<Struct_2, 2>();
    global1 = array<f32, 7>();
    return global2[_wgslsmith_index_u32(reverseBits(global3.c), 2u)];
}

fn func_1(arg_0: Struct_4, arg_1: u32) -> i32 {
    global0 = arg_0.a.b.e.c;
    global1 = array<f32, 7>();
    let var_0 = func_2(u_input.a.yz << (_wgslsmith_sub_vec2_u32(arg_0.a.b.e.b, _wgslsmith_sub_vec2_u32(~u_input.c.zz, u_input.c.wz)) % vec2<u32>(32u)));
    var var_1 = Struct_1(10408i, vec2<u32>(firstLeadingBit(arg_0.c.b.x), ~(~var_0.a.b.x)), false);
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(global3.d * vec2<f32>(var_0.d, _wgslsmith_f_op_f32(var_0.d - var_0.d))), global3.b.wz)), global3.b.xz, select(arg_0.c.c, arg_0.c.a <= _wgslsmith_dot_vec3_i32(vec3<i32>(-19651i, 2147483647i, global3.e.x), ~vec3<i32>(u_input.a.x, -29665i, 1i)), any(select(vec4<bool>(arg_0.c.c, var_0.a.c, true, arg_0.a.a.a.c), vec4<bool>(true, var_0.a.c, false, var_1.c), arg_0.a.a.e.c)) || ((var_1.a | var_1.a) >= abs(global3.e.x)))));
    return arg_0.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    global2 = array<Struct_2, 2>();
    let var_1 = Struct_2(Struct_1(0i, max(~vec2<u32>(global3.c, 0u), vec2<u32>(u_input.b, 102149u)) & u_input.c.ww, var_0), _wgslsmith_clamp_i32(22247i, ~_wgslsmith_mult_i32(func_1(Struct_4(Struct_3(Struct_2(Struct_1(u_input.a.x, u_input.c.wy, false), -18980i, 44939i, global3.a, Struct_1(u_input.a.x, u_input.c.wy, var_0)), Struct_2(Struct_1(2147483647i, u_input.c.xw, false), -2147483647i, -2147483647i, global1[_wgslsmith_index_u32(global3.c, 7u)], Struct_1(47860i, vec2<u32>(80066u, 4294967295u), var_0)), u_input.a.x, u_input.c.wzy), -749f, Struct_1(-2147483647i, vec2<u32>(u_input.c.x, 16034u), true), global3.d.x), u_input.c.x), 2147483647i), max(_wgslsmith_mod_i32(select(global3.e.x, -29074i, false), -1i), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, global3.e.x), u_input.a), global3.e.x))), firstTrailingBit(_wgslsmith_add_i32(-1i, u_input.a.x)), 912f, Struct_1(-18832i, _wgslsmith_add_vec2_u32(vec2<u32>(~70702u, _wgslsmith_sub_u32(50496u, u_input.c.x)), _wgslsmith_clamp_vec2_u32(u_input.c.xy, u_input.c.zz, ~u_input.c.yy)), true));
    let var_2 = Struct_4(Struct_3(Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.e.x, 28093i, var_1.a.a), vec3<i32>(-3212i, 1037i, 33590i)), vec2<u32>(65582u, global3.c), var_1.a.c & var_1.a.c), u_input.a.x & var_1.b, u_input.a.x, global1[_wgslsmith_index_u32(~var_1.a.b.x, 7u)], var_1.e), func_2(vec2<i32>(-8562i | var_1.c, _wgslsmith_add_i32(var_1.b, -48294i))), var_1.e.a, vec3<u32>(1u, _wgslsmith_div_u32(var_1.a.b.x, global3.c), global3.c) ^ u_input.c.zyx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_1.a.b.x, 7u)] - var_1.d))), Struct_1(_wgslsmith_mult_i32(func_1(Struct_4(Struct_3(Struct_2(Struct_1(u_input.a.x, vec2<u32>(u_input.b, var_1.e.b.x), var_0), var_1.c, -1i, -357f, var_1.a), Struct_2(var_1.a, -15536i, var_1.a.a, global1[_wgslsmith_index_u32(0u, 7u)], var_1.e), 1i, vec3<u32>(var_1.e.b.x, 43056u, u_input.c.x)), 1719f, Struct_1(1i, vec2<u32>(u_input.c.x, var_1.a.b.x), true), 909f), ~62865u), ~var_1.b), min(reverseBits(_wgslsmith_add_vec2_u32(var_1.a.b, vec2<u32>(4294967295u, 39771u))), vec2<u32>(4294967295u, ~4294967295u)), true), _wgslsmith_f_op_f32(min(-225f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-240f, -609f))))));
    var var_3 = var_2.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(max(var_2.a.d, var_2.a.d));
}

