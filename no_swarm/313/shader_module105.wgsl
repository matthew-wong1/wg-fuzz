struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec2<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_3) -> f32 {
    global1 = -(~_wgslsmith_dot_vec4_i32(global0.c, vec4<i32>(-2147483647i, arg_2.d.d.c.x, 0i >> (global0.a.x % 32u), ~arg_2.c.c.x)));
    let var_0 = Struct_1(global0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(arg_2.d.c.b, vec4<f32>(arg_2.c.d.x, -1093f, global0.d.x, global0.d.x))) + vec4<f32>(_wgslsmith_f_op_f32(-1955f - global0.d.x), _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(round(arg_2.d.d.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -911f)))), global0.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(933f, 530f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(arg_2.c.b.zz)) - vec2<f32>(-921f, -157f))), abs(~u_input.c.zy << (abs(global0.e) % vec2<u32>(32u))) | _wgslsmith_clamp_vec2_u32(min(_wgslsmith_add_vec2_u32(global0.a.zz, u_input.b.xy), u_input.b.zy), vec2<u32>(1u << (u_input.c.x % 32u), u_input.c.x & arg_2.d.b.x), _wgslsmith_div_vec2_u32(arg_2.c.e, u_input.b.zy)));
    let var_1 = arg_2.d.d.e;
    let var_2 = firstLeadingBit(max(_wgslsmith_mult_vec3_i32(arg_1, vec3<i32>(i32(-1i) * -2147483647i, 24912i, -arg_0)), vec3<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(-14901i, -1i, arg_2.c.c.x), ~vec3<i32>(var_0.c.x, global0.c.x, 19363i)), arg_0, -1i >> (var_1.x % 32u))));
    let var_3 = _wgslsmith_f_op_vec3_f32(ceil(arg_2.c.b.wzz));
    return _wgslsmith_f_op_f32(trunc(1332f));
}

fn func_3(arg_0: u32) -> u32 {
    global1 = countOneBits(abs(u_input.a));
    var var_0 = select(u_input.a, _wgslsmith_mult_i32(51383i, _wgslsmith_sub_i32(_wgslsmith_add_i32(-1i, global0.c.x), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(global0.c.x, u_input.a)), -global0.c.yw))), !any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), true), all(vec2<bool>(true, true)))));
    let var_1 = Struct_3(_wgslsmith_sub_u32(0u, ~u_input.b.x), !select(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), true), Struct_1(global0.a, global0.b, global0.c, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(global0.d, _wgslsmith_div_vec2_f32(vec2<f32>(-271f, -1142f), vec2<f32>(global0.d.x, -4660f)))), vec2<f32>(global0.d.x, _wgslsmith_f_op_f32(select(global0.b.x, global0.b.x, false))), vec2<bool>(true, true))), abs(~(~vec2<u32>(u_input.b.x, 4294967295u)))), Struct_2(global0.b.wz, global0.e, Struct_1(u_input.c, global0.b, -abs(global0.c), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d.x, -1653f)))), ~firstTrailingBit(u_input.b.zx)), Struct_1(abs(countOneBits(u_input.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.x, global0.b.x, 2222f, -1862f)), -(vec4<i32>(2147483647i, global0.c.x, u_input.a, u_input.a) | vec4<i32>(global0.c.x, -155i, global0.c.x, 29428i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(627f, global0.d.x)), min(global0.e | vec2<u32>(59684u, 4294967295u), max(vec2<u32>(4294967295u, 68252u), global0.e)))));
    global1 = -var_1.d.c.c.x;
    var var_2 = global0.b.x;
    return 1u;
}

