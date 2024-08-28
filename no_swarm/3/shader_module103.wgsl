struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 25479i;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(false, false, false, false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: i32, arg_1: vec2<bool>) -> u32 {
    global0 = _wgslsmith_sub_i32(arg_0, countOneBits(-(~arg_0 | arg_0)));
    global1 = Struct_1(vec4<bool>(true, true, !(global1.a.x || false), all(!global1.a.wxz)));
    global0 = _wgslsmith_sub_i32(countOneBits(-u_input.b.x) | -1i, arg_0);
    var var_0 = select(vec2<i32>(-1i & ~u_input.b.x, -(i32(-1i) * -1i)) & firstLeadingBit(_wgslsmith_add_vec2_i32(~vec2<i32>(arg_0, -2147483647i), min(vec2<i32>(0i, arg_0), vec2<i32>(-15029i, arg_0)))), u_input.b.zz, true);
    var var_1 = _wgslsmith_sub_vec3_u32(~vec3<u32>(1u, 1u, 1u), vec3<u32>(reverseBits(1u), countOneBits(9909u), _wgslsmith_sub_u32(abs(56875u), 4294967295u | _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 47965u, 1u), vec4<u32>(4747u, 24567u, 1u, 1u)))));
    return ~(~var_1.x);
}

fn func_3(arg_0: u32) -> Struct_1 {
    var var_0 = ~vec2<u32>(arg_0, arg_0);
    var var_1 = Struct_1(vec4<bool>(true, any(global1.a.xxz), false, !(global1.a.x | any(vec3<bool>(true, global1.a.x, global1.a.x)))));
    var var_2 = u_input.b.x;
    var var_3 = !select(select(select(select(var_1.a.xw, var_1.a.yw, vec2<bool>(false, true)), global1.a.wz, vec2<bool>(true, true)), var_1.a.zx, select(select(vec2<bool>(true, true), vec2<bool>(global1.a.x, var_1.a.x), global1.a.x), var_1.a.wx, true)), global1.a.wz, true);
    global0 = reverseBits(~31467i);
    return Struct_1(var_1.a);
}

fn func_1() -> StorageBuffer {
    global1 = func_3(_wgslsmith_sub_u32(func_2(min(abs(-2117i), 1i), select(select(global1.a.zz, vec2<bool>(false, global1.a.x), vec2<bool>(global1.a.x, false)), select(vec2<bool>(global1.a.x, false), global1.a.yw, global1.a.x), any(vec2<bool>(global1.a.x, global1.a.x)))), abs(22813u)));
    var var_0 = func_3(1u);
    let var_1 = Struct_1(select(!var_0.a, select(!select(vec4<bool>(var_0.a.x, true, var_0.a.x, global1.a.x), vec4<bool>(var_0.a.x, true, false, false), var_0.a), select(vec4<bool>(false, false, var_0.a.x, false), select(global1.a, var_0.a, var_0.a.x), true), all(select(vec2<bool>(false, var_0.a.x), vec2<bool>(var_0.a.x, global1.a.x), var_0.a.yw))), !vec4<bool>(true, true, var_0.a.x, false)));
    var var_2 = 0u;
    let var_3 = vec3<f32>(1415f, -117f, 1f);
    return StorageBuffer(29926u, u_input.a, min(vec2<i32>(~u_input.a, max(u_input.b.x >> (36546u % 32u), _wgslsmith_add_i32(33885i, u_input.a))), ~vec2<i32>(abs(0i), -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~0i;
    global1 = Struct_1(!global1.a);
    global0 = u_input.a;
    var var_1 = Struct_1(vec4<bool>(any(!(!vec3<bool>(global1.a.x, global1.a.x, true))), any(vec3<bool>(global1.a.x, global1.a.x, any(global1.a))), !global1.a.x, 1380f <= _wgslsmith_f_op_f32(round(-1174f))));
    let var_2 = _wgslsmith_div_i32(var_0, _wgslsmith_sub_i32(i32(-1i) * -53223i, 39383i)) ^ 1i;
    let x = u_input.a;
    s_output = func_1();
}

