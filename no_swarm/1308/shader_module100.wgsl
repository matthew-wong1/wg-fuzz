struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1i);

var<private> global1: vec3<i32>;

var<private> global2: vec4<i32> = vec4<i32>(i32(-2147483648), 38418i, 2147483647i, 46165i);

var<private> global3: array<vec4<i32>, 28>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_1(abs(~global2.x));
    var var_1 = -_wgslsmith_sub_vec2_i32(vec2<i32>(0i, _wgslsmith_sub_i32(var_0.a, ~global2.x)), vec2<i32>(_wgslsmith_clamp_i32(min(global0.a, -29755i), _wgslsmith_div_i32(u_input.b, 2147483647i), ~global0.a), u_input.c.x));
    var var_2 = Struct_1(-(~_wgslsmith_sub_i32(2147483647i, 1i)));
    var var_3 = 36209u;
    var_3 = _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.e), u_input.d.xz);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(360f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 236f) * _wgslsmith_div_f32(911f, -346f)), select(false, true, true)))) * 126f);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<u32>) -> bool {
    let var_0 = arg_0.x;
    global3 = array<vec4<i32>, 28>();
    global0 = Struct_1(-30260i);
    let var_1 = Struct_1(_wgslsmith_sub_i32(0i, 2147483647i));
    global2 = -(~vec4<i32>(var_1.a, _wgslsmith_div_i32(_wgslsmith_mult_i32(-7089i, var_1.a), global0.a), -(i32(-1i) * -1i), global2.x));
    return _wgslsmith_f_op_f32(min(-240f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1060f * _wgslsmith_f_op_f32(936f + -242f))))) == _wgslsmith_f_op_f32(240f * _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(func_3(u_input.e, 83124u | u_input.e, Struct_1(u_input.b))), false && any(arg_0.wy))));
}

fn func_1() -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-500f, 336f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-651f, 638f)))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-804f, -266f))))), vec2<bool>(false, all(vec3<bool>(true, true, true)))))));
    let var_1 = Struct_1(~max(abs(44566i), select(global2.x << (4294967295u % 32u), i32(-1i) * -53339i, any(vec4<bool>(true, true, true, true)))));
    let var_2 = !any(!(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true))));
    var var_3 = vec4<bool>(!(var_0.x >= var_0.x), all(!vec2<bool>(true, var_2)), func_2(select(vec4<bool>(any(vec2<bool>(false, true)), true & var_2, any(vec4<bool>(true, var_2, var_2, var_2)), true), !select(vec4<bool>(var_2, var_2, false, var_2), vec4<bool>(false, var_2, var_2, var_2), var_2), (-23596i | u_input.b) >= global0.a), firstTrailingBit(max(vec2<u32>(u_input.e, 4294967295u), u_input.d.xx) << (vec2<u32>(u_input.e, 0u) % vec2<u32>(32u)))), any(!(!vec2<bool>(var_2, true))));
    var var_4 = !vec2<bool>(!var_3.x, false);
    return ~min(countOneBits(_wgslsmith_add_vec3_i32(-vec3<i32>(45722i, global1.x, -2147483647i), select(vec3<i32>(-48564i, global0.a, u_input.c.x), vec3<i32>(2147483647i, 1i, 60016i), var_3.x))), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, 47681i, global2.x), -global2.wxx), reverseBits(global2.zwy)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    global0 = Struct_1(~global2.x);
    var var_1 = u_input.c.zx;
    global1 = global2.zxy;
    var var_2 = u_input.d;
    var var_3 = var_2.xx ^ u_input.d.yy;
    global1 = _wgslsmith_mult_vec3_i32(~func_1() << (countOneBits(~_wgslsmith_mod_vec3_u32(u_input.d, vec3<u32>(var_2.x, u_input.d.x, u_input.d.x))) % vec3<u32>(32u)), countOneBits(vec3<i32>(_wgslsmith_sub_i32(u_input.c.x, -9397i ^ global2.x), ~(-29857i) << (var_3.x % 32u), global2.x)));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1374f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(246f, 1260f) - -320f)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

