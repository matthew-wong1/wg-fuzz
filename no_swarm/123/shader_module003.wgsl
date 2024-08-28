struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 9>;

var<private> global1: vec3<bool> = vec3<bool>(true, true, true);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2() -> vec3<i32> {
    global1 = vec3<bool>(false, u_input.a < (2147483647i >> ((1u & _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 40779u), vec2<u32>(u_input.b, u_input.b))) % 32u)), !global1.x);
    let var_0 = Struct_1(global1.x, _wgslsmith_mult_vec4_i32(-vec4<i32>(2147483647i, u_input.c.x, _wgslsmith_sub_i32(-29907i, u_input.c.x), 1i), firstLeadingBit(vec4<i32>(0i, 2147483647i, u_input.c.x, u_input.a) << (_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 17702u, u_input.d), vec4<u32>(u_input.d, 10879u, u_input.d, u_input.b)) % vec4<u32>(32u)))));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(219f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1887f) + -1095f)))));
    let var_2 = 1u;
    return -u_input.c;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    var var_0 = vec2<f32>(1f, 1f);
    let var_1 = arg_1.a.b.x != abs(countOneBits(max(u_input.c.x ^ -10930i, _wgslsmith_div_i32(-2147483647i, arg_1.a.b.x))));
    let var_2 = var_0.x;
    var var_3 = firstLeadingBit(arg_1.a.b.yx) ^ u_input.c.yy;
    global0 = array<vec3<f32>, 9>();
    return u_input.d;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<bool>) -> bool {
    let var_0 = ~func_2();
    let var_1 = arg_0;
    global0 = array<vec3<f32>, 9>();
    var var_2 = _wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(u_input.d, 9u)], global0[_wgslsmith_index_u32(~(~31510u), 9u)]);
    var var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(73981u, 9u)]), vec3<f32>(2004f, var_2.x, var_2.x)))))));
    return any(select(!vec4<bool>(u_input.b <= u_input.d, global1.x & true, -1i == var_0.x, false), vec4<bool>(~80295u > func_3(Struct_2(Struct_1(arg_0.x, vec4<i32>(u_input.a, 1i, var_0.x, var_0.x)), 0i), Struct_2(Struct_1(true, vec4<i32>(var_0.x, 56780i, 1i, 2147483647i)), u_input.a)), arg_1.x, true, true), !(global1.x | true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    let var_1 = !select(select(vec3<bool>(false, any(global1.yy), global1.x), select(vec3<bool>(true, false, global1.x), select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(false, true, false), global1.x), select(false, false, global1.x)), !global1.x), !vec3<bool>(false, u_input.a >= u_input.a, global1.x), func_1(!(!vec3<bool>(global1.x, global1.x, global1.x)), !select(global1.zy, vec2<bool>(true, global1.x), true)));
    let var_2 = _wgslsmith_f_op_f32(step(872f, -336f));
    var_0 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(u_input.b, 1u, u_input.b, 38789u)), vec4<u32>(21865u, 4294967295u, u_input.b, u_input.d) ^ vec4<u32>(u_input.d, u_input.d, 4294967295u, u_input.d))), 1i, var_2, ~((~vec3<u32>(u_input.d, u_input.d, 48464u) | _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 25299u, 17927u), vec3<u32>(u_input.b, 4294967295u, 0u))) << (select(~vec3<u32>(26561u, u_input.d, 4294967295u), vec3<u32>(u_input.b, u_input.d, 0u), global1.x) % vec3<u32>(32u))));
}

