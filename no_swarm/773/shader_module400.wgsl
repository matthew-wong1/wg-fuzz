struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
    c: bool,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 21> = array<vec2<bool>, 21>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false));

var<private> global1: array<u32, 16>;

var<private> global2: bool = false;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 321f)), -1211f, false)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-643f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(616f, 558f, true)) - 754f)) * -1595f), _wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1902f + _wgslsmith_f_op_f32(trunc(1000f))), -1301f)));
    let var_1 = Struct_1(2390f, true);
    global2 = false;
    global2 = var_1.b;
    var var_2 = !vec3<bool>(var_1.b, !var_1.b, ~(~97246u) >= _wgslsmith_mult_u32(u_input.a.x, 4294967295u));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(815f)) + -1109f) + 1000f), -531f, var_2.x));
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: f32) -> bool {
    let var_0 = Struct_2(select(vec2<bool>(true, any(vec4<bool>(true, false, false, true))), !global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(21352u, 4294967295u), max(44757u, global1[_wgslsmith_index_u32(4871u, 16u)])), 21u)], !select(any(vec4<bool>(false, false, false, false)), global1[_wgslsmith_index_u32(u_input.a.x, 16u)] == u_input.b.x, true)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(891f)), _wgslsmith_div_f32(621f, arg_2))), true), Struct_1(_wgslsmith_f_op_f32(ceil(arg_2)), !any(vec2<bool>(true, false))), Struct_1(-1029f, select(select(u_input.c == u_input.c, true, true), !(31523u > u_input.b.x), true)));
    global0 = array<vec2<bool>, 21>();
    global0 = array<vec2<bool>, 21>();
    var var_1 = Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(980f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2)) + -804f))))), min(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(13649i, u_input.c, 25447i, -1i)), arg_0), abs(vec4<i32>(_wgslsmith_mult_i32(-2147483647i, u_input.c), i32(-1i) * -38374i, _wgslsmith_div_i32(1i, arg_1), ~arg_0.x))), any(vec2<bool>(var_0.d.b, var_0.d.a < -624f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-390f, var_0.b.a) - vec2<f32>(arg_2, var_0.c.a)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.a, var_0.d.a)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-715f, 1543f), vec2<f32>(var_0.c.a, 1000f), var_0.a)))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1137f * 1144f), _wgslsmith_f_op_f32(min(arg_2, -470f)), var_0.b.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x))), -2142f), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(306f, 1066f, -458f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -353f, 1455f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-800f - arg_2)), 1f)))));
    return select(var_0.d.b != true, var_0.c.b, var_0.d.b | select(true, !any(vec3<bool>(false, false, true)), any(!var_0.a)));
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: i32) -> vec3<f32> {
    global2 = all(select(vec2<bool>(!(!arg_1), arg_1), !global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(4294967295u, global1[_wgslsmith_index_u32(0u, 16u)]), 49113u), 21u)], true));
    let var_0 = Struct_1(-1082f, any(vec4<bool>(all(select(vec2<bool>(arg_1, true), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4575u, 16u)], 21u)], true)), !arg_1, any(select(vec4<bool>(true, false, arg_1, arg_1), vec4<bool>(false, false, false, false), vec4<bool>(true, arg_1, arg_1, arg_1))), true)));
    var var_1 = reverseBits(max(u_input.b | ~vec2<u32>(20301u, 0u), u_input.b)) | reverseBits(select(~(~u_input.a.xx), _wgslsmith_clamp_vec2_u32(u_input.a.ww, vec2<u32>(45676u, 78633u), ~vec2<u32>(global1[_wgslsmith_index_u32(19356u, 16u)], 5835u)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~0u, 4294967295u), 21u)]));
    global0 = array<vec2<bool>, 21>();
    var var_2 = _wgslsmith_f_op_f32(exp2(var_0.a)) < _wgslsmith_f_op_f32(-956f - -1800f);
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(949f, _wgslsmith_div_f32(var_0.a, var_0.a), _wgslsmith_f_op_f32(-566f + -328f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, var_0.a)))), vec3<f32>(var_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-877f, _wgslsmith_f_op_f32(min(1121f, -1347f)), true)), -152f), var_0.a), vec3<bool>(arg_1, true & (all(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 16u)], 21u)]) && arg_1), 1588f > _wgslsmith_f_op_f32(exp2(var_0.a)))));
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(42825i, func_4(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.c, u_input.c, 2147483647i), vec4<i32>(u_input.c, -2147483647i, u_input.c, u_input.c)) | _wgslsmith_clamp_vec4_i32(vec4<i32>(-5148i, u_input.c, -10506i, u_input.c), vec4<i32>(-20905i, 12358i, 1i, -33557i), vec4<i32>(2147483647i, u_input.c, 1i, 22126i)), u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), ~0i | ~u_input.c)) - vec3<f32>(_wgslsmith_f_op_vec3_f32(func_5(48488i, ~u_input.c <= _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(1i, -12968i)), u_input.c)).x, -2279f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-841f, -370f, false)) + _wgslsmith_f_op_vec3_f32(func_5(u_input.c, false, u_input.c)).x))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1075f) + var_0.x))), func_4(abs(_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.c, -29586i, 23620i, u_input.c), ~vec4<i32>(u_input.c, u_input.c, -42166i, u_input.c))), _wgslsmith_div_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.c, 5774i), vec3<i32>(29656i, -44380i, u_input.c)), i32(-1i) * -u_input.c), var_0.x));
    let var_2 = var_1.b;
    global0 = array<vec2<bool>, 21>();
    let var_3 = Struct_3(_wgslsmith_div_f32(-1012f, var_0.x), abs(_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(u_input.c, -6118i, u_input.c, 24425i)), ~(~vec4<i32>(u_input.c, u_input.c, -16232i, 12898i)))), true, vec2<f32>(-1962f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1001f)), _wgslsmith_f_op_f32(-var_1.a)) - _wgslsmith_f_op_f32(step(-1024f, 1000f)))));
    return u_input.c;
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_1) -> bool {
    global0 = array<vec2<bool>, 21>();
    global0 = array<vec2<bool>, 21>();
    let var_0 = vec3<i32>(u_input.c ^ 29427i, arg_0.x, -_wgslsmith_sub_i32(~(-1i), _wgslsmith_mult_i32(max(arg_0.x, -2147483647i), arg_0.x)));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-979f))));
    var var_2 = Struct_3(-1000f, ~max(vec4<i32>(u_input.c, var_0.x, u_input.c, var_0.x), vec4<i32>(-39084i, -2843i, arg_0.x, var_0.x)) >> (select(~abs(u_input.a), firstTrailingBit(u_input.a & u_input.a), vec4<bool>(true, arg_1.b, arg_1.b, arg_1.b)) % vec4<u32>(32u)), arg_1.b, _wgslsmith_f_op_vec3_f32(func_5(var_0.x, any(select(!vec4<bool>(arg_1.b, arg_1.b, false, arg_1.b), select(vec4<bool>(true, false, arg_1.b, arg_1.b), vec4<bool>(arg_1.b, true, arg_1.b, arg_1.b), vec4<bool>(arg_1.b, false, false, false)), !vec4<bool>(arg_1.b, arg_1.b, true, false))), max(_wgslsmith_mod_i32(-2147483647i, var_0.x), -17504i))).xy);
    return !(!func_4(vec4<i32>(2147483647i >> (1u % 32u), _wgslsmith_sub_i32(arg_0.x, -2147483647i), firstLeadingBit(u_input.c), ~0i), min(firstLeadingBit(1i), 1i), -179f));
}

