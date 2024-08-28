struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec3<i32>,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 12>;

var<private> global1: Struct_3;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32, arg_1: f32) -> bool {
    let var_0 = Struct_1(global1.d.a, abs(~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, arg_0), u_input.a)), -(~_wgslsmith_mult_vec3_i32(vec3<i32>(global1.c.x, -1i, global1.b.a), vec3<i32>(global1.c.x, -35891i, -2147483647i))), vec2<bool>(true, global1.d.d.x));
    let var_1 = global1.b;
    let var_2 = vec4<f32>(784f, arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1)) - arg_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, 1000f) - _wgslsmith_f_op_f32(243f - 190f)))));
    let var_3 = firstTrailingBit(2147483647i);
    let var_4 = global1.b;
    return !any(!(!select(vec3<bool>(global1.d.d.x, global1.e, false), vec3<bool>(var_0.d.x, false, false), vec3<bool>(global1.a, global1.a, false))));
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    var var_0 = global1.b;
    var var_1 = global1.b;
    global1 = Struct_3(all(vec3<bool>(select(func_3(4294967295u, -296f), global1.e && true, all(vec4<bool>(global1.e, global1.a, global1.e, global1.a))), global1.a, global1.e)), Struct_2(~22679i), global1.c, global1.d, any(select(select(vec3<bool>(global1.a, global1.e, global1.a), select(vec3<bool>(false, false, false), vec3<bool>(true, true, global1.d.d.x), vec3<bool>(global1.d.d.x, global1.a, false)), all(vec4<bool>(true, global1.e, global1.e, true))), select(!vec3<bool>(global1.d.d.x, true, true), select(vec3<bool>(global1.e, true, false), vec3<bool>(global1.a, false, false), vec3<bool>(true, global1.d.d.x, true)), vec3<bool>(false, true, false)), all(select(vec3<bool>(false, true, true), vec3<bool>(true, global1.a, true), vec3<bool>(global1.a, false, false))))));
    let var_2 = u_input.a.x;
    var var_3 = Struct_3(global1.d.d.x, Struct_2(~var_1.a), vec3<i32>(abs(global1.b.a), ~_wgslsmith_div_i32(_wgslsmith_mod_i32(var_1.a, -1i), 1i), countOneBits(abs(~(-21893i)))), Struct_1(31464i | _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 27994i, u_input.b.x, -31666i), vec4<i32>(7200i, var_1.a, -45449i, global1.c.x)), _wgslsmith_add_vec2_u32(~vec2<u32>(arg_0.x, global1.d.b.x), global1.d.b) << (vec2<u32>(_wgslsmith_mod_u32(var_2, u_input.a.x), ~u_input.a.x) % vec2<u32>(32u)), -global1.d.c, select(global0[_wgslsmith_index_u32(0u, 12u)], global1.d.d, vec2<bool>(true, any(vec3<bool>(true, true, global1.e))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-212f + 884f)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -218f)));
    return _wgslsmith_div_f32(-1150f, _wgslsmith_f_op_f32(sign(-832f)));
}

fn func_4(arg_0: f32, arg_1: vec3<i32>, arg_2: u32, arg_3: vec4<bool>) -> Struct_3 {
    var var_0 = vec2<u32>(4294967295u, global1.d.b.x);
    let var_1 = global1.d;
    let var_2 = Struct_3(!(any(arg_3.yzw) & select(arg_3.x, true, true)), Struct_2(_wgslsmith_clamp_i32(global1.c.x, min(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(15947i, 2147483647i, -27546i, 2147483647i)), ~var_1.a), -2147483647i)), abs(vec3<i32>(_wgslsmith_mod_i32(var_1.a, 2147483647i), 22550i, -abs(-1i))), global1.d, any(vec4<bool>(true, any(!arg_3.yy), global1.d.d.x, true)));
    var var_3 = min(~reverseBits(abs(-1i)), countOneBits(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(arg_1.x, var_2.c.x)), var_1.c.yz))) >> (~_wgslsmith_div_u32(max(0u ^ var_2.d.b.x, _wgslsmith_add_u32(4294967295u, arg_2)), ~28142u) % 32u);
    var var_4 = ~u_input.a.x;
    return var_2;
}

