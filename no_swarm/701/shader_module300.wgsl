struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14>;

var<private> global1: array<Struct_1, 30>;

var<private> global2: Struct_1;

var<private> global3: array<i32, 27> = array<i32, 27>(36908i, 39241i, -11928i, i32(-2147483648), -5518i, -1i, -1i, 65533i, -55300i, 0i, 2147483647i, -30977i, 2147483647i, -7767i, 1518i, 3992i, 1i, -1i, 6739i, 0i, 17896i, 24222i, 40706i, 2147483647i, -1i, -31589i, 2147483647i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> u32 {
    var var_0 = -1124f;
    global1 = array<Struct_1, 30>();
    return global0[_wgslsmith_index_u32(~(~4294967295u & min(max(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.x, 14u)], 14u)], 14u)], 0u), ~arg_0.x)), 14u)];
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    let var_0 = vec2<f32>(arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1))));
    global3 = array<i32, 27>();
    let var_1 = func_3(~_wgslsmith_mult_vec4_u32(abs(abs(arg_2.b)), vec4<u32>(firstLeadingBit(u_input.a), 0u, 0u, ~u_input.c.x)), Struct_1(~(-1i), ~(~_wgslsmith_sub_vec4_u32(arg_2.b, vec4<u32>(16576u, 0u, u_input.a, 54671u)))), _wgslsmith_f_op_f32(-var_0.x), global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 73254u) ^ vec2<u32>(13593u, u_input.c.x), global2.b.xx), ~_wgslsmith_clamp_vec2_u32(global2.b.yx, vec2<u32>(u_input.c.x, 30128u), vec2<u32>(global0[_wgslsmith_index_u32(1u, 14u)], 62304u))), 27u)]);
    let var_2 = ~vec2<u32>(~(global0[_wgslsmith_index_u32(~46911u, 14u)] | 4294967295u), max(30279u, global2.b.x));
    let var_3 = vec4<bool>(!(_wgslsmith_mult_u32(4294967295u, ~global2.b.x) == 1u), !any(vec4<bool>(true, select(false, true, true), any(vec4<bool>(false, false, true, false)), true)), any(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true), true)), !all(vec2<bool>(any(vec4<bool>(false, true, true, true)), all(vec3<bool>(false, false, false)))));
    return Struct_1(-2147483647i, ~(~arg_2.b) | ~arg_2.b);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = arg_0;
    var var_1 = Struct_1(arg_2.a, ~vec4<u32>(_wgslsmith_dot_vec2_u32(~arg_3.b.wz, firstTrailingBit(global2.b.ww)), arg_1.x & arg_2.b.x, _wgslsmith_dot_vec4_u32(countOneBits(global2.b), arg_3.b), func_3(abs(vec4<u32>(1u, arg_3.b.x, u_input.c.x, u_input.a)), Struct_1(arg_0.x, vec4<u32>(arg_2.b.x, arg_3.b.x, u_input.c.x, u_input.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1009f), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, global2.a, u_input.b, -10033i), vec4<i32>(-19165i, 1i, arg_3.a, 1i)))));
    var var_2 = arg_2;
    let var_3 = select(vec4<bool>(true, true, true, true), !(!vec4<bool>(true, true, true, select(false, false, true))), true);
    let var_4 = arg_2.a;
    return select(select(select(vec3<bool>(var_3.x, !var_3.x, true), vec3<bool>(true, select(false, true, false), var_3.x), var_3.wwz), var_3.yyx, select(select(var_3.wzy, !var_3.zxy, var_3.zyz), vec3<bool>(var_3.x, var_3.x, true), vec3<bool>(var_3.x && var_3.x, var_3.x, any(vec3<bool>(var_3.x, true, var_3.x))))), !(!vec3<bool>(var_3.x, true, !var_3.x)), vec3<bool>(var_3.x, -(~var_4) != ~arg_2.a, true));
}

fn func_5(arg_0: i32, arg_1: vec3<bool>, arg_2: u32) -> Struct_1 {
    return Struct_1(abs(1i), global2.b);
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(1u, 30u)];
    var var_1 = func_5(_wgslsmith_clamp_i32(u_input.b, -50141i, select(-41080i, (global2.a << (var_0.b.x % 32u)) << (global2.b.x % 32u), any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false))))), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), true), !func_4(vec3<i32>(u_input.b, -15313i, 0i), vec2<u32>(u_input.a, global2.b.x), global1[_wgslsmith_index_u32(global2.b.x, 30u)], func_2(arg_0, arg_0, Struct_1(global2.a, var_0.b), arg_0))), ~max(global0[_wgslsmith_index_u32(global2.b.x, 14u)] << (1u % 32u), 1u));
    let var_2 = _wgslsmith_f_op_f32(select(arg_0, arg_0, any(func_4(-vec3<i32>(-20795i, global2.a, 0i), ~(~u_input.c.xy), func_5(_wgslsmith_mult_i32(2147483647i, u_input.b), vec3<bool>(true, true, true), var_0.b.x), Struct_1(var_1.a, ~var_1.b)))));
    var var_3 = -1000f;
    var_1 = func_2(-1219f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2))))), func_5(abs(_wgslsmith_mod_i32(u_input.b, 36467i) << (30666u % 32u)), vec3<bool>(select(any(vec4<bool>(false, true, false, true)), all(vec3<bool>(false, true, false)), true), any(vec2<bool>(false, false)), true), ~0u), _wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1684f, var_2) + 156f)));
    return Struct_1(-1i, ~min(vec4<u32>(4294967295u, 4294967295u, var_0.b.x, var_0.b.x), vec4<u32>(61209u, 0u, global2.b.x, 29002u)) >> (~abs(~global2.b) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-472f, -804f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1284f)), -1046f)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(958f, -1439f, -700f, -642f), vec4<f32>(1214f, 664f, -1023f, 943f))), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2115f), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f))), -1000f));
    let var_2 = global1[_wgslsmith_index_u32(~u_input.a, 30u)];
    global0 = array<u32, 14>();
    let var_3 = Struct_1(var_0.a, max(func_5(var_2.a, select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), 0u ^ global2.b.x).b ^ vec4<u32>(1u, countOneBits(4875u), select(var_2.b.x, 4294967295u, false), 0u), func_2(2355f, 813f, func_1(_wgslsmith_div_f32(var_1.x, var_1.x)), _wgslsmith_f_op_f32(-var_1.x)).b));
    let var_4 = ~abs(var_3.b.wzz);
    let var_5 = global1[_wgslsmith_index_u32(firstTrailingBit(global2.b.x), 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) + var_1.x))) * 178f), u_input.a, ~max(vec2<i32>(var_5.a, global3[_wgslsmith_index_u32(var_3.b.x, 27u)]) << (u_input.c.xz % vec2<u32>(32u)), vec2<i32>(0i, var_5.a) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), global2.b.ww) % vec2<u32>(32u))), vec4<i32>(-34815i, _wgslsmith_sub_i32(~0i, var_2.a), 1788i, var_2.a), i32(-1i) * -1i);
}

