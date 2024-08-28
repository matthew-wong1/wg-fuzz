struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2>;

var<private> global1: array<f32, 11>;

var<private> global2: array<vec3<bool>, 28> = array<vec3<bool>, 28>(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: vec4<u32>, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = arg_3;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.b.x)), arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -449f))), -629f, _wgslsmith_div_f32(-827f, 1479f));
    var var_2 = !var_0.a.x;
    var_0 = arg_3;
    var var_3 = vec4<u32>(1u, 50360u, 1u << (0u % 32u), abs(arg_2.x));
    return vec2<u32>(arg_2.x, min(_wgslsmith_div_u32(firstTrailingBit(firstTrailingBit(arg_2.x)), ~21775u), 1u));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<i32>) -> bool {
    return 38341i >= _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, arg_2.d.x) << (vec2<u32>(~arg_0, arg_0) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(arg_1.c.xx << (func_2(vec3<f32>(-988f, 990f, global1[_wgslsmith_index_u32(1u, 11u)]), arg_1.a.xwy, vec4<u32>(1u, arg_0, arg_0, arg_0), Struct_1(arg_1.a, vec2<f32>(global0[_wgslsmith_index_u32(arg_0, 2u)], 420f), arg_1.c, vec2<i32>(arg_3.x, arg_2.c.x), arg_2.e)) % vec2<u32>(32u)), firstLeadingBit(arg_1.d) << (vec2<u32>(arg_0, arg_0) % vec2<u32>(32u))));
}

