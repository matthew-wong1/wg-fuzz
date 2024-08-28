struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
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

var<private> global0: vec2<u32> = vec2<u32>(1u, 57898u);

var<private> global1: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(i32(-2147483648), vec4<f32>(-474f, -390f, -410f, -403f), false), Struct_1(0i, vec4<f32>(-632f, -620f, -703f, -933f), false), Struct_1(24616i, vec4<f32>(-215f, 833f, 1635f, -1520f), false), Struct_1(-31210i, vec4<f32>(430f, -538f, 252f, -530f), false), Struct_1(i32(-2147483648), vec4<f32>(-397f, -843f, 157f, 1000f), true), Struct_1(38735i, vec4<f32>(257f, 895f, 554f, 1521f), true), Struct_1(0i, vec4<f32>(243f, 2176f, 1036f, -467f), true));

var<private> global2: array<Struct_1, 31>;

var<private> global3: vec2<i32> = vec2<i32>(i32(-2147483648), 0i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = ~(36565u << (0u % 32u));
    var var_1 = global1[_wgslsmith_index_u32(firstTrailingBit(~1u), 7u)];
    let var_2 = reverseBits(-2147483647i);
    let var_3 = -444f;
    return firstLeadingBit(~min(_wgslsmith_sub_i32(-arg_0.a, var_1.a), var_2));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = select(vec4<u32>(u_input.c.x, ~(~(~u_input.c.x)), min(u_input.c.x, u_input.c.x), 1u), u_input.c, vec4<bool>(!select(global3.x >= 14275i, true, true), !arg_0.c && any(!vec4<bool>(false, true, arg_0.c, false)), true, arg_0.c | true));
    var var_1 = -1i;
    global0 = select(~_wgslsmith_div_vec2_u32(vec2<u32>(global0.x, reverseBits(var_0.x)), u_input.c.yz), u_input.c.yy, !all(vec2<bool>(arg_0.c, arg_0.c)));
    let var_2 = global1[_wgslsmith_index_u32(156550u, 7u)];
    var var_3 = 0i;
    return arg_0.b.x;
}

fn func_2() -> i32 {
    global2 = array<Struct_1, 31>();
    var var_0 = Struct_1(global3.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-265f, _wgslsmith_div_f32(-450f, 1629f), _wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(4294967295u, 31u)])), -353f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-144f, -453f, 1876f, 414f))), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), true)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(642f, 879f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -1047f) + _wgslsmith_f_op_f32(128f * 1957f)))) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-177f - -798f))))));
    let var_1 = global1[_wgslsmith_index_u32(~(25204u >> (0u % 32u)), 7u)];
    global3 = _wgslsmith_mult_vec2_i32(u_input.a.wz, reverseBits(u_input.a.xy));
    let var_2 = var_1.a;
    return var_1.a | -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(~(~11955u), global0.x) ^ _wgslsmith_mod_vec2_u32(u_input.c.wy, ~firstTrailingBit(~vec2<u32>(u_input.c.x, 0u)));
    let var_1 = u_input.a.x;
    global0 = ~vec2<u32>(u_input.c.x, 47317u);
    global1 = array<Struct_1, 7>();
    global3 = -(~vec2<i32>(func_1(Struct_1(u_input.b.x, vec4<f32>(222f, -1075f, 877f, 1598f), true)) << (_wgslsmith_div_u32(u_input.c.x, 0u) % 32u), ~func_2()));
    var var_2 = Struct_1(func_2(), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-344f + -667f), -637f, -1000f, _wgslsmith_f_op_f32(1000f * -509f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-796f, -1386f, -168f, -1312f))))))), false);
    global1 = array<Struct_1, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, vec2<i32>(_wgslsmith_mod_i32(abs(0i), global3.x) >> (_wgslsmith_div_u32(_wgslsmith_div_u32(global0.x, global0.x), 1u) % 32u), 15057i), abs(21842u) ^ ~u_input.c.x, 1u);
}

