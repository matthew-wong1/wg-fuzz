struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2>;

var<private> global1: array<vec4<u32>, 12>;

var<private> global2: bool;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> f32 {
    let var_0 = reverseBits(~_wgslsmith_sub_vec2_u32(abs(max(u_input.d, vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 2u)], 2u)], 2u)], 0u))), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), ~u_input.b)));
    let var_1 = vec2<i32>(_wgslsmith_mod_i32(-reverseBits(-arg_0), _wgslsmith_mod_i32(21561i, _wgslsmith_add_i32(arg_0, 1i))), _wgslsmith_mult_i32(0i, 0i));
    var var_2 = reverseBits(select(select(abs(vec3<i32>(var_1.x, -2147483647i, arg_0)), -vec3<i32>(-38133i, 28062i, 2147483647i), !vec3<bool>(true, arg_1.a, true)), vec3<i32>(1i, -arg_0, ~var_1.x), all(select(vec2<bool>(arg_3, arg_1.a), vec2<bool>(true, arg_1.a), arg_2))) << (~vec3<u32>(1u, max(47276u, global0[_wgslsmith_index_u32(4294967295u, 2u)]), u_input.c) % vec3<u32>(32u)));
    global0 = array<u32, 2>();
    var var_3 = firstLeadingBit(max(vec3<u32>(~39012u, var_0.x, 1u), _wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(4294967295u, 0u, 4294967295u)), vec3<u32>(33982u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(99725u, 2u)], 2u)], 2u)], u_input.b.x) & vec3<u32>(4294967295u, 4294967295u, 0u))) >> (select(~vec3<u32>(var_0.x, global0[_wgslsmith_index_u32(50967u, 2u)], var_0.x) << ((vec3<u32>(24056u, var_0.x, 72024u) >> (vec3<u32>(var_0.x, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 2u)], 2u)]) % vec3<u32>(32u))) % vec3<u32>(32u)), ~(~vec3<u32>(4294967295u, 4294967295u, u_input.d.x)), !select(vec3<bool>(false, arg_1.a, arg_1.a), vec3<bool>(true, arg_3, true), vec3<bool>(arg_1.a, false, arg_2))) % vec3<u32>(32u)));
    return _wgslsmith_f_op_f32(f32(-1f) * -2133f);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(any(vec3<bool>(true, !all(vec3<bool>(true, false, true)), true)));
    var var_1 = vec2<i32>(reverseBits(min(_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, -21152i, 0i, -8666i), vec4<i32>(16265i, 12630i, -2147483647i, -1i)), ~_wgslsmith_clamp_i32(1i, -1i, -2147483647i))), ~_wgslsmith_mod_i32(~1i, ~_wgslsmith_mult_i32(1i, -27740i)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(func_3(-1i, Struct_1(false), var_0.a, true)), 2499f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1079f + -1000f))), _wgslsmith_f_op_f32(max(-419f, 110f)))), -755f);
    var var_3 = -39845i;
    var var_4 = Struct_1(4294967295u <= global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(51453u, 2u)], 2u)], 2u)], 2u)], 2u)]);
    return Struct_1(var_4.a);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = min(vec3<i32>(abs(abs(-2147483647i)), _wgslsmith_div_i32(0i, -19686i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-36298i, 34555i, -3611i, 2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(-16468i, 0i, 12263i, 2147483647i), vec4<i32>(4909i, 11636i, -37024i, 2147483647i))))), reverseBits((vec3<i32>(-2147483647i, 8734i, -36348i) >> (vec3<u32>(u_input.d.x, u_input.b.x, 5395u) % vec3<u32>(32u))) | (vec3<i32>(-9242i, 0i, 24362i) << (vec3<u32>(0u, global0[_wgslsmith_index_u32(u_input.b.x, 2u)], 26123u) % vec3<u32>(32u)))) << (min(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 4294967295u, 0u), ~vec3<u32>(73047u, global0[_wgslsmith_index_u32(u_input.a, 2u)], 0u)), ~max(vec3<u32>(u_input.a, 20375u, u_input.c), vec3<u32>(4294967295u, u_input.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 2u)], 2u)]))) % vec3<u32>(32u)));
    global2 = arg_0.a;
    global1 = array<vec4<u32>, 12>();
    var var_1 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(-39706i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(select(vec2<i32>(2147483647i, -27224i), var_0.yz, true), var_0.yz), max(vec2<i32>(0i, var_0.x), var_0.yz | var_0.xx))), reverseBits(50740i));
    let var_2 = (min(1u, 0u) << (_wgslsmith_mult_u32(u_input.b.x, _wgslsmith_add_u32(u_input.b.x, global0[_wgslsmith_index_u32(u_input.c, 2u)]) ^ 1u) % 32u)) ^ u_input.a;
    return arg_0;
}

fn func_1(arg_0: bool) -> Struct_1 {
    return func_4(func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true && all(!vec4<bool>(all(vec4<bool>(true, false, true, true)), true, false, true));
    var var_1 = func_1(!(!(any(vec3<bool>(false, true, true)) || true)));
    global1 = array<vec4<u32>, 12>();
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1574f);
    var var_3 = reverseBits(_wgslsmith_sub_vec3_u32(countOneBits(~countOneBits(vec3<u32>(u_input.d.x, u_input.a, u_input.c))), ~(~firstLeadingBit(vec3<u32>(17017u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 2u)], 2u)], 24757u)))));
    global0 = array<u32, 2>();
    let var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_sub_vec4_u32(vec4<u32>(firstTrailingBit(u_input.c), global0[_wgslsmith_index_u32(24430u, 2u)], 0u, 0u), vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(9013u, u_input.b.x, u_input.d.x), 2u)], ~4294967295u, ~15215u, global0[_wgslsmith_index_u32(abs(24925u), 2u)])), ~_wgslsmith_mult_vec4_u32(vec4<u32>(670u, 25238u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(47737u, 2u)], 2u)], global0[_wgslsmith_index_u32(1u, 2u)]), _wgslsmith_sub_vec4_u32(global1[_wgslsmith_index_u32(1253u, 12u)], vec4<u32>(u_input.c, u_input.b.x, 80640u, 5005u))), !vec4<bool>(false, var_1.a && false, var_1.a, var_4)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(844f))))), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -1018f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-668f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-182f * -198f))))), vec2<u32>(u_input.a & _wgslsmith_sub_u32(~0u, 48820u), 69451u), var_3.x);
}

