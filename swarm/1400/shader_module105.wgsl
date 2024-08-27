struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
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

var<private> global0: vec3<u32>;

var<private> global1: Struct_1;

var<private> global2: bool;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32) -> vec2<f32> {
    global2 = true;
    global1 = Struct_1(global1.a, ~(arg_0.x ^ 1u) << ((4294967295u >> (~(0u << (arg_0.x % 32u)) % 32u)) % 32u), true);
    var var_0 = Struct_3(Struct_1(global1.a, min(~select(global1.b, 7812u, global1.c), global1.b), true));
    global1 = var_0.a;
    let var_1 = (var_0.a.a != abs(firstLeadingBit(var_0.a.a))) || (u_input.d.x < reverseBits(u_input.a));
    return vec2<f32>(-115f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(411f * -1875f)))));
}

fn func_2() -> u32 {
    let var_0 = abs(vec2<i32>(reverseBits(global1.a), ~2147483647i));
    var var_1 = Struct_3(Struct_1(_wgslsmith_add_i32(min(5319i, u_input.d.x), u_input.a) >> (0u % 32u), ~countOneBits(global1.b), select(countOneBits(0u) < u_input.c.x, global1.c, global1.c)));
    var var_2 = Struct_2(var_1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(~(~global0.xz), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1388f), _wgslsmith_f_op_f32(max(1184f, -1642f)), var_1.a.c)))) - vec2<f32>(829f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-852f, 1058f))))));
    var var_3 = (u_input.c.x & _wgslsmith_div_u32(global0.x, 1u)) >= 59206u;
    var var_4 = u_input.d.x;
    return global0.x;
}

fn func_1(arg_0: Struct_3) -> u32 {
    global0 = vec3<u32>(_wgslsmith_mod_u32(~(~global0.x), firstTrailingBit(select(global0.x, 87702u, arg_0.a.c))), u_input.b, func_2()) | (vec3<u32>(4294967295u, global1.b, global1.b) << (_wgslsmith_mod_vec3_u32(select(~vec3<u32>(arg_0.a.b, global0.x, 53404u), _wgslsmith_mod_vec3_u32(vec3<u32>(21216u, u_input.c.x, 36936u), vec3<u32>(global0.x, arg_0.a.b, arg_0.a.b)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, 306u, 19795u), abs(vec3<u32>(global0.x, global1.b, global1.b)))) % vec3<u32>(32u)));
    var var_0 = Struct_1(min(_wgslsmith_dot_vec2_i32(u_input.d.zy, firstLeadingBit(u_input.d.zz)), _wgslsmith_mod_i32(-2147483647i, select(-u_input.d.x, arg_0.a.a, global1.c))), func_2(), all(vec4<bool>(arg_0.a.c, true, true, true)));
    var var_1 = Struct_1(-1i, ~(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, 0u, global0.x), vec3<u32>(arg_0.a.b, 1u, 9164u)), ~25657u) >> (0u % 32u)), all(select(!select(vec2<bool>(arg_0.a.c, global1.c), vec2<bool>(arg_0.a.c, arg_0.a.c), vec2<bool>(false, global1.c)), select(vec2<bool>(true, arg_0.a.c), vec2<bool>(arg_0.a.c, arg_0.a.c), vec2<bool>(true, true)), any(!vec4<bool>(arg_0.a.c, false, false, global1.c)))));
    let var_2 = arg_0;
    global2 = any(!vec2<bool>(var_2.a.c, (19486u < var_1.b) | false));
    return ~(~global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~_wgslsmith_sub_i32(-1i, u_input.a) < ~global1.a;
    global2 = !all(vec4<bool>(true, ~4294967295u == func_1(Struct_3(Struct_1(-2147483647i, 0u, false))), global1.c, any(!vec3<bool>(global1.c, true, global1.c))));
    global0 = vec3<u32>(_wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(4309u, u_input.c.x, global0.x), ~vec3<u32>(0u, global1.b, 4294967295u)), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global0.x, u_input.c.x, 1u), vec3<u32>(0u, 31734u, global0.x)), vec3<u32>(global0.x, 36773u, 27279u)) | ((vec3<u32>(1u, 4294967295u, 10179u) << (vec3<u32>(global1.b, u_input.b, global0.x) % vec3<u32>(32u))) & _wgslsmith_mod_vec3_u32(vec3<u32>(42989u, 4294967295u, global0.x), vec3<u32>(global1.b, global0.x, 1864u)))), 20836u, 1u);
    let var_0 = Struct_1(4648i, u_input.c.x, all(!select(select(vec2<bool>(false, false), vec2<bool>(global1.c, global1.c), vec2<bool>(false, global1.c)), select(vec2<bool>(global1.c, false), vec2<bool>(global1.c, global1.c), false), all(vec3<bool>(true, false, true)))));
    let var_1 = vec2<bool>(any(select(!(!vec3<bool>(true, true, global1.c)), !vec3<bool>(false, false, var_0.c), select(vec3<bool>(false, global1.c, true), select(vec3<bool>(false, true, global1.c), vec3<bool>(var_0.c, global1.c, global1.c), false), vec3<bool>(true, false, true)))), !(!(select(false, false, var_0.c) | !global1.c)));
    let var_2 = select(var_1, !vec2<bool>(true, var_1.x), !(false || all(!vec3<bool>(var_0.c, false, global1.c))));
    var var_3 = var_0.b;
    global0 = ~_wgslsmith_div_vec3_u32(vec3<u32>(var_0.b, ~var_0.b, _wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u, global1.b), var_0.b ^ 0u)), ~(_wgslsmith_add_vec3_u32(vec3<u32>(41652u, u_input.c.x, 14579u), vec3<u32>(1u, 1u, var_0.b)) ^ vec3<u32>(1u, 0u, global1.b)));
    var var_4 = vec4<i32>(-1i) * -firstTrailingBit(~_wgslsmith_mult_vec4_i32(vec4<i32>(8132i, u_input.d.x, -34844i, 0i), vec4<i32>(u_input.a, -2147483647i, global1.a, -2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(~global1.a, countOneBits(1u), _wgslsmith_f_op_f32(step(109f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2042f, -1917f)))));
}

