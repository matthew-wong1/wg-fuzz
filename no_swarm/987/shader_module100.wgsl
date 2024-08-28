struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10>;

var<private> global1: vec4<u32>;

var<private> global2: i32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_add_u32(_wgslsmith_mult_u32(arg_1.a.a, ~reverseBits(min(4294967295u, u_input.c.x))), 1u);
    global0 = array<bool, 10>();
    let var_1 = false;
    let var_2 = 1i;
    global1 = vec4<u32>(firstLeadingBit(global1.x), ~(arg_1.c.x << (arg_1.c.x % 32u)), ~28245u, 0u);
    return arg_0.x;
}

fn func_3(arg_0: i32) -> f32 {
    global2 = _wgslsmith_sub_i32(-70706i, _wgslsmith_sub_i32(0i, 2147483647i) & reverseBits(~_wgslsmith_sub_i32(-60411i, arg_0)));
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-955f, -1026f)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1093f, -1095f)))))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -193f), _wgslsmith_f_op_f32(var_0.x + -203f), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -624f)))))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1124f, -1704f, -1280f) * vec3<f32>(var_0.x, -900f, var_0.x)))), vec3<f32>(_wgslsmith_f_op_f32(-411f * var_0.x), -1908f, var_0.x)))));
    var var_2 = Struct_1(_wgslsmith_clamp_u32(~global1.x, 26931u, ~(~40043u) & ~(~u_input.d)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.yz) + _wgslsmith_f_op_vec2_f32(var_0 * var_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 2306f))), var_1.zz)), select(select(!select(vec4<bool>(false, global0[_wgslsmith_index_u32(104336u, 10u)], global0[_wgslsmith_index_u32(global1.x, 10u)], true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 10u)], false, true, global0[_wgslsmith_index_u32(0u, 10u)]), vec4<bool>(false, true, global0[_wgslsmith_index_u32(1u, 10u)], false)), !select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.c.x, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)]), vec4<bool>(global0[_wgslsmith_index_u32(39746u, 10u)], false, true, global0[_wgslsmith_index_u32(u_input.c.x, 10u)]), global0[_wgslsmith_index_u32(1u, 10u)]), global0[_wgslsmith_index_u32(u_input.d & (u_input.d & global1.x), 10u)]), !vec4<bool>(global0[_wgslsmith_index_u32(~0u, 10u)], global0[_wgslsmith_index_u32(0u, 10u)] & false, global0[_wgslsmith_index_u32(max(30909u, global1.x), 10u)], !global0[_wgslsmith_index_u32(u_input.c.x, 10u)]), !select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 10u)], false, true), vec4<bool>(true, global0[_wgslsmith_index_u32(global1.x, 10u)], global0[_wgslsmith_index_u32(83476u, 10u)], global0[_wgslsmith_index_u32(global1.x, 10u)]), global0[_wgslsmith_index_u32(global1.x, 10u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 10u)], global0[_wgslsmith_index_u32(u_input.d, 10u)], global0[_wgslsmith_index_u32(global1.x, 10u)], global0[_wgslsmith_index_u32(14206u, 10u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(u_input.d, 10u)], false), vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.d, 10u)], false), global0[_wgslsmith_index_u32(u_input.d, 10u)]))), -1065f);
    let var_3 = Struct_2(Struct_1(4294967295u, var_2.b, select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 10u)], all(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(u_input.c.x, 10u)])), 4294967295u > u_input.c.x, var_2.c.x), select(select(var_2.c, vec4<bool>(false, global0[_wgslsmith_index_u32(24473u, 10u)], var_2.c.x, var_2.c.x), global0[_wgslsmith_index_u32(4294967295u, 10u)]), vec4<bool>(var_2.c.x, var_2.c.x, global0[_wgslsmith_index_u32(u_input.c.x, 10u)], true), all(vec4<bool>(true, var_2.c.x, false, false))), vec4<bool>(true, true, false, 30670i >= arg_0)), -315f), true, u_input.c);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.d)) - 492f)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<i32>) -> Struct_1 {
    global0 = array<bool, 10>();
    let var_0 = abs(u_input.c.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-653f - -1594f), _wgslsmith_f_op_f32(sign(-1743f)), _wgslsmith_f_op_f32(func_2(vec4<f32>(1000f, 1000f, 1526f, 482f), Struct_2(Struct_1(19343u, vec2<f32>(-340f, -517f), vec4<bool>(global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(1u, 10u)], false, false), -526f), false, u_input.c), Struct_1(0u, vec2<f32>(-806f, -315f), vec4<bool>(global0[_wgslsmith_index_u32(var_0, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)], false, false), -437f)))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(func_3(u_input.b.x)), -1203f))))));
    var var_2 = ~var_0;
    global2 = -57357i;
    return Struct_1(global1.x, var_1.zx, vec4<bool>(!global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~u_input.c.wzz, vec3<u32>(4294967295u, 50776u, 44831u)), 10u)], !global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, var_0), 10u)] && !(arg_1.x != 1i), any(select(vec3<bool>(global0[_wgslsmith_index_u32(18493u, 10u)], true, global0[_wgslsmith_index_u32(1u, 10u)]), vec3<bool>(true, true, global0[_wgslsmith_index_u32(0u, 10u)]), vec3<bool>(false, false, true))) && (~2147483647i >= _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(-16339i, -26744i))), 22867u != var_0), _wgslsmith_f_op_f32(-var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 10>();
    let var_0 = Struct_2(func_1(~vec3<i32>(u_input.e.x, u_input.b.x, u_input.a) >> (abs(~vec3<u32>(4294967295u, 16827u, global1.x)) % vec3<u32>(32u)), firstTrailingBit(u_input.e)), u_input.d >= ~1u, countOneBits(vec4<u32>(u_input.c.x, ~1u, ~_wgslsmith_div_u32(44064u, global1.x), global1.x)));
    global0 = array<bool, 10>();
    global2 = u_input.b.x;
    var var_1 = 5985u;
    let var_2 = vec3<u32>(u_input.d, select(u_input.d, ~_wgslsmith_sub_u32(5031u, var_0.c.x), var_0.b), _wgslsmith_dot_vec4_u32(var_0.c, ~firstLeadingBit(vec4<u32>(u_input.c.x, 0u, global1.x, 0u)))) << (vec3<u32>(_wgslsmith_div_u32(u_input.c.x, global1.x) >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, 87238u), var_0.c.zw) % 32u), abs(21936u), ~4294967295u) % vec3<u32>(32u));
    var var_3 = var_0.a.c.zx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1154f, var_0.a.b.x)), vec3<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_add_i32(i32(-1i) * -2147483647i, ~u_input.e.x))), var_0.a.d, _wgslsmith_f_op_f32(select(var_0.a.d, _wgslsmith_f_op_f32(1088f + -169f), var_0.a.c.x))), -15198i);
}

