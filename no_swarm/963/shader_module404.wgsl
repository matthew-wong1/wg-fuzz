struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
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

var<private> global0: array<f32, 17> = array<f32, 17>(-1000f, -404f, -149f, 867f, -2105f, 465f, 1000f, -1000f, -177f, 137f, -173f, 1091f, -203f, -1755f, 627f, -333f, 1076f);

var<private> global1: bool = true;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec4<f32>) -> bool {
    var var_0 = u_input.a.x;
    let var_1 = select(vec4<bool>(true, arg_0, !arg_0, any(vec2<bool>(true, true))), select(vec4<bool>(!arg_0 & true, arg_0, true && all(vec4<bool>(false, true, false, arg_0)), arg_0 || any(vec4<bool>(false, false, arg_0, arg_0))), select(!select(vec4<bool>(false, true, false, arg_0), vec4<bool>(false, arg_0, false, false), arg_0), vec4<bool>(true, true, true, true), select(select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(arg_0, arg_0, true, arg_0)), vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(false, true, true, true))), arg_0), select(!select(select(vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(arg_0, true, arg_0, true), vec4<bool>(true, true, false, arg_0)), select(vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(false, false, arg_0, true), true), select(vec4<bool>(true, false, true, false), vec4<bool>(arg_0, arg_0, arg_0, false), arg_0)), vec4<bool>(true | arg_0, true, true, true), arg_0));
    let var_2 = 47544u;
    var var_3 = Struct_1(-340f, vec3<i32>(1i, 1i, 1i), 1i, u_input.a.x);
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(853u, 17u)]), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(max(var_3.a, 397f))))), var_3.b, ~(~select(var_3.b.x, ~10874i, var_1.x)), reverseBits(38056u));
    return false;
}

