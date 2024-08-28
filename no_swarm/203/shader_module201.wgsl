struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 27>;

var<private> global2: array<u32, 1> = array<u32, 1>(69338u);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> i32 {
    var var_0 = select(select(!vec3<bool>(any(vec4<bool>(true, true, false, false)), any(vec2<bool>(global1[_wgslsmith_index_u32(0u, 27u)], false)), false), !vec3<bool>(all(vec2<bool>(false, true)), true, global1[_wgslsmith_index_u32(countOneBits(global2[_wgslsmith_index_u32(4294967295u, 1u)]), 27u)]), (_wgslsmith_add_i32(8448i, global0.c.x) >= u_input.b.x) == global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 14378u, global2[_wgslsmith_index_u32(11800u, 1u)]), vec3<u32>(u_input.a, 0u, 76750u)), 27u)]), !select(vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, u_input.a), 27u)], false, false), !select(vec3<bool>(false, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(40636u, 1u)], 27u)], global1[_wgslsmith_index_u32(1u, 27u)]), vec3<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 1u)], 27u)], global1[_wgslsmith_index_u32(1u, 27u)], true), global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(74236u, 1u)], 27u)]), vec3<bool>(!global1[_wgslsmith_index_u32(28487u, 27u)], true, true)), true);
    var_0 = vec3<bool>(!global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(34794u, u_input.a, u_input.a), firstLeadingBit(vec3<u32>(0u, u_input.a, 1u))), u_input.a), 27u)], false, var_0.x);
    var_0 = !vec3<bool>(!global1[_wgslsmith_index_u32(~(15848u << (global2[_wgslsmith_index_u32(u_input.a, 1u)] % 32u)), 27u)], select(any(select(vec2<bool>(false, true), var_0.yx, vec2<bool>(true, true))), var_0.x, true), any(select(!vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 27u)], false), !vec3<bool>(true, var_0.x, true), any(vec4<bool>(var_0.x, false, false, global1[_wgslsmith_index_u32(8418u, 27u)])))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.a.x, global0.a.x)))), 14404i, u_input.b));
    global1 = array<bool, 27>();
    return 0i;
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_3) -> f32 {
    global1 = array<bool, 27>();
    global2 = array<u32, 1>();
    global1 = array<bool, 27>();
    global2 = array<u32, 1>();
    var var_0 = Struct_1(_wgslsmith_div_vec2_f32(arg_1.yy, global0.a), _wgslsmith_add_i32(func_3(), u_input.b.x), ~_wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -global0.c, _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, global0.b), global0.c), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, 0i), vec2<i32>(-26032i, arg_2.b.x), vec2<i32>(arg_2.b.x, -1i)))));
    return -1785f;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(func_2(u_input.a, vec3<f32>(1910f, -1308f, global0.a.x), Struct_3(true, arg_0.ywx))), _wgslsmith_f_op_f32(-global0.a.x), -1015f) * vec4<f32>(-532f, _wgslsmith_div_f32(global0.a.x, arg_1.a.x), -541f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    var var_1 = !(!(!(!select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(97966u, 27u)], global1[_wgslsmith_index_u32(4294967295u, 27u)]), vec4<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 1u)], 27u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(23553u, 1u)], 27u)], global1[_wgslsmith_index_u32(u_input.a, 27u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 1u)], 27u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 27u)], global1[_wgslsmith_index_u32(0u, 27u)], false, true)))));
    let var_2 = Struct_2(arg_1);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(667f, 428f)) - global0.a.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-924f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1504f) - 2297f))));
    let var_4 = var_2.a.a;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~vec4<i32>(_wgslsmith_mod_i32(-1i, max(global0.b, 2353i)), 11840i, global0.b, -u_input.b.x), Struct_1(vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(-1000f - global0.a.x)), global0.c.x, max(~(-u_input.b), global0.c)));
    var var_1 = _wgslsmith_div_vec3_i32(-select(firstTrailingBit(firstTrailingBit(vec3<i32>(u_input.b.x, var_0.a.c.x, -29467i))), _wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(var_0.a.c.x, var_0.a.b, -2147483647i)), ~vec3<i32>(global0.b, var_0.a.c.x, u_input.b.x)), false), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, abs(var_0.a.b), _wgslsmith_mult_i32(54258i, _wgslsmith_sub_i32(global0.c.x, 26334i))), vec3<i32>(global0.c.x, 2147483647i | var_0.a.c.x, 0i & u_input.b.x) << (vec3<u32>(u_input.a, ~87161u, reverseBits(12843u)) % vec3<u32>(32u))));
    global2 = array<u32, 1>();
    let var_2 = _wgslsmith_add_vec2_u32(vec2<u32>(max(global2[_wgslsmith_index_u32(9631u, 1u)] << (~global2[_wgslsmith_index_u32(u_input.a, 1u)] % 32u), ~(~0u)), firstLeadingBit(~max(0u, 14593u))), ~(vec2<u32>(18293u, ~u_input.a) << (~abs(vec2<u32>(20826u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 1u)], 1u)])) % vec2<u32>(32u))));
    let var_3 = !vec4<bool>(global1[_wgslsmith_index_u32(~abs(u_input.a), 27u)] & !global1[_wgslsmith_index_u32(~3664u, 27u)], global1[_wgslsmith_index_u32(4294967295u, 27u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -602f))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x + global0.a.x)), global1[_wgslsmith_index_u32(~abs(global2[_wgslsmith_index_u32(u_input.a, 1u)] & 0u), 27u)]);
    let x = u_input.a;
    s_output = StorageBuffer(-1i, (_wgslsmith_div_vec2_u32(var_2, vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 1u)], 1u)], 9275u)) & ~(var_2 >> (vec2<u32>(var_2.x, 1u) % vec2<u32>(32u)))) << (vec2<u32>(~global2[_wgslsmith_index_u32(u_input.a, 1u)] ^ _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, 7632u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 1u)], 1u)], u_input.a), vec4<u32>(4851u, var_2.x, 47146u, u_input.a)), global2[_wgslsmith_index_u32(~abs(u_input.a), 1u)]) % vec2<u32>(32u)));
}

