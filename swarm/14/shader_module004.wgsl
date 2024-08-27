struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(57597u, 1057f, vec3<f32>(306f, 512f, -1076f), 1339f);

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(3718u, 574f, vec3<f32>(-2020f, -591f, -506f), 101f), Struct_1(1124u, -145f, vec3<f32>(1021f, 162f, 1929f), 916f), Struct_1(33280u, 620f, vec3<f32>(232f, 118f, -710f), 1896f), Struct_1(1u, -175f, vec3<f32>(166f, 1569f, -1800f), -779f), Struct_1(48593u, -1323f, vec3<f32>(-908f, -516f, 1357f), -532f), Struct_1(45367u, 523f, vec3<f32>(1793f, -290f, -129f), 232f), Struct_1(1u, -291f, vec3<f32>(1024f, -615f, 495f), -478f), Struct_1(0u, -1158f, vec3<f32>(-1062f, -897f, -460f), 763f), Struct_1(0u, 131f, vec3<f32>(293f, 2223f, 2659f), 526f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec2<i32>, arg_3: u32) -> f32 {
    let var_0 = global0.a;
    var var_1 = Struct_1(~_wgslsmith_mod_u32(firstTrailingBit(1u), 1u), _wgslsmith_f_op_f32(global0.d * 1741f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global1.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.c))))), _wgslsmith_f_op_f32(-304f + _wgslsmith_div_f32(-1590f, _wgslsmith_div_f32(arg_1, global0.c.x))));
    var var_2 = false;
    var var_3 = vec3<bool>(u_input.a.x != max(-39533i ^ u_input.b, firstTrailingBit(arg_2.x)), true | (_wgslsmith_f_op_f32(min(-663f, _wgslsmith_f_op_f32(-global1.d))) != 287f), all(!vec3<bool>(true, any(vec3<bool>(true, true, true)), true)));
    var var_4 = arg_0;
    return _wgslsmith_f_op_f32(-var_1.d);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<f32>, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = arg_3;
    var var_1 = arg_0.c.x;
    global2 = array<Struct_1, 9>();
    global0 = Struct_1(global0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(8286u, 9u)], 680f, u_input.a.yx, global0.a)) - -127f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-504f))))), _wgslsmith_f_op_f32(-arg_0.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.wwx - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-224f, arg_3.c.x, arg_2.x), vec3<f32>(arg_3.d, -927f, 1000f)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(arg_2.x, global1.c.x)), _wgslsmith_f_op_f32(-global0.b))) - -1233f), _wgslsmith_f_op_f32(-arg_0.c.x))));
    let var_2 = u_input.a.xx;
    return select(vec2<bool>(true || (_wgslsmith_f_op_f32(f32(-1f) * -435f) <= _wgslsmith_f_op_f32(select(arg_3.b, arg_2.x, false))), false), vec2<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec2<bool>(true, true)))), false), vec2<bool>(true, true));
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = abs(vec3<i32>(_wgslsmith_dot_vec2_i32(select(u_input.a.xz, reverseBits(vec2<i32>(2147483647i, u_input.b)), func_2(global2[_wgslsmith_index_u32(39953u, 9u)], vec3<u32>(6966u, 0u, global1.a), vec4<f32>(-500f, global0.c.x, -1286f, -1098f), Struct_1(1u, global1.b, global1.c, global0.c.x))), u_input.a.xx), select(u_input.a.x, 1i, arg_0 & arg_0) | reverseBits(reverseBits(20251i)), ~(firstTrailingBit(1i) | 2147483647i)));
    let var_1 = !vec2<bool>(!all(vec4<bool>(arg_0, true, false, false)), true);
    var var_2 = Struct_1(~1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d))) + -1000f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-627f, 1007f))), -129f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(512f * global0.c.x)))), global0.c.x);
    var var_3 = !(!select(select(!vec3<bool>(false, true, var_1.x), vec3<bool>(true, true, arg_0), true), select(!vec3<bool>(var_1.x, true, arg_0), select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, var_1.x, true), arg_0), any(vec4<bool>(true, var_1.x, arg_0, arg_0))), vec3<bool>(arg_0, true, any(vec2<bool>(var_1.x, true)))));
    global2 = array<Struct_1, 9>();
    return Struct_1(_wgslsmith_add_u32(_wgslsmith_mod_u32(var_2.a, global0.a), select(~(global0.a | 25215u), 4294967295u, !var_1.x)), _wgslsmith_f_op_f32(962f * var_2.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.d - 1681f), global1.b, _wgslsmith_f_op_f32(sign(var_2.d)))) + var_2.c), _wgslsmith_f_op_f32(max(-1518f, global1.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(true);
    var var_0 = ~1u;
    global1 = global2[_wgslsmith_index_u32(global1.a, 9u)];
    let var_1 = global2[_wgslsmith_index_u32(40257u, 9u)];
    let var_2 = ~0u;
    global0 = Struct_1(~(global1.a ^ ~34342u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.d)) - 1477f), var_1.c.x))), vec3<f32>(_wgslsmith_f_op_f32(max(var_1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1.b)), _wgslsmith_f_op_f32(-var_1.b)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global1.d, global1.c.x, true)), _wgslsmith_div_f32(1123f, global1.c.x)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-701f + global1.b)))), 170f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d)));
    var_0 = 35259u;
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(abs(1u), 0u ^ global1.a) >> (abs(~global1.a) % 32u), _wgslsmith_div_u32(_wgslsmith_clamp_u32(0u, var_1.a >> (29391u % 32u), var_1.a | 46698u), reverseBits(var_2) << (var_1.a % 32u))), ~(~_wgslsmith_sub_u32(var_2, 52436u)) | ~80373u), 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.c.x, var_3.b, 1728f, global1.d))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.d, 2888f) * _wgslsmith_f_op_f32(var_1.d * var_1.c.x)), var_3.b, var_3.c.x), !(true && (0u != var_1.a)))));
}

