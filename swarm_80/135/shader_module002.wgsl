struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec4<bool>,
    d: f32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 23> = array<vec2<u32>, 23>(vec2<u32>(0u, 15357u), vec2<u32>(28014u, 59052u), vec2<u32>(0u, 1u), vec2<u32>(1u, 31760u), vec2<u32>(0u, 20044u), vec2<u32>(41051u, 37971u), vec2<u32>(5038u, 4294967295u), vec2<u32>(1u, 8476u), vec2<u32>(4294967295u, 15651u), vec2<u32>(26421u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 43696u), vec2<u32>(0u, 25855u), vec2<u32>(80660u, 44644u), vec2<u32>(17909u, 69237u), vec2<u32>(105276u, 4294967295u), vec2<u32>(82993u, 1u), vec2<u32>(80815u, 47215u), vec2<u32>(55568u, 44881u), vec2<u32>(0u, 1u), vec2<u32>(43435u, 4294967295u), vec2<u32>(1u, 11072u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> i32 {
    return ~_wgslsmith_dot_vec4_i32(~max(vec4<i32>(u_input.b.x, u_input.a, u_input.b.x, u_input.b.x) | vec4<i32>(-55240i, -2147483647i, u_input.a, -29634i), vec4<i32>(u_input.b.x, 2147483647i, u_input.a, u_input.a)), -_wgslsmith_sub_vec4_i32(-vec4<i32>(16656i, 0i, u_input.b.x, -53970i), -vec4<i32>(arg_0.a.a, arg_0.a.a, arg_0.a.a, u_input.a)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_3) -> u32 {
    global0 = array<vec2<u32>, 23>();
    global0 = array<vec2<u32>, 23>();
    var var_0 = ~(~(~vec2<u32>(_wgslsmith_mult_u32(1u, arg_2.b.x), ~arg_2.b.x)));
    let var_1 = Struct_3(!vec4<bool>(true, false, all(select(arg_2.c, vec4<bool>(true, arg_0.b.x, false, false), vec4<bool>(arg_3.a.x, true, arg_1.b.x, false))), !all(vec3<bool>(arg_2.c.x, true, arg_3.b.x))), select(vec4<bool>(any(select(vec3<bool>(arg_1.a.x, arg_1.a.x, true), vec3<bool>(false, true, arg_1.a.x), arg_0.b.x)), all(vec3<bool>(false, arg_0.a.x, arg_3.b.x)), false, !any(vec4<bool>(false, false, false, arg_0.b.x))), vec4<bool>(true, !arg_1.a.x, select(any(arg_0.a.xx), true, arg_0.a.x), true != arg_2.c.x), any(vec4<bool>(select(true, arg_0.a.x, arg_0.a.x), false, false, arg_0.a.x))));
    global0 = array<vec2<u32>, 23>();
    return ~firstTrailingBit(75893u);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<f32>) -> vec4<u32> {
    let var_0 = Struct_1(2147483647i >> ((_wgslsmith_mod_u32(6913u, func_3(Struct_3(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true)), Struct_3(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), Struct_1(-8128i, vec3<u32>(4294967295u, 0u, 4294967295u), vec4<bool>(true, false, true, false), arg_0.x, u_input.b), Struct_3(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true)))) >> (~1u % 32u)) % 32u), abs(firstLeadingBit(vec3<u32>(func_3(Struct_3(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true)), Struct_3(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false)), Struct_1(u_input.b.x, vec3<u32>(3252u, 35146u, 0u), vec4<bool>(true, true, false, true), -2214f, u_input.b), Struct_3(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false))), ~20335u, 1u))), vec4<bool>(false, false, (i32(-1i) * -u_input.a) != _wgslsmith_div_i32(~u_input.b.x, _wgslsmith_add_i32(0i, 12530i)), true), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-780f * _wgslsmith_div_f32(arg_1.x, -2434f)))), _wgslsmith_mult_vec2_i32(max(u_input.b, abs(vec2<i32>(-52057i, -18762i))), vec2<i32>(min(u_input.b.x, func_1(Struct_2(Struct_1(56183i, vec3<u32>(1u, 54412u, 4294967295u), vec4<bool>(false, true, true, true), arg_1.x, vec2<i32>(-1i, u_input.a)), arg_1.yzy, Struct_1(2147483647i, vec3<u32>(51110u, 0u, 4294967295u), vec4<bool>(true, true, false, false), arg_1.x, u_input.b)), arg_0.x)), _wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, u_input.b.x), u_input.b))));
    let var_1 = !select(var_0.c.zy, vec2<bool>(var_0.c.x, var_0.c.x), select(select(vec2<bool>(true, false), !var_0.c.yz, !var_0.c.xx), select(!var_0.c.wy, var_0.c.xx, false), select(vec2<bool>(true, true), vec2<bool>(var_0.c.x, var_0.c.x), true)));
    let var_2 = u_input.a;
    let var_3 = max(_wgslsmith_div_vec2_u32(min(var_0.b.zx, ~(~global0[_wgslsmith_index_u32(0u, 23u)])), ~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.b.x, var_0.b.x, var_0.b.x), var_0.b), 23u)]), _wgslsmith_mod_vec2_u32(~vec2<u32>(var_0.b.x, 1u >> (1u % 32u)), ~global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.b.x, 0u << (var_0.b.x % 32u)), 23u)]));
    global0 = array<vec2<u32>, 23>();
    return ~vec4<u32>(countOneBits(_wgslsmith_mult_u32(var_0.b.x, ~69856u)), var_3.x, 0u, 16717u);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: vec3<bool>) -> f32 {
    var var_0 = select(vec4<bool>(any(select(arg_2, vec3<bool>(true, arg_2.x, arg_2.x), arg_2)), !all(!vec4<bool>(arg_2.x, true, arg_2.x, true)), false, all(arg_2.yz)), select(!select(vec4<bool>(arg_2.x, true, true, true), !vec4<bool>(arg_2.x, true, false, true), any(vec4<bool>(true, false, arg_2.x, false))), vec4<bool>(!arg_2.x, arg_2.x, true, any(select(vec3<bool>(true, arg_2.x, false), arg_2, true))), !(!select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(true, arg_2.x, false, false), true))), true && arg_2.x);
    let var_1 = vec3<u32>(_wgslsmith_dot_vec3_u32((select(arg_0.wyx, arg_0.wxz, arg_2.x) << ((vec3<u32>(arg_0.x, 255u, 2566u) ^ vec3<u32>(arg_0.x, arg_0.x, arg_0.x)) % vec3<u32>(32u))) & (vec3<u32>(1u, arg_0.x, arg_0.x) >> (~arg_0.xxw % vec3<u32>(32u))), arg_0.xzx), 25570u, arg_0.x);
    let var_2 = func_3(Struct_3(select(vec4<bool>(false, all(vec4<bool>(arg_2.x, false, var_0.x, true)), !var_0.x, any(vec2<bool>(var_0.x, var_0.x))), vec4<bool>(all(vec4<bool>(false, true, true, arg_2.x)), false, true, true), select(select(vec4<bool>(true, var_0.x, arg_2.x, false), vec4<bool>(var_0.x, true, true, false), vec4<bool>(false, var_0.x, true, false)), !vec4<bool>(false, true, true, arg_2.x), any(vec4<bool>(false, true, false, var_0.x)))), select(vec4<bool>(var_0.x, all(vec4<bool>(true, var_0.x, false, false)), !var_0.x, all(arg_2)), vec4<bool>(all(vec4<bool>(arg_2.x, true, arg_2.x, false)), true, true, true), vec4<bool>(true, true, true, true))), Struct_3(select(select(vec4<bool>(true, true, true, arg_2.x), vec4<bool>(arg_2.x, true, var_0.x, true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(var_0.x, var_0.x, arg_2.x, arg_2.x), vec4<bool>(true, false, true, var_0.x), false), vec4<bool>(var_1.x == 96328u, false, true, var_0.x)), vec4<bool>(arg_2.x, true | all(arg_2.zy), _wgslsmith_f_op_f32(-431f - 264f) == _wgslsmith_f_op_f32(select(-451f, 365f, arg_2.x)), true)), Struct_1(((30700i << (arg_0.x % 32u)) | reverseBits(arg_1.x)) & 20483i, abs(vec3<u32>(~0u, 1u, ~arg_0.x)), vec4<bool>(!all(arg_2), true, var_0.x, var_0.x || var_0.x), -1415f, _wgslsmith_div_vec2_i32(arg_1.yx, vec2<i32>(reverseBits(18592i), min(12270i, arg_1.x)))), Struct_3(vec4<bool>(any(arg_2) != arg_2.x, true, arg_2.x, (u_input.a >> (41956u % 32u)) >= reverseBits(arg_1.x)), vec4<bool>(!(!var_0.x), false, any(arg_2.xz), true)));
    var_0 = !select(!select(select(vec4<bool>(false, var_0.x, var_0.x, arg_2.x), vec4<bool>(arg_2.x, var_0.x, true, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, var_0.x, false)), !vec4<bool>(arg_2.x, arg_2.x, var_0.x, true), true), select(select(!vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(var_0.x, false, true, true), var_0.x), !(!vec4<bool>(false, arg_2.x, arg_2.x, true)), any(!var_0.zz)), true);
    let var_3 = Struct_3(vec4<bool>(all(select(!vec4<bool>(true, arg_2.x, var_0.x, false), vec4<bool>(var_0.x, var_0.x, arg_2.x, var_0.x), vec4<bool>(true, var_0.x, arg_2.x, true))), false, any(!vec4<bool>(false, arg_2.x, true, var_0.x)), all(!select(var_0.xx, vec2<bool>(var_0.x, var_0.x), true))), select(vec4<bool>(all(!vec4<bool>(true, false, var_0.x, false)), true, false, all(select(vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(true, false, var_0.x, arg_2.x), true))), select(vec4<bool>(any(vec2<bool>(var_0.x, arg_2.x)), !arg_2.x, var_0.x && true, false), !select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(true, arg_2.x, true, var_0.x), vec4<bool>(arg_2.x, true, false, var_0.x)), !var_0.x), all(arg_2)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -199f) - _wgslsmith_f_op_f32(f32(-1f) * -1298f))) + -763f) - 1009f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_i32(countOneBits(_wgslsmith_sub_i32((2147483647i & u_input.b.x) | firstLeadingBit(20331i), _wgslsmith_mult_i32(func_1(Struct_2(Struct_1(u_input.b.x, vec3<u32>(0u, 19642u, 19139u), vec4<bool>(false, false, false, false), 923f, vec2<i32>(u_input.a, u_input.a)), vec3<f32>(1000f, 673f, -686f), Struct_1(u_input.b.x, vec3<u32>(59025u, 1u, 1u), vec4<bool>(false, false, true, false), -329f, vec2<i32>(-2147483647i, -311i))), 1000f), 2147483647i))), 0i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(1u, ~(~select(9180u, 4294967295u, true)), 0u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(func_2(vec2<f32>(1175f, 176f), vec4<f32>(1000f, 1297f, -214f, 104f)), -vec3<i32>(u_input.b.x, -2147483647i, u_input.a), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1811f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-523f))))), ~(~max(countOneBits(1714u), 1u)), ~(~_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b), u_input.a)));
}

