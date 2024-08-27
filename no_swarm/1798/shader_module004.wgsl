struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec3<i32>,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 4> = array<vec3<i32>, 4>(vec3<i32>(-22997i, 20998i, 15106i), vec3<i32>(-1i, 2147483647i, 18894i), vec3<i32>(-54122i, 16157i, -1i), vec3<i32>(-1i, 41857i, 2147483647i));

var<private> global1: vec2<u32> = vec2<u32>(0u, 81130u);

var<private> global2: array<bool, 30> = array<bool, 30>(true, false, false, false, false, true, false, false, true, false, true, true, false, true, true, false, false, true, true, false, true, false, true, false, false, true, true, false, false, false);

var<private> global3: array<Struct_3, 3>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> vec2<u32> {
    global1 = ~(~_wgslsmith_mod_vec2_u32(~vec2<u32>(17381u, global1.x), ~vec2<u32>(global1.x, global1.x)) >> (~vec2<u32>(26600u, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, global1.x), vec2<u32>(61675u, global1.x))) % vec2<u32>(32u)));
    global2 = array<bool, 30>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-901f, 949f, -352f, -663f) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(184f, 278f, -912f, 898f))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1184f, -1542f, -1458f, -2645f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -131f), _wgslsmith_f_op_f32(-1000f - -667f), _wgslsmith_f_op_f32(sign(-462f)), -457f))), false)));
    let var_1 = !all(select(vec2<bool>(false, u_input.b > 0i), select(select(vec2<bool>(global2[_wgslsmith_index_u32(global1.x, 30u)], global2[_wgslsmith_index_u32(84886u, 30u)]), vec2<bool>(global2[_wgslsmith_index_u32(71856u, 30u)], false), global2[_wgslsmith_index_u32(1u, 30u)]), select(vec2<bool>(global2[_wgslsmith_index_u32(global1.x, 30u)], global2[_wgslsmith_index_u32(global1.x, 30u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(global1.x, 30u)]), vec2<bool>(true, false)), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 30u)], global2[_wgslsmith_index_u32(global1.x, 30u)])), vec2<bool>(global2[_wgslsmith_index_u32(global1.x, 30u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(34148u, global1.x), vec2<u32>(1u, global1.x)), 30u)])));
    let var_2 = vec2<i32>(-1i) * -min(reverseBits(vec2<i32>(-21782i, u_input.b)) << ((vec2<u32>(global1.x, global1.x) & vec2<u32>(global1.x, global1.x)) % vec2<u32>(32u)), vec2<i32>(2147483647i, 11777i));
    return vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(~(global1.x & 1u), ~(global1.x & 74815u)), ~1u), 54778u);
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: f32) -> f32 {
    global1 = _wgslsmith_add_vec2_u32(select(arg_0, vec2<u32>(arg_1.a.x, 4294967295u), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_mod_u32(arg_0.x, 1u), _wgslsmith_dot_vec2_u32(~vec2<u32>(global1.x, 0u), abs(vec2<u32>(75325u, arg_0.x)))), 30u)]), func_3());
    var var_0 = _wgslsmith_f_op_f32(max(arg_2, -1585f));
    global3 = array<Struct_3, 3>();
    let var_1 = arg_1.d.yz;
    let var_2 = 21094i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - -743f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * 2071f)), all(vec2<bool>(true, true))))));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: i32) -> f32 {
    var var_0 = arg_1;
    var var_1 = global3[_wgslsmith_index_u32(var_0.x & _wgslsmith_dot_vec4_u32(abs(firstLeadingBit(countOneBits(vec4<u32>(4294967295u, var_0.x, 57852u, 55948u)))), min(_wgslsmith_mult_vec4_u32(vec4<u32>(global1.x, 37315u, global1.x, 48333u) ^ vec4<u32>(16166u, 92811u, var_0.x, 1u), ~vec4<u32>(var_0.x, 0u, var_0.x, arg_1.x)), _wgslsmith_div_vec4_u32(~vec4<u32>(global1.x, 25270u, global1.x, var_0.x), vec4<u32>(65064u, global1.x, arg_1.x, var_0.x) | vec4<u32>(4294967295u, 1u, arg_1.x, 8605u)))), 3u)];
    var_0 = _wgslsmith_sub_vec2_u32(~select(select(~vec2<u32>(var_0.x, 0u), var_1.a.d.a.zz ^ arg_1, true), (vec2<u32>(0u, 4294967295u) & var_1.a.d.a.xz) | ~arg_1, _wgslsmith_f_op_f32(631f * var_1.a.a.x) == _wgslsmith_f_op_f32(-1154f + var_1.a.a.x)), vec2<u32>(~1u, firstTrailingBit(reverseBits(reverseBits(1u)))));
    let var_2 = var_1.a;
    global0 = array<vec3<i32>, 4>();
    return _wgslsmith_f_op_f32(-929f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.a.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(var_1.a.d.a.zy, var_2.d, 1453f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(vec2<u32>(17177u, 22496u));
    global2 = array<bool, 30>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(459f)), _wgslsmith_f_op_f32(f32(-1f) * -654f))), 1f, !any(vec2<bool>(true, true)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(vec4<bool>(global2[_wgslsmith_index_u32(var_0.x, 30u)], global2[_wgslsmith_index_u32(var_0.x, 30u)], false, global2[_wgslsmith_index_u32(var_0.x, 30u)]), vec2<u32>(66522u, 24128u), u_input.a)))))), _wgslsmith_f_op_f32(max(1f, 1011f)));
    global1 = vec2<u32>(44514u, ~41692u) | (~(~countOneBits(var_0)) | var_0);
    var var_2 = Struct_1(firstTrailingBit(~vec3<u32>(28229u, ~global1.x, _wgslsmith_clamp_u32(1u, 18001u, var_0.x))), vec4<i32>(select(firstTrailingBit(u_input.b << (var_0.x % 32u)), min(-15109i, u_input.a), true), ~((i32(-1i) * -1i) >> (~var_0.x % 32u)), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -5786i, u_input.b, u_input.a), ~vec4<i32>(10871i, u_input.b, u_input.a, -13204i))), ~u_input.a), abs(0i), !(!(!(!vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 30u)], false, global2[_wgslsmith_index_u32(var_0.x, 30u)])))));
    var_2 = Struct_1(vec3<u32>(_wgslsmith_clamp_u32(6993u >> (0u % 32u), var_2.a.x, 48183u), func_3().x, 0u) << (reverseBits(vec3<u32>(global1.x, global1.x & 0u, ~1u)) % vec3<u32>(32u)), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(var_2.b, select(vec4<i32>(-19225i, var_2.b.x, -2147483647i, 1i), -var_2.b, vec4<bool>(var_2.d.x, global2[_wgslsmith_index_u32(3742u, 30u)], global2[_wgslsmith_index_u32(global1.x, 30u)], true)), var_2.b), var_2.b), u_input.b, !vec3<bool>(true, !all(var_2.d.xy), _wgslsmith_f_op_f32(func_2(vec2<u32>(1u, var_0.x), Struct_1(vec3<u32>(49945u, global1.x, var_0.x), var_2.b, var_2.b.x, vec3<bool>(var_2.d.x, global2[_wgslsmith_index_u32(33965u, 30u)], global2[_wgslsmith_index_u32(0u, 30u)])), var_1.x)) != _wgslsmith_f_op_f32(trunc(var_1.x))));
    var var_3 = var_2.b.xy;
    var var_4 = -2147483647i;
    let var_5 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(abs(-861f)), _wgslsmith_f_op_f32(f32(-1f) * -508f), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(-897f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_1.x, var_1.x)), -1000f))), vec4<bool>(false, all(var_2.d), true, true), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, firstTrailingBit(u_input.a >> (1u % 32u)), -(~13115i)), vec3<i32>(42784i, -17443i, ~2147483647i)), Struct_1(vec3<u32>(~global1.x, ~(1u ^ global1.x), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(global1.x, global1.x, 35459u, var_0.x)), ~vec4<u32>(var_0.x, 4294967295u, 69112u, var_2.a.x))), firstLeadingBit(var_2.b), 2147483647i, var_2.d), !vec4<bool>(true, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_2.a.x, var_2.a.x), 30u)], var_2.d.x, any(select(vec4<bool>(false, var_2.d.x, true, true), vec4<bool>(var_2.d.x, false, true, false), vec4<bool>(false, var_2.d.x, false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(abs(-2565f)), _wgslsmith_f_op_f32(f32(-1f) * -904f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x)))))), var_2.b.x, u_input.a & _wgslsmith_dot_vec2_i32(-_wgslsmith_div_vec2_i32(var_5.c.xx, var_5.c.yx), _wgslsmith_mod_vec2_i32(abs(vec2<i32>(38245i, -2147483647i)), firstLeadingBit(vec2<i32>(var_5.d.b.x, var_2.c)))), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(reverseBits(0u), 19764u, 4294967295u, 64212u)), vec4<u32>(var_2.a.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, var_5.d.a.x, 39u, global1.x), vec4<u32>(var_0.x, var_0.x, global1.x, 0u)), var_5.d.a.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 15894u), vec2<u32>(1u, 48672u)))), _wgslsmith_add_vec3_u32(vec3<u32>(0u, _wgslsmith_mod_u32(1u, global1.x), _wgslsmith_mult_u32(var_0.x, var_0.x)), var_2.a) | firstTrailingBit(~vec3<u32>(var_0.x, 8506u, 0u)));
}

