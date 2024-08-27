struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2>;

var<private> global1: f32;

var<private> global2: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(Struct_1(-1i, vec2<f32>(765f, 2642f), false), Struct_1(24620i, vec2<f32>(577f, 277f), false), 933f, Struct_1(13695i, vec2<f32>(-914f, 1000f), false), 1u), Struct_2(Struct_1(-10574i, vec2<f32>(238f, -973f), true), Struct_1(-6271i, vec2<f32>(275f, 233f), true), 572f, Struct_1(24990i, vec2<f32>(504f, -1740f), false), 4294967295u), Struct_2(Struct_1(-16052i, vec2<f32>(601f, -958f), false), Struct_1(13695i, vec2<f32>(-1499f, -948f), false), 686f, Struct_1(14115i, vec2<f32>(-897f, -1449f), false), 4294967295u), Struct_2(Struct_1(-21469i, vec2<f32>(-166f, 222f), false), Struct_1(0i, vec2<f32>(810f, 327f), false), 593f, Struct_1(-1i, vec2<f32>(-1000f, 438f), false), 71284u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<i32>) -> i32 {
    var var_0 = arg_0.c | arg_0.c;
    var var_1 = arg_0.b.x;
    var var_2 = arg_0.b.x;
    var_0 = true;
    global0 = array<i32, 2>();
    return 1i | u_input.c;
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: vec4<bool>, arg_3: vec2<u32>) -> i32 {
    global2 = array<Struct_2, 4>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, -1748f) - vec3<f32>(arg_1, 371f, 1000f)))));
    let var_1 = arg_2.x;
    global0 = array<i32, 2>();
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_0.zy, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.yy)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1023f, -415f)))))))) - vec2<f32>(_wgslsmith_f_op_f32(round(-239f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-533f * arg_1)) * var_0.x)));
    return firstLeadingBit(_wgslsmith_div_i32(~_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(0i, global0[_wgslsmith_index_u32(4294967295u, 2u)])), -vec2<i32>(39362i, 14397i)), u_input.c));
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    global0 = array<i32, 2>();
    let var_0 = true;
    global0 = array<i32, 2>();
    let var_1 = global2[_wgslsmith_index_u32(u_input.a.x, 4u)];
    var var_2 = any(!(!(!(!vec4<bool>(false, var_0, false, true)))));
    return Struct_1(-func_3(!(!vec3<bool>(var_0, false, var_1.b.c)), arg_0.x, !vec4<bool>(false, var_0, true, var_0), ~(vec2<u32>(73312u, u_input.b) & u_input.a)), vec2<f32>(-382f, 591f), !var_1.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(-(u_input.c | global0[_wgslsmith_index_u32(u_input.a.x, 2u)]) & abs(u_input.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(453f, -3350f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(141f, -1009f))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -318f), -935f)), all(vec3<bool>(true, true, 294i > u_input.c))), Struct_1(func_1(Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 2u)], u_input.c), vec2<i32>(global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(u_input.b, 2u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-969f, -1338f)), true), Struct_2(Struct_1(u_input.c, vec2<f32>(-2341f, 235f), true), Struct_1(2147483647i, vec2<f32>(403f, 418f), false), _wgslsmith_f_op_f32(ceil(1099f)), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 2u)], vec2<f32>(126f, 101f), true), firstTrailingBit(u_input.b)), min(-vec3<i32>(-12089i, -42692i, global0[_wgslsmith_index_u32(4294967295u, 2u)]), -vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 2u)], u_input.c, global0[_wgslsmith_index_u32(u_input.b, 2u)]))), vec2<f32>(_wgslsmith_f_op_f32(trunc(1250f)), -1000f), any(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(ceil(-203f)), func_2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + -1769f), -121f), _wgslsmith_f_op_f32(select(1488f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), true)), -683f)), ~(~u_input.a.x));
    var var_1 = true;
    let var_2 = Struct_2(Struct_1(-18741i, _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -302f, -443f) * vec3<f32>(924f, 1223f, 128f))).b + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.a.b.x, 1353f)))), true), var_0.b, _wgslsmith_f_op_f32(step(-270f, var_0.d.b.x)), func_2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-var_0.b.b.x), var_0.a.b.x)))), ~(~u_input.b));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-465f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2830f, 146f, var_2.b.c)) + _wgslsmith_f_op_f32(abs(var_0.b.b.x))))));
    var var_4 = false;
    let var_5 = _wgslsmith_f_op_f32(var_2.b.b.x + var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(~(-1i), var_5, u_input.c, min(u_input.a.x, var_2.e));
}

