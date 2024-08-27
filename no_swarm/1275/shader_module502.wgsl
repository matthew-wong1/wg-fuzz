struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(60231i, -1i, 44157i, 25662i);

var<private> global1: Struct_2;

var<private> global2: array<bool, 30>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    global1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1590f, -1000f)))));
    let var_0 = Struct_3(global0.zzx, ~select(select(select(vec4<i32>(global0.x, -5096i, global0.x, -47105i), vec4<i32>(global0.x, 1i, global0.x, global0.x), global2[_wgslsmith_index_u32(32185u, 30u)]), countOneBits(vec4<i32>(global0.x, -2147483647i, 2147483647i, global0.x)), select(vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 30u)], false, global2[_wgslsmith_index_u32(u_input.a, 30u)]), vec4<bool>(false, false, global2[_wgslsmith_index_u32(u_input.a, 30u)], true), global2[_wgslsmith_index_u32(4294967295u, 30u)])), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 34935i, global0.x, -14068i) | vec4<i32>(2147483647i, -13008i, -13070i, global0.x), vec4<i32>(global0.x, 9050i, global0.x, global0.x) << (vec4<u32>(u_input.a, u_input.a, u_input.a, 0u) % vec4<u32>(32u)), vec4<i32>(global0.x, -21605i, 0i, global0.x)), select(vec4<bool>(true, false, global2[_wgslsmith_index_u32(30284u, 30u)], true), !vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 30u)], false, true, global2[_wgslsmith_index_u32(u_input.a, 30u)]), true)), ~_wgslsmith_mod_i32(_wgslsmith_mult_i32(global0.x, i32(-1i) * -33014i), _wgslsmith_add_i32(abs(global0.x), -2147483647i)));
    return _wgslsmith_f_op_f32(global1.a - 867f);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: f32) -> i32 {
    var var_0 = Struct_1(arg_2);
    global1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a + 437f) * _wgslsmith_f_op_f32(max(global1.a, var_0.a))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a - var_0.a), arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))));
    var var_1 = ~(~firstTrailingBit(firstTrailingBit(global0.zyy) << (select(arg_1, vec3<u32>(u_input.a, 4622u, 16134u), global2[_wgslsmith_index_u32(13709u, 30u)]) % vec3<u32>(32u))));
    global0 = ~reverseBits(vec4<i32>(-1i) * -(vec4<i32>(arg_0.x, -28636i, global0.x, var_1.x) << (vec4<u32>(u_input.a, 16495u, 8026u, 4294967295u) % vec4<u32>(32u))));
    global2 = array<bool, 30>();
    return 0i;
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: f32) -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(u_input.a, 30u)];
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-1757f * _wgslsmith_f_op_f32(-114f + arg_1)));
    global0 = ~vec4<i32>(arg_0.x, 0i, -abs(func_2(global0.wxz, vec3<u32>(30937u, 1u, 58864u), 660f)), global0.x);
    var var_2 = _wgslsmith_clamp_u32(18685u, u_input.a, ~_wgslsmith_mult_u32(~u_input.a, ~4294967295u)) << ((firstTrailingBit(949u) & 1u) % 32u);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1095f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2 * var_1.a)))));
    return ~(~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(1u, u_input.a)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(u_input.a, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~global0.x, ~u_input.a, func_1(vec2<i32>(global0.x, global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-458f))), _wgslsmith_f_op_f32(f32(-1f) * -1030f)));
}

