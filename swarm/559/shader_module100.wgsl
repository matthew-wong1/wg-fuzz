struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<i32>) -> bool {
    var var_0 = Struct_2(false, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0[_wgslsmith_index_u32(51648u, 18u)], global0[_wgslsmith_index_u32(8075u, 18u)], -149f, 1000f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-1034f)), -372f, -259f, 229f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1086f, -709f, 1000f, global0[_wgslsmith_index_u32(1u, 18u)])) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1006f, global0[_wgslsmith_index_u32(4294967295u, 18u)], global0[_wgslsmith_index_u32(0u, 18u)], -143f) - vec4<f32>(global0[_wgslsmith_index_u32(0u, 18u)], -296f, 167f, 252f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(29665u, 18u)]))) * global0[_wgslsmith_index_u32(~30059u, 18u)]), global0[_wgslsmith_index_u32(1u, 18u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 18u)])))));
    global0 = array<f32, 18>();
    var var_1 = Struct_3(Struct_1(var_0.a, vec3<u32>(abs(90820u), 34579u, _wgslsmith_clamp_u32(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(28824u, 24971u), vec2<u32>(12441u, 4294967295u)), select(4294967295u, 0u, var_0.a)))));
    var_1 = Struct_3(var_1.a);
    global0 = array<f32, 18>();
    return all(select(!(!vec2<bool>(var_1.a.a, var_1.a.a)), !(!(!vec2<bool>(var_1.a.a, true))), false));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<i32>) -> vec2<u32> {
    let var_0 = Struct_5(Struct_3(Struct_1(all(vec3<bool>(false, false, false)) || any(vec3<bool>(false, true, false)), ~vec3<u32>(0u, 42183u, 0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(623f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, global0[_wgslsmith_index_u32(0u, 18u)]) * 1668f))), func_3(_wgslsmith_clamp_vec3_i32(arg_1.xyy, -vec3<i32>(2251i, u_input.b.x, arg_0.x), vec3<i32>(_wgslsmith_mod_i32(3707i, arg_0.x), arg_0.x, arg_0.x))), 1u);
    var var_1 = var_0;
    var var_2 = !(!(var_1.b <= -587f));
    var_1 = var_0;
    var var_3 = _wgslsmith_dot_vec2_i32(max(reverseBits(~arg_1.zy >> (firstTrailingBit(vec2<u32>(var_0.d, 55952u)) % vec2<u32>(32u))), abs(u_input.b.zw)), _wgslsmith_sub_vec2_i32(firstLeadingBit(arg_0) ^ ~_wgslsmith_mult_vec2_i32(u_input.b.wz, arg_0), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(189i, arg_1.x), vec2<i32>(_wgslsmith_mult_i32(arg_1.x, arg_0.x), arg_1.x), _wgslsmith_mult_vec2_i32(arg_1.wz, arg_1.yy))));
    return var_0.a.a.b.zx;
}

fn func_1() -> Struct_1 {
    var var_0 = ~_wgslsmith_mult_vec2_u32(select(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u), vec2<bool>(true, select(false, false, false))), ~vec2<u32>(4294967295u, _wgslsmith_mult_u32(4294967295u, 0u)));
    var_0 = min(~_wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(0u, 38443u)), _wgslsmith_div_vec2_u32(vec2<u32>(48929u, var_0.x), vec2<u32>(var_0.x, var_0.x))) & _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(80006u, var_0.x), vec2<u32>(48533u, 6153u)), select(vec2<u32>(0u, var_0.x), vec2<u32>(var_0.x, var_0.x), true)), func_2(u_input.a.zx, u_input.b) >> ((vec2<u32>(var_0.x, var_0.x) | vec2<u32>(var_0.x, var_0.x)) % vec2<u32>(32u))), vec2<u32>(var_0.x, var_0.x >> ((_wgslsmith_sub_u32(var_0.x, var_0.x) << (_wgslsmith_mult_u32(var_0.x, var_0.x) % 32u)) % 32u)));
    var var_1 = Struct_3(Struct_1(all(vec3<bool>(true, true, true)), select(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(12453u, 0u, 4294967295u), vec3<u32>(1u, var_0.x, var_0.x)), min(vec3<u32>(var_0.x, 4294967295u, 0u), vec3<u32>(var_0.x, var_0.x, 1u))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, var_0.x, 26989u), vec3<u32>(4294967295u, 48539u, 736u)), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)))));
    var var_2 = select(select(vec2<bool>(var_1.a.a, false), vec2<bool>(true, _wgslsmith_f_op_f32(floor(-812f)) < global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, var_0.x), 18u)]), !(!(!vec2<bool>(true, var_1.a.a)))), !select(select(!vec2<bool>(true, var_1.a.a), vec2<bool>(var_1.a.a, true), !vec2<bool>(false, var_1.a.a)), vec2<bool>(true, true), var_1.a.a), vec2<bool>(var_1.a.a, var_1.a.a));
    var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 18u)] * 449f)) == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(var_1.a.b.x, 18u)])))), _wgslsmith_add_vec3_u32(var_1.a.b, vec3<u32>(reverseBits(0u), var_0.x, ~var_0.x))));
    return Struct_1(select(any(!vec4<bool>(var_2.x, var_1.a.a, true, false)), true, true & !var_2.x) && any(select(vec2<bool>(var_1.a.a, var_2.x), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), all(vec4<bool>(var_2.x, false, true, true)))), var_1.a.b);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec3<f32>) -> u32 {
    global0 = array<f32, 18>();
    global0 = array<f32, 18>();
    let var_0 = _wgslsmith_mod_vec2_i32(u_input.b.yy, abs(vec2<i32>(~u_input.a.x | 6083i, u_input.b.x)));
    var var_1 = select(vec3<bool>(false, !arg_1.a.a | any(select(vec2<bool>(arg_1.a.a, true), vec2<bool>(false, false), vec2<bool>(arg_0.a, arg_1.a.a))), !func_1().a), !(!vec3<bool>(true, true, arg_0.a)), vec3<bool>(true, !arg_0.a, !(!arg_1.a.a)));
    var var_2 = false;
    return _wgslsmith_dot_vec2_u32(~arg_0.b.zz, select(vec2<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(5708u, arg_0.b.x), arg_0.b.yy) << (~arg_1.a.b.x % 32u)), vec2<u32>(arg_0.b.x, _wgslsmith_add_u32(~1u, arg_0.b.x ^ arg_0.b.x)), var_1.zz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~1u;
    var var_1 = true;
    let var_2 = _wgslsmith_div_vec2_u32(min(vec2<u32>(func_4(func_1(), Struct_3(Struct_1(true, vec3<u32>(4294967295u, 24169u, 14119u))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-120f, global0[_wgslsmith_index_u32(1u, 18u)], -713f), vec3<f32>(168f, global0[_wgslsmith_index_u32(87119u, 18u)], 437f)))), 4294967295u), vec2<u32>(1u, 1u)), vec2<u32>(~max(4294967295u, ~9410u), ~select(63975u, 23702u, false)));
    global0 = array<f32, 18>();
    global0 = array<f32, 18>();
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~4294967295u, 18u)]));
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-534f + _wgslsmith_f_op_f32(floor(848f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -632f) + -319f)), _wgslsmith_f_op_f32(f32(-1f) * -719f), global0[_wgslsmith_index_u32(8956u, 18u)], _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~85853u, 4294967295u), 18u)]))));
}

