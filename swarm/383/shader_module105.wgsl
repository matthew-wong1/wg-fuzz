struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: bool,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29> = array<bool, 29>(false, false, true, false, false, false, false, true, false, false, true, false, true, false, false, false, true, false, true, true, false, false, false, true, false, false, true, false, true);

var<private> global1: array<vec3<u32>, 29> = array<vec3<u32>, 29>(vec3<u32>(3174u, 0u, 4294967295u), vec3<u32>(4294967295u, 5636u, 21708u), vec3<u32>(44546u, 1u, 4294967295u), vec3<u32>(0u, 1u, 94219u), vec3<u32>(17633u, 40790u, 1u), vec3<u32>(33927u, 21528u, 7145u), vec3<u32>(0u, 1u, 98005u), vec3<u32>(0u, 40866u, 0u), vec3<u32>(99194u, 40056u, 18966u), vec3<u32>(1u, 0u, 42985u), vec3<u32>(3942u, 0u, 59413u), vec3<u32>(4294967295u, 19546u, 15229u), vec3<u32>(0u, 1u, 0u), vec3<u32>(0u, 69333u, 29638u), vec3<u32>(46722u, 0u, 4294967295u), vec3<u32>(1u, 0u, 0u), vec3<u32>(0u, 49379u, 10202u), vec3<u32>(10635u, 3296u, 49847u), vec3<u32>(1u, 1u, 15306u), vec3<u32>(53000u, 21309u, 1u), vec3<u32>(51690u, 4294967295u, 92121u), vec3<u32>(12179u, 44254u, 0u), vec3<u32>(7812u, 111092u, 4294967295u), vec3<u32>(106057u, 1u, 1u), vec3<u32>(8147u, 24008u, 16976u), vec3<u32>(51495u, 2838u, 24550u), vec3<u32>(6092u, 1u, 0u), vec3<u32>(12871u, 781u, 17449u), vec3<u32>(1567u, 20824u, 32797u));

