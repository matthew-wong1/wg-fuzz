struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<u32>, 12>;

var<private> global2: u32 = 0u;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: vec2<f32>) -> i32 {
    var var_0 = ~(u_input.c | ~max(48081u, 1u));
    let var_1 = Struct_4(Struct_1(countOneBits(arg_1.a.a)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2.x - arg_2.x))), _wgslsmith_f_op_f32(floor(364f))))), -28709i);
    global0 = ~countOneBits(u_input.a);
    var var_2 = Struct_2(countOneBits(max(global1[_wgslsmith_index_u32(countOneBits(u_input.a), 12u)], countOneBits(vec2<u32>(1u, u_input.a)))), Struct_1(var_1.a.a), vec3<bool>(false, !any(vec2<bool>(arg_1.b.x, arg_1.b.x)), arg_1.b.x));
    var var_3 = u_input.d ^ abs(~abs(u_input.e.x));
    return -u_input.e.x;
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: u32, arg_3: Struct_3) -> bool {
    let var_0 = Struct_2(~_wgslsmith_clamp_vec2_u32(~arg_1.yy, firstLeadingBit(~global1[_wgslsmith_index_u32(arg_2, 12u)]), firstTrailingBit(arg_1.zx >> (vec2<u32>(93328u, u_input.a) % vec2<u32>(32u)))), Struct_1(arg_3.c.a), vec3<bool>(true, true, true));
    let var_1 = firstLeadingBit(abs(reverseBits(-arg_3.a.a)));
    var var_2 = -1i;
    var var_3 = var_0.b.a.yxw | _wgslsmith_mod_vec3_i32(-abs(vec3<i32>(0i, 2147483647i, -22250i)), vec3<i32>(-_wgslsmith_add_i32(arg_3.a.a.x, var_0.b.a.x), 27858i, abs(func_3(var_0.b.a.x, Struct_3(Struct_1(vec4<i32>(var_0.b.a.x, -60115i, -30568i, 1i)), arg_3.b, Struct_1(vec4<i32>(0i, arg_3.a.a.x, var_1.x, -1i))), vec2<f32>(280f, -987f)))));
    var var_4 = arg_3.a;
    return !(!all(!select(vec4<bool>(true, arg_0, var_0.c.x, false), vec4<bool>(true, false, arg_0, arg_0), vec4<bool>(false, false, var_0.c.x, false))));
}

fn func_4(arg_0: vec2<bool>) -> Struct_2 {
    global2 = ~(~(~u_input.a));
    let var_0 = Struct_4(Struct_1(~vec4<i32>(1i, u_input.d, _wgslsmith_mult_i32(u_input.e.x, u_input.b), u_input.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-787f, -943f) * vec2<f32>(-404f, 340f))) + vec2<f32>(_wgslsmith_f_op_f32(129f - 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1106f)))), u_input.b);
    let var_1 = var_0;
    var var_2 = false;
    var var_3 = Struct_3(var_0.a, select(vec2<bool>(var_1.c > 1784i, true), arg_0, arg_0), var_1.a);
    return Struct_2(vec2<u32>(73593u, ~4294967295u), Struct_1(~(-var_1.a.a) & vec4<i32>(var_3.a.a.x, u_input.d, -67096i, 34202i)), !vec3<bool>(all(vec2<bool>(arg_0.x, var_3.b.x)), var_1.b.x >= _wgslsmith_f_op_f32(-var_1.b.x), all(!vec3<bool>(false, var_3.b.x, arg_0.x))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: u32, arg_3: u32) -> vec2<f32> {
    let var_0 = 322f;
    let var_1 = func_4(select(!select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(false, true)), select(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, false), true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), func_2(true, vec4<u32>(0u, u_input.c, arg_3, arg_3), 0u, Struct_3(Struct_1(vec4<i32>(-2147483647i, u_input.b, -1i, 0i)), vec2<bool>(true, true), Struct_1(vec4<i32>(u_input.b, 28891i, 2147483647i, u_input.d)))) | true)));
    let var_2 = func_4(var_1.c.yz);
    let var_3 = Struct_3(var_2.b, select(vec2<bool>(var_1.a.x > firstTrailingBit(63774u), false), vec2<bool>(false, true), vec2<bool>(false, var_1.c.x)), Struct_1(-(~(-vec4<i32>(var_1.b.a.x, 0i, var_2.b.a.x, -10504i)))));
    var var_4 = abs(~var_1.a);
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_0.zz), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0)))), false | (881f > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1016f - var_0))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 12>();
    let var_0 = ~(~vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 34796u, 4294967295u, 21357u), vec4<u32>(27308u, 66014u, 45136u, u_input.a)), u_input.c), ~u_input.a & abs(0u), ~u_input.c ^ u_input.c));
    global1 = array<vec2<u32>, 12>();
    let var_1 = Struct_4(Struct_1(select(~select(vec4<i32>(2147483647i, 40132i, 0i, u_input.d), vec4<i32>(-1i, -2147483647i, -1i, -2147483647i), vec4<bool>(true, false, false, false)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, u_input.e.x, -38305i, u_input.e.x), vec4<i32>(u_input.d, 0i, u_input.b, u_input.e.x)), true)), _wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1273f, 380f, -1000f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1396f, 1102f, 1161f), vec3<f32>(-289f, -195f, 496f)))), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.c, 4294967295u, 0u, u_input.a)), ~select(vec4<u32>(var_0.x, 1u, var_0.x, var_0.x), vec4<u32>(u_input.c, var_0.x, u_input.c, var_0.x), false), vec4<u32>(~u_input.a, firstTrailingBit(0u), abs(var_0.x), var_0.x)), 55375u, 42850u)), ~_wgslsmith_add_i32(u_input.b, 1i));
    let var_2 = select(!func_4(vec2<bool>(true, func_2(true, vec4<u32>(var_0.x, 1u, u_input.c, var_0.x), var_0.x, Struct_3(Struct_1(vec4<i32>(-1i, var_1.a.a.x, 62369i, -23094i)), vec2<bool>(true, false), Struct_1(var_1.a.a))))).c.xy, vec2<bool>(false, true), true);
    let var_3 = Struct_3(func_4(vec2<bool>(true, true)).b, select(vec2<bool>(var_2.x, var_2.x), !select(!vec2<bool>(var_2.x, false), vec2<bool>(true, true), !var_2.x), vec2<bool>(true, true)), var_1.a);
    global0 = _wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.c >> (~1u % 32u), 49090u, 4294967295u), ~44248u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-330f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.b.x)) + 1075f), -879f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1998f, -1000f, -1866f, var_1.b.x), vec4<f32>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x), vec4<bool>(true, var_3.b.x, false, var_3.b.x))), func_2(false, vec4<u32>(var_0.x, 4294967295u, u_input.c, u_input.a), 0u, Struct_3(var_3.a, var_2, Struct_1(var_3.a.a))))), vec4<f32>(_wgslsmith_f_op_f32(select(-857f, 108f, var_3.b.x)), _wgslsmith_f_op_f32(-1000f + var_1.b.x), -1128f, _wgslsmith_f_op_f32(-1035f - -1489f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(2042f, var_1.b.x, 1947f, -889f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, -748f, var_1.b.x, var_1.b.x)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.b.x, var_1.b.x, -724f, 911f), vec4<f32>(var_1.b.x, 294f, var_1.b.x, 112f), vec4<bool>(false, false, true, true)))))), u_input.a);
}

