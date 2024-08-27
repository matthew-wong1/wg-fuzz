struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

var<private> global1: array<Struct_1, 10>;

var<private> global2: array<Struct_2, 12>;

var<private> global3: vec3<i32> = vec3<i32>(42207i, -26557i, 1804i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: i32) -> Struct_1 {
    let var_0 = u_input.c;
    let var_1 = vec4<u32>(_wgslsmith_mod_u32(35795u >> (1u % 32u), ~u_input.a) >> (~firstTrailingBit(~u_input.a) % 32u), ~u_input.a, u_input.a | 0u, 79293u);
    let var_2 = Struct_1(vec3<bool>(global0.x, true, false), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1966f, arg_0, -1937f, -105f), vec4<f32>(1000f, 497f, arg_0, -958f))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_1, arg_0, arg_0, arg_1), vec4<f32>(arg_1, 1300f, -122f, arg_1))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-526f, arg_0, arg_0, arg_1) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, -1000f, -152f, 996f))))))));
    let var_3 = global1[_wgslsmith_index_u32(4294967295u, 10u)];
    global2 = array<Struct_2, 12>();
    return global1[_wgslsmith_index_u32(u_input.a, 10u)];
}

fn func_3() -> i32 {
    let var_0 = -(~_wgslsmith_clamp_vec3_i32(~(~vec3<i32>(global3.x, -2147483647i, -29774i)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, 2147483647i, global3.x) | vec3<i32>(1i, 2147483647i, u_input.c), -vec3<i32>(global3.x, u_input.c, -52872i)), vec3<i32>(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x), global3.x, 0i)));
    global0 = vec3<bool>(false, true, all(vec4<bool>(false, any(!vec4<bool>(global0.x, global0.x, false, true)), func_2(1030f, _wgslsmith_f_op_f32(step(514f, -1127f)), -34433i).a.x, !(var_0.x <= u_input.b.x))));
    var var_1 = global1[_wgslsmith_index_u32(u_input.a, 10u)];
    var var_2 = _wgslsmith_sub_i32(-_wgslsmith_clamp_i32(i32(-1i) * -13500i, -1i, global3.x), var_0.x);
    var var_3 = vec3<i32>(u_input.b.x, firstTrailingBit(_wgslsmith_add_i32(-18000i, (-2147483647i >> (0u % 32u)) | _wgslsmith_mod_i32(var_0.x, u_input.c))), 27240i);
    return -2147483647i;
}

fn func_1() -> bool {
    var var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1000f, -293f))) * _wgslsmith_f_op_f32(f32(-1f) * -741f))), 1753f, global3.x);
    var var_1 = Struct_3(global2[_wgslsmith_index_u32(55775u, 12u)], (-u_input.c ^ abs(i32(-1i) * -1i)) > (~(-75506i) ^ (func_3() << (52951u % 32u))));
    global1 = array<Struct_1, 10>();
    var var_2 = 430f;
    let var_3 = var_0.b.zz;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 10>();
    var var_0 = select(!vec3<bool>(any(global0.zz), true, all(vec3<bool>(global0.x, global0.x, global0.x))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(global0.x, true, true), vec3<bool>(global0.x, global0.x, true), select(global0.x, global0.x, global0.x)), (u_input.b.x | global3.x) != -31221i), !select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, global0.x, global0.x), true), !select(select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, true, false), vec3<bool>(true, global0.x, true)), !vec3<bool>(false, global0.x, global0.x), global0.x)), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.a), ~vec3<u32>(34760u, 4294967295u, 0u)) != (select(4294967295u & u_input.a, 13987u, true) >> (36208u % 32u)));
    global2 = array<Struct_2, 12>();
    var var_1 = !(u_input.a < u_input.a);
    let var_2 = !select(!select(!vec3<bool>(false, global0.x, global0.x), vec3<bool>(var_0.x, global0.x, true), global0.x || false), select(vec3<bool>(true, true, true), !(!vec3<bool>(var_0.x, global0.x, false)), !all(vec4<bool>(true, global0.x, true, true))), func_1());
    var var_3 = func_2(-2536f, 597f, ~global3.x);
    var_1 = all(vec3<bool>(true, var_2.x, false));
    var var_4 = !select(select(vec3<bool>(true, u_input.a == 1u, true), var_3.a, _wgslsmith_clamp_i32(-2147483647i, -2147483647i, -2147483647i) <= -global3.x), vec3<bool>(var_3.a.x, !select(var_0.x, false, false), true), !var_3.a);
    let var_5 = firstTrailingBit(u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_3.b.x)))), -1015f);
}