fn func_7(arg_0: vec4<bool>) -> vec3<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_mod_i32(1i, -(-587i << (global1[_wgslsmith_index_u32(u_input.b.x, 16u)] % 32u))), 4294967295u < global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(countOneBits(u_input.a.x), global1[_wgslsmith_index_u32(0u, 16u)] >> (global1[_wgslsmith_index_u32(u_input.a.x, 16u)] % 32u)), 16u)], 2147483647i ^ _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.c, -1i), vec2<i32>(u_input.c, -2147483647i)))).x, any(vec2<bool>(arg_0.x, true)));
    let var_1 = u_input.a;
    let var_2 = !((arg_0.x || !(!var_0.b)) || (~u_input.b.x < ~(~26633u)));
    var var_3 = vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(select(_wgslsmith_sub_u32(~global1[_wgslsmith_index_u32(50821u, 16u)], 20915u | u_input.a.x) ^ ~4294967295u, _wgslsmith_mod_u32(var_1.x, ~(4221u << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 16u)], 16u)] % 32u))), any(arg_0.zwz)), 16u)], 16u)], u_input.a.x, ~min(firstLeadingBit(42533u), 6082u));
    global2 = !var_0.b;
    return vec3<u32>(firstTrailingBit(~(~0u)) >> (~var_1.x % 32u), global1[_wgslsmith_index_u32(~0u, 16u)], _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_add_u32(u_input.b.x, 0u), min(11482u, 0u)), _wgslsmith_mult_vec2_u32(firstTrailingBit(u_input.a.yy), var_1.wy)), var_1.xw ^ vec2<u32>(~u_input.b.x, var_3.x >> (var_3.x % 32u))));
}

fn func_1(arg_0: i32, arg_1: f32) -> vec4<u32> {
    let var_0 = func_7(vec4<bool>(true, select(any(vec2<bool>(false, false)), true, true), true, func_6(vec2<i32>(-u_input.c, func_2()), Struct_1(arg_1, -1i < arg_0))));
    return vec4<u32>(var_0.x, 0u, u_input.b.x << (38042u % 32u), func_7(vec4<bool>(true, any(vec3<bool>(true, true, true)) || func_4(vec4<i32>(u_input.c, arg_0, arg_0, u_input.c), arg_0, arg_1), true, false)).x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(select(0u, ~global1[_wgslsmith_index_u32(select(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], 16u)], 27550u, false), 16u)], true), min(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.b.x, u_input.a.x), 16u)], 1u), _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(~58473u | min(4294967295u, global1[_wgslsmith_index_u32(4294967295u, 16u)]), 16u)], 4294967295u), _wgslsmith_mod_u32(4294967295u, ~(~18421u))), func_1(4947i & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 55196i, u_input.c, 1i) ^ vec4<i32>(50624i, -15257i, 1811i, u_input.c), -vec4<i32>(-11485i, u_input.c, -15962i, -35474i)), 1411f));
    let var_1 = -295i;
    let var_2 = 1u;
    global0 = array<vec2<bool>, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yyx, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(413f + -941f), _wgslsmith_f_op_f32(f32(-1f) * -825f), _wgslsmith_f_op_f32(min(-1634f, 1621f)), _wgslsmith_f_op_f32(trunc(1816f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1741f, -741f, -1343f, -871f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-1300f - 675f), 396f, _wgslsmith_f_op_f32(abs(1118f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1006f, 669f, 277f, -485f) - _wgslsmith_div_vec4_f32(vec4<f32>(-1126f, 543f, -1811f, -606f), vec4<f32>(-2035f, 1673f, -257f, -488f))))), firstTrailingBit(firstLeadingBit(countOneBits(vec4<i32>(var_1, 60396i, u_input.c, var_1)))));
}

