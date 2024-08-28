struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: vec3<i32>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, vec4<bool>(true, true, false, false), false);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec4<u32> {
    global0 = Struct_1(!(55410u != ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 18746u), vec4<u32>(u_input.a.x, u_input.a.x, 42271u, u_input.a.x))), select(!vec4<bool>(false, true, true, !global0.a), global0.b, global0.b), false);
    global0 = Struct_1(global0.a, vec4<bool>(global0.a | any(vec4<bool>(true, global0.b.x, true, global0.c)), (u_input.a.x & ~u_input.a.x) <= 1u, any(vec2<bool>(global0.a | true, global0.a & global0.a)), global0.a), false);
    let var_0 = !global0.a;
    global0 = Struct_1(~10203u != (abs(firstTrailingBit(4294967295u)) ^ u_input.a.x), global0.b, all(select(!global0.b.wwy, global0.b.xyz, !(!vec3<bool>(var_0, false, global0.b.x)))));
    var var_1 = 0u;
    return select(vec4<u32>(~_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a.x, 46908u), u_input.a.x), u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_mod_u32(max(22185u, u_input.a.x), u_input.a.x), _wgslsmith_mod_u32(43313u, 44681u)), 0u), min(~vec4<u32>(~14375u, ~u_input.a.x, 6394u, 0u), firstLeadingBit(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 2050u), vec4<u32>(76636u, 29057u, 79142u, 22123u), vec4<u32>(5678u, u_input.a.x, 52051u, u_input.a.x)))), true);
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: i32) -> vec4<u32> {
    var var_0 = all(select(global0.b.yz, !global0.b.wx, vec2<bool>(true, true)));
    var_0 = select(global0.c, !global0.b.x & true, true);
    var_0 = global0.c;
    let var_1 = _wgslsmith_f_op_f32(round(arg_0));
    var var_2 = Struct_1(322f < arg_0, !(!select(vec4<bool>(global0.a, global0.a, false, false), global0.b, vec4<bool>(global0.b.x, true, false, false))), u_input.a.x >= 4294967295u);
    return func_3();
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> i32 {
    var var_0 = ~((abs(func_2(-135f, vec4<i32>(-15089i, arg_1, arg_1, arg_1), arg_1)) | (vec4<u32>(0u, 38481u, 13198u, u_input.a.x) | ~vec4<u32>(u_input.a.x, 25136u, 4294967295u, u_input.a.x))) >> (abs(vec4<u32>(_wgslsmith_sub_u32(630u, u_input.a.x), u_input.a.x, ~0u, max(u_input.a.x, u_input.a.x))) % vec4<u32>(32u)));
    var var_1 = countOneBits(-arg_1);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(940f)) - -636f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1617f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_3 = -_wgslsmith_add_i32(8767i, arg_1 | -29900i) & -48596i;
    var var_4 = vec2<i32>(-2147483647i, firstTrailingBit(-arg_1)) & max(vec2<i32>(~2147483647i, -35906i), vec2<i32>(0i, 19315i));
    return var_4.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~vec3<i32>(1i, 1i, 1i)) >> (reverseBits(vec3<u32>(_wgslsmith_mod_u32(13277u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), u_input.a)), ~1u, abs(1u))) % vec3<u32>(32u));
    let var_1 = Struct_2(-_wgslsmith_clamp_i32(-_wgslsmith_div_i32(16589i, var_0.x), -39847i, 2147483647i), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -247f))))), 1f, -1000f), ~func_1(Struct_1(all(vec4<bool>(global0.a, true, true, global0.b.x)), vec4<bool>(global0.b.x, true, true, false), true), -2147483647i), -var_0, any(vec2<bool>(!global0.a, any(vec3<bool>(false, global0.b.x, global0.b.x)))));
    global0 = Struct_1(true, vec4<bool>(var_1.e, all(vec2<bool>(all(vec2<bool>(false, true)), false == global0.c)), all(global0.b) & any(select(global0.b.xwx, global0.b.xzx, var_1.e)), !(!global0.b.x)), true);
    let var_2 = Struct_2(i32(-1i) * -_wgslsmith_add_i32(var_1.d.x, abs(var_1.a)), _wgslsmith_f_op_vec3_f32(-var_1.b), 0i, vec3<i32>(var_0.x, -5582i, _wgslsmith_div_i32(_wgslsmith_add_i32(var_1.a, 1i), reverseBits(-1i)) | -13071i), true);
    global0 = Struct_1(-712f != var_1.b.x, select(vec4<bool>(all(vec3<bool>(false, var_1.e, var_1.e)), !(!var_1.e), all(select(global0.b.zy, global0.b.wx, false)), global0.c || false), select(!select(vec4<bool>(true, var_2.e, var_2.e, var_1.e), global0.b, vec4<bool>(false, false, var_2.e, true)), global0.b, vec4<bool>(var_1.e, all(vec2<bool>(false, var_1.e)), global0.b.x, all(vec2<bool>(true, var_2.e)))), all(select(vec4<bool>(true, var_2.e, global0.b.x, false), vec4<bool>(var_1.e, global0.b.x, var_1.e, global0.a), vec4<bool>(global0.b.x, true, true, false))) != var_2.e), var_2.e);
    global0 = Struct_1(var_2.a >= reverseBits(-11203i), global0.b, true);
    let var_3 = global0.b.yxw;
    let var_4 = _wgslsmith_f_op_f32(select(var_1.b.x, var_2.b.x, !select(false, all(var_3.xz), any(vec4<bool>(false, var_2.e, false, global0.a)) & var_2.e)));
    global0 = Struct_1(false, vec4<bool>(_wgslsmith_f_op_f32(-1f) > _wgslsmith_f_op_f32(step(-407f, var_2.b.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_4 + 1508f))) >= 1000f, false, true), false);
    let x = u_input.a;
    s_output = StorageBuffer(186f, -136f, u_input.a.x | ~(~u_input.a.x | (4294967295u | u_input.a.x)));
}

