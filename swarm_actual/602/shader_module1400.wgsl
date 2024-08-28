struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 13>;

var<private> global1: Struct_1 = Struct_1(true, vec2<u32>(1u, 1u), -310f);

var<private> global2: vec3<f32> = vec3<f32>(-1041f, -1914f, -489f);

var<private> global3: array<Struct_3, 9>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> vec2<u32> {
    var var_0 = ~firstTrailingBit(u_input.a);
    let var_1 = _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 28410u, 9536u) >> (_wgslsmith_div_vec4_u32(vec4<u32>(global1.b.x, arg_3.c.b.x, 1u, 67325u), vec4<u32>(arg_2.b.x, global1.b.x, 0u, 50378u)) % vec4<u32>(32u)), vec4<u32>(23835u, _wgslsmith_add_u32(arg_1, 72574u), select(u_input.b.x, u_input.b.x, false), 4294967295u)), 13u)] * vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.c, arg_0.x), _wgslsmith_f_op_f32(-arg_0.x)))), 1227f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + arg_0.x)) + global1.c), 554f));
    var var_2 = global3[_wgslsmith_index_u32(global1.b.x, 9u)];
    var var_3 = global3[_wgslsmith_index_u32(1u, 9u)];
    var var_4 = arg_3.d;
    return ~vec2<u32>(0u, var_4.b.x);
}

fn func_2(arg_0: vec2<u32>, arg_1: u32) -> Struct_1 {
    let var_0 = all(!(!(!(!vec2<bool>(global1.a, false)))));
    let var_1 = Struct_1(false, _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(~(vec2<u32>(1u, 1u) ^ arg_0), u_input.b.yx | vec2<u32>(u_input.b.x, global1.b.x)), ~firstTrailingBit(vec2<u32>(arg_0.x, global1.b.x) & global1.b)), global2.x);
    var var_2 = vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(var_1.b, vec2<u32>(countOneBits(u_input.b.x), 45940u)), abs(12663u)), global1.b.x, ~abs(_wgslsmith_add_u32(0u, _wgslsmith_add_u32(var_1.b.x, 98877u))), ~_wgslsmith_clamp_u32(reverseBits(arg_0.x), ~arg_0.x, ~global1.b.x));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(404f, -1000f, var_1.c))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.c, global1.c, global2.x))) + vec3<f32>(518f, 431f, -436f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c, -124f, global1.c)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(436f, global2.x, var_1.c)))))));
    let var_3 = _wgslsmith_clamp_vec2_u32(~firstLeadingBit(abs(var_1.b) | select(vec2<u32>(76432u, var_2.x), vec2<u32>(arg_1, arg_0.x), vec2<bool>(var_0, false))), max(func_3(vec2<f32>(global2.x, -720f), global1.b.x, Struct_1(global1.a || var_0, vec2<u32>(var_1.b.x, 1u), 1000f), Struct_2(Struct_1(var_1.a, u_input.b.xz, global2.x), var_1, Struct_1(var_0, vec2<u32>(global1.b.x, 1u), 109f), var_1, u_input.a)), vec2<u32>(arg_0.x ^ arg_1, firstLeadingBit(countOneBits(var_2.x)))), ~var_2.zy);
    return Struct_1(any(select(!select(vec4<bool>(false, var_1.a, false, true), vec4<bool>(true, false, false, var_0), vec4<bool>(global1.a, var_1.a, var_1.a, var_1.a)), !vec4<bool>(false, false, true, var_0), var_1.a)), vec2<u32>(firstLeadingBit(~(~4294967295u)), _wgslsmith_sub_u32(15766u, _wgslsmith_mult_u32(4294967295u, arg_1) >> (54085u % 32u))), _wgslsmith_f_op_f32(1005f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.c + 1920f)))));
}

