struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 2>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1() -> u32 {
    global1 = array<Struct_1, 2>();
    global0 = 1u;
    var var_0 = global1[_wgslsmith_index_u32(u_input.d.x, 2u)];
    global0 = 1u;
    global1 = array<Struct_1, 2>();
    return u_input.d.x;
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: i32) -> f32 {
    var var_0 = reverseBits(~(-(~(-arg_0))));
    global1 = array<Struct_1, 2>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(336f, 476f)), _wgslsmith_f_op_f32(sign(-1033f))), 949f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1507f, 627f)))))), 845f, -951f);
    var var_2 = global1[_wgslsmith_index_u32(firstLeadingBit(u_input.d.x), 2u)];
    global0 = abs(u_input.d.x);
    return 925f;
}

fn func_2(arg_0: f32) -> vec2<u32> {
    global0 = u_input.d.x;
    var var_0 = global1[_wgslsmith_index_u32(max(abs(_wgslsmith_dot_vec3_u32(reverseBits(countOneBits(vec3<u32>(1u, 56051u, 1u))), vec3<u32>(3189u, 1u << (u_input.d.x % 32u), ~77564u))), u_input.d.x), 2u)];
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(func_3(1i, u_input.d.ww ^ (vec2<u32>(68922u, u_input.d.x) & (u_input.d.zw & u_input.d.yx)), u_input.a.x)), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0)))))));
    var var_2 = func_1();
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(507f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1236f * _wgslsmith_f_op_f32(min(-369f, -917f))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(-arg_0), var_0.b.x)))));
    return ~u_input.d.zw;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec2<u32>) -> vec3<bool> {
    var var_0 = ~(~(~(~(arg_2.x ^ 5372u))));
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 2>();
    var var_0 = ~1i;
    global0 = func_1();
    var_0 = u_input.c.x;
    var var_1 = Struct_1(false, select(vec3<bool>(false, true, -u_input.a.x == (u_input.a.x ^ u_input.b.x)), select(func_4(global1[_wgslsmith_index_u32(4294967295u, 2u)], vec2<u32>(u_input.d.x, 64281u), func_2(109f)), vec3<bool>(true, true, true), true), func_4(Struct_1(true, vec3<bool>(false, false, false)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 0u, u_input.d.x, u_input.d.x), vec4<u32>(u_input.d.x, 65600u, u_input.d.x, u_input.d.x)), 43694u >> (u_input.d.x % 32u)), u_input.d.zx)));
    let var_2 = vec4<bool>(all(!select(vec4<bool>(var_1.a, var_1.b.x, var_1.a, var_1.a), !vec4<bool>(false, var_1.b.x, var_1.a, var_1.b.x), true)), var_1.a & var_1.a, var_1.b.x, var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1197f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-565f, -888f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(987f, _wgslsmith_f_op_f32(min(-2011f, -100f)), var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1124f, -258f)))))), ~reverseBits(_wgslsmith_clamp_vec2_u32(u_input.d.yz << (vec2<u32>(4294967295u, u_input.d.x) % vec2<u32>(32u)), ~vec2<u32>(0u, u_input.d.x), u_input.d.zy)));
}

