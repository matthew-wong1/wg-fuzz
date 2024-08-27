struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(24361u, 28016u), vec2<u32>(1u, 125421u), vec2<u32>(41128u, 0u), vec2<u32>(1u, 1u), vec2<u32>(0u, 7374u), vec2<u32>(41512u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(95838u, 80181u), vec2<u32>(10473u, 18790u), vec2<u32>(1u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(22437u, 1389u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 22653u), vec2<u32>(4606u, 0u), vec2<u32>(36601u, 1u), vec2<u32>(0u, 79860u));

var<private> global1: u32;

var<private> global2: i32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<f32>(431f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -451f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-288f)) + _wgslsmith_f_op_f32(min(674f, 460f)))))));
    var var_1 = !vec4<bool>(any(vec3<bool>(true, true, true)), any(vec2<bool>(false, false)), false, true);
    global2 = 24254i;
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(375f, _wgslsmith_f_op_f32(-var_0.x), var_0.x))))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(var_0.zx - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.yx - _wgslsmith_div_vec2_f32(var_0.xx, vec2<f32>(var_0.x, -1156f))))), _wgslsmith_mult_vec2_i32(vec2<i32>(-16898i, countOneBits(0i)), -(~vec2<i32>(-20837i, 1i) >> (~u_input.a.xz % vec2<u32>(32u)))));
    return Struct_1(var_2.a, -select(var_2.b & vec2<i32>(-1i, -2147483647i), var_2.b, all(vec4<bool>(var_1.x, var_1.x, true, false))));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32) -> i32 {
    return -min(_wgslsmith_div_i32(arg_1, -_wgslsmith_dot_vec4_i32(vec4<i32>(-552i, 27437i, arg_1, arg_1), vec4<i32>(-10856i, -1i, 4417i, arg_1))), min(-12067i, arg_1));
}

fn func_4(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_1(vec2<f32>(-1879f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1819f), -413f))), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_0, -20001i) >> (vec2<u32>(u_input.a.x << (u_input.a.x % 32u), reverseBits(4294967295u)) % vec2<u32>(32u)), ~(~vec2<i32>(-34124i, 17821i) >> (vec2<u32>(6202u, u_input.a.x) % vec2<u32>(32u)))));
    let var_1 = true;
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, var_0.a.x)))), firstTrailingBit(vec2<i32>(arg_0, 1i)));
    var var_3 = _wgslsmith_f_op_vec2_f32(exp2(func_2().a));
    global2 = min(i32(-1i) * -arg_0, _wgslsmith_sub_i32(-(func_3(vec2<f32>(-392f, 452f), var_2.b.x) << ((1u & u_input.a.x) % 32u)), func_2().b.x));
    return func_2();
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: vec3<u32>, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = arg_1.x;
    global0 = array<vec2<u32>, 17>();
    let var_1 = u_input.a;
    global2 = -24403i;
    var var_2 = func_2();
    return func_4(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1234f * arg_3.x), 1850f)), var_2.b.x));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global1 = 1u;
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-836f, _wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_f32(-arg_0.a.x))), -select(func_1(true, vec2<f32>(491f, arg_0.a.x), u_input.a, arg_0.a).b, vec2<i32>(0i, arg_0.b.x), 4294967295u > u_input.a.x) << (vec2<u32>(~firstTrailingBit(0u), 37151u) % vec2<u32>(32u)));
    global2 = 2576i;
    var var_1 = vec2<bool>(!(!(arg_0.a.x < var_0.a.x)) || all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), 0u >= ~min(u_input.a.x, u_input.a.x));
    var var_2 = true;
    return var_0;
}

fn func_6(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = vec2<bool>(true, true);
    global2 = 0i & arg_2.b.x;
    var var_1 = arg_2;
    var var_2 = false;
    global2 = reverseBits(_wgslsmith_clamp_i32(1i, arg_2.b.x, func_1(true, vec2<f32>(864f, var_1.a.x), u_input.a & u_input.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.a.x, 2271f))).b.x) ^ arg_2.b.x);
    return StorageBuffer(-1000f, _wgslsmith_f_op_f32(-664f + -2130f));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1154f, 1065f), vec2<f32>(-626f, -2025f), true)), _wgslsmith_div_vec2_f32(vec2<f32>(268f, 1284f), vec2<f32>(1000f, 582f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-3935f, 1244f)), vec2<f32>(-1060f, -434f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1447f)))), 1175f), func_5(func_1(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1755f, -466f))) + vec2<f32>(-286f, -989f)), _wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1641f), _wgslsmith_f_op_f32(-1039f * -1000f)))), func_4(_wgslsmith_add_i32(0i, -_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -15386i), vec2<i32>(54840i, 30427i)))));
}

