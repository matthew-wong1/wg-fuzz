struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<bool>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec4<u32>,
    d: vec2<bool>,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> bool {
    global0 = array<i32, 14>();
    var var_0 = Struct_4(_wgslsmith_dot_vec4_i32(vec4<i32>((1i & global0[_wgslsmith_index_u32(4294967295u, 14u)]) << (u_input.b.x % 32u), 50037i, -16050i, -37577i & _wgslsmith_dot_vec3_i32(vec3<i32>(0i, global0[_wgslsmith_index_u32(0u, 14u)], 0i), vec3<i32>(global0[_wgslsmith_index_u32(5965u, 14u)], global0[_wgslsmith_index_u32(arg_0, 14u)], global0[_wgslsmith_index_u32(arg_0, 14u)]))), ~(select(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(1u, 14u)], -1i), vec4<i32>(587i, global0[_wgslsmith_index_u32(u_input.b.x, 14u)], 17791i, global0[_wgslsmith_index_u32(2044u, 14u)]), false) >> (~vec4<u32>(arg_0, 0u, 4294967295u, arg_0) % vec4<u32>(32u)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-600f, -282f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1667f))), _wgslsmith_mult_i32(-_wgslsmith_mult_i32(-3233i, 29379i), global0[_wgslsmith_index_u32(1u, 14u)]), vec4<bool>(true, all(vec2<bool>(true, true)), true, -1i >= global0[_wgslsmith_index_u32(4294967295u, 14u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-321f, 281f))))), vec4<u32>(83055u, min(14994u, 0u), 4173u, arg_0 >> (u_input.b.x % 32u)) & ~max(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.a.x), vec4<u32>(arg_0, 1u, u_input.b.x, arg_0))), ~select(firstTrailingBit(max(vec4<u32>(1u, 4294967295u, arg_0, u_input.a.x), vec4<u32>(1u, u_input.a.x, 0u, 53220u))), ~(~vec4<u32>(arg_0, 105193u, 0u, u_input.b.x)), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false))), select(select(select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(false, false)), vec2<bool>(true, true), true), !vec2<bool>(true, all(vec2<bool>(false, true))), true));
    let var_1 = Struct_5(~u_input.a.x, Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.a, var_0.b.a, -1603f, var_0.b.d) - vec4<f32>(var_0.b.a, var_0.b.d, 680f, var_0.b.d))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.d, var_0.b.d, -937f, var_0.b.d), vec4<f32>(var_0.b.d, var_0.b.a, -1000f, var_0.b.a)))), Struct_2(global0[_wgslsmith_index_u32(~firstLeadingBit(u_input.b.x), 14u)], Struct_1(_wgslsmith_f_op_f32(-var_0.b.a), _wgslsmith_add_i32(global0[_wgslsmith_index_u32(15274u, 14u)], var_0.a), !var_0.b.c, _wgslsmith_f_op_f32(trunc(var_0.b.a)), ~vec4<u32>(var_0.c.x, 11087u, 11517u, 37023u)), select(vec3<u32>(13052u, u_input.a.x, 4294967295u) | var_0.c.yyy, var_0.c.zxx, all(var_0.b.c.wyx))), -var_0.b.b ^ ((global0[_wgslsmith_index_u32(26916u, 14u)] << (0u % 32u)) << (_wgslsmith_add_u32(49914u, u_input.a.x) % 32u))));
    var var_2 = Struct_4(var_1.b.c, var_0.b, firstTrailingBit(~var_1.b.b.b.e), select(var_0.b.c.yw, var_1.b.b.b.c.zy, var_1.b.b.b.c.x));
    var_2 = Struct_4(0i, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1083f * var_0.b.d) + var_0.b.d)), var_0.b.b, !vec4<bool>(true, var_2.b.c.x, true, var_0.b.c.x), _wgslsmith_f_op_f32(-var_0.b.d), vec4<u32>(5091u, 1u, var_0.c.x, 39180u)), ~(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, 31918u, u_input.b.x, 0u), _wgslsmith_clamp_vec4_u32(var_0.b.e, var_0.c, var_2.b.e), _wgslsmith_add_vec4_u32(var_1.b.b.b.e, vec4<u32>(4294967295u, 66696u, 1u, var_2.c.x)))), !var_0.b.c.yx);
    return false;
}

