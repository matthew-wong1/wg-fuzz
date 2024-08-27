struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, false);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: vec3<bool>) -> Struct_1 {
    global0 = vec3<bool>(!any(global0.zy), !global0.x, true);
    global0 = arg_3;
    global0 = !vec3<bool>(any(vec3<bool>(arg_3.x, !arg_2.a.b.x, true)), ((true | global0.x) & global0.x) == arg_2.a.b.x, any(select(arg_3, vec3<bool>(global0.x, false, true), arg_1.x != 833f)));
    global0 = !arg_3;
    var var_0 = !any(!select(!vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(true, true, arg_2.a.b.x, arg_3.x), vec4<bool>(false, arg_2.a.b.x, arg_2.a.b.x, true)));
    return arg_2.a;
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: bool) -> vec3<bool> {
    var var_0 = Struct_3(arg_1, func_2(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.d, arg_1.a.x, -1i), 0i), 0i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, -865f, arg_0, arg_0), vec4<f32>(1525f, 1273f, arg_0, 578f))))), Struct_2(Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(6537i, -7326i), vec2<i32>(arg_1.a.x, u_input.d), arg_1.a), vec2<bool>(true, true), vec2<u32>(u_input.a.x, u_input.a.x)), arg_1.a.x >> (arg_1.c.x % 32u), ~u_input.e), vec3<bool>(arg_1.c.x < 33962u, any(!global0.xz), any(vec2<bool>(arg_1.b.x, true)))));
    var var_1 = 723u >> (var_0.b.c.x % 32u);
    var_1 = ~((firstTrailingBit(~u_input.a.x) >> (arg_1.c.x % 32u)) | select(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(85619u, 4294967295u, var_0.b.c.x), u_input.c), ~u_input.a), 11913u, select(false && arg_2, true, !arg_2)));
    var var_2 = Struct_3(var_0.a, var_0.b);
    var var_3 = Struct_2(var_2.a, -2147483647i, vec4<i32>(var_0.b.a.x, ~(~reverseBits(-18469i)), -u_input.d, var_0.b.a.x));
    return select(select(!select(vec3<bool>(true, var_3.a.b.x, true), select(vec3<bool>(true, false, global0.x), vec3<bool>(false, arg_2, arg_1.b.x), true), vec3<bool>(false, global0.x, var_0.b.b.x)), !(!vec3<bool>(global0.x, arg_1.b.x, false)), -5792i <= (0i << (arg_1.c.x % 32u))), vec3<bool>(arg_2 && (_wgslsmith_mod_u32(1u, arg_1.c.x) > func_2(var_2.b.a, vec4<f32>(arg_0, 1000f, 466f, arg_0), Struct_2(Struct_1(u_input.e.xz, var_3.a.b, u_input.c.zx), u_input.e.x, u_input.e), vec3<bool>(var_0.b.b.x, arg_2, true)).c.x), select(true & (arg_2 && var_2.b.b.x), true, true), global0.x), !vec3<bool>(any(vec4<bool>(false, true, true, true)), all(vec4<bool>(true, arg_1.b.x, true, var_3.a.b.x)), var_3.a.b.x));
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: i32) -> f32 {
    global0 = !(!(!func_3(-277f, func_2(vec2<i32>(u_input.b, -39778i), vec4<f32>(-516f, -947f, -543f, -1199f), Struct_2(Struct_1(u_input.e.xz, vec2<bool>(false, true), vec2<u32>(u_input.a.x, u_input.a.x)), arg_1.x, vec4<i32>(0i, -2147483647i, 2147483647i, 1i)), vec3<bool>(global0.x, global0.x, global0.x)), false)));
    var var_0 = global0.x;
    global0 = !vec3<bool>(~arg_2 > -_wgslsmith_mod_i32(u_input.d, -1i), u_input.a.x > ~21945u, select(arg_2 ^ arg_2, 19370i << (0u % 32u), true) >= (i32(-1i) * -16118i));
    var_0 = global0.x;
    var var_1 = !select(vec4<bool>(true, !(!global0.x), all(select(vec3<bool>(true, true, true), vec3<bool>(global0.x, global0.x, global0.x), global0.x)), (arg_0 ^ 29133u) != 27786u), !select(!vec4<bool>(false, global0.x, false, false), select(vec4<bool>(global0.x, true, true, false), vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(global0.x, true, true, false)), select(vec4<bool>(true, global0.x, false, false), vec4<bool>(global0.x, false, false, false), false)), u_input.d < u_input.b);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(559f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1642f)))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-997f, 600f), -216f, !var_1.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -572f)) - _wgslsmith_f_op_f32(func_1(~1u, select(u_input.e, u_input.e, true), _wgslsmith_dot_vec4_i32(vec4<i32>(27757i, u_input.b, 2147483647i, 1i), vec4<i32>(2147483647i, u_input.e.x, 2147483647i, -627i))))), _wgslsmith_f_op_f32(func_1(countOneBits(_wgslsmith_clamp_u32(u_input.c.x, 32197u, 4294967295u)), vec4<i32>(abs(9076i), -u_input.e.x, -2147483647i, max(u_input.d, 1i)), ~0i << (u_input.a.x % 32u))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1135f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(291f, -688f))))))));
    var var_1 = firstTrailingBit(firstTrailingBit(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(0i, 2147483647i), _wgslsmith_mult_i32(-9153i, u_input.d), u_input.e.x)));
    let var_2 = vec4<i32>(u_input.b, 9352i, min(u_input.d, u_input.d), ~1i);
    let var_3 = vec3<i32>(-11984i, u_input.d, u_input.d);
    var var_4 = Struct_2(Struct_1(abs(~(vec2<i32>(-36295i, 16571i) | var_3.yy)), func_2(var_3.zz, vec4<f32>(-215f, _wgslsmith_f_op_f32(var_0.x + var_0.x), -427f, _wgslsmith_f_op_f32(-var_0.x)), Struct_2(Struct_1(vec2<i32>(u_input.d, 51615i), vec2<bool>(global0.x, false), u_input.c.yz), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, -39503i), vec2<i32>(u_input.d, 0i)), vec4<i32>(u_input.e.x, 2147483647i, var_2.x, 1i) >> (vec4<u32>(4294967295u, 0u, 4294967295u, u_input.a.x) % vec4<u32>(32u))), !select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, true, true), vec3<bool>(false, global0.x, true))).b, min(~vec2<u32>(82542u, u_input.c.x), vec2<u32>(96927u, max(u_input.a.x, 4294967295u)))), reverseBits(-1i), select(var_2 | u_input.e, var_2, vec4<bool>(true, false, global0.x, func_3(-109f, Struct_1(u_input.e.zx, vec2<bool>(global0.x, global0.x), vec2<u32>(112522u, 51598u)), global0.x).x)));
    let var_5 = Struct_3(func_2(vec2<i32>(abs(var_4.b << (var_4.a.c.x % 32u)), var_3.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1414f, 113f, -986f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(163f, var_0.x, -1325f, 498f)), vec4<bool>(false, global0.x, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 212f, var_0.x) * vec4<f32>(-1296f, 796f, var_0.x, var_0.x)))), Struct_2(func_2(firstTrailingBit(vec2<i32>(20836i, -58876i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 1319f, 2134f)), Struct_2(Struct_1(var_2.yy, var_4.a.b, vec2<u32>(3302u, u_input.a.x)), var_2.x, u_input.e), !vec3<bool>(global0.x, var_4.a.b.x, global0.x)), var_4.a.a.x, var_4.c), vec3<bool>(select(false, all(vec4<bool>(true, var_4.a.b.x, true, true)), !global0.x), !select(var_4.a.b.x, true, true), func_3(var_0.x, func_2(var_4.c.xx, vec4<f32>(var_0.x, 814f, var_0.x, var_0.x), Struct_2(var_4.a, -23550i, vec4<i32>(12140i, -20852i, -45208i, var_4.a.a.x)), vec3<bool>(true, global0.x, var_4.a.b.x)), global0.x).x)), func_2(select(~max(var_4.c.zy, vec2<i32>(7617i, 1i)), var_4.c.xy, var_4.a.b.x), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_0.x)))), _wgslsmith_f_op_f32(step(var_0.x, -400f))), Struct_2(Struct_1(var_3.yy, vec2<bool>(false, false), vec2<u32>(u_input.c.x, var_4.a.c.x) ^ var_4.a.c), _wgslsmith_div_i32(1741i ^ u_input.e.x, ~var_3.x), countOneBits(vec4<i32>(1302i, 2147483647i, 16808i, var_4.b))), vec3<bool>(var_4.a.b.x, all(vec2<bool>(global0.x, global0.x)) && (var_4.a.b.x & true), var_4.a.b.x)));
    let var_6 = ~_wgslsmith_sub_u32(u_input.a.x, var_5.a.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(1696f);
}

