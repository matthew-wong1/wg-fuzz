struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_3,
    c: Struct_4,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: array<u32, 9> = array<u32, 9>(21986u, 1u, 0u, 4294967295u, 0u, 38969u, 10750u, 4294967295u, 57987u);

var<private> global1: vec2<i32> = vec2<i32>(-36472i, -3300i);

var<private> global2: u32 = 4294967295u;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec3<i32>, arg_1: u32) -> u32 {
    global0 = array<u32, 9>();
    global1 = _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(select(u_input.a.wy, vec2<i32>(17636i, u_input.a.x), vec2<bool>(false, false)) & _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, arg_0.x), u_input.a.wz), vec2<i32>(arg_0.x, abs(0i))), u_input.a.xw), vec2<i32>(-36161i, -15278i << (1u % 32u)));
    var var_0 = Struct_1(~(~8172u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-584f)), _wgslsmith_f_op_f32(936f - _wgslsmith_f_op_f32(651f + 242f)))), false);
    let var_1 = Struct_3(Struct_1(1035u, 389f, true));
    return ~0u;
}

fn func_3() -> f32 {
    global0 = array<u32, 9>();
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~reverseBits(firstTrailingBit(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(0u, 9u)], 35086u)))), vec3<u32>(abs(abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15869u, 9u)], 9u)], 9u)])) | global0[_wgslsmith_index_u32(37885u, 9u)], select(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23380u, 9u)], 9u)], global0[_wgslsmith_index_u32(1u, 9u)]), 9u)], 9u)], 35222u, 1u), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 9u)], 9u)] & global0[_wgslsmith_index_u32(0u, 9u)], 96953u), true), 70587u)), 9u)];
    var var_0 = !vec3<bool>(true, all(vec4<bool>(true, true, true, true)), true);
    global2 = _wgslsmith_add_u32(global0[_wgslsmith_index_u32(~(~abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30817u, 9u)], 9u)], 9u)], 9u)], 9u)])) ^ 0u, 9u)], ~(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(~15528u), 9u)], 9u)] & ~(global0[_wgslsmith_index_u32(0u, 9u)] & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22887u, 9u)], 9u)])));
    let var_1 = Struct_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(258f, 960f, 690f))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -267f), _wgslsmith_f_op_f32(f32(-1f) * -1591f), _wgslsmith_f_op_f32(floor(126f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1438f, -1000f, -115f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(974f, 1171f, 663f))))), Struct_3(Struct_1(~_wgslsmith_add_u32(53554u, 1u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2423f), 1335f), var_0.x)), Struct_4(!(1i <= firstTrailingBit(global1.x))), _wgslsmith_f_op_f32(trunc(707f)));
    return -1000f;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: u32) -> Struct_4 {
    let var_0 = vec3<u32>(func_2(-u_input.a.ywx & (u_input.a.yxw >> (vec3<u32>(1u, 4294967295u, 0u) % vec3<u32>(32u))), 0u), 1u, arg_2);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), arg_1);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(max(var_1, arg_1)), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1198f, _wgslsmith_div_f32(-1000f, -144f)))));
    var var_3 = global1.x ^ -32008i;
    global2 = firstTrailingBit(~_wgslsmith_mod_u32(~28660u, ~var_0.x << (38352u % 32u)));
    return Struct_4(any(vec2<bool>(-27558i >= reverseBits(global1.x), true)));
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: u32) -> vec3<u32> {
    let var_0 = select(!vec3<bool>(all(vec4<bool>(arg_1.a, arg_1.a, arg_1.a, arg_1.a)), arg_1.a, any(vec4<bool>(true, false, arg_1.a, arg_1.a))), select(!select(!vec3<bool>(true, false, arg_1.a), vec3<bool>(arg_1.a, true, false), false), select(vec3<bool>(all(vec4<bool>(false, arg_1.a, true, arg_1.a)), !arg_1.a, true), select(!vec3<bool>(arg_1.a, arg_1.a, arg_1.a), vec3<bool>(arg_1.a, arg_1.a, arg_1.a), false), vec3<bool>(any(vec4<bool>(false, arg_1.a, arg_1.a, arg_1.a)), false, all(vec4<bool>(arg_1.a, false, arg_1.a, true)))), !select(!vec3<bool>(arg_1.a, arg_1.a, false), vec3<bool>(false, arg_1.a, false), true)), arg_1.a);
    let var_1 = arg_1.a;
    global1 = -u_input.a.zz;
    global0 = array<u32, 9>();
    let var_2 = ~arg_2;
    return vec3<u32>(~(~(~(~8588u))), max(var_2, var_2), ~global0[_wgslsmith_index_u32(var_2, 9u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(-(~global1.x));
    global2 = 64789u;
    global0 = array<u32, 9>();
    global2 = 24450u;
    global1 = -vec2<i32>(global1.x, firstTrailingBit(global1.x | ~u_input.a.x));
    var var_1 = Struct_2(func_4(-2147483647i, func_1(false, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f * 537f))), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21761u, 9u)], 9u)] ^ (18248u ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 9u)], 9u)])), 4294967295u), true, abs(global0[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(4294967295u, 9u)], 9u)]), 9u)]), Struct_1(firstLeadingBit(min(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 9u)], 9u)], 9u)], 9u)], 9u)], 9u)], 9u)], _wgslsmith_dot_vec2_u32(vec2<u32>(3973u, 58114u), vec2<u32>(1u, global0[_wgslsmith_index_u32(87816u, 9u)])))), _wgslsmith_f_op_f32(min(720f, 618f)), any(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(341f);
}

