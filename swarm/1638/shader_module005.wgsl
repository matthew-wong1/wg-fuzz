struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
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

var<private> global0: Struct_1 = Struct_1(vec2<u32>(1u, 1657u));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-463f - _wgslsmith_f_op_f32(1573f * 1480f)), 2096f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1130f - 1067f) - -267f), -1443f)));
    var var_1 = Struct_1(_wgslsmith_div_vec2_u32(global0.a, ~global0.a));
    let var_2 = global0.a.x;
    let var_3 = 1i;
    return _wgslsmith_mod_vec2_u32(var_1.a, ~_wgslsmith_mult_vec2_u32(~(vec2<u32>(global0.a.x, global0.a.x) | vec2<u32>(0u, 12181u)), global0.a));
}

fn func_3() -> u32 {
    global0 = Struct_1(global0.a);
    var var_0 = u_input.b.x;
    var var_1 = Struct_1(abs(countOneBits(vec2<u32>(~4294967295u, global0.a.x))));
    var_0 = u_input.c.x;
    var var_2 = Struct_1(~countOneBits(global0.a));
    return 4294967295u;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = Struct_1(arg_1.a);
    var var_0 = ~func_3();
    var var_1 = vec4<i32>(-_wgslsmith_sub_i32(-2147483647i, -2147483647i), min(-14531i ^ ~reverseBits(u_input.b.x), u_input.c.x), u_input.a.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(0i, ~11183i, 1i, -2147483647i), firstTrailingBit(countOneBits(vec4<i32>(u_input.b.x, -38672i, u_input.c.x, 69425i)))));
    let var_2 = !select(!select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(any(vec3<bool>(true, false, true)), var_1.x >= u_input.a.x, true), all(vec2<bool>(false, false)) || true), select((4294967295u & global0.a.x) < arg_1.a.x, any(vec3<bool>(true, true, true)), true));
    let var_3 = arg_0;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = ~(_wgslsmith_sub_vec2_u32(select(vec2<u32>(global0.a.x, 112095u), ~vec2<u32>(65804u, 0u), u_input.c.x >= u_input.c.x), ~(~vec2<u32>(15274u, global0.a.x))) ^ (func_1() >> (countOneBits(~global0.a) % vec2<u32>(32u))));
    let var_2 = ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.x, 1025u, 0u), ~vec3<u32>(var_1.x, global0.a.x, 0u))) | vec3<u32>(65653u, 1u, firstTrailingBit(4294967295u));
    let var_3 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1132f)))), Struct_1(~_wgslsmith_div_vec2_u32(min(var_2.yz, vec2<u32>(global0.a.x, var_1.x)), global0.a)), Struct_1(vec2<u32>(var_2.x, ~min(var_1.x, 39059u))));
    global0 = var_3;
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(firstTrailingBit(max(vec2<u32>(19187u, global0.a.x), vec2<u32>(51995u, var_2.x)))));
}

