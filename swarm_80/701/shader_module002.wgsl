struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec4<bool>,
    d: vec4<f32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(u_input.b.x, 31u)];
    global0 = array<Struct_1, 31>();
    var var_1 = _wgslsmith_sub_u32(1u, u_input.c.x);
    let var_2 = false | (((37662u >> (var_0.d % 32u)) == countOneBits(14514u)) | select(false, true, false));
    var var_3 = var_2;
    return ~0u;
}

fn func_2(arg_0: bool) -> i32 {
    let var_0 = Struct_1(func_3() & u_input.c.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-164f * -665f))), _wgslsmith_f_op_f32(step(571f, _wgslsmith_f_op_f32(1890f * -1000f))), _wgslsmith_f_op_f32(max(-267f, _wgslsmith_f_op_f32(f32(-1f) * -405f))), _wgslsmith_f_op_f32(-2080f - _wgslsmith_f_op_f32(ceil(391f))))), reverseBits(_wgslsmith_add_u32(32105u >> (u_input.b.x % 32u), ~28632u)) ^ 0u, _wgslsmith_add_u32(_wgslsmith_add_u32(~1u, 1u), _wgslsmith_mult_u32(1u, u_input.c.x)), -_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(1i, 12010i) >> (vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u))), countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(0i, u_input.a)))));
    global0 = array<Struct_1, 31>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, var_0.b.x, _wgslsmith_f_op_f32(min(-1000f, 447f)), _wgslsmith_f_op_f32(select(-285f, -999f, arg_0)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b)));
    var var_2 = -1086f;
    let var_3 = select(vec3<bool>(all(select(vec4<bool>(arg_0, arg_0, false, true), !vec4<bool>(true, false, arg_0, false), any(vec4<bool>(true, arg_0, arg_0, arg_0)))), false || all(vec2<bool>(true, true)), any(select(!vec2<bool>(true, arg_0), select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, false), vec2<bool>(arg_0, false)), arg_0))), select(select(vec3<bool>(arg_0 | arg_0, true, !arg_0), vec3<bool>(true && arg_0, !arg_0, !arg_0), arg_0), vec3<bool>(any(select(vec2<bool>(arg_0, false), vec2<bool>(false, arg_0), vec2<bool>(arg_0, false))), true, false), vec3<bool>(select(all(vec3<bool>(arg_0, arg_0, false)), true, arg_0), arg_0, select(any(vec2<bool>(arg_0, true)), var_0.b.x < var_0.b.x, arg_0 != arg_0))), select(select(vec3<bool>(!arg_0, false, false), !select(vec3<bool>(true, true, false), vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, arg_0, true)), arg_0), select(!vec3<bool>(arg_0, false, false), vec3<bool>(arg_0, true, false), vec3<bool>(arg_0, true, all(vec4<bool>(false, false, arg_0, true)))), true));
    return 2147483647i | u_input.a;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = Struct_1(arg_1.c, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -287f)) * -517f), arg_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) + _wgslsmith_f_op_f32(591f * _wgslsmith_div_f32(arg_0.b.x, 255f))), -844f), firstTrailingBit(u_input.b.x), 0u, -vec2<i32>(func_2(true), 13876i));
    let var_1 = reverseBits(~u_input.c.wy);
    global0 = array<Struct_1, 31>();
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2843f, _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-var_0.b.x), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.b.x, -1142f)) - arg_0.b.x), arg_0.b.x) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_0.b.x, -381f, 507f))))) * var_0.b);
    let var_3 = ~u_input.c;
    return select(!vec2<bool>(true, var_0.e.x < -9423i), select(vec2<bool>(true, true), select(vec2<bool>(all(vec4<bool>(true, false, true, false)), true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), true), true), vec2<bool>(var_3.x < 48231u, all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))) && true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(1997u);
    global0 = array<Struct_1, 31>();
    var var_1 = select(select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, any(vec3<bool>(false, true, true))), select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, false), all(vec2<bool>(true, true)))), vec2<bool>(true, var_0 != u_input.c.x), vec2<bool>(true, true)), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), true), !select(func_1(Struct_1(var_0, vec4<f32>(-964f, -537f, -997f, -839f), u_input.c.x, u_input.c.x, vec2<i32>(u_input.a, u_input.a)), Struct_1(var_0, vec4<f32>(534f, 602f, -2115f, 1082f), 69247u, 59247u, vec2<i32>(34270i, 1i))), vec2<bool>(true, true), 33515i > u_input.a)), !select(vec2<bool>(true, true), vec2<bool>(true, true), true));
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(20678i, u_input.a, i32(-1i) * -22992i, u_input.a & u_input.a), ~(~vec4<i32>(u_input.a, 0i, u_input.a, u_input.a))), u_input.a, 1i), firstLeadingBit(select(~_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.a, 37682i, u_input.a), vec4<i32>(39413i, u_input.a, 17526i, -44225i)), firstLeadingBit(vec4<i32>(0i, u_input.a, u_input.a, u_input.a) ^ vec4<i32>(u_input.a, u_input.a, u_input.a, -6917i)), var_1.x)));
    let var_3 = select(select(vec4<bool>(true, any(select(vec4<bool>(true, true, true, false), vec4<bool>(var_1.x, true, var_1.x, false), vec4<bool>(var_1.x, var_1.x, var_1.x, true))), func_1(Struct_1(var_0, vec4<f32>(995f, -1201f, 1644f, 1016f), 0u, var_0, vec2<i32>(u_input.a, -1i)), global0[_wgslsmith_index_u32(abs(var_0), 31u)]).x, true), select(!select(vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(var_1.x, true, var_1.x, false), vec4<bool>(var_1.x, var_1.x, var_1.x, false)), vec4<bool>(all(vec3<bool>(true, false, var_1.x)), var_1.x && true, true, true), !select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, true, true))), !select(vec4<bool>(true, var_1.x, true, var_1.x), !vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), !vec4<bool>(var_1.x, true, false, true))), vec4<bool>(!any(vec2<bool>(true, true)), (u_input.c.x << (var_0 % 32u)) <= countOneBits(_wgslsmith_mod_u32(1u, var_0)), abs(2147483647i | u_input.a) >= (i32(-1i) * -36906i), any(!vec3<bool>(var_1.x, false, var_1.x))), select(vec4<bool>(all(vec3<bool>(var_1.x, var_1.x, var_1.x)), true, var_1.x, true), vec4<bool>(var_1.x, all(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), _wgslsmith_clamp_u32(63076u, u_input.c.x, var_0) < ~1u, false), u_input.a <= min(-u_input.a, ~0i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(630f, -398f), vec2<f32>(1000f, 547f)))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-222f, 803f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(806f, 255f) + vec2<f32>(-490f, -811f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-215f, -331f)) + _wgslsmith_div_vec2_f32(vec2<f32>(567f, -777f), vec2<f32>(-696f, -924f)))))), -_wgslsmith_mult_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, u_input.a, u_input.a), vec3<i32>(u_input.a, 1i, 45421i)), ~firstTrailingBit(vec3<i32>(54886i, -47921i, u_input.a))), vec2<f32>(-1308f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(335f)), -1172f, var_1.x | true))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-259f, 1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(299f, 317f, 474f, -168f))) * vec4<f32>(-790f, -1250f, -1839f, 318f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1032f, 647f, -1899f, -590f)))))));
}