fn func_1() -> f32 {
    var var_0 = Struct_2(func_2(vec2<u32>(~select(u_input.b.x, 30010u, false), _wgslsmith_clamp_u32(abs(0u), _wgslsmith_add_u32(68280u, u_input.b.x), u_input.b.x)), _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.b.x, 41501u), 0u)), Struct_1(false, firstLeadingBit(~(global1.b & u_input.b.xz)), -353f), func_2(~_wgslsmith_mult_vec2_u32(global1.b, global1.b) ^ u_input.b.yx, select(~(~global1.b.x), ~u_input.b.x, all(select(vec3<bool>(global1.a, global1.a, false), vec3<bool>(global1.a, false, global1.a), vec3<bool>(false, global1.a, global1.a))))), func_2(select(~u_input.b.xz, ~u_input.b.zx, select(vec2<bool>(global1.a, global1.a), vec2<bool>(false, global1.a), vec2<bool>(true, global1.a))) ^ vec2<u32>(1u, global1.b.x ^ u_input.b.x), ~global1.b.x), i32(-1i) * -(i32(-1i) * -92885i));
    global2 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-742f, 1298f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.c.c)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c * 128f) * global1.c), _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(min(186f, 216f))), -964f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2.x, global2.x, global2.x), vec3<f32>(var_0.d.c, var_0.d.c, global1.c))), vec3<f32>(889f, -131f, var_0.d.c), vec3<bool>(false, true, true)))), false))));
    global1 = func_2(select(abs(vec2<u32>(17797u, u_input.b.x)) << (_wgslsmith_add_vec2_u32(var_0.d.b, global1.b) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(vec2<u32>(global1.b.x, var_0.a.b.x) >> (vec2<u32>(9705u, 4294967295u) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(global1.b, vec2<u32>(global1.b.x, 1u))), !any(vec2<bool>(true, false))) | _wgslsmith_add_vec2_u32(~(~vec2<u32>(var_0.a.b.x, u_input.b.x)), vec2<u32>(select(var_0.b.b.x, global1.b.x, global1.a), 1u)), var_0.d.b.x);
    var var_1 = Struct_3(vec3<u32>(~1u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, global1.b.x, 4294967295u, 4294967295u), vec4<u32>(23070u, global1.b.x, 58979u, 19800u)), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 4294967295u), ~vec2<u32>(39894u, u_input.b.x)), vec2<u32>(func_3(global2.yy, 1u, var_0.d, Struct_2(var_0.b, Struct_1(global1.a, var_0.c.b, -1000f), var_0.c, Struct_1(false, global1.b, global2.x), var_0.e)).x, abs(4294967295u)))));
    let var_2 = Struct_2(func_2(global1.b, 1u & var_0.c.b.x), var_0.d, var_0.d, Struct_1(var_0.b.a, vec2<u32>(_wgslsmith_mult_u32(~0u, global1.b.x), global1.b.x), 916f), var_0.e);
    return 244f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.b.x;
    var var_1 = Struct_1(true, ~min(~_wgslsmith_mod_vec2_u32(vec2<u32>(global1.b.x, 0u), global1.b), ~global1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.c)))))));
    let var_2 = func_2(select(global1.b, vec2<u32>(17579u, var_1.b.x), !(!any(vec3<bool>(false, true, global1.a)))), reverseBits(var_0) & 4294967295u);
    var var_3 = vec3<bool>(true, true, true);
    var_3 = !select(select(!select(vec3<bool>(false, var_2.a, false), vec3<bool>(false, var_1.a, true), global1.a), !select(vec3<bool>(true, global1.a, false), vec3<bool>(var_2.a, global1.a, false), vec3<bool>(true, global1.a, false)), vec3<bool>(var_3.x, true, all(vec2<bool>(global1.a, true)))), vec3<bool>(any(vec3<bool>(var_2.a, false, false)), u_input.a >= 4251i, true), abs(u_input.a) <= abs(~u_input.a));
    global0 = array<vec4<f32>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c);
}

