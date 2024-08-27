struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<f32>, 2> = array<vec2<f32>, 2>(vec2<f32>(874f, 175f), vec2<f32>(-217f, 1499f));

var<private> global2: Struct_1 = Struct_1(vec2<f32>(-555f, 1313f), vec3<u32>(81864u, 45062u, 44979u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> vec3<u32> {
    var var_0 = -2147483647i;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global0.a))))))), _wgslsmith_add_vec3_u32(global0.b, _wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(global2.b.x, u_input.c.x, global0.b.x)), global2.b)));
    let var_2 = select(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), select(true, false, false))), select(vec4<bool>(select(false, true, true) || true, !any(vec3<bool>(false, false, true)), false, 1i != ~u_input.d), select(vec4<bool>(true, true, any(vec4<bool>(true, false, false, false)), false), vec4<bool>(true, false, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true))), vec4<bool>(!select(true, false, false), any(vec2<bool>(true, true)), true, !select(true, true, true))), vec4<bool>(false, !any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false)), true, true));
    global2 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(467f * _wgslsmith_div_f32(var_1.a.x, 1267f)), global0.a.x)), global2.b);
    global1 = array<vec2<f32>, 2>();
    return ~(reverseBits(vec3<u32>(_wgslsmith_clamp_u32(20819u, 0u, 1u), _wgslsmith_mod_u32(1u, var_1.b.x), abs(var_1.b.x))) | _wgslsmith_clamp_vec3_u32(u_input.c, select(vec3<u32>(var_1.b.x, 1u, 63019u), abs(u_input.c), all(vec3<bool>(var_2.x, var_2.x, var_2.x))), _wgslsmith_div_vec3_u32(vec3<u32>(var_1.b.x, 20706u, 6320u), global0.b) | var_1.b));
}

fn func_2(arg_0: i32, arg_1: vec3<bool>, arg_2: i32, arg_3: Struct_1) -> i32 {
    let var_0 = arg_3;
    global1 = array<vec2<f32>, 2>();
    global2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.a)), vec3<u32>(76056u, global0.b.x, ~u_input.c.x));
    let var_1 = select(~_wgslsmith_mult_vec2_i32(vec2<i32>(~2147483647i, 0i), -firstTrailingBit(vec2<i32>(arg_0, u_input.d))), vec2<i32>(u_input.a.x, -20104i), arg_1.x);
    let var_2 = Struct_1(global2.a, ~select(u_input.c >> (~u_input.c % vec3<u32>(32u)), func_3(), true));
    return -31058i;
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = vec4<bool>(true, !(-33812i != max(-15401i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.d), u_input.a.zw))), !(_wgslsmith_f_op_f32(-arg_0.x) >= _wgslsmith_f_op_f32(454f * global2.a.x)), true);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-463f + _wgslsmith_f_op_f32(round(arg_2.a.x)))) - -961f), -418f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-637f + _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(min(arg_0.x, -347f))))), arg_0.x);
    global1 = array<vec2<f32>, 2>();
    let var_2 = global2.b.x << (~(~(firstLeadingBit(u_input.c.x) << (min(8476u, arg_2.b.x) % 32u))) % 32u);
    let var_3 = func_2(select(-14961i, min(u_input.a.x, _wgslsmith_dot_vec2_i32(select(u_input.b.zx, vec2<i32>(-1i, 22468i), vec2<bool>(false, var_0.x)), u_input.a.yy)), var_0.x), vec3<bool>(var_0.x & (var_0.x || (arg_0.x < 766f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.a.x))) >= _wgslsmith_f_op_f32(abs(global0.a.x)), var_0.x), 2147483647i, arg_2);
    return Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(arg_0.yy, global1[_wgslsmith_index_u32(global2.b.x, 2u)]))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1322f, 1000f) - arg_2.a)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.a))))), vec3<u32>(~4294967295u, u_input.c.x ^ firstLeadingBit(4294967295u), ~(~1u) & min(1u, global0.b.x)));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(round(global2.a.x));
    var var_1 = reverseBits(u_input.a.x);
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1221f - arg_0.a.x)), global0.a.x)), ~firstTrailingBit(arg_0.b));
    global2 = arg_0;
    var var_2 = ~(~((~arg_0.b.x & 15704u) | (global2.b.x >> (0u % 32u))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(max(global0.a.x, -932f)), _wgslsmith_f_op_f32(-global0.a.x)))), vec3<u32>(9214u, _wgslsmith_mult_u32(reverseBits(_wgslsmith_sub_u32(0u, global0.b.x)), ~0u ^ global0.b.x), u_input.c.x));
    var_0 = func_4(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-662f, -1000f, 470f, global2.a.x)) + vec4<f32>(1597f, global2.a.x, var_0.a.x, global0.a.x))), 1888f, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global0.a)) * _wgslsmith_f_op_vec2_f32(global2.a - global0.a)), abs(vec3<u32>(var_0.b.x, 69037u, u_input.c.x))), _wgslsmith_sub_u32(~u_input.c.x, u_input.c.x)));
    let var_1 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.a.x)), _wgslsmith_f_op_f32(1938f + -1433f))), func_4(func_4(func_1(vec4<f32>(-235f, -1175f, global2.a.x, global2.a.x), 1315f, Struct_1(vec2<f32>(-1034f, 402f), u_input.c), 45056u))).a), vec3<u32>(_wgslsmith_dot_vec4_u32(max(~vec4<u32>(24246u, u_input.c.x, global2.b.x, 0u), abs(vec4<u32>(global0.b.x, global2.b.x, global2.b.x, u_input.c.x))), ~_wgslsmith_div_vec4_u32(vec4<u32>(global2.b.x, var_0.b.x, u_input.c.x, global2.b.x), vec4<u32>(48024u, u_input.c.x, 40503u, global2.b.x))), ~47323u, 4294967295u));
    let var_2 = func_4(func_4(Struct_1(global1[_wgslsmith_index_u32(var_1.b.x, 2u)], vec3<u32>(~var_0.b.x, global2.b.x, ~18911u))));
    var_0 = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(select(global2.a, _wgslsmith_f_op_vec2_f32(global2.a + vec2<f32>(global2.a.x, global0.a.x)), u_input.b.x > ~(-1i))), global2.b));
    global0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.a), _wgslsmith_f_op_vec2_f32(-global2.a)), global0.b);
    global1 = array<vec2<f32>, 2>();
    let var_3 = ~(-vec3<i32>(u_input.a.x, u_input.b.x, u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2238f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-342f + var_0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -693f))))));
}

