struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 31>;

var<private> global1: array<bool, 29>;

var<private> global2: array<Struct_1, 10>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = global2[_wgslsmith_index_u32(min(arg_1.b, arg_1.b), 10u)];
    let var_1 = vec2<bool>(!any(!arg_1.a), all(vec3<bool>(arg_1.a.x, false, true)));
    global1 = array<bool, 29>();
    global1 = array<bool, 29>();
    let var_2 = global2[_wgslsmith_index_u32(arg_1.b, 10u)];
    return select(vec4<bool>(!any(vec3<bool>(true, true, false)), true, false, true && !(!var_1.x)), !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(var_2.a.x, false, arg_1.a.x, var_0.a.x), vec4<bool>(false, global1[_wgslsmith_index_u32(var_0.b, 29u)], false, var_1.x), var_1.x), true), !(!vec4<bool>(var_2.a.x, true, var_0.a.x, false)), vec4<bool>(arg_0.x, true, true, true)), false);
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> f32 {
    global0 = array<vec3<f32>, 31>();
    global0 = array<vec3<f32>, 31>();
    let var_0 = !select(select(!(!vec4<bool>(false, false, true, global1[_wgslsmith_index_u32(37586u, 29u)])), func_3(!vec3<bool>(false, arg_2, arg_0), Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(arg_1.b, 29u)], true, arg_2), arg_1.b)), arg_0), vec4<bool>(false, any(select(arg_1.a, arg_1.a, vec3<bool>(true, false, false))), all(func_3(vec3<bool>(false, arg_1.a.x, arg_2), Struct_1(vec3<bool>(false, true, arg_1.a.x), arg_1.b)).ywz), select(true, arg_0 != false, true)), global1[_wgslsmith_index_u32(~(~(~9942u)), 29u)]);
    return _wgslsmith_f_op_f32(trunc(-475f));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: vec3<f32>) -> vec3<f32> {
    global1 = array<bool, 29>();
    var var_0 = ~(-32940i);
    let var_1 = Struct_1(vec3<bool>(!global1[_wgslsmith_index_u32(0u, 29u)], any(!select(vec2<bool>(global1[_wgslsmith_index_u32(0u, 29u)], false), vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 29u)]), vec2<bool>(true, false))), true), _wgslsmith_mod_u32(1u, 42288u));
    let var_2 = Struct_1(vec3<bool>(!(!var_1.a.x), arg_1.x > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -529f) + arg_2.x), true), ~(abs(~var_1.b) ^ ~_wgslsmith_div_u32(16026u, 47626u)));
    var var_3 = arg_2.x;
    return vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(trunc(183f)), arg_1.x);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: Struct_1) -> u32 {
    global2 = array<Struct_1, 10>();
    global0 = array<vec3<f32>, 31>();
    let var_0 = _wgslsmith_f_op_vec3_f32(func_4(~(-countOneBits(vec4<i32>(u_input.c.x, u_input.b.x, 2147483647i, -30317i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.x, -453f, -633f, 1614f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.x, -875f, 334f, -243f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, 1806f, -1000f) + vec4<f32>(-434f, arg_1.x, 798f, -1170f)))) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(arg_1.x, arg_1.x)), -966f, -448f, _wgslsmith_f_op_f32(abs(-1281f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(438f, arg_1.x, -950f, -644f) + vec4<f32>(arg_1.x, 654f, -341f, 1248f)))))), vec3<f32>(_wgslsmith_f_op_f32(min(1370f, arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - arg_1.x) + -1005f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(true, Struct_1(vec3<bool>(arg_0.a.x, arg_2.x, false), arg_0.b), arg_3.a.x)), -1935f) + 1000f))));
    var var_1 = arg_3;
    let var_2 = Struct_1(select(select(!select(vec3<bool>(global1[_wgslsmith_index_u32(arg_3.b, 29u)], arg_2.x, false), vec3<bool>(true, false, arg_2.x), true), var_1.a, true), arg_3.a, arg_3.a.x), _wgslsmith_mult_u32(arg_0.b, arg_3.b));
    return 80555u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 10>();
    global2 = array<Struct_1, 10>();
    var var_0 = vec4<bool>(global1[_wgslsmith_index_u32(23279u, 29u)], global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), 29u)], any(!(!vec4<bool>(false, global1[_wgslsmith_index_u32(57577u, 29u)], global1[_wgslsmith_index_u32(0u, 29u)], true))), global1[_wgslsmith_index_u32(~(~firstLeadingBit(abs(2246u))), 29u)]);
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(400f, 442f, 1101f, -809f))) + vec4<f32>(-172f, -785f, 1718f, -567f))))));
    global0 = array<vec3<f32>, 31>();
    var var_2 = select(vec3<bool>(true, !var_0.x && global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(func_1(Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(4854u, 29u)], false, true), 4294967295u), var_1.ywx, var_0.ww, global2[_wgslsmith_index_u32(51881u, 10u)]), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 57917u, 46575u), vec3<u32>(129086u, 26261u, 0u))), 29u)], false), var_0.wyy, all(select(select(!vec4<bool>(false, global1[_wgslsmith_index_u32(32918u, 29u)], global1[_wgslsmith_index_u32(0u, 29u)], false), func_3(var_0.xwx, Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(7996u, 29u)], true, var_0.x), 31222u)), true), !(!vec4<bool>(var_0.x, var_0.x, var_0.x, true)), vec4<bool>(global1[_wgslsmith_index_u32(1u, 29u)], !global1[_wgslsmith_index_u32(124133u, 29u)], true, u_input.c.x <= 0i))));
    var_2 = vec3<bool>(var_2.x, select(false, select(false || !var_0.x, all(!vec4<bool>(var_0.x, global1[_wgslsmith_index_u32(4294967295u, 29u)], false, true)), true), all(func_3(!vec3<bool>(true, var_0.x, var_2.x), global2[_wgslsmith_index_u32(1u, 10u)]))), any(vec4<bool>(true, !(var_2.x && global1[_wgslsmith_index_u32(10335u, 29u)]), false, var_0.x)));
    let var_3 = var_1.x;
    var_2 = !var_0.zzy;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(u_input.b), ~firstLeadingBit(_wgslsmith_add_i32(select(u_input.d.x, 20825i, var_2.x), 51575i)), _wgslsmith_dot_vec4_i32(u_input.b, u_input.b));
}

