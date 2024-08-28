struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 28>;

var<private> global1: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(0i, 23981i, 0i), vec3<i32>(-11322i, -1i, -8831i), vec3<i32>(i32(-2147483648), 12111i, 1i), vec3<i32>(32099i, -66683i, 44700i), vec3<i32>(i32(-2147483648), 2147483647i, 1i), vec3<i32>(-40759i, 28006i, 0i), vec3<i32>(-33402i, 0i, -39594i), vec3<i32>(1i, 0i, 2817i), vec3<i32>(2147483647i, 51468i, 3038i), vec3<i32>(-21116i, 2147483647i, -31091i), vec3<i32>(18370i, -50964i, -30841i), vec3<i32>(2147483647i, 2147483647i, 1i), vec3<i32>(-73598i, -1i, 2147483647i), vec3<i32>(0i, -1i, -15618i), vec3<i32>(-71699i, 1i, 1i), vec3<i32>(-61598i, i32(-2147483648), i32(-2147483648)), vec3<i32>(2147483647i, -35821i, 1i), vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), vec3<i32>(2147483647i, i32(-2147483648), 1i), vec3<i32>(2147483647i, -21142i, -21958i), vec3<i32>(-1i, i32(-2147483648), 0i), vec3<i32>(27831i, -31768i, -25432i), vec3<i32>(i32(-2147483648), 48853i, -3068i), vec3<i32>(i32(-2147483648), -35479i, 1i), vec3<i32>(-22945i, 54377i, 4420i), vec3<i32>(-28834i, 472i, -6344i), vec3<i32>(0i, 0i, i32(-2147483648)), vec3<i32>(-10978i, 0i, 1i), vec3<i32>(15022i, 7230i, -9469i), vec3<i32>(1i, 8889i, 2147483647i), vec3<i32>(-4034i, 1i, -38598i));

var<private> global2: array<Struct_3, 18>;

var<private> global3: Struct_3;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: bool) -> f32 {
    var var_0 = vec2<bool>(arg_2, false);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f * 2157f)));
}

fn func_2(arg_0: Struct_3, arg_1: i32) -> vec3<f32> {
    global3 = global2[_wgslsmith_index_u32(max(52726u, 1u) | (_wgslsmith_dot_vec3_u32(~select(arg_0.b, global3.b, true), ~vec3<u32>(4294967295u, arg_0.b.x, global3.b.x)) | abs(15949u)), 18u)];
    global0 = array<Struct_3, 28>();
    var var_0 = Struct_1(vec3<f32>(-1354f, 457f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), Struct_1(vec3<f32>(-113f, -987f, -1000f)), true)))));
    global3 = Struct_3(Struct_2(abs(arg_0.a.a << (0u % 32u)) & -5283i), ~((firstTrailingBit(vec3<u32>(global3.b.x, 0u, arg_0.b.x)) | ~arg_0.b) & ~global3.b));
    var var_1 = ~(~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global3.b.x, 6693u, global3.b.x, 1u), vec4<u32>(global3.b.x, 83976u, 0u, global3.b.x), vec4<u32>(arg_0.b.x, 28581u, arg_0.b.x, global3.b.x)), vec4<u32>(59727u, 0u, arg_0.b.x, 31307u) >> (vec4<u32>(global3.b.x, global3.b.x, 4294967295u, global3.b.x) % vec4<u32>(32u))) << (1u % 32u));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3(select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false)), Struct_1(_wgslsmith_f_op_vec3_f32(floor(var_0.a))), any(vec4<bool>(true, true, true, true)))), 116f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.x, 442f) - _wgslsmith_div_f32(var_0.a.x, -257f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, -147f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.a, var_0.a) * var_0.a));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(arg_0.b.x, 28u)];
    global2 = array<Struct_3, 18>();
    global2 = array<Struct_3, 18>();
    var var_1 = Struct_2(firstLeadingBit(-28360i));
    var var_2 = 116358u;
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, -128f, arg_1.a.x) - vec3<f32>(544f, -1020f, 346f))) * _wgslsmith_f_op_vec3_f32(func_2(Struct_3(var_0.a, abs(global3.b)), 0i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global0[_wgslsmith_index_u32(min(56144u | _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, global3.b.x, global3.b.x, 62088u), vec4<u32>(1286u, global3.b.x, 64939u, global3.b.x)), ~vec4<u32>(global3.b.x, 0u, global3.b.x, global3.b.x)), global3.b.x), 28u)], Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-577f + 1486f), -307f, _wgslsmith_f_op_f32(ceil(-923f))), vec3<f32>(_wgslsmith_f_op_f32(trunc(-681f)), _wgslsmith_f_op_f32(-300f * 108f), _wgslsmith_f_op_f32(f32(-1f) * -1053f))))));
    var var_1 = global3.b;
    let var_2 = !vec2<bool>(true, !select(var_0.a.x >= -244f, var_0.a.x == -103f, true));
    let var_3 = var_2;
    var var_4 = select(!var_3, vec2<bool>(select(all(vec3<bool>(var_2.x, false, var_3.x)), var_3.x, _wgslsmith_f_op_f32(-var_0.a.x) == var_0.a.x), true), false);
    global1 = array<vec3<i32>, 31>();
    var_4 = select(vec2<bool>(true, true), select(vec2<bool>(var_0.a.x > -738f, var_4.x), select(var_3, select(vec2<bool>(true, var_3.x), !vec2<bool>(var_2.x, var_3.x), var_2), true), select(vec2<bool>(true, true), !vec2<bool>(var_3.x, var_3.x), vec2<bool>(all(vec2<bool>(false, var_2.x)), !var_3.x))), !var_3.x);
    var var_5 = var_3.x & all(!select(!vec4<bool>(false, var_4.x, true, var_2.x), vec4<bool>(false, var_2.x, false, true), select(vec4<bool>(var_2.x, false, false, var_2.x), vec4<bool>(false, true, false, false), false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.x, var_0.a.x) + _wgslsmith_f_op_f32(abs(1045f))))), abs(_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-1i, global3.a.a), _wgslsmith_add_i32(global3.a.a, global3.a.a)), ~vec2<i32>(1i, u_input.b) << ((vec2<u32>(1u, 0u) << (var_1.xy % vec2<u32>(32u))) % vec2<u32>(32u)))), _wgslsmith_clamp_u32(~min(var_1.x, global3.b.x) >> (24486u % 32u), 1u, 26990u), 31666u);
}

