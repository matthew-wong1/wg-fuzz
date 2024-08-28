struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

var<private> global1: array<vec4<bool>, 24> = array<vec4<bool>, 24>(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true));

var<private> global2: Struct_3;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: Struct_1) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(reverseBits(arg_2.b), 27u)];
    var var_1 = global0[_wgslsmith_index_u32(27368u, 27u)];
    let var_2 = vec3<f32>(-544f, _wgslsmith_f_op_f32(floor(240f)), _wgslsmith_f_op_f32(min(503f, _wgslsmith_f_op_f32(exp2(1f)))));
    let var_3 = 1602f;
    global0 = array<Struct_2, 27>();
    return _wgslsmith_dot_vec2_u32(~var_0.b.xz | _wgslsmith_mult_vec2_u32(arg_0.zx ^ firstLeadingBit(vec2<u32>(arg_2.b, 4294967295u)), ~vec2<u32>(global2.c.b, 1u) << (countOneBits(arg_0.xy) % vec2<u32>(32u))), select(~min(~var_1.b.wz, arg_0.yy), var_0.b.zx, vec2<bool>(true, true)));
}

fn func_2(arg_0: f32) -> Struct_3 {
    global0 = array<Struct_2, 27>();
    global2 = Struct_3(func_3(min(reverseBits(vec3<u32>(52590u, 43077u, 1u)), vec3<u32>(78854u, 52781u, u_input.a)) << (vec3<u32>(_wgslsmith_sub_u32(global2.b.b, 1u), ~global2.c.b, select(28001u, 1u, true)) % vec3<u32>(32u)), Struct_3(global2.c.b, global2.c, Struct_1(-7515i, _wgslsmith_clamp_u32(u_input.a, u_input.a, 139670u))), global2.b), Struct_1(_wgslsmith_add_i32(global2.b.a, _wgslsmith_dot_vec2_i32(~u_input.b.yy, _wgslsmith_add_vec2_i32(vec2<i32>(-4585i, -2147483647i), vec2<i32>(global2.b.a, u_input.b.x)))), u_input.a), Struct_1(2147483647i >> (abs(u_input.a) % 32u), ~(~max(global2.b.b, 623u))));
    let var_0 = true;
    let var_1 = Struct_2(u_input.a | ~_wgslsmith_div_u32(abs(u_input.a), global2.a), _wgslsmith_sub_vec4_u32(~(~(~vec4<u32>(21063u, 4294967295u, global2.c.b, global2.b.b))), vec4<u32>(func_3(vec3<u32>(4294967295u, global2.c.b, global2.a), Struct_3(u_input.a, global2.b, global2.b), Struct_1(global2.c.a, global2.a)), global2.b.b, ~(~0u), ~31821u >> ((0u | u_input.a) % 32u))), true);
    let var_2 = var_1.b.x;
    return Struct_3(13989u, global2.b, global2.c);
}

fn func_4(arg_0: Struct_3) -> bool {
    global1 = array<vec4<bool>, 24>();
    let var_0 = global0[_wgslsmith_index_u32(abs(global2.c.b), 27u)];
    var var_1 = 1u;
    global2 = arg_0;
    var var_2 = func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-128f * -462f) - _wgslsmith_f_op_f32(f32(-1f) * -999f))))).c;
    return false;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_1 {
    global0 = array<Struct_2, 27>();
    var var_0 = Struct_3(u_input.a, arg_2, arg_2);
    let var_1 = arg_2;
    var var_2 = vec4<bool>(!all(vec4<bool>(false, true, true, true)), ((_wgslsmith_clamp_i32(var_0.c.a, 0i, global2.b.a) < arg_2.a) & func_4(func_2(arg_1.x))) && true, (firstLeadingBit(var_1.a ^ var_0.c.a) > max(~var_0.b.a, ~arg_2.a)) && all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)))), all(vec4<bool>(any(vec4<bool>(true, false, true, true)), u_input.a <= var_0.a, !any(vec3<bool>(true, true, false)), !select(false, false, true))));
    var var_3 = ~4294967295u;
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~_wgslsmith_add_vec3_u32(max(~vec3<u32>(global2.a, u_input.a, u_input.a), vec3<u32>(global2.b.b, 22892u, 48511u) | vec3<u32>(4184u, 0u, global2.a)), countOneBits(vec3<u32>(global2.c.b, global2.b.b, 26210u))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1036f)))) - -128f), _wgslsmith_f_op_f32(step(547f, _wgslsmith_f_op_f32(-342f + -985f)))), global2.b);
    var var_1 = _wgslsmith_div_u32(~max(firstTrailingBit(func_3(vec3<u32>(u_input.a, 32730u, 0u), Struct_3(global2.b.b, Struct_1(1815i, u_input.a), global2.b), Struct_1(26798i, 4294967295u))), var_0.b), ~(~u_input.a | ~(0u >> (global2.b.b % 32u))));
    global2 = Struct_3(40850u, Struct_1(_wgslsmith_add_i32(0i, _wgslsmith_add_i32(var_0.a, var_0.a)), 1u), global2.b);
    var var_2 = _wgslsmith_f_op_f32(-2873f - _wgslsmith_f_op_f32(-1f));
    let var_3 = ~u_input.b;
    let var_4 = func_2(-840f).b;
    let var_5 = vec2<bool>(!all(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), true | !(var_0.b <= ~1u));
    global0 = array<Struct_2, 27>();
    var var_6 = Struct_2(reverseBits(_wgslsmith_add_u32(~4294967295u, global2.c.b)), max(~vec4<u32>(var_4.b, _wgslsmith_mult_u32(var_0.b, var_0.b), 4294967295u << (var_4.b % 32u), reverseBits(4294967295u)), vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(6001u, 24340u, 28864u), vec3<u32>(u_input.a, global2.a, var_0.b)), 4294967295u, var_0.b, 12181u)), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - vec3<f32>(_wgslsmith_div_f32(-2110f, 240f), -1162f, -329f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(894f, -1000f, 622f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(577f, 115f, 893f))))), -vec4<i32>(global2.b.a, -38702i, -4251i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a, var_0.a), vec2<i32>(51378i, 16469i)) | global2.c.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(1480f * -188f), _wgslsmith_f_op_f32(f32(-1f) * -616f), -1057f, _wgslsmith_f_op_f32(floor(244f)))))), countOneBits(_wgslsmith_div_i32(var_3.x, max(_wgslsmith_dot_vec4_i32(vec4<i32>(-16691i, -2147483647i, -26770i, var_3.x), vec4<i32>(global2.c.a, 0i, -34017i, 0i)), firstLeadingBit(var_3.x)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-379f, -806f, false))), _wgslsmith_f_op_f32(trunc(-1130f)), -170f, -1000f));
}

