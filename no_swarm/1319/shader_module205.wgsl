struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(false, false, false, false)), Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(true, true, true, false)), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(true, false, true, true)));

var<private> global2: array<bool, 12>;

var<private> global3: array<bool, 7>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> f32 {
    global2 = array<bool, 12>();
    let var_0 = Struct_1(!arg_2.a);
    let var_1 = select(select(~arg_1 & -1i, (u_input.c & 19921i) ^ (25140i & arg_1), true) ^ -1i, i32(-1i) * -abs(-652i ^ arg_1), true);
    global0 = Struct_1(vec4<bool>(global3[_wgslsmith_index_u32(u_input.e, 7u)], max(i32(-1i) * -33964i, _wgslsmith_add_i32(var_1, u_input.c)) != var_1, !any(!global0.a.xy), true));
    var var_2 = var_0;
    return _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1547f - -1728f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1000f, 1355f), 2413f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1025f * 745f))))), 912f));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1789f + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1014f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-576f + 1142f), -112f))) * vec3<f32>(_wgslsmith_f_op_f32(func_3(global0.a.x, -u_input.c, Struct_1(vec4<bool>(false, false, false, global2[_wgslsmith_index_u32(29972u, 12u)])))), -108f, 536f)));
    let var_1 = Struct_1(!select(select(!vec4<bool>(true, false, global3[_wgslsmith_index_u32(0u, 7u)], global2[_wgslsmith_index_u32(u_input.a.x, 12u)]), !global0.a, any(global0.a.www)), global0.a, !global0.a.x));
    global0 = var_1;
    let var_2 = ~u_input.d.x;
    var var_3 = _wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(max(u_input.d, vec3<u32>(1u, 36667u, 4294967295u)), _wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(29277u, var_2, 59104u))) ^ var_2, ~firstTrailingBit(0u)), u_input.d.x);
    return all(!global0.a);
}

fn func_4(arg_0: vec3<bool>) -> Struct_1 {
    global1 = array<Struct_1, 11>();
    global1 = array<Struct_1, 11>();
    var var_0 = true;
    global0 = Struct_1(vec4<bool>(true, all(!(!vec4<bool>(arg_0.x, true, true, false))), !any(vec3<bool>(global2[_wgslsmith_index_u32(27298u, 12u)], false, true)), false));
    let var_1 = -1178f;
    return Struct_1(vec4<bool>(true, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 1i, 1i, 26730i), vec4<i32>(-43679i, 12749i, u_input.c, 0i)), vec4<i32>(-1i, -2147483647i, 2147483647i, -2147483647i) >> (vec4<u32>(0u, 33649u, u_input.d.x, u_input.b.x) % vec4<u32>(32u))) > _wgslsmith_add_i32(u_input.c, 0i), false, global2[_wgslsmith_index_u32(max(_wgslsmith_add_u32(u_input.e, 29897u), _wgslsmith_clamp_u32(7593u, ~37483u, 4294967295u)), 12u)]));
}

fn func_1() -> StorageBuffer {
    global1 = array<Struct_1, 11>();
    var var_0 = func_4(select(select(vec3<bool>(all(global0.a.xz), false & global0.a.x, global2[_wgslsmith_index_u32(~u_input.d.x, 12u)]), select(select(global0.a.wyz, vec3<bool>(global0.a.x, global0.a.x, true), vec3<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 12u)], true, true)), !vec3<bool>(global3[_wgslsmith_index_u32(u_input.d.x, 7u)], false, true), !global0.a.wyw), func_2()), !global0.a.wwy, vec3<bool>(!(true | global2[_wgslsmith_index_u32(u_input.e, 12u)]), true, any(global0.a.yz))));
    var var_1 = global1[_wgslsmith_index_u32(abs(u_input.a.x), 11u)];
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2092f, 674f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-167f, -1814f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1393f, 818f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-419f, -2580f) * vec2<f32>(1000f, 436f)), all(var_0.a))) * vec2<f32>(_wgslsmith_f_op_f32(-863f + -645f), _wgslsmith_f_op_f32(f32(-1f) * -1348f))))) * vec2<f32>(616f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -201f)) + _wgslsmith_f_op_f32(f32(-1f) * -187f))));
    var var_3 = select(!global0.a.wyz, var_0.a.wxz, any(select(func_4(func_4(var_1.a.wxz).a.xwx).a, !vec4<bool>(false, var_1.a.x, global3[_wgslsmith_index_u32(11291u, 7u)], global3[_wgslsmith_index_u32(0u, 7u)]), var_1.a)));
    return StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 12>();
    let var_0 = global1[_wgslsmith_index_u32(84334u, 11u)];
    var var_1 = !global0.a.zzz;
    let var_2 = 1000f;
    var var_3 = global1[_wgslsmith_index_u32(899u, 11u)];
    let x = u_input.a;
    s_output = func_1();
}