fn func_1() -> Struct_1 {
    let var_0 = -global0.c.zz;
    let var_1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(global0.b.x - -1420f), _wgslsmith_f_op_f32(min(global0.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1756f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(u_input.a, global0.c.wyw, Struct_3(37830u, vec2<bool>(false, false), Struct_1(global0.a, global0.b, vec4<i32>(1i, 2147483647i, global0.c.x, -1i), global0.d, vec2<u32>(59065u, 1u)), Struct_2(vec2<f32>(1058f, -446f), u_input.b.zx, Struct_1(u_input.c, global0.b, vec4<i32>(-31464i, -10152i, global0.c.x, -636i), vec2<f32>(global0.d.x, 1830f), u_input.c.xx), Struct_1(vec3<u32>(25137u, u_input.b.x, u_input.c.x), vec4<f32>(global0.d.x, -755f, global0.d.x, -1079f), vec4<i32>(-21660i, 2147483647i, 0i, var_0.x), global0.b.wz, u_input.b.zz))))))), global0.d.x), _wgslsmith_f_op_f32(f32(-1f) * -181f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.b * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.x, global0.d.x, -202f, 1317f)))) - _wgslsmith_f_op_vec4_f32(global0.b + vec4<f32>(-502f, _wgslsmith_f_op_f32(-global0.d.x), global0.b.x, global0.b.x)))));
    global1 = u_input.a;
    var var_2 = true;
    global1 = var_0.x;
    return Struct_1(vec3<u32>(func_3(firstTrailingBit(_wgslsmith_sub_u32(u_input.c.x, 1u))), global0.e.x, global0.a.x), vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-271f * -842f)), _wgslsmith_div_f32(global0.d.x, 1058f), -1000f), global0.c | _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(global0.c, countOneBits(vec4<i32>(global0.c.x, var_0.x, global0.c.x, -31114i))), _wgslsmith_sub_vec4_i32(min(global0.c, vec4<i32>(-20156i, -1i, 44950i, global0.c.x)), vec4<i32>(17309i, 38648i, -2147483647i, -44746i) >> (vec4<u32>(global0.a.x, 11305u, u_input.c.x, 0u) % vec4<u32>(32u))), global0.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d.x, global0.d.x) - global0.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 1198f))), all(vec2<bool>(true, true))))), _wgslsmith_clamp_vec2_u32(~abs(u_input.c.yy), abs(_wgslsmith_add_vec2_u32(countOneBits(u_input.b.xz), vec2<u32>(u_input.c.x, u_input.c.x))), ~select(~vec2<u32>(4294967295u, 4294967295u), _wgslsmith_add_vec2_u32(vec2<u32>(global0.e.x, global0.a.x), u_input.b.xy), all(vec3<bool>(true, true, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = Struct_1(~countOneBits(~(~vec3<u32>(global0.a.x, var_0.e.x, global0.e.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-101f, -1299f, -1468f, _wgslsmith_f_op_f32(f32(-1f) * -155f)), global0.b, true))), ~firstTrailingBit(reverseBits(global0.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(global0.b.wz - var_0.d), global0.d))))), _wgslsmith_add_vec2_u32(min(vec2<u32>(global0.e.x, 4294967295u), ~(vec2<u32>(var_0.a.x, 0u) | u_input.b.zx)), abs(_wgslsmith_clamp_vec2_u32(var_0.e ^ global0.a.zx, vec2<u32>(1068u, var_0.e.x) << (u_input.c.xz % vec2<u32>(32u)), var_0.a.zz))));
    global1 = 93072i;
    var var_2 = all(!select(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false)), true));
    var_1 = func_1();
    let var_3 = false;
    let var_4 = global0.c.x ^ func_1().c.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec3<i32>(select(var_4, -29301i, 34203u < var_0.a.x), i32(-1i) * -2147483647i, _wgslsmith_add_i32(_wgslsmith_sub_i32(1550i, global0.c.x), _wgslsmith_clamp_i32(-2147483647i, -2397i, var_1.c.x)))), var_0.c.yx ^ var_0.c.zw, vec2<i32>(49743i, ~((-51338i >> (var_0.a.x % 32u)) | 1i)));
}

