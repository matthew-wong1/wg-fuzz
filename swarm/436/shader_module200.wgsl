struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 23> = array<vec3<u32>, 23>(vec3<u32>(0u, 95045u, 4294967295u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 45701u, 90737u), vec3<u32>(27252u, 114361u, 0u), vec3<u32>(1u, 39806u, 40869u), vec3<u32>(4294967295u, 0u, 54137u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(55255u, 104470u, 38183u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(21443u, 0u, 0u), vec3<u32>(84379u, 1u, 1u), vec3<u32>(0u, 0u, 17453u), vec3<u32>(0u, 1u, 0u), vec3<u32>(4294967295u, 7828u, 4294967295u), vec3<u32>(4294967295u, 22671u, 77432u), vec3<u32>(79056u, 0u, 0u), vec3<u32>(27704u, 283u, 16020u), vec3<u32>(19331u, 4294967295u, 1u), vec3<u32>(0u, 68782u, 4420u), vec3<u32>(10734u, 4294967295u, 0u), vec3<u32>(4019u, 1u, 85662u), vec3<u32>(4294967295u, 60773u, 59175u), vec3<u32>(62226u, 83971u, 1u));

var<private> global1: Struct_1 = Struct_1(vec4<i32>(-32993i, 15054i, 48568i, 48909i));

var<private> global2: Struct_2 = Struct_2(Struct_1(vec4<i32>(-1i, 19079i, -1i, 0i)), vec3<bool>(false, true, true));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec4<i32> {
    let var_0 = vec4<bool>(!(~1u != select(u_input.a, _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(48190u, 23u)], global0[_wgslsmith_index_u32(u_input.a, 23u)]), any(vec3<bool>(global2.b.x, false, global2.b.x)))), true, global2.b.x, true);
    var var_1 = 1i;
    var var_2 = Struct_1(abs(-abs(~vec4<i32>(global2.a.a.x, 43460i, 42296i, -10235i))));
    var var_3 = Struct_1(select(firstLeadingBit(vec4<i32>(6864i, global1.a.x, -1i, -6481i) | vec4<i32>(global2.a.a.x, var_2.a.x, global2.a.a.x, -43312i)), vec4<i32>(-1i, countOneBits(var_2.a.x | 0i), var_2.a.x, -1i), var_0));
    var_2 = global2.a;
    return vec4<i32>(-_wgslsmith_add_i32(reverseBits(-14366i), global2.a.a.x), _wgslsmith_mult_i32(_wgslsmith_mod_i32(abs(var_2.a.x) << (_wgslsmith_add_u32(u_input.a, u_input.a) % 32u), global1.a.x | _wgslsmith_dot_vec3_i32(var_3.a.zyy, global2.a.a.wxy)), abs(_wgslsmith_mult_i32(var_3.a.x >> (u_input.a % 32u), -9891i))), -26030i, 0i);
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    global0 = array<vec3<u32>, 23>();
    global0 = array<vec3<u32>, 23>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1739f, _wgslsmith_f_op_f32(f32(-1f) * -1278f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-691f, 674f)) - _wgslsmith_f_op_f32(f32(-1f) * -1543f))))));
    let var_1 = any(select(!select(select(vec2<bool>(global2.b.x, global2.b.x), global2.b.yz, true), vec2<bool>(true, true), global2.a.a.x == 2147483647i), vec2<bool>(true, _wgslsmith_f_op_f32(round(var_0.x)) == _wgslsmith_f_op_f32(-1130f - var_0.x)), global2.b.x));
    global0 = array<vec3<u32>, 23>();
    return Struct_2(Struct_1(abs(-func_3())), global2.b);
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec3<f32>) -> bool {
    var var_0 = func_2(arg_0.a.a.yyw);
    var var_1 = _wgslsmith_mod_i32(global1.a.x, _wgslsmith_dot_vec3_i32(arg_0.a.a.yzz, ~(~(-global2.a.a.zxx))));
    let var_2 = !vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1))) == _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(arg_1)), -3110f)), all(!(!vec4<bool>(arg_0.b.x, arg_0.b.x, false, true))));
    var var_3 = arg_0;
    var var_4 = u_input.a;
    return true;
}

fn func_1() -> Struct_1 {
    let var_0 = select(vec3<bool>(func_4(func_2(vec3<i32>(-62802i, -7539i, global2.a.a.x)), _wgslsmith_f_op_f32(1236f - _wgslsmith_f_op_f32(-2069f * 1040f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-743f, 1860f, 229f) * vec3<f32>(822f, -1067f, 1000f))))), true, global2.b.x), func_2(~abs(~global2.a.a.xxx)).b, global2.b.x);
    var var_1 = vec4<bool>(var_0.x, var_0.x, any(global2.b), !(!any(func_2(vec3<i32>(16465i, global1.a.x, global1.a.x)).b)));
    var_1 = vec4<bool>(true, !any(vec4<bool>(var_0.x, var_0.x, !global2.b.x, !global2.b.x)), true, var_0.x);
    let var_2 = global2.a;
    let var_3 = func_2(_wgslsmith_sub_vec3_i32(global1.a.zyw, var_2.a.zxx));
    return func_2(vec3<i32>(-var_3.a.a.x, _wgslsmith_sub_i32(~50524i >> ((0u >> (1u % 32u)) % 32u), ~20872i), -(-var_3.a.a.x ^ var_2.a.x))).a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(global2.a, global2.b);
    var var_0 = select(!(!select(vec3<bool>(false, global2.b.x, global2.b.x), vec3<bool>(false, false, false), !vec3<bool>(global2.b.x, global2.b.x, global2.b.x))), vec3<bool>(true || global2.b.x, false, all(!(!vec4<bool>(global2.b.x, false, false, false)))), true & (22469u == _wgslsmith_dot_vec4_u32(~vec4<u32>(17720u, u_input.a, 1u, 0u), vec4<u32>(0u, u_input.a, 0u, 41712u))));
    let var_1 = abs(~global2.a.a.x);
    global0 = array<vec3<u32>, 23>();
    var var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(250f)), _wgslsmith_f_op_f32(trunc(517f)), -1320f, _wgslsmith_f_op_f32(f32(-1f) * -1266f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(2287f)), 1785f, _wgslsmith_f_op_f32(select(875f, 1000f, true)), 1573f) + vec4<f32>(-539f, _wgslsmith_f_op_f32(-252f + -502f), _wgslsmith_f_op_f32(135f * -1313f), _wgslsmith_f_op_f32(ceil(-1000f))))));
}

