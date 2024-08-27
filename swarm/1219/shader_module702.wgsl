struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 31> = array<vec2<u32>, 31>(vec2<u32>(1u, 4294967295u), vec2<u32>(92763u, 0u), vec2<u32>(4294967295u, 33290u), vec2<u32>(56353u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 13510u), vec2<u32>(4294967295u, 55950u), vec2<u32>(80574u, 21828u), vec2<u32>(0u, 32705u), vec2<u32>(1u, 61440u), vec2<u32>(1u, 4294967295u), vec2<u32>(11323u, 1u), vec2<u32>(1u, 1u), vec2<u32>(0u, 0u), vec2<u32>(0u, 36548u), vec2<u32>(40442u, 9043u), vec2<u32>(4294967295u, 59814u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(18341u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(17566u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 38215u), vec2<u32>(62144u, 5073u), vec2<u32>(6974u, 0u), vec2<u32>(30090u, 47263u));

var<private> global1: Struct_1;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> i32 {
    global1 = arg_1;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) + 594f) + -572f));
    let var_1 = arg_0;
    let var_2 = var_1.b.x;
    var var_3 = Struct_1(vec3<bool>(true, select(!all(arg_1.a), true && global1.a.x, _wgslsmith_div_f32(-1090f, arg_0.c) <= _wgslsmith_f_op_f32(-576f - 134f)), false || !(!global1.a.x)));
    return u_input.b;
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> u32 {
    let var_0 = firstTrailingBit(4294967295u) == ~(~max(~4294967295u, arg_1.b.x << (4294967295u % 32u)));
    let var_1 = vec3<i32>(-u_input.b, -u_input.b, _wgslsmith_div_i32(18440i, abs(-func_3(Struct_2(arg_1.a, vec2<u32>(1996u, arg_1.a.x), -1047f), Struct_1(vec3<bool>(false, true, var_0))))));
    global1 = Struct_1(!global1.a);
    let var_2 = Struct_2(reverseBits(_wgslsmith_mult_vec4_u32(firstTrailingBit(arg_1.a), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(arg_1.a, vec4<u32>(u_input.d, u_input.a.x, u_input.d, 0u)), arg_1.a >> (arg_1.a % vec4<u32>(32u))))), firstTrailingBit(u_input.a) & firstTrailingBit(firstLeadingBit(vec2<u32>(4294967295u, arg_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -307f)));
    let var_3 = vec4<bool>(15747u <= u_input.d, global1.a.x, true, global1.a.x);
    return var_2.b.x;
}

fn func_1() -> Struct_1 {
    global0 = array<vec2<u32>, 31>();
    var var_0 = min(_wgslsmith_dot_vec3_u32(firstTrailingBit(~vec3<u32>(0u, u_input.a.x, 3343u)), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.d) << (vec3<u32>(u_input.a.x, u_input.a.x, u_input.d) % vec3<u32>(32u)), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), _wgslsmith_mod_u32(~u_input.d | (u_input.a.x << (86761u % 32u)), countOneBits(~u_input.a.x))) << ((u_input.a.x ^ _wgslsmith_add_u32(u_input.a.x, func_2(-1370f, Struct_2(vec4<u32>(13437u, 61385u, 35916u, 31886u), u_input.a, -1000f)))) % 32u);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(-1192f, -385f)), _wgslsmith_f_op_f32(select(1777f, -1071f, global1.a.x))) + vec2<f32>(-1000f, 2340f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-337f, 1000f)))), vec2<f32>(_wgslsmith_f_op_f32(trunc(956f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(193f - 690f)))));
    global0 = array<vec2<u32>, 31>();
    var var_2 = u_input.b;
    return Struct_1(vec3<bool>(global1.a.x, all(vec2<bool>(!global1.a.x, false)), u_input.a.x < func_2(1144f, Struct_2(vec4<u32>(u_input.d, 1u, u_input.a.x, 4294967295u), u_input.a, var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_i32(0i, u_input.e);
    var var_1 = func_1();
    var_0 = 1i;
    global0 = array<vec2<u32>, 31>();
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1060f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1417f), _wgslsmith_f_op_f32(-114f - 969f)))), 1309f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -301f)))));
    let var_3 = all(select(select(vec3<bool>(all(vec4<bool>(true, true, var_1.a.x, global1.a.x)), -1711f > var_2.x, !var_1.a.x), vec3<bool>(select(false, global1.a.x, false), all(var_1.a.xx), true), !global1.a.x), !(!(!var_1.a)), select(!global1.a, func_1().a, vec3<bool>(u_input.a.x < 1u, global1.a.x, var_1.a.x))));
    var var_4 = var_1.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1308f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(var_2.x, 1000f))))))), ~(-(vec3<i32>(-33589i, u_input.b, -31518i) >> (vec3<u32>(u_input.a.x, u_input.d, u_input.d) % vec3<u32>(32u)))) & _wgslsmith_mod_vec3_i32(vec3<i32>(0i, ~(-3258i), -6435i), abs(~vec3<i32>(4238i, 4082i, 1i))), 2147483647i);
}

