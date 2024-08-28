struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: Struct_1,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 13> = array<vec4<i32>, 13>(vec4<i32>(2147483647i, -36246i, 0i, -15784i), vec4<i32>(-2590i, 22865i, 2147483647i, -51266i), vec4<i32>(-1i, i32(-2147483648), 2147483647i, 42998i), vec4<i32>(38972i, -10423i, -39579i, 2147483647i), vec4<i32>(-18637i, 0i, 0i, 1i), vec4<i32>(28325i, 92307i, 4971i, -30578i), vec4<i32>(1i, 2147483647i, -8752i, -24128i), vec4<i32>(i32(-2147483648), -29449i, 1i, -44031i), vec4<i32>(i32(-2147483648), -2307i, 0i, 38334i), vec4<i32>(1i, 9300i, i32(-2147483648), 0i), vec4<i32>(i32(-2147483648), -41185i, 13918i, 0i), vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), 6967i), vec4<i32>(0i, 5428i, i32(-2147483648), -42062i));

var<private> global1: Struct_2;

var<private> global2: array<vec3<u32>, 14> = array<vec3<u32>, 14>(vec3<u32>(43843u, 1u, 1u), vec3<u32>(43740u, 0u, 65912u), vec3<u32>(33978u, 4294967295u, 6613u), vec3<u32>(11724u, 0u, 23831u), vec3<u32>(1u, 1u, 0u), vec3<u32>(0u, 9340u, 0u), vec3<u32>(4294967295u, 13726u, 1u), vec3<u32>(4294967295u, 4793u, 49753u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(0u, 63385u, 11721u), vec3<u32>(6756u, 4294967295u, 22030u), vec3<u32>(3192u, 96364u, 4294967295u), vec3<u32>(1u, 1u, 51086u), vec3<u32>(61802u, 32446u, 35039u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: bool) -> f32 {
    var var_0 = -756f;
    global0 = array<vec4<i32>, 13>();
    var_0 = arg_1.c.a;
    global0 = array<vec4<i32>, 13>();
    let var_1 = ~u_input.b;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(arg_2.a))));
}

fn func_3() -> vec2<i32> {
    var var_0 = -reverseBits(~(~vec2<i32>(global1.d.x, u_input.e.x) | vec2<i32>(global1.d.x, 39781i)));
    let var_1 = global1.c.a;
    global0 = array<vec4<i32>, 13>();
    global1 = Struct_2(!((true | global1.a) & any(vec2<bool>(global1.a, false))), abs(countOneBits(vec3<u32>(4294967295u, _wgslsmith_mod_u32(33162u, 4294967295u), 1u))), Struct_1(global1.c.a), global1.d);
    let var_2 = -101f;
    return -vec2<i32>(firstLeadingBit(~var_0.x), global1.d.x) << (vec2<u32>(firstTrailingBit(_wgslsmith_add_u32(0u, 4294967295u) ^ u_input.b), _wgslsmith_mult_u32(u_input.b, u_input.d.x)) % vec2<u32>(32u));
}

fn func_2(arg_0: i32, arg_1: f32) -> f32 {
    var var_0 = Struct_2(global1.d.x == u_input.e.x, reverseBits(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(global1.b.x, 4294967295u), ~global1.b.x), 14u)] >> (_wgslsmith_mod_vec3_u32(vec3<u32>(global1.b.x, u_input.b, global1.b.x), vec3<u32>(74791u, global1.b.x, 15369u)) % vec3<u32>(32u))), global1.c, func_3());
    let var_1 = ~vec2<u32>(62107u, _wgslsmith_dot_vec3_u32(~(global2[_wgslsmith_index_u32(0u, 14u)] << (vec3<u32>(55719u, 4294967295u, 0u) % vec3<u32>(32u))), vec3<u32>(~64722u, var_0.b.x, 1u)));
    let var_2 = 0u;
    var var_3 = vec3<u32>(1u, var_1.x, _wgslsmith_sub_u32(var_1.x, 31627u) << (reverseBits(1u) % 32u));
    let var_4 = _wgslsmith_sub_u32(var_3.x >> (4294967295u % 32u), 59297u);
    return 209f;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2) -> bool {
    var var_0 = arg_1;
    global2 = array<vec3<u32>, 14>();
    var_0 = arg_2.c;
    global1 = Struct_2(all(select(select(vec2<bool>(false, arg_2.a), select(vec2<bool>(true, false), vec2<bool>(false, global1.a), vec2<bool>(true, false)), true), vec2<bool>(global1.a, any(vec4<bool>(arg_2.a, arg_2.a, arg_2.a, true))), all(!vec4<bool>(arg_2.a, false, true, true)))), u_input.d.zwx, arg_1, vec2<i32>(global1.d.x, _wgslsmith_mult_i32(_wgslsmith_add_i32(-u_input.c.x, -16107i), ~(0i << (arg_2.b.x % 32u)))));
    var var_1 = select(!select(vec2<bool>(global1.a, any(vec3<bool>(false, false, true))), vec2<bool>(any(vec2<bool>(false, arg_2.a)), any(vec4<bool>(true, false, true, true))), select(select(vec2<bool>(false, arg_2.a), vec2<bool>(true, global1.a), arg_2.a), !vec2<bool>(true, global1.a), true)), select(vec2<bool>(all(!vec2<bool>(arg_2.a, arg_2.a)), true), !select(!vec2<bool>(true, global1.a), select(vec2<bool>(false, arg_2.a), vec2<bool>(global1.a, true), global1.a), !arg_2.a), !select(vec2<bool>(true, false), select(vec2<bool>(arg_2.a, true), vec2<bool>(arg_2.a, global1.a), vec2<bool>(true, false)), !vec2<bool>(false, global1.a))), vec2<bool>(any(select(!vec2<bool>(arg_2.a, false), select(vec2<bool>(arg_2.a, global1.a), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(arg_2.a, true), vec2<bool>(global1.a, global1.a), vec2<bool>(true, true)))), true));
    return any(vec2<bool>(false, global1.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(626f, global1.c.a, _wgslsmith_f_op_f32(func_1(vec4<f32>(global1.c.a, -716f, global1.c.a, 186f), Struct_2(global1.a, global2[_wgslsmith_index_u32(66452u, 14u)], global1.c, global1.d), global1.c, global1.a))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 992f, global1.c.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.a, -1780f, global1.c.a) - vec3<f32>(919f, global1.c.a, global1.c.a))))))));
    global2 = array<vec3<u32>, 14>();
    var var_1 = -1597f;
    var var_2 = vec2<bool>(u_input.b >= _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b >> (52304u % 32u), u_input.d.x), vec3<u32>(15560u, 70544u, u_input.b)), !select(false, !(!global1.a), func_4(_wgslsmith_f_op_f32(func_2(u_input.a.x, 474f)), Struct_1(var_0.x), Struct_2(false, global1.b, global1.c, global1.d))));
    global2 = array<vec3<u32>, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(0u, global1.c.a, 729f);
}

