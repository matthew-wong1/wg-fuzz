struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: bool,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(922f, arg_0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -335f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1445f, 1000f))))));
    return true && arg_0.a.c;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(~max(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x) | ~u_input.b.x, _wgslsmith_sub_u32(u_input.a & 0u, ~u_input.c.x)), func_3(Struct_2(Struct_1(u_input.c.x, true, select(false, true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1701f, -795f, 345f))), true, u_input.c)), abs(~reverseBits(u_input.a)) > u_input.a);
    var var_1 = Struct_3(Struct_2(var_0, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1147f, -841f, 141f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, 1589f, -525f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(154f, 290f, 740f))))), var_0.c, select(_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.b.zy, u_input.d.zx, vec2<u32>(4294967295u, var_0.a)), ~vec2<u32>(var_0.a, 28814u), max(u_input.c, u_input.d.zx)), firstLeadingBit(countOneBits(u_input.d.yz)), !select(vec2<bool>(false, true), vec2<bool>(false, true), false))), ~(~(var_0.a ^ 72539u) | ~44797u), Struct_2(var_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -391f), _wgslsmith_div_f32(-1061f, 966f), _wgslsmith_f_op_f32(f32(-1f) * -1988f))), true, _wgslsmith_add_vec2_u32(select(vec2<u32>(var_0.a, 21162u), vec2<u32>(1u, var_0.a), select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(true, var_0.c), vec2<bool>(true, var_0.b))), _wgslsmith_add_vec2_u32(~u_input.b.xy, vec2<u32>(2538u, 4294967295u)))));
    var var_2 = 13119i;
    var_2 = 1i;
    var var_3 = !select(vec3<bool>(var_1.a.a.b, var_1.c.d.x < 1u, _wgslsmith_mult_u32(59378u, var_0.a) >= firstTrailingBit(1u)), select(!select(vec3<bool>(var_0.c, false, true), vec3<bool>(true, true, var_1.a.a.c), vec3<bool>(true, var_0.c, var_0.c)), vec3<bool>(false, var_0.c, var_1.a.c), select(true, true, true)), any(!vec4<bool>(var_1.c.c, false, var_0.b, true)));
    return var_1.a.a;
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = func_2();
    var var_1 = var_0.c;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0, arg_0, arg_0))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_0, arg_0), arg_0, -2092f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, -282f)))))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -416f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1866f))))), arg_0));
    var var_3 = var_0.b;
    var var_4 = !vec4<bool>(true, var_0.c, true, all(vec2<bool>(true, true)));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_mod_u32(u_input.b.x, _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.d.x, 2421u), ~_wgslsmith_mod_u32(u_input.d.x, u_input.c.x))), true, select(true, true, true));
    let var_1 = Struct_2(func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -600f)))), vec3<f32>(-805f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(262f * _wgslsmith_f_op_f32(trunc(1620f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), 603f), true, ~(~(abs(u_input.c) ^ vec2<u32>(4294967295u, var_0.a))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, _wgslsmith_f_op_f32(var_1.b.x - -914f)));
    let var_3 = !any(vec3<bool>(true, true, true));
    let var_4 = vec3<bool>(any(vec3<bool>(func_3(Struct_2(var_1.a, var_1.b, true, u_input.b.xx)), any(vec3<bool>(var_3, var_0.c, true)), any(!vec3<bool>(var_3, true, true)))), var_3, var_3);
    var var_5 = countOneBits(_wgslsmith_mult_u32(u_input.a, func_2().a >> (_wgslsmith_dot_vec3_u32(u_input.d, _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a, 0u, 28419u), vec3<u32>(u_input.c.x, u_input.b.x, 4294967295u))) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(16852i, ~1i), -896f, var_1.a.a, var_0.a, ~(~select(vec4<u32>(71165u, 30312u, 68012u, var_1.a.a), vec4<u32>(var_0.a, 3718u, 43389u, var_1.a.a), vec4<bool>(var_1.c, false, true, var_4.x)) & _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(0u, 0u, 0u, 73226u)), ~vec4<u32>(var_1.d.x, 1u, u_input.a, 1u), vec4<u32>(u_input.c.x, 95019u, 78073u, 0u) & vec4<u32>(var_0.a, 27480u, u_input.a, var_0.a))));
}

