struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
    c: bool,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: Struct_1,
    d: i32,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32> = array<bool, 32>(true, false, true, false, true, false, false, true, false, false, true, true, false, false, false, false, true, false, true, false, false, true, false, false, false, false, false, true, false, false, true, true);

var<private> global1: array<vec2<bool>, 17> = array<vec2<bool>, 17>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    global1 = array<vec2<bool>, 17>();
    global0 = array<bool, 32>();
    global0 = array<bool, 32>();
    let var_0 = _wgslsmith_mod_vec4_i32((select(~vec4<i32>(arg_0, 2147483647i, 52386i, 1i), ~vec4<i32>(-41936i, 2147483647i, u_input.a, 34338i), select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 32u)], false, true), vec4<bool>(true, false, false, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(121521u, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)]))) | (_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -1i, -14332i, arg_0), vec4<i32>(arg_0, arg_0, u_input.a, arg_0)) & -vec4<i32>(u_input.a, 0i, 77351i, u_input.a))) << (vec4<u32>(22945u, (u_input.b.x >> (u_input.b.x % 32u)) & 4294967295u, ~32264u, ~1u) % vec4<u32>(32u)), ~firstTrailingBit(max(vec4<i32>(arg_0, -1i, 0i, 43599i), vec4<i32>(arg_0, 2147483647i, arg_0, -6853i)) << (u_input.b % vec4<u32>(32u))));
    let var_1 = _wgslsmith_sub_i32((((var_0.x >> (u_input.b.x % 32u)) & ~var_0.x) << (1u % 32u)) << (~_wgslsmith_mult_u32(min(u_input.b.x, 20039u), ~u_input.b.x) % 32u), -_wgslsmith_mult_i32(-2147483647i, -var_0.x));
    return arg_1;
}

