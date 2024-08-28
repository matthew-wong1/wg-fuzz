struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: vec3<f32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(true, Struct_2(vec2<bool>(true, true))), Struct_3(false, Struct_2(vec2<bool>(true, false))), Struct_3(false, Struct_2(vec2<bool>(true, false))), Struct_3(true, Struct_2(vec2<bool>(true, true))), Struct_3(false, Struct_2(vec2<bool>(true, true))), Struct_3(false, Struct_2(vec2<bool>(false, true))), Struct_3(false, Struct_2(vec2<bool>(true, true))), Struct_3(true, Struct_2(vec2<bool>(false, false))), Struct_3(true, Struct_2(vec2<bool>(true, false))), Struct_3(false, Struct_2(vec2<bool>(true, true))), Struct_3(true, Struct_2(vec2<bool>(true, false))), Struct_3(true, Struct_2(vec2<bool>(false, false))), Struct_3(true, Struct_2(vec2<bool>(false, true))), Struct_3(false, Struct_2(vec2<bool>(true, false))), Struct_3(true, Struct_2(vec2<bool>(true, true))), Struct_3(true, Struct_2(vec2<bool>(true, false))), Struct_3(true, Struct_2(vec2<bool>(true, true))), Struct_3(false, Struct_2(vec2<bool>(false, false))), Struct_3(false, Struct_2(vec2<bool>(false, false))), Struct_3(false, Struct_2(vec2<bool>(false, false))), Struct_3(true, Struct_2(vec2<bool>(true, false))), Struct_3(true, Struct_2(vec2<bool>(true, false))), Struct_3(false, Struct_2(vec2<bool>(false, false))), Struct_3(true, Struct_2(vec2<bool>(true, true))), Struct_3(true, Struct_2(vec2<bool>(false, true))), Struct_3(false, Struct_2(vec2<bool>(true, false))), Struct_3(true, Struct_2(vec2<bool>(true, true))), Struct_3(true, Struct_2(vec2<bool>(true, true))));

var<private> global2: vec2<f32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: i32) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -115f)), arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1434f * 1327f)), global2.x)), arg_1.b, arg_2);
    return _wgslsmith_sub_i32(~firstTrailingBit(var_0.c), 23955i);
}

fn func_2(arg_0: f32) -> vec2<bool> {
    return select(!global0.a, select(!select(vec2<bool>(false, global0.a.x), !vec2<bool>(global0.a.x, true), global0.a), !(!global0.a), select(false, all(!vec4<bool>(true, global0.a.x, global0.a.x, global0.a.x)), global0.a.x)), vec2<bool>(global0.a.x, any(vec4<bool>(true, true, global0.a.x, global0.a.x))));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    let var_0 = u_input.b.xwx;
    var var_1 = var_0.x;
    global0 = arg_2;
    var var_2 = func_1(vec2<f32>(1f, 1f), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, 835f, global2.x) + vec4<f32>(global2.x, 1465f, -1140f, global2.x))), _wgslsmith_clamp_vec2_u32(u_input.a.zy, _wgslsmith_clamp_vec2_u32(vec2<u32>(3798u, 4532u), u_input.a.wy, vec2<u32>(u_input.a.x, u_input.d)), ~u_input.a.yz), _wgslsmith_mod_i32(max(var_0.x, var_0.x), _wgslsmith_add_i32(2147483647i, -2147483647i))), u_input.b.x) < -1i;
    let var_3 = vec3<i32>(firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_sub_i32(var_0.x | -54412i, -arg_1), ~0i)), _wgslsmith_dot_vec2_i32(~var_0.xx, reverseBits(~vec2<i32>(arg_1, -184i))), firstLeadingBit(7069i));
    return Struct_2(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-210f, _wgslsmith_f_op_f32(max(global2.x, 1251f)), true)) - global2.x)));
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> StorageBuffer {
    global0 = arg_1;
    var var_0 = -10355i;
    return StorageBuffer(u_input.a.yw, _wgslsmith_dot_vec3_i32(-select(u_input.b.wyz, vec3<i32>(48133i, arg_0, u_input.b.x), true) ^ abs(_wgslsmith_clamp_vec3_i32(u_input.b.yzx, vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x), vec3<i32>(arg_0, 1i, u_input.b.x))), u_input.b.yww));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(103f)), 1480f), -467f)));
    global1 = array<Struct_3, 28>();
    var var_0 = 16672u;
    var_0 = 5323u;
    let x = u_input.a;
    s_output = func_4(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, 230f) * vec2<f32>(-1000f, -1712f))))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1029f, -1000f, -585f, global2.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1363f, 715f, 2432f))), vec2<u32>(u_input.d, ~0u), 15731i), -(max(1i, u_input.b.x) ^ u_input.b.x)), func_3(Struct_2(!global0.a), u_input.b.x, Struct_2(func_2(_wgslsmith_f_op_f32(global2.x - 839f)))));
}

