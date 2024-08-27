struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(-1247f), Struct_1(-542f), Struct_1(644f));

var<private> global1: Struct_1 = Struct_1(1168f);

var<private> global2: Struct_1 = Struct_1(-716f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.a.x;
    global0 = array<Struct_1, 3>();
    var var_1 = -83928i;
    var var_2 = global0[_wgslsmith_index_u32(var_0 | var_0, 3u)];
    var var_3 = u_input.a;
    return global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.a.x, ~var_0 ^ var_0), 3u)];
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec4<bool> {
    var var_0 = all(vec2<bool>(false, -136f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1157f + global1.a))));
    let var_1 = -vec2<i32>(2147483647i, ~(~(~(-2147483647i))));
    global0 = array<Struct_1, 3>();
    global0 = array<Struct_1, 3>();
    var var_2 = arg_0;
    return select(select(vec4<bool>(true, true, any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true)), false), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, any(vec4<bool>(true, true, true, true)), true), true), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, all(vec2<bool>(true, false)), true, false & all(vec3<bool>(true, true, false))), any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true))))), !(any(select(vec2<bool>(true, true), vec2<bool>(false, true), false)) && any(vec3<bool>(true, true, true))));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = ~_wgslsmith_mult_vec4_u32(abs(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, arg_0, u_input.a.x, u_input.a.x), vec4<u32>(132270u, 0u, 1u, 1u))), select(vec4<u32>(22410u, ~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 26697u, arg_0), vec3<u32>(55131u, 51696u, u_input.a.x)), _wgslsmith_mult_u32(1u, arg_0)), firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(48954u, arg_0, 1u, arg_0), vec4<u32>(u_input.a.x, arg_0, arg_0, arg_0))), vec4<bool>(false, true, true, true)));
    let var_1 = -388f;
    global1 = func_2();
    var var_2 = vec4<bool>(true, !(!(_wgslsmith_div_u32(4294967295u, 6362u) < _wgslsmith_mod_u32(21138u, arg_0))), false, false);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)))))));
    return select(select(select(select(!vec4<bool>(true, false, true, var_2.x), func_3(Struct_1(-249f), 18445i), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)), vec4<bool>(false, any(var_2.zyz), !var_2.x, !var_2.x), select(vec4<bool>(false, var_2.x, var_2.x, true), vec4<bool>(var_2.x, var_2.x, false, true), vec4<bool>(false, var_2.x, var_2.x, var_2.x))), !vec4<bool>(var_2.x, !var_2.x, var_2.x, true), !(!vec4<bool>(true, false, var_2.x, var_2.x))), vec4<bool>(var_2.x, false, (var_2.x | true) | !(!var_2.x), var_2.x), vec4<bool>(any(vec4<bool>(all(vec2<bool>(var_2.x, var_2.x)), var_2.x == var_2.x, true, var_2.x)), var_2.x, true, var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(select(-704f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1494f))), all(!func_1(u_input.a.x, Struct_1(-1950f))))));
    global0 = array<Struct_1, 3>();
    global1 = var_0;
    global0 = array<Struct_1, 3>();
    var var_1 = vec3<u32>(~4294967295u, 0u, 22797u);
    let var_2 = (min(_wgslsmith_sub_u32(~1u, 1u), 1u) != _wgslsmith_clamp_u32(var_1.x, ~u_input.a.x, 0u)) & (-30150i == _wgslsmith_add_i32(~(~30680i), _wgslsmith_sub_i32(-14282i, select(0i, 1i, true))));
    let var_3 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a))) != _wgslsmith_div_f32(819f, _wgslsmith_f_op_f32(-global2.a)), any(vec2<bool>(var_2, all(!vec3<bool>(var_2, var_2, var_2)))), any(vec3<bool>(true, true, true)));
    let var_4 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(max(var_1.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.a.x, var_1.x, var_1.x), countOneBits(vec4<u32>(32366u, 4294967295u, 4294967295u, var_1.x)))), min(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.a.x, var_1.x), vec4<u32>(var_1.x, 1u, 1u, 4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, 41209u, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, 0u, var_1.x))), var_1.x), 47851u, _wgslsmith_dot_vec4_u32(select(~vec4<u32>(var_1.x, 9419u, u_input.a.x, 22225u), ~vec4<u32>(1u, u_input.a.x, 1u, 1u), 1664f <= var_0.a), vec4<u32>(u_input.a.x, _wgslsmith_mult_u32(var_1.x, u_input.a.x), var_1.x & u_input.a.x, abs(u_input.a.x)))), vec4<u32>(firstTrailingBit(3042u) >> (_wgslsmith_sub_u32(firstTrailingBit(var_1.x), abs(var_1.x)) % 32u), _wgslsmith_clamp_u32(~u_input.a.x, 53469u, 13638u), 0u, reverseBits(34506u))), 3u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, reverseBits(~vec3<i32>(1i, 1i, 1i)), u_input.a);
}

