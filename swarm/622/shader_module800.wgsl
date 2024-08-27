struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec4<bool>,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(0i, 1i, 2147483647i);

var<private> global1: Struct_1 = Struct_1(vec4<bool>(false, true, false, true), 4294967295u, vec4<bool>(true, true, false, false), -134f, vec4<bool>(true, false, true, false));

var<private> global2: bool = true;

var<private> global3: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global4: Struct_1 = Struct_1(vec4<bool>(false, false, true, false), 66617u, vec4<bool>(false, true, true, false), -954f, vec4<bool>(true, false, true, true));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = vec2<bool>(arg_0.e.x, arg_0.e.x);
    var var_1 = arg_0;
    global1 = arg_0;
    var_1 = arg_0;
    let var_2 = max(_wgslsmith_mod_u32(firstLeadingBit(arg_0.b), abs(~_wgslsmith_div_u32(1u, global1.b))), ~_wgslsmith_sub_u32(var_1.b, 4294967295u));
    return false;
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_div_u32(global1.b, _wgslsmith_div_u32(~u_input.b, ~4294967295u));
    let var_1 = global0.x >> (max(118792u, 32551u) % 32u);
    global2 = false;
    let var_2 = Struct_1(vec4<bool>((!global3.x && all(vec4<bool>(false, true, global3.x, false))) & true, global3.x & !global1.c.x, all(global4.e), func_3(Struct_1(global1.c, u_input.b, vec4<bool>(global4.c.x, global3.x, global4.c.x, true), global4.d, global1.e)) | false), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(global1.b, global4.b, global1.b), firstTrailingBit(vec3<u32>(1u, 67900u, 7473u))), select(vec3<u32>(4294967295u, 76246u, global1.b), reverseBits(vec3<u32>(global1.b, global4.b, u_input.b)), true)) << (~_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(1u, 0u, 0u)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 6965u, 35969u), vec3<u32>(122502u, 56373u, 44017u))) % 32u), vec4<bool>(select(false, false, !global3.x), !all(vec3<bool>(global1.a.x, global4.c.x, global3.x)), true, (true && global1.c.x) & true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-678f, _wgslsmith_f_op_f32(min(global4.d, global1.d))))) * _wgslsmith_f_op_f32(-global1.d)), !(!vec4<bool>(global1.a.x, var_1 <= global0.x, global3.x, -194f != global4.d)));
    var var_3 = var_2;
    return _wgslsmith_f_op_f32(180f - global1.d);
}

