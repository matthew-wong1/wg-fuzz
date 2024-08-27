struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: vec2<u32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
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

var<private> global0: Struct_2;

var<private> global1: vec3<f32>;

var<private> global2: vec2<i32> = vec2<i32>(1i, 23876i);

var<private> global3: vec2<f32> = vec2<f32>(1000f, -374f);

var<private> global4: f32 = -550f;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_3) -> f32 {
    global2 = global0.d.xx;
    return _wgslsmith_f_op_f32(global1.x + _wgslsmith_div_f32(197f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))));
}

fn func_3() -> bool {
    var var_0 = max(u_input.a, firstTrailingBit(~(firstLeadingBit(u_input.a) & _wgslsmith_dot_vec3_u32(vec3<u32>(global0.c.a, 9327u, 18550u), vec3<u32>(85529u, 67464u, 4294967295u)))));
    let var_1 = vec4<bool>(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(140f, global0.c.d))) != _wgslsmith_f_op_f32(func_1(Struct_3(u_input.b.x, vec3<bool>(true, global0.c.e, true))))), !(!(_wgslsmith_f_op_f32(588f * global1.x) == _wgslsmith_f_op_f32(global1.x * global1.x))), false, global0.c.c);
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))));
    var var_3 = global0.a.a ^ 4294967295u;
    let var_4 = global1.yx;
    return true;
}

fn func_2(arg_0: bool, arg_1: vec2<f32>) -> Struct_3 {
    let var_0 = Struct_4(Struct_2(global0.a, 18948u, Struct_1(~global0.b, reverseBits(18330u), arg_0, -124f, ~4294967295u <= (u_input.a >> (global0.c.a % 32u))), vec4<i32>(~(-global0.d.x), global0.d.x, global0.d.x, ~(~global2.x))), func_3(), ~u_input.b.ww, -1814f);
    var var_1 = -1510f;
    var var_2 = Struct_1(firstTrailingBit(global0.c.a), reverseBits(0u), true, var_0.d, all(vec4<bool>(all(vec4<bool>(true, true, true, true)), var_0.b, false, all(vec3<bool>(var_0.b, global0.a.c, true)) && all(vec2<bool>(arg_0, true)))));
    let var_3 = ~var_0.a.b & _wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(u_input.a, u_input.a, 0u, var_2.b)), ~select(select(vec4<u32>(4294967295u, 4942u, global0.a.a, 10044u), vec4<u32>(global0.c.a, u_input.a, var_0.a.b, global0.c.b), vec4<bool>(true, arg_0, true, false)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a.b, var_0.a.b, 21822u, var_0.c.x), u_input.b), vec4<bool>(false, var_0.a.a.c, global0.a.e, false)));
    let var_4 = Struct_2(global0.a, ~global0.c.b, global0.a, max(vec4<i32>(1i, ~(~12725i), ~_wgslsmith_add_i32(u_input.d.x, var_0.a.d.x), -13733i), var_0.a.d));
    return Struct_3(~_wgslsmith_mult_u32(_wgslsmith_mult_u32(4294967295u, var_3), ~var_3), vec3<bool>(arg_0, true, true || !arg_0));
}

fn func_4(arg_0: Struct_3) -> vec4<u32> {
    let var_0 = arg_0;
    global0 = Struct_2(Struct_1(1u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4555u, 0u, 8383u), ~u_input.b.xzw), _wgslsmith_mult_u32(1u, countOneBits(37812u))), _wgslsmith_f_op_f32(min(-2119f, global1.x)) < global0.a.d, _wgslsmith_f_op_f32(max(-506f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.x, -1219f))))), true), firstLeadingBit(4294967295u), global0.c, global0.d & firstTrailingBit(vec4<i32>(-20678i, min(2147483647i, 1i), -1i, global2.x)));
    let var_1 = true;
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(~16402i), -abs(-u_input.c.x), global0.d.x, max(abs(28022i), _wgslsmith_sub_i32(max(global0.d.x, 17520i), global2.x))), reverseBits(vec4<i32>(_wgslsmith_add_i32(u_input.c.x, 56402i & global2.x), -abs(-1i), 45016i, -u_input.c.x)));
    var var_3 = func_2(!(any(select(vec2<bool>(true, true), var_0.b.yz, var_0.b.yx)) == true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(948f, global3.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(631f, -1000f))))));
    return vec4<u32>(firstTrailingBit(select(var_0.a, countOneBits(~0u), false)), u_input.a, arg_0.a, ~(_wgslsmith_dot_vec4_u32(vec4<u32>(66718u, arg_0.a, 18877u, u_input.a), u_input.b) | 20628u) ^ u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(_wgslsmith_add_u32(max(firstLeadingBit(~3943u), 45410u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, countOneBits(28629u), u_input.a), _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(1669u, 0u, global0.a.b)), firstTrailingBit(u_input.b.xww)))), u_input.a | u_input.a);
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_3(3535u, vec3<bool>(true, false, global0.a.e)))));
    global0 = Struct_2(Struct_1(_wgslsmith_div_u32(~global0.a.b, ~4294967295u), _wgslsmith_dot_vec4_u32(func_4(func_2(global0.a.e, global1.xz)), vec4<u32>(_wgslsmith_div_u32(4294967295u, var_0), _wgslsmith_sub_u32(67197u, var_0), global0.b, u_input.b.x >> (37114u % 32u))), ~abs(30881u) > _wgslsmith_dot_vec2_u32(~u_input.b.yy, _wgslsmith_mod_vec2_u32(u_input.b.wz, u_input.b.zz)), 1786f, true), 4294967295u, Struct_1(_wgslsmith_add_u32(global0.c.a << (~var_0 % 32u), firstLeadingBit(_wgslsmith_div_u32(0u, global0.c.a))), 1u, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(315f, global1.x) + _wgslsmith_f_op_f32(sign(global0.a.d)))), -18579i < (_wgslsmith_mod_i32(global2.x, -2147483647i) ^ -16821i)), vec4<i32>(1i, 4316i, _wgslsmith_add_i32(_wgslsmith_mult_i32(-14901i, u_input.d.x), countOneBits(i32(-1i) * -31182i)), -30839i));
    let x = u_input.a;
    s_output = StorageBuffer(124f);
}

