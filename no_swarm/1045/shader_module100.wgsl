struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15>;

var<private> global1: vec2<u32>;

var<private> global2: u32 = 15748u;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: vec4<bool>, arg_2: bool) -> vec2<bool> {
    let var_0 = Struct_1(~u_input.b.x);
    let var_1 = var_0;
    global2 = global1.x;
    var var_2 = var_1;
    let var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-196f, -492f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-256f, 501f) - vec2<f32>(943f, 1084f))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-1266f, -1000f), vec2<f32>(-610f, 559f)), vec2<f32>(1604f, 928f), !arg_1.xx))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(370f, 322f) + vec2<f32>(-1088f, -958f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-416f, 1724f), vec2<f32>(-1053f, 1960f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1837f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1218f, 211f)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-482f, -272f))))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(ceil(544f)), 100f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(947f, 842f), vec2<f32>(973f, 880f))), arg_1.x))), !(!arg_1.x)));
    return !arg_1.xx;
}

fn func_4(arg_0: vec2<bool>, arg_1: i32) -> vec2<u32> {
    let var_0 = min(min(-vec2<i32>(-arg_1, firstTrailingBit(1352i)), ~_wgslsmith_add_vec2_i32(-u_input.a.yx, u_input.b.xy)), _wgslsmith_sub_vec2_i32(u_input.a.xz, -_wgslsmith_mult_vec2_i32(u_input.b.xy, u_input.a.xz)) & _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, u_input.c), -u_input.b.wy), u_input.a.xx & vec2<i32>(arg_1, arg_1)));
    var var_1 = Struct_1(reverseBits(66464i));
    global2 = ~global1.x;
    let var_2 = Struct_1(_wgslsmith_mod_i32(48735i, var_0.x));
    global1 = ~(~(vec2<u32>(1u, global1.x) & (_wgslsmith_mod_vec2_u32(vec2<u32>(global1.x, 14530u), vec2<u32>(global1.x, global1.x)) >> ((vec2<u32>(1u, global1.x) ^ vec2<u32>(global1.x, 3843u)) % vec2<u32>(32u)))));
    return countOneBits(~(~(~(vec2<u32>(global1.x, global1.x) >> (vec2<u32>(global1.x, global1.x) % vec2<u32>(32u))))));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global1 = vec2<u32>(arg_0, (global1.x ^ 35366u) & _wgslsmith_dot_vec3_u32(vec3<u32>(44969u, 1u, arg_0) << (~vec3<u32>(1u, 4294967295u, 0u) % vec3<u32>(32u)), min(~vec3<u32>(global1.x, 38213u, 1u), ~vec3<u32>(arg_0, 57402u, global1.x))));
    global1 = func_4(select(vec2<bool>(!select(global0[_wgslsmith_index_u32(global1.x, 15u)], global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(1u, 15u)]), !(false | global0[_wgslsmith_index_u32(arg_0, 15u)])), !(!func_3(global0[_wgslsmith_index_u32(1u, 15u)], vec4<bool>(global0[_wgslsmith_index_u32(arg_0, 15u)], global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(global1.x, 15u)]), true)), vec2<bool>(true, global0[_wgslsmith_index_u32(abs(~arg_0), 15u)])), -47052i);
    var var_0 = arg_2;
    global2 = _wgslsmith_div_u32(arg_0, _wgslsmith_add_u32(61777u, firstLeadingBit(45801u)));
    let var_1 = Struct_1(39156i);
    return Struct_1(~(select(~arg_1.a, -arg_2.a, true) | arg_1.a));
}

fn func_1() -> f32 {
    global2 = _wgslsmith_mult_u32(4294967295u, global1.x);
    let var_0 = func_2(74700u, Struct_1(~u_input.a.x), Struct_1(-u_input.c));
    var var_1 = vec4<bool>(!(!global0[_wgslsmith_index_u32(global1.x, 15u)]) == any(select(vec4<bool>(global0[_wgslsmith_index_u32(global1.x, 15u)], global0[_wgslsmith_index_u32(0u, 15u)], false, true), !vec4<bool>(global0[_wgslsmith_index_u32(global1.x, 15u)], global0[_wgslsmith_index_u32(global1.x, 15u)], true, true), !global0[_wgslsmith_index_u32(13422u, 15u)])), any(select(vec2<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(17936u, 15u)], true)), true), !(!vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 15u)])), vec2<bool>(true, true))), func_3(!any(select(vec4<bool>(global0[_wgslsmith_index_u32(24572u, 15u)], global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(33500u, 15u)], false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, global0[_wgslsmith_index_u32(63815u, 15u)], global0[_wgslsmith_index_u32(63207u, 15u)]))), vec4<bool>(true, global0[_wgslsmith_index_u32(~23840u, 15u)], true | global0[_wgslsmith_index_u32(1u, 15u)], !global0[_wgslsmith_index_u32(global1.x, 15u)]), func_3(all(select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 15u)], true, true), vec3<bool>(global0[_wgslsmith_index_u32(1u, 15u)], false, true), vec3<bool>(global0[_wgslsmith_index_u32(28824u, 15u)], true, true))), vec4<bool>(false, !global0[_wgslsmith_index_u32(2576u, 15u)], true, global0[_wgslsmith_index_u32(global1.x, 15u)]), true).x).x, _wgslsmith_f_op_f32(round(-860f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-699f, 1059f))));
    global1 = _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(146795u, 1u), ~(~vec2<u32>(1u, global1.x) >> (vec2<u32>(1u, global1.x) % vec2<u32>(32u))), vec2<u32>(global1.x, global1.x)), _wgslsmith_add_vec2_u32(~(~vec2<u32>(4294967295u, global1.x) >> (min(vec2<u32>(42019u, global1.x), vec2<u32>(global1.x, global1.x)) % vec2<u32>(32u))), vec2<u32>(firstLeadingBit(12690u), 1596u)));
    global0 = array<bool, 15>();
    return 2348f;
}

fn func_5(arg_0: f32, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = -reverseBits(u_input.a);
    global2 = _wgslsmith_div_u32(4294967295u, abs(global1.x));
    return Struct_1(u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global1.x;
    var var_0 = ~global1.x;
    let var_1 = func_5(-613f, vec2<bool>(true, _wgslsmith_f_op_f32(func_1()) != -575f));
    global0 = array<bool, 15>();
    var var_2 = Struct_1(var_1.a);
    var_0 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(~global1.x, 1u), _wgslsmith_add_u32(~(~0u), func_4(vec2<bool>(true, true), reverseBits(var_2.a)).x << (_wgslsmith_add_u32(global1.x, 1u) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(33208u, firstLeadingBit(0u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-310f + -1236f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(914f, -737f, false))))), (_wgslsmith_sub_u32(22221u, _wgslsmith_add_u32(1u, global1.x)) & global1.x) | _wgslsmith_sub_u32(1u, _wgslsmith_clamp_u32(0u, global1.x, 4294967295u) ^ ~72686u));
}

