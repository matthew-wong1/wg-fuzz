struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<i32, 27> = array<i32, 27>(-1i, 3384i, 1i, 1i, -43762i, -21016i, 25149i, 3282i, i32(-2147483648), -62238i, -25667i, -20362i, i32(-2147483648), 0i, 2147483647i, 1i, 0i, 9953i, 13755i, -13695i, -13719i, 1i, -1i, 9770i, -50415i, 1i, 28991i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: Struct_2) -> u32 {
    global1 = array<i32, 27>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-arg_0.d.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-994f)))), _wgslsmith_f_op_f32(f32(-1f) * -728f)))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(359f + -957f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.x + _wgslsmith_f_op_f32(f32(-1f) * -1172f)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1320f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(289f * arg_0.d.x) * _wgslsmith_f_op_f32(-global0.x)))));
    var_2 = var_0.x;
    return 1u;
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>) -> vec3<bool> {
    global1 = array<i32, 27>();
    var var_0 = arg_0.e;
    global1 = array<i32, 27>();
    global0 = vec3<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) - _wgslsmith_f_op_f32(max(global0.x, global0.x))), _wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_dot_vec2_i32(arg_1.xx, vec2<i32>(1i, arg_0.a)) >= _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(u_input.a.x, 27u)], global1[_wgslsmith_index_u32(105317u, 27u)]))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x))), 553f);
    var var_1 = -884f;
    return !arg_0.b.c;
}

