struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
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

var<private> global0: array<bool, 16> = array<bool, 16>(true, true, true, false, true, false, true, false, true, true, true, true, false, false, false, false);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec4<bool>) -> bool {
    global0 = array<bool, 16>();
    var var_0 = u_input.c;
    return true;
}

fn func_3(arg_0: vec4<i32>) -> bool {
    return any(select(select(select(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 16u)], global0[_wgslsmith_index_u32(u_input.a, 16u)], true), select(vec3<bool>(global0[_wgslsmith_index_u32(25439u, 16u)], global0[_wgslsmith_index_u32(30687u, 16u)], global0[_wgslsmith_index_u32(u_input.b.x, 16u)]), vec3<bool>(false, false, global0[_wgslsmith_index_u32(1u, 16u)]), true), true), select(select(vec3<bool>(global0[_wgslsmith_index_u32(37029u, 16u)], true, false), vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.b.x, 16u)]), global0[_wgslsmith_index_u32(0u, 16u)]), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 16u)], true, false), any(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)]))), true), !vec3<bool>(any(vec2<bool>(false, true)), false, -2147483647i > arg_0.x), true));
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: vec3<f32>, arg_3: f32) -> vec3<f32> {
    let var_0 = Struct_3(Struct_1(vec3<bool>(true, !func_3(vec4<i32>(-6270i, -1i, -1i, 0i)), _wgslsmith_f_op_f32(select(772f, arg_2.x, true)) >= _wgslsmith_f_op_f32(-1183f * -215f))), Struct_2(Struct_1(!select(vec3<bool>(false, false, true), vec3<bool>(true, global0[_wgslsmith_index_u32(13089u, 16u)], global0[_wgslsmith_index_u32(arg_0.x, 16u)]), global0[_wgslsmith_index_u32(72013u, 16u)])), Struct_1(!select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 16u)], true, false), vec3<bool>(true, false, true), global0[_wgslsmith_index_u32(0u, 16u)])), u_input.b.yx), Struct_1(vec3<bool>(true, any(vec2<bool>(true, true)) & global0[_wgslsmith_index_u32(~u_input.a, 16u)], !global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.x, u_input.a), 16u)])));
    let var_1 = vec3<i32>(-1i) * -(vec3<i32>(-1i) * -max(vec3<i32>(0i, -30736i, -2147483647i), vec3<i32>(0i, -29182i, 27496i)));
    global0 = array<bool, 16>();
    global0 = array<bool, 16>();
    let var_2 = abs(var_1.x);
    return _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_div_f32(472f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.x)))), _wgslsmith_f_op_f32(2716f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(arg_2.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2))))));
}

