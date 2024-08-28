struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: i32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 2> = array<vec4<i32>, 2>(vec4<i32>(2147483647i, i32(-2147483648), -15627i, -21641i), vec4<i32>(1i, i32(-2147483648), -2596i, 2147483647i));

var<private> global1: array<f32, 7> = array<f32, 7>(-339f, -1778f, -1000f, -1261f, 948f, 122f, 472f);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec2<i32>) -> bool {
    return any(select(vec2<bool>(!any(vec3<bool>(true, true, false)), true), select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true))), vec2<bool>(true, true), vec2<bool>(false, true)), false));
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_1(!(!func_3(_wgslsmith_mult_vec2_i32(u_input.a.zz, u_input.a.xw))));
    var var_1 = Struct_2(Struct_1(var_0.a), ~(~vec2<u32>(87414u, min(u_input.b, u_input.b))), -u_input.a.x, !vec2<bool>(any(!vec4<bool>(var_0.a, var_0.a, false, var_0.a)), !all(vec3<bool>(false, var_0.a, false))));
    global1 = array<f32, 7>();
    var var_2 = abs(~(_wgslsmith_sub_vec4_u32(min(vec4<u32>(u_input.b, u_input.b, u_input.b, 47135u), vec4<u32>(var_1.b.x, 4294967295u, u_input.b, 48428u)), max(vec4<u32>(0u, u_input.b, 4294967295u, var_1.b.x), vec4<u32>(var_1.b.x, var_1.b.x, u_input.b, var_1.b.x))) & vec4<u32>(_wgslsmith_sub_u32(1u, u_input.b), ~var_1.b.x, var_1.b.x, ~4294967295u)));
    var_0 = var_1.a;
    return select(select(select(vec3<bool>(false, var_0.a, true), vec3<bool>(func_3(u_input.a.yx), true, false), var_0.a), vec3<bool>(any(vec4<bool>(false, true, var_1.d.x, true)), !(global1[_wgslsmith_index_u32(4294967295u, 7u)] <= global1[_wgslsmith_index_u32(var_1.b.x, 7u)]), true), var_0.a), !select(select(select(vec3<bool>(var_0.a, true, true), vec3<bool>(false, true, false), false), !vec3<bool>(true, var_1.a.a, false), vec3<bool>(var_1.a.a, var_0.a, var_0.a)), vec3<bool>(4294967295u >= u_input.b, var_1.a.a, false), select(!vec3<bool>(true, true, var_0.a), vec3<bool>(false, var_1.d.x, false), var_1.d.x)), select(vec3<bool>(true, false, !var_1.d.x), select(select(!vec3<bool>(var_0.a, var_1.a.a, var_1.a.a), select(vec3<bool>(true, var_0.a, var_0.a), vec3<bool>(false, var_1.a.a, var_1.a.a), vec3<bool>(var_1.d.x, false, var_1.d.x)), var_0.a), !select(vec3<bool>(var_1.a.a, true, false), vec3<bool>(true, var_0.a, var_1.a.a), false), select(!vec3<bool>(var_0.a, var_0.a, true), select(vec3<bool>(true, var_0.a, false), vec3<bool>(false, var_0.a, var_0.a), vec3<bool>(var_0.a, var_0.a, true)), !vec3<bool>(var_1.a.a, var_0.a, var_1.d.x))), any(!vec3<bool>(var_1.d.x, false, var_1.a.a)) || true));
}

fn func_1() -> vec3<bool> {
    var var_0 = Struct_2(Struct_1((_wgslsmith_sub_u32(0u, u_input.b) > 1u) & all(vec3<bool>(false, false, true))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(~u_input.b, 3602u & u_input.b), vec2<u32>(_wgslsmith_mult_u32(u_input.b, 0u), ~u_input.b)), 1i, vec2<bool>(select(all(vec2<bool>(true, true)), true, u_input.b == min(1u, u_input.b)), true));
    var var_1 = firstLeadingBit(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(~9136u, var_0.b.x ^ 1u, min(61833u, u_input.b))), max(~(~vec3<u32>(1u, u_input.b, 4294967295u)), ~(~vec3<u32>(0u, u_input.b, 1u)))));
    global1 = array<f32, 7>();
    global0 = array<vec4<i32>, 2>();
    var var_2 = Struct_1(var_0.a.a);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec4<bool>(u_input.b != u_input.b, true, false, true));
    var_0 = all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), !select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(false, false)), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, false), vec2<bool>(true, true))));
    let var_1 = Struct_1(all(func_1()));
    var var_2 = Struct_2(var_1, select(~vec2<u32>(4294967295u, 36740u), vec2<u32>(~37314u, abs(u_input.b)), func_2().yx), _wgslsmith_mod_i32(u_input.a.x, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-10677i, u_input.a.x, -u_input.a.x), u_input.a.x)), !select(vec2<bool>(true, true), vec2<bool>(true, var_1.a), var_1.a));
    let var_3 = Struct_2(Struct_1(false), var_2.b, ~(~(-1i)), vec2<bool>(var_2.d.x, var_1.a));
    var_2 = Struct_2(Struct_1(var_3.d.x), firstLeadingBit(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(var_2.b, vec2<u32>(0u, 1u)), _wgslsmith_mod_vec2_u32(vec2<u32>(var_2.b.x, 0u), var_3.b) & ~vec2<u32>(var_2.b.x, var_3.b.x))), u_input.a.x, var_3.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(149f)), _wgslsmith_f_op_f32(-1f)), vec2<u32>(4294967295u, ~1u), -502f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1563f, global1[_wgslsmith_index_u32(u_input.b, 7u)], global1[_wgslsmith_index_u32(38180u, 7u)]), vec3<f32>(global1[_wgslsmith_index_u32(96316u, 7u)], 1194f, 411f))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, global1[_wgslsmith_index_u32(58197u, 7u)]))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(83199u, 61290u) | _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4352u, 0u), vec3<u32>(u_input.b, 24283u, 4294967295u)), 7u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 7u)]) - -715f))));
}

