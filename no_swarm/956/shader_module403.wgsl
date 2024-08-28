struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-275f, 339f, -519f);

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: i32, arg_1: u32) -> f32 {
    global1 = array<Struct_1, 17>();
    global1 = array<Struct_1, 17>();
    let var_0 = -1i;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-1085f, -123f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global0.x)))), 154f)));
    let var_1 = Struct_2(-2147483647i);
    return _wgslsmith_f_op_f32(f32(-1f) * -694f);
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: vec4<bool>) -> u32 {
    global0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, 169f, false))), 111f, 1558f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1005f, _wgslsmith_f_op_f32(global0.x - -606f), -706f))), vec3<f32>(-175f, _wgslsmith_f_op_f32(-1f), 385f)));
    let var_0 = arg_0;
    let var_1 = 947f;
    global0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, -1819f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1744f, global0.x, global0.x)))))))));
    global1 = array<Struct_1, 17>();
    return _wgslsmith_clamp_u32(u_input.e, u_input.e, ~_wgslsmith_sub_u32(4294967295u, ~arg_0));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>) -> u32 {
    global1 = array<Struct_1, 17>();
    global1 = array<Struct_1, 17>();
    global0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(global0.x + global0.x)), _wgslsmith_f_op_f32(abs(1224f)), _wgslsmith_f_op_f32(-339f * global0.x))))));
    var var_0 = arg_1.a;
    let var_1 = !arg_0.a;
    return 4294967295u;
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: u32) -> Struct_1 {
    var var_0 = u_input.d.wzw;
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(216f, 1264f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1346f), _wgslsmith_f_op_f32(sign(1429f)), false))), _wgslsmith_f_op_f32(func_2(~(-3645i), ~0u >> (firstLeadingBit(4294967295u) % 32u))), _wgslsmith_f_op_f32(f32(-1f) * -501f)));
    let var_1 = _wgslsmith_f_op_f32(-global0.x);
    let var_2 = arg_0;
    var var_3 = vec3<u32>(~u_input.e, func_4(global1[_wgslsmith_index_u32(func_3(arg_2, vec3<i32>(-2147483647i, i32(-1i) * -1i, abs(var_0.x)), vec4<bool>(global0.x > var_1, 41960i < var_2.a, true, any(vec3<bool>(true, true, true)))), 17u)], Struct_1(false), _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b.x, 89560u), ~vec2<u32>(arg_2, u_input.b.x) & u_input.b)), arg_2);
    return Struct_1(false);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>) -> StorageBuffer {
    let var_0 = select(~(1u & func_4(func_1(Struct_2(u_input.a.x), 19742i, u_input.e), Struct_1(true), select(vec2<u32>(u_input.c, u_input.b.x), u_input.b, vec2<bool>(arg_0.a, false)))), u_input.c, any(select(select(!vec3<bool>(false, arg_0.a, arg_0.a), select(vec3<bool>(false, false, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, false), true), arg_0.a), !select(vec3<bool>(true, false, true), vec3<bool>(arg_0.a, arg_0.a, arg_0.a), vec3<bool>(true, true, arg_0.a)), arg_0.a)));
    let var_1 = Struct_2(max(2147483647i, abs(u_input.a.x)));
    let var_2 = vec4<u32>(u_input.e, ~(~u_input.b.x >> (~4294967295u % 32u)), abs(_wgslsmith_sub_u32(44849u, var_0)), countOneBits(countOneBits(_wgslsmith_mult_u32(var_0, var_0)))) | max(select(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 39488u, u_input.c, 45291u), vec4<u32>(var_0, u_input.b.x, 1u, var_0)), ~vec4<u32>(21369u, 22918u, u_input.e, u_input.c)), vec4<u32>(0u, 8668u, u_input.c, abs(var_0)), true && (arg_0.a && true)), vec4<u32>(u_input.e, _wgslsmith_add_u32(~4294967295u, 70692u), _wgslsmith_mod_u32(firstTrailingBit(u_input.b.x), ~1u), _wgslsmith_sub_u32(u_input.c, ~38252u)));
    var var_3 = countOneBits(~var_2.wy);
    let var_4 = vec4<bool>(!arg_0.a, true, !select(!arg_0.a | true, true, false), true);
    return StorageBuffer(max(-25556i, u_input.d.x & u_input.d.x), ~(1u | var_2.x), -355f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_1(Struct_2(-43559i), ~u_input.d.x, u_input.e), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, _wgslsmith_f_op_f32(abs(2474f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1000f))))))));
}

