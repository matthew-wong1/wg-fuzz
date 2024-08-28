struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<bool> = vec4<bool>(false, false, false, true);

var<private> global2: vec4<u32> = vec4<u32>(0u, 56842u, 4294967295u, 48726u);

var<private> global3: Struct_2;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<u32> {
    var var_0 = vec3<u32>(_wgslsmith_mod_u32(1u, global2.x), _wgslsmith_mult_u32(~abs(global2.x) << (4294967295u % 32u), u_input.b.x), 1u);
    var var_1 = 1896f;
    var var_2 = ~abs(u_input.c.xyx);
    let var_3 = Struct_1(global3.a.zx, 0i, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-202f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -622f)), all(global1.wy) & !global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1208f))), u_input.c >> (vec4<u32>(4294967295u, _wgslsmith_add_u32(global2.x, 4294967295u), countOneBits(min(1u, var_0.x)), 4294967295u) % vec4<u32>(32u)));
    let var_4 = var_3;
    return u_input.b;
}

fn func_2(arg_0: Struct_2) -> bool {
    global3 = Struct_2(arg_0.a);
    let var_0 = Struct_1(vec2<i32>(arg_0.a.x & global3.a.x, -2147483647i), arg_0.a.x, _wgslsmith_f_op_f32(1138f + -2042f), -_wgslsmith_div_vec4_i32(~(~vec4<i32>(u_input.a, arg_0.a.x, 1i, global3.a.x)), -(~vec4<i32>(2147483647i, arg_0.a.x, arg_0.a.x, 31675i))));
    global2 = ~(~vec4<u32>(global2.x, 0u, u_input.b.x, u_input.b.x) & ~u_input.b) | max(~(~func_3()), vec4<u32>(42691u, _wgslsmith_dot_vec3_u32(~global2.xwx, vec3<u32>(4294967295u, 4294967295u, 12771u)), 1u, firstTrailingBit(4294967295u ^ u_input.b.x)));
    global3 = Struct_2(vec3<i32>(~var_0.d.x, var_0.a.x, u_input.c.x));
    global2 = u_input.b;
    return true;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>) -> StorageBuffer {
    global1 = vec4<bool>(!(all(!vec4<bool>(global1.x, global1.x, global1.x, global1.x)) == select(false, all(vec2<bool>(global1.x, global1.x)), func_2(arg_0))), !global1.x, false, global1.x);
    let var_0 = arg_0;
    let var_1 = ~u_input.b.wx;
    global0 = u_input.c.x & 0i;
    let var_2 = abs(global3.a.x);
    return StorageBuffer(~firstTrailingBit(countOneBits(-1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-919f, -1652f, 903f, 854f)))))))));
    global3 = Struct_2(u_input.c.yzw);
    var var_1 = ~global2.xw;
    var var_2 = var_0.x;
    let var_3 = -7628i;
    let x = u_input.a;
    s_output = func_1(Struct_2(select(vec3<i32>(i32(-1i) * -2147483647i, -40941i, u_input.c.x), _wgslsmith_div_vec3_i32(u_input.c.www | vec3<i32>(19169i, 0i, var_3), firstTrailingBit(vec3<i32>(u_input.c.x, -24682i, 1i))), global1.yxz)), vec3<i32>(-1i, u_input.c.x, global3.a.x));
}

