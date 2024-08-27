struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 9> = array<vec2<bool>, 9>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false));

var<private> global1: bool;

var<private> global2: u32 = 26036u;

var<private> global3: f32;

var<private> global4: vec2<i32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = select(true, all(vec2<bool>(any(vec3<bool>(true, false, true)), any(vec3<bool>(false, true, true)))), !(!(63565i <= arg_0))) && all(vec3<bool>(any(vec3<bool>(true, true, true)), true, true));
    let var_1 = -2147483647i | (reverseBits(-717i) & firstTrailingBit(arg_0 ^ _wgslsmith_dot_vec2_i32(vec2<i32>(global4.x, u_input.a.x), vec2<i32>(-24479i, u_input.a.x))));
    var var_2 = Struct_2(vec2<bool>(false, !var_0), u_input.a.x, Struct_1(-abs(vec2<i32>(var_1, var_1)), !select(!vec3<bool>(true, var_0, false), vec3<bool>(false, var_0, false), vec3<bool>(true, false, var_0))));
    global3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(188f + -249f)) * -1434f), -782f))));
    global2 = 1u;
    return _wgslsmith_div_i32(~firstLeadingBit(arg_0), ~select(select(abs(arg_0), 0i, false), 1i, any(!vec2<bool>(var_2.a.x, true))));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec2<bool>, arg_3: bool) -> vec4<bool> {
    var var_0 = vec2<i32>(-arg_1, ~arg_0.a.x);
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(25948i, arg_0.a.x >> (0u % 32u)), arg_0.a.x, 12397i, -2147483647i), vec4<i32>(_wgslsmith_dot_vec3_i32(max(vec3<i32>(1i, -1i, 3369i), vec3<i32>(-2147483647i, global4.x, global4.x)), vec3<i32>(arg_1, global4.x, -1i)), var_0.x, abs(u_input.a.x), arg_0.a.x)) >> (0u % 32u);
    var var_2 = Struct_2(!(!(!global0[_wgslsmith_index_u32(1u, 9u)])), -func_3(2147483647i), Struct_1(~min(vec2<i32>(global4.x, -1i), select(vec2<i32>(21228i, -2147483647i), vec2<i32>(arg_0.a.x, 15034i), true)), !vec3<bool>(true, true, arg_0.b.x)));
    global4 = u_input.a;
    global0 = array<vec2<bool>, 9>();
    return !vec4<bool>(true, arg_2.x, true, true);
}

fn func_1() -> Struct_1 {
    return Struct_1(_wgslsmith_mult_vec2_i32(min(_wgslsmith_add_vec2_i32(u_input.a, u_input.a), firstTrailingBit(vec2<i32>(global4.x, 2147483647i) | u_input.a)), max(vec2<i32>(~u_input.a.x, u_input.a.x | u_input.a.x), u_input.a)), vec3<bool>(any(vec2<bool>(false, any(vec2<bool>(false, false)))), select(false, !any(vec4<bool>(false, true, true, true)), all(vec3<bool>(true, true, true))), !any(vec3<bool>(false, true, false)) & any(func_2(Struct_1(u_input.a, vec3<bool>(true, true, false)), 29726i, global0[_wgslsmith_index_u32(4294967295u, 9u)], true))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1) -> StorageBuffer {
    var var_0 = arg_0;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-451f, 971f)) - 242f) - -241f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -3318f), _wgslsmith_f_op_f32(1044f * 339f))))), 1071f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1210f, -322f) + _wgslsmith_f_op_f32(trunc(-1000f))))));
    global3 = _wgslsmith_f_op_f32(937f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1177f, -1148f))))));
    return StorageBuffer(i32(-1i) * -arg_0.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -964f, var_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(558f, -427f, 1091f, var_1.x) * vec4<f32>(var_1.x, var_1.x, -224f, var_1.x))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(2002f, 195f, var_1.x, var_1.x), vec4<f32>(var_1.x, -1105f, var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x))), arg_1.c.a.x != 2147483647i)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -545f, _wgslsmith_f_op_f32(round(var_1.x))) - var_1.zxx), var_1.x, vec4<u32>(1u, 1u, 1u, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global4.x >= u_input.a.x;
    let var_0 = vec3<u32>(5635u, 18291u, _wgslsmith_dot_vec3_u32(vec3<u32>(~firstLeadingBit(0u), ~max(22713u, 51453u), ~69029u), vec3<u32>(~1u, 1u, 55475u)));
    var var_1 = var_0;
    let var_2 = Struct_3(countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(0i, global4.x, 42874i), ~global4.x), _wgslsmith_mod_vec2_i32(select(vec2<i32>(u_input.a.x, global4.x), u_input.a, true), vec2<i32>(6354i, -1i) >> (vec2<u32>(4294967295u, var_0.x) % vec2<u32>(32u))))));
    let var_3 = firstLeadingBit(-8951i);
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -382f);
    let x = u_input.a;
    s_output = func_4(var_2, Struct_2(select(global0[_wgslsmith_index_u32(abs(~var_1.x), 9u)], !select(vec2<bool>(true, true), vec2<bool>(false, true), false), true), var_2.a.x, func_1()), Struct_1(abs(func_1().a) >> (~vec2<u32>(var_1.x, 0u) % vec2<u32>(32u)), !vec3<bool>(all(vec3<bool>(false, false, true)), true, true)));
}

