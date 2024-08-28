struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
    d: f32,
    e: vec2<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 5>;

var<private> global1: array<vec3<u32>, 11> = array<vec3<u32>, 11>(vec3<u32>(19339u, 18318u, 41570u), vec3<u32>(1u, 0u, 29691u), vec3<u32>(25677u, 4294967295u, 35630u), vec3<u32>(0u, 78936u, 5778u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(4294967295u, 38150u, 34917u), vec3<u32>(21835u, 4294967295u, 0u), vec3<u32>(52653u, 27597u, 4294967295u), vec3<u32>(1u, 24553u, 13651u), vec3<u32>(1u, 0u, 51541u), vec3<u32>(4294967295u, 0u, 4294967295u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> u32 {
    var var_0 = Struct_4(-u_input.a, Struct_3(arg_0, 4294967295u, Struct_2(vec3<i32>(arg_0.a.x, 1i, ~arg_0.a.x), arg_0.b), _wgslsmith_f_op_f32(select(arg_0.c.x, -973f, !(!arg_1))), !vec2<bool>(arg_1, true)), Struct_3(Struct_1(arg_0.a, any(!vec4<bool>(true, arg_0.b, arg_1, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(1u, 5u)]) * arg_0.c), 22417i), _wgslsmith_add_u32(reverseBits(~98754u), countOneBits(51450u << (0u % 32u))), Struct_2(u_input.a, arg_1), arg_0.c.x, !vec2<bool>(true, arg_1)));
    var var_1 = select(select(select(select(vec3<bool>(false, arg_0.b, false), select(vec3<bool>(var_0.c.e.x, var_0.b.c.b, arg_0.b), vec3<bool>(true, arg_0.b, true), vec3<bool>(arg_0.b, true, var_0.b.e.x)), any(vec2<bool>(arg_1, true))), vec3<bool>(all(vec2<bool>(arg_0.b, false)), any(vec4<bool>(var_0.b.a.b, false, var_0.b.a.b, true)), any(vec4<bool>(var_0.c.a.b, arg_0.b, false, arg_1))), false), vec3<bool>(true, true, var_0.c.a.c.x == _wgslsmith_f_op_f32(f32(-1f) * -605f)), vec3<bool>(true, true, true)), vec3<bool>(1i == arg_0.d, any(!select(var_0.c.e, var_0.b.e, var_0.c.e)), false), all(select(vec2<bool>(u_input.b > var_0.c.a.a.x, all(vec4<bool>(arg_0.b, false, true, var_0.b.e.x))), select(!vec2<bool>(var_0.b.e.x, false), !vec2<bool>(false, arg_0.b), any(vec3<bool>(arg_1, false, arg_0.b))), select(select(vec2<bool>(var_0.b.c.b, arg_0.b), var_0.b.e, false), vec2<bool>(var_0.b.e.x, arg_1), var_0.b.e))));
    global0 = array<vec3<f32>, 5>();
    var var_2 = !(!select(vec3<bool>(true, true, all(vec2<bool>(false, arg_0.b))), !(!vec3<bool>(var_0.c.a.b, false, arg_1)), false));
    let var_3 = var_0.c;
    return (_wgslsmith_dot_vec3_u32(max(vec3<u32>(var_3.b, var_3.b, var_3.b), vec3<u32>(4294967295u, var_3.b, var_0.b.b)), firstLeadingBit(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, var_0.c.b, var_3.b), 11u)])) << (1635u % 32u)) << (var_0.c.b % 32u);
}

fn func_2(arg_0: vec4<u32>) -> i32 {
    let var_0 = Struct_3(Struct_1(vec2<i32>(-_wgslsmith_mod_i32(-2147483647i, u_input.a.x), u_input.c), !((3412u ^ arg_0.x) > min(0u, arg_0.x)), _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(1u, 5u)] - global0[_wgslsmith_index_u32(min(arg_0.x, func_3(Struct_1(vec2<i32>(1i, -57598i), true, vec3<f32>(593f, -226f, 608f), u_input.a.x), false)), 5u)]), -11435i), 57132u, Struct_2(u_input.a, false), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-692f, 1889f)), _wgslsmith_f_op_f32(1514f - 628f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1269f, 487f, true)))))))), select(select(vec2<bool>(select(false, true, true), true), vec2<bool>(any(vec2<bool>(true, false)), true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, false), any(vec4<bool>(true, true, false, false)))), vec2<bool>(true, true), select(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(false, true)), !select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true))));
    var var_1 = Struct_4(vec3<i32>(_wgslsmith_mod_i32(reverseBits(var_0.c.a.x) & var_0.c.a.x, var_0.c.a.x), -2147483647i, u_input.c), var_0, var_0);
    var var_2 = var_0.e.x;
    var var_3 = ~25777u;
    global1 = array<vec3<u32>, 11>();
    return -1i | u_input.c;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_3) -> u32 {
    global0 = array<vec3<f32>, 5>();
    var var_0 = vec4<bool>(any(vec4<bool>(false, false, true, false)), true, arg_1.e.x, true);
    let var_1 = ~abs(_wgslsmith_mult_vec4_u32(~vec4<u32>(9909u, 44727u, arg_0.x, 0u), abs(vec4<u32>(arg_0.x, 16269u, arg_1.b, arg_1.b))) >> ((_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u, 1u, 98203u), vec4<u32>(52828u, 18525u, arg_1.b, arg_1.b)) | countOneBits(vec4<u32>(arg_0.x, 4294967295u, 4294967295u, arg_0.x))) % vec4<u32>(32u)));
    let var_2 = u_input.a.zx;
    let var_3 = firstLeadingBit(vec4<i32>(_wgslsmith_clamp_i32(func_2(var_1), var_2.x, ~_wgslsmith_add_i32(u_input.a.x, u_input.a.x)), 2147483647i >> (firstTrailingBit(~17524u) % 32u), min(i32(-1i) * -37583i, 1i), u_input.a.x));
    return ~arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(~(~countOneBits(1u)), 1u), vec2<u32>(1u, 11263u));
    let var_1 = vec2<bool>(true, true);
    global1 = array<vec3<u32>, 11>();
    global0 = array<vec3<f32>, 5>();
    let var_2 = Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(abs(~61514i), ~_wgslsmith_div_i32(u_input.a.x, u_input.c)), u_input.a.xx), select(!all(select(vec4<bool>(var_1.x, var_1.x, false, false), vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(false, var_1.x, false, var_1.x))), any(select(!vec4<bool>(var_1.x, false, true, false), !vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), select(vec4<bool>(false, var_1.x, true, var_1.x), vec4<bool>(true, var_1.x, false, true), vec4<bool>(var_1.x, var_1.x, true, true)))), false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global0[_wgslsmith_index_u32(reverseBits(func_1(vec3<u32>(14798u, 38727u, 1718u), Struct_3(Struct_1(vec2<i32>(u_input.b, u_input.b), var_1.x, vec3<f32>(1803f, -564f, -125f), -1i), var_0.x, Struct_2(vec3<i32>(u_input.c, u_input.b, 25514i), var_1.x), -1411f, var_1))), 5u)]))), -2147483647i);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.c.x, 363f), var_2.c.zx))));
    global0 = array<vec3<f32>, 5>();
    global0 = array<vec3<f32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0, firstLeadingBit(-var_2.d), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c.x + 1227f) - _wgslsmith_f_op_f32(-110f * var_3.x)))), -742f, _wgslsmith_f_op_f32(exp2(var_2.c.x))), ~firstLeadingBit(~(~var_0.x)));
}

