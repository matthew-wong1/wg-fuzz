struct Struct_1 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23>;

var<private> global1: array<vec2<f32>, 20>;

var<private> global2: Struct_1 = Struct_1(6648u, 1480f);

var<private> global3: array<Struct_1, 8>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> f32 {
    let var_0 = global2.b;
    var var_1 = 0i;
    var_1 = 11759i;
    global3 = array<Struct_1, 8>();
    global0 = array<i32, 23>();
    return global2.b;
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<bool>) -> bool {
    global0 = array<i32, 23>();
    var var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(-15588i & select(_wgslsmith_clamp_i32(0i, u_input.b, u_input.b), min(-2147483647i, global0[_wgslsmith_index_u32(global2.a, 23u)]), arg_1.x), _wgslsmith_dot_vec4_i32(-vec4<i32>(-17040i, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(global2.a, 23u)], -1i) << (~vec4<u32>(global2.a, 0u, 0u, 20648u) % vec4<u32>(32u)), min(vec4<i32>(global0[_wgslsmith_index_u32(global2.a, 23u)], -1i, u_input.b, u_input.b) | vec4<i32>(u_input.b, u_input.b, u_input.b, -24793i), -vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 0i, global0[_wgslsmith_index_u32(1u, 23u)])))), _wgslsmith_mod_vec2_i32(countOneBits(select(vec2<i32>(53193i, -1i), vec2<i32>(global0[_wgslsmith_index_u32(global2.a, 23u)], u_input.b), arg_1.x)) << ((~u_input.a.yx >> (abs(u_input.a.xx) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(~u_input.b, _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(4294967295u, 23u)], -2147483647i)) << (u_input.a.ww % vec2<u32>(32u))), vec2<i32>(-10600i, _wgslsmith_div_i32(countOneBits(global0[_wgslsmith_index_u32(34818u, 23u)]), ~global0[_wgslsmith_index_u32(4294967295u, 23u)])));
    global3 = array<Struct_1, 8>();
    global3 = array<Struct_1, 8>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2430f))) * _wgslsmith_f_op_f32(-global2.b));
    return true;
}

fn func_1(arg_0: u32) -> Struct_1 {
    global3 = array<Struct_1, 8>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(arg_0, _wgslsmith_f_op_f32(exp2(global2.b))), global1[_wgslsmith_index_u32(u_input.a.x, 20u)])) - _wgslsmith_f_op_f32(f32(-1f) * -914f));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_1 = select(select(select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false))), select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 24274i), vec2<i32>(20246i, 0i)) <= (u_input.b ^ global0[_wgslsmith_index_u32(arg_0, 23u)])), !vec3<bool>(func_3(vec4<bool>(true, false, false, false), vec3<bool>(false, true, true)), true, true), vec3<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true))), true, ~arg_0 > (0u >> (u_input.a.x % 32u)))), select(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true)), select(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), vec3<bool>(all(vec2<bool>(false, true)), true, all(vec3<bool>(false, false, false))), true && all(vec3<bool>(false, true, true))), vec3<bool>(true, true, any(vec2<bool>(true, false)))), vec3<bool>(!any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))), true, !any(vec2<bool>(true, true))));
    let var_2 = -(-2147483647i << (select(arg_0, 66063u, false) % 32u));
    return Struct_1(1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1091f, -452f)) + _wgslsmith_f_op_f32(f32(-1f) * -444f)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = 0u;
    var var_1 = ~reverseBits(vec2<i32>(i32(-1i) * -3131i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(arg_1.a, 23u)], -38555i), -66775i)));
    global0 = array<i32, 23>();
    global3 = array<Struct_1, 8>();
    global0 = array<i32, 23>();
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(global2.b, _wgslsmith_f_op_f32(arg_1.b + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1019f * -466f), -1007f, true)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 8>();
    global2 = global3[_wgslsmith_index_u32(~u_input.a.x, 8u)];
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_4(Struct_1(4294967295u, global2.b), func_1(46058u))))), global2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-134f * 1f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1341f), _wgslsmith_f_op_f32(-global2.b))), -260f, global2.b)));
    var var_1 = -(vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(-2147483647i, u_input.b, -30394i)), ~vec3<i32>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)], u_input.b), vec3<i32>(-2147483647i, -31351i, u_input.b)));
    var var_2 = vec4<bool>(true, true, true, !(var_0.x <= -160f) | all(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), false)));
    let var_3 = vec4<bool>((all(var_2.xz) && all(select(vec3<bool>(false, var_2.x, false), vec3<bool>(true, false, false), vec3<bool>(var_2.x, var_2.x, var_2.x)))) || all(!var_2.xwy), false, var_2.x, select(var_2.x, var_2.x, var_2.x));
    global0 = array<i32, 23>();
    var_1 = abs(vec3<i32>(35504i, u_input.b, abs(global0[_wgslsmith_index_u32(33015u, 23u)])));
    global0 = array<i32, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(1u, global2.a, u_input.a.x, u_input.a.x) ^ ~vec4<u32>(70910u, u_input.a.x, global2.a, global2.a)) ^ ~(~(u_input.a | vec4<u32>(global2.a, global2.a, u_input.a.x, u_input.a.x))));
}

