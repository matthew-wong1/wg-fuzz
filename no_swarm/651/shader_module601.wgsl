struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_3, 18>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: Struct_3) -> bool {
    global0 = -1375f;
    global0 = arg_1.b.c;
    let var_0 = arg_1.a.zy;
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(arg_2.b.d, _wgslsmith_f_op_f32(-arg_2.b.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.b) + _wgslsmith_f_op_f32(-arg_2.b.d)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.b.d - 663f))))));
    var var_1 = global1[_wgslsmith_index_u32(arg_2.b.a, 18u)];
    return true;
}

fn func_4(arg_0: Struct_3) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1511f - arg_0.b.d));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec3<i32>, arg_3: Struct_1) -> bool {
    global1 = array<Struct_3, 18>();
    let var_0 = arg_2;
    let var_1 = Struct_3(!(!select(!arg_0.a, arg_0.a, !arg_0.d)), Struct_1(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(arg_3.e & arg_1.zx, ~arg_0.b.e), arg_1.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.b.c, arg_0.b.b)) * _wgslsmith_f_op_f32(-arg_3.b)), _wgslsmith_div_f32(arg_0.b.c, 592f))), 897f, _wgslsmith_f_op_f32(func_4(Struct_3(select(arg_0.a, arg_0.a, arg_0.a.x), Struct_1(arg_0.c.a, arg_0.b.b, 1114f, arg_0.b.c, arg_3.e), arg_0.c, func_3(arg_3.e.x, Struct_3(arg_0.a, Struct_1(5907u, -835f, 754f, 1105f, arg_1.xz), Struct_2(arg_0.b.e.x), false), arg_0)))), vec2<u32>(4294967295u, 47954u)), arg_0.c, any(select(!(!arg_0.a.ywz), select(vec3<bool>(true, true, true), arg_0.a.zzy, select(vec3<bool>(true, arg_0.a.x, true), vec3<bool>(arg_0.d, false, false), false)), arg_0.d | all(vec2<bool>(true, false)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.b.b, arg_0.b.b, var_1.b.b))), vec3<f32>(_wgslsmith_f_op_f32(-var_1.b.b), _wgslsmith_f_op_f32(-arg_0.b.b), var_1.b.d))))));
    var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.c, arg_0.b.c, -2932f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1128f), arg_0.b.c, -1232f) + vec3<f32>(arg_3.b, var_1.b.c, _wgslsmith_div_f32(arg_3.d, 201f)))));
    return arg_0.d & (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(step(-823f, 686f)), false))) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(Struct_3(vec4<bool>(true, false, arg_0.d, arg_0.d), arg_0.b, Struct_2(var_1.b.a), arg_0.d))), arg_3.d)));
}

fn func_1() -> f32 {
    let var_0 = ~1u;
    let var_1 = true;
    var var_2 = vec2<bool>((true || (true && !var_1)) & (var_0 > ~_wgslsmith_mult_u32(4294967295u, var_0)), func_2(global1[_wgslsmith_index_u32(countOneBits(min(firstTrailingBit(var_0), var_0)), 18u)], vec4<u32>(90619u, 1u, 1u, countOneBits(var_0)), vec3<i32>(-(u_input.b.x | u_input.b.x), _wgslsmith_sub_i32(u_input.a, 50082i), _wgslsmith_add_i32(~u_input.a, 0i)), Struct_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0, var_0), vec3<u32>(0u, var_0, var_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -468f), _wgslsmith_f_op_f32(sign(248f))), -924f, _wgslsmith_f_op_f32(-2214f + _wgslsmith_f_op_f32(147f - -411f)), vec2<u32>(1u, ~33485u))));
    var var_3 = -1i;
    let var_4 = _wgslsmith_sub_u32(var_0, reverseBits(0u)) ^ (var_0 & ~(~var_0));
    return _wgslsmith_f_op_f32(min(-2078f, _wgslsmith_f_op_f32(-1f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 18>();
    let var_0 = Struct_1(~countOneBits(_wgslsmith_mult_u32(~60767u, 0u)), _wgslsmith_f_op_f32(floor(919f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-767f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-602f - -2458f))) - 1126f), -426f, abs(vec2<u32>(1u, 1u)));
    let var_1 = Struct_1(reverseBits(~var_0.a), var_0.c, 568f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1()), var_0.c, !any(select(vec2<bool>(false, false), vec2<bool>(false, false), true)))), vec2<u32>(~reverseBits(4294967295u), 55686u) << (~(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.a, 25750u), vec2<u32>(var_0.a, 11668u)) | ~var_0.e) % vec2<u32>(32u)));
    var var_2 = true;
    let var_3 = Struct_2(var_1.a);
    let var_4 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, u_input.a);
}