fn func_2(arg_0: bool, arg_1: vec4<u32>) -> Struct_1 {
    global1 = func_3(-1026f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(51176u, 23960u), 17u)] + 1618f) * -644f), vec4<f32>(-687f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_1.x, 17u)] - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1000f))))), -665f, _wgslsmith_f_op_f32(trunc(-357f))));
    let var_0 = Struct_2(vec2<bool>(func_3(true, vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 17u)] + -1297f), global0[_wgslsmith_index_u32(19981u, 17u)], 1296f, -1867f)), func_3(true, vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_1.x, u_input.a.x), 17u)], 673f, 135f, 1323f))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-962f - global0[_wgslsmith_index_u32(arg_1.x, 17u)]));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~u_input.a.x, 17u)]), -abs(firstLeadingBit(vec3<i32>(842i, -70691i, 10625i))), -_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(42144i, -62818i, 47547i), -2147483647i, 1i, 43229i >> (u_input.a.x % 32u)), max(select(vec4<i32>(-50965i, 1i, 686i, -4226i), vec4<i32>(30876i, 2147483647i, -1i, -1i), vec4<bool>(arg_0, arg_0, var_0.a.x, arg_0)), -vec4<i32>(-1i, -18208i, -4807i, 12688i))), 107757u);
    var var_3 = all(vec3<bool>(arg_0, !(var_0.a.x | (arg_0 & true)), any(vec4<bool>(any(var_0.a), true, func_3(false, vec4<f32>(var_1, var_1, global0[_wgslsmith_index_u32(u_input.a.x, 17u)], -677f)), var_2.a >= 183f))));
    return Struct_1(_wgslsmith_f_op_f32(trunc(var_2.a)), _wgslsmith_mod_vec3_i32(var_2.b, vec3<i32>(-29057i, var_2.b.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(var_2.c, var_2.b.x, var_2.c, var_2.b.x), reverseBits(vec4<i32>(var_2.b.x, -1i, -20004i, 2147483647i))))), i32(-1i) * -(i32(-1i) * -var_2.c), _wgslsmith_dot_vec4_u32(vec4<u32>(58582u | arg_1.x, ~47463u, 0u << (_wgslsmith_mult_u32(36126u, u_input.a.x) % 32u), ~_wgslsmith_dot_vec2_u32(u_input.a, u_input.a)), vec4<u32>(u_input.a.x, ~u_input.a.x, arg_1.x, u_input.a.x)));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: vec4<u32>) -> bool {
    global0 = array<f32, 17>();
    let var_0 = ~238u;
    var var_1 = select(vec4<bool>(any(vec4<bool>(!arg_1, true, !arg_1, true)), any(!(!vec2<bool>(false, arg_1))), true, arg_1), vec4<bool>(!(!arg_1 | arg_1), 4294967295u >= ~(~arg_3.x), true, arg_1), select(!select(select(vec4<bool>(arg_1, arg_1, false, arg_1), vec4<bool>(false, false, arg_1, false), arg_1), select(vec4<bool>(true, arg_1, true, false), vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(true, true, false, true)), select(vec4<bool>(arg_1, arg_1, arg_1, true), vec4<bool>(arg_1, arg_1, true, true), false)), !(!select(vec4<bool>(arg_1, arg_1, false, arg_1), vec4<bool>(true, false, arg_1, true), vec4<bool>(arg_1, false, false, arg_1))), !(!(!vec4<bool>(false, true, arg_1, arg_1)))));
    let var_2 = _wgslsmith_mod_vec4_u32(arg_3, ~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a.x) | vec2<u32>(u_input.a.x, arg_3.x), vec2<u32>(var_0, var_0)), firstTrailingBit(abs(u_input.a.x)), 41078u ^ _wgslsmith_mod_u32(arg_3.x, arg_3.x), arg_3.x));
    var_1 = !select(vec4<bool>(any(select(vec4<bool>(false, var_1.x, arg_1, true), vec4<bool>(false, arg_1, true, false), vec4<bool>(var_1.x, arg_1, false, var_1.x))), false, all(!var_1.xwy), !arg_1), vec4<bool>(true, all(!vec2<bool>(false, var_1.x)), any(vec3<bool>(arg_1, var_1.x, true)), var_1.x), true);
    return false;
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_2(select(vec2<bool>(func_4(firstTrailingBit(1i), true, func_2(true, vec4<u32>(u_input.a.x, 46269u, 55403u, 4294967295u)), vec4<u32>(u_input.a.x, 1u, 63666u, u_input.a.x)), true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(any(vec4<bool>(false, true, true, false)), true), vec2<bool>(true, true)), true));
    return Struct_1(-173f, abs(_wgslsmith_mod_vec3_i32(-reverseBits(vec3<i32>(2181i, -1i, 1i)), vec3<i32>(1i << (u_input.a.x % 32u), 66969i, 1i << (0u % 32u)))), -func_2((global0[_wgslsmith_index_u32(u_input.a.x, 17u)] >= global0[_wgslsmith_index_u32(0u, 17u)]) || true, ~(~vec4<u32>(4064u, u_input.a.x, 4294967295u, 60784u))).c, u_input.a.x);
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    let var_0 = ((arg_0.b.x >> (_wgslsmith_clamp_u32(firstTrailingBit(arg_0.d), firstLeadingBit(0u), _wgslsmith_mod_u32(48143u, 24192u)) % 32u)) ^ _wgslsmith_dot_vec2_i32(arg_0.b.yz, ~func_2(true, vec4<u32>(24169u, 100073u, 15634u, 1u)).b.zz)) >> (~(~20999u) % 32u);
    return Struct_2(select(select(vec2<bool>(all(vec2<bool>(true, true)), true), vec2<bool>(func_3(false, vec4<f32>(132f, 141f, -1286f, arg_0.a)), any(vec4<bool>(true, true, true, false))), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(518f));
    var var_1 = global0[_wgslsmith_index_u32(u_input.a.x, 17u)];
    global0 = array<f32, 17>();
    let var_2 = Struct_2(var_0.a);
    let var_3 = func_5(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-198f, global0[_wgslsmith_index_u32(86092u, 17u)]))), vec3<i32>(_wgslsmith_add_i32(43532i, 98855i), ~0i, 22000i) >> (~(~vec3<u32>(63128u, u_input.a.x, 8078u)) % vec3<u32>(32u)), abs(0i), u_input.a.x));
    var var_4 = vec3<f32>(-664f, global0[_wgslsmith_index_u32(min(u_input.a.x, abs(_wgslsmith_mult_u32(1u, 4294967295u) << (u_input.a.x % 32u))), 17u)], global0[_wgslsmith_index_u32(1u, 17u)]);
    let var_5 = Struct_2(!vec2<bool>(var_2.a.x, func_5(func_1(var_4.x)).a.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