fn func_1() -> bool {
    var var_0 = Struct_1(global1.e, 19508u, select(!select(!vec4<bool>(false, global4.e.x, false, global4.e.x), vec4<bool>(global3.x, true, true, true), !global3.x), vec4<bool>(true, true, global4.a.x, true), global1.c), _wgslsmith_f_op_f32(max(global4.d, _wgslsmith_f_op_f32(func_2()))), !vec4<bool>(false, global1.b <= 1u, !func_3(Struct_1(global4.c, 4294967295u, global1.e, global1.d, vec4<bool>(false, false, global4.e.x, global4.a.x))), true));
    let var_1 = _wgslsmith_sub_vec3_u32(~vec3<u32>(var_0.b >> (global4.b % 32u), _wgslsmith_clamp_u32(0u, _wgslsmith_mult_u32(var_0.b, global1.b), 674u), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, 4294967295u, 5778u), ~vec3<u32>(u_input.b, 0u, 1u))), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.b, global1.b, 0u), vec3<u32>(var_0.b, 38861u, u_input.b)) & ~u_input.b, select(16707u, _wgslsmith_clamp_u32(u_input.b, 9056u, 33430u), true)), (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 13076u, u_input.b, 9148u), vec4<u32>(u_input.b, global4.b, var_0.b, u_input.b)) >> ((4294967295u ^ u_input.b) % 32u)) >> (112844u % 32u), 4294967295u));
    global2 = !func_3(Struct_1(select(!vec4<bool>(global3.x, false, var_0.c.x, global3.x), var_0.e, true), ~1u, vec4<bool>(false, global0.x > -22562i, true, true), _wgslsmith_f_op_f32(func_2()), select(vec4<bool>(var_0.a.x, var_0.e.x, false, global1.a.x), global4.a, vec4<bool>(false, global3.x, true, global3.x))));
    let var_2 = Struct_1(global1.e, min(~_wgslsmith_dot_vec3_u32(vec3<u32>(83958u, 15187u, u_input.b), _wgslsmith_add_vec3_u32(var_1, var_1)), min(~countOneBits(38910u), _wgslsmith_mod_u32(global1.b & 55648u, global4.b))), select(!select(!global1.e, select(var_0.e, var_0.c, global3.x), select(var_0.a, vec4<bool>(global3.x, false, false, true), var_0.e)), global4.a, !vec4<bool>(true, !global3.x, u_input.a.x <= -43446i, global1.a.x)), _wgslsmith_div_f32(global4.d, _wgslsmith_f_op_f32(var_0.d + global4.d)), select(select(vec4<bool>(true, func_3(Struct_1(vec4<bool>(true, var_0.a.x, global3.x, global4.c.x), 0u, vec4<bool>(true, global1.a.x, global4.c.x, true), 129f, global4.c)), true, var_0.e.x), !(!vec4<bool>(true, true, false, var_0.a.x)), select(select(vec4<bool>(global4.e.x, false, true, true), var_0.e, vec4<bool>(true, global3.x, global3.x, var_0.c.x)), !global4.e, all(vec4<bool>(false, var_0.a.x, global3.x, global4.e.x)))), select(!select(vec4<bool>(true, false, true, true), vec4<bool>(global4.e.x, false, false, global1.c.x), false), !select(vec4<bool>(true, false, true, global4.e.x), vec4<bool>(false, global3.x, global3.x, global4.e.x), vec4<bool>(var_0.e.x, global1.c.x, global4.e.x, false)), global1.c.x), !vec4<bool>(any(var_0.e), -3154i <= global0.x, true, var_0.a.x)));
    global3 = !select(select(select(vec4<bool>(global3.x, var_2.a.x, var_2.c.x, true), select(vec4<bool>(var_2.c.x, false, false, false), var_0.c, vec4<bool>(var_0.e.x, var_0.a.x, var_0.e.x, false)), false), var_2.c, vec4<bool>(!var_0.c.x, global1.e.x, var_0.a.x, true)), !global4.e, true);
    return all(select(var_2.e.zzx, global1.c.xxy, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1() || true;
    let var_1 = 76205u;
    var var_2 = Struct_1(!select(vec4<bool>(false != global4.e.x, 2757u != var_1, all(global3.xxx), global4.e.x), !(!vec4<bool>(var_0, global4.a.x, global3.x, global1.e.x)), true), 1u, vec4<bool>(!select(!var_0, var_0, true), !(1i <= select(58543i, 18669i, global4.c.x)), select(false, false, !func_1()), false), global4.d, vec4<bool>(global4.a.x, true, false, select(any(global1.a), false, (-2147483647i ^ global0.x) < u_input.a.x)));
    global2 = true;
    var var_3 = vec4<u32>(u_input.b, 170750u, 0u, _wgslsmith_mult_u32(global4.b, 230u));
    var_3 = ~(~(~(~vec4<u32>(global4.b, 9893u, var_1, global4.b))));
    global3 = global4.a;
    var var_4 = global1.c;
    let x = u_input.a;
    s_output = StorageBuffer(global4.d, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.d), global1.d) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-460f, global4.d, global3.x)), _wgslsmith_f_op_f32(f32(-1f) * -1081f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1155f - global4.d)), global1.d, any(!vec4<bool>(true, true, true, var_0)))), global1.e.x)));
}

