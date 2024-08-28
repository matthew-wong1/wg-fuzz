struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec3<i32>, 22>;

var<private> global2: bool = true;

var<private> global3: Struct_2;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec2<i32> {
    var var_0 = Struct_1(vec2<i32>((max(1i, 13640i) << (global3.b.d.x % 32u)) >> ((_wgslsmith_mult_u32(global3.b.d.x, global3.b.d.x) << (global3.b.d.x % 32u)) % 32u), reverseBits(u_input.a)), ~46789i, !(!any(select(vec3<bool>(global3.b.c, false, true), vec3<bool>(global3.b.c, global3.b.c, false), vec3<bool>(global3.a, true, true)))), vec4<u32>(reverseBits(global3.b.d.x), 10977u, global3.b.d.x, _wgslsmith_clamp_u32(~(~1u), ~_wgslsmith_mult_u32(global3.b.d.x, 18834u), ~1u)));
    var var_1 = Struct_2(global3.a, Struct_1(~_wgslsmith_clamp_vec2_i32(global3.b.a >> (global3.b.d.yz % vec2<u32>(32u)), max(global3.b.a, global3.b.a), var_0.a), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-8309i, global3.b.a.x), global3.b.a), global3.b.a), global3.b.a), global3.b.c, vec4<u32>(_wgslsmith_mod_u32(select(global3.b.d.x, var_0.d.x, global3.a), ~var_0.d.x), global3.b.d.x, ~select(98775u, 15497u, global3.a), 1u)));
    return -global3.b.a;
}

fn func_2(arg_0: f32, arg_1: vec3<bool>) -> vec2<i32> {
    let var_0 = 1i;
    let var_1 = Struct_1(vec2<i32>(global3.b.a.x, -6249i) ^ _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(func_3(), -global3.b.a), abs(-vec2<i32>(1i, 11335i))), 0i, arg_1.x, vec4<u32>(select(_wgslsmith_mult_u32(global3.b.d.x, 14943u), 55964u, false), 1u, ~global3.b.d.x, _wgslsmith_dot_vec3_u32(global3.b.d.yzz, abs(countOneBits(vec3<u32>(45203u, global3.b.d.x, 55808u))))));
    var var_2 = ~_wgslsmith_sub_vec4_i32(vec4<i32>(-(~u_input.a), 0i, _wgslsmith_add_i32(7858i, 14737i), -max(global3.b.a.x, 1i)), vec4<i32>(global3.b.a.x, u_input.a & _wgslsmith_dot_vec2_i32(var_1.a, global3.b.a), -27256i, 2147483647i));
    var var_3 = global3.b;
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(425f, arg_0, arg_0))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)), vec3<f32>(-1110f, _wgslsmith_f_op_f32(arg_0 + arg_0), _wgslsmith_f_op_f32(min(arg_0, -1670f)))))));
    return vec2<i32>(var_2.x, ~7566i);
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_dot_vec2_i32(~(~func_2(-1403f, vec3<bool>(false, global3.b.c, false))) >> (global3.b.d.zx % vec2<u32>(32u)), ~min(~vec2<i32>(1i, u_input.a), -abs(vec2<i32>(global3.b.b, 1i))));
    global0 = global3.a;
    let var_1 = any(vec3<bool>(false, false, false)) || true;
    var var_2 = !select(select(select(select(vec4<bool>(false, true, global3.b.c, true), vec4<bool>(global3.a, global3.a, true, false), vec4<bool>(true, global3.a, var_1, var_1)), select(vec4<bool>(var_1, false, false, true), vec4<bool>(var_1, true, true, var_1), vec4<bool>(false, var_1, true, global3.a)), vec4<bool>(global3.b.c, var_1, true, false)), !select(vec4<bool>(var_1, global3.b.c, var_1, true), vec4<bool>(global3.a, true, global3.b.c, false), true), !all(vec4<bool>(var_1, global3.b.c, false, var_1))), vec4<bool>(global3.b.c, ~global3.b.d.x <= _wgslsmith_mod_u32(global3.b.d.x, 8881u), true, global3.a), select(vec4<bool>(!global3.b.c, false, all(vec2<bool>(true, false)), false), vec4<bool>(false, true, true, false), any(vec2<bool>(true, true))));
    var var_3 = !(!vec2<bool>(true, !any(vec4<bool>(true, false, true, var_2.x))));
    return Struct_2(true, Struct_1(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1393f - 947f)), !vec3<bool>(var_1, true, global3.b.c)), 0i, true, min(vec4<u32>(global3.b.d.x, 0u, _wgslsmith_dot_vec4_u32(global3.b.d, global3.b.d), _wgslsmith_mod_u32(11062u, 1u)), vec4<u32>(global3.b.d.x << (global3.b.d.x % 32u), global3.b.d.x | global3.b.d.x, countOneBits(global3.b.d.x), 26058u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -632i;
    var_0 = -(2147483647i | reverseBits(_wgslsmith_add_i32(firstLeadingBit(u_input.a), abs(2147483647i))));
    var var_1 = global3.b.a;
    let var_2 = func_1();
    let var_3 = ~(~vec2<u32>(39977u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_2.b.d.x, 0u), global3.b.d.xx), global3.b.d.wz)));
    var var_4 = !vec3<bool>(global3.a, true && all(select(vec4<bool>(global3.a, false, global3.a, global3.a), vec4<bool>(global3.b.c, var_2.a, var_2.b.c, var_2.b.c), var_2.a)), global3.b.c);
    let x = u_input.a;
    s_output = StorageBuffer(413f, func_1().b.b);
}

