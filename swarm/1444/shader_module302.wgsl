struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(55816u, 86226u);

var<private> global1: array<Struct_3, 22>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32) -> f32 {
    global0 = u_input.c;
    let var_0 = i32(-1i) * -2147483647i;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-176f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1633f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(204f + -1000f), _wgslsmith_f_op_f32(abs(1162f)))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-788f + 810f))))));
}

fn func_2(arg_0: bool) -> Struct_3 {
    global1 = array<Struct_3, 22>();
    var var_0 = Struct_2(Struct_1(-879f, vec4<f32>(_wgslsmith_f_op_f32(func_3(-15255i)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-191f)), _wgslsmith_f_op_f32(193f + -879f), true & arg_0)), _wgslsmith_f_op_f32(max(376f, _wgslsmith_f_op_f32(trunc(-607f)))), 1f), ~u_input.c.x | 1u, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, ~global0.x), abs(vec2<u32>(u_input.c.x, global0.x) >> (vec2<u32>(4294967295u, global0.x) % vec2<u32>(32u))))));
    let var_1 = vec3<bool>(arg_0, arg_0, !(!(arg_0 || arg_0)));
    global1 = array<Struct_3, 22>();
    global0 = vec2<u32>(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(var_0.a.c, global0.x, global0.x, global0.x) & u_input.e), vec4<u32>(~0u, _wgslsmith_add_u32(u_input.b, var_0.a.c), _wgslsmith_div_u32(global0.x, 0u), 3624u)) & 1u, global0.x);
    return Struct_3(countOneBits(-u_input.a));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: vec2<i32>, arg_3: Struct_1) -> bool {
    var var_0 = func_2(true);
    var_0 = func_2(arg_0.x);
    var var_1 = ~vec3<u32>(~(global0.x & arg_3.c) & 1u, _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(~u_input.e.yzy, max(vec3<u32>(arg_3.c, 4294967295u, 4294967295u), vec3<u32>(1u, arg_3.c, 54960u)))), arg_1.x);
    let var_2 = Struct_5(42080u, Struct_4(arg_3, arg_0.x));
    let var_3 = Struct_5(~1u, var_2.b);
    return true;
}

fn func_4(arg_0: bool) -> u32 {
    global1 = array<Struct_3, 22>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-823f + -877f) - _wgslsmith_f_op_f32(max(-1057f, -1000f))), 1333f), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(507f)))), _wgslsmith_f_op_f32(func_3(1i ^ u_input.a))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-405f)))));
    let var_1 = -_wgslsmith_dot_vec2_i32(vec2<i32>(select(min(27762i, u_input.a), select(u_input.a, u_input.a, false), arg_0), -2147483647i), ~(~firstLeadingBit(vec2<i32>(-2147483647i, u_input.a))));
    global0 = _wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u, 0u)), _wgslsmith_clamp_vec2_u32(u_input.d, u_input.e.wy, u_input.e.yx));
    let var_2 = u_input.e.zw;
    return max(47299u, firstTrailingBit(1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(u_input.e, u_input.e >> (vec4<u32>(1u, 4294967295u, u_input.d.x, global0.x) % vec4<u32>(32u))), abs(u_input.d.x & global0.x)), func_4(func_1(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), ~u_input.d, vec2<i32>(u_input.a, 2147483647i) | vec2<i32>(-1350i, u_input.a), Struct_1(-810f, vec4<f32>(-916f, 349f, -1298f, 1462f), u_input.d.x, vec2<u32>(20865u, global0.x)))), true) & reverseBits(firstTrailingBit(~countOneBits(0u)));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1141f - -520f))), vec4<f32>(-1112f, _wgslsmith_f_op_f32(f32(-1f) * -385f), -1434f, 1f), 50501u, firstLeadingBit(u_input.c | u_input.c) | u_input.e.yx));
    var_1 = Struct_2(var_1.a);
    let var_2 = func_2(~global0.x >= global0.x);
    global0 = var_1.a.d;
    var var_3 = u_input.a & -u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.a.a, -1000f), vec2<f32>(-1000f, 1317f))), _wgslsmith_f_op_vec2_f32(-var_1.a.b.yy))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.a, -1392f) + var_1.a.b.wx))) + vec2<f32>(_wgslsmith_f_op_f32(max(var_1.a.a, var_1.a.b.x)), _wgslsmith_f_op_f32(ceil(-287f)))), vec2<bool>(any(vec2<bool>(false, false)), all(vec2<bool>(true, true))))), countOneBits(0i));
}

