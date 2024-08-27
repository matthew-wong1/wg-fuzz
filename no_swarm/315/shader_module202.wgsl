struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 4294967295u);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_2) -> bool {
    global0 = u_input.c.x;
    global0 = ~1u;
    let var_0 = global1.x;
    var var_1 = !all(vec4<bool>(!(arg_0.c.b && arg_3.b), arg_1.b.b, 0i <= countOneBits(arg_0.a), true));
    var_1 = any(select(vec2<bool>(!arg_1.b.b, select(true, arg_3.b, false)), !(!vec2<bool>(arg_1.b.b, true)), all(!vec2<bool>(true, arg_0.b.b)))) == all(select(vec3<bool>(true, true, true), vec3<bool>(arg_3.b & false, false, all(vec2<bool>(arg_0.c.b, true))), select(vec3<bool>(true, true, true), !vec3<bool>(arg_1.b.b, arg_0.c.b, arg_0.b.b), all(vec3<bool>(arg_0.b.b, arg_1.b.b, arg_1.c.b)))));
    return !arg_1.c.b;
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: bool, arg_3: vec4<f32>) -> vec2<f32> {
    global1 = ~max(firstTrailingBit(abs(u_input.c.zx << (vec2<u32>(global1.x, u_input.c.x) % vec2<u32>(32u)))), ~min(u_input.c.yx >> (u_input.c.zz % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(global1.x, u_input.c.x))));
    global1 = abs(~_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.c.x, 52490u), _wgslsmith_sub_vec2_u32(select(u_input.c.yy, u_input.c.wz, vec2<bool>(true, arg_2)), _wgslsmith_sub_vec2_u32(vec2<u32>(global1.x, 8441u), u_input.c.zy))));
    var var_0 = 9320u;
    global1 = firstLeadingBit(firstTrailingBit(~vec2<u32>(~4294967295u, global1.x)));
    global1 = select(vec2<u32>(global1.x, u_input.c.x << (_wgslsmith_dot_vec4_u32(~u_input.c, vec4<u32>(4294967295u, 18259u, global1.x, 1u)) % 32u)), _wgslsmith_div_vec2_u32(u_input.c.yx, firstTrailingBit(_wgslsmith_sub_vec2_u32(u_input.c.zy, vec2<u32>(global1.x, 4294967295u))) | ~u_input.c.yy), false);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(arg_3.xy)));
}

fn func_2(arg_0: u32, arg_1: u32) -> u32 {
    var var_0 = Struct_3(-_wgslsmith_clamp_i32(1i, u_input.a, u_input.b), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1572f)), true, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-546f, -585f))))), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1727f), 1017f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-984f, -1683f, true)) * _wgslsmith_f_op_f32(-207f + 1072f)), Struct_1(vec2<f32>(1f, 1f))), 2026f);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_0.c.c.a), _wgslsmith_f_op_vec2_f32(func_3(var_0.a, var_0.b, true, _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -370f, -698f, 216f), vec4<f32>(var_0.d, -260f, var_0.c.c.a.x, var_0.b.c.a.x)))))) - var_0.c.c.a));
    var_0 = Struct_3(-15660i, var_0.b, Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1881f), any(vec3<bool>(true, true, false)), var_0.c.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)));
    var_1 = var_0.b.c;
    let var_2 = Struct_1(vec2<f32>(var_1.a.x, var_1.a.x));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.c.x;
    global1 = select(vec2<u32>(max(0u, u_input.c.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(global1.x, global1.x), vec2<u32>(global1.x, u_input.c.x)) << (~(~global1.x) % 32u)), ~u_input.c.ww, select(!vec2<bool>(true, u_input.b != u_input.a), vec2<bool>(false, false), vec2<bool>(true, func_1(Struct_3(u_input.b, Struct_2(-1829f, false, Struct_1(vec2<f32>(480f, -302f))), Struct_2(1803f, false, Struct_1(vec2<f32>(-861f, 269f))), -1000f), Struct_3(-1i, Struct_2(1961f, true, Struct_1(vec2<f32>(-1072f, -399f))), Struct_2(-700f, false, Struct_1(vec2<f32>(-405f, 826f))), -1000f), Struct_1(vec2<f32>(-720f, 1550f)), Struct_2(-1614f, false, Struct_1(vec2<f32>(217f, 834f)))) || true)));
    global1 = vec2<u32>(~func_2(global1.x, ~0u), 4294967295u);
    let var_0 = !vec4<bool>(true, false, ((11839u ^ global1.x) == 1u) | (u_input.b < u_input.b), all(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), true)));
    let var_1 = -265f;
    var var_2 = _wgslsmith_f_op_f32(abs(var_1));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_clamp_i32(-15725i, 7980i, ~_wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a)), Struct_2(-337f, var_0.x, Struct_1(vec2<f32>(var_1, -2235f))), any(vec3<bool>(false, true, !var_0.x)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(568f, 2112f)), var_1, _wgslsmith_f_op_f32(select(-687f, var_1, true)), 880f))));
    let x = u_input.a;
    s_output = StorageBuffer(~max(u_input.c.x, firstLeadingBit(_wgslsmith_div_u32(global1.x, 1u))), -max(abs(_wgslsmith_clamp_i32(-14838i, u_input.b, u_input.a)), -(~u_input.b)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_3.x, var_3.x)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-491f, var_3.x, var_3.x))), var_0.wyw))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1233f * 606f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1171f * var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_3.x))))));
}

