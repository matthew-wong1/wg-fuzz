struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_1,
    d: f32,
    e: bool,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<u32>(1u, 10468u, 0u, 36641u), -102f, vec3<bool>(true, true, false), -908f), -30119i, 2147483647i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32) -> i32 {
    global1 = Struct_2(global1.a, ~_wgslsmith_clamp_i32(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(947i, 2147483647i), vec2<i32>(global1.b, 22978i))), arg_1, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(0i, -2147483647i, arg_1, arg_1), vec4<i32>(global1.b, arg_1, arg_1, arg_1)), reverseBits(vec4<i32>(arg_1, arg_1, -10655i, -2147483647i)))), -((arg_1 | _wgslsmith_add_i32(global1.b, 2147483647i)) >> (firstLeadingBit(select(47546u, global1.a.a.x, global0.c.x)) % 32u)));
    global1 = Struct_2(global1.a, arg_1, ~_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(select(vec3<i32>(0i, global1.c, 9717i), vec3<i32>(2147483647i, -28361i, -1462i), vec3<bool>(false, global0.c.x, false)), vec3<i32>(-1i, global1.c, global1.b)), -_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, -33041i, -1i), vec3<i32>(-27614i, global1.b, global1.b))));
    var var_0 = global0.c.x;
    var_0 = global1.a.c.x;
    let var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(global1.c, select(0i, reverseBits(global1.b), true & any(vec2<bool>(true, false))), -30945i), vec3<i32>(global1.c, arg_1, _wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, -8235i, global1.b), -vec3<i32>(global1.b, 51043i, 53420i) & ~vec3<i32>(-2147483647i, -2147483647i, arg_1))));
    return ~(~var_1.x);
}

fn func_2(arg_0: vec4<i32>, arg_1: u32) -> Struct_3 {
    var var_0 = Struct_4((global1.c ^ arg_0.x) < ~arg_0.x, (vec3<i32>(-1i) * -arg_0.yzy) & abs(-vec3<i32>(global1.b, -2147483647i, -19763i)), firstLeadingBit(arg_1));
    var var_1 = Struct_2(global1.a, _wgslsmith_div_i32(min(var_0.b.x, 0i), 22436i) & func_3(_wgslsmith_mod_vec4_u32(select(global1.a.a, vec4<u32>(21946u, 49343u, 0u, 1u), true), vec4<u32>(global1.a.a.x, 1u, 35009u, 33095u)), select(_wgslsmith_sub_i32(-1i, 22681i), -1i, false)), countOneBits(var_0.b.x & _wgslsmith_sub_i32(countOneBits(44579i), _wgslsmith_clamp_i32(var_0.b.x, 20126i, var_0.b.x))));
    var var_2 = ~(i32(-1i) * -53330i);
    return Struct_3(select(vec4<bool>(all(vec4<bool>(true, var_0.a, global1.a.c.x, false)), false, !global0.c.x, false), select(select(select(vec4<bool>(true, var_0.a, true, var_0.a), vec4<bool>(var_1.a.c.x, false, global0.c.x, global1.a.c.x), global0.c.x), vec4<bool>(true, true, global0.c.x, false), any(vec3<bool>(false, global0.c.x, global1.a.c.x))), select(select(vec4<bool>(global1.a.c.x, true, false, var_0.a), vec4<bool>(var_1.a.c.x, false, true, true), global1.a.c.x), vec4<bool>(true, true, true, true), !global1.a.c.x), any(vec3<bool>(false, global1.a.c.x, false))), all(!var_1.a.c.zy)), Struct_2(global1.a, -19958i, -1i), Struct_1(vec4<u32>(35908u, 1u, _wgslsmith_clamp_u32(var_1.a.a.x, 4294967295u, ~global1.a.a.x), ~(~global0.a.x)), global1.a.b, select(select(vec3<bool>(false, global0.c.x, var_1.a.c.x), !vec3<bool>(true, true, global1.a.c.x), all(global0.c.xz)), !select(var_1.a.c, vec3<bool>(var_0.a, global1.a.c.x, true), false), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, -175f)) + -608f))), var_1.a.d, false);
}