fn func_3(arg_0: bool, arg_1: vec4<bool>) -> bool {
    var var_0 = Struct_1(select(!select(!vec4<bool>(false, true, true, arg_1.x), arg_1, true), arg_1, arg_1), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0[_wgslsmith_index_u32(7778u, 2u)], global1[_wgslsmith_index_u32(44402u, 11u)]), vec2<f32>(-2069f, global0[_wgslsmith_index_u32(1u, 2u)])))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1390f, global1[_wgslsmith_index_u32(25092u, 11u)]))))))), vec3<i32>(-_wgslsmith_mod_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, 2147483647i, u_input.a, -7147i))), 156i, u_input.a), ~(~abs(vec2<i32>(u_input.a, u_input.a) & vec2<i32>(0i, -2147483647i))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1527f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 11u)] * global0[_wgslsmith_index_u32(4294967295u, 2u)]) - -1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(50603u, 11u)])), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(1u, 2u)]))), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(22314u, 11u)])))));
    let var_1 = vec2<i32>(-26339i, u_input.a);
    let var_2 = Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_0.b, vec2<f32>(global1[_wgslsmith_index_u32(45345u, 11u)], -1295f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(0u, 11u)], var_0.b.x) + vec2<f32>(-1462f, global0[_wgslsmith_index_u32(4294967295u, 2u)])))) + vec2<f32>(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(51850u, 6955u, 555u), 11u)])), _wgslsmith_f_op_f32(min(-886f, _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(4294967295u, 2u)])))))), vec3<i32>(_wgslsmith_dot_vec3_i32(-var_0.c, firstTrailingBit(var_0.c ^ var_0.c)), var_0.d.x, _wgslsmith_dot_vec4_i32(~(~vec4<i32>(-48459i, -36604i, var_1.x, var_1.x)), -min(vec4<i32>(-1i, var_0.d.x, -39758i, var_1.x), vec4<i32>(u_input.a, -10169i, -10827i, var_0.d.x)))), _wgslsmith_mult_vec2_i32(var_0.d >> (vec2<u32>(~87113u, ~0u) % vec2<u32>(32u)), -abs(~vec2<i32>(var_0.c.x, u_input.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1142f, _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(42605u, 11u)])), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 11u)] * -686f)))));
    let var_3 = _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(0u, 11u)]));
    var_0 = Struct_1(vec4<bool>(!all(vec3<bool>(false, true, var_0.a.x)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 11u)] - global1[_wgslsmith_index_u32(10423u, 11u)]) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(19586u, 11u)]) + _wgslsmith_f_op_f32(f32(-1f) * -2411f)), func_1(~_wgslsmith_div_u32(86008u, 1u), var_2, var_2, -vec4<i32>(u_input.a, -33778i, -2147483647i, var_0.d.x)), _wgslsmith_f_op_f32(-568f * 500f) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 11u)] + -1531f) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 11u)]))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.b.x, -1945f))) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-131f, 358f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(var_0.b, vec2<f32>(var_0.b.x, 1148f)))))))), var_0.c, _wgslsmith_clamp_vec2_i32(~(~vec2<i32>(u_input.a, -2147483647i)) & _wgslsmith_mult_vec2_i32(var_1, vec2<i32>(var_0.d.x, -22615i)), var_2.c.xy, ~(~(~var_2.c.zy))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(var_0.e, vec3<f32>(var_2.b.x, var_2.b.x, var_0.e.x))))))), var_0.e));
    return func_1(1u, var_2, var_2, firstTrailingBit(max(abs(firstTrailingBit(vec4<i32>(32427i, var_0.c.x, 2147483647i, -35677i))), -(vec4<i32>(1i, -2147483647i, -2147483647i, -35628i) | vec4<i32>(u_input.a, -7031i, var_1.x, var_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(~1u, 2u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(15225u, 11u)])) + -891f), 192f), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 11u)] - global0[_wgslsmith_index_u32(1u, 2u)]) + global0[_wgslsmith_index_u32(~40857u, 2u)]), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, reverseBits(79993u)), 2u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1316f)))));
    var var_1 = Struct_1(!(!vec4<bool>(func_1(46845u, Struct_1(vec4<bool>(false, true, true, false), vec2<f32>(var_0.x, global0[_wgslsmith_index_u32(30726u, 2u)]), vec3<i32>(-33420i, 0i, 0i), vec2<i32>(-21649i, -35534i), vec3<f32>(var_0.x, -1000f, var_0.x)), Struct_1(vec4<bool>(true, true, true, false), vec2<f32>(global0[_wgslsmith_index_u32(27407u, 2u)], 1963f), vec3<i32>(u_input.a, 2147483647i, u_input.a), vec2<i32>(u_input.a, 0i), vec3<f32>(global1[_wgslsmith_index_u32(0u, 11u)], 679f, -2491f)), vec4<i32>(u_input.a, u_input.a, 7216i, -1i)), all(global2[_wgslsmith_index_u32(1u, 28u)]), func_3(false, vec4<bool>(true, true, false, false)), true)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(9710u, 11u)], var_0.x)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.x, -686f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(351f, 2141f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(32907u, 11u)], -703f), vec2<f32>(global0[_wgslsmith_index_u32(27052u, 2u)], -1141f), false))) - _wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(1u, 2u)], 1090f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1[_wgslsmith_index_u32(1u, 11u)], -3635f)))))), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-5395i, u_input.a), -reverseBits(1860i), firstLeadingBit(1i)), abs(~reverseBits(vec3<i32>(13610i, u_input.a, u_input.a)))), vec2<i32>(_wgslsmith_mult_i32(min(-8069i >> (1u % 32u), 56856i), -u_input.a), -30336i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1165f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 2u)], -939f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(0u, 11u)], -1448f, _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(27962u, 2u)], global1[_wgslsmith_index_u32(0u, 11u)]))) * _wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(1u, 11u)], var_0.x, 524f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-672f, global1[_wgslsmith_index_u32(35494u, 11u)], global0[_wgslsmith_index_u32(26731u, 2u)]))))));
    let var_2 = _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(firstLeadingBit(~vec4<i32>(u_input.a, 14848i, u_input.a, var_1.c.x)), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, var_1.d.x), var_1.c.xz), u_input.a), ~u_input.a, countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c.x, var_1.d.x, u_input.a, var_1.c.x), vec4<i32>(u_input.a, u_input.a, -2147483647i, 16920i))), min(u_input.a & u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a, u_input.a), var_1.c)))), 1i << (min(min(abs(25193u), 1u), 1u & _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 62364u, 1u, 1u), vec4<u32>(4294967295u, 53769u, 46004u, 29713u))) % 32u));
    let var_3 = 14267i;
    var_0 = var_1.b;
    let var_4 = reverseBits(0i);
    let var_5 = Struct_1(select(select(var_1.a, !(!vec4<bool>(var_1.a.x, var_1.a.x, true, false)), !var_1.a.x), select(vec4<bool>(var_1.a.x, any(vec2<bool>(true, true)), any(vec3<bool>(var_1.a.x, var_1.a.x, false)), true), var_1.a, select(true, true, select(true, var_1.a.x, false))), false), _wgslsmith_f_op_vec2_f32(sign(var_1.e.zx)), reverseBits(_wgslsmith_mod_vec3_i32(~var_1.c, vec3<i32>(u_input.a, u_input.a, 75751i)) >> (countOneBits(vec3<u32>(5062u, 0u, 1u)) % vec3<u32>(32u))), vec2<i32>(max(-13012i | -var_3, u_input.a), var_2), vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(21819u, 2u)]), var_1.b.x, 455f));
    var var_6 = _wgslsmith_add_vec2_i32(var_1.c.xx, ~(vec2<i32>(var_5.d.x, var_4) ^ vec2<i32>(-var_2, var_5.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -firstLeadingBit(~vec4<i32>(var_1.c.x, 2147483647i, u_input.a, var_3)), vec3<f32>(var_1.e.x, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1060f, -1057f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(var_0.x - -852f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - var_0.x))), vec4<i32>(countOneBits(~1i ^ ~var_4), ~_wgslsmith_add_i32(_wgslsmith_sub_i32(var_3, 0i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, var_5.d.x, 1i), vec3<i32>(var_4, var_1.d.x, u_input.a))), ~var_1.c.x, _wgslsmith_add_i32(22898i, _wgslsmith_sub_i32(var_1.d.x << (24747u % 32u), var_2))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 11u)]), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 6595u), 2u)], !var_1.a.x))))), vec2<f32>(-319f, var_5.b.x));
}

