struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 7> = array<vec3<i32>, 7>(vec3<i32>(0i, 2147483647i, -5110i), vec3<i32>(2147483647i, -36273i, -1076i), vec3<i32>(22418i, -42075i, 1i), vec3<i32>(-14861i, -36419i, 1i), vec3<i32>(1i, i32(-2147483648), -2421i), vec3<i32>(7159i, -1i, -10594i), vec3<i32>(4875i, i32(-2147483648), -12205i));

var<private> global1: array<vec4<u32>, 1>;

var<private> global2: Struct_1;

var<private> global3: array<vec3<i32>, 11> = array<vec3<i32>, 11>(vec3<i32>(13985i, -17508i, i32(-2147483648)), vec3<i32>(31349i, -1i, 60020i), vec3<i32>(26086i, 1i, 13551i), vec3<i32>(24804i, -59814i, 0i), vec3<i32>(1i, -46915i, i32(-2147483648)), vec3<i32>(-43790i, 46919i, 5863i), vec3<i32>(640i, 6458i, 0i), vec3<i32>(i32(-2147483648), 46835i, 2147483647i), vec3<i32>(1i, i32(-2147483648), 0i), vec3<i32>(48605i, -34163i, -49745i), vec3<i32>(2147483647i, 0i, i32(-2147483648)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d.x, _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-510f - global2.d.x), _wgslsmith_f_op_f32(-global2.d.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(arg_2, _wgslsmith_f_op_vec4_f32(-arg_2))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2 + vec4<f32>(arg_2.x, arg_3.d.x, arg_2.x, -787f))), select(!vec4<bool>(arg_3.a, arg_0.x, true, true), vec4<bool>(arg_3.a, true, global2.c, false), arg_0.x))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(arg_2, vec4<f32>(-1223f, global2.d.x, 1341f, global2.d.x))))))));
    var var_1 = select(vec2<bool>(global2.c, (any(vec4<bool>(true, true, global2.a, global2.a)) || !arg_0.x) | !any(vec4<bool>(arg_3.a, true, true, arg_0.x))), !(!select(arg_0.xy, vec2<bool>(global2.c, global2.c), vec2<bool>(global2.a, global2.c))), arg_0.zy);
    var_1 = select(!vec2<bool>(arg_0.x, any(!vec3<bool>(arg_3.c, arg_3.c, arg_0.x))), arg_0.yz, true);
    let var_2 = Struct_1(any(vec4<bool>(true, arg_0.x, 889f >= _wgslsmith_f_op_f32(floor(arg_3.d.x)), true)), arg_1, false, _wgslsmith_f_op_vec3_f32(round(global2.d)), ~38540u >> (_wgslsmith_mod_u32((u_input.b.x & global2.e) | min(arg_3.e, arg_3.e), 0u) % 32u));
    var var_3 = Struct_1(true, min(arg_3.b, max(u_input.a, -103382i)), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.d.x, _wgslsmith_f_op_f32(trunc(1236f)), _wgslsmith_f_op_f32(349f * 339f))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1945f, -200f, 1026f), vec3<f32>(arg_2.x, -827f, 1802f)))))), var_2.e);
    return 1i;
}

fn func_4(arg_0: vec4<u32>, arg_1: i32) -> i32 {
    global2 = Struct_1(true, -u_input.a, any(!vec4<bool>(global2.c, all(vec3<bool>(true, global2.a, false)), any(vec2<bool>(true, false)), true)), _wgslsmith_div_vec3_f32(vec3<f32>(-1126f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d.x * 1137f)), -1600f), vec3<f32>(global2.d.x, global2.d.x, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global2.d.x, global2.d.x))))), 4294967295u >> ((36743u | u_input.b.x) % 32u));
    let var_0 = 14109i;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-971f, -658f));
    let var_2 = vec4<u32>((1u ^ abs(global2.e >> (4294967295u % 32u))) & global2.e, (_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(4294967295u, 4294967295u, 84844u, 1u)), vec4<u32>(4294967295u, 68891u, global2.e, arg_0.x)) >> (global2.e % 32u)) & 26413u, ~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(arg_0.wx >> (arg_0.wy % vec2<u32>(32u)), ~arg_0.yw), 88171u), global2.e);
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-612f + _wgslsmith_f_op_f32(-global2.d.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.d.x * -315f) + var_1.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1000f, 890f)), _wgslsmith_f_op_f32(f32(-1f) * -867f)))))));
    return ~(6553i >> (~(~u_input.e.x) % 32u));
}

