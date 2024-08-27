struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: u32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: f32,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 31>;

var<private> global1: vec3<u32> = vec3<u32>(9401u, 53277u, 1u);

var<private> global2: array<bool, 1>;

var<private> global3: vec4<bool> = vec4<bool>(true, false, true, true);

var<private> global4: array<bool, 23>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_4) -> f32 {
    var var_0 = _wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(~77818u, global1.x, 14816u ^ global1.x, 1u), vec4<u32>(~firstLeadingBit(arg_0.c), u_input.b, ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0.a.x), arg_0.a.zz), u_input.a)), 31u)], global0[_wgslsmith_index_u32(~(~4294967295u), 31u)]);
    global3 = vec4<bool>(true, !(_wgslsmith_f_op_f32(ceil(1797f)) >= -792f) == !global2[_wgslsmith_index_u32(reverseBits(~62028u), 1u)], global4[_wgslsmith_index_u32(~firstLeadingBit(49417u ^ global1.x), 23u)], arg_0.b.x);
    var var_1 = _wgslsmith_sub_i32(2147483647i, -u_input.c ^ ~u_input.c);
    var_0 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -9897i), global0[_wgslsmith_index_u32(50155u, 31u)]), -2147483647i, -1i << (~4294967295u % 32u)) | u_input.c;
    global4 = array<bool, 23>();
    return -707f;
}

fn func_2(arg_0: vec4<bool>, arg_1: f32) -> u32 {
    let var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1, arg_1), vec2<f32>(arg_1, arg_1))) - vec2<f32>(-567f, 1042f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2058f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(Struct_4(vec4<u32>(u_input.a, 4294967295u, global1.x, 38448u), arg_0, 4294967295u))), -1193f)))), Struct_3(select(vec3<bool>(global4[_wgslsmith_index_u32(~global1.x, 23u)], 0i > u_input.c, any(arg_0)), select(arg_0.ywz, vec3<bool>(arg_0.x, arg_0.x, true), !vec3<bool>(false, global2[_wgslsmith_index_u32(global1.x, 1u)], false)), false)));
    var var_1 = any(vec3<bool>(true, _wgslsmith_add_u32(abs(global1.x), 1u) != 57264u, !((-1000f == var_0.b) == !var_0.c.a.x)));
    let var_2 = true;
    let var_3 = select(vec3<u32>(0u, abs(u_input.b), ~(4923u ^ ~u_input.a)), abs(~reverseBits(reverseBits(vec3<u32>(63687u, 35010u, u_input.a)))), vec3<bool>(!global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(global1.x, 48910u), min(global1.zy, vec2<u32>(0u, global1.x))), 1u)], true, false || any(vec4<bool>(true, true, true, true))));
    global2 = array<bool, 1>();
    return 83917u;
}

fn func_1() -> Struct_5 {
    var var_0 = false;
    var_0 = all(!vec2<bool>(global4[_wgslsmith_index_u32(~global1.x, 23u)], global1.x != ~0u));
    var var_1 = Struct_4(_wgslsmith_clamp_vec4_u32(vec4<u32>(~(global1.x & 4294967295u), ~(~1u), u_input.b, _wgslsmith_mod_u32(67693u >> (0u % 32u), _wgslsmith_div_u32(global1.x, 0u))), vec4<u32>(global1.x, 41715u, ~1u, u_input.b), vec4<u32>(func_2(!vec4<bool>(global2[_wgslsmith_index_u32(global1.x, 1u)], global3.x, global4[_wgslsmith_index_u32(u_input.a, 23u)], global2[_wgslsmith_index_u32(u_input.a, 1u)]), -841f), global1.x, abs(26118u), _wgslsmith_sub_u32(global1.x & global1.x, 4294967295u))), vec4<bool>(!global2[_wgslsmith_index_u32(~u_input.a, 1u)], true, !all(select(vec4<bool>(global3.x, global2[_wgslsmith_index_u32(u_input.a, 1u)], true, true), vec4<bool>(global4[_wgslsmith_index_u32(u_input.a, 23u)], global4[_wgslsmith_index_u32(1u, 23u)], false, true), false)), global4[_wgslsmith_index_u32(u_input.a << (u_input.b % 32u), 23u)]), global1.x);
    var var_2 = Struct_4(reverseBits(~(~vec4<u32>(var_1.c, 46367u, u_input.a, 24406u))), var_1.b, 0u);
    global3 = !(!var_2.b);
    return Struct_5(vec2<f32>(-334f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1922f, 839f) - _wgslsmith_f_op_f32(func_3(Struct_4(vec4<u32>(u_input.a, var_2.c, 0u, var_2.a.x), vec4<bool>(false, false, false, false), 0u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-773f))))), _wgslsmith_div_f32(-1054f, _wgslsmith_f_op_f32(max(677f, -771f))), Struct_3(!(!(!vec3<bool>(var_1.b.x, false, global3.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = !vec3<bool>(false, all(select(!var_0.c.a, vec3<bool>(true, true, false), !global2[_wgslsmith_index_u32(32830u, 1u)])), func_1().c.a.x);
    global2 = array<bool, 1>();
    let var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(vec3<u32>(max(4294967295u, 4294967295u) | select(1u, 1u, var_1.x), 1u, global1.x), ~_wgslsmith_div_vec3_u32(~vec3<u32>(0u, global1.x, u_input.a), vec3<u32>(0u, global1.x, 48447u))), var_0.a);
}

