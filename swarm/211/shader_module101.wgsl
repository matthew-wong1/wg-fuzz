struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_2,
    d: bool,
    e: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<u32, 2> = array<u32, 2>(1u, 63742u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: f32) -> vec4<bool> {
    var var_0 = Struct_2(select(vec3<bool>(!arg_0.x, true, arg_0.x), arg_0, !arg_0));
    var var_1 = true;
    var_0 = Struct_2(!select(!vec3<bool>(arg_0.x, var_0.a.x, true), !select(var_0.a, var_0.a, vec3<bool>(false, var_0.a.x, true)), true));
    let var_2 = Struct_2(arg_0);
    let var_3 = !any(select(vec2<bool>(false, !var_2.a.x), vec2<bool>(var_2.a.x, arg_0.x), !all(vec4<bool>(true, true, var_0.a.x, true))));
    return select(select(select(!(!vec4<bool>(var_2.a.x, true, true, true)), select(vec4<bool>(var_3, true, arg_0.x, true), vec4<bool>(false, true, true, false), false), true), vec4<bool>(any(var_2.a), global0.a.x > -750f, arg_0.x, !var_0.a.x), any(!select(vec4<bool>(var_3, true, var_2.a.x, true), vec4<bool>(true, var_0.a.x, var_3, false), var_3))), !select(select(!vec4<bool>(var_0.a.x, false, true, var_2.a.x), select(vec4<bool>(false, arg_0.x, false, var_0.a.x), vec4<bool>(false, false, true, false), var_2.a.x), false), !(!vec4<bool>(false, var_3, var_3, var_2.a.x)), any(vec2<bool>(false, var_2.a.x))), false);
}

fn func_2(arg_0: vec4<f32>) -> i32 {
    global0 = Struct_5(global0.a);
    global1 = array<u32, 2>();
    let var_0 = select(vec4<bool>(all(vec4<bool>(true, true, true, true)), any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))), select(any(vec4<bool>(true, true, true, true)) && true, true, true), false), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), func_3(vec3<bool>(true, false, false), vec3<u32>(global1[_wgslsmith_index_u32(14277u, 2u)], 74764u, global1[_wgslsmith_index_u32(4294967295u, 2u)]), 232f)), func_3(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), _wgslsmith_add_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 2u)], global1[_wgslsmith_index_u32(76886u, 2u)], 24263u), vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(1u, 2u)], 49692u)), _wgslsmith_f_op_f32(select(1360f, -1000f, true))), vec4<bool>(all(vec4<bool>(true, true, true, false)), select(true, false, false), true, true)), vec4<bool>(!select(true, true, false), _wgslsmith_div_u32(global1[_wgslsmith_index_u32(18614u, 2u)], 4294967295u) <= (global1[_wgslsmith_index_u32(26263u, 2u)] >> (158u % 32u)), select(false, true, true), 1u <= global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 2u)] | global1[_wgslsmith_index_u32(57886u, 2u)], 2u)]), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true))), global1[_wgslsmith_index_u32(select(12413u, ~92171u, true), 2u)] <= global1[_wgslsmith_index_u32(49933u, 2u)]);
    let var_1 = Struct_2(select(var_0.yyw, var_0.wwz, vec3<bool>(any(select(var_0.yyz, var_0.wzw, true)), !var_0.x, all(vec2<bool>(var_0.x, var_0.x)))));
    global1 = array<u32, 2>();
    return -14680i;
}

fn func_1() -> i32 {
    global1 = array<u32, 2>();
    global1 = array<u32, 2>();
    var var_0 = global0.a.x;
    global1 = array<u32, 2>();
    global1 = array<u32, 2>();
    return firstLeadingBit(_wgslsmith_sub_i32(i32(-1i) * -24198i, min(_wgslsmith_mult_i32(_wgslsmith_sub_i32(24658i, u_input.b), -43470i), _wgslsmith_add_i32(func_2(vec4<f32>(global0.a.x, 2139f, -209f, 300f)), firstLeadingBit(32892i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(true, func_1() >= u_input.b, func_3(select(vec3<bool>(true, true, true), func_3(vec3<bool>(true, false, false), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(41456u, 2u)], 2u)], 2u)], 2u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23146u, 2u)], 2u)], 2u)], 2u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(27339u, 2u)], 2u)], 2u)]), 1000f).wwy, vec3<bool>(false, true, true)), ~firstTrailingBit(vec3<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(65772u, 2u)], 2u)], 2u)], 2u)], global1[_wgslsmith_index_u32(73482u, 2u)])), _wgslsmith_f_op_f32(step(-2210f, _wgslsmith_f_op_f32(-global0.a.x)))).x);
    global1 = array<u32, 2>();
    let var_1 = 8503u;
    var var_2 = true;
    let var_3 = Struct_3(all(var_0.zy), 226f, Struct_2(vec3<bool>(u_input.b >= 1i, any(func_3(vec3<bool>(var_0.x, false, var_0.x), vec3<u32>(0u, global1[_wgslsmith_index_u32(0u, 2u)], 1u), global0.a.x).xzx), var_0.x)), var_0.x, u_input.a.x);
    global1 = array<u32, 2>();
    global1 = array<u32, 2>();
    var var_4 = Struct_1(_wgslsmith_add_vec4_u32(countOneBits(select(vec4<u32>(12819u, var_1, 4294967295u, global1[_wgslsmith_index_u32(30299u, 2u)]), vec4<u32>(53523u, global1[_wgslsmith_index_u32(14394u, 2u)], global1[_wgslsmith_index_u32(0u, 2u)], var_1), var_3.a) | ~vec4<u32>(global1[_wgslsmith_index_u32(1u, 2u)], 16717u, 46101u, global1[_wgslsmith_index_u32(4294967295u, 2u)])), vec4<u32>(~(var_1 | 60459u), ~27005u, 4294967295u, var_1)), 748f, u_input.a.x >> (global1[_wgslsmith_index_u32(4294967295u, 2u)] % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b, ~vec4<u32>(var_4.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(countOneBits(0u), 2u)], 2u)], _wgslsmith_div_u32(firstLeadingBit(global1[_wgslsmith_index_u32(1u, 2u)]), firstTrailingBit(var_4.a.x)), countOneBits(0u)), ~(~(_wgslsmith_mult_vec3_u32(vec3<u32>(17130u, 54114u, global1[_wgslsmith_index_u32(1u, 2u)]), var_4.a.ywz) ^ vec3<u32>(var_4.a.x, global1[_wgslsmith_index_u32(61545u, 2u)], var_1))));
}

