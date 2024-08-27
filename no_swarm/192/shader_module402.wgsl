struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(0u);

var<private> global1: array<vec3<u32>, 30> = array<vec3<u32>, 30>(vec3<u32>(1u, 0u, 38077u), vec3<u32>(56671u, 31314u, 4294967295u), vec3<u32>(4294967295u, 34542u, 4294967295u), vec3<u32>(1u, 61330u, 71446u), vec3<u32>(0u, 4294967295u, 22597u), vec3<u32>(44838u, 79625u, 1u), vec3<u32>(4294967295u, 1u, 21534u), vec3<u32>(1u, 0u, 31175u), vec3<u32>(4294967295u, 25883u, 4294967295u), vec3<u32>(0u, 0u, 1u), vec3<u32>(0u, 38003u, 20079u), vec3<u32>(15999u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(1u, 23689u, 51702u), vec3<u32>(42974u, 4294967295u, 23228u), vec3<u32>(31383u, 4294967295u, 4910u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(1u, 0u, 3785u), vec3<u32>(0u, 9254u, 4294967295u), vec3<u32>(78032u, 0u, 9248u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(0u, 1u, 47736u), vec3<u32>(1823u, 33585u, 6966u), vec3<u32>(3783u, 123u, 37493u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(45983u, 0u, 0u), vec3<u32>(1u, 1u, 1u), vec3<u32>(32471u, 18556u, 27879u));

var<private> global2: array<u32, 30> = array<u32, 30>(1u, 49709u, 1u, 1329u, 70692u, 0u, 81820u, 37612u, 5091u, 4294967295u, 0u, 20653u, 4294967295u, 3178u, 79398u, 1u, 4294967295u, 0u, 78176u, 6995u, 76604u, 104056u, 1u, 28593u, 5896u, 28141u, 0u, 54629u, 0u, 0u);

var<private> global3: vec2<f32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> vec4<bool> {
    global1 = array<vec3<u32>, 30>();
    global2 = array<u32, 30>();
    var var_0 = -firstLeadingBit(vec2<i32>(2147483647i, ~729i));
    global3 = vec2<f32>(-547f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global3.x))));
    let var_1 = true;
    return vec4<bool>(true, true, any(!select(vec4<bool>(var_1, var_1, true, var_1), vec4<bool>(var_1, var_1, true, var_1), vec4<bool>(true, false, false, var_1))), false);
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> Struct_1 {
    global1 = array<vec3<u32>, 30>();
    global2 = array<u32, 30>();
    global0 = Struct_2(global0.a);
    global1 = array<vec3<u32>, 30>();
    let var_0 = ~(1u ^ global2[_wgslsmith_index_u32(24717u, 30u)]);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -478f) * _wgslsmith_f_op_f32(-1007f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(f32(-1f) * -444f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1427f)), any(func_3()));
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: bool, arg_3: vec3<f32>) -> f32 {
    global2 = array<u32, 30>();
    var var_0 = func_2(~min(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 30u)] >> (65049u % 32u), 30u)], _wgslsmith_clamp_u32(0u, global0.a, global2[_wgslsmith_index_u32(global0.a, 30u)])) << ((_wgslsmith_mod_u32(min(global0.a, global2[_wgslsmith_index_u32(global0.a, 30u)]), global0.a) & global2[_wgslsmith_index_u32(~1u, 30u)]) % 32u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-205f, -610f, 853f))), vec3<f32>(arg_3.x, -717f, _wgslsmith_f_op_f32(-476f - arg_3.x))));
    var_0 = func_2(_wgslsmith_mult_u32(_wgslsmith_mult_u32(~39908u, firstTrailingBit(_wgslsmith_mod_u32(4294967295u, global0.a))), 71479u), arg_3);
    let var_1 = vec2<bool>(all(select(vec3<bool>(false || arg_2, true, func_3().x), arg_0.zww, func_3().wzz)), func_2(27023u, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_3), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_3))))).c);
    var var_2 = global0.a;
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(~(~(-46529i)), ~u_input.a) & _wgslsmith_add_vec2_i32(min(vec2<i32>(1i, 1i), select(vec2<i32>(u_input.b, u_input.a), vec2<i32>(34371i, -8909i), true)), -reverseBits(vec2<i32>(u_input.a, u_input.b))), ~_wgslsmith_sub_vec2_i32(abs(vec2<i32>(u_input.a, 18931i)), -vec2<i32>(31099i, -2147483647i)) & select(-_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.a), vec2<i32>(25502i, u_input.b)), vec2<i32>(u_input.b, 26041i) >> (abs(vec2<u32>(0u, global0.a)) % vec2<u32>(32u)), true));
    let var_1 = Struct_1(-1801f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global3.x)) - _wgslsmith_f_op_f32(global3.x * global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-143f * global3.x))), _wgslsmith_f_op_f32(func_1(vec4<bool>(u_input.a == 2147483647i, select(true, false, true), all(vec3<bool>(false, true, false)), false), global3.x, global2[_wgslsmith_index_u32(58104u, 30u)] > _wgslsmith_sub_u32(global0.a, global0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-669f, global3.x, global3.x)))))), (~(-1i) ^ var_0.x) <= var_0.x);
    let var_2 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(select(vec4<bool>(false, var_1.c, true, var_1.c), vec4<bool>(false, true, var_1.c, false), var_1.c), _wgslsmith_f_op_f32(ceil(2230f)), true, vec3<f32>(-261f, var_1.b, -449f)))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(vec4<bool>(true, true, var_1.c, false), -812f, false, vec3<f32>(global3.x, -1053f, 618f))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2079f - global3.x), 425f)));
    var var_3 = Struct_2(min(15593u, _wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, global0.a) >> (max(global0.a, global2[_wgslsmith_index_u32(24019u, 30u)]) % 32u), 0u)));
    var_3 = Struct_2(~global0.a);
    let var_4 = ~_wgslsmith_mod_vec3_u32((vec3<u32>(var_3.a, global2[_wgslsmith_index_u32(1u, 30u)], var_3.a) & abs(vec3<u32>(4294967295u, 43591u, global2[_wgslsmith_index_u32(36704u, 30u)]))) << (~_wgslsmith_clamp_vec3_u32(global1[_wgslsmith_index_u32(4294967295u, 30u)], vec3<u32>(global0.a, 0u, global0.a), global1[_wgslsmith_index_u32(0u, 30u)]) % vec3<u32>(32u)), firstLeadingBit(vec3<u32>(~42919u, ~0u, _wgslsmith_add_u32(global2[_wgslsmith_index_u32(0u, 30u)], 1u))));
    let x = u_input.a;
    s_output = StorageBuffer((select(-var_0, _wgslsmith_mod_vec2_i32(var_0, var_0), !vec2<bool>(var_2, false)) & var_0) >> (~vec2<u32>(19794u, global0.a) % vec2<u32>(32u)), -(select(vec4<i32>(u_input.b, -17054i, u_input.b, var_0.x), vec4<i32>(var_0.x, -1i, var_0.x, 7756i) ^ vec4<i32>(var_0.x, var_0.x, u_input.b, var_0.x), true) << (vec4<u32>(~var_3.a, var_3.a, abs(global2[_wgslsmith_index_u32(global0.a, 30u)]), var_4.x >> (1u % 32u)) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-global3.x), global3.x))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -643f)), 494f, 943f)), abs(~vec4<u32>(min(0u, global0.a), ~114141u, ~global0.a, 0u)), var_4.x);
}

