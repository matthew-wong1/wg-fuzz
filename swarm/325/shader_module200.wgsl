struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 13>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: u32) -> Struct_1 {
    var var_0 = 0i;
    var_0 = _wgslsmith_div_i32(0i, firstTrailingBit(3248i));
    var var_1 = u_input.a;
    global0 = array<vec4<i32>, 13>();
    var var_2 = Struct_4(abs(~global0[_wgslsmith_index_u32(76690u, 13u)]));
    return arg_0.a;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4) -> vec4<bool> {
    global0 = array<vec4<i32>, 13>();
    var var_0 = Struct_4(min(~arg_1.a, firstLeadingBit(vec4<i32>(91444i, arg_1.a.x, 0i, arg_1.a.x) << (~vec4<u32>(u_input.a, 61810u, u_input.a, u_input.a) % vec4<u32>(32u)))));
    global0 = array<vec4<i32>, 13>();
    var var_1 = arg_1.a.wy;
    var var_2 = select(select(vec4<bool>(any(vec3<bool>(true, true, true)), select(true, true, false) || true, true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), true))), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), 2147483647i <= arg_1.a.x), false), select(select(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), true), vec4<bool>(true, all(vec2<bool>(true, true)), any(vec3<bool>(true, true, false)), true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), false), true), vec4<bool>(true, true, true, true), vec4<bool>(-18160i <= var_0.a.x, true, 0u >= arg_0.a.a.x, true))), select(select(vec4<bool>(true, all(vec4<bool>(true, true, true, false)), false, all(vec3<bool>(false, true, false))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true)), vec4<bool>(true, true, true, select(true, true, true) || false), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true)))));
    return vec4<bool>(var_2.x, true, var_1.x <= var_0.a.x, all(vec2<bool>(var_2.x, all(!vec3<bool>(var_2.x, true, var_2.x)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<u32>) -> bool {
    global0 = array<vec4<i32>, 13>();
    let var_0 = Struct_1(~countOneBits(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, arg_1.x, 1u, u_input.a), vec4<u32>(arg_1.x, u_input.a, 56492u, u_input.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, arg_1.x, arg_1.x, arg_1.x), vec4<u32>(4294967295u, u_input.a, 0u, u_input.a), vec4<u32>(1u, u_input.a, 1u, u_input.a)))));
    let var_1 = false;
    let var_2 = Struct_4(global0[_wgslsmith_index_u32(~countOneBits(24713u), 13u)]);
    var var_3 = 804f;
    return any(select(arg_0, !(!arg_0), false)) == (arg_1.x <= ~u_input.a);
}

fn func_1() -> bool {
    let var_0 = !func_4(func_3(Struct_2(func_2(Struct_2(Struct_1(vec4<u32>(1u, u_input.a, u_input.a, 22907u))), vec3<bool>(false, false, false), u_input.a)), Struct_4(vec4<i32>(-2147483647i, -39041i, -1i, -32994i))), vec3<u32>(u_input.a, u_input.a, ~(u_input.a & u_input.a)));
    var var_1 = -select(-14074i, _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 0i, -28441i, 2147483647i), ~global0[_wgslsmith_index_u32(2468u, 13u)] << (select(vec4<u32>(u_input.a, 24449u, u_input.a, u_input.a), vec4<u32>(u_input.a, 24494u, u_input.a, u_input.a), vec4<bool>(var_0, var_0, false, false)) % vec4<u32>(32u))), func_3(Struct_2(Struct_1(vec4<u32>(u_input.a, 35290u, u_input.a, 4294967295u))), Struct_4(vec4<i32>(5764i, -22289i, -14758i, 22652i))).x & true);
    global0 = array<vec4<i32>, 13>();
    let var_2 = Struct_4(vec4<i32>(-_wgslsmith_dot_vec4_i32(~global0[_wgslsmith_index_u32(u_input.a, 13u)], reverseBits(vec4<i32>(2147483647i, -2147483647i, -27980i, 1i))), -1i, min(27940i, -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(31964i, 63415i), -vec2<i32>(2147483647i, 1i)) ^ 43378i));
    var var_3 = countOneBits(_wgslsmith_div_i32(firstTrailingBit(2147483647i) & 25020i, 5479i)) == ~(-var_2.a.x);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = firstTrailingBit(reverseBits(~u_input.a));
    global0 = array<vec4<i32>, 13>();
    let var_2 = vec2<bool>(false, any(vec3<bool>(false, !(!var_0), true)));
    let var_3 = !all(vec4<bool>(select(true, !var_0, !var_0), true, func_1(), func_3(Struct_2(Struct_1(vec4<u32>(0u, var_1, var_1, var_1))), Struct_4(global0[_wgslsmith_index_u32(u_input.a, 13u)])).x));
    global0 = array<vec4<i32>, 13>();
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1036f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(276f * 1079f))), 512f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1522f)))));
    var var_5 = Struct_2(Struct_1(abs(~vec4<u32>(0u, u_input.a, var_1, 3855u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(var_4.wz)), _wgslsmith_div_i32(firstTrailingBit(1i), abs(abs(-1i))) | -(reverseBits(10728i) >> (~u_input.a % 32u)), i32(-1i) * -1i);
}

