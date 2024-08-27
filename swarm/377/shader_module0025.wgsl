struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19>;

var<private> global1: Struct_1;

var<private> global2: vec4<bool> = vec4<bool>(true, true, true, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    let var_0 = !(!(!select(select(vec3<bool>(false, global1.d, global1.d), global2.yzx, false), global2.xyy, global1.d & true)));
    global2 = vec4<bool>(any(select(!select(global2.xw, global2.wz, var_0.zy), global2.zz, select(!global1.d, true, true))), global1.d, true | all(!select(var_0, global2.yxx, false)), global2.x);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -769f);
    global2 = vec4<bool>(~(1u >> ((global1.a.x | 4294967295u) % 32u)) == u_input.b.x, any(var_0.xy), false, false);
    global1 = Struct_1(min(u_input.a.wy, reverseBits(vec2<u32>(u_input.b.x, u_input.a.x))), ~abs(select(select(vec4<u32>(62749u, 1u, u_input.a.x, 86105u), u_input.a, vec4<bool>(true, true, true, true)), vec4<u32>(global1.e, global1.b.x, global1.b.x, 68978u), global2.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(~_wgslsmith_add_i32(21997i, 0i), -1i, global1.c), -_wgslsmith_sub_vec3_i32(-vec3<i32>(2147483647i, global1.c, global1.c), vec3<i32>(0i, global1.c, -176i) | vec3<i32>(-52919i, global1.c, global1.c))), any(select(select(select(var_0.zz, vec2<bool>(var_0.x, global2.x), global2.x), !global2.zz, vec2<bool>(global2.x, false)), select(vec2<bool>(false, true), select(vec2<bool>(false, true), var_0.zy, vec2<bool>(false, var_0.x)), true), true)), u_input.b.x >> (_wgslsmith_mult_u32(_wgslsmith_sub_u32(~0u, 0u), ~global1.e ^ ~1u) % 32u));
    return false;
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> u32 {
    var var_0 = ~arg_1.a.c;
    var var_1 = func_3();
    let var_2 = ~countOneBits(_wgslsmith_sub_vec4_i32(reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, arg_1.c.x, 2976i, -1i), vec4<i32>(6219i, arg_1.d.x, -3418i, -2147483647i), vec4<i32>(-2147483647i, -1i, global1.c, 0i))), ~vec4<i32>(-10345i, arg_1.d.x, arg_1.d.x, -1i)));
    var_1 = true;
    let var_3 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(abs(-3856i), 2147483647i), var_2.x);
    return 114805u;
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: f32) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(~(~global1.e), countOneBits(1u), countOneBits(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(global1.a.x, 0u, 1u), u_input.a.x)), firstTrailingBit(func_2(0u, Struct_2(Struct_1(vec2<u32>(39232u, 30111u), u_input.a, global1.c, arg_0.x, global1.e), arg_1, vec4<i32>(-38365i, 0i, global1.c, -2147483647i), vec4<i32>(0i, global1.c, -1i, -28120i))))));
    var var_1 = false;
    var var_2 = ~86887u << (~(~u_input.a.x) % 32u);
    global1 = Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(~(~var_0.x), var_0.x), u_input.a.zz), firstTrailingBit(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.a.x, global1.e), _wgslsmith_dot_vec2_u32(u_input.a.xw, u_input.a.yy)), _wgslsmith_dot_vec3_u32(max(vec3<u32>(1u, 0u, global1.b.x), vec3<u32>(11492u, var_0.x, 53537u)), var_0.xxz), max(u_input.a.x, ~var_0.x), _wgslsmith_mult_u32(50435u, ~global1.e))), min(-75928i, ~(-(~global1.c))), false, u_input.a.x);
    var var_3 = arg_2;
    return Struct_1(vec2<u32>(var_0.x, 39283u), vec4<u32>(~0u, u_input.b.x, _wgslsmith_mod_u32(1u, 11679u), _wgslsmith_mult_u32(global1.b.x, global1.e)), _wgslsmith_clamp_i32(~abs(1i), global1.c, global1.c), !(!arg_0.x), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~_wgslsmith_add_i32(countOneBits(global1.c), 0i));
    let var_1 = func_1(vec4<bool>(true, all(!global2.xx), select(select(all(vec4<bool>(global2.x, false, false, global2.x)), any(vec4<bool>(false, false, false, false)), true), false, true), global1.d), 1789f, 1420f);
    let var_2 = _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(~var_1.c, var_1.c, _wgslsmith_add_i32(global1.c, var_1.c))), vec3<i32>(var_1.c, _wgslsmith_dot_vec2_i32(vec2<i32>(-var_0, ~var_1.c), select(_wgslsmith_add_vec2_i32(vec2<i32>(var_0, 20891i), vec2<i32>(0i, 1i)), ~vec2<i32>(-2147483647i, var_0), vec2<bool>(false, var_1.d))), firstTrailingBit(_wgslsmith_div_i32(abs(var_0), var_0))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-112f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1291f, _wgslsmith_f_op_f32(floor(-234f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -953f), _wgslsmith_f_op_f32(select(-1000f, 173f, var_1.d))))))));
    global0 = array<bool, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(~func_1(vec4<bool>(global1.d, var_1.d, global2.x, true), -1000f, -734f).c, global1.c, -2147483647i & -var_1.c), abs(var_1.b.x), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_f32(trunc(-1007f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1801f, _wgslsmith_f_op_f32(f32(-1f) * -830f), !global0[_wgslsmith_index_u32(4294967295u, 19u)]))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-503f, 556f, 2566f), vec3<f32>(-898f, 1873f, 1617f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(268f, 862f, 1547f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1046f, -233f, -100f) - vec3<f32>(455f, 686f, -226f)) * vec3<f32>(-1205f, -1000f, -454f)))));
}

