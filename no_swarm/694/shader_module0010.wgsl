struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 23>;

var<private> global2: array<vec4<bool>, 26>;

var<private> global3: Struct_1 = Struct_1(vec2<bool>(true, false), vec4<u32>(19978u, 4294967295u, 24137u, 0u));

var<private> global4: array<f32, 24> = array<f32, 24>(-293f, -1754f, 1232f, 638f, -435f, 1751f, 846f, -669f, -1000f, -168f, 869f, 1033f, -637f, -271f, -1828f, 1022f, -1000f, -707f, -1088f, -112f, -954f, -670f, 215f, -582f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = arg_0;
    global2 = array<vec4<bool>, 26>();
    var var_1 = arg_3;
    var var_2 = vec3<u32>(~(arg_3.b.x >> (countOneBits(var_1.b.x) % 32u)), ~arg_3.b.x, reverseBits(~(~arg_2.b.x ^ ~51185u)));
    var var_3 = _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.b.x, ~_wgslsmith_sub_u32(arg_2.b.x, var_1.b.x), global3.b.x), ~(~_wgslsmith_div_vec4_u32(var_0.b, arg_2.b))), ~max(abs(select(var_2.x, 0u, var_1.a.x)), ~var_0.b.x));
    return vec4<bool>(any(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(countOneBits(4294967295u), 1u) | abs(abs(global3.b.x)), 26u)]), !(true | (arg_0.b.x <= 1u)) & !(!arg_3.a.x), any(select(select(select(vec2<bool>(arg_1, arg_3.a.x), vec2<bool>(true, arg_2.a.x), vec2<bool>(var_0.a.x, false)), select(vec2<bool>(true, false), global3.a, arg_0.a.x), !vec2<bool>(arg_3.a.x, arg_2.a.x)), select(select(arg_0.a, vec2<bool>(arg_2.a.x, false), arg_2.a), var_0.a, any(arg_0.a)), vec2<bool>(any(global2[_wgslsmith_index_u32(var_1.b.x, 26u)]), global3.a.x))), arg_1);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<f32>) -> vec4<bool> {
    global2 = array<vec4<bool>, 26>();
    let var_0 = Struct_1(!arg_0.a, _wgslsmith_add_vec4_u32(vec4<u32>(13753u, ~_wgslsmith_div_u32(24118u, 28988u), global3.b.x, firstTrailingBit(max(30323u, global3.b.x))), vec4<u32>(max(_wgslsmith_add_u32(33252u, arg_0.b.x), _wgslsmith_dot_vec4_u32(global3.b, vec4<u32>(u_input.b.x, 38758u, 0u, u_input.b.x))), 5081u, 1u, 1u)));
    var var_1 = vec2<u32>(global3.b.x, ~firstTrailingBit(~1u << (~arg_0.b.x % 32u)));
    var var_2 = !(!any(!vec3<bool>(var_0.a.x, var_0.a.x, false)));
    var var_3 = global2[_wgslsmith_index_u32(~var_0.b.x, 26u)];
    return global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~global3.b.x, ~var_1.x), 26u)];
}

fn func_2(arg_0: Struct_1) -> i32 {
    let var_0 = !any(!(!(!arg_0.a)));
    var var_1 = all(func_4(Struct_1(arg_0.a, max(~arg_0.b, vec4<u32>(global3.b.x, 1u, 35680u, 98987u))), select(func_3(arg_0, true, Struct_1(arg_0.a, global3.b), Struct_1(arg_0.a, vec4<u32>(28726u, global3.b.x, 66267u, 1u))), vec4<bool>(all(vec3<bool>(true, global3.a.x, true)), 36596i == u_input.a.x, func_3(arg_0, false, arg_0, Struct_1(vec2<bool>(var_0, var_0), global3.b)).x, !arg_0.a.x), func_3(arg_0, arg_0.a.x, Struct_1(arg_0.a, arg_0.b), arg_0).x), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -925f), 1657f, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(~4294967295u, 23u)], -358f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(12912u, 23u)]))))));
    var var_2 = -1994f;
    let var_3 = arg_0;
    let var_4 = _wgslsmith_sub_i32(-(~abs(1i)), max(u_input.a.x << (u_input.b.x % 32u), -40496i | -_wgslsmith_dot_vec2_i32(u_input.a.xx, u_input.a.yz)));
    return -(i32(-1i) * -1i);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = -(vec3<i32>(firstTrailingBit(-1i) | u_input.a.x, 31299i, 2147483647i & func_2(arg_0)) ^ abs(abs(u_input.a & vec3<i32>(u_input.a.x, 47194i, u_input.a.x))));
    var var_1 = ~abs(_wgslsmith_mod_u32(45594u, ~arg_0.b.x));
    var var_2 = arg_0;
    let var_3 = arg_0;
    var var_4 = !global2[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(_wgslsmith_mod_u32(countOneBits(4294967295u), ~var_2.b.x), _wgslsmith_mult_u32(~38103u, global3.b.x))), 26u)];
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 23>();
    var var_0 = func_1(Struct_1(global3.a, global3.b), vec2<f32>(_wgslsmith_f_op_f32(ceil(global4[_wgslsmith_index_u32(global3.b.x, 24u)])), global4[_wgslsmith_index_u32(u_input.b.x, 24u)]));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(u_input.b));
}