fn func_2() -> vec2<bool> {
    global0 = array<i32, 14>();
    global0 = array<i32, 14>();
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-928f - _wgslsmith_f_op_f32(select(-718f, _wgslsmith_f_op_f32(f32(-1f) * -599f), any(vec4<bool>(false, false, true, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -298f) * 296f), -1527f)));
    let var_1 = Struct_1(-379f, global0[_wgslsmith_index_u32(u_input.b.x, 14u)], select(!vec4<bool>(true, false, true, func_3(u_input.a.x)), vec4<bool>(true, true, all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), false)), any(vec3<bool>(false, true, true))), all(vec2<bool>(true, true))), _wgslsmith_f_op_f32(var_0.x + var_0.x), max(vec4<u32>(~u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.a & u_input.b, u_input.b), ~1u, ~4294967295u), firstLeadingBit(vec4<u32>(0u, 1u, ~u_input.a.x, u_input.a.x))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(478f * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(exp2(var_1.d))))) - var_0.x));
    return vec2<bool>(true, true);
}

fn func_1() -> bool {
    global0 = array<i32, 14>();
    global0 = array<i32, 14>();
    let var_0 = func_2();
    var var_1 = firstTrailingBit(global0[_wgslsmith_index_u32(1u, 14u)]);
    global0 = array<i32, 14>();
    return !(abs(reverseBits(global0[_wgslsmith_index_u32(~u_input.a.x, 14u)])) < -1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec2<bool>(true, true), select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), true), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false)), select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(268f * _wgslsmith_f_op_f32(step(-511f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -167f) - _wgslsmith_f_op_f32(select(-196f, -1000f, true)))))), -global0[_wgslsmith_index_u32(u_input.a.x, 14u)], vec4<bool>(false, false, all(var_0), func_1()), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) - _wgslsmith_f_op_f32(select(334f, _wgslsmith_f_op_f32(floor(636f)), var_0.x)))), ~vec4<u32>(reverseBits(90830u), ~4294967295u, 82095u, 0u & u_input.a.x) << (vec4<u32>(~(~1u), _wgslsmith_mult_u32(~u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b, u_input.b)), u_input.a.x, ~34296u) % vec4<u32>(32u)));
    global0 = array<i32, 14>();
    var var_2 = vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(select(~vec4<i32>(2147483647i, -2147483647i, -1i, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(-30163i, global0[_wgslsmith_index_u32(1u, 14u)], var_1.b, global0[_wgslsmith_index_u32(7277u, 14u)]), vec4<i32>(1i, global0[_wgslsmith_index_u32(var_1.e.x, 14u)], global0[_wgslsmith_index_u32(u_input.b.x, 14u)], var_1.b)), all(vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, var_0.x))), vec4<i32>(abs(51795i), var_1.b, global0[_wgslsmith_index_u32(var_1.e.x, 14u)] << (6113u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, global0[_wgslsmith_index_u32(1u, 14u)]), vec2<i32>(1i, global0[_wgslsmith_index_u32(11691u, 14u)])))), countOneBits(-_wgslsmith_add_vec4_i32(vec4<i32>(-1i, var_1.b, var_1.b, var_1.b), vec4<i32>(-1i, global0[_wgslsmith_index_u32(43183u, 14u)], global0[_wgslsmith_index_u32(1u, 14u)], 1i)))), global0[_wgslsmith_index_u32(0u, 14u)], max(25431i, var_1.b), -(((var_1.b >> (u_input.a.x % 32u)) & var_1.b) & -1i));
    let var_3 = Struct_2(-_wgslsmith_add_i32(1i, var_1.b ^ 0i) >> ((var_1.e.x >> ((max(4294967295u, 14447u) & max(u_input.b.x, var_1.e.x)) % 32u)) % 32u), Struct_1(var_1.d, -25310i, var_1.c, _wgslsmith_div_f32(984f, _wgslsmith_f_op_f32(306f - _wgslsmith_f_op_f32(var_1.a + -664f))), var_1.e | vec4<u32>(firstTrailingBit(var_1.e.x), u_input.b.x, 11407u, 14437u)), vec3<u32>(u_input.b.x, ~4294967295u, _wgslsmith_dot_vec4_u32(countOneBits(~vec4<u32>(var_1.e.x, 4294967295u, var_1.e.x, var_1.e.x)), abs(vec4<u32>(u_input.a.x, 4294967295u, var_1.e.x, 51644u)))));
    global0 = array<i32, 14>();
    let var_4 = select(var_1.c.zyy, vec3<bool>(true, true, var_1.c.x), vec3<bool>(true, _wgslsmith_mod_u32(37678u, _wgslsmith_mult_u32(33288u, u_input.a.x)) > 4294967295u, var_0.x));
    let var_5 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_3.b.a + var_1.d), var_2.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1183f, 168f, 1579f, var_1.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.a, -759f, -1659f, var_3.b.a)), vec4<bool>(true, true, var_4.x, var_4.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, var_3.b.d, -295f, 1045f) - vec4<f32>(var_1.d, var_1.a, 922f, var_1.d)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-2591f, -1000f, var_1.d, -1000f))), var_1.c.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-581f, var_1.d), vec2<f32>(var_1.a, var_3.b.d)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d, -472f))))), reverseBits(0u));
}

