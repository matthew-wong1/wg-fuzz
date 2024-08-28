struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
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

var<private> global0: array<Struct_2, 16>;

var<private> global1: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(vec4<u32>(0u, 30733u, 0u, 18593u), vec4<i32>(0i, 0i, 2147483647i, 1i), 1065f), Struct_2(vec4<u32>(4294967295u, 0u, 71378u, 0u), vec4<i32>(1i, 51433i, -17723i, 17667i), 183f), Struct_2(vec4<u32>(4294967295u, 90180u, 18584u, 1u), vec4<i32>(1068i, 1i, -11451i, 1i), -743f), Struct_2(vec4<u32>(5297u, 16218u, 0u, 0u), vec4<i32>(4350i, -1i, 2147483647i, -1i), -698f), Struct_2(vec4<u32>(18268u, 74535u, 4294967295u, 25985u), vec4<i32>(-1i, 40764i, -4824i, -28104i), 1104f), Struct_2(vec4<u32>(4294967295u, 37938u, 79379u, 45523u), vec4<i32>(-39262i, 1i, 2147483647i, i32(-2147483648)), -139f), Struct_2(vec4<u32>(53538u, 0u, 4294967295u, 29700u), vec4<i32>(2147483647i, 15319i, i32(-2147483648), 3041i), -714f));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = Struct_2(arg_0.a, arg_0.b, arg_0.c);
    let var_1 = global0[_wgslsmith_index_u32(firstTrailingBit(~(~_wgslsmith_clamp_u32(arg_0.a.x, 11187u, var_0.a.x) ^ _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(0u, arg_0.a.x), u_input.b.zz), var_0.a.xz))), 16u)];
    let var_2 = vec3<u32>(var_1.a.x, _wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(arg_0.a.wyx >> (var_1.a.xzw % vec3<u32>(32u)), vec3<u32>(0u, var_0.a.x, var_1.a.x)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 24866u, var_0.a.x), _wgslsmith_sub_vec3_u32(var_1.a.xzz, var_1.a.yzy), vec3<u32>(4294967295u, var_0.a.x, 36454u) & vec3<u32>(var_0.a.x, 1u, var_0.a.x))), reverseBits(u_input.a) | var_0.a.x);
    global0 = array<Struct_2, 16>();
    var var_3 = var_2.x;
    return Struct_1(~(var_0.a.x ^ (u_input.a | _wgslsmith_dot_vec2_u32(arg_0.a.zz, vec2<u32>(0u, 0u)))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    global0 = array<Struct_2, 16>();
    let var_0 = arg_1.a.zw;
    global1 = array<Struct_2, 7>();
    var var_1 = 0u;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 1293f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)));
    return func_2(Struct_2(_wgslsmith_add_vec4_u32(arg_0.a, abs(vec4<u32>(var_0.x, u_input.a, 4294967295u, arg_1.a.x))), select(abs(-vec4<i32>(arg_1.b.x, arg_0.b.x, arg_1.b.x, arg_1.b.x)), _wgslsmith_div_vec4_i32(vec4<i32>(29771i, 16733i, 1i, -1i), arg_1.b), vec4<bool>(true, true, true, all(vec2<bool>(false, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) + 1f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(-1i);
    let var_1 = global0[_wgslsmith_index_u32(u_input.b.x, 16u)];
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -429f) - -432f), _wgslsmith_f_op_f32(var_1.c + _wgslsmith_f_op_f32(-var_1.c))))));
    let var_3 = abs(var_1.a);
    var var_4 = var_1.c <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-142f + var_1.c) + var_1.c) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-343f * 482f) - var_1.c))));
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * 419f);
    var var_6 = Struct_1(39710u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~min(1u, 4294967295u), _wgslsmith_clamp_u32(~var_6.a, func_3(global1[_wgslsmith_index_u32(1u, 7u)], func_1(Struct_2(vec4<u32>(16979u, 19350u, var_3.x, var_6.a), var_1.b, var_2.x), Struct_2(var_3, vec4<i32>(2147483647i, -2147483647i, 2147483647i, -41634i), 2520f), var_1.c)), 4294967295u)));
}

