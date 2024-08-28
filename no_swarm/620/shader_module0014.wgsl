struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1215f, 210f);

var<private> global1: array<vec4<u32>, 12>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: f32) -> u32 {
    global1 = array<vec4<u32>, 12>();
    var var_0 = countOneBits(abs(arg_1.a) << (~firstTrailingBit(4294967295u ^ arg_0.b) % 32u));
    var var_1 = arg_1;
    var var_2 = max(countOneBits(~(arg_0.d & u_input.c.zy)), ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.a, arg_0.d.x), u_input.c.zw) ^ abs(~vec2<u32>(arg_0.d.x, 4294967295u))));
    var var_3 = arg_0;
    return ~4294967295u;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2) -> vec2<f32> {
    var var_0 = ~func_2(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1902f), _wgslsmith_f_op_f32(exp2(global0.x)))), u_input.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global0.x, -1574f)), ~(~u_input.c.zw), arg_1.a), Struct_3(~max(4294967295u, 0u)), _wgslsmith_div_f32(-464f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-189f, -1384f)) * _wgslsmith_f_op_f32(floor(arg_0.x)))));
    var_0 = ~90960u;
    var_0 = u_input.d;
    let var_1 = select(select(vec3<bool>(all(select(vec3<bool>(arg_1.a, false, false), vec3<bool>(true, arg_1.a, arg_1.a), vec3<bool>(arg_1.a, arg_1.a, false))), select(!arg_1.a, arg_1.a, true), all(!vec4<bool>(arg_1.a, arg_1.a, false, arg_1.a))), select(!vec3<bool>(arg_1.a, arg_1.a, false), select(!vec3<bool>(arg_1.a, false, false), select(vec3<bool>(arg_1.a, true, arg_1.a), vec3<bool>(true, arg_1.a, false), vec3<bool>(arg_1.a, arg_1.a, false)), !vec3<bool>(arg_1.a, true, false)), !any(vec3<bool>(arg_1.a, true, true))), !select(vec3<bool>(arg_1.a, false, true), !vec3<bool>(false, arg_1.a, arg_1.a), true)), select(!vec3<bool>(true, all(vec4<bool>(true, true, false, arg_1.a)), true), vec3<bool>(!arg_1.a, arg_1.a, true), false), !vec3<bool>(true, (arg_0.x > global0.x) == !arg_1.a, (arg_1.a || arg_1.a) || any(vec3<bool>(arg_1.a, true, arg_1.a))));
    global0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(arg_0.zx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.yy + _wgslsmith_div_vec2_f32(vec2<f32>(-186f, -399f), vec2<f32>(arg_0.x, global0.x))))))));
    return arg_0.yy;
}

fn func_3() -> i32 {
    let var_0 = Struct_4(Struct_1(-867f, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(4294967295u, u_input.c.x), abs(u_input.c.x)), ~_wgslsmith_mult_u32(u_input.b, u_input.d), ~_wgslsmith_mod_u32(u_input.c.x, u_input.d)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(632f, _wgslsmith_f_op_f32(-313f - global0.x), _wgslsmith_f_op_f32(-global0.x)))), ~vec2<u32>(~1u, min(u_input.c.x, u_input.c.x)), false), Struct_2(all(select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), false))), abs(25915u) >> ((_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.c.zy), vec2<u32>(1u, u_input.c.x)) >> (1u % 32u)) % 32u), ~(~_wgslsmith_mult_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(9678u, 91613u), vec2<u32>(1u, u_input.d)))));
    global1 = array<vec4<u32>, 12>();
    let var_1 = !(!(!vec2<bool>(u_input.d < 13958u, false)));
    let var_2 = ~var_0.d;
    var var_3 = select(vec4<bool>(!var_1.x, any(vec4<bool>(var_1.x, !var_0.b.a, var_1.x != var_0.b.a, false)), false, var_0.b.a), vec4<bool>(any(select(select(vec4<bool>(true, var_0.a.e, true, true), vec4<bool>(var_1.x, var_1.x, var_0.a.e, true), true), !vec4<bool>(true, var_1.x, var_0.a.e, true), !vec4<bool>(true, false, true, var_0.a.e))), false, true, (~76476i ^ (u_input.a & 1i)) <= -4350i), !select(vec4<bool>(all(vec4<bool>(false, true, true, false)), false, true, true), !vec4<bool>(var_1.x, var_0.a.e, var_0.a.e, var_1.x), vec4<bool>(true, all(vec4<bool>(var_0.b.a, var_1.x, false, var_1.x)), !var_1.x, false)));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(true);
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, _wgslsmith_div_f32(global0.x, global0.x))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(645f, global0.x, -695f) * vec3<f32>(-243f, -210f, 406f)), Struct_2(var_0.a))))))));
    let var_2 = var_0;
    let var_3 = var_1.x;
    global1 = array<vec4<u32>, 12>();
    var var_4 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.a, func_3(), min(0i, u_input.a), u_input.a), u_input.a, -589f, func_2(Struct_1(global0.x, 81287u, _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, var_1.x, global0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 187f, global0.x) + vec3<f32>(-505f, -298f, -1288f))), u_input.c.xz, select(true, !var_0.a, all(vec4<bool>(false, var_2.a, var_2.a, true)))), Struct_3(u_input.b), global0.x), u_input.c.wzx);
}

