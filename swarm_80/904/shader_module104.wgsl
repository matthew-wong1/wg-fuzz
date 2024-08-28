struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 1> = array<f32, 1>(831f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> i32 {
    global0 = Struct_1(arg_1.a);
    global0 = Struct_1(_wgslsmith_div_i32(~(-2147483647i >> (0u % 32u)), ~min(arg_1.a, u_input.b)));
    return countOneBits(5306i);
}

fn func_4(arg_0: Struct_1) -> i32 {
    var var_0 = u_input.b;
    var var_1 = vec4<bool>(any(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), true & any(vec2<bool>(true, true)), true, any(vec3<bool>(true, true, true)));
    let var_2 = arg_0;
    global0 = Struct_1(23958i);
    let var_3 = Struct_1(u_input.b);
    return 1i;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: bool, arg_3: vec3<i32>) -> bool {
    var var_0 = global0.a;
    global0 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_sub_i32(2147483647i | select(-2147483647i, u_input.b, false), _wgslsmith_mult_i32(1i, global0.a)), global0.a));
    let var_1 = func_4(Struct_1(func_3(true, Struct_1(i32(-1i) * -2147483647i), false, arg_1.x)));
    let var_2 = _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-28534i, 2147483647i, _wgslsmith_mod_i32(var_1, u_input.b))) & vec3<i32>(-98725i, 2147483647i, -var_1), arg_3);
    let var_3 = Struct_1(global0.a);
    return arg_2;
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> vec3<i32> {
    let var_0 = u_input.b;
    var var_1 = !(!vec4<bool>(true, false, false, func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(223f, global1[_wgslsmith_index_u32(u_input.a, 1u)], -1172f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(u_input.c, 1u)], global1[_wgslsmith_index_u32(21448u, 1u)]) * vec3<f32>(global1[_wgslsmith_index_u32(u_input.e, 1u)], 150f, -1019f)), false, vec3<i32>(arg_0, 3668i, arg_0))));
    let var_2 = Struct_1(2147483647i);
    let var_3 = 159f;
    var_1 = select(!(!(!(!vec4<bool>(var_1.x, false, false, var_1.x)))), select(select(vec4<bool>(!var_1.x, true, true, select(var_1.x, var_1.x, var_1.x)), vec4<bool>(!var_1.x, var_1.x && var_1.x, true, !var_1.x), func_2(vec3<f32>(-1023f, 754f, 1342f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1443f, -467f, -1000f))), true, ~vec3<i32>(-7479i, var_0, 20619i))), vec4<bool>(all(vec4<bool>(false, var_1.x, true, false)) || var_1.x, !any(vec4<bool>(var_1.x, true, var_1.x, false)), true, var_1.x), select(vec4<bool>(var_1.x, any(vec4<bool>(var_1.x, true, true, false)), var_1.x | var_1.x, all(vec2<bool>(var_1.x, var_1.x))), !vec4<bool>(var_1.x, false, var_1.x, true), select(vec4<bool>(true, true, var_1.x, var_1.x), select(vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(var_1.x, true, var_1.x, false), false), vec4<bool>(false, var_1.x, true, true)))), !select(!(!vec4<bool>(var_1.x, var_1.x, var_1.x, false)), select(vec4<bool>(false, var_1.x, var_1.x, false), select(vec4<bool>(false, false, var_1.x, var_1.x), vec4<bool>(true, var_1.x, false, false), vec4<bool>(var_1.x, true, var_1.x, true)), true), true));
    return countOneBits(vec3<i32>(_wgslsmith_mod_i32(abs(_wgslsmith_mult_i32(24211i, 1i)), -2147483647i), i32(-1i) * -(var_0 & 14549i), -15690i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(~reverseBits(func_1(global0.a, Struct_1(u_input.b)))) & ~vec3<i32>(_wgslsmith_sub_i32(global0.a, func_1(global0.a, Struct_1(0i)).x), ~(-10321i), -global0.a);
    global1 = array<f32, 1>();
    global1 = array<f32, 1>();
    global0 = Struct_1(~min(-1i, -1i));
    var var_1 = _wgslsmith_dot_vec2_i32(reverseBits(countOneBits(max(abs(vec2<i32>(-4715i, global0.a)), vec2<i32>(0i, 3636i)))), vec2<i32>(-_wgslsmith_mult_i32(_wgslsmith_div_i32(global0.a, 28331i), var_0.x), _wgslsmith_sub_i32(-_wgslsmith_sub_i32(-1i, var_0.x), ~(u_input.b | global0.a))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(global1[_wgslsmith_index_u32(reverseBits(~(u_input.c & 0u)), 1u)], -312f, 486f, _wgslsmith_f_op_f32(max(107f, global1[_wgslsmith_index_u32(abs(0u), 1u)]))), ~_wgslsmith_mod_vec4_u32(abs(vec4<u32>(12655u, u_input.d, u_input.d, 0u)), ~abs(vec4<u32>(u_input.c, 40804u, u_input.e, u_input.c))), var_0, -30211i, ~u_input.a);
}

