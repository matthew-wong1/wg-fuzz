struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<f32>(760f, 1785f, -528f, 510f), false), vec2<u32>(1u, 10100u), Struct_1(vec4<f32>(244f, 1523f, -1169f, 370f), false), -421i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> u32 {
    global0 = global1.c;
    global0 = global1.a;
    var var_0 = global1.a;
    global0 = global1.a;
    var_0 = Struct_1(global1.a.a, var_0.b);
    return _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(countOneBits(~vec2<u32>(u_input.a.x, 1921u)), ~(~vec2<u32>(global1.b.x, 19119u))) ^ abs(30800u), 26997u);
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: vec3<bool>) -> u32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-global0.a), !arg_2.x), _wgslsmith_div_vec2_u32(u_input.a, min(vec2<u32>(func_3(-353f), ~7719u), vec2<u32>(countOneBits(31679u), ~arg_1.x))), global1.c, u_input.c.x);
    var var_1 = select(vec4<bool>(var_0.c.b, any(!(!arg_2)), !global0.b, true || !(23047u >= arg_0)), select(select(!(!vec4<bool>(global0.b, global0.b, true, var_0.a.b)), vec4<bool>(var_0.a.b, global1.a.b & var_0.c.b, 1225f < global1.c.a.x, 1i > var_0.d), select(!vec4<bool>(false, var_0.c.b, false, global1.c.b), vec4<bool>(true, true, arg_2.x, false), select(vec4<bool>(false, false, global0.b, false), vec4<bool>(false, global0.b, true, global1.a.b), false))), !select(vec4<bool>(arg_2.x, false, false, true), !vec4<bool>(global1.c.b, false, global0.b, true), !vec4<bool>(true, arg_2.x, true, true)), var_0.a.b), false);
    var var_2 = !var_0.a.b;
    var var_3 = reverseBits(_wgslsmith_add_u32(6088u, func_3(_wgslsmith_f_op_f32(f32(-1f) * -421f))));
    var_3 = global1.b.x;
    return _wgslsmith_mult_u32(u_input.a.x, ~(~14075u));
}

fn func_1() -> u32 {
    var var_0 = ~(firstTrailingBit(~global1.b) ^ global1.b);
    global1 = Struct_2(global1.c, vec2<u32>(~abs(firstLeadingBit(14586u)), _wgslsmith_clamp_u32(func_2(22436u, vec3<u32>(global1.b.x, global1.b.x, global1.b.x), vec3<bool>(false, false, global1.c.b)) | 4294967295u, 4294967295u << (firstLeadingBit(u_input.a.x) % 32u), firstLeadingBit(~var_0.x))), global1.c, 39075i);
    let var_1 = _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(global1.d, reverseBits(-1i))), min(countOneBits(vec2<i32>(0i, -2147483647i)), _wgslsmith_div_vec2_i32(u_input.c.yx, _wgslsmith_div_vec2_i32(u_input.c.xx, vec2<i32>(u_input.c.x, 12393i))))), ~(-countOneBits(-vec2<i32>(17596i, -5921i))));
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.a.x, global0.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.c.a.x)))), global1.c.a.yxx)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-260f, global0.a.x, -478f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-476f, 223f, global0.a.x)) + _wgslsmith_f_op_vec3_f32(-global1.c.a.zwy)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-796f, -1000f, -553f))))), global1.a.b)), !vec3<bool>(global0.b, _wgslsmith_sub_i32(var_1.x, -1i) != firstTrailingBit(-9570i), true)));
    var var_3 = !(!select(select(select(vec3<bool>(global1.c.b, global1.c.b, global0.b), vec3<bool>(false, global1.c.b, global0.b), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, global1.c.b), vec3<bool>(false, true, global1.a.b), true), vec3<bool>(true, global1.a.b, false)), vec3<bool>(any(vec3<bool>(true, false, global0.b)), true, false), vec3<bool>(true, true, true)));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(ceil(global1.a.a)), global0.b), ~u_input.a, global1.a, _wgslsmith_div_i32(global1.d, -2147483647i));
    var var_0 = ~4294967295u;
    var_0 = _wgslsmith_add_u32(func_1() ^ u_input.a.x, select(u_input.a.x, ~_wgslsmith_sub_u32(~u_input.a.x, 4294967295u), reverseBits(~(-34941i)) > _wgslsmith_div_i32(-1i, _wgslsmith_clamp_i32(12472i, 0i, u_input.c.x))));
    global1 = Struct_2(global1.a, vec2<u32>(_wgslsmith_mod_u32(~46775u, _wgslsmith_sub_u32(u_input.a.x, max(u_input.a.x, u_input.a.x))), ~global1.b.x), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-global0.a)))), any(!select(vec2<bool>(true, global0.b), vec2<bool>(false, global0.b), false))), ~0i);
    let var_1 = !(41319u <= (~(29550u ^ global1.b.x) & 29539u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~(~24917u), u_input.a.x));
}

