struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(Struct_1(vec2<u32>(54986u, 46227u)), Struct_1(vec2<u32>(24525u, 12430u)), 734f, vec2<u32>(47154u, 0u), Struct_1(vec2<u32>(0u, 4294967295u))), Struct_3(Struct_1(vec2<u32>(26688u, 1u)), Struct_1(vec2<u32>(1u, 16851u)), 1074f, vec2<u32>(44260u, 1u), Struct_1(vec2<u32>(0u, 110183u))), Struct_3(Struct_1(vec2<u32>(37137u, 35359u)), Struct_1(vec2<u32>(82540u, 10537u)), 438f, vec2<u32>(25177u, 1u), Struct_1(vec2<u32>(3934u, 8361u))), Struct_3(Struct_1(vec2<u32>(0u, 2893u)), Struct_1(vec2<u32>(0u, 0u)), 598f, vec2<u32>(38244u, 10985u), Struct_1(vec2<u32>(4294967295u, 86637u))), Struct_3(Struct_1(vec2<u32>(0u, 30875u)), Struct_1(vec2<u32>(4294967295u, 1u)), 1116f, vec2<u32>(1u, 36977u), Struct_1(vec2<u32>(44146u, 47144u))), Struct_3(Struct_1(vec2<u32>(18877u, 3349u)), Struct_1(vec2<u32>(1u, 1u)), 942f, vec2<u32>(36795u, 46727u), Struct_1(vec2<u32>(54894u, 0u))), Struct_3(Struct_1(vec2<u32>(40069u, 18087u)), Struct_1(vec2<u32>(65701u, 39745u)), -840f, vec2<u32>(20920u, 0u), Struct_1(vec2<u32>(1u, 0u))), Struct_3(Struct_1(vec2<u32>(1u, 20782u)), Struct_1(vec2<u32>(23934u, 59328u)), -899f, vec2<u32>(1u, 36911u), Struct_1(vec2<u32>(45560u, 23400u))), Struct_3(Struct_1(vec2<u32>(4294967295u, 10406u)), Struct_1(vec2<u32>(4294967295u, 6694u)), -1578f, vec2<u32>(26086u, 0u), Struct_1(vec2<u32>(61451u, 0u))), Struct_3(Struct_1(vec2<u32>(1u, 39742u)), Struct_1(vec2<u32>(86562u, 49689u)), -994f, vec2<u32>(0u, 27597u), Struct_1(vec2<u32>(21973u, 24604u))), Struct_3(Struct_1(vec2<u32>(4294967295u, 47965u)), Struct_1(vec2<u32>(1u, 93345u)), -538f, vec2<u32>(4294967295u, 61952u), Struct_1(vec2<u32>(1u, 2592u))), Struct_3(Struct_1(vec2<u32>(4294967295u, 68211u)), Struct_1(vec2<u32>(0u, 4294967295u)), 423f, vec2<u32>(53685u, 4294967295u), Struct_1(vec2<u32>(49643u, 4294967295u))), Struct_3(Struct_1(vec2<u32>(0u, 1u)), Struct_1(vec2<u32>(27233u, 1085u)), -1301f, vec2<u32>(27115u, 83312u), Struct_1(vec2<u32>(28500u, 49155u))), Struct_3(Struct_1(vec2<u32>(0u, 51208u)), Struct_1(vec2<u32>(1u, 11984u)), -937f, vec2<u32>(25488u, 4294967295u), Struct_1(vec2<u32>(0u, 1u))), Struct_3(Struct_1(vec2<u32>(1u, 4294967295u)), Struct_1(vec2<u32>(4294967295u, 1178u)), 629f, vec2<u32>(17783u, 0u), Struct_1(vec2<u32>(31338u, 4294967295u))), Struct_3(Struct_1(vec2<u32>(33548u, 1801u)), Struct_1(vec2<u32>(49055u, 39177u)), 2260f, vec2<u32>(63655u, 0u), Struct_1(vec2<u32>(14278u, 1u))));

var<private> global1: vec3<bool>;

var<private> global2: vec2<f32>;

var<private> global3: f32;