fn func_1(arg_0: bool) -> Struct_1 {
    global1 = Struct_2(Struct_1(~vec4<u32>(_wgslsmith_clamp_u32(4294967295u, 17751u, u_input.a.x), ~global0.a.x, u_input.a.x, ~u_input.a.x), global1.a.d, !vec3<bool>(global1.a.c.x, true, global0.c.x && true), _wgslsmith_f_op_f32(exp2(global1.a.b))), ~(-2147483647i), 29608i);
    let var_0 = func_2(~(~firstLeadingBit(~vec4<i32>(global1.c, -14323i, 0i, global1.b))), u_input.a.x | 4294967295u);
    var var_1 = vec4<i32>(~_wgslsmith_mod_i32(-62213i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 65435i, var_0.b.c), vec3<i32>(var_0.b.c, 32844i, var_0.b.c))), _wgslsmith_mod_i32(102i, countOneBits(global1.b) >> ((u_input.a.x | var_0.b.a.a.x) % 32u)), 0i, -49352i) | (-(vec4<i32>(-1i) * -vec4<i32>(global1.c, var_0.b.b, -23396i, -1i)) | -(~_wgslsmith_mod_vec4_i32(vec4<i32>(global1.b, 1i, 0i, 28349i), vec4<i32>(2147483647i, 2147483647i, -76870i, var_0.b.c))));
    let var_2 = var_0.b;
    return Struct_1(vec4<u32>(global0.a.x, ~40901u, ~global0.a.x, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(7902u, 1u, var_2.a.a.x)) | vec3<u32>(1u, var_2.a.a.x, global1.a.a.x), var_0.b.a.a.zxx)), var_2.a.b, !func_2(abs(_wgslsmith_div_vec4_i32(vec4<i32>(-21607i, global1.b, 2147483647i, var_0.b.c), vec4<i32>(var_1.x, var_1.x, global1.c, 2147483647i))), var_2.a.a.x).c.c, _wgslsmith_f_op_f32(-global0.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(false != global0.c.x);
    let var_0 = func_2(countOneBits(-vec4<i32>(global1.c, _wgslsmith_add_i32(global1.b, -2147483647i), 14130i, global1.b)), _wgslsmith_dot_vec2_u32(abs(~global1.a.a.zz), u_input.a.zy)).b;
    let var_1 = var_0.a.c.yz;
    var var_2 = _wgslsmith_mod_u32(global0.a.x ^ _wgslsmith_add_u32(max(u_input.a.x, global1.a.a.x), 9252u), _wgslsmith_sub_u32(~global0.a.x, var_0.a.a.x) & ~global1.a.a.x) >> (24491u % 32u);
    var var_3 = vec3<u32>(global1.a.a.x, func_2(vec4<i32>(2147483647i, -1i, _wgslsmith_sub_i32(global1.c, func_2(vec4<i32>(35339i, var_0.b, var_0.c, var_0.c), 0u).b.c), global1.b), 1u).b.a.a.x, 40347u);
    var_2 = 1u;
    var var_4 = global1.a;
    global1 = var_0;
    let var_5 = 1734f;
    let x = u_input.a;
    s_output = StorageBuffer(min(~select(~var_4.a.yz, ~var_4.a.yy, true), vec2<u32>(1u, abs(0u)) << (vec2<u32>(~var_0.a.a.x, 9157u ^ u_input.a.x) % vec2<u32>(32u))), vec3<f32>(1520f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(996f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_5, var_5, var_0.a.c.x)), _wgslsmith_f_op_f32(global1.a.b - var_4.d))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -348f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-154f, 246f, global1.a.b) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.d, 378f, global1.a.d) + vec3<f32>(var_0.a.d, global0.d, -1354f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.b, global1.a.d, var_0.a.d))))));
}

