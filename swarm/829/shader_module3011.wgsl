struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: u32,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: vec2<i32>,
    d: Struct_3,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_4,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_5) -> bool {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(858f * arg_1.d.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_1.d.a, -1224f)))))))));
    let var_1 = arg_1.c.yw;
    var var_2 = 615f;
    global0 = array<i32, 16>();
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.d.c.x) - 913f);
    return !var_1.x;
}

fn func_1(arg_0: vec4<f32>, arg_1: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(arg_0));
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1420f), !select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(false, false)), any(vec2<bool>(false, true)), true), !func_2(vec3<i32>(13448i, global0[_wgslsmith_index_u32(43478u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)]), Struct_5(arg_0.xzy, Struct_4(false, true, vec2<i32>(global0[_wgslsmith_index_u32(31666u, 16u)], global0[_wgslsmith_index_u32(u_input.a, 16u)]), Struct_3(-886f, 0u, var_0, u_input.a)), vec4<bool>(true, false, false, false), Struct_1(-898f, vec3<bool>(false, false, false), global0[_wgslsmith_index_u32(0u, 16u)])))), firstLeadingBit(global0[_wgslsmith_index_u32(~u_input.a, 16u)]));
}

fn func_3() -> u32 {
    return u_input.a;
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> StorageBuffer {
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    return StorageBuffer(arg_1.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.a, 660f, arg_1.c.a) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -912f, arg_1.c.a), vec3<f32>(arg_1.c.a, 138f, arg_1.c.a)), vec3<f32>(arg_1.a.a, -2605f, -734f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1904f, arg_1.c.a, -1274f) * vec3<f32>(-125f, arg_1.a.a, arg_1.c.a)), vec3<f32>(-656f, arg_1.a.a, -1000f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    var var_0 = vec4<i32>(abs(_wgslsmith_mod_i32(~(~(-11156i)), abs(~33301i))), global0[_wgslsmith_index_u32(firstLeadingBit(select(~789u, u_input.a, true)), 16u)] | ~countOneBits(25725i), ~(~global0[_wgslsmith_index_u32(~u_input.a ^ u_input.a, 16u)]), _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(u_input.a, 16u)], -_wgslsmith_mod_i32(-78289i, countOneBits(global0[_wgslsmith_index_u32(1u, 16u)])), _wgslsmith_mod_i32(-39682i << (u_input.a % 32u), -69965i) << (0u % 32u)));
    global0 = array<i32, 16>();
    let x = u_input.a;
    s_output = func_4(!(global0[_wgslsmith_index_u32(u_input.a, 16u)] >= 2147483647i), Struct_2(func_1(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_f32(f32(-1f) * -170f)), _wgslsmith_sub_i32(1i << (u_input.a % 32u), ~global0[_wgslsmith_index_u32(u_input.a, 16u)]) << (func_3() % 32u), Struct_1(_wgslsmith_f_op_f32(ceil(-182f)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), countOneBits(~global0[_wgslsmith_index_u32(u_input.a, 16u)])), 1i));
}