fn func_1(arg_0: vec2<f32>, arg_1: bool) -> u32 {
    let var_0 = firstTrailingBit(~u_input.b.yww);
    global1 = array<vec2<bool>, 17>();
    var var_1 = func_2(-2147483647i, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + arg_0.x) * _wgslsmith_div_f32(951f, arg_0.x))));
    global0 = array<bool, 32>();
    let var_2 = var_0;
    return _wgslsmith_div_u32(u_input.b.x, ~0u);
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstTrailingBit(firstTrailingBit(_wgslsmith_mod_u32(1u, u_input.b.x))), ~func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1542f)), global0[_wgslsmith_index_u32(firstLeadingBit(11387u), 32u)]), 41892u), 32u)], Struct_1(false, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1673f, 1513f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-260f, 748f)))));
    global0 = array<bool, 32>();
    var var_1 = 12565i;
    var var_2 = var_0.b;
    var_2 = var_0.b;
    return select(select(select(!(!global1[_wgslsmith_index_u32(u_input.b.x, 17u)]), vec2<bool>(!global0[_wgslsmith_index_u32(u_input.b.x, 32u)], true), var_0.a), select(vec2<bool>(all(vec3<bool>(true, var_2.a, true)), all(vec4<bool>(false, false, var_0.a, false))), vec2<bool>(var_2.a, all(vec4<bool>(global0[_wgslsmith_index_u32(22177u, 32u)], true, var_2.a, true))), vec2<bool>(!var_2.a, var_0.b.a)), true | (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 34787u), vec2<u32>(14375u, 52426u)) != select(4294967295u, 39329u, var_0.a))), select(vec2<bool>(all(global1[_wgslsmith_index_u32(u_input.b.x, 17u)]), global0[_wgslsmith_index_u32(~(~39103u), 32u)]), select(vec2<bool>(select(var_0.a, var_2.a, var_0.a), false), global1[_wgslsmith_index_u32(~(0u >> (0u % 32u)), 17u)], false), !global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 41266u, 15527u), vec3<u32>(u_input.b.x, 1u, u_input.b.x)), 32u)]), !select(global1[_wgslsmith_index_u32(40655u, 17u)], vec2<bool>(true, true), select(global1[_wgslsmith_index_u32(~u_input.b.x, 17u)], select(global1[_wgslsmith_index_u32(u_input.b.x, 17u)], global1[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(u_input.b.x, 17u)]), !vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 32u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, 1758f)))), true), abs(u_input.b.x)), abs(_wgslsmith_sub_u32(~(u_input.b.x & 1u), 49445u))), 32u)];
    var var_1 = -20708i;
    var var_2 = func_2(-2147483647i, Struct_2(-2316f));
    let var_3 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -244f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) * _wgslsmith_f_op_f32(trunc(var_2.a)))) > -834f, select(select(select(vec2<bool>(global0[_wgslsmith_index_u32(56324u, 32u)], true), vec2<bool>(global0[_wgslsmith_index_u32(24107u, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), select(global1[_wgslsmith_index_u32(u_input.b.x, 17u)], vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], false), false)), select(global1[_wgslsmith_index_u32(1u, 17u)], select(global1[_wgslsmith_index_u32(35717u, 17u)], vec2<bool>(global0[_wgslsmith_index_u32(53157u, 32u)], global0[_wgslsmith_index_u32(22716u, 32u)]), global1[_wgslsmith_index_u32(0u, 17u)]), select(global1[_wgslsmith_index_u32(46693u, 17u)], vec2<bool>(global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), global1[_wgslsmith_index_u32(1376u, 17u)])), !global1[_wgslsmith_index_u32(u_input.b.x, 17u)]), !func_3(), !(true | select(global0[_wgslsmith_index_u32(1576u, 32u)], global0[_wgslsmith_index_u32(25225u, 32u)], global0[_wgslsmith_index_u32(0u, 32u)]))), all(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 32u)], any(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)], false)))), abs(~(~(vec3<u32>(u_input.b.x, 1u, u_input.b.x) | vec3<u32>(4294967295u, 100098u, 8012u)))), Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(u_input.b.xz, vec2<u32>(u_input.b.x, u_input.b.x)), reverseBits(vec2<u32>(u_input.b.x, u_input.b.x))), 32u)], _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.a, var_2.a), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-696f, var_2.a))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.a, var_2.a), vec2<f32>(1250f, -732f))))))));
    var_0 = any(!vec3<bool>(var_3.a, select(var_3.b.x, all(vec3<bool>(false, true, global0[_wgslsmith_index_u32(var_3.d.x, 32u)])), true || global0[_wgslsmith_index_u32(1u, 32u)]), select(var_3.a, var_3.c, select(false, false, global0[_wgslsmith_index_u32(u_input.b.x, 32u)]))));
    var var_4 = _wgslsmith_dot_vec2_u32(u_input.b.zw, ~_wgslsmith_mod_vec2_u32(vec2<u32>(123615u, var_3.d.x), ~vec2<u32>(var_3.d.x, var_3.d.x))) <= ~20017u;
    let var_5 = ~(~var_3.d.x ^ ~select(34484u, 1u, var_3.d.x == u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.a))), _wgslsmith_f_op_f32(f32(-1f) * -225f), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1745f, var_2.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-511f, var_3.e.b.x, var_2.a)) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(935f, var_3.e.b.x, var_2.a)))))))), min(select(~vec3<u32>(4294967295u, 0u, 28661u), vec3<u32>(u_input.b.x, var_5 << (1u % 32u), u_input.b.x >> (var_5 % 32u)), !(u_input.a <= 2147483647i)), abs(_wgslsmith_add_vec3_u32(abs(vec3<u32>(48147u, var_5, 16425u)), var_3.d))), select(func_1(vec2<f32>(_wgslsmith_f_op_f32(floor(-1064f)), 759f), any(select(vec3<bool>(false, var_3.e.a, false), vec3<bool>(global0[_wgslsmith_index_u32(0u, 32u)], false, false), var_3.c))), var_5 & 51196u, true), ~min(~vec2<u32>(44221u, var_3.d.x), vec2<u32>(var_5, var_3.d.x)) & vec2<u32>(4294967295u, ~0u), var_3.e.b.x);
}

