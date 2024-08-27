struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: vec2<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
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

var<private> global0: array<Struct_1, 16>;

var<private> global1: Struct_2 = Struct_2(vec3<i32>(45454i, -35286i, 20118i));

var<private> global2: array<vec2<u32>, 31>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_2) -> bool {
    global2 = array<vec2<u32>, 31>();
    var var_0 = global0[_wgslsmith_index_u32(~(~(~(~u_input.c))), 16u)];
    var var_1 = vec4<bool>(var_0.e.x, var_0.e.x, all(select(!select(var_0.e.zyw, vec3<bool>(false, false, false), true), var_0.e.wxy, false)), true);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, var_0.a.x, var_0.a.x, -1418f) * var_0.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-255f, 1558f, var_0.a.x, -778f) - var_0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, 555f, var_0.a.x, var_0.c)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-392f, 696f, var_0.c, -567f))))))), 1u, -1112f, var_1.wx, !(!(!select(vec4<bool>(false, var_0.d.x, true, var_1.x), var_0.e, var_1.x))));
    let var_3 = arg_0;
    return any(!var_1.yz);
}

fn func_2() -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(188f, 1039f, 2166f, 338f) + vec4<f32>(1245f, -495f, -844f, -1327f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1141f, 1000f, 1280f, -479f), vec4<f32>(1086f, 323f, 669f, 395f), vec4<bool>(false, false, false, false))))))), ~(~_wgslsmith_div_u32(1u, u_input.c) ^ (_wgslsmith_sub_u32(u_input.a.x, u_input.a.x) ^ _wgslsmith_add_u32(u_input.a.x, 1u))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1408f)), _wgslsmith_f_op_f32(abs(985f)))))), vec2<bool>(true, true), vec4<bool>(!(all(vec4<bool>(true, false, true, true)) | all(vec4<bool>(false, false, false, false))), true, !func_3(Struct_2(u_input.b.yyx)), true));
    global1 = Struct_2(firstTrailingBit(-(~(~vec3<i32>(u_input.d.x, global1.a.x, u_input.d.x)))));
    var var_1 = var_0.a;
    var var_2 = Struct_2(u_input.b.zxz);
    global0 = array<Struct_1, 16>();
    return abs(15599u);
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: vec4<u32>) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(countOneBits(u_input.c), 16u)];
    global1 = Struct_2(global1.a ^ _wgslsmith_mod_vec3_i32(-(~u_input.b.xyw), u_input.b.wxw));
    global0 = array<Struct_1, 16>();
    var var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(func_2(), countOneBits(~firstLeadingBit(0u)), select(var_0.b, _wgslsmith_div_u32(_wgslsmith_add_u32(59757u, 31483u), ~var_0.b), 84861u >= _wgslsmith_add_u32(arg_2.x, arg_2.x))), ~arg_2.xwz);
    var var_2 = select(select(!vec3<bool>(false, all(vec3<bool>(false, var_0.d.x, false)), var_0.d.x), vec3<bool>(var_0.e.x, !(!var_0.e.x), false), var_0.e.zxz), select(select(!select(var_0.e.www, var_0.e.wzz, var_0.e.xzx), var_0.e.zzw, true), select(select(vec3<bool>(var_0.e.x, false, var_0.e.x), select(var_0.e.zxz, vec3<bool>(true, true, true), var_0.e.x), var_0.e.yxx), var_0.e.ywx, select(var_0.e.xyy, !var_0.e.xyx, var_0.d.x && var_0.e.x)), 632f > var_0.a.x), var_0.e.wxx);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(878f, -591f)), -638f)), _wgslsmith_f_op_f32(f32(-1f) * -346f)));
    let var_1 = min(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, abs(u_input.c), 30583u), vec3<u32>(u_input.a.x, u_input.a.x & u_input.c, 88031u), select(vec3<u32>(12009u, 27488u, u_input.c), vec3<u32>(0u, 9779u, u_input.c), vec3<bool>(true, false, true)) & ~vec3<u32>(22652u, 23030u, 31524u)), _wgslsmith_mod_vec3_u32(~(~(vec3<u32>(4294967295u, 4294967295u, u_input.c) ^ vec3<u32>(12236u, u_input.a.x, 10250u))), ~(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.c), vec3<u32>(u_input.c, 1u, u_input.a.x)) | vec3<u32>(u_input.a.x, u_input.c, 1u))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_2 = vec4<i32>(-u_input.d.x, firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_sub_i32(2147483647i, u_input.b.x), ~2147483647i)) << (firstLeadingBit(var_1.x) % 32u), global1.a.x, -1i);
    var var_3 = true;
    let var_4 = all(vec2<bool>(false, true));
    var var_5 = _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(var_1.x, u_input.c), 68757u >> (0u % 32u)), select(vec2<u32>(u_input.c, u_input.c) << (vec2<u32>(var_1.x, 80684u) % vec2<u32>(32u)), global2[_wgslsmith_index_u32(var_1.x, 31u)], !vec2<bool>(var_4, false))), ~vec2<u32>(func_1(37041i, Struct_2(u_input.b.xxz), vec4<u32>(0u, 48340u, u_input.a.x, u_input.a.x)), _wgslsmith_add_u32(1u, 0u))), ~firstTrailingBit(var_1.zy));
    global0 = array<Struct_1, 16>();
    var_3 = any(!(!(!vec4<bool>(true, var_4, false, var_4))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(u_input.c));
}