fn func_4(arg_0: i32, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = !(!select(vec3<bool>(0u != u_input.b.x, global0[_wgslsmith_index_u32(countOneBits(0u), 16u)], 133i <= arg_0), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 16u)] | true, true, any(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 16u)], global0[_wgslsmith_index_u32(42345u, 16u)], false))), true));
    let var_1 = ~_wgslsmith_add_vec2_u32(u_input.b.yz, _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(u_input.d.xw, select(u_input.d.wy, vec2<u32>(20905u, u_input.d.x), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 16u)], false))), vec2<u32>(u_input.a & u_input.a, _wgslsmith_dot_vec3_u32(u_input.d.yzx, vec3<u32>(4294967295u, u_input.d.x, u_input.b.x)))));
    var_0 = select(!(!select(select(vec3<bool>(var_0.x, global0[_wgslsmith_index_u32(u_input.a, 16u)], var_0.x), vec3<bool>(true, false, var_0.x), vec3<bool>(true, false, true)), vec3<bool>(true, false, false), any(vec3<bool>(false, false, var_0.x)))), select(vec3<bool>(2147483647i >= ~arg_0, var_0.x, (0i | arg_0) != 0i), vec3<bool>(false, var_0.x, true), vec3<bool>(all(vec2<bool>(true, var_0.x)), !(!var_0.x), all(vec2<bool>(global0[_wgslsmith_index_u32(0u, 16u)], false)))), !(1i != _wgslsmith_clamp_i32(arg_0, ~0i, arg_0)));
    var var_2 = firstLeadingBit(~u_input.d.zyw);
    var_2 = _wgslsmith_add_vec3_u32(u_input.d.wwx, _wgslsmith_clamp_vec3_u32(~vec3<u32>(_wgslsmith_sub_u32(var_1.x, var_1.x), 1u, 22080u), vec3<u32>(_wgslsmith_mod_u32(u_input.d.x, ~u_input.a), var_2.x | _wgslsmith_div_u32(u_input.c, var_2.x), _wgslsmith_div_u32(353u, abs(var_1.x))), u_input.d.zyz));
    return Struct_1(!(!select(!vec3<bool>(var_0.x, true, true), select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, var_0.x, true)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 16>();
    let var_0 = _wgslsmith_mod_u32(~u_input.a, 28235u);
    global0 = array<bool, 16>();
    let var_1 = Struct_4(Struct_1(vec3<bool>(func_1(vec4<bool>(global0[_wgslsmith_index_u32(1u, 16u)], false, false, false)) | !global0[_wgslsmith_index_u32(56507u, 16u)], false, any(vec2<bool>(global0[_wgslsmith_index_u32(0u, 16u)], true)))), Struct_2(func_4(0i, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_2(vec3<u32>(4294967295u, u_input.c, u_input.d.x), 1349f, vec3<f32>(2557f, 720f, 1374f), 280f))))), func_4(min(-2147483647i, -3577i), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1480f, 181f, -201f) + vec3<f32>(-105f, -595f, -286f))))), u_input.d.wz), 1486f, Struct_1(func_4(0i, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1198f, 1000f, -172f), vec3<f32>(1199f, -1296f, 402f)))))).a), vec4<i32>(1i, 2147483647i, _wgslsmith_dot_vec4_i32(abs(~vec4<i32>(61991i, -38524i, -23723i, 30544i)), select(~vec4<i32>(-1i, 12553i, -31733i, 5791i), vec4<i32>(1i, 1i, 1i, 1i), vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 16u)], global0[_wgslsmith_index_u32(u_input.b.x, 16u)], global0[_wgslsmith_index_u32(u_input.d.x, 16u)], global0[_wgslsmith_index_u32(17092u, 16u)]))), ~66743i << (1u % 32u)));
    global0 = array<bool, 16>();
    var var_2 = Struct_3(var_1.b.b, Struct_2(Struct_1(!(!vec3<bool>(true, var_1.a.a.x, global0[_wgslsmith_index_u32(var_1.b.c.x, 16u)]))), func_4(_wgslsmith_clamp_i32(var_1.e.x, ~1i, _wgslsmith_dot_vec4_i32(var_1.e, vec4<i32>(var_1.e.x, 2147483647i, 1i, 0i))), vec3<f32>(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(trunc(var_1.c)), _wgslsmith_f_op_f32(sign(-211f)))), ~_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.b.c.x, 21406u), firstTrailingBit(vec2<u32>(var_0, 1u)))), func_4(var_1.e.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-947f * 804f), _wgslsmith_f_op_f32(-var_1.c), _wgslsmith_div_f32(303f, -324f)))));
    let var_3 = Struct_3(Struct_1(!(!var_1.d.a)), Struct_2(Struct_1(var_2.c.a), Struct_1(var_2.a.a), _wgslsmith_add_vec2_u32(~u_input.d.xz, firstLeadingBit(vec2<u32>(var_0, var_0))) & select(~vec2<u32>(var_1.b.c.x, u_input.b.x), u_input.b.xx, var_0 < u_input.b.x)), func_4(-2147483647i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1123f, var_1.c, var_1.c), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1159f, 466f, var_1.c))), select(var_1.b.b.a.x, var_2.c.a.x, global0[_wgslsmith_index_u32(8366u, 16u)]))) * vec3<f32>(_wgslsmith_f_op_f32(select(var_1.c, var_1.c, var_1.b.a.a.x)), 293f, 969f))));
    let var_4 = 12468u;
    let var_5 = _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(select(~u_input.b, _wgslsmith_mult_vec3_u32(u_input.d.xxx, vec3<u32>(var_4, 30015u, 55465u)), any(var_3.c.a.zz)) ^ u_input.b, ~(~u_input.b)), u_input.d.wyz << (u_input.d.zyz % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_1.e.x) << (_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(u_input.d, vec4<u32>(var_0, 4294967295u, 41364u, 27183u)), vec4<u32>(25493u, 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.c.x, var_3.b.c.x), var_1.b.c), _wgslsmith_mod_u32(var_0, u_input.d.x))) % 32u));
}

