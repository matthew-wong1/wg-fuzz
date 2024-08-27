struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(4294967295u, vec4<bool>(true, false, false, true)), Struct_1(0u, vec4<bool>(false, true, false, false)), Struct_1(34035u, vec4<bool>(false, false, false, true)), Struct_1(79404u, vec4<bool>(true, false, true, false)), Struct_1(33844u, vec4<bool>(true, false, false, false)), Struct_1(35193u, vec4<bool>(false, true, false, true)), Struct_1(4294967295u, vec4<bool>(true, false, false, true)), Struct_1(14843u, vec4<bool>(false, false, true, true)), Struct_1(0u, vec4<bool>(true, false, false, false)), Struct_1(74964u, vec4<bool>(false, false, true, false)), Struct_1(4294967295u, vec4<bool>(false, false, true, false)), Struct_1(79377u, vec4<bool>(false, false, true, false)));

var<private> global2: array<Struct_1, 20>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: bool) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, -1549f) - vec3<f32>(-1434f, arg_1, 1379f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-511f, 583f, 1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(660f, arg_1, 300f)))), !arg_0))));
    global0 = !(!vec2<bool>(!all(vec3<bool>(false, true, global0.x)), true));
    global1 = array<Struct_1, 12>();
    global2 = array<Struct_1, 20>();
    let var_1 = arg_0;
    return ~_wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -33636i, -44395i, u_input.c), vec4<i32>(u_input.e, 0i, -9008i, u_input.e))), vec2<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(-63096i, -45121i), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, u_input.d), vec2<i32>(2147483647i, 0i), vec2<i32>(u_input.c, -1i))), u_input.e));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-739f * 1118f), _wgslsmith_f_op_f32(ceil(-1139f)))), _wgslsmith_f_op_f32(max(-1623f, 329f)))), -1713f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1022f - -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -343f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(995f, -153f, global0.x)), _wgslsmith_div_f32(1501f, 1000f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-317f, 862f, 1000f, 291f)))))))), !(!vec4<bool>(true, global0.x, 1i == u_input.c, true))));
    let var_1 = var_0.zwy;
    var var_2 = -_wgslsmith_div_i32(~_wgslsmith_add_i32(u_input.d, _wgslsmith_add_i32(u_input.c, u_input.d)), 0i);
    var_2 = -(~(_wgslsmith_sub_i32(u_input.e, u_input.d | u_input.c) ^ -(~u_input.c)));
    global1 = array<Struct_1, 12>();
    return u_input.b.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> f32 {
    let var_0 = vec4<u32>(~arg_0.a, ~arg_0.a, func_3() | func_3(), abs(~30119u));
    let var_1 = Struct_1(min(_wgslsmith_mult_u32(var_0.x, reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(30091u, arg_0.a), var_0.yw))), _wgslsmith_mult_u32(0u, select(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(53285u, var_0.x, 15361u), vec3<u32>(32547u, u_input.a.x, 60350u)), !arg_0.b.x))), !(!(!vec4<bool>(global0.x, global0.x, true, false))));
    let var_2 = -850f;
    global1 = array<Struct_1, 12>();
    let var_3 = Struct_1(1u, vec4<bool>(var_1.b.x, arg_0.b.x, any(select(var_1.b, vec4<bool>(true, true, true, var_1.b.x), !global0.x)), true));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global0.x, -646f, false);
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, countOneBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(52000u, 4294967295u, 55430u, 37544u), vec4<u32>(u_input.b.x, 29693u, u_input.a.x, u_input.b.x))) & 17823u), 12u)];
    global0 = var_1.b.xz;
    var_1 = Struct_1(~var_1.a, !(!(!(!var_1.b))));
    let var_2 = select(var_1.b.zxy, select(!var_1.b.wyw, vec3<bool>(!global0.x, true, global0.x), var_1.b.wyz), !(!(_wgslsmith_f_op_f32(func_2(Struct_1(4294967295u, vec4<bool>(true, var_1.b.x, true, false)), vec4<i32>(0i, var_0.x, var_0.x, 1i))) >= _wgslsmith_f_op_f32(floor(-1284f)))));
    global2 = array<Struct_1, 20>();
    global2 = array<Struct_1, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), ~_wgslsmith_sub_vec4_u32(~reverseBits(vec4<u32>(var_1.a, var_1.a, u_input.a.x, var_1.a)), vec4<u32>(14476u, u_input.a.x, _wgslsmith_clamp_u32(1u, var_1.a, var_1.a), var_1.a)));
}

