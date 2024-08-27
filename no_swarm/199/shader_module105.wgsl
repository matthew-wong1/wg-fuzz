struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec2<f32>,
    c: Struct_1,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25> = array<i32, 25>(1437i, 1i, -40437i, 1i, 2147483647i, 2147483647i, 2147483647i, -26756i, 0i, -1i, -1i, -29719i, 2147483647i, -81620i, 12909i, -66158i, 50269i, -1i, -1i, 2147483647i, 0i, 33092i, -59392i, -73419i, 1i);

var<private> global1: array<bool, 18> = array<bool, 18>(false, true, true, true, true, true, false, false, true, false, true, true, true, true, false, true, false, true);

var<private> global2: Struct_3 = Struct_3(Struct_2(vec3<u32>(36781u, 8205u, 1u), Struct_1(-81126i), Struct_1(9144i)));

var<private> global3: vec2<u32>;

var<private> global4: i32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_2, arg_3: f32) -> i32 {
    global0 = array<i32, 25>();
    var var_0 = all(vec4<bool>(false, any(vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(36223u, 18u)])), true, true)) | (36454u > reverseBits(_wgslsmith_clamp_u32(arg_1, ~12313u, _wgslsmith_sub_u32(global3.x, 4294967295u))));
    let var_1 = arg_3;
    global2 = Struct_3(arg_2);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(459f, -283f)), arg_3)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1228f)))) + var_1) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(279f, -1667f))));
    return global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~firstTrailingBit(3434u), _wgslsmith_mult_u32(global3.x, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.a.x, arg_1, 0u), global2.a.a))), select(arg_2.a.x, firstLeadingBit(global2.a.a.x), any(vec2<bool>(true, all(vec4<bool>(true, false, global1[_wgslsmith_index_u32(arg_1, 18u)], true)))))), 25u)];
}

fn func_2(arg_0: bool) -> Struct_3 {
    let var_0 = 1i == (global2.a.c.a ^ abs(u_input.a >> (global2.a.a.x % 32u)));
    var var_1 = vec3<i32>(43989i, global2.a.c.a, global0[_wgslsmith_index_u32(0u, 25u)]);
    var var_2 = global2.a.c;
    var var_3 = Struct_4(_wgslsmith_mod_i32(1215i, func_3(vec3<bool>(arg_0, arg_0, var_0), select(global3.x, 4294967295u, false), global2.a, _wgslsmith_f_op_f32(-1000f - 905f))) ^ 49586i, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-605f * -1407f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(293f * 611f))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-975f)), _wgslsmith_f_op_f32(f32(-1f) * -270f))), -747f)), Struct_1(var_2.a), ~(~global2.a.a.xz));
    let var_4 = Struct_4(2147483647i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-589f, var_3.b.x), vec2<f32>(642f, 1216f), vec2<bool>(global1[_wgslsmith_index_u32(var_3.d.x, 18u)], arg_0))) - _wgslsmith_f_op_vec2_f32(-var_3.b)) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_3.b.x, var_3.b.x))))))), global2.a.c, vec2<u32>(63369u, _wgslsmith_sub_u32(4517u, 1u)));
    return Struct_3(Struct_2(~countOneBits(global2.a.a), var_4.c, Struct_1(u_input.a >> ((var_3.d.x | 41773u) % 32u))));
}

fn func_1() -> vec2<bool> {
    global2 = func_2(any(!vec4<bool>(true, !global1[_wgslsmith_index_u32(4294967295u, 18u)], true, true)));
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(858f * 1459f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(357f + 1786f) + _wgslsmith_f_op_f32(1274f + 718f))))));
    let var_1 = Struct_3(Struct_2(vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, global2.a.a.x), vec2<u32>(global2.a.a.x, global3.x)), _wgslsmith_mult_u32(~global2.a.a.x, ~96857u), _wgslsmith_mult_u32(1u | global3.x, 1u | global2.a.a.x)), Struct_1(u_input.a), Struct_1(1i)));
    let var_2 = true;
    var var_3 = func_2(~0i <= global0[_wgslsmith_index_u32(~3672u, 25u)]);
    return vec2<bool>((global2.a.c.a > _wgslsmith_clamp_i32(-5040i, firstTrailingBit(global0[_wgslsmith_index_u32(var_3.a.a.x, 25u)]), global2.a.b.a)) | global1[_wgslsmith_index_u32(var_3.a.a.x & 11186u, 18u)], (false && (all(vec3<bool>(global1[_wgslsmith_index_u32(5661u, 18u)], global1[_wgslsmith_index_u32(4294967295u, 18u)], false)) != true)) || true);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_4 {
    return Struct_4(arg_1.a.c.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(2225f * -1385f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(1580f)), _wgslsmith_f_op_f32(-255f - -1114f), global1[_wgslsmith_index_u32(56581u, 18u)] && true)))), arg_1.a.b, vec2<u32>(arg_1.a.a.x, _wgslsmith_dot_vec2_u32(min(arg_3 | vec2<u32>(arg_3.x, 47036u), vec2<u32>(4294967295u, arg_3.x)), ~(arg_1.a.a.yx ^ vec2<u32>(arg_1.a.a.x, 50346u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(537f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(475f))))), -151f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f))));
    let var_1 = global2.a.b;
    var var_2 = ~(global2.a.a | vec3<u32>(~6274u, select(5925u, global3.x >> (1960u % 32u), 0i >= u_input.a), ~(~0u)));
    var var_3 = func_4(select(func_1(), vec2<bool>(global1[_wgslsmith_index_u32(global3.x, 18u)], !global1[_wgslsmith_index_u32(global3.x, 18u)] | global1[_wgslsmith_index_u32(global2.a.a.x, 18u)]), func_1()), func_2(false), func_2(!(!(global1[_wgslsmith_index_u32(global2.a.a.x, 18u)] | true))).a.b, min(vec2<u32>(min(global2.a.a.x, 121006u), _wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, 25248u, global2.a.a.x, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, var_2.x, 1u, 0u), vec4<u32>(1u, global3.x, 0u, 0u)))), vec2<u32>(1u, 1u)));
    global4 = ~global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(0u, _wgslsmith_mod_u32(1u, reverseBits(var_2.x))), 25u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a >> (_wgslsmith_dot_vec2_u32(vec2<u32>(abs(var_2.x), ~var_2.x), vec2<u32>(0u, global3.x) & ~vec2<u32>(1u, var_3.d.x)) % 32u), 0i, _wgslsmith_f_op_f32(-var_3.b.x), _wgslsmith_dot_vec3_u32(global2.a.a, global2.a.a) << (global2.a.a.x % 32u));
}

