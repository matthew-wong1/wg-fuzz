struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 3>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>) -> bool {
    var var_0 = Struct_2(Struct_1(!(!select(global0.a, global0.a, global0.a.x))), Struct_1(vec4<bool>(global0.a.x, true, false, true)), _wgslsmith_f_op_f32(f32(-1f) * -598f), Struct_1(vec4<bool>(true, 60690u <= _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 12911u, 156439u, 8389u), vec4<u32>(11365u, 11311u, 4294967295u, 1u)), u_input.b < -u_input.a.x, all(!global0.a.wy))));
    var var_1 = Struct_2(var_0.d, var_0.a, _wgslsmith_f_op_f32(step(1429f, var_0.c)), var_0.b);
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))));
    let var_3 = ~(~(~(~_wgslsmith_add_vec2_u32(vec2<u32>(39402u, 17989u), vec2<u32>(873u, 39974u)))));
    let var_4 = Struct_1(vec4<bool>(false, global0.a.x, all(vec4<bool>(false, false, true, var_0.a.a.x)) & !any(vec2<bool>(false, var_0.b.a.x)), true));
    return any(!vec3<bool>(var_4.a.x, true, var_1.d.a.x));
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1903f);
    global1 = array<Struct_2, 3>();
    global0 = Struct_1(vec4<bool>(false, func_3(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, var_0) + vec3<f32>(1111f, var_0, var_0))))), _wgslsmith_dot_vec4_u32(~vec4<u32>(20668u, 28924u, 4294967295u, 0u), firstTrailingBit(vec4<u32>(1u, 4294967295u, 4294967295u, 0u))) < 1u, all(vec4<bool>(false, global0.a.x, false, global0.a.x))));
    global0 = Struct_1(global0.a);
    let var_1 = global0.a.x;
    return ~1u;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = vec4<u32>(abs(~firstLeadingBit(1u)), _wgslsmith_mod_u32(_wgslsmith_add_u32(firstTrailingBit(~23981u), ~1u), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(0u, 0u, 4294967295u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 25412u, 14712u), vec3<u32>(4294967295u, 0u, 2986u), vec3<u32>(44947u, 15129u, 91604u))), ~firstLeadingBit(185u))), _wgslsmith_div_u32(select(_wgslsmith_sub_u32(1u, _wgslsmith_clamp_u32(16945u, 28222u, 65261u)), 1u, !(arg_3.x && true)), 1u), _wgslsmith_sub_u32(_wgslsmith_sub_u32(~func_2(), min(~1u, reverseBits(4294967295u))), func_2()));
    let var_1 = ~(~countOneBits(_wgslsmith_add_vec3_u32(var_0.wyz ^ var_0.yyy, vec3<u32>(4294967295u, 56919u, 21809u))));
    global1 = array<Struct_2, 3>();
    var var_2 = _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))));
    var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 * 696f) * arg_2) * 1f)))));
    return Struct_1(select(vec4<bool>(false, arg_3.x, arg_0.a.x, any(select(arg_0.a.wx, vec2<bool>(false, arg_1.a.x), global0.a.x))), vec4<bool>(global0.a.x, true, all(vec2<bool>(true, true)), true), false));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.c * -2516f), _wgslsmith_f_op_f32(arg_1.c + arg_1.c), arg_0.a.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) * arg_1.c)), -767f)));
    var var_1 = u_input.a.x;
    let var_2 = !global0.a.yw;
    var var_3 = u_input.c.wxz;
    var var_4 = arg_1.c;
    return StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2516f)), arg_1.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_1.c, _wgslsmith_f_op_f32(arg_1.c * -873f))))), arg_1.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.c, arg_1.c, 1104f), vec3<f32>(arg_1.c, 1304f, 1423f), false)))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2466f, _wgslsmith_f_op_f32(round(arg_1.c)), _wgslsmith_f_op_f32(max(arg_1.c, arg_1.c))))), vec4<f32>(arg_1.c, arg_1.c, arg_1.c, _wgslsmith_f_op_f32(arg_1.c - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.c))))), vec3<f32>(_wgslsmith_f_op_f32(abs(-2535f)), _wgslsmith_f_op_f32(abs(1559f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1413f, -577f, arg_1.b.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    let x = u_input.a;
    s_output = func_4(func_1(Struct_1(vec4<bool>(global0.a.x, true, true, global0.a.x || true)), Struct_1(!global0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1856f)) - _wgslsmith_f_op_f32(floor(-1235f))), vec3<bool>(global0.a.x && true, global0.a.x, true)), Struct_2(func_1(Struct_1(global0.a), func_1(func_1(Struct_1(global0.a), Struct_1(vec4<bool>(global0.a.x, false, global0.a.x, global0.a.x)), 746f, global0.a.zyz), Struct_1(global0.a), -1180f, vec3<bool>(false, false, global0.a.x)), _wgslsmith_f_op_f32(-708f - -446f), global0.a.wwx), Struct_1(!(!global0.a)), 1717f, Struct_1(select(select(global0.a, vec4<bool>(true, false, false, global0.a.x), true), !global0.a, true))));
}

