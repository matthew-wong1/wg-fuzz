struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_1 = Struct_1(vec4<u32>(39544u, 22100u, 17796u, 76720u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = ~vec3<u32>(63050u, arg_0.a.x, global1.a.x);
    let var_1 = Struct_1(max(firstLeadingBit(~global1.a << (arg_0.a % vec4<u32>(32u))), ~_wgslsmith_div_vec4_u32(~arg_0.a, abs(vec4<u32>(36734u, 36947u, 67214u, 0u)))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -528f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(328f))), 971f);
    var var_2 = Struct_1(~(vec4<u32>(~1u, _wgslsmith_add_u32(0u, global1.a.x), 129325u, 4294967295u & arg_0.a.x) ^ vec4<u32>(24826u, 4294967295u & var_1.a.x, select(var_0.x, 0u, true), global1.a.x)));
    global0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-818f)), _wgslsmith_f_op_f32(1337f - _wgslsmith_f_op_f32(f32(-1f) * -1503f))));
    return var_1.a;
}

fn func_2() -> Struct_1 {
    global1 = Struct_1(vec4<u32>(_wgslsmith_sub_u32(39896u, 26263u << (max(u_input.d.x, u_input.d.x) % 32u)), 0u, global1.a.x, ~4294967295u));
    let var_0 = Struct_1(~(vec4<u32>(~0u, _wgslsmith_mult_u32(global1.a.x, 1u), u_input.d.x, countOneBits(4294967295u)) & ~func_3(Struct_1(global1.a))));
    let var_1 = !select(vec4<bool>(all(vec2<bool>(true, true)) && true, any(vec2<bool>(true, false)), -u_input.a.x > reverseBits(u_input.b.x), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), true), true)), !select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true)), true));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-774f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, global0.x))) - _wgslsmith_div_f32(global0.x, global0.x)), global0.x, _wgslsmith_f_op_f32(-global0.x), global0.x);
    global1 = Struct_1(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a.x, _wgslsmith_dot_vec4_u32(global1.a, var_0.a), var_0.a.x, 0u), var_0.a));
    return Struct_1(vec4<u32>(_wgslsmith_div_u32(15172u, 5700u), ~_wgslsmith_mod_u32(_wgslsmith_div_u32(0u, u_input.d.x), _wgslsmith_mod_u32(43174u, global1.a.x)), func_3(Struct_1(~vec4<u32>(12593u, 7166u, 1304u, 1u))).x, ~(~0u << (~global1.a.x % 32u))));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_2();
    let var_1 = reverseBits(abs(4294967295u));
    var var_2 = arg_0;
    let var_3 = u_input.a.x;
    let var_4 = u_input.c.x;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-236f, global0.x, -570f, global0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, -303f, -426f, -1011f), vec4<f32>(-1925f, global0.x, -161f, global0.x)))))));
    var var_0 = select(true, !(99326u > global1.a.x) | (select(true, any(vec2<bool>(false, false)), any(vec2<bool>(true, false))) && true), false);
    global1 = func_1(Struct_1(max(~vec4<u32>(12224u, global1.a.x, 48721u, 36651u) >> ((global1.a << (vec4<u32>(4294967295u, 1u, global1.a.x, 17661u) % vec4<u32>(32u))) % vec4<u32>(32u)), ~vec4<u32>(global1.a.x, global1.a.x, global1.a.x, u_input.d.x) & ~vec4<u32>(global1.a.x, global1.a.x, global1.a.x, 34951u))));
    var var_1 = ~_wgslsmith_clamp_vec3_u32(vec3<u32>(~(~global1.a.x), 0u, _wgslsmith_sub_u32(countOneBits(81182u), 0u | global1.a.x)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(33401u, 66756u, 1u), abs(global1.a.yxx), _wgslsmith_mod_vec3_u32(vec3<u32>(global1.a.x, u_input.d.x, 31138u), vec3<u32>(u_input.d.x, 4294967295u, u_input.d.x))), _wgslsmith_div_vec3_u32(vec3<u32>(global1.a.x ^ 4294967295u, 1u, u_input.d.x), func_1(func_2()).a.xzz));
    global1 = Struct_1(select(vec4<u32>(var_1.x, var_1.x, global1.a.x ^ u_input.d.x, 0u) ^ ~(~vec4<u32>(global1.a.x, 19248u, 76788u, global1.a.x)), ~reverseBits(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 4911u)) & (~vec4<u32>(u_input.d.x, global1.a.x, 5885u, global1.a.x) | (global1.a ^ global1.a)), false));
    let x = u_input.a;
    s_output = StorageBuffer(global0.xyw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-320f))))), _wgslsmith_div_f32(global0.x, global0.x), global0.x);
}

