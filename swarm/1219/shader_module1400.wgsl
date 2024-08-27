struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: u32,
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

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec4<i32>(2147483647i, 1i, 30399i, -3192i)), Struct_1(vec4<i32>(26782i, -1i, 5770i, 0i)), Struct_1(vec4<i32>(-29368i, -17780i, 2147483647i, 2147483647i)), Struct_1(vec4<i32>(14930i, -54227i, 30916i, 1i)), Struct_1(vec4<i32>(22000i, -1i, 1i, 34739i)), Struct_1(vec4<i32>(76193i, i32(-2147483648), 11001i, 21899i)), Struct_1(vec4<i32>(31865i, 0i, -11931i, -12972i)), Struct_1(vec4<i32>(7069i, 0i, 9158i, 0i)), Struct_1(vec4<i32>(29090i, 70386i, 2147483647i, 1712i)), Struct_1(vec4<i32>(-6388i, 1i, 48471i, 2147483647i)), Struct_1(vec4<i32>(-12238i, 2147483647i, -20939i, 4361i)), Struct_1(vec4<i32>(2147483647i, 3635i, -45140i, i32(-2147483648))), Struct_1(vec4<i32>(11028i, 1i, -25254i, 45674i)), Struct_1(vec4<i32>(-29144i, 1i, 0i, -1i)), Struct_1(vec4<i32>(-35184i, 0i, 2147483647i, 14444i)), Struct_1(vec4<i32>(-3443i, 30930i, 0i, i32(-2147483648))), Struct_1(vec4<i32>(1i, -14804i, 1i, -13180i)), Struct_1(vec4<i32>(-1i, 2147483647i, -5249i, 2147483647i)), Struct_1(vec4<i32>(i32(-2147483648), -30494i, -30489i, -1i)), Struct_1(vec4<i32>(1i, 1i, 1i, 4598i)), Struct_1(vec4<i32>(11644i, 0i, -164i, -37809i)));

var<private> global1: bool = false;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec3<f32> {
    let var_0 = u_input.b;
    var var_1 = vec4<u32>(0u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(firstTrailingBit(~vec4<u32>(1u, 40671u, var_0, 47218u)), _wgslsmith_div_vec4_u32(~vec4<u32>(1u, 4294967295u, 5191u, 1u), vec4<u32>(0u, var_0, var_0, u_input.b))), ~(vec4<u32>(1383u, u_input.b, 51153u, var_0) | ~vec4<u32>(1u, 1u, 29720u, var_0))), _wgslsmith_div_u32(min(4294967295u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(15754u, u_input.b, 1u), vec3<u32>(0u, 1u, var_0))), u_input.b), reverseBits(_wgslsmith_clamp_u32(var_0, ~_wgslsmith_dot_vec2_u32(vec2<u32>(41432u, 12465u), vec2<u32>(u_input.b, var_0)), var_0)));
    var var_2 = !vec4<bool>(false, !all(vec3<bool>(false, false, false)), true, false);
    var_1 = ~max(~vec4<u32>(var_0, var_0, 32569u, var_1.x) & reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, var_1.x, var_0), vec4<u32>(var_0, var_1.x, u_input.b, 4294967295u))), ~firstTrailingBit(firstLeadingBit(vec4<u32>(53607u, 56723u, var_1.x, 4294967295u))));
    var var_3 = Struct_2(var_2.x);
    return vec3<f32>(1f, 231f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1108f - 1461f)) + _wgslsmith_f_op_f32(trunc(-1000f))));
}

fn func_2(arg_0: i32, arg_1: vec3<i32>, arg_2: vec2<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_3());
    let var_1 = select(vec3<u32>(~abs(1u), reverseBits(u_input.b), _wgslsmith_mod_u32(abs(1u), 1u) | arg_2.x), ~select(vec3<u32>(u_input.b, _wgslsmith_div_u32(20200u, 86388u), 4294967295u >> (1u % 32u)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_2.x, 4294967295u, 4294967295u), vec3<u32>(8348u, arg_2.x, u_input.b)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)))), select(select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), vec3<bool>(any(vec3<bool>(true, false, false)), all(vec3<bool>(true, false, true)), any(vec2<bool>(true, true))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(false, false, false))), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true)), select(any(vec3<bool>(false, false, false)), true, true)), vec3<bool>(true, true, true)));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))), 1f));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: f32, arg_3: i32) -> bool {
    let var_0 = Struct_1(min(min(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -1i, -62573i, arg_3) ^ u_input.d, u_input.d), u_input.d), min(vec4<i32>(_wgslsmith_sub_i32(26369i, -1i), -arg_3, _wgslsmith_sub_i32(u_input.c, u_input.a), u_input.d.x), -firstLeadingBit(vec4<i32>(arg_3, 1i, u_input.c, arg_3)))));
    let var_1 = vec4<u32>(u_input.b, u_input.b, 19317u, max(_wgslsmith_div_u32(_wgslsmith_sub_u32(firstTrailingBit(u_input.b), 50209u), 1u), u_input.e));
    global0 = array<Struct_1, 21>();
    let var_2 = var_0;
    let var_3 = 1u;
    return arg_0.a;
}

fn func_1() -> bool {
    var var_0 = 1u;
    var var_1 = Struct_2(select(true, any(vec3<bool>(true, all(vec3<bool>(true, true, true)), true)), func_4(Struct_2(true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1205f - -134f), _wgslsmith_f_op_f32(func_2(u_input.c, u_input.d.xxy, vec2<u32>(4294967295u, 1u))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1367f + 1213f)), 0i)));
    var var_2 = var_1.a;
    global1 = true;
    var var_3 = Struct_2(true);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true | func_1();
    var var_0 = global0[_wgslsmith_index_u32(4294967295u, 21u)];
    global0 = array<Struct_1, 21>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1905f, -758f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1870f + 209f)))) != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1216f, 1776f) - _wgslsmith_f_op_f32(-1441f * -1757f)))), 1311f, all(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false))))));
    let var_2 = 48668u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(-11806i, var_0.a.xxw, vec2<u32>(var_2, 14173u)))))));
}