fn func_4(arg_0: Struct_3) -> vec3<f32> {
    let var_0 = -abs(_wgslsmith_clamp_i32(10889i, firstLeadingBit(global1[_wgslsmith_index_u32(arg_0.d.x, 27u)]), 1i)) & arg_0.b;
    global1 = array<i32, 27>();
    let var_1 = Struct_3(arg_0.a, i32(-1i) * -_wgslsmith_dot_vec3_i32(max(vec3<i32>(1i, global1[_wgslsmith_index_u32(arg_0.d.x, 27u)], var_0), vec3<i32>(-5461i, var_0, 33164i)), vec3<i32>(1i, 12661i, var_0) & vec3<i32>(-12622i, 0i, var_0)), Struct_1(select(vec3<bool>(arg_0.c.c.x || true, false, arg_0.a.c.x), vec3<bool>(arg_0.c.c.x, !arg_0.a.d, arg_0.c.a.x), !all(vec4<bool>(true, false, true, false))), all(vec2<bool>(any(vec2<bool>(arg_0.c.c.x, arg_0.a.c.x)), arg_0.c.b)), vec3<bool>(true, any(!vec4<bool>(arg_0.c.a.x, arg_0.c.d, true, arg_0.a.c.x)), arg_0.a.d), false), arg_0.d, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.x - 721f)))), _wgslsmith_f_op_f32(f32(-1f) * -429f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.e.x - arg_0.e.x), -117f)), _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.e.x)))))));
    let var_2 = !(~(~arg_0.d.x) == ~_wgslsmith_dot_vec3_u32(arg_0.d.yxy, arg_0.d.wwy)) & !(var_1.c.b | var_1.a.d);
    global1 = array<i32, 27>();
    return _wgslsmith_f_op_vec3_f32(-arg_0.e.wxy);
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_3 {
    global1 = array<i32, 27>();
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(238f + -503f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - 509f) * global0.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 1091f, arg_0) - _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, -387f, 1594f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, arg_0, global0.x)))))) + _wgslsmith_f_op_vec3_f32(func_4(Struct_3(Struct_1(vec3<bool>(true, true, true), select(false, false, false), vec3<bool>(false, true, false), false), -2147483647i, Struct_1(func_3(Struct_2(arg_1, Struct_1(vec3<bool>(true, true, true), true, vec3<bool>(false, true, false), true), Struct_1(vec3<bool>(false, true, true), false, vec3<bool>(false, false, true), true), vec4<f32>(-1282f, global0.x, global0.x, 1357f), Struct_1(vec3<bool>(false, false, false), false, vec3<bool>(false, true, false), true)), vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 27u)], 17083i, global1[_wgslsmith_index_u32(0u, 27u)], -19395i)), true, select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), true), ~firstTrailingBit(vec4<u32>(70685u, u_input.a.x, u_input.a.x, 1u)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -220f), _wgslsmith_f_op_f32(abs(399f)), 308f, _wgslsmith_div_f32(-2099f, arg_0))))));
    global1 = array<i32, 27>();
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0 * -1335f))), -294f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + arg_0) + _wgslsmith_f_op_f32(trunc(arg_0)))))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), arg_0)) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(exp2(global0.x)), arg_0, -1000f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-642f, -2462f, global0.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1200f, 862f, -965f) - vec3<f32>(-517f, global0.x, 346f))))), vec3<f32>(global0.x, -1252f, _wgslsmith_f_op_f32(-1f)))));
    return Struct_3(Struct_1(vec3<bool>(all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false))), true, true), true, vec3<bool>(true, true, true), all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true))), -20384i, Struct_1(vec3<bool>(~u_input.a.x < 1u, u_input.a.x <= u_input.a.x, false), any(vec4<bool>(select(true, false, false), true, true, true)), !(!func_3(Struct_2(1i, Struct_1(vec3<bool>(false, true, false), true, vec3<bool>(true, true, false), true), Struct_1(vec3<bool>(true, false, true), true, vec3<bool>(true, false, false), true), vec4<f32>(-723f, -292f, global0.x, -678f), Struct_1(vec3<bool>(false, true, true), false, vec3<bool>(true, false, false), false)), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 27u)], -1i, global1[_wgslsmith_index_u32(u_input.a.x, 27u)], arg_1))), any(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(false, true, true, true), true))), ~_wgslsmith_add_vec4_u32(~(~vec4<u32>(48550u, u_input.a.x, 4294967295u, u_input.a.x)), firstTrailingBit(~vec4<u32>(u_input.a.x, u_input.a.x, 69778u, 12734u))), vec4<f32>(-342f, _wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-497f, global0.x, true)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 27>();
    var var_0 = select(vec2<bool>(any(vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(u_input.a.x, 27u)] >= -12684i)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))), select(!select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, false)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)))), !vec2<bool>(true, any(vec4<bool>(true, true, true, false))), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    let var_1 = ~_wgslsmith_add_vec3_i32(select(_wgslsmith_mult_vec3_i32(vec3<i32>(25422i, -2147483647i, global1[_wgslsmith_index_u32(4294967295u, 27u)]), vec3<i32>(global1[_wgslsmith_index_u32(26786u, 27u)], global1[_wgslsmith_index_u32(u_input.a.x, 27u)], global1[_wgslsmith_index_u32(4294967295u, 27u)])), vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 27u)], global1[_wgslsmith_index_u32(u_input.a.x, 27u)], -41805i) << (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 43123u, 1u), vec3<u32>(4294967295u, 0u, 0u)) % vec3<u32>(32u)), var_0.x), ~(-vec3<i32>(-11936i, 1i, -29311i)) | _wgslsmith_sub_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 27u)], 34770i, -2147483647i), vec3<i32>(1i, 1i, 1i)));
    let var_2 = vec4<u32>(_wgslsmith_sub_u32(~(1u ^ u_input.a.x), u_input.a.x) << (u_input.a.x % 32u), u_input.a.x, countOneBits(abs(func_1(Struct_2(var_1.x, Struct_1(vec3<bool>(false, true, var_0.x), var_0.x, vec3<bool>(false, var_0.x, true), false), Struct_1(vec3<bool>(var_0.x, true, var_0.x), false, vec3<bool>(var_0.x, true, var_0.x), var_0.x), vec4<f32>(1277f, -919f, global0.x, 776f), Struct_1(vec3<bool>(true, false, true), var_0.x, vec3<bool>(false, true, var_0.x), var_0.x))))), ~u_input.a.x);
    let var_3 = func_2(-728f, reverseBits(global1[_wgslsmith_index_u32(1u, 27u)]));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_3.e.x, global0.x, -1202f)))), _wgslsmith_f_op_vec3_f32(var_3.e.xwz + _wgslsmith_f_op_vec3_f32(func_4(var_3))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(var_3.e.x, global0.x, global0.x), vec3<f32>(857f, var_3.e.x, global0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.e.x, 641f, 1068f)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1830f, global0.x, var_3.e.x)), _wgslsmith_f_op_vec3_f32(var_3.e.xzw * _wgslsmith_div_vec3_f32(var_3.e.yyw, vec3<f32>(global0.x, var_3.e.x, 1629f))))) + _wgslsmith_f_op_vec3_f32(-var_3.e.ywy)));
    var var_4 = var_3.e.zyw;
    let x = u_input.a;
    s_output = StorageBuffer(var_2, -47945i, _wgslsmith_f_op_f32(-var_3.e.x), var_3.d.zwy);
}

