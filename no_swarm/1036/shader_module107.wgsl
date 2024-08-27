struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec2<i32>(29003i, 1i), Struct_3(true, vec2<i32>(0i, 2147483647i), vec2<f32>(-116f, 171f)));

var<private> global1: array<vec2<bool>, 3>;

var<private> global2: array<u32, 9> = array<u32, 9>(20618u, 4294967295u, 57166u, 65840u, 59588u, 17435u, 1u, 29107u, 35524u);

var<private> global3: array<i32, 21>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = true;
    global1 = array<vec2<bool>, 3>();
    global1 = array<vec2<bool>, 3>();
    var var_1 = Struct_4(_wgslsmith_sub_vec2_i32(~global0.a, global0.a), Struct_3(var_0, firstLeadingBit(select(vec2<i32>(-32324i, 9857i), global0.a, vec2<bool>(arg_1.x, true)) << (~arg_2.a.b % vec2<u32>(32u))), global0.b.c));
    let var_2 = ~(~_wgslsmith_add_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(arg_2.a.b.x, 9u)], arg_2.a.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(34027u, 46587u), arg_2.a.b)), _wgslsmith_mult_vec3_u32(abs(vec3<u32>(u_input.a, global2[_wgslsmith_index_u32(4294967295u, 9u)], 4294967295u)), min(vec3<u32>(global2[_wgslsmith_index_u32(74978u, 9u)], arg_2.a.d, u_input.a), vec3<u32>(u_input.a, arg_2.a.b.x, 97625u)))));
    return Struct_2(Struct_1(any(global1[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(4294967295u, 9u)], 3u)]) || (var_1.b.a & true), firstTrailingBit(arg_2.a.b) >> (~arg_2.a.b % vec2<u32>(32u)), -2147483647i, u_input.a, var_1.b.c.x), select(arg_2.b, vec4<bool>(true, true, true, true), !(_wgslsmith_div_i32(-2147483647i, -84102i) < global3[_wgslsmith_index_u32(~var_2.x, 21u)])));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> i32 {
    var var_0 = arg_1;
    global0 = Struct_4((global0.a & vec2<i32>(~(-40397i), global0.a.x)) >> (var_0.a.b % vec2<u32>(32u)), global0.b);
    let var_1 = _wgslsmith_mult_i32(var_0.a.c, -global0.b.b.x);
    global3 = array<i32, 21>();
    global0 = Struct_4(~global0.b.b, global0.b);
    return -(firstTrailingBit(_wgslsmith_mod_i32(~13986i, _wgslsmith_add_i32(global3[_wgslsmith_index_u32(4294967295u, 21u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.a.b.x, 9u)], 21u)]))) & -arg_0.b.x);
}

fn func_1() -> vec3<bool> {
    global1 = array<vec2<bool>, 3>();
    global2 = array<u32, 9>();
    let var_0 = -(_wgslsmith_mult_i32(~global0.a.x, func_3(Struct_3(false, vec2<i32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(40050u, 9u)], 21u)], 33284i), global0.b.c), func_2(global1[_wgslsmith_index_u32(1u, 3u)], vec2<bool>(global0.b.a, false), Struct_2(Struct_1(true, vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(u_input.a, 9u)]), -1i, u_input.a, global0.b.c.x), vec4<bool>(global0.b.a, false, false, global0.b.a))))) ^ _wgslsmith_mod_i32(~_wgslsmith_clamp_i32(2147483647i, global3[_wgslsmith_index_u32(u_input.a, 21u)], global0.b.b.x), _wgslsmith_sub_i32(global3[_wgslsmith_index_u32(1u, 21u)], global0.b.b.x) >> (~0u % 32u)));
    let var_1 = firstLeadingBit(vec2<i32>(~var_0, i32(-1i) * -4347i));
    global3 = array<i32, 21>();
    return !select(vec3<bool>(any(!vec3<bool>(global0.b.a, false, global0.b.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, global2[_wgslsmith_index_u32(27984u, 9u)]), vec3<u32>(49540u, u_input.a, global2[_wgslsmith_index_u32(0u, 9u)])) <= 0u, any(vec4<bool>(global0.b.a, global0.b.a, global0.b.a, global0.b.a))), vec3<bool>(global0.b.a, any(!vec4<bool>(true, global0.b.a, global0.b.a, global0.b.a)), select(global0.b.a, true, true)), false || any(func_2(global1[_wgslsmith_index_u32(70368u, 3u)], global1[_wgslsmith_index_u32(3474u, 3u)], Struct_2(Struct_1(true, vec2<u32>(1u, global2[_wgslsmith_index_u32(8324u, 9u)]), global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 9u)], 21u)], 1u, global0.b.c.x), vec4<bool>(false, global0.b.a, global0.b.a, true))).b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!(!select(select(vec3<bool>(true, true, global0.b.a), vec3<bool>(global0.b.a, true, global0.b.a), global0.b.a), func_1(), !vec3<bool>(false, global0.b.a, true))), vec3<bool>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1096f)))) == global0.b.c.x, true, global0.b.a), true && any(!(!vec4<bool>(global0.b.a, true, global0.b.a, global0.b.a))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 547f))) - -212f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.c.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(114f))))));
    var var_2 = _wgslsmith_f_op_f32(select(global0.b.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-217f * 414f), 192f, 1282f < global0.b.c.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1568f)) - global0.b.c.x), global0.b.a));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(1981f)), 384f, 411f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-891f, _wgslsmith_f_op_f32(-global0.b.c.x), global0.b.c.x) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.c.x, global0.b.c.x, global0.b.c.x)))))));
    var var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-300f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) * -165f)) * var_3.x)));
    let var_5 = all(var_0);
    global1 = array<vec2<bool>, 3>();
    let var_6 = !var_5;
    let var_7 = ~8280u;
    let x = u_input.a;
    s_output = StorageBuffer(-abs(global0.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1563f, global0.b.c.x, -127f), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, -219f, 1000f) - vec3<f32>(297f, 1588f, global0.b.c.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(473f, 1056f, global0.b.c.x) * vec3<f32>(-489f, 653f, global0.b.c.x))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(370f, 1749f, 462f), vec3<f32>(global0.b.c.x, global0.b.c.x, var_3.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, 662f, -1122f) - vec3<f32>(global0.b.c.x, -186f, global0.b.c.x))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_3.x, global0.b.c.x, 227f))), all(vec2<bool>(false, var_5))))));
}

