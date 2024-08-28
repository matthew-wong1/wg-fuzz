struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 26>;

var<private> global1: bool;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
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

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_4) -> vec2<bool> {
    global0 = array<vec4<bool>, 26>();
    var var_0 = !select(!(!vec2<bool>(false, arg_0.c)), select(!(!vec2<bool>(arg_0.b, true)), select(select(vec2<bool>(false, false), vec2<bool>(false, arg_2.b.e.b), vec2<bool>(arg_2.b.d.b, true)), !vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(arg_0.c, arg_2.b.e.b)), vec2<bool>(any(vec3<bool>(false, arg_2.b.e.b, arg_2.b.e.c)), arg_2.b.e.b)), false);
    let var_1 = arg_0;
    var var_2 = false;
    var var_3 = Struct_3(reverseBits(select(_wgslsmith_add_vec4_i32(vec4<i32>(arg_2.b.a, arg_2.b.a, arg_2.b.a, arg_1.x), vec4<i32>(19051i, 0i, u_input.a, 0i)), ~vec4<i32>(arg_2.b.a, u_input.a, -2147483647i, arg_1.x), all(global0[_wgslsmith_index_u32(u_input.d, 26u)]))) & vec4<i32>(u_input.a, _wgslsmith_div_i32(-15851i, -2147483647i), _wgslsmith_mod_i32(_wgslsmith_mod_i32(2025i, u_input.b.x), -35569i), _wgslsmith_dot_vec4_i32(~vec4<i32>(0i, arg_2.b.a, 0i, 1i), abs(vec4<i32>(0i, u_input.c, 0i, arg_1.x)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a, -1949f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1218f + arg_0.a) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a + -1278f) * _wgslsmith_f_op_f32(-arg_0.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(arg_2.b.d.a, arg_2.b.d.a, arg_0.b)), _wgslsmith_f_op_f32(-385f * var_1.a), 262f, _wgslsmith_f_op_f32(sign(570f)))), all(select(vec2<bool>(var_0.x, arg_0.b), vec2<bool>(var_1.c, arg_2.b.d.b), var_1.b)) | true)), ~(~_wgslsmith_add_i32(arg_2.b.a, -35352i)) != arg_1.x);
    return select(vec2<bool>(!var_0.x, any(global0[_wgslsmith_index_u32(~0u, 26u)])), select(!(!(!vec2<bool>(var_0.x, true))), select(select(vec2<bool>(false, var_1.b), vec2<bool>(var_3.c, true), !vec2<bool>(var_1.c, false)), select(select(vec2<bool>(false, false), vec2<bool>(var_0.x, var_1.c), arg_0.c), !vec2<bool>(false, arg_2.b.e.c), false), all(select(vec2<bool>(false, var_0.x), vec2<bool>(true, false), false))), !select(vec2<bool>(true, true), select(vec2<bool>(true, arg_2.b.e.c), vec2<bool>(var_1.c, var_1.b), arg_0.c), select(vec2<bool>(false, true), vec2<bool>(var_1.c, var_1.c), vec2<bool>(true, arg_0.b)))), select(!select(vec2<bool>(true, true), select(vec2<bool>(var_1.c, var_1.b), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(var_3.c, arg_2.b.d.c), vec2<bool>(false, false), vec2<bool>(false, true))), vec2<bool>(any(vec4<bool>(true, arg_0.c, false, arg_0.c)), var_3.c), any(vec4<bool>(arg_0.d.x <= u_input.d, !var_1.c, any(vec4<bool>(true, false, true, var_1.c)), true))));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: bool, arg_3: Struct_3) -> vec2<bool> {
    var var_0 = firstTrailingBit(~vec2<u32>(u_input.d, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.d, 14428u, 1u, 1u)), vec4<u32>(u_input.d, u_input.d, 0u, u_input.d))));
    global0 = array<vec4<bool>, 26>();
    let var_1 = select(vec2<bool>(arg_3.c, arg_2), select(vec2<bool>(true, any(global0[_wgslsmith_index_u32(~4294967295u, 26u)])), select(vec2<bool>(274f >= arg_0, false), select(func_3(Struct_1(-991f, arg_3.c, false, vec3<u32>(0u, 1u, 1u)), vec3<i32>(arg_3.a.x, arg_3.a.x, 21479i), Struct_4(vec4<u32>(0u, 1u, 0u, 1u), Struct_2(1i, vec2<u32>(u_input.d, 23177u), vec3<u32>(38713u, 42898u, 90885u), Struct_1(arg_0, arg_2, arg_3.c, vec3<u32>(113419u, var_0.x, 2847u)), Struct_1(543f, true, false, vec3<u32>(u_input.d, 4294967295u, 6471u))), vec3<u32>(1u, 4294967295u, 76560u))), !vec2<bool>(arg_2, arg_2), !arg_3.c), u_input.c < reverseBits(u_input.a)), any(select(select(global0[_wgslsmith_index_u32(44835u, 26u)], global0[_wgslsmith_index_u32(var_0.x, 26u)], vec4<bool>(false, true, arg_2, arg_3.c)), select(global0[_wgslsmith_index_u32(37179u, 26u)], vec4<bool>(false, false, arg_3.c, arg_2), false), !vec4<bool>(arg_2, arg_3.c, false, arg_2)))), true);
    global0 = array<vec4<bool>, 26>();
    let var_2 = arg_3;
    return !select(var_1, !(!vec2<bool>(false, var_2.c)), var_2.c);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: bool) -> vec3<bool> {
    let var_0 = !select(vec2<bool>(any(!vec3<bool>(arg_2, true, arg_1.c)), arg_1.c), func_2(-754f, arg_0.zy, arg_1.c, Struct_3(vec4<i32>(2147483647i, u_input.a, -21638i, u_input.c), _wgslsmith_div_vec4_f32(vec4<f32>(-221f, arg_0.x, arg_1.a, arg_1.a), vec4<f32>(arg_0.x, 670f, -1124f, arg_1.a)), all(vec2<bool>(true, true)))), vec2<bool>(!(arg_1.c != arg_2), func_2(arg_0.x, vec2<f32>(-2249f, 573f), any(vec3<bool>(arg_1.b, arg_1.c, arg_2)), Struct_3(vec4<i32>(-63334i, u_input.c, -1i, 26336i), vec4<f32>(396f, arg_0.x, 1000f, arg_0.x), arg_1.c)).x));
    var var_1 = firstLeadingBit(_wgslsmith_mult_u32(arg_1.d.x, _wgslsmith_dot_vec4_u32(~(vec4<u32>(arg_1.d.x, 4294967295u, 86659u, 83323u) | vec4<u32>(arg_1.d.x, u_input.d, 1u, arg_1.d.x)), vec4<u32>(~0u, max(72436u, u_input.d), 24266u, firstLeadingBit(u_input.d)))));
    global0 = array<vec4<bool>, 26>();
    var_1 = ~(~65417u);
    global0 = array<vec4<bool>, 26>();
    return select(select(select(vec3<bool>(false, arg_0.x > arg_0.x, var_0.x), !select(vec3<bool>(var_0.x, false, true), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, false, var_0.x)), select(vec3<bool>(true, false, arg_1.c), !vec3<bool>(var_0.x, false, false), !vec3<bool>(arg_1.c, arg_1.c, false))), select(vec3<bool>(arg_1.b, any(vec2<bool>(var_0.x, false)), select(true, true, arg_2)), select(select(vec3<bool>(var_0.x, false, arg_1.c), vec3<bool>(false, arg_1.c, arg_2), vec3<bool>(arg_2, true, arg_2)), vec3<bool>(true, false, arg_1.c), select(arg_1.b, true, false)), vec3<bool>(var_0.x, select(false, true, true), true)), !(!(!vec3<bool>(true, false, var_0.x)))), !select(vec3<bool>(arg_1.b, any(global0[_wgslsmith_index_u32(arg_1.d.x, 26u)]), false), vec3<bool>(true, true, true), !select(vec3<bool>(false, false, var_0.x), vec3<bool>(false, var_0.x, true), true)), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -788f;
    var var_1 = !select(select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(all(vec4<bool>(true, true, false, false)), true, all(vec3<bool>(true, false, false))), vec3<bool>(any(vec4<bool>(false, true, true, true)), all(vec3<bool>(true, false, false)), true)), select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), func_1(vec3<f32>(1355f, 1102f, -995f), Struct_1(2530f, true, false, vec3<u32>(8536u, 0u, u_input.d)), true), true), vec3<bool>(false, true, all(vec3<bool>(true, true, true))), vec3<bool>(all(global0[_wgslsmith_index_u32(4294967295u, 26u)]), func_1(vec3<f32>(-938f, -160f, -955f), Struct_1(832f, false, false, vec3<u32>(111856u, 4294967295u, 32276u)), false).x, true)), vec3<bool>(true, true, true));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-122f)))), any(vec2<bool>(var_1.x, var_1.x)), all(select(!select(vec3<bool>(false, false, var_1.x), vec3<bool>(false, var_1.x, true), true), vec3<bool>(true, all(vec2<bool>(false, false)), false | var_1.x), 23972u >= ~u_input.d)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.d, u_input.d, u_input.d), vec3<u32>(~u_input.d, ~u_input.d, ~4294967295u), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.d, 1u, u_input.d), vec3<u32>(u_input.d, 4294967295u, 13022u))) | ~firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, u_input.d, 4294967295u), vec3<u32>(u_input.d, u_input.d, u_input.d))));
    var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-912f)) - 706f))), var_2.a));
    global1 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(u_input.b, abs(u_input.b), reverseBits(vec3<i32>(-1i) * -vec3<i32>(1i, 0i, 16032i))), ~reverseBits(u_input.b.zx), 1i);
}

