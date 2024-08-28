struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1> = array<bool, 1>(false);

var<private> global1: array<Struct_1, 31>;

var<private> global2: array<vec4<f32>, 25>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    global1 = array<Struct_1, 31>();
    let var_0 = vec2<bool>(arg_1.e, false);
    global1 = array<Struct_1, 31>();
    var var_1 = global1[_wgslsmith_index_u32(98104u, 31u)];
    var var_2 = Struct_1(0u, ~vec2<i32>(max(var_1.b.x, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.x, 2147483647i, 0i, arg_2.b.x), vec4<i32>(arg_1.d, arg_1.b.x, 1i, arg_0.x))), _wgslsmith_f_op_f32(step(var_1.c, 1000f)), arg_2.d, all(vec2<bool>(false, true)));
    return !vec3<bool>(!((var_1.b.x >= 0i) && true), select(all(var_0), _wgslsmith_f_op_f32(960f - 1443f) == var_1.c, !any(vec3<bool>(var_1.e, false, false))), false);
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: vec4<i32>) -> f32 {
    var var_0 = select(!(!select(!vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.b.x, 1u)]), !vec3<bool>(true, arg_0.x, false), arg_0.www)), !func_3(-vec4<i32>(-63704i, arg_2.x, arg_2.x, arg_1), Struct_1(firstTrailingBit(u_input.b.x), -u_input.a.yy, _wgslsmith_f_op_f32(f32(-1f) * -732f), -9295i, true), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x | u_input.b.x, ~0u), 31u)]), vec3<bool>(any(vec3<bool>(true, false | global0[_wgslsmith_index_u32(u_input.b.x, 1u)], !global0[_wgslsmith_index_u32(0u, 1u)])), false, select(!all(arg_0.wx), all(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 1u)], arg_0.x)), arg_0.x)));
    let var_1 = vec4<f32>(-526f, _wgslsmith_f_op_f32(-1740f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1849f)) - -719f)), 1427f, -519f);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) - -528f);
}

fn func_1() -> vec2<f32> {
    global1 = array<Struct_1, 31>();
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_2(!select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 1u)], true, true), vec4<bool>(global0[_wgslsmith_index_u32(1u, 1u)], true, false, global0[_wgslsmith_index_u32(u_input.b.x, 1u)]), true), ~(-u_input.a.x), u_input.a)), -2074f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u & u_input.b.x, u_input.b.x, 0u, 89202u), vec4<u32>(1u, u_input.b.x, ~u_input.b.x, _wgslsmith_sub_u32(1u, abs(u_input.b.x)))), 31u)];
    let var_1 = var_0.d;
    var var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1460f * _wgslsmith_f_op_f32(var_0.c * var_0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(919f - var_0.c), var_0.c)) - var_0.c)), _wgslsmith_f_op_vec2_f32(func_1()));
    var var_3 = u_input.a.xy;
    global2 = array<vec4<f32>, 25>();
    var var_4 = Struct_1(u_input.b.x, u_input.a.yz, _wgslsmith_f_op_vec2_f32(func_1()).x, _wgslsmith_dot_vec4_i32(-max(firstLeadingBit(u_input.a), abs(vec4<i32>(12710i, 1i, var_0.b.x, var_0.d))), _wgslsmith_sub_vec4_i32(u_input.a, select(vec4<i32>(2082i, var_3.x, -1i, -21837i), u_input.a, var_0.e) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(35644u, u_input.b.x, u_input.b.x, 0u), vec4<u32>(70073u, 0u, 0u, u_input.b.x)) % vec4<u32>(32u)))), false);
    var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(384f, 1890f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, var_2.x) - vec2<f32>(_wgslsmith_f_op_f32(func_2(vec4<bool>(false, var_0.e, true, false), ~(-22785i), vec4<i32>(-1i, -1i, u_input.a.x, -2147483647i))), -1000f)), true));
    var_3 = vec2<i32>(_wgslsmith_mult_i32(var_4.b.x, u_input.a.x), _wgslsmith_div_i32(-_wgslsmith_sub_i32(countOneBits(var_3.x), var_3.x ^ u_input.a.x), var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1083f) - _wgslsmith_f_op_f32(min(1015f, var_0.c))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec4<bool>(var_4.e, true, false, true), var_4.b.x, vec4<i32>(u_input.a.x, -51050i, -9744i, var_0.b.x))), 831f)) + _wgslsmith_f_op_f32(f32(-1f) * -787f)));
}

