struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<f32>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec2<f32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-506f, -1698f)), _wgslsmith_f_op_f32(round(-965f)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(step(307f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-665f, 1340f)))))));
    global0 = ~vec3<u32>(0u, countOneBits(~4294967295u), global0.x);
    let var_1 = true;
    var var_2 = select(vec4<bool>((u_input.a > 47026i) | var_1, all(vec4<bool>(true, var_1, var_1 & false, true)), !any(select(vec3<bool>(var_1, var_1, false), vec3<bool>(false, var_1, true), var_1)), true), select(!vec4<bool>(var_0.x > var_0.x, select(false, var_1, var_1), false | var_1, all(vec4<bool>(var_1, true, var_1, true))), select(vec4<bool>(var_1, false, !var_1, all(vec3<bool>(false, var_1, var_1))), !(!vec4<bool>(var_1, var_1, var_1, false)), vec4<bool>(true, true | var_1, global0.x <= 4294967295u, !var_1)), false), any(select(vec2<bool>(var_1, u_input.b < u_input.c.x), !(!vec2<bool>(true, var_1)), var_1 && true)));
    let var_3 = 19582u >> (firstTrailingBit(4294967295u) % 32u);
    return _wgslsmith_f_op_vec2_f32(-var_0.yx);
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_2) -> i32 {
    let var_0 = Struct_1(arg_2.b.a, arg_2.b.b);
    global1 = arg_2.a && any(vec2<bool>(!all(vec4<bool>(arg_2.b.b.x, arg_2.b.b.x, arg_2.a, false)), arg_2.b.b.x));
    var var_1 = Struct_3(vec3<bool>(var_0.b.x, !all(vec3<bool>(true, var_0.b.x, var_0.b.x)), true));
    var var_2 = arg_2.b.a.x;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1332f, var_0.a.x))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(arg_2.c.wx, var_0.a.yz, var_0.b))))) * _wgslsmith_div_vec2_f32(vec2<f32>(arg_2.c.x, _wgslsmith_f_op_f32(step(-733f, arg_2.c.x))), _wgslsmith_div_vec2_f32(var_0.a.wx, _wgslsmith_f_op_vec2_f32(-var_0.a.wx)))));
    return -22141i;
}

fn func_1() -> u32 {
    var var_0 = u_input.c & ~select(vec4<i32>(2147483647i, u_input.c.x, ~u_input.d.x, 2147483647i >> (global0.x % 32u)), u_input.c, true);
    var var_1 = Struct_3(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true));
    var var_2 = ~(-1i & (abs(~13351i) & func_2(0i, firstTrailingBit(global0.yy), Struct_2(true, Struct_1(vec4<f32>(149f, 1045f, 918f, 1984f), vec2<bool>(var_1.a.x, false)), vec4<f32>(1199f, 1138f, -945f, -399f), var_0.x, vec2<u32>(49258u, 3975u)))));
    var_2 = 15019i;
    var var_3 = reverseBits(_wgslsmith_mult_u32(abs(select(global0.x, 1u, var_1.a.x)), firstTrailingBit(0u))) >> (1u % 32u);
    return _wgslsmith_div_u32(min(4294967295u, 1u) << (1u % 32u), 3368u) & countOneBits(global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = max(_wgslsmith_mod_vec3_u32(~(~(~vec3<u32>(9937u, global0.x, global0.x))), vec3<u32>(1u ^ (global0.x ^ global0.x), ~func_1(), _wgslsmith_dot_vec4_u32(~vec4<u32>(50474u, 9425u, global0.x, 21407u), vec4<u32>(16632u, 64200u, 0u, global0.x)))), abs(vec3<u32>(~_wgslsmith_mod_u32(41580u, 4294967295u), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(global0.x, 23656u, 11440u, global0.x)), ~vec4<u32>(7814u, global0.x, global0.x, global0.x)), global0.x)));
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1294f, 280f, 517f, 823f) - vec4<f32>(2428f, -2436f, 664f, 1000f)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-302f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) * _wgslsmith_f_op_f32(-1693f + -2055f)), var_0.x))));
    let var_1 = Struct_2(true, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1105f), _wgslsmith_div_f32(var_0.x, var_0.x), 210f, _wgslsmith_f_op_vec2_f32(func_3()).x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-950f, 197f, var_0.x, var_0.x))))), vec2<bool>(true, any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1169f, var_0.x, 715f, -187f) * vec4<f32>(var_0.x, var_0.x, -1000f, var_0.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(360f - -1000f), -760f, _wgslsmith_f_op_f32(999f + 1558f), _wgslsmith_f_op_f32(-989f + var_0.x))))), u_input.a, ~(~(~firstTrailingBit(global0.yx))));
    global0 = _wgslsmith_div_vec3_u32(min(~vec3<u32>(var_1.e.x, global0.x | var_1.e.x, countOneBits(1u)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, 107922u, 0u), min(vec3<u32>(37253u, var_1.e.x, 4294967295u), vec3<u32>(global0.x, global0.x, var_1.e.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(77862u, global0.x, var_1.e.x), vec3<u32>(57658u, global0.x, var_1.e.x), vec3<u32>(var_1.e.x, var_1.e.x, global0.x))) & vec3<u32>(var_1.e.x, 1u, var_1.e.x | global0.x)), ~abs(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.x, global0.x, var_1.e.x), vec3<u32>(39107u, 27531u, 1u)), ~vec3<u32>(16973u, var_1.e.x, global0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-(~1i), abs(u_input.c.x & 1i)));
}

