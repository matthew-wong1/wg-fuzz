struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 22>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: bool, arg_3: Struct_2) -> u32 {
    let var_0 = arg_0.c;
    let var_1 = 1i;
    global0 = array<vec3<f32>, 22>();
    global0 = array<vec3<f32>, 22>();
    let var_2 = vec3<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-106f - arg_0.b))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(299f, arg_3.a.x) + _wgslsmith_f_op_f32(var_0.x + 1206f)), true)) < arg_3.c.x, arg_2, any(!select(vec2<bool>(false, true), vec2<bool>(arg_2, false), select(true, false, arg_2))));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(~_wgslsmith_mult_u32(44262u, u_input.b), ~4294967295u), _wgslsmith_sub_u32(~u_input.b, _wgslsmith_mod_u32(countOneBits(u_input.a.x), max(13168u, 43131u))), ~64020u, ~(~(u_input.b & u_input.a.x))), abs(reverseBits(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.b, u_input.a.x, 23172u), vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u)))));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec3<f32>, arg_3: bool) -> vec2<i32> {
    var var_0 = true;
    var var_1 = Struct_1(arg_0.a, -(~arg_1), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b, 32111u, 52451u, 4294967295u), ~select(vec4<u32>(3148u, 4294967295u, 27533u, u_input.b), vec4<u32>(33608u, arg_0.c, 4294967295u, u_input.a.x), false)), vec4<u32>(func_3(Struct_2(arg_2.yx, -736f, vec4<f32>(609f, arg_2.x, 1396f, arg_2.x)), firstTrailingBit(-11273i), all(vec2<bool>(true, arg_3)), Struct_2(arg_2.xz, arg_2.x, vec4<f32>(arg_2.x, 105f, -536f, arg_2.x))), arg_0.c, _wgslsmith_add_u32(~4294967295u, u_input.b & 1u), arg_0.c)), any(select(vec2<bool>(true, all(vec3<bool>(arg_0.a, true, arg_0.a))), !select(vec2<bool>(arg_0.a, false), vec2<bool>(false, arg_0.d), arg_0.d), true)));
    global0 = array<vec3<f32>, 22>();
    var_0 = false;
    let var_2 = any(!select(select(vec4<bool>(arg_3, arg_3, false, false), !vec4<bool>(arg_3, arg_3, arg_3, var_1.d), select(vec4<bool>(true, arg_3, arg_0.d, var_1.a), vec4<bool>(arg_3, var_1.d, true, arg_3), vec4<bool>(true, true, true, false))), select(select(vec4<bool>(arg_0.d, arg_0.a, false, var_1.a), vec4<bool>(arg_3, true, arg_3, arg_0.a), vec4<bool>(arg_3, true, arg_3, false)), select(vec4<bool>(arg_3, true, var_1.a, false), vec4<bool>(true, var_1.a, false, false), vec4<bool>(arg_3, var_1.d, arg_0.a, true)), any(vec4<bool>(false, var_1.d, false, var_1.a))), _wgslsmith_f_op_f32(round(arg_2.x)) > -395f));
    return vec2<i32>(-arg_0.b, arg_0.b << (18414u % 32u));
}