var<private> global4: array<f32, 19> = array<f32, 19>(-199f, -329f, -1414f, -815f, -443f, -1034f, 647f, 278f, -753f, -111f, -866f, 2622f, -1000f, 567f, -1072f, 2210f, 1036f, 166f, -726f);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> bool {
    global1 = vec3<bool>(true, global1.x, any(!select(!vec3<bool>(false, global1.x, false), select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(false, global1.x, global1.x), vec3<bool>(false, true, global1.x)), true)));
    var var_0 = 0u;
    let var_1 = u_input.b;
    let var_2 = Struct_3(Struct_1(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(44847u, 4294967295u, u_input.b, var_1), max(vec4<u32>(var_1, 1u, 0u, 1u), vec4<u32>(var_1, var_1, 69930u, u_input.c))), u_input.c)), Struct_1(firstTrailingBit(vec2<u32>(~var_1, u_input.c))), _wgslsmith_f_op_f32(select(global2.x, _wgslsmith_f_op_f32(f32(-1f) * -303f), true)), vec2<u32>(0u, min(abs(34701u), u_input.c >> (1u % 32u))), Struct_1(vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_1, var_1), 50105u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, var_1, var_1), vec3<u32>(0u, u_input.b, var_1))), 89165u)));
    var var_3 = ~(~(var_2.d << (~(~var_2.e.a) % vec2<u32>(32u))));
    return !global1.x;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2) -> vec3<u32> {
    var var_0 = !vec2<bool>(false, !any(!global1.yx));
    var var_1 = arg_0;
    var var_2 = !(!vec3<bool>(true, var_0.x, var_0.x));
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.b.a.x, var_1.e.a.x), 16u)];
    var var_4 = vec4<bool>(all(select(!vec4<bool>(false, var_2.x, true, var_2.x), vec4<bool>(global1.x, false, false, var_0.x), global1.x && false)) & !(any(vec2<bool>(true, false)) && global1.x), select(func_3() || all(!vec3<bool>(var_0.x, var_0.x, var_0.x)), all(!(!vec4<bool>(var_0.x, global1.x, true, var_2.x))), global1.x || !any(vec4<bool>(false, var_2.x, global1.x, false))), all(!(!(!vec4<bool>(global1.x, var_0.x, false, global1.x)))), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(~select(0u, 4294967295u, var_2.x), u_input.c), 19u)] == _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) - _wgslsmith_f_op_f32(ceil(var_3.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(842f + arg_1.a))));
    return ~select(~(vec3<u32>(14929u, arg_0.b.a.x, 4294967295u) << (vec3<u32>(arg_0.e.a.x, arg_0.a.a.x, 1u) % vec3<u32>(32u))), ~reverseBits(vec3<u32>(57815u, 4294967295u, 95922u)), var_0.x) | min(vec3<u32>(~var_3.e.a.x, _wgslsmith_div_u32(max(var_1.b.a.x, 38384u), min(0u, arg_0.a.a.x)), _wgslsmith_mod_u32(arg_0.e.a.x, 4294967295u) | ~arg_1.b.a.x), vec3<u32>(~_wgslsmith_mod_u32(var_1.e.a.x, u_input.c), var_1.d.x, firstTrailingBit(1u)));
}

fn func_1(arg_0: vec4<u32>) -> vec2<bool> {
    var var_0 = firstTrailingBit(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(arg_0.zwy, vec3<u32>(arg_0.x, u_input.b, arg_0.x)), vec3<u32>(arg_0.x, u_input.c, u_input.b) ^ arg_0.zxx), ~(~vec3<u32>(u_input.b, arg_0.x, arg_0.x))), arg_0.xxy, ~(~func_2(Struct_3(Struct_1(arg_0.yx), Struct_1(vec2<u32>(11668u, 34244u)), -1000f, vec2<u32>(86619u, arg_0.x), Struct_1(vec2<u32>(0u, u_input.c))), Struct_2(-675f, Struct_1(vec2<u32>(1u, u_input.b)))))));
    let var_1 = arg_0.yz;
    global4 = array<f32, 19>();
    global0 = array<Struct_3, 16>();
    let var_2 = -2147483647i;
    return global1.xy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(select(select(vec2<bool>(u_input.e <= u_input.d, true), global1.yz, select(vec2<bool>(true, false), vec2<bool>(global1.x, false), global1.xz)), vec2<bool>(all(vec4<bool>(global1.x, true, false, global1.x)), global1.x), global1.x));
    var var_1 = global1.x;
    let var_2 = vec4<u32>(~u_input.b, u_input.b, u_input.c, firstTrailingBit(0u));
    let var_3 = select(select(!func_1(~var_2), select(!select(vec2<bool>(global1.x, false), vec2<bool>(true, global1.x), vec2<bool>(global1.x, global1.x)), global1.xz, func_1(abs(vec4<u32>(u_input.b, var_2.x, u_input.c, var_2.x)))), global1.x), !(!func_1(countOneBits(var_2))), !global1.x);
    var var_4 = vec3<bool>(!global1.x, true, var_3.x);
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2039f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-158f, -1346f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(1908f, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * global4[_wgslsmith_index_u32(0u, 19u)])), global4[_wgslsmith_index_u32(4294967295u, 19u)], _wgslsmith_f_op_f32(-960f + _wgslsmith_f_op_f32(exp2(global4[_wgslsmith_index_u32(var_2.x, 19u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(393f, global2.x, -631f), vec3<f32>(662f, global4[_wgslsmith_index_u32(8752u, 19u)], -332f)))))), vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(-1i, -1i)), select(vec2<i32>(u_input.d, 25694i), vec2<i32>(u_input.e, u_input.d), global1.zz)), 73479u, -(vec4<i32>(-1i) * -vec4<i32>(-25610i, u_input.e, u_input.e, 0i)));
}

