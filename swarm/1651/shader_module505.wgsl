struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec2<i32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16> = array<u32, 16>(4294967295u, 80630u, 145074u, 4294967295u, 11961u, 0u, 48561u, 24229u, 15592u, 0u, 42337u, 39079u, 62473u, 1u, 1u, 0u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: bool) -> i32 {
    global0 = array<u32, 16>();
    global0 = array<u32, 16>();
    let var_0 = Struct_4(Struct_3(Struct_2(vec2<f32>(-216f, _wgslsmith_f_op_f32(1323f + -1235f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-839f)) * _wgslsmith_f_op_f32(698f * -822f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-190f + 561f)))), _wgslsmith_div_vec2_i32(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.d.x), vec2<i32>(u_input.d.x, 20899i)) ^ select(vec2<i32>(1i, -2147483647i), u_input.d.xz, true)), -abs(vec2<i32>(2147483647i, u_input.a))));
    let var_1 = Struct_4(Struct_3(var_0.a.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(441f - -103f))))), -_wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.a, 36737i), var_0.c));
    global0 = array<u32, 16>();
    return -3418i;
}

fn func_2(arg_0: Struct_3) -> vec4<i32> {
    var var_0 = arg_0.a.a.x;
    let var_1 = 0i;
    var_0 = 329f;
    global0 = array<u32, 16>();
    var var_2 = vec3<u32>(39729u, (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5109u, 16u)], 16u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)]), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 16u)], 16u)], u_input.b.x, u_input.c, u_input.b.x)), 16u)], 16u)] << (_wgslsmith_add_u32(~global0[_wgslsmith_index_u32(16025u, 16u)], u_input.c) % 32u)) & _wgslsmith_dot_vec2_u32(u_input.b.xy, ~(~vec2<u32>(55410u, 54001u))), _wgslsmith_mod_u32(0u, u_input.c));
    return ~(~countOneBits(vec4<i32>(var_1, func_3(true), var_1, _wgslsmith_sub_i32(-7121i, u_input.d.x))));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    global0 = array<u32, 16>();
    global0 = array<u32, 16>();
    var var_0 = Struct_5(Struct_1((~vec4<i32>(u_input.a, 0i, -1i, 1357i) & func_2(Struct_3(Struct_2(arg_0.a)))) << (max(~vec4<u32>(u_input.b.x, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(42562u, 16u)], 16u)], u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 35228u)) % vec4<u32>(32u)), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_mult_i32(-35433i, 1i), u_input.d.x << (u_input.b.x % 32u)))));
    global0 = array<u32, 16>();
    var var_1 = arg_0;
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d.x;
    var_0 = u_input.a ^ -u_input.d.x;
    var var_1 = func_1(Struct_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -351f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-2152f, 1000f) + vec2<f32>(1552f, 1000f)))))));
    var var_2 = vec2<bool>(var_1.b.x, all(select(!(!vec4<bool>(var_1.b.x, true, true, var_1.b.x)), vec4<bool>(select(false, true, false), all(var_1.b.zz), true, var_1.b.x), select(vec4<bool>(var_1.b.x, var_1.b.x, false, false), vec4<bool>(var_1.b.x, true, true, true), select(vec4<bool>(var_1.b.x, false, false, false), vec4<bool>(var_1.b.x, true, true, var_1.b.x), var_1.b.x)))));
    var_0 = func_1(Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(239f, 809f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-509f, -848f))))).a.x;
    global0 = array<u32, 16>();
    var var_3 = Struct_1(var_1.a, var_1.b, _wgslsmith_dot_vec2_i32(u_input.d.yz, u_input.d.zz));
    var var_4 = !(!(!(!select(vec3<bool>(true, var_1.b.x, true), var_3.b, var_3.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(countOneBits(~(~u_input.c))));
}