fn func_2() -> vec3<bool> {
    global0 = array<vec3<f32>, 22>();
    let var_0 = countOneBits(vec2<i32>(max(-49638i, 40806i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, -1i, -2147483647i), vec4<i32>(-1303i, -277i, 0i, 2147483647i)) & -2147483647i) ^ func_4(Struct_1(true, i32(-1i) * -37773i, 4294967295u, select(false, false, false)), 1i | select(-13602i, -1i, true), global0[_wgslsmith_index_u32(func_3(Struct_2(vec2<f32>(-1000f, -439f), -1349f, vec4<f32>(496f, 1000f, -791f, 1156f)), 1i, true, Struct_2(vec2<f32>(-892f, -220f), 381f, vec4<f32>(-1000f, 596f, 711f, 1000f))), 22u)], any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false)))));
    let var_1 = -459f;
    return select(select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), false), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), var_1 > -2692f)), all(vec4<bool>(any(vec3<bool>(true, false, false)), any(vec3<bool>(true, true, false)), false, true))), select(!select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), vec3<bool>(false, true, false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), false), vec3<bool>(_wgslsmith_f_op_f32(round(var_1)) < _wgslsmith_f_op_f32(-var_1), any(vec3<bool>(true, true, true)), !any(vec2<bool>(true, true))));
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: vec4<f32>, arg_3: Struct_2) -> vec4<u32> {
    var var_0 = select(select(select(!func_2(), select(vec3<bool>(arg_0, arg_0, arg_0), !vec3<bool>(false, false, arg_0), arg_0 || arg_0), select(!vec3<bool>(arg_0, false, false), !vec3<bool>(true, true, arg_0), 0u <= u_input.a.x)), !select(vec3<bool>(false, false, arg_0), !vec3<bool>(true, arg_0, false), vec3<bool>(false, true, arg_0)), any(!vec2<bool>(arg_0, arg_0))), select(vec3<bool>(false, any(func_2().zy), any(!vec4<bool>(arg_0, true, true, false))), vec3<bool>(all(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, true, true), arg_0)), arg_0, arg_0), 0u <= _wgslsmith_dot_vec3_u32(u_input.a, max(vec3<u32>(1u, u_input.b, 29477u), vec3<u32>(4294967295u, 4294967295u, u_input.a.x)))), ((~u_input.a.x | 37769u) > ~1u) != arg_0);
    let var_1 = !select(!vec3<bool>(!var_0.x, false, false), vec3<bool>(all(!vec2<bool>(var_0.x, arg_0)), select(false, false, false) == (var_0.x || var_0.x), func_2().x), !(!(!vec3<bool>(var_0.x, arg_0, var_0.x))));
    var var_2 = vec2<i32>(2147483647i, _wgslsmith_mult_i32(i32(-1i) * -1i, 1i));
    var_2 = max(select(~(select(vec2<i32>(var_2.x, 1i), vec2<i32>(-15010i, var_2.x), vec2<bool>(false, var_0.x)) & min(vec2<i32>(1i, 0i), vec2<i32>(var_2.x, 21523i))), max(vec2<i32>(var_2.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, 1i, -1i), vec3<i32>(var_2.x, var_2.x, var_2.x))), vec2<i32>(var_2.x, ~0i)), vec2<bool>(true, true)), _wgslsmith_add_vec2_i32(select(_wgslsmith_mult_vec2_i32(vec2<i32>(var_2.x, 23606i), vec2<i32>(var_2.x, var_2.x)) | ~vec2<i32>(1i, 1i), ~(-vec2<i32>(var_2.x, var_2.x)), !var_1.xz), vec2<i32>(-1i) * -(vec2<i32>(var_2.x, -2147483647i) | vec2<i32>(-1i, 2147483647i))));
    let var_3 = !select(var_1.xy, var_1.zy, !vec2<bool>(false, !arg_0));
    return vec4<u32>(_wgslsmith_mult_u32(4294967295u, arg_1.x), _wgslsmith_mod_u32(~u_input.a.x, 16795u), 35566u, u_input.b);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: f32) -> Struct_2 {
    let var_0 = !select(true, !any(vec2<bool>(true, true)), any(vec3<bool>(true, true, true)));
    let var_1 = var_0;
    global0 = array<vec3<f32>, 22>();
    global0 = array<vec3<f32>, 22>();
    var var_2 = arg_1;
    return Struct_2(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.b))))), -335f, var_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_mod_vec4_u32(vec4<u32>(firstLeadingBit(_wgslsmith_add_u32(u_input.b, 4294967295u)), min(u_input.b, u_input.b) >> (_wgslsmith_add_u32(18324u, u_input.b) % 32u), 4294967295u, 1u), abs(~func_1(true, vec2<u32>(u_input.a.x, 10675u), vec4<f32>(1000f, 1672f, -232f, 1000f), Struct_2(vec2<f32>(503f, -350f), -792f, vec4<f32>(971f, 1157f, -1177f, 226f))))), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(659f, -941f), vec2<f32>(-403f, 232f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -216f)), vec4<f32>(_wgslsmith_f_op_f32(select(-323f, _wgslsmith_f_op_f32(-830f - 408f), true)), 1f, 554f, _wgslsmith_f_op_f32(max(267f, 765f)))), _wgslsmith_f_op_f32(-1006f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1075f - _wgslsmith_f_op_f32(ceil(-480f))) * -572f)));
    var var_1 = u_input.a.xz;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~(~vec4<u32>(95748u, 4294967295u, 17478u, var_1.x)) >> (min(vec4<u32>(0u, u_input.b, var_1.x, 9688u) << (vec4<u32>(var_1.x, var_1.x, 64311u, 1u) % vec4<u32>(32u)), ~vec4<u32>(u_input.b, var_1.x, u_input.a.x, 0u)) % vec4<u32>(32u))), var_0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c.xzw + vec3<f32>(1343f, var_0.a.x, var_0.a.x)), _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 22u)])) * vec3<f32>(_wgslsmith_f_op_f32(-1492f + 456f), _wgslsmith_f_op_f32(var_0.b + var_0.a.x), 1449f)) + global0[_wgslsmith_index_u32(min(1u, func_3(var_0, 38843i << (var_1.x % 32u), false, var_0)), 22u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + _wgslsmith_f_op_f32(step(var_0.a.x, var_0.b))), u_input.b);
}

