struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: f32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 8> = array<vec2<i32>, 8>(vec2<i32>(7512i, 2147483647i), vec2<i32>(2147483647i, -13153i), vec2<i32>(19665i, -36821i), vec2<i32>(-86616i, -1i), vec2<i32>(2147483647i, -1i), vec2<i32>(0i, -8142i), vec2<i32>(-1i, 1i), vec2<i32>(98283i, 8182i));

var<private> global1: i32 = -46044i;

var<private> global2: vec2<f32>;

var<private> global3: array<vec3<f32>, 2>;

var<private> global4: array<u32, 29>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec4<bool>, arg_1: bool, arg_2: vec2<bool>) -> bool {
    let var_0 = _wgslsmith_add_i32(~(-2147483647i), ~(~_wgslsmith_mult_i32(select(-1i, 0i, true), ~24022i)));
    global0 = array<vec2<i32>, 8>();
    let var_1 = arg_0.xzy;
    let var_2 = ~vec2<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(5030u, _wgslsmith_mult_u32(0u, global4[_wgslsmith_index_u32(14618u, 29u)])), ~firstTrailingBit(13940u)), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(20984u, 29u)], 29u)]);
    var var_3 = _wgslsmith_mult_u32(~39509u, u_input.a);
    return any(vec2<bool>(true, true));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: i32) -> Struct_2 {
    global4 = array<u32, 29>();
    var var_0 = Struct_1(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(505f))))), true, arg_1);
    let var_1 = ~(i32(-1i) * -_wgslsmith_add_i32(arg_2, arg_2));
    global1 = 9402i;
    global4 = array<u32, 29>();
    return Struct_2(_wgslsmith_div_vec3_u32(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 29u)], 29u)], 54733u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(104775u, 29u)], 29u)]), vec3<u32>(49502u, 0u, u_input.a))) ^ _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1u, 14374u), vec3<u32>(global4[_wgslsmith_index_u32(u_input.a, 29u)], u_input.a, global4[_wgslsmith_index_u32(75995u, 29u)]) & vec3<u32>(global4[_wgslsmith_index_u32(33630u, 29u)], 66085u, u_input.a)), ~vec3<u32>(15858u, u_input.a, _wgslsmith_add_u32(0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 29u)], 29u)]))), vec4<bool>(false, all(vec2<bool>(select(false, var_0.e, true), true)), var_0.a != arg_0, !arg_0), Struct_1(any(select(select(vec4<bool>(arg_1, arg_0, true, true), vec4<bool>(arg_0, false, arg_1, true), arg_0), vec4<bool>(true, true, true, true), select(vec4<bool>(arg_1, arg_0, true, arg_1), vec4<bool>(var_0.e, var_0.a, arg_1, false), false))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.b), _wgslsmith_f_op_vec2_f32(var_0.b * vec2<f32>(global2.x, global2.x)), vec2<bool>(true, true))), 395f, true, !var_0.d));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2) -> vec2<f32> {
    global0 = array<vec2<i32>, 8>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1107f, -556f))))), _wgslsmith_f_op_f32(arg_1.c * _wgslsmith_f_op_f32(max(-909f, 1060f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -697f) * _wgslsmith_div_f32(arg_2.c.c, -2310f)) * _wgslsmith_f_op_f32(-global2.x))));
    let var_1 = arg_2;
    global0 = array<vec2<i32>, 8>();
    var var_2 = var_1;
    return vec2<f32>(global2.x, -519f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = ~4294967295u;
    global2 = vec2<f32>(360f, 655f);
    global0 = array<vec2<i32>, 8>();
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(11687i, Struct_1(true, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-227f, global2.x) + vec2<f32>(727f, 1046f)))), global2.x, any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), false)), func_1(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false)), true, vec2<bool>(true, false))), func_2(select(false, true, true), true, -2147483647i))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(630f, _wgslsmith_f_op_f32(1000f + global2.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global2.x, global2.x))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, global2.x) - vec2<f32>(825f, global2.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(min(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -28541i, -1i), vec3<i32>(2147483647i, 1i, -1i)), vec3<i32>(-35217i, 42258i, 2147483647i)) << (firstLeadingBit(vec3<u32>(var_1, u_input.a, 12557u) >> (vec3<u32>(56315u, 4294967295u, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u))));
}

