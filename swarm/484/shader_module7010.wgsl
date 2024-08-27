struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec2<u32>,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: Struct_1,
    d: u32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8>;

var<private> global1: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: Struct_5, arg_1: i32, arg_2: f32, arg_3: vec2<i32>) -> i32 {
    global1 = vec2<bool>(global1.x, 1i != reverseBits(_wgslsmith_add_i32(-1i, arg_3.x)));
    var var_0 = abs(0u);
    let var_1 = any(!(!select(select(vec4<bool>(global1.x, true, true, true), vec4<bool>(global1.x, global1.x, true, global1.x), vec4<bool>(global1.x, false, false, global1.x)), select(vec4<bool>(false, global1.x, global1.x, true), vec4<bool>(false, true, global1.x, false), vec4<bool>(global1.x, true, true, true)), arg_3.x > arg_0.c.e.x)));
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-535f, 1088f, 889f, global0[_wgslsmith_index_u32(min(_wgslsmith_add_u32(arg_0.b, 1u), u_input.b.x), 8u)])));
    return u_input.c;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: i32, arg_3: bool) -> f32 {
    global0 = array<f32, 8>();
    let var_0 = u_input.b.x;
    global0 = array<f32, 8>();
    var var_1 = Struct_1(vec3<u32>(_wgslsmith_mult_u32(24728u, 25387u), u_input.b.x, abs(firstLeadingBit(select(18968u, 1u, global1.x)))), _wgslsmith_f_op_vec4_f32(arg_0.b * vec4<f32>(_wgslsmith_f_op_f32(step(-182f, _wgslsmith_f_op_f32(f32(-1f) * -423f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1211f - global0[_wgslsmith_index_u32(arg_0.a.x, 8u)]), _wgslsmith_f_op_f32(-353f * -565f)), _wgslsmith_f_op_f32(736f * -233f), -1304f)), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_0, 9683u, 53331u) & select(vec3<u32>(79014u, u_input.b.x, 47074u), vec3<u32>(0u, u_input.b.x, var_0), true), ~(~vec3<u32>(7854u, var_0, u_input.b.x))), reverseBits(firstTrailingBit(reverseBits(arg_0.a)))), 147u, min(arg_0.e, -vec4<i32>(_wgslsmith_mod_i32(0i, -2147483647i), 11999i, 2109i, ~arg_2)));
    let var_2 = var_1.d;
    return -570f;
}

fn func_1() -> Struct_1 {
    global0 = array<f32, 8>();
    var var_0 = vec4<i32>(10198i, ~func_2(Struct_5(Struct_3(Struct_1(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 8u)], global0[_wgslsmith_index_u32(27609u, 8u)], global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(u_input.b.x, 8u)]), u_input.b.x, 4294967295u, u_input.d)), 68945u, Struct_1(u_input.b.zwx, vec4<f32>(329f, global0[_wgslsmith_index_u32(u_input.b.x, 8u)], global0[_wgslsmith_index_u32(16778u, 8u)], -1831f), u_input.b.x, 18332u, u_input.d), _wgslsmith_dot_vec2_u32(u_input.b.wy, vec2<u32>(2534u, u_input.b.x)), ~vec3<u32>(u_input.b.x, 32495u, u_input.b.x)), -1i, _wgslsmith_f_op_f32(ceil(-106f)), vec2<i32>(~1i, _wgslsmith_dot_vec3_i32(u_input.d.wyx, vec3<i32>(-9246i, u_input.d.x, -6674i)))), 1i, u_input.a >> (~(~24682u) % 32u));
    var var_1 = Struct_4(~(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 20396u, u_input.b.x), ~u_input.b)), Struct_2(Struct_1(vec3<u32>(u_input.b.x, _wgslsmith_div_u32(25667u, 36971u), 23145u >> (u_input.b.x % 32u)), vec4<f32>(global0[_wgslsmith_index_u32(firstLeadingBit(1u), 8u)], global0[_wgslsmith_index_u32(~18868u, 8u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 8u)]), _wgslsmith_f_op_f32(func_3(Struct_1(u_input.b.yyz, vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)], -1363f, global0[_wgslsmith_index_u32(63199u, 8u)]), u_input.b.x, u_input.b.x, u_input.d), vec2<f32>(global0[_wgslsmith_index_u32(15353u, 8u)], global0[_wgslsmith_index_u32(1u, 8u)]), u_input.c, global1.x))), 0u, countOneBits(~u_input.b.x), ~(~vec4<i32>(-2147483647i, var_0.x, 23990i, -27382i)))), u_input.b.zw, Struct_3(Struct_1(abs(u_input.b.yww), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 8u)], -1695f, global0[_wgslsmith_index_u32(4294967295u, 8u)], -798f)), u_input.b.x, 11486u, vec4<i32>(~1i, u_input.a ^ u_input.d.x, _wgslsmith_add_i32(var_0.x, 0i), reverseBits(-2147483647i)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(var_1.b.a.b + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.a.b.x, var_1.b.a.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d.a.b.x), -329f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-346f))))));
    var var_3 = _wgslsmith_clamp_i32(17244i, var_0.x, -12043i >> (0u % 32u));
    return Struct_1(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(~var_1.b.a.a, vec3<u32>(3848u, 9997u, var_1.b.a.a.x)), vec3<u32>(_wgslsmith_sub_u32(1167u, 0u), var_1.c.x, 1u)), vec3<u32>(~u_input.b.x, _wgslsmith_clamp_u32(select(4294967295u, 1273u, false), firstTrailingBit(var_1.a.x), _wgslsmith_sub_u32(var_1.d.a.c, 2013u)), 1u)), var_1.b.a.b, u_input.b.x, _wgslsmith_mult_u32(max(u_input.b.x, u_input.b.x) >> ((~var_1.d.a.a.x | 1u) % 32u), 34666u), u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(false, global1.x);
    global1 = select(vec2<bool>(false, global1.x), select(select(vec2<bool>(var_0.x, true), vec2<bool>(false, var_0.x), all(vec4<bool>(global1.x, global1.x, var_0.x, false))), select(vec2<bool>(!var_0.x, true & var_0.x), !select(vec2<bool>(false, var_0.x), vec2<bool>(false, global1.x), vec2<bool>(true, false)), true), vec2<bool>(true, var_0.x)), all(vec3<bool>(true, all(select(vec3<bool>(var_0.x, global1.x, false), vec3<bool>(true, global1.x, false), false)), global1.x)));
    let var_1 = _wgslsmith_div_u32(1u, u_input.b.x) ^ min(u_input.b.x, u_input.b.x);
    let var_2 = Struct_3(func_1());
    global0 = array<f32, 8>();
    var var_3 = _wgslsmith_add_vec2_i32(abs(var_2.a.e.zz >> (var_2.a.a.zz % vec2<u32>(32u))), -vec2<i32>(~1i, -2147483647i));
    var var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(max(var_4.a.a.xz, ~var_2.a.a.xx), _wgslsmith_add_vec2_u32(func_1().a.xz, u_input.b.zy)), ~select(var_4.a.a.zz, u_input.b.xx, !select(vec2<bool>(global1.x, false), vec2<bool>(false, false), true)), var_4.a.b.x, var_4.a.e, ~(~var_4.a.d));
}

