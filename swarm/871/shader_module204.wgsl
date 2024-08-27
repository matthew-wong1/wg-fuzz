struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: f32,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
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

var<private> global0: array<bool, 9> = array<bool, 9>(true, true, false, false, true, true, true, false, true);

var<private> global1: Struct_2 = Struct_2(vec3<f32>(1337f, -902f, -979f), false, Struct_1(vec4<bool>(false, true, false, true), vec2<bool>(false, false), -191f, vec2<i32>(-334i, -19217i), 0i));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: u32, arg_3: Struct_3) -> Struct_2 {
    let var_0 = ~vec3<i32>(-12151i, -1i, u_input.a);
    var var_1 = arg_3.a;
    global0 = array<bool, 9>();
    return Struct_2(_wgslsmith_f_op_vec3_f32(-var_1.a), arg_3.a.c.b.x, Struct_1(vec4<bool>(_wgslsmith_f_op_f32(sign(arg_0)) > _wgslsmith_f_op_f32(ceil(arg_3.a.a.x)), select(false, true, true), any(vec4<bool>(global0[_wgslsmith_index_u32(1u, 9u)], arg_3.a.b, global1.c.b.x, false)), var_1.b), select(!(!vec2<bool>(var_1.c.a.x, global1.c.b.x)), vec2<bool>(any(global1.c.a), true), !global1.c.a.zx), -611f, vec2<i32>(firstLeadingBit(-32073i), 2147483647i << (~u_input.b.x % 32u)), _wgslsmith_mult_i32(0i, -1i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: vec3<u32>, arg_3: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec2_i32(arg_0, _wgslsmith_div_vec2_i32(arg_0, -arg_3.a.c.d));
    return Struct_1(global1.c.a, select(func_2(_wgslsmith_f_op_f32(max(arg_3.a.a.x, arg_3.a.a.x)), u_input.b.x, abs(4294967295u), Struct_3(Struct_2(arg_3.a.a, true, arg_3.a.c))).c.b, vec2<bool>(any(!arg_3.a.c.a.yy), false), vec2<bool>(true, true & select(true, global0[_wgslsmith_index_u32(31314u, 9u)], global1.c.a.x))), arg_1, var_0, global1.c.e);
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> StorageBuffer {
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-359f, 879f, global1.a.x) - _wgslsmith_f_op_vec3_f32(abs(global1.a))) - _wgslsmith_f_op_vec3_f32(-global1.a)) * global1.a), any(global1.c.a), func_3(arg_1.xx, _wgslsmith_f_op_f32(global1.c.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), vec3<u32>(u_input.b.x, 54477u, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), ~vec4<u32>(u_input.b.x, 59748u, 1u, 1u))), Struct_3(func_2(1298f, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 78036u, 22707u, 56075u), vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x)), _wgslsmith_div_u32(u_input.b.x, 0u), Struct_3(Struct_2(global1.a, global1.c.b.x, Struct_1(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 9u)], global0[_wgslsmith_index_u32(0u, 9u)], true), vec2<bool>(global0[_wgslsmith_index_u32(1u, 9u)], false), -799f, arg_1.zx, -54017i)))))));
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-310f, _wgslsmith_f_op_f32(-global1.c.c)), 307f, -879f)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.b.x, max(select(u_input.b.x, u_input.b.x, false), 65289u)), u_input.b.x), 9u)], global1.c);
    let var_1 = vec4<i32>(i32(-1i) * -reverseBits(46004i), u_input.a, var_0.c.e, -2147483647i);
    var var_2 = _wgslsmith_sub_vec2_i32(select(select(var_0.c.d, ~_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.x, var_1.x), var_1.ww, var_0.c.d), vec2<bool>(true, global1.b)), _wgslsmith_div_vec2_i32(vec2<i32>(var_0.c.d.x ^ var_0.c.e, var_1.x << (u_input.b.x % 32u)), _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(var_0.c.d, global1.c.d, var_1.wz), arg_1.xx)), !vec2<bool>(!var_0.b, false)), arg_1.zz);
    return StorageBuffer(var_0.c.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(global1.c.c, _wgslsmith_div_vec3_i32(~reverseBits(min(vec3<i32>(global1.c.e, global1.c.e, 0i), vec3<i32>(-13091i, 9311i, -6350i))), select(vec3<i32>(global1.c.d.x << (u_input.b.x % 32u), -1586i, 1i & u_input.c), _wgslsmith_add_vec3_i32(-vec3<i32>(global1.c.d.x, 418i, 15391i), ~vec3<i32>(u_input.c, global1.c.e, -25078i)), vec3<bool>(true, true, true))));
}

