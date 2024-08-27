struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: u32,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec2<u32>;

var<private> global2: array<u32, 18>;

var<private> global3: u32;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_1) -> vec3<bool> {
    global0 = ~(-1i);
    global2 = array<u32, 18>();
    var var_0 = Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.a)) - -289f)), -560f)), any(vec4<bool>(true, false, true, true == all(vec3<bool>(true, true, true)))), arg_0.a, _wgslsmith_sub_i32(min(-1i, 0i), 1i));
    let var_1 = Struct_2(Struct_1(var_0.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-276f, _wgslsmith_f_op_f32(-var_0.a), arg_0.a, 662f)))), 0u, arg_0, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, 197f) * vec2<f32>(arg_0.a, -385f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1133f, 1119f), vec2<f32>(117f, -720f), var_0.b))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(709f, -1180f)), all(!vec3<bool>(var_0.b, true, true))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_1.b.wwz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.b.zzw + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1626f, var_1.d.a, 836f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_1.b.zzz)))))));
    return !(!select(select(select(vec3<bool>(false, var_0.b, false), vec3<bool>(var_0.b, true, false), false), !vec3<bool>(var_0.b, var_0.b, true), !vec3<bool>(false, false, var_0.b)), !vec3<bool>(var_0.b, true, false), any(vec4<bool>(var_0.b, var_0.b, var_0.b, false)) || (var_0.d <= -2147483647i)));
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    global3 = 81249u;
    let var_0 = -1i;
    global0 = var_0;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -2713f), true, _wgslsmith_f_op_f32(round(409f)), arg_0.x);
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(557f - _wgslsmith_f_op_f32(-var_1.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(286f, var_1.c))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(2033f, 349f)), -518f, _wgslsmith_f_op_f32(var_1.a * var_1.a), 359f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-240f, -1064f, var_1.a, 890f), vec4<f32>(-851f, -306f, _wgslsmith_f_op_f32(f32(-1f) * -236f), _wgslsmith_f_op_f32(step(var_1.a, 333f))))), _wgslsmith_dot_vec4_u32(countOneBits(u_input.c >> (select(u_input.c, u_input.c, vec4<bool>(true, var_1.b, true, true)) % vec4<u32>(32u))), countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, global1.x, u_input.a.x, 1u), vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 18u)], 67477u, u_input.b, global2[_wgslsmith_index_u32(5896u, 18u)]), vec4<u32>(0u, global2[_wgslsmith_index_u32(global1.x, 18u)], 0u, 1u)) >> (u_input.c % vec4<u32>(32u)))), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.c)))), vec2<f32>(-457f, _wgslsmith_f_op_f32(-var_1.a)));
    return var_1.d;
}

fn func_1(arg_0: Struct_3) -> f32 {
    var var_0 = -arg_0.d;
    var var_1 = -525f;
    var var_2 = select(!(!vec3<bool>(arg_0.b, false, false)), !select(vec3<bool>(all(vec2<bool>(arg_0.b, arg_0.b)), true, true), select(select(vec3<bool>(arg_0.b, true, true), vec3<bool>(arg_0.b, arg_0.b, false), vec3<bool>(false, true, arg_0.b)), vec3<bool>(true, true, true), true), select(select(vec3<bool>(arg_0.b, true, arg_0.b), vec3<bool>(true, arg_0.b, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), true)), !func_2(Struct_1(_wgslsmith_f_op_f32(1992f + arg_0.c))));
    var var_3 = _wgslsmith_mult_vec2_i32(vec2<i32>(~arg_0.d, reverseBits(arg_0.d & -27122i)) ^ -min(~vec2<i32>(1i, arg_0.d), vec2<i32>(-18726i, -9821i) & vec2<i32>(arg_0.d, -1i)), vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(vec2<i32>(arg_0.d, -4968i) << (vec2<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 18u)], u_input.a.x) % vec2<u32>(32u)), max(vec2<i32>(arg_0.d, 9320i), vec2<i32>(-26080i, arg_0.d))));
    var_3 = vec2<i32>(-1i) * -min(vec2<i32>(func_3(vec3<i32>(-63564i, arg_0.d, -25530i)), _wgslsmith_sub_i32(var_3.x, 77798i)), select(vec2<i32>(-2147483647i, arg_0.d), vec2<i32>(-2147483647i, -20464i), select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(true, false), var_2.zz)));
    return -643f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(Struct_3(-427f, false, 483f, 1i))))) - _wgslsmith_f_op_f32(f32(-1f) * -2450f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-757f + _wgslsmith_div_f32(-413f, 1139f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-312f + -1320f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -392f) - -293f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -750f) * -1178f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -220f) - _wgslsmith_f_op_f32(f32(-1f) * -586f))), firstTrailingBit(global2[_wgslsmith_index_u32(4294967295u, 18u)]), Struct_1(_wgslsmith_div_f32(-585f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-300f, -501f, false)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_3(993f, false, 260f, -2147483647i))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(478f, -1000f)))))));
    global0 = -reverseBits(_wgslsmith_div_i32(1i, ~(-1i) << (firstTrailingBit(50668u) % 32u)));
    var_0 = Struct_2(var_0.d, _wgslsmith_f_op_vec4_f32(vec4<f32>(1118f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-1000f, var_0.b.x)))), _wgslsmith_f_op_f32(floor(var_0.d.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.x - -1126f))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(992f, -623f, var_0.d.a, -1445f))))), 1u << (_wgslsmith_dot_vec2_u32(vec2<u32>(~global1.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 18u)], 18u)] << (1u % 32u)), firstLeadingBit(u_input.c.yy)) % 32u), var_0.d, var_0.e);
    let var_1 = min(vec4<i32>(firstLeadingBit(1i), -_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), ~vec2<i32>(-15844i, 1i)), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 0i, -1i), vec3<i32>(0i, 1i, -45124i)), vec3<i32>(2147483647i, 0i, 2059i)) & -19635i, -13388i), select(select(vec4<i32>(1i, 1i, 1i, 1i), min(vec4<i32>(11199i, 23877i, 0i, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(38698i, -1i, 21596i, 50667i), vec4<i32>(26448i, 0i, -37991i, -9113i))), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), false), vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true)))), vec4<i32>(1i >> ((107511u | u_input.b) % 32u), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(4733i, -1i), vec2<i32>(-19752i, 99443i))), _wgslsmith_clamp_i32(14180i, 65442i, 1i) & -7063i, abs(0i)), !select(true, true, true)));
    let var_2 = ~_wgslsmith_mod_u32(~var_0.c, 25679u);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, abs(_wgslsmith_sub_vec3_u32(u_input.c.zzw, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 0u, global2[_wgslsmith_index_u32(global1.x, 18u)]) << (u_input.c.wwx % vec3<u32>(32u)), select(u_input.c.wyx, u_input.c.ywx, vec3<bool>(false, false, false))))));
}

