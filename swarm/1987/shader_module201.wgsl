struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, true, true);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> bool {
    let var_0 = global0.yzx;
    var var_1 = select(vec4<bool>(global0.x, false | !select(false, true, true), false, var_0.x), vec4<bool>(!(!(22517u != u_input.c)), !(!(!var_0.x)), (24199u >> (reverseBits(u_input.c) % 32u)) == 4294967295u, var_0.x), ((~u_input.c ^ ~48633u) != u_input.c) | false);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -385f))))));
    var var_3 = reverseBits(~u_input.c);
    var var_4 = Struct_1(false && select(global0.x, var_1.x, false), !(!vec2<bool>(false, global0.x)));
    return any(select(!var_1.zzz, vec3<bool>(-1i >= (-661i >> (u_input.c % 32u)), any(select(vec2<bool>(true, true), vec2<bool>(global0.x, var_1.x), false)), var_1.x), global0.xyy));
}

fn func_2() -> bool {
    global0 = select(select(select(!(!vec4<bool>(true, false, global0.x, true)), !select(vec4<bool>(true, true, global0.x, global0.x), vec4<bool>(false, global0.x, global0.x, global0.x), true), global0.x), select(!select(vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(global0.x, global0.x, global0.x, true), global0.x), !select(vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(false, false, false, true), vec4<bool>(global0.x, true, true, global0.x)), false), !(!vec4<bool>(global0.x, global0.x, true, true))), vec4<bool>(func_3(), false, all(select(vec4<bool>(global0.x, true, true, global0.x), vec4<bool>(global0.x, global0.x, true, false), vec4<bool>(false, false, false, false))) || true, global0.x), !(!vec4<bool>(u_input.c >= u_input.c, global0.x, any(global0.wz), select(global0.x, true, true))));
    global0 = vec4<bool>(4294967295u != _wgslsmith_sub_u32(u_input.c, _wgslsmith_div_u32(0u, u_input.c) ^ 1u), !all(!select(global0.zy, global0.yz, global0.wz)), global0.x && func_3(), global0.x);
    let var_0 = Struct_1(global0.x, select(select(!(!global0.ww), vec2<bool>(true, true), global0.wy), select(!(!vec2<bool>(global0.x, global0.x)), select(global0.yz, global0.yy, !global0.zw), true), global0.xy));
    let var_1 = Struct_2(firstTrailingBit(~46884u));
    global0 = select(select(vec4<bool>(var_0.b.x, global0.x, false, global0.x), vec4<bool>(var_0.a, any(vec3<bool>(true, global0.x, var_0.b.x)), any(select(vec3<bool>(global0.x, var_0.a, true), vec3<bool>(var_0.b.x, var_0.b.x, global0.x), vec3<bool>(var_0.b.x, false, var_0.b.x))), true), vec4<bool>(var_0.b.x, !any(global0.wz), true, !var_0.a | !var_0.a)), !vec4<bool>(false, global0.x, !var_0.a, all(!vec4<bool>(var_0.b.x, global0.x, false, global0.x))), !any(vec4<bool>(any(global0.xwy), true, true, true)));
    return !(var_0.b.x & all(!select(vec4<bool>(false, var_0.a, true, var_0.b.x), vec4<bool>(var_0.a, var_0.a, true, global0.x), vec4<bool>(true, global0.x, var_0.a, global0.x))));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> u32 {
    let var_0 = vec3<bool>(func_2(), true, arg_1.b.x);
    global0 = vec4<bool>(false, all(select(select(vec4<bool>(true, false, false, arg_1.b.x), select(vec4<bool>(true, true, global0.x, true), vec4<bool>(var_0.x, false, var_0.x, var_0.x), true), vec4<bool>(var_0.x, true, var_0.x, false)), vec4<bool>(arg_1.a, true, 2147483647i >= arg_0, true), select(vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(global0.x, false, var_0.x, false), vec4<bool>(false, arg_1.b.x, var_0.x, var_0.x)))), arg_1.a, all(vec4<bool>(true, var_0.x, global0.x, true)));
    let var_1 = arg_1;
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-787f, 766f, -585f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(524f, -1558f, -2355f), vec3<f32>(-1000f, -904f, -1677f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1705f, 1997f, 1364f) + vec3<f32>(-1000f, -1222f, -280f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(1097f, 399f, arg_1.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -798f), 1367f)))), vec3<f32>(_wgslsmith_f_op_f32(3024f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -900f) + -613f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1113f, _wgslsmith_f_op_f32(-206f * -2569f), true)))), 344f));
    var var_3 = Struct_2(19363u);
    return ~reverseBits(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(59040u, 4294967295u, 0u), vec3<u32>(0u, 47960u, 4294967295u)) & ~4294967295u, 0u));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: u32, arg_3: u32) -> Struct_2 {
    global0 = vec4<bool>(true, all(vec4<bool>(global0.x, any(vec2<bool>(global0.x, global0.x)), global0.x, !global0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(trunc(1370f)))), 330f)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(512f - -450f))), false);
    let var_0 = arg_3;
    global0 = !(!(!select(vec4<bool>(true, global0.x, true, false), !vec4<bool>(true, global0.x, global0.x, global0.x), true)));
    global0 = vec4<bool>(global0.x, all(!select(!vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, false, global0.x), vec3<bool>(global0.x, global0.x, true))), global0.x, false);
    var var_1 = 4294967295u;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<bool>(global0.x, !(!global0.x), true, true);
    var var_0 = ~4294967295u;
    let var_1 = func_4(~_wgslsmith_clamp_vec2_u32(vec2<u32>(func_1(u_input.a, Struct_1(true, vec2<bool>(true, global0.x))), u_input.c >> (40257u % 32u)), firstTrailingBit(abs(vec2<u32>(79114u, u_input.c))), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 0u), _wgslsmith_div_vec2_u32(vec2<u32>(7916u, u_input.c), vec2<u32>(22924u, 19259u)), ~vec2<u32>(0u, u_input.c))), Struct_2(abs(~u_input.c)), ~_wgslsmith_mod_u32(~_wgslsmith_sub_u32(u_input.c, u_input.c), u_input.c), 4294967295u);
    global0 = select(!(!select(!vec4<bool>(global0.x, global0.x, global0.x, false), !vec4<bool>(global0.x, true, global0.x, global0.x), global0.x)), !vec4<bool>(global0.x, func_3(), true, true), !vec4<bool>(any(vec3<bool>(true, global0.x, false)), true, true, global0.x));
    var var_2 = Struct_1(!func_3(), !select(!select(vec2<bool>(true, global0.x), global0.yw, false), !(!global0.xz), !select(false, true, false)));
    var var_3 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(71683i, u_input.b.x, -2147483647i, -69288i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.a, 69183i)), vec4<i32>(u_input.a, _wgslsmith_dot_vec3_i32(u_input.b, u_input.b), u_input.a, -6279i)), vec3<f32>(969f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -403f)))), 1575f), _wgslsmith_div_u32(53218u, func_1(_wgslsmith_add_i32(min(u_input.b.x, u_input.a), 1i), Struct_1(var_2.b.x, global0.xw))));
}

