struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec4<bool>,
    d: bool,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec4<i32>, 10> = array<vec4<i32>, 10>(vec4<i32>(-9311i, i32(-2147483648), -14955i, -58377i), vec4<i32>(30011i, -761i, -37194i, 1i), vec4<i32>(-58165i, 1i, 1i, -1i), vec4<i32>(14611i, 0i, 2147483647i, 62718i), vec4<i32>(1i, 10780i, 0i, i32(-2147483648)), vec4<i32>(-1i, -7574i, 0i, -19543i), vec4<i32>(2147483647i, i32(-2147483648), 1i, i32(-2147483648)), vec4<i32>(2147483647i, 55455i, 616i, i32(-2147483648)), vec4<i32>(-6495i, 2147483647i, 32528i, -1i), vec4<i32>(68893i, 13560i, 7036i, -10854i));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32) -> vec4<bool> {
    let var_0 = select(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, ~(-2428i), arg_0), u_input.a.yyz), 0i, ~(min(51816i, u_input.b.x) << (_wgslsmith_div_u32(114664u, 17235u) % 32u)), _wgslsmith_add_i32(_wgslsmith_div_i32(~15895i, ~2147483647i), -82060i)), ~_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(global1[_wgslsmith_index_u32(u_input.c & u_input.d, 10u)], _wgslsmith_sub_vec4_i32(global1[_wgslsmith_index_u32(u_input.d, 10u)], vec4<i32>(arg_0, u_input.b.x, -2147483647i, arg_0))), vec4<i32>(-arg_0, _wgslsmith_dot_vec2_i32(u_input.a.yw, u_input.a.zx), ~u_input.b.x, reverseBits(2147483647i))), !any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true))));
    var var_1 = _wgslsmith_add_i32(var_0.x, -3662i) & var_0.x;
    let var_2 = ~min(_wgslsmith_mult_vec3_u32(~select(vec3<u32>(u_input.d, 0u, 1u), vec3<u32>(u_input.d, u_input.c, 0u), vec3<bool>(false, true, true)), vec3<u32>(16135u, u_input.c, u_input.c)), ~countOneBits(vec3<u32>(u_input.d, 42124u, 1u)));
    var var_3 = true;
    global1 = array<vec4<i32>, 10>();
    return select(select(select(vec4<bool>(any(vec4<bool>(false, true, true, false)), true, true, false), vec4<bool>(true, true, true, true), false), vec4<bool>(!(var_2.x != 1u), true, 66490u >= u_input.d, !all(vec3<bool>(false, true, false))), true), !select(vec4<bool>(all(vec3<bool>(true, false, true)), any(vec3<bool>(true, false, false)), true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), true), true), true);
}

fn func_2() -> bool {
    var var_0 = any(vec4<bool>(true, true, true, true));
    let var_1 = -1i;
    var_0 = all(vec2<bool>(any(func_3(-u_input.b.x)), any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), all(vec2<bool>(false, true))))));
    return true;
}

fn func_1() -> f32 {
    global0 = func_2();
    global1 = array<vec4<i32>, 10>();
    let var_0 = u_input.a;
    var var_1 = Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(-u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.b.x), vec2<i32>(-32584i, 0i))), reverseBits(var_0.zy)) | (countOneBits(var_0.xy << (vec2<u32>(0u, u_input.d) % vec2<u32>(32u))) ^ abs(_wgslsmith_add_vec2_i32(vec2<i32>(-40184i, 1i), u_input.a.yz))), abs(reverseBits(_wgslsmith_sub_u32(14691u << (0u % 32u), u_input.d))), func_3(2147483647i), ~var_0.x < u_input.b.x, vec2<i32>(-1i) * -var_0.xz);
    global0 = false;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1106f), _wgslsmith_f_op_f32(max(1348f, -149f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -943f), _wgslsmith_f_op_f32(func_1()))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -772f)) - _wgslsmith_f_op_f32(f32(-1f) * -540f)));
    global1 = array<vec4<i32>, 10>();
    let var_0 = Struct_1(~(-_wgslsmith_add_vec2_i32(u_input.a.xz, firstLeadingBit(vec2<i32>(-5882i, -1i)))), u_input.d, select(!(!func_3(u_input.a.x)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), all(vec3<bool>(false, true, false))), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, func_3(u_input.b.x).x, true))), true & func_2(), -reverseBits(firstLeadingBit(firstLeadingBit(vec2<i32>(53139i, u_input.a.x)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1324f + -879f) * _wgslsmith_f_op_f32(select(-1578f, 493f, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-563f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1354f)))));
    let var_2 = ~_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(max(u_input.a.zwy, u_input.a.xyw), abs(vec3<i32>(22995i, u_input.b.x, u_input.a.x)), firstLeadingBit(vec3<i32>(1i, 24451i, u_input.a.x))) | u_input.a.yyz, ~u_input.a.xyz);
    var var_3 = func_3(var_2.x).x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_div_vec3_u32(vec3<u32>(48286u, 374u, 21174u), vec3<u32>(u_input.c, u_input.d, u_input.c)) & min(vec3<u32>(4294967295u, u_input.d, 146119u) ^ vec3<u32>(8071u, var_0.b, 18784u), vec3<u32>(var_0.b, u_input.d, 1u))));
}

