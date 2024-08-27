struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<bool>,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: Struct_1,
    d: vec2<i32>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(true, vec3<f32>(-994f, -341f, 329f), Struct_1(vec4<bool>(false, false, true, true), 2147483647i), vec2<i32>(1i, -1i), false), Struct_3(true, vec3<f32>(643f, 1011f, -432f), Struct_1(vec4<bool>(false, false, false, true), 1i), vec2<i32>(20425i, 2147483647i), true), Struct_3(false, vec3<f32>(-250f, -994f, -1000f), Struct_1(vec4<bool>(true, true, true, false), -1i), vec2<i32>(-1i, -25377i), false), Struct_3(true, vec3<f32>(388f, -1734f, 682f), Struct_1(vec4<bool>(false, true, false, false), 2147483647i), vec2<i32>(-1i, -21799i), true), Struct_3(false, vec3<f32>(-661f, -1208f, 1297f), Struct_1(vec4<bool>(true, true, false, false), 8595i), vec2<i32>(-40587i, 31500i), false), Struct_3(true, vec3<f32>(-1438f, -533f, -1000f), Struct_1(vec4<bool>(false, true, true, true), 1i), vec2<i32>(2147483647i, i32(-2147483648)), false), Struct_3(true, vec3<f32>(1985f, 921f, -651f), Struct_1(vec4<bool>(true, false, true, false), 1i), vec2<i32>(-4666i, -73452i), true), Struct_3(false, vec3<f32>(167f, 254f, -385f), Struct_1(vec4<bool>(true, false, false, false), 30921i), vec2<i32>(i32(-2147483648), -5198i), true), Struct_3(false, vec3<f32>(-620f, 863f, -109f), Struct_1(vec4<bool>(true, false, true, false), 2147483647i), vec2<i32>(2147483647i, 2147483647i), true));

var<private> global1: Struct_1 = Struct_1(vec4<bool>(true, false, false, true), -1i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> u32 {
    global0 = array<Struct_3, 9>();
    var var_0 = _wgslsmith_f_op_f32(2082f + _wgslsmith_f_op_f32(trunc(582f)));
    var var_1 = arg_0;
    let var_2 = vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-1690f, -109f, var_1.b.a.x)), _wgslsmith_f_op_f32(-976f * 918f), arg_0.c.x))))));
    let var_3 = global0[_wgslsmith_index_u32(arg_0.d.x, 9u)];
    return ~37672u >> (1u % 32u);
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_3) -> i32 {
    var var_0 = _wgslsmith_sub_u32(~(~_wgslsmith_sub_u32(~0u, 1u)), select(~arg_1, ~0u, arg_2.e));
    var_0 = _wgslsmith_add_u32(countOneBits(_wgslsmith_clamp_u32(u_input.a.x, 93720u, u_input.a.x)), ~abs(~(~arg_1)));
    return 1i;
}

fn func_2(arg_0: bool, arg_1: vec4<f32>, arg_2: i32, arg_3: Struct_1) -> vec4<u32> {
    global1 = arg_3;
    let var_0 = 55312i ^ func_4(i32(-1i) * -12338i, max(~u_input.a.x, ~u_input.a.x | ~u_input.a.x), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(func_3(Struct_2(global1.b, arg_3, vec3<bool>(false, true, false), vec2<u32>(u_input.a.x, 1u), Struct_1(vec4<bool>(true, arg_0, arg_3.a.x, false), -13398i)), arg_2), ~u_input.a.x), ~u_input.a.x), 9u)]);
    global0 = array<Struct_3, 9>();
    global1 = Struct_1(global1.a, ~_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(0i, var_0), ~vec2<i32>(var_0, arg_2)), var_0));
    var var_1 = arg_3.a.x & arg_0;
    return _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 28401u) ^ select(vec4<u32>(u_input.a.x, 59764u, 11413u, u_input.a.x) & vec4<u32>(4294967295u, 1u, u_input.a.x, 13908u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 29263u), true), min(~abs(vec4<u32>(8735u, u_input.a.x, 51567u, u_input.a.x)), vec4<u32>(u_input.a.x, ~u_input.a.x, 94053u, u_input.a.x ^ 1u)), _wgslsmith_sub_vec4_u32(~select(vec4<u32>(0u, 1u, u_input.a.x, 34862u), vec4<u32>(0u, 68314u, 4294967295u, 4294967295u), arg_0), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u))), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x << (u_input.a.x % 32u), u_input.a.x, ~1194u, u_input.a.x), ~vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x)), ~(~vec4<u32>(23489u, max(u_input.a.x, u_input.a.x), ~40002u, 0u)));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_3 {
    var var_0 = ~vec4<i32>(arg_1.e.b, -15392i, arg_3.b, arg_1.b.b) & (~vec4<i32>(_wgslsmith_clamp_i32(arg_3.b, global1.b, arg_3.b), arg_1.a, arg_1.a, -2147483647i) << (((_wgslsmith_mult_vec4_u32(vec4<u32>(1u, arg_0, 0u, 4294967295u), vec4<u32>(0u, 1u, arg_0, arg_1.d.x)) ^ func_2(arg_2.x, vec4<f32>(2236f, -528f, 696f, -1507f), arg_3.b, arg_1.e)) | ~vec4<u32>(u_input.a.x, arg_0, 41805u, 4294967295u)) % vec4<u32>(32u)));
    let var_1 = arg_1.b;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1054f);
    let var_3 = arg_1.b;
    var var_4 = ~_wgslsmith_mult_u32(~(~func_3(Struct_2(global1.b, Struct_1(vec4<bool>(false, global1.a.x, true, var_1.a.x), var_1.b), global1.a.xzx, vec2<u32>(u_input.a.x, 4294967295u), Struct_1(vec4<bool>(true, var_3.a.x, global1.a.x, arg_2.x), 2147483647i)), 18024i)), 0u);
    return Struct_3(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-623f, var_2, var_2) + vec3<f32>(var_2, -252f, var_2))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, var_2))))), Struct_1(!(!arg_1.b.a), -6523i << (u_input.a.x % 32u)), vec2<i32>(~var_3.b, 1i), true);
}

