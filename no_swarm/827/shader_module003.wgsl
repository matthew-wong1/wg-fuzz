struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: bool,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 4> = array<vec2<f32>, 4>(vec2<f32>(931f, 973f), vec2<f32>(751f, 1015f), vec2<f32>(-111f, -1771f), vec2<f32>(-885f, 439f));

var<private> global1: array<i32, 21> = array<i32, 21>(-1i, 6549i, 9771i, 9690i, 20152i, -51080i, -1271i, 42027i, -1i, -20030i, i32(-2147483648), i32(-2147483648), 1i, 88009i, i32(-2147483648), 53213i, 1i, 27758i, 32482i, i32(-2147483648), -31512i);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec4<u32>, arg_1: i32) -> bool {
    return !select(true, _wgslsmith_dot_vec3_u32(arg_0.zxx, ~vec3<u32>(2748u, 15800u, arg_0.x)) > 4294967295u, true);
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: i32, arg_3: f32) -> u32 {
    let var_0 = select(u_input.b ^ u_input.b, ~select(u_input.b, u_input.b, !select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(false, arg_1, true, false), vec4<bool>(true, false, true, false))), vec4<bool>(!func_2(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, arg_0, arg_0, arg_0), u_input.b), arg_2), all(vec2<bool>(arg_1, !arg_1)), arg_1, false));
    global0 = array<vec2<f32>, 4>();
    var var_1 = !(!(!(!vec4<bool>(arg_1, arg_1, true, arg_1))));
    var var_2 = Struct_2(vec3<bool>(false, select(false, arg_3 > _wgslsmith_div_f32(arg_3, 468f), true), true), Struct_1(~48577u, vec4<i32>(1i, u_input.a.x, arg_2, reverseBits(arg_2 & 57322i))), !(arg_3 == -1615f), vec2<u32>(~(~(~1u)), u_input.c), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(659f, -1574f, -1158f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, arg_3, -771f) - vec3<f32>(-1107f, arg_3, arg_3))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1630f, 1000f, 925f) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, 1145f, 279f), vec3<f32>(arg_3, 849f, arg_3)))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, 754f, arg_3))))));
    var var_3 = vec2<bool>(var_2.c, !(!var_2.c));
    return 3968u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 4>();
    var var_0 = _wgslsmith_div_i32((-1i << (_wgslsmith_add_u32(33888u, abs(u_input.d)) % 32u)) & _wgslsmith_mult_i32(~global1[_wgslsmith_index_u32(func_1(28265u, false, global1[_wgslsmith_index_u32(u_input.d, 21u)], -1000f), 21u)], ~_wgslsmith_add_i32(u_input.e, u_input.a.x)), u_input.a.x);
    var var_1 = Struct_1(~u_input.c, -(~countOneBits(vec4<i32>(9602i, global1[_wgslsmith_index_u32(53705u, 21u)], u_input.a.x, -1i) ^ vec4<i32>(global1[_wgslsmith_index_u32(u_input.d, 21u)], u_input.a.x, -1i, 35070i))));
    let var_2 = ~(-u_input.a.x);
    let var_3 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, (vec2<i32>(-1i) * -vec2<i32>(-2147483647i, var_1.b.x)) ^ vec2<i32>(u_input.a.x, ~4464i | _wgslsmith_dot_vec3_i32(var_1.b.xxz, vec3<i32>(u_input.e, u_input.e, var_2))), var_2, vec3<i32>(_wgslsmith_div_i32(-abs(var_1.b.x), -13354i), 12734i, 1i));
}

