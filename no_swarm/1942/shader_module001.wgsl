struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec2<i32>(i32(-2147483648), 8745i)), Struct_1(vec2<i32>(2603i, -12172i)), Struct_1(vec2<i32>(-1i, 17661i)), Struct_1(vec2<i32>(0i, 43049i)), Struct_1(vec2<i32>(1i, -1i)), Struct_1(vec2<i32>(1i, 2147483647i)), Struct_1(vec2<i32>(i32(-2147483648), -10934i)), Struct_1(vec2<i32>(9348i, 9386i)), Struct_1(vec2<i32>(-42704i, 9024i)), Struct_1(vec2<i32>(2147483647i, -1i)), Struct_1(vec2<i32>(-71958i, 0i)), Struct_1(vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(vec2<i32>(23219i, 1i)), Struct_1(vec2<i32>(-12477i, 0i)), Struct_1(vec2<i32>(-1i, 31682i)), Struct_1(vec2<i32>(0i, 1i)), Struct_1(vec2<i32>(-1i, 0i)), Struct_1(vec2<i32>(-4711i, 1576i)), Struct_1(vec2<i32>(0i, -16037i)), Struct_1(vec2<i32>(2147483647i, -31895i)), Struct_1(vec2<i32>(-13815i, -15102i)));

var<private> global1: Struct_1 = Struct_1(vec2<i32>(-3597i, 7020i));

var<private> global2: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec2<i32>(58977i, -1i)), Struct_1(vec2<i32>(10695i, i32(-2147483648))), Struct_1(vec2<i32>(i32(-2147483648), 1i)), Struct_1(vec2<i32>(53226i, 21614i)), Struct_1(vec2<i32>(-32389i, 13985i)), Struct_1(vec2<i32>(-1i, 0i)), Struct_1(vec2<i32>(0i, 64922i)), Struct_1(vec2<i32>(-12372i, 5556i)), Struct_1(vec2<i32>(-22030i, 0i)), Struct_1(vec2<i32>(-52939i, -1i)), Struct_1(vec2<i32>(i32(-2147483648), -50880i)), Struct_1(vec2<i32>(2147483647i, 20249i)), Struct_1(vec2<i32>(1i, i32(-2147483648))), Struct_1(vec2<i32>(26828i, -38789i)), Struct_1(vec2<i32>(2147483647i, 2147483647i)), Struct_1(vec2<i32>(-11159i, 0i)), Struct_1(vec2<i32>(1i, 70594i)), Struct_1(vec2<i32>(24595i, 14896i)), Struct_1(vec2<i32>(-10172i, 1i)), Struct_1(vec2<i32>(1i, 2147483647i)), Struct_1(vec2<i32>(0i, -1i)), Struct_1(vec2<i32>(2147483647i, 41715i)), Struct_1(vec2<i32>(i32(-2147483648), -1i)));

var<private> global3: vec3<i32>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>) -> u32 {
    var var_0 = !(!(countOneBits(0i) < (~u_input.b >> (~u_input.a % 32u))));
    global0 = array<Struct_1, 21>();
    let var_1 = vec4<bool>(arg_1.x, !arg_1.x, (any(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)) & true) == !all(select(arg_1, vec3<bool>(true, arg_1.x, true), vec3<bool>(false, arg_1.x, false))), false);
    let var_2 = vec2<f32>(-1000f, 599f);
    var var_3 = global0[_wgslsmith_index_u32(45032u ^ firstLeadingBit(firstLeadingBit(u_input.a) | _wgslsmith_div_u32(_wgslsmith_mod_u32(0u, 27103u), 68091u)), 21u)];
    return ~firstLeadingBit(1u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = vec3<u32>(firstTrailingBit(~0u), u_input.a, 4294967295u);
    let var_1 = all(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), false == select(true, false, true)));
    global0 = array<Struct_1, 21>();
    let var_2 = all(!vec3<bool>(true, true, !var_1));
    global0 = array<Struct_1, 21>();
    return !var_1;
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> vec4<bool> {
    global2 = array<Struct_1, 23>();
    global0 = array<Struct_1, 21>();
    var var_0 = select(select(!vec4<bool>(all(vec3<bool>(false, true, false)), true, all(vec4<bool>(false, true, true, true)), true), vec4<bool>(any(vec2<bool>(false, false)), any(vec4<bool>(false, false, true, true)), !select(true, false, true), all(vec4<bool>(false, false, false, true))), all(vec2<bool>(true, true))), vec4<bool>(all(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), true)), !all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true))), true, (abs(u_input.a) ^ (u_input.a ^ 79131u)) >= 1u), (1u < func_2(Struct_1(vec2<i32>(global3.x, global3.x)), vec3<bool>(false, false, false))) && true);
    var var_1 = var_0.zzz;
    global2 = array<Struct_1, 23>();
    return select(!vec4<bool>(false, false, all(!vec3<bool>(var_0.x, false, var_1.x)), all(select(var_0.zyz, var_0.yzw, false))), select(select(select(select(vec4<bool>(true, var_0.x, false, var_1.x), vec4<bool>(false, var_1.x, false, true), true), vec4<bool>(var_1.x, var_0.x, var_0.x, var_1.x), !vec4<bool>(true, var_0.x, true, var_0.x)), vec4<bool>(true, true, var_0.x || false, var_1.x), vec4<bool>(var_1.x, true, select(false, var_1.x, var_0.x), var_1.x)), select(select(!vec4<bool>(var_0.x, var_0.x, var_1.x, var_0.x), !vec4<bool>(true, false, false, var_0.x), !vec4<bool>(false, false, var_0.x, var_1.x)), vec4<bool>(var_0.x && var_1.x, false, true, true), false | !var_0.x), vec4<bool>(_wgslsmith_add_u32(u_input.a, 90474u) <= 1u, !func_3(arg_1, Struct_1(vec2<i32>(44206i, 1i))), true, false)), !all(!select(vec2<bool>(true, true), var_0.zy, vec2<bool>(var_0.x, var_0.x))));
}

fn func_4(arg_0: vec3<bool>) -> Struct_1 {
    global0 = array<Struct_1, 21>();
    var var_0 = global2[_wgslsmith_index_u32(~(~(~(~1u << (func_2(global0[_wgslsmith_index_u32(u_input.a, 21u)], arg_0) % 32u)))), 23u)];
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1223f, 538f) * vec2<f32>(644f, -1000f))))));
    let var_3 = global2[_wgslsmith_index_u32(~0u, 23u)];
    return global0[_wgslsmith_index_u32(10554u, 21u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 21>();
    var var_0 = func_4(vec3<bool>(any(func_1(global1.a.x, Struct_1(vec2<i32>(global1.a.x, -27878i)))), true, false));
    var var_1 = false;
    global1 = global2[_wgslsmith_index_u32(u_input.a, 23u)];
    let var_2 = abs(-1i);
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1384f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-406f, -1938f)))) + _wgslsmith_f_op_f32(select(-1810f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -156f)), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1142f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec2_u32(~(~vec2<u32>(7056u, u_input.a)), ~vec2<u32>(u_input.a, u_input.a)), u_input.a);
}

