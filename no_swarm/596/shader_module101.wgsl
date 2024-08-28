struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: f32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: f32 = 713f;

var<private> global2: f32 = -673f;

var<private> global3: vec2<i32> = vec2<i32>(-40981i, -52138i);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> vec2<u32> {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-global0.x), arg_2.b.x);
    global2 = 1427f;
    let var_0 = arg_2;
    global3 = abs(~(~vec2<i32>(u_input.a, _wgslsmith_div_i32(u_input.a, arg_1))));
    let var_1 = ~(~arg_2.a);
    return ~vec2<u32>(~u_input.c.x, _wgslsmith_div_u32(max(~1u, _wgslsmith_dot_vec2_u32(u_input.c.zz, vec2<u32>(0u, 11356u))), ~u_input.b));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: f32, arg_3: f32) -> vec3<i32> {
    let var_0 = false;
    let var_1 = Struct_1(1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(355f, -889f, arg_3, -631f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1736f, 179f, global0.x, arg_2)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, -194f, global0.x, global0.x) * vec4<f32>(-107f, 1009f, arg_3, arg_2))))), -18563i);
    let var_2 = 1u;
    let var_3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, -501f, arg_3))) - _wgslsmith_div_vec3_f32(var_1.b.wxx, vec3<f32>(_wgslsmith_f_op_f32(-var_1.b.x), arg_2, -674f)))));
    global2 = var_1.b.x;
    return -arg_0.yzy;
}

fn func_1() -> Struct_1 {
    global1 = _wgslsmith_div_f32(global0.x, 863f);
    global1 = 770f;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2494f * global0.x) * -397f);
    let var_0 = firstTrailingBit(~_wgslsmith_div_u32(countOneBits(_wgslsmith_dot_vec2_u32(u_input.c.yx, u_input.c.yx)), _wgslsmith_dot_vec2_u32(func_2(-676i, global3.x, Struct_1(global3.x, vec4<f32>(global0.x, global0.x, 102f, global0.x), u_input.a)), select(u_input.c.yw, u_input.c.yz, vec2<bool>(true, true)))));
    var var_1 = !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(any(vec2<bool>(true, false)), true, global3.x < 5330i, global3.x >= u_input.a)), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true), true);
    return Struct_1(firstLeadingBit(_wgslsmith_dot_vec3_i32(abs(func_3(vec4<i32>(u_input.a, global3.x, -8565i, global3.x), vec4<bool>(var_1.x, false, false, var_1.x), -1752f, 1102f)), firstTrailingBit(~vec3<i32>(global3.x, u_input.a, 0i)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(227f, global0.x)), _wgslsmith_div_f32(716f, 1029f), !var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - 1391f) + _wgslsmith_f_op_f32(select(-105f, 1741f, false))), global0.x, _wgslsmith_f_op_f32(-302f + 1f)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, -465f, 1084f, -413f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1513f, global0.x, global0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-777f, global0.x, global0.x, 1361f))))), -u_input.a);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1) -> i32 {
    global0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(325f, 1362f)))));
    var var_0 = _wgslsmith_f_op_vec2_f32(arg_1.b.zy - vec2<f32>(-751f, _wgslsmith_f_op_f32(f32(-1f) * -1166f)));
    var var_1 = Struct_2(!all(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)))), Struct_1(global3.x, _wgslsmith_f_op_vec4_f32(-func_1().b), _wgslsmith_clamp_i32(22285i, func_3(_wgslsmith_add_vec4_i32(vec4<i32>(-1522i, arg_1.c, 32183i, arg_1.a), vec4<i32>(-17034i, 31090i, -49735i, -2147483647i)), vec4<bool>(true, false, true, true), 665f, var_0.x).x, 0i)), -28889i >> (~u_input.c.x % 32u), arg_1.b.x);
    global2 = -794f;
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d;
    let var_1 = vec3<i32>(max(global3.x, ~(~global3.x)), -func_4(select(u_input.c.xw, max(u_input.c.yx, vec2<u32>(u_input.b, 1u)), all(vec4<bool>(true, false, true, true))), func_1()), ~_wgslsmith_div_i32(_wgslsmith_mult_i32(1i, u_input.a >> (u_input.b % 32u)), u_input.a));
    let var_2 = Struct_2(all(vec3<bool>(false, all(vec2<bool>(true, true)), true)), func_1(), 28990i, 172f);
    global2 = 689f;
    global0 = var_2.b.b.yx;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-598f)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec2<i32>(-1i) * -vec2<i32>(u_input.a, global3.x)) >> (~countOneBits(vec2<u32>(54292u, u_input.b)) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-473f, -794f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(max(global0.x, 910f))), global0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1558f, var_2.b.b.x, 399f, var_2.b.b.x), _wgslsmith_f_op_vec4_f32(-var_2.b.b)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -1254f, global0.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, var_2.d, var_2.d)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(select(var_2.b.b.x, var_2.b.b.x, var_2.a))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -1405f) - _wgslsmith_f_op_f32(global0.x + global0.x)), var_2.b.b.x)), var_2.b.b.xxw, 1u);
}

