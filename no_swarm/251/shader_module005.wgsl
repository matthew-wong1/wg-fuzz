struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: f32,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(115590u, 4294967295u);

var<private> global1: vec4<i32> = vec4<i32>(-48693i, 15725i, -1i, -14558i);

var<private> global2: array<f32, 21>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: Struct_2) -> u32 {
    return 6888u;
}

fn func_3(arg_0: bool) -> vec2<i32> {
    global1 = vec4<i32>(firstLeadingBit(~(~_wgslsmith_mod_i32(global1.x, u_input.b))), i32(-1i) * -1i, 1i, global1.x);
    var var_0 = Struct_1(arg_0 | !(!arg_0), _wgslsmith_mult_vec3_u32(u_input.a, ~(vec3<u32>(11167u, 15503u, global0.x) ^ u_input.a)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.c, 21u)] - -923f)))))), global0.x & (31993u >> (0u % 32u)), global1.yxw);
    var var_1 = Struct_1(select(!arg_0, var_0.a, (any(vec4<bool>(var_0.a, arg_0, arg_0, false)) || all(vec4<bool>(false, true, arg_0, true))) & (any(vec4<bool>(false, arg_0, true, var_0.a)) != any(vec3<bool>(false, true, false)))), u_input.a, 830f, 1u, -reverseBits(var_0.e) & (-firstLeadingBit(var_0.e) & vec3<i32>(abs(1i), -var_0.e.x, ~u_input.b)));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(184f)), 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(min(4294967295u, 0u), 21u)] - _wgslsmith_div_f32(1350f, global2[_wgslsmith_index_u32(70556u, 21u)])))))));
    var var_3 = Struct_1(!var_0.a, _wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(abs(2485u), _wgslsmith_dot_vec2_u32(~var_1.b.xz, u_input.a.zx << (var_1.b.xx % vec2<u32>(32u))), 23403u)), -325f, ~(~(1u & ~global0.x)), var_0.e ^ var_0.e);
    return vec2<i32>(0i, u_input.b) >> (vec2<u32>(var_1.d, _wgslsmith_add_u32(~_wgslsmith_mod_u32(6841u, var_3.d), min(_wgslsmith_add_u32(1u, var_1.b.x), global0.x >> (4294967295u % 32u)))) % vec2<u32>(32u));
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_2(arg_0.e.x, vec3<bool>(!(_wgslsmith_f_op_f32(step(1711f, global2[_wgslsmith_index_u32(u_input.c, 21u)])) >= _wgslsmith_f_op_f32(f32(-1f) * -2658f)), true, arg_0.a), select(arg_0.b.yy, ~(~(~vec2<u32>(arg_0.d, 18167u))), false));
    var var_1 = vec2<i32>(~(global1.x >> (~4294967295u % 32u)), global1.x) | (func_3(all(vec3<bool>(false, false, var_0.b.x)) | select(true, arg_0.a, var_0.b.x)) | vec2<i32>(reverseBits(-3793i), abs(i32(-1i) * -11260i)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.c, _wgslsmith_f_op_f32(select(979f, -1647f, arg_0.a)))) - arg_0.c) > arg_0.c;
    let var_3 = Struct_2(var_1.x, var_0.b, countOneBits(reverseBits(abs(vec2<u32>(u_input.c, global0.x) & vec2<u32>(var_0.c.x, arg_0.b.x)))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(185f - global2[_wgslsmith_index_u32(50612u, 21u)]) - arg_0.c)) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(155f, 457f, false)), _wgslsmith_f_op_f32(603f - 149f))))));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(561f + var_4) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-595f * -518f) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_0.c, arg_0.c, arg_0.a))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 21>();
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-928f, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(~1u, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), u_input.a.xx) ^ func_1(Struct_2(u_input.b, vec3<bool>(false, true, true), vec2<u32>(global0.x, 4294967295u)))), 21u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 21u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(true, u_input.a, global2[_wgslsmith_index_u32(4294967295u, 21u)], 0u, vec3<i32>(-2147483647i, u_input.b, global1.x))))))));
    global1 = -vec4<i32>(-(~func_3(false).x), -20413i, u_input.b, ~(~0i));
    global1 = _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, firstLeadingBit(func_3(true).x), ~(-2147483647i), -_wgslsmith_mult_i32(u_input.b, global1.x) ^ countOneBits(~global1.x)), vec4<i32>(firstLeadingBit(-999i), _wgslsmith_mod_i32(max(reverseBits(u_input.b), 1i), _wgslsmith_dot_vec2_i32(global1.zx, global1.yz << (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u)))), -(-1i << (~u_input.c % 32u)), _wgslsmith_div_i32(global1.x, ~(-u_input.b))));
    global1 = _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b | u_input.b, -1i, 1i, _wgslsmith_dot_vec2_i32(firstTrailingBit(global1.yw), vec2<i32>(u_input.b, global1.x))) ^ (_wgslsmith_add_vec4_i32(vec4<i32>(global1.x, 4745i, 30278i, u_input.b), -vec4<i32>(-16407i, 2147483647i, global1.x, u_input.b)) >> (vec4<u32>(u_input.a.x, _wgslsmith_sub_u32(u_input.c, 59878u), abs(u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1766u, 13129u, 39662u), vec4<u32>(global0.x, global0.x, 11778u, 4294967295u))) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(global1.x, -46722i, 0i), -(vec3<i32>(u_input.b, -2147483647i, -16624i) << (vec3<u32>(27528u, u_input.c, u_input.a.x) % vec3<u32>(32u)))), ~u_input.b, -1i, 36154i));
    let var_1 = select(vec4<bool>(any(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), false))), _wgslsmith_f_op_f32(-1034f + _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(0u, 21u)]))) <= _wgslsmith_f_op_f32(sign(var_0.x)), true, true), vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), false)), firstLeadingBit(_wgslsmith_sub_i32(global1.x, global1.x)) < 26745i, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1253f))) > -237f), true && !(u_input.a.x == 1u));
    var var_2 = _wgslsmith_clamp_vec3_i32(~global1.yxw, abs(global1.zzz), select(vec3<i32>(reverseBits(reverseBits(1i)), u_input.b, global1.x), -vec3<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, 34812i, u_input.b), vec4<i32>(global1.x, global1.x, 38307i, global1.x)), firstLeadingBit(u_input.b)), vec3<bool>(select(var_1.x, true, true), var_1.x, true)));
    global0 = firstTrailingBit(_wgslsmith_mult_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, global0.x), u_input.a.yx | u_input.a.yx), select(max(abs(u_input.a.zx), abs(vec2<u32>(global0.x, 4294967295u))), vec2<u32>(~u_input.a.x, global0.x), any(var_1))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.x << (countOneBits(58879u | ~u_input.c) % 32u), _wgslsmith_f_op_vec3_f32(max(var_0.xzz, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.x - 1477f), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a.x, 21u)] + -2152f), _wgslsmith_f_op_f32(func_2(Struct_1(var_1.x, u_input.a, 750f, 1u, vec3<i32>(2147483647i, var_2.x, global1.x))))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(605f, global2[_wgslsmith_index_u32(global0.x, 21u)], global2[_wgslsmith_index_u32(u_input.c, 21u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(53726u, 21u)], var_0.x, global2[_wgslsmith_index_u32(4294967295u, 21u)]))))))));
}

