struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: Struct_2 = Struct_2(29959u, vec4<f32>(1463f, -392f, -1527f, -1002f), Struct_1(vec3<i32>(69524i, 37295i, -19610i)), vec2<bool>(true, true));

var<private> global2: f32 = 230f;

var<private> global3: array<vec3<i32>, 15>;

var<private> global4: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec2<u32>, arg_3: i32) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1863f, arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_div_f32(global1.b.x, global1.b.x))) * global1.b.x)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-418f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.a - 2972f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.b.yzw * global1.b.yzy)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.b.wyw - global1.b.xyw))))));
    global4 = !select(vec2<bool>(any(select(vec4<bool>(false, global4.x, false, global1.d.x), vec4<bool>(global1.d.x, global1.d.x, global1.d.x, true), global1.d.x)), true), global1.d, !(!global4.x));
    return vec3<i32>(_wgslsmith_dot_vec3_i32(min(_wgslsmith_mult_vec3_i32(vec3<i32>(global1.c.a.x, global1.c.a.x, -2373i), global3[_wgslsmith_index_u32(1u, 15u)]), min(global1.c.a, _wgslsmith_sub_vec3_i32(global3[_wgslsmith_index_u32(35105u, 15u)], vec3<i32>(-18962i, -50635i, u_input.b)))), (global1.c.a ^ vec3<i32>(u_input.d.x, global1.c.a.x, 73861i)) ^ min(global3[_wgslsmith_index_u32(countOneBits(1u), 15u)], vec3<i32>(arg_3, 2147483647i, -2147483647i))), reverseBits(global1.c.a.x), 2147483647i);
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: vec4<f32>) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(519f)) - arg_1);
    let var_1 = 1440i;
    let var_2 = -3312i;
    global1 = Struct_2(~1u, _wgslsmith_f_op_vec4_f32(-global1.b), Struct_1(~global1.c.a), global1.d);
    global4 = global1.d;
    return _wgslsmith_mod_vec3_i32(func_3(Struct_3(655f), u_input.e.yz, max(~vec2<u32>(u_input.e.x, 2509u), u_input.e.xy), ~(~_wgslsmith_sub_i32(-1i, -22329i))), -vec3<i32>(~global1.c.a.x, -u_input.b, -countOneBits(10017i)));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_3) -> Struct_2 {
    var var_0 = arg_2;
    var var_1 = ~_wgslsmith_mult_vec3_i32(global1.c.a, _wgslsmith_sub_vec3_i32(reverseBits(func_2(Struct_3(-820f), global1.b.x, vec4<f32>(1179f, -773f, global1.b.x, -1286f))), global1.c.a));
    var var_2 = arg_2;
    global4 = select(vec2<bool>(true, -321f >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(1546f * global1.b.x), var_0.a)), select(select(global1.d, global1.d, vec2<bool>(true || global1.d.x, global1.a >= u_input.c)), vec2<bool>(!(arg_1.a.x == var_1.x), global1.d.x), global4.x), !(!(global1.a <= abs(1u))));
    var_1 = _wgslsmith_div_vec3_i32(global3[_wgslsmith_index_u32(global1.a, 15u)], vec3<i32>(-max(i32(-1i) * -1i, u_input.d.x & global1.c.a.x), -66055i, _wgslsmith_add_i32(_wgslsmith_add_i32(firstTrailingBit(-2147483647i), -57244i), -1070i)));
    return Struct_2(firstLeadingBit(~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(31852u, 44475u)), u_input.e.yz)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(arg_2.a + global1.b.x)) + _wgslsmith_f_op_f32(abs(var_2.a))), global1.b.x, var_2.a, -547f), Struct_1(select(~vec3<i32>(var_1.x, arg_0, 1i), -arg_1.a, false != global1.d.x)), vec2<bool>(true, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-1f);
    global1 = func_1(~global1.c.a.x, Struct_1(_wgslsmith_div_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(-13944i, -2147483647i, 2147483647i), global3[_wgslsmith_index_u32(global1.a, 15u)]), abs(abs(vec3<i32>(u_input.d.x, -16050i, 1i))))), Struct_3(_wgslsmith_div_f32(-302f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0))))));
    var var_1 = func_1(_wgslsmith_div_i32(_wgslsmith_sub_i32(max(u_input.b, u_input.d.x), _wgslsmith_mod_i32(u_input.d.x, u_input.b)) << (4294967295u % 32u), ~1i), global1.c, Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(196f - _wgslsmith_f_op_f32(1193f + global1.b.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -631f), _wgslsmith_f_op_f32(trunc(var_0)))))));
    global3 = array<vec3<i32>, 15>();
    let var_2 = _wgslsmith_f_op_f32(floor(-1000f));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_add_u32(1u, ~(~var_1.a)), var_1.a | 1u, _wgslsmith_sub_u32(u_input.e.x, firstLeadingBit(max(4294967295u, 6380u)))), firstLeadingBit(u_input.e), -842f);
}