fn func_1() -> vec3<f32> {
    var var_0 = 2147483647i;
    global1 = func_4(_wgslsmith_f_op_f32(func_2(_wgslsmith_clamp_vec3_u32(max(vec3<u32>(global1.d.b.x, global1.d.b.x, global1.d.b.x), vec3<u32>(1u, global1.d.b.x, 1u)), vec3<u32>(u_input.a.x, u_input.a.x, 1u), ~vec3<u32>(56458u, u_input.a.x, 1u)) ^ abs(_wgslsmith_div_vec3_u32(vec3<u32>(0u, global1.d.b.x, global1.d.b.x), vec3<u32>(0u, u_input.a.x, 32301u))))), u_input.b.yxy, 16213u, select(vec4<bool>(true, global1.e, true, !(!global1.a)), select(select(!vec4<bool>(global1.d.d.x, true, global1.a, global1.e), select(vec4<bool>(false, true, global1.e, true), vec4<bool>(global1.a, true, false, global1.d.d.x), global1.e), !vec4<bool>(false, true, true, global1.d.d.x)), !select(vec4<bool>(global1.d.d.x, false, global1.d.d.x, false), vec4<bool>(false, global1.d.d.x, global1.d.d.x, global1.e), true), !(!vec4<bool>(true, global1.d.d.x, true, true))), vec4<bool>(global1.d.d.x, any(select(vec4<bool>(false, true, false, global1.e), vec4<bool>(true, global1.d.d.x, true, false), global1.a)), true, all(select(vec3<bool>(false, global1.d.d.x, false), vec3<bool>(true, false, global1.e), vec3<bool>(true, global1.e, global1.d.d.x))))));
    var var_1 = 0i <= _wgslsmith_mult_i32(func_4(_wgslsmith_f_op_f32(-683f * _wgslsmith_f_op_f32(round(1564f))), -vec3<i32>(-4738i, u_input.b.x, -48674i), (u_input.a.x << (4294967295u % 32u)) ^ (4294967295u << (u_input.a.x % 32u)), select(select(vec4<bool>(global1.e, true, global1.d.d.x, global1.d.d.x), vec4<bool>(false, false, false, false), false), select(vec4<bool>(true, global1.d.d.x, true, false), vec4<bool>(global1.d.d.x, global1.e, true, global1.a), vec4<bool>(true, true, true, global1.e)), global1.e & false)).d.a, -2147483647i);
    var var_2 = -723f;
    var var_3 = global1.d;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(495f, _wgslsmith_f_op_f32(f32(-1f) * -329f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-113f)), 790f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 12>();
    var var_0 = vec4<i32>(~(-countOneBits(25595i)), u_input.b.x, _wgslsmith_sub_i32(13469i, _wgslsmith_mod_i32(min(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.b.a, global1.d.c.x), global1.c.yy), -1i), 1i)), _wgslsmith_mult_i32(2147483647i, min(-1i, ~0i)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(266f + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -911f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(827f, 378f, -964f) + _wgslsmith_f_op_vec3_f32(func_1())))));
    var var_2 = Struct_3(!global1.e, Struct_2(((u_input.b.x << (51037u % 32u)) ^ (i32(-1i) * -2147483647i)) | -_wgslsmith_mod_i32(-62632i, u_input.b.x)), (reverseBits(u_input.b.zwx) >> (~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 0u, u_input.a.x), vec3<u32>(global1.d.b.x, u_input.a.x, 1096u)) % vec3<u32>(32u))) >> (~(~vec3<u32>(4294967295u, u_input.a.x, 30539u) ^ vec3<u32>(4294967295u, 77859u, 2824u)) % vec3<u32>(32u)), Struct_1(24121i, select(min(~global1.d.b, firstTrailingBit(global1.d.b)), select(vec2<u32>(1u, u_input.a.x), u_input.a ^ vec2<u32>(global1.d.b.x, 25577u), false), !func_4(var_1.x, vec3<i32>(global1.d.c.x, 1i, -1138i), 1u, vec4<bool>(true, false, true, global1.e)).d.d.x), _wgslsmith_mult_vec3_i32(vec3<i32>(-20513i, abs(var_0.x), _wgslsmith_dot_vec2_i32(vec2<i32>(global1.b.a, global1.d.c.x), global1.d.c.yx)), vec3<i32>(-1i, reverseBits(var_0.x), u_input.b.x << (global1.d.b.x % 32u))), vec2<bool>(global1.d.d.x, !(u_input.b.x < -2565i))), false);
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1846f + 1000f), _wgslsmith_f_op_f32(f32(-1f) * -386f), 1f)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(925f, var_1.x, var_1.x))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -619f, 667f) - vec3<f32>(1403f, 1540f, -1000f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(712f, var_1.x, 266f) + vec3<f32>(var_1.x, -1288f, -313f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_1.x, 1595f) * vec3<f32>(var_1.x, -334f, var_1.x)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false))))));
    global1 = Struct_3(global1.d.d.x, func_4(var_1.x, var_2.d.c, 7014u, vec4<bool>(true, all(!vec4<bool>(true, true, global1.a, var_2.e)), all(!vec2<bool>(false, global1.e)), var_2.d.d.x | true)).b, min(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(abs(var_0.xzw), _wgslsmith_mod_vec3_i32(vec3<i32>(17441i, u_input.b.x, var_2.b.a), vec3<i32>(var_2.d.a, -2147483647i, 39553i))), ~(vec3<i32>(-23609i, var_0.x, var_2.d.a) >> (vec3<u32>(u_input.a.x, 65143u, 4294967295u) % vec3<u32>(32u)))), vec3<i32>(i32(-1i) * -var_2.d.c.x, -(-1i << (u_input.a.x % 32u)), 1i)), Struct_1(-_wgslsmith_mod_i32(-25459i ^ global1.c.x, _wgslsmith_sub_i32(var_0.x, global1.b.a)), abs(vec2<u32>(1u, 7375u)) | var_2.d.b, vec3<i32>(~global1.c.x, -u_input.b.x, var_2.d.a), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1.d.b.x, countOneBits(global1.d.b.x)), 12u)]), false);
    let var_3 = -var_0.x;
    let var_4 = global1.d.d.x;
    global0 = array<vec2<bool>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.x, var_2.d.b.x, vec3<u32>(_wgslsmith_dot_vec4_u32(max(vec4<u32>(73783u, 6760u, global1.d.b.x, var_2.d.b.x), vec4<u32>(41205u, 24064u, u_input.a.x, 42478u)) >> (firstTrailingBit(vec4<u32>(global1.d.b.x, 0u, u_input.a.x, global1.d.b.x)) % vec4<u32>(32u)), ~(~vec4<u32>(var_2.d.b.x, var_2.d.b.x, 4294967295u, 84222u))), 36578u, countOneBits(global1.d.b.x)), _wgslsmith_dot_vec4_i32(-u_input.b, u_input.b), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_1.zz * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -908f) + _wgslsmith_f_op_vec2_f32(-var_1.yz))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_1()).yz), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, var_1.x, var_2.d.d.x))), vec3<i32>(~var_0.x, var_0.x, 9714i), ~31173u, select(select(vec4<bool>(false, var_2.d.d.x, global1.d.d.x, global1.e), vec4<bool>(var_2.d.d.x, false, var_2.d.d.x, true), vec4<bool>(var_2.e, var_2.a, var_2.e, var_2.a)), select(vec4<bool>(true, var_2.d.d.x, global1.d.d.x, false), vec4<bool>(global1.a, false, global1.d.d.x, true), false), select(vec4<bool>(global1.e, false, true, global1.a), vec4<bool>(global1.a, true, true, global1.a), true))).d.d)));
}

