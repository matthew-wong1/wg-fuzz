struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<bool, 18>;

var<private> global2: bool = true;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: vec2<bool>, arg_3: vec2<u32>) -> bool {
    return false;
}

fn func_2() -> bool {
    var var_0 = Struct_1(-reverseBits(i32(-1i) * -1i), u_input.d.zx, vec2<bool>(any(!select(vec3<bool>(false, true, global0.b), vec3<bool>(global1[_wgslsmith_index_u32(global0.a, 18u)], false, global0.b), vec3<bool>(global1[_wgslsmith_index_u32(0u, 18u)], global1[_wgslsmith_index_u32(u_input.d.x, 18u)], true))), any(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 18u)], true, true))));
    var var_1 = select(select(vec4<bool>(func_3(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.a, -1669i), vec2<i32>(var_0.a, -13275i)), -387f, vec2<bool>(var_0.c.x, global0.b), vec2<u32>(global0.a, 4294967295u) | var_0.b), false, var_0.c.x, !func_3(vec2<i32>(var_0.a, 0i), -268f, var_0.c, u_input.d.xy)), vec4<bool>(select(true, any(vec4<bool>(global1[_wgslsmith_index_u32(global0.a, 18u)], false, global1[_wgslsmith_index_u32(17867u, 18u)], var_0.c.x)), global0.b), any(var_0.c), !global0.b, var_0.c.x), !(global0.b | true)), !vec4<bool>(global1[_wgslsmith_index_u32(select(~152213u, 0u, func_3(vec2<i32>(-2147483647i, var_0.a), 661f, vec2<bool>(global1[_wgslsmith_index_u32(66692u, 18u)], var_0.c.x), u_input.d.zx)), 18u)], select(global1[_wgslsmith_index_u32(~u_input.c, 18u)], var_0.c.x, true), global0.b == true, true), vec4<bool>(true, var_0.c.x, any(select(select(vec3<bool>(true, false, var_0.c.x), vec3<bool>(true, true, false), vec3<bool>(var_0.c.x, var_0.c.x, false)), !vec3<bool>(global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(var_0.b.x, 18u)], true), true)), any(select(select(vec2<bool>(false, true), var_0.c, vec2<bool>(global1[_wgslsmith_index_u32(79711u, 18u)], true)), var_0.c, select(var_0.c, vec2<bool>(true, global0.b), true)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(587f, 1428f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(865f, -866f))), vec2<f32>(-485f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-593f, -444f), -182f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(-2034f, -476f)), 1000f), vec2<f32>(_wgslsmith_f_op_f32(max(158f, -385f)), -1379f)) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -959f), _wgslsmith_f_op_f32(step(563f, _wgslsmith_f_op_f32(trunc(-683f)))))));
    var var_3 = Struct_2(Struct_1(~select(i32(-1i) * -1i, 1i, var_0.c.x), vec2<u32>(u_input.b >> (u_input.c % 32u), ~_wgslsmith_div_u32(u_input.d.x, 1u)), select(!select(var_0.c, var_1.zz, var_1.xz), !var_1.wz, false)));
    global0 = Struct_3(u_input.c, func_3(_wgslsmith_sub_vec2_i32(vec2<i32>(-12199i << (u_input.a.x % 32u), var_0.a), vec2<i32>(40555i << (u_input.b % 32u), abs(56886i))), var_2.x, !select(!var_0.c, !var_0.c, all(vec2<bool>(global1[_wgslsmith_index_u32(var_3.a.b.x, 18u)], global0.b))), select(_wgslsmith_sub_vec2_u32(~u_input.d.yx, u_input.d.xz ^ var_0.b), vec2<u32>(~4294967295u, _wgslsmith_sub_u32(62059u, 0u)), false)));
    return !(max(var_3.a.a, var_0.a) == _wgslsmith_clamp_i32(7740i, reverseBits(-17227i), 36267i));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: Struct_1) -> vec4<bool> {
    global2 = !arg_2.c.x;
    global1 = array<bool, 18>();
    let var_0 = ~(~arg_2.b);
    var var_1 = any(vec4<bool>(all(vec2<bool>(!global1[_wgslsmith_index_u32(23621u, 18u)], !global1[_wgslsmith_index_u32(4294967295u, 18u)])), any(!select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(global0.a, 18u)], arg_2.c.x, false), vec4<bool>(true, arg_0.b, true, false), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 18u)], true, arg_0.b, true))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.a, 35022u & reverseBits(arg_1.x)), 18u)], func_2()));
    var var_2 = ~(-(~vec2<i32>(arg_2.a, arg_2.a))) << (vec2<u32>(firstTrailingBit(19276u), max(27453u, _wgslsmith_dot_vec2_u32(max(u_input.a, u_input.d.zy), firstTrailingBit(vec2<u32>(u_input.b, arg_1.x))))) % vec2<u32>(32u));
    return !vec4<bool>(true, -2147483647i >= arg_2.a, !arg_2.c.x || arg_0.b, arg_2.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(!(!any(func_1(Struct_3(global0.a, global1[_wgslsmith_index_u32(0u, 18u)]), vec4<u32>(global0.a, global0.a, 39461u, global0.a), Struct_1(58784i, vec2<u32>(20158u, 1u), vec2<bool>(global1[_wgslsmith_index_u32(7331u, 18u)], global0.b))))), ~global0.a != (4294967295u & u_input.b));
    global1 = array<bool, 18>();
    let var_1 = Struct_2(Struct_1(2147483647i >> (~(u_input.a.x << (15706u % 32u)) % 32u), abs(~_wgslsmith_div_vec2_u32(vec2<u32>(22036u, 18872u), u_input.a)), func_1(Struct_3(~u_input.c, true), countOneBits(~vec4<u32>(1u, u_input.b, 16211u, 0u)), Struct_1(_wgslsmith_clamp_i32(1i, 0i, -1i), u_input.a, vec2<bool>(global0.b, false))).yy));
    var var_2 = var_1.a;
    let var_3 = ~(~reverseBits(vec4<u32>(~global0.a, 0u, ~57759u, ~62034u)));
    var_2 = Struct_1(~1i, var_3.wy, vec2<bool>(var_1.a.c.x, true));
    let var_4 = vec4<f32>(1f, 1f, 1f, 1f);
    global1 = array<bool, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(firstTrailingBit(_wgslsmith_mult_u32(~u_input.c, ~var_3.x)), 4294967295u, var_1.a.b.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-348f, var_4.x, -655f, var_4.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1198f, var_4.x, var_4.x, var_4.x) - var_4)), any(vec2<bool>(true, true)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, _wgslsmith_f_op_f32(-var_4.x), var_4.x, _wgslsmith_div_f32(var_4.x, -410f)) - _wgslsmith_f_op_vec4_f32(var_4 - _wgslsmith_f_op_vec4_f32(var_4 + var_4)))), _wgslsmith_f_op_f32(max(var_4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x + 785f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_4.x)))))));
}

