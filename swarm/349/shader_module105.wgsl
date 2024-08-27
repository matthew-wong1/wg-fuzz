struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

var<private> global1: array<Struct_1, 5>;

var<private> global2: Struct_1;

var<private> global3: array<vec3<f32>, 12> = array<vec3<f32>, 12>(vec3<f32>(-588f, -1442f, 1039f), vec3<f32>(1293f, -1000f, -1676f), vec3<f32>(-1713f, 1452f, -1386f), vec3<f32>(-1706f, 550f, 1371f), vec3<f32>(1102f, 300f, -115f), vec3<f32>(1101f, -248f, 330f), vec3<f32>(-428f, -1088f, 1000f), vec3<f32>(687f, -424f, 364f), vec3<f32>(-1194f, -1000f, 1142f), vec3<f32>(-531f, -506f, 1703f), vec3<f32>(-851f, -1098f, -493f), vec3<f32>(-1000f, 1000f, 127f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> vec2<bool> {
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    var var_0 = !arg_0.a;
    global0 = array<Struct_1, 1>();
    return !vec2<bool>(var_0.x, false);
}

fn func_3(arg_0: vec2<bool>) -> vec3<bool> {
    var var_0 = vec2<i32>(u_input.b, 2147483647i);
    var var_1 = vec2<bool>(arg_0.x, true);
    var var_2 = Struct_1(vec4<bool>(func_2(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(28260u, 48035u), 1u)], true, u_input.b & -29255i).x || (!arg_0.x || (true & global2.a.x)), false, global2.a.x, all(select(vec2<bool>(global2.a.x, global2.a.x), arg_0, func_2(Struct_1(global2.a), var_1.x, -29078i)))));
    global0 = array<Struct_1, 1>();
    var var_3 = global1[_wgslsmith_index_u32(0u, 5u)];
    return !select(select(!var_3.a.wzw, select(var_2.a.zyw, global2.a.yxx, select(var_3.a.x, false, false)), !select(var_3.a.yww, var_3.a.zyw, vec3<bool>(global2.a.x, true, var_2.a.x))), !vec3<bool>(true, all(vec3<bool>(var_2.a.x, var_2.a.x, false)), var_1.x), vec3<bool>(var_1.x, any(vec2<bool>(var_2.a.x, var_2.a.x)), all(!global2.a.xx)));
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = i32(-1i) * -2147483647i;
    let var_1 = arg_0.a.xx;
    let var_2 = select(func_3(func_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 0u, 34365u), vec4<u32>(1u, 1u, 1u, 1u)), 5u)], true != all(vec4<bool>(true, arg_0.a.x, arg_0.a.x, global2.a.x)), var_0)), global2.a.wxz, arg_0.a.yxw);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-469f))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global0[_wgslsmith_index_u32(~(~29454u), 1u)];
    let var_0 = !global2.a;
    let var_1 = -1i;
    global2 = Struct_1(var_0);
    var var_2 = _wgslsmith_mod_vec4_i32(-vec4<i32>(countOneBits(2147483647i), u_input.b, firstLeadingBit(2147483647i), 83172i), ~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, var_1, var_1, var_1), vec4<i32>(1i, -19265i, u_input.b, u_input.a))) ^ (_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(1i, u_input.a, u_input.b, u_input.b)), select(vec4<i32>(u_input.b, 39434i, var_1, -2147483647i), -vec4<i32>(32814i, var_1, u_input.a, u_input.a), vec4<bool>(global2.a.x, global2.a.x, true, true)), ~min(vec4<i32>(var_1, var_1, -71793i, u_input.b), vec4<i32>(0i, 0i, u_input.a, -2147483647i))) >> (_wgslsmith_mod_vec4_u32(abs(vec4<u32>(9955u, 20338u, 46072u, 23373u)), vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)));
    var var_3 = var_0.xz;
    global0 = array<Struct_1, 1>();
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(vec4<bool>(true, var_3.x, true, global2.a.x)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -114f), _wgslsmith_f_op_f32(-506f - -1222f)) - -341f), -196f, _wgslsmith_f_op_f32(func_1(Struct_1(select(vec4<bool>(var_0.x, global2.a.x, false, false), vec4<bool>(true, true, false, var_3.x), vec4<bool>(true, true, var_0.x, var_3.x)))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1051f, _wgslsmith_f_op_f32(f32(-1f) * -1441f)), -2336f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-631f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-945f - -1114f))))));
    let var_5 = Struct_1(var_0);
    let x = u_input.a;
    s_output = StorageBuffer(min(vec2<u32>(~39500u, 4294967295u), vec2<u32>(1u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 49868u, 51650u, 4294967295u), vec4<u32>(0u, 1u, 15677u, 78787u)), 104091u))), 0i, _wgslsmith_add_i32(countOneBits(u_input.a) ^ var_2.x, abs(-u_input.b ^ u_input.b)), ~(~firstLeadingBit(21442u)), ~(~(~vec2<u32>(0u, 31114u))) << (vec2<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(1u, 51733u, 25696u)), vec3<u32>(19995u, 91875u, 1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(39853u, 4294967295u, 464u))) % vec2<u32>(32u)));
}

