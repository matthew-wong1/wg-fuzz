struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> vec2<f32> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1074f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(288f + 642f))) * _wgslsmith_f_op_f32(f32(-1f) * -350f))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-444f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0, 380f)) * _wgslsmith_div_f32(var_0, var_0))))));
    global0 = u_input.c;
    global0 = select(~(~(~(vec4<u32>(9309u, 8249u, u_input.c.x, global0.x) | vec4<u32>(u_input.c.x, global0.x, 28731u, global0.x)))), vec4<u32>(global0.x, global0.x, u_input.a, _wgslsmith_div_u32(~abs(0u), 1u)), select(vec4<bool>(!select(false, arg_0.a, true), all(vec4<bool>(true, true, arg_0.a, true)), !(!arg_0.a), true), vec4<bool>(true, true, true, true), arg_0.a));
    global0 = countOneBits(max(~(~(~vec4<u32>(u_input.a, global0.x, global0.x, global0.x))), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(118951u, u_input.a, u_input.c.x), 68783u, _wgslsmith_div_u32(1u, 1u), ~29810u), u_input.c)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-275f))), _wgslsmith_f_op_f32(abs(var_0)))));
}

fn func_2(arg_0: i32) -> f32 {
    var var_0 = Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(func_3(Struct_3(all(vec2<bool>(false, true)))))), u_input.c.zyz);
    global0 = u_input.c;
    var var_1 = true;
    global0 = min(vec4<u32>(countOneBits(u_input.a), 6362u, _wgslsmith_dot_vec2_u32(~vec2<u32>(20065u, 60245u) << (~vec2<u32>(global0.x, global0.x) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(global0.wz, vec2<u32>(var_0.b.x, 0u), ~vec2<u32>(global0.x, 7637u))), abs(min(20666u, 1u) & firstTrailingBit(4294967295u))), u_input.c);
    var_1 = false;
    return -147f;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<i32>) -> Struct_3 {
    var var_0 = vec3<bool>(true, true, true);
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-118f, -1814f))))));
    var_0 = vec3<bool>(var_0.x, !var_0.x, var_0.x);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-373f + 1285f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(79508i)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(147f, _wgslsmith_f_op_f32(-var_1.a.x)))), _wgslsmith_f_op_f32(abs(var_1.a.x)));
    var_0 = !select(vec3<bool>(!var_0.x & true, !any(vec3<bool>(true, false, false)), false), vec3<bool>(true, var_0.x, all(var_0.zx) != any(vec3<bool>(var_0.x, var_0.x, false))), select(select(!vec3<bool>(false, false, var_0.x), !vec3<bool>(true, false, var_0.x), any(vec3<bool>(var_0.x, false, var_0.x))), vec3<bool>(true, select(false, true, true), var_0.x), select(!vec3<bool>(true, true, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x)))));
    return Struct_3(true);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>) -> vec4<bool> {
    let var_0 = select(vec3<bool>(all(!vec2<bool>(arg_0.a, arg_0.a)), arg_0.a, all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(arg_0.a, true, arg_0.a)))), select(select(vec3<bool>(true, false, false), vec3<bool>(arg_0.a | true, u_input.b.x <= u_input.b.x, true), vec3<bool>(select(false, arg_0.a, arg_0.a), !arg_0.a, !arg_0.a)), !vec3<bool>(true, all(vec4<bool>(false, arg_0.a, false, arg_0.a)), any(vec2<bool>(false, false))), any(select(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), select(vec4<bool>(false, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(false, true, arg_0.a, arg_0.a), arg_0.a), arg_0.a))), -35162i <= u_input.b.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1176f, -785f, _wgslsmith_f_op_f32(trunc(arg_1.x)), _wgslsmith_div_f32(arg_1.x, 125f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -229f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -593f) - -1507f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.x, arg_1.x)) - _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x))))));
    let var_2 = ~vec3<i32>(abs(1i), u_input.b.x, _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, -u_input.b.x) >> (u_input.c.x % 32u));
    let var_3 = arg_0;
    let var_4 = true;
    return select(!vec4<bool>(any(!vec4<bool>(true, var_4, var_0.x, arg_0.a)), var_3.a, var_0.x, true), !select(!vec4<bool>(false, false, var_3.a, var_0.x), select(!vec4<bool>(var_0.x, false, false, arg_0.a), vec4<bool>(true, true, arg_0.a, false), select(vec4<bool>(false, arg_0.a, false, var_4), vec4<bool>(true, true, arg_0.a, true), vec4<bool>(false, true, var_3.a, true))), vec4<bool>(true, true, true, all(vec3<bool>(arg_0.a, false, var_0.x)))), !(!(!select(vec4<bool>(false, false, var_0.x, false), vec4<bool>(var_3.a, arg_0.a, var_3.a, var_4), false))));
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: u32) -> vec4<u32> {
    let var_0 = -(~vec3<i32>(abs(min(-1i, u_input.b.x)), i32(-1i) * -19960i, -(u_input.b.x & u_input.b.x)));
    global0 = vec4<u32>(u_input.a, 37470u, ~countOneBits(43712u), arg_2);
    let var_1 = u_input.b.x;
    var var_2 = arg_1;
    var var_3 = !arg_0;
    return firstLeadingBit(u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(all(vec3<bool>(false, true, any(vec4<bool>(true, true, true, false)))) != all(func_4(func_1(u_input.c, vec3<i32>(33119i, 2147483647i, u_input.b.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-676f, -534f)))), Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-956f, 1655f), _wgslsmith_f_op_f32(step(1316f, 465f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(318f, -1000f), vec2<f32>(-929f, 498f))) - vec2<f32>(-351f, -137f)))), ~0u);
    var var_0 = max(max(-1i, firstLeadingBit(u_input.b.x >> ((4294967295u << (u_input.c.x % 32u)) % 32u))), firstTrailingBit(abs(abs(0i))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-989f, -722f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-314f, 832f, false)))))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -1015f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(402f, -585f), vec2<f32>(-603f, 1139f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(274f, -1000f))))));
    var var_3 = -2147483647i;
    global0 = vec4<u32>(~(~1u), ~global0.x | 36351u, _wgslsmith_mod_u32(0u, global0.x), ~u_input.c.x ^ ~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.c.yw, u_input.c.ww), global0.x | global0.x));
    let var_4 = Struct_3(all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true))));
    global0 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_mod_u32(~firstTrailingBit(21966u), global0.x), firstTrailingBit(countOneBits(-(~vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x)))), _wgslsmith_div_vec4_u32(vec4<u32>(select(1u, 69534u, func_1(vec4<u32>(u_input.a, 4294967295u, global0.x, 1u), vec3<i32>(12219i, 20768i, 0i)).a), _wgslsmith_sub_u32(~global0.x, 22058u), ~global0.x, _wgslsmith_div_u32(~u_input.c.x, 1u)), select(abs(vec4<u32>(4294967295u, global0.x, u_input.a, u_input.a) ^ vec4<u32>(global0.x, u_input.c.x, 1u, 26882u)), vec4<u32>(global0.x, 1u, global0.x, u_input.c.x), select(!vec4<bool>(var_4.a, false, var_4.a, var_4.a), select(vec4<bool>(var_4.a, var_4.a, var_4.a, var_4.a), vec4<bool>(false, var_4.a, true, false), vec4<bool>(var_4.a, false, false, var_4.a)), any(vec2<bool>(var_4.a, false))))), vec4<i32>(u_input.b.x, select(abs(~u_input.b.x), u_input.b.x, var_4.a), u_input.b.x >> ((reverseBits(global0.x) ^ ~u_input.a) % 32u), countOneBits(u_input.b.x)));
}

