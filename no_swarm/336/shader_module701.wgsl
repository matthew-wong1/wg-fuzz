struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: u32 = 95649u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> vec4<u32> {
    global0 = ~(vec2<u32>(~(~global0.x), 1u) & (~min(arg_0.a.zz, arg_0.a.yy) << (vec2<u32>(0u, max(arg_0.a.x, u_input.a)) % vec2<u32>(32u))));
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_1.x, -904f, any(vec2<bool>(arg_0.b, false)))))) - arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.x), 1f, arg_0.b)) - -345f)), -780f, _wgslsmith_f_op_f32(f32(-1f) * -1203f));
    global1 = 5951u;
    let var_1 = vec3<bool>(arg_0.b, any(vec3<bool>(arg_0.b, true, true)), arg_0.b);
    var var_2 = arg_0;
    return ~vec4<u32>(firstTrailingBit(countOneBits(firstLeadingBit(68452u))), global0.x, min(var_2.a.x, arg_0.a.x), u_input.d.x);
}

fn func_2(arg_0: Struct_2) -> vec3<i32> {
    var var_0 = (~_wgslsmith_mod_vec4_u32(vec4<u32>(27099u, 1u, u_input.a, global0.x) >> (u_input.d % vec4<u32>(32u)), u_input.d) >> (u_input.d % vec4<u32>(32u))) << ((u_input.d & _wgslsmith_mult_vec4_u32(func_3(Struct_1(u_input.d, true), vec4<f32>(502f, arg_0.b.x, 1343f, arg_0.b.x)) >> (abs(u_input.d) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_sub_u32(global0.x, global0.x), 4294967295u, abs(global0.x), 4294967295u))) % vec4<u32>(32u));
    var var_1 = max(func_3(Struct_1(abs(vec4<u32>(var_0.x, 1u, u_input.b.x, global0.x)), any(vec2<bool>(false, true)) | any(vec2<bool>(false, true))), arg_0.b).wzw, countOneBits(var_0.wyz));
    let var_2 = vec3<u32>(max(106038u, _wgslsmith_dot_vec3_u32(var_0.yxz, select(u_input.d.yzz | u_input.d.wzx, vec3<u32>(var_0.x, global0.x, u_input.c), vec3<bool>(true, true, true)))), var_1.x, var_0.x);
    let var_3 = !((i32(-1i) * -u_input.e.x) != 0i);
    var_0 = u_input.d;
    return reverseBits(-_wgslsmith_add_vec3_i32(select(abs(vec3<i32>(9988i, -32678i, u_input.e.x)), firstTrailingBit(vec3<i32>(u_input.e.x, 1i, u_input.e.x)), vec3<bool>(false, var_3, false)), firstTrailingBit(vec3<i32>(-1i, -2147483647i, u_input.e.x))));
}

fn func_1() -> u32 {
    global0 = u_input.d.wz;
    var var_0 = Struct_1(_wgslsmith_mod_vec4_u32(u_input.d, vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, global0.x, global0.x, u_input.c), u_input.d), global0.x), abs(~u_input.b.x), 1u, 1u)), all(!select(vec2<bool>(false, false), vec2<bool>(true, true), all(vec2<bool>(false, false)))));
    var var_1 = 1i & -_wgslsmith_dot_vec3_i32(func_2(Struct_2(370f, vec4<f32>(-471f, -702f, 1195f, -182f))), -firstLeadingBit(vec3<i32>(-4225i, 18135i, u_input.e.x)));
    var var_2 = ~7338u;
    return ~(~var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.b.x;
    let var_0 = 559f;
    var var_1 = func_1();
    let var_2 = Struct_1(_wgslsmith_mod_vec4_u32(u_input.d, reverseBits(u_input.d | u_input.d)), var_0 <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(515f))))));
    global1 = 11595u;
    global0 = ~(~select(vec2<u32>(u_input.a, var_2.a.x) << (u_input.b % vec2<u32>(32u)), select(u_input.b, vec2<u32>(1u, global0.x), vec2<bool>(true, var_2.b)), true) & ~(_wgslsmith_add_vec2_u32(var_2.a.wx, vec2<u32>(1666u, u_input.d.x)) << (vec2<u32>(var_2.a.x, u_input.d.x) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x, 0i >> (~(~reverseBits(var_2.a.x)) % 32u));
}