fn func_5(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: f32) -> vec3<bool> {
    let var_0 = arg_0.c;
    let var_1 = func_1(~min(arg_1.x, 77035u), arg_2, global1.a.zy, var_0);
    let var_2 = var_1.b.x;
    return vec3<bool>(any(global1.a.ww), false, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    global0 = array<Struct_3, 9>();
    global0 = array<Struct_3, 9>();
    let var_1 = Struct_3(any(!func_5(func_1(44974u, Struct_2(-22954i, Struct_1(vec4<bool>(true, true, global1.a.x, true), global1.b), vec3<bool>(global1.a.x, global1.a.x, true), var_0, Struct_1(global1.a, global1.b)), vec2<bool>(global1.a.x, global1.a.x), Struct_1(vec4<bool>(global1.a.x, global1.a.x, global1.a.x, false), global1.b)), vec3<u32>(0u, u_input.a.x, 4294967295u), Struct_2(global1.b, Struct_1(global1.a, -57271i), vec3<bool>(true, global1.a.x, false), vec2<u32>(18491u, 13910u), Struct_1(global1.a, -2147483647i)), _wgslsmith_f_op_f32(f32(-1f) * -1187f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-184f, 475f, -508f), vec3<f32>(747f, -1484f, -919f))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1146f, -409f, 992f) * vec3<f32>(-560f, 1949f, -1018f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(819f, -1000f, 132f)))))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1169f, 748f, -932f))))))), func_1(3315u, Struct_2(1i, Struct_1(func_1(u_input.a.x, Struct_2(2147483647i, Struct_1(vec4<bool>(global1.a.x, true, global1.a.x, false), global1.b), global1.a.wwx, vec2<u32>(4294967295u, 31956u), Struct_1(global1.a, -1i)), global1.a.zz, Struct_1(global1.a, global1.b)).c.a, global1.b), func_1(var_0.x, Struct_2(2147483647i, Struct_1(vec4<bool>(true, global1.a.x, false, false), 24315i), vec3<bool>(global1.a.x, global1.a.x, global1.a.x), vec2<u32>(40504u, u_input.a.x), Struct_1(global1.a, global1.b)), global1.a.yx, Struct_1(global1.a, global1.b)).c.a.xzy, countOneBits(~vec2<u32>(4294967295u, 18644u)), Struct_1(global1.a, min(50610i, global1.b))), !global1.a.zz, Struct_1(vec4<bool>(true, global1.a.x, global1.a.x, any(vec4<bool>(true, global1.a.x, true, global1.a.x))), -17457i)).c, vec2<i32>(global1.b, 24284i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-746f, -617f)) - _wgslsmith_f_op_f32(sign(1582f))) != _wgslsmith_f_op_f32(-369f - _wgslsmith_f_op_f32(floor(1345f))));
    let var_2 = !(!vec4<bool>(all(var_1.c.a.zz), true || any(vec2<bool>(var_1.a, var_1.c.a.x)), global1.a.x, all(select(vec3<bool>(true, false, var_1.a), global1.a.wxx, var_1.c.a.yxz))));
    let x = u_input.a;
    s_output = StorageBuffer(func_2(true, vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b.x, var_1.b.x)), -1000f, var_1.b.x), _wgslsmith_mult_i32(1629i, global1.b), var_1.c).x);
}

