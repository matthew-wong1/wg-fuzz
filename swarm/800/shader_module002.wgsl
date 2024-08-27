struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 7>;

var<private> global1: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(Struct_1(-528f, 92290i, -1157f)), Struct_3(Struct_1(188f, -12260i, -474f)), Struct_3(Struct_1(-949f, -15668i, -451f)), Struct_3(Struct_1(1612f, -1i, 657f)), Struct_3(Struct_1(-816f, -8490i, 1440f)), Struct_3(Struct_1(1142f, 37205i, -1538f)), Struct_3(Struct_1(1552f, 2147483647i, 1741f)), Struct_3(Struct_1(142f, -82851i, 528f)), Struct_3(Struct_1(-483f, -1i, 280f)), Struct_3(Struct_1(-162f, i32(-2147483648), 1293f)), Struct_3(Struct_1(-538f, 0i, -1707f)), Struct_3(Struct_1(-122f, 10168i, -396f)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> u32 {
    var var_0 = -arg_0.a.b;
    global0 = array<vec4<i32>, 7>();
    var var_1 = arg_1.a.x;
    let var_2 = Struct_5(_wgslsmith_f_op_f32(ceil(558f)), arg_1.a.x == firstTrailingBit(_wgslsmith_clamp_u32(36624u, ~arg_1.a.x, arg_1.a.x)));
    global1 = array<Struct_3, 12>();
    return 31941u;
}

fn func_2(arg_0: i32) -> Struct_1 {
    global1 = array<Struct_3, 12>();
    var var_0 = Struct_1(-994f, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-107f, -1000f), _wgslsmith_f_op_f32(floor(-869f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-418f)) + -934f))));
    var var_1 = abs(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(7159u, 4294967295u), ~533u, func_3(global1[_wgslsmith_index_u32(22940u, 12u)], Struct_2(vec2<u32>(4294967295u, 71083u))), _wgslsmith_add_u32(1u, 0u)) | vec4<u32>(~4294967295u, ~27748u, ~23758u, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, _wgslsmith_add_u32(80653u, 26211u), 1u, ~1u), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 0u)), 3909u, 1u, 5614u))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + 782f)), _wgslsmith_f_op_f32(480f * _wgslsmith_f_op_f32(abs(2774f))))), arg_0, -2030f);
    return Struct_1(var_0.c, -firstTrailingBit(-arg_0), var_0.a);
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_5(3079f, true);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a + 205f), var_0.a)))), 2147483647i, var_0.a);
    var var_2 = Struct_2(_wgslsmith_add_vec2_u32(select(~(~vec2<u32>(3504u, 0u)), ~(~vec2<u32>(27628u, 6048u)), false), ~_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(68565u, 24001u)), countOneBits(vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(1u, 1u))));
    global1 = array<Struct_3, 12>();
    var var_3 = Struct_3(func_2(_wgslsmith_dot_vec3_i32(-(~u_input.a), vec3<i32>(u_input.a.x & u_input.a.x, firstLeadingBit(var_1.b), _wgslsmith_sub_i32(-21644i, var_1.b)))));
    return Struct_2(vec2<u32>(func_3(Struct_3(func_2(var_3.a.b)), Struct_2(~var_2.a)), ~(~(~0u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 12>();
    let var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-838f + -1145f), 515f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(818f + -159f) + -1000f)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1853f, -1000f)))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1358f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -378f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2056f))) + _wgslsmith_f_op_f32(-710f + -1000f))));
}

