struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(1i, -1i);

var<private> global1: Struct_1;

var<private> global2: array<vec2<f32>, 28> = array<vec2<f32>, 28>(vec2<f32>(-649f, 499f), vec2<f32>(-454f, 1274f), vec2<f32>(-1119f, -607f), vec2<f32>(1000f, -1807f), vec2<f32>(1306f, 1718f), vec2<f32>(-1000f, -1140f), vec2<f32>(-707f, -1501f), vec2<f32>(393f, 929f), vec2<f32>(249f, -1152f), vec2<f32>(-1157f, -457f), vec2<f32>(1068f, 113f), vec2<f32>(-1239f, -216f), vec2<f32>(-536f, -208f), vec2<f32>(-1309f, -1158f), vec2<f32>(-1058f, 1918f), vec2<f32>(627f, -106f), vec2<f32>(457f, 260f), vec2<f32>(-302f, -1855f), vec2<f32>(1274f, -407f), vec2<f32>(-263f, -1178f), vec2<f32>(-185f, -1243f), vec2<f32>(-408f, 1000f), vec2<f32>(1000f, 132f), vec2<f32>(-612f, 1322f), vec2<f32>(-738f, 1151f), vec2<f32>(920f, 2191f), vec2<f32>(603f, 960f), vec2<f32>(609f, 221f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> bool {
    global2 = array<vec2<f32>, 28>();
    var var_0 = vec3<f32>(global1.a, _wgslsmith_f_op_f32(max(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) + arg_0.a)))), -1283f);
    var var_1 = Struct_1(-1992f);
    let var_2 = arg_0;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.a, var_1.a, false)))))));
    return any(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_2;
    var var_1 = !(!arg_1.yz);
    let var_2 = select(!(!vec2<bool>(var_1.x, func_2(Struct_1(1000f), global0.x))), !select(select(vec2<bool>(arg_1.x, false), !arg_1.yw, true), !arg_1.wx, var_1.x), arg_1.x);
    let var_3 = reverseBits(abs(select(vec2<u32>(56842u, 2818u), select(vec2<u32>(61027u, u_input.a), vec2<u32>(75679u, u_input.a), false), true) | ~vec2<u32>(42281u, 0u)));
    let var_4 = Struct_1(982f);
    return arg_0;
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - _wgslsmith_f_op_f32(932f * global1.a))))), arg_0.a));
    global1 = func_1(func_1(func_1(arg_0, !select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true)), arg_0), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), false), func_2(arg_0, global0.x) && true), Struct_1(_wgslsmith_f_op_f32(-967f * _wgslsmith_f_op_f32(global1.a - global1.a)))), !vec4<bool>(all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false))), true, false, true), arg_0);
    global0 = -vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(global0.x, global0.x, global0.x) >> (_wgslsmith_div_vec3_u32(vec3<u32>(0u, 4294967295u, 4529u), vec3<u32>(43355u, u_input.a, u_input.a)) % vec3<u32>(32u)), -min(vec3<i32>(1i, 2147483647i, 23415i), vec3<i32>(global0.x, 28721i, global0.x))), _wgslsmith_sub_i32(global0.x, _wgslsmith_mod_i32(49250i, 26299i)) | global0.x);
    global1 = func_1(func_1(func_1(arg_0, vec4<bool>(true, true, true, false), arg_0), select(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), false), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true)), all(vec2<bool>(true, false)))), func_1(func_1(Struct_1(global1.a), vec4<bool>(true, false, false, false), Struct_1(1111f)), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), false), vec4<bool>(true, true, true, true), true), Struct_1(_wgslsmith_f_op_f32(-336f * arg_0.a)))), vec4<bool>(true, all(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), -min(global0.x, -1i) >= _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 29892i, global0.x) ^ vec3<i32>(1i, 1i, global0.x), abs(vec3<i32>(6752i, global0.x, 95462i))), true), Struct_1(-348f));
    global1 = func_1(arg_0, select(vec4<bool>(!all(vec4<bool>(true, true, false, false)), true, true, reverseBits(global0.x) < (-2147483647i | global0.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, all(vec4<bool>(false, true, false, true)))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), global1.a > global1.a)), arg_0);
    return _wgslsmith_mod_u32(4294967295u, 83868u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<f32>, 28>();
    global1 = func_1(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(124f * _wgslsmith_f_op_f32(1199f + -518f)))), !(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), false), vec4<bool>(true, true, true, true), true)), Struct_1(-912f));
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(-global1.a), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global1.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a, global1.a))), -1000f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-273f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - global1.a) + 942f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(-global1.a))), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(floor(global1.a)))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, -369f, global1.a, -963f))))));
    var var_1 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec3<u32>(func_3(func_1(Struct_1(330f), vec4<bool>(true, false, true, true), Struct_1(var_0.x))), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(10871u, u_input.a))), firstLeadingBit(reverseBits(0u)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(var_0 - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, 1000f, var_0.x, var_0.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1565f * -283f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1209f) + 817f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-686f, 851f)) - _wgslsmith_f_op_f32(-global1.a)), var_0.x))), -1i);
}