fn func_2(arg_0: vec3<u32>) -> bool {
    global3 = array<vec3<i32>, 11>();
    let var_0 = 882f;
    global0 = array<vec3<i32>, 7>();
    var var_1 = Struct_1((-1i < min(firstTrailingBit(u_input.c), -3824i ^ u_input.a)) | any(vec3<bool>(true, true, global2.a)), -func_4(vec4<u32>(_wgslsmith_sub_u32(u_input.d, arg_0.x), ~arg_0.x, arg_0.x >> (u_input.d % 32u), ~0u), func_3(vec3<bool>(global2.c, global2.c, global2.a), 2147483647i, _wgslsmith_div_vec4_f32(vec4<f32>(global2.d.x, var_0, global2.d.x, -1070f), vec4<f32>(global2.d.x, global2.d.x, 1363f, -396f)), Struct_1(global2.a, 15917i, false, vec3<f32>(global2.d.x, var_0, -437f), 1u))), any(vec4<bool>(!global2.c, any(select(vec4<bool>(global2.a, false, global2.c, false), vec4<bool>(false, global2.c, false, false), vec4<bool>(true, global2.a, true, global2.a))), !global2.a | !global2.a, false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(global2.d)) - _wgslsmith_f_op_vec3_f32(trunc(global2.d))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2.d.x, var_0, global2.d.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 989f, var_0)))))), _wgslsmith_div_u32(global2.e, 4918u));
    var var_2 = Struct_1(any(vec3<bool>(!var_1.c, !var_1.a, all(vec2<bool>(true, false)) == all(vec2<bool>(var_1.a, global2.a)))), global2.b, var_1.c == true, vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -715f), global2.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-729f)))) - var_1.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2467f))))), u_input.e.x);
    return false;
}

fn func_1(arg_0: vec3<bool>) -> bool {
    global0 = array<vec3<i32>, 7>();
    var var_0 = !select(func_2(_wgslsmith_mult_vec3_u32(~vec3<u32>(global2.e, 0u, u_input.b.x), vec3<u32>(1u, global2.e, 0u))), arg_0.x, global2.b <= _wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.c, global2.b), vec2<i32>(global2.b, -1i), global2.c), -vec2<i32>(global2.b, 26398i)));
    let var_1 = -2147483647i | _wgslsmith_clamp_i32(u_input.c, abs(-2147483647i & global2.b), u_input.a ^ -17660i);
    global2 = Struct_1(any(select(select(select(arg_0, arg_0, global2.a), arg_0, select(arg_0, arg_0, true)), vec3<bool>(any(vec3<bool>(global2.a, false, global2.a)), all(arg_0.yy), true), !select(vec3<bool>(true, global2.c, global2.c), vec3<bool>(arg_0.x, global2.c, false), true))), global2.b, all(arg_0.zy), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-624f, -490f, 1499f))), 1u);
    global0 = array<vec3<i32>, 7>();
    return _wgslsmith_f_op_f32(global2.d.x * -425f) <= _wgslsmith_div_f32(global2.d.x, global2.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(!func_1(!(!vec3<bool>(global2.a, true, global2.a))), ~global2.b, true, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.d.x, 569f, global2.d.x)))))), 20168u);
    let var_0 = -974f;
    let var_1 = ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(abs(-vec2<i32>(-4163i, global2.b)), vec2<i32>(global2.b, u_input.c)), -25360i, 1i);
    let var_2 = u_input.d ^ max(8936u, 36858u);
    let var_3 = -224f;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~_wgslsmith_mod_vec4_u32(global1[_wgslsmith_index_u32(42718u, 1u)], global1[_wgslsmith_index_u32(u_input.b.x, 1u)])), global2.d.xy, ~vec3<u32>(select(7111u, 40204u, false), 3103u, _wgslsmith_dot_vec2_u32(max(vec2<u32>(83359u, var_2), u_input.e), ~u_input.b)), max(countOneBits(firstLeadingBit(vec3<i32>(-1i, 41091i, 1i))), global3[_wgslsmith_index_u32(~select(0u ^ var_2, 12079u, false), 11u)]));
}

