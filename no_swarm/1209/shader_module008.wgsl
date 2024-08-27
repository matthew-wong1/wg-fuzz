struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: bool,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10>;

var<private> global1: vec3<bool>;

var<private> global2: array<Struct_2, 27>;

var<private> global3: vec2<u32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: vec3<bool>, arg_3: bool) -> vec2<bool> {
    global2 = array<Struct_2, 27>();
    return global1.zx;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec4<bool>(false, !(_wgslsmith_f_op_f32(-722f + arg_1.b) == -861f), global1.x, arg_1.c);
    global2 = array<Struct_2, 27>();
    global3 = _wgslsmith_clamp_vec2_u32(select(_wgslsmith_sub_vec2_u32(abs(vec2<u32>(arg_1.e, 4294967295u)), arg_0.xx), _wgslsmith_add_vec2_u32(abs(arg_0.zy), ~arg_0.zz), true), arg_0.zx, _wgslsmith_add_vec2_u32(~arg_0.xx, ~(arg_0.yy | arg_0.yx))) << (arg_0.zz % vec2<u32>(32u));
    global1 = vec3<bool>(!var_0.x, var_0.x, true);
    let var_1 = _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(~arg_0, ~(~vec3<u32>(0u, 9911u, 21778u))), ~arg_0);
    return Struct_1(u_input.e.xww & vec3<i32>(max(i32(-1i) * -2147483647i, u_input.e.x), arg_1.a.x, abs(u_input.a.x)), -854f, false, arg_1.a.x, abs(abs(~_wgslsmith_div_u32(1u, 109694u))));
}

fn func_1() -> vec4<bool> {
    var var_0 = !select(!(!(!vec3<bool>(false, global1.x, true))), !vec3<bool>(global1.x, global1.x, true), !any(global1.xy));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1126f, 838f, -1000f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -392f), -1257f, -488f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -938f), 243f)))), Struct_1(u_input.d.xxz, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-948f, _wgslsmith_div_f32(-2103f, -618f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-288f, -411f), 1f, true)), var_0.x)), global3.x > global3.x, min(25554i, reverseBits(-14759i)), global3.x & u_input.c), abs(firstTrailingBit(_wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(u_input.b, 1u)), vec2<u32>(11581u, global3.x)))), func_3(select(~_wgslsmith_div_vec3_u32(vec3<u32>(18093u, u_input.b, u_input.c), vec3<u32>(31755u, global3.x, 4294967295u)), vec3<u32>(u_input.c, _wgslsmith_div_u32(u_input.c, u_input.b), global3.x), all(func_2(-1749f, vec2<f32>(-1305f, -953f), vec3<bool>(false, false, true), global1.x))), Struct_1(u_input.e.yxy, _wgslsmith_f_op_f32(f32(-1f) * -647f), true, u_input.d.x, ~7075u)));
    let var_2 = abs(_wgslsmith_add_vec4_i32(-(~u_input.e), abs(vec4<i32>(-2147483647i, ~var_1.e.d, -u_input.e.x, _wgslsmith_div_i32(-1i, u_input.e.x)))));
    let var_3 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(min(var_1.a.x, -287f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) * var_1.e.b)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_1.c.b))))), 212f, var_1.c, var_1.d, func_3(~(min(vec3<u32>(121154u, global3.x, var_1.d.x), vec3<u32>(global3.x, 17552u, 1u)) << (~vec3<u32>(44387u, 53842u, u_input.b) % vec3<u32>(32u))), Struct_1(firstTrailingBit(var_2.yxw) ^ func_3(vec3<u32>(var_1.e.e, global3.x, u_input.c), var_1.e).a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -357f))), -850f <= _wgslsmith_f_op_f32(-var_1.b), u_input.d.x, min(_wgslsmith_div_u32(27692u, 4294967295u), u_input.c))));
    var var_4 = func_3(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.e.e, u_input.b, var_1.e.e), countOneBits(vec3<u32>(u_input.b, var_3.e.e, 100033u))), var_1.e.e, var_3.d.x), ~(vec3<u32>(var_3.d.x, 1u, var_3.e.e) | vec3<u32>(global3.x, u_input.c, var_1.e.e))), Struct_1(vec3<i32>(var_1.c.d, -1i, var_1.c.d) & ~countOneBits(var_3.e.a), var_1.c.b, global1.x, u_input.d.x, abs(1u)));
    return vec4<bool>(false, !any(!select(vec4<bool>(true, global1.x, true, false), vec4<bool>(false, false, true, false), vec4<bool>(var_3.c.c, true, false, var_0.x))), true, !(firstTrailingBit(~u_input.e.x) <= 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~min(28443u, 1u), 10u)];
    let var_1 = !select(select(vec4<bool>(!global1.x, !global1.x, any(vec3<bool>(false, var_0.c.c, global1.x)), false), !func_1(), !select(vec4<bool>(global1.x, false, var_0.e.c, global1.x), vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(true, true, true, var_0.e.c))), !(!(!vec4<bool>(global1.x, false, var_0.c.c, false))), !(!(!vec4<bool>(true, global1.x, global1.x, var_0.c.c))));
    let var_2 = func_1().x;
    let var_3 = 47026u;
    global2 = array<Struct_2, 27>();
    var var_4 = 2268f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(var_0.c.d, 2147483647i, _wgslsmith_mult_i32(-22817i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, -20443i, -31550i, 2147483647i), u_input.d)), firstTrailingBit(u_input.a.x))), global3.x, ~(~52287u));
}