var<private> global2: bool;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> vec2<i32> {
    let var_0 = ~(~global1[_wgslsmith_index_u32(83008u, 29u)]);
    var var_1 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(705f, 277f)))), -682f), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -734f), _wgslsmith_f_op_f32(2583f - 262f)))))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -468f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(817f - var_1.x)))), Struct_1(_wgslsmith_f_op_f32(-var_1.x)));
    var var_3 = _wgslsmith_sub_u32(~43517u, _wgslsmith_mult_u32(0u, u_input.b.x));
    let var_4 = ~(-(vec3<i32>(-u_input.c, abs(u_input.a), firstLeadingBit(u_input.c)) >> (vec3<u32>(1u | var_0.x, _wgslsmith_dot_vec3_u32(u_input.b.yzx, vec3<u32>(var_0.x, 1u, 0u)), max(42473u, 62077u)) % vec3<u32>(32u))));
    return _wgslsmith_add_vec2_i32(firstLeadingBit(var_4.zy), firstLeadingBit(min(max(vec2<i32>(1i, var_4.x), vec2<i32>(-10626i, var_4.x)), var_4.zx) << (select(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, 57719u), var_0.zy), _wgslsmith_mod_vec2_u32(u_input.b.yz, vec2<u32>(0u, u_input.b.x)), false) % vec2<u32>(32u))));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_2) -> vec2<i32> {
    var var_0 = Struct_3(arg_0.a, 867f, false);
    var var_1 = Struct_4(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(64701u, arg_1.x), 0u | u_input.b.x, _wgslsmith_mult_u32(u_input.b.x, 0u), 9027u) & ~(u_input.b | u_input.b), u_input.b));
    return firstTrailingBit(func_3() & ~(-(vec2<i32>(2147483647i, arg_2) ^ vec2<i32>(u_input.a, -651i))));
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: u32) -> u32 {
    global0 = array<bool, 29>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(abs(-257f)));
    let var_1 = -_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(func_2(Struct_3(Struct_2(Struct_1(637f), Struct_1(496f)), 1504f, global0[_wgslsmith_index_u32(35775u, 29u)]), global1[_wgslsmith_index_u32(0u, 29u)], -77269i, Struct_2(Struct_1(arg_1.x), Struct_1(-799f))), ~vec2<i32>(u_input.c, 0i)), arg_0 | u_input.c), _wgslsmith_clamp_vec2_i32(func_3(), vec2<i32>(~(-2147483647i), 54757i), _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0, arg_0), vec2<i32>(2147483647i, 0i)), firstLeadingBit(vec2<i32>(arg_0, -20764i)))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-2008f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-923f, _wgslsmith_f_op_f32(abs(535f)))) * 945f)));
    let var_2 = select(select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(u_input.b.x, 29u)]), select(vec2<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(arg_2, 29u)], global0[_wgslsmith_index_u32(u_input.b.x, 29u)], false)), global0[_wgslsmith_index_u32(~u_input.b.x, 29u)]), !(!vec2<bool>(global0[_wgslsmith_index_u32(1u, 29u)], true)), false), vec2<bool>(select(global0[_wgslsmith_index_u32(~arg_2, 29u)], false, true), select(global0[_wgslsmith_index_u32(39057u, 29u)] && global0[_wgslsmith_index_u32(arg_2, 29u)], global0[_wgslsmith_index_u32(u_input.b.x, 29u)], !global0[_wgslsmith_index_u32(4294967295u, 29u)]))), !(!select(!vec2<bool>(true, global0[_wgslsmith_index_u32(arg_2, 29u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(38115u, 29u)], global0[_wgslsmith_index_u32(arg_2, 29u)]), vec2<bool>(true, true), false), true)), global0[_wgslsmith_index_u32(arg_2 | ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(19142u, arg_2), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, 20298u), u_input.b.wx)), 29u)]);
    return _wgslsmith_clamp_u32(~u_input.b.x, ~90434u, 48010u) >> (71643u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 29>();
    let var_0 = vec3<i32>(_wgslsmith_mult_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(u_input.c, 1i) | vec2<i32>(u_input.c, u_input.c)), -58360i), -u_input.a, ~(~max(-32726i >> (u_input.b.x % 32u), -u_input.c)));
    var var_1 = u_input.b.xyw | select(vec3<u32>(u_input.b.x, ~func_1(-28696i, vec4<f32>(1122f, -581f, -375f, -1089f), u_input.b.x), _wgslsmith_sub_u32(u_input.b.x, 63664u)), min(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(1u, u_input.b.x, u_input.b.x)) >> (reverseBits(u_input.b.xxw) % vec3<u32>(32u)), !any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], true, global0[_wgslsmith_index_u32(4294967295u, 29u)])));
    global0 = array<bool, 29>();
    var_1 = _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(abs(var_1.x), _wgslsmith_mult_u32(1u, 102639u), ~var_1.x), firstLeadingBit(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 0u, u_input.b.x), vec3<u32>(u_input.b.x, var_1.x, var_1.x), global1[_wgslsmith_index_u32(var_1.x, 29u)]), ~vec3<u32>(21525u, u_input.b.x, 6115u))), select(vec3<u32>(17017u, u_input.b.x, 0u), u_input.b.wxx, !global0[_wgslsmith_index_u32(34852u, 29u)])), u_input.b.www);
    let var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(select(-1075f, _wgslsmith_f_op_f32(ceil(-953f)), true))), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1067f), _wgslsmith_f_op_f32(1000f * 815f))))), _wgslsmith_f_op_f32(max(-1686f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1185f * 715f) - -568f)))), all(vec2<bool>(u_input.b.x != _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 83053u, var_1.x), vec4<u32>(var_1.x, u_input.b.x, 100300u, u_input.b.x)), true & !global0[_wgslsmith_index_u32(var_1.x, 29u)])));
    global1 = array<vec3<u32>, 29>();
    let var_3 = var_2.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(i32(-1i) * -30535i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 14541i, 2147483647i, _wgslsmith_dot_vec2_i32(var_0.zy, var_0.yy)), select(vec4<i32>(u_input.c, 1i, u_input.c, -1i) >> (u_input.b % vec4<u32>(32u)), vec4<i32>(2147483647i, var_0.x, var_0.x, var_0.x), var_2.a.a.a >= -1000f))), 1u, var_2.b, firstLeadingBit(~_wgslsmith_div_i32(countOneBits(u_input.c), 24978i)), -(var_0.yx ^ vec2<i32>(0i, 0i >> (0u % 32u))));
}

