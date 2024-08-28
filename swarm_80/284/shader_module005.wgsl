struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<f32>(354f, -107f, -991f, -772f), Struct_1(4294967295u, 1i, vec3<f32>(292f, 845f, 199f), -625f));

var<private> global1: Struct_4;

var<private> global2: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(-48489i), Struct_3(-10967i), Struct_3(-1i), Struct_3(-10143i), Struct_3(2147483647i), Struct_3(i32(-2147483648)), Struct_3(616i), Struct_3(i32(-2147483648)), Struct_3(i32(-2147483648)), Struct_3(-23524i), Struct_3(-9684i), Struct_3(i32(-2147483648)), Struct_3(-1i), Struct_3(1i), Struct_3(-1i), Struct_3(37994i), Struct_3(774i), Struct_3(2147483647i), Struct_3(-13271i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.b + vec4<f32>(global0.a.x, global1.e.b.d, -878f, global0.a.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.a.x, 398f, global1.b.x, 3283f))))))), Struct_1(_wgslsmith_add_u32(~global1.e.b.a, _wgslsmith_dot_vec2_u32(global1.c, global1.c)) & 32176u, 1i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.e.a.x, global0.b.d, 440f), global1.e.b.c, true)))), -1752f));
    var var_1 = Struct_4(global0.a.zxx, vec4<f32>(1126f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1366f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-1663f)), var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, var_0.a.x))))), vec2<u32>(0u ^ ~(global0.b.a | 4294967295u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.c.x, 2978u, 31907u, global0.b.a), ~vec4<u32>(12566u, var_0.b.a, 85713u, global1.e.b.a))), global1.d, Struct_2(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(global1.a.x, var_0.b.d)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1720f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - _wgslsmith_f_op_f32(ceil(global1.b.x))), _wgslsmith_f_op_f32(abs(1000f))), Struct_1(_wgslsmith_div_u32(global0.b.a, firstLeadingBit(global0.b.a)), -firstLeadingBit(-14469i), _wgslsmith_f_op_vec3_f32(-var_0.a.yzx), 275f)));
    var_0 = global1.e;
    global2 = array<Struct_3, 19>();
    var var_2 = var_0.b.c;
    return !vec3<bool>(false, true & !(2147483647i > var_0.b.b), false);
}

fn func_2() -> Struct_1 {
    let var_0 = select(select(func_3(), vec3<bool>(true, select(all(vec3<bool>(false, true, true)), func_3().x, true), true), !select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), select(func_3(), vec3<bool>(true, true, true), true), vec3<bool>(!all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), !all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false))), !(!(global0.a.x >= global1.a.x))));
    global1 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.b.d), global1.e.a.x, !var_0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.b.x))), var_0.x)), -541f, global1.e.a.x), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1110f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), -207f, global0.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(global1.e.a, vec4<f32>(global1.b.x, global0.b.d, global1.a.x, global0.a.x)))) * global1.e.a))), global1.c, -(min(global1.d, global1.d) << (~vec3<u32>(global1.e.b.a, 53318u, 0u) % vec3<u32>(32u))), Struct_2(vec4<f32>(global1.b.x, _wgslsmith_f_op_f32(max(-351f, _wgslsmith_f_op_f32(477f * -301f))), global0.b.c.x, -872f), global0.b));
    let var_1 = 2147483647i;
    var var_2 = global0.b;
    var var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.e.b.c - var_2.c) * global1.b.xyx)))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(897f)), _wgslsmith_f_op_f32(round(var_2.d)))), 998f, global1.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global1.e.b.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1257f - var_2.d))))), _wgslsmith_sub_vec2_u32(vec2<u32>(global0.b.a, min(global0.b.a, 59417u)), _wgslsmith_add_vec2_u32(global1.c, select(vec2<u32>(global0.b.a, global0.b.a), global1.c, var_0.x)) | min(_wgslsmith_add_vec2_u32(vec2<u32>(0u, var_2.a), global1.c), max(global1.c, global1.c))), vec3<i32>(0i, global0.b.b, (global1.d.x & (global1.d.x | 609i)) >> (_wgslsmith_sub_u32(1u, var_2.a) % 32u)), global1.e);
    return global0.b;
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-551f * global1.a.x))), _wgslsmith_f_op_f32(ceil(global1.a.x)), global0.a.x, _wgslsmith_f_op_f32(abs(-198f))), func_2());
    var var_1 = var_0;
    let var_2 = Struct_3(_wgslsmith_mult_i32(1i, global1.d.x));
    let var_3 = Struct_3(~_wgslsmith_sub_i32(~select(global1.e.b.b, var_0.b.b, true), -9434i ^ global0.b.b));
    global1 = Struct_4(global1.e.a.www, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a)), vec2<u32>(8261u, abs(1u)), -max(vec3<i32>(_wgslsmith_mult_i32(var_0.b.b, u_input.a), max(2574i, var_3.a), 2147483647i), ~(-vec3<i32>(-2147483647i, global1.d.x, 28907i))), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(global0.a + vec4<f32>(-361f, -1009f, 1180f, -1000f)), _wgslsmith_f_op_vec4_f32(max(global0.a, vec4<f32>(-855f, var_0.b.c.x, var_1.b.d, 1336f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, 672f, 349f, 467f)))), Struct_1(global1.c.x, ~(-var_1.b.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.b.d, 355f, -779f), global0.b.c) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-110f, -421f, 1127f)))), _wgslsmith_f_op_f32(min(-301f, -226f)))));
    return Struct_4(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b.d, _wgslsmith_f_op_f32(ceil(global0.a.x)), 677f), var_1.b.c, true)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-func_2().c.x), -446f, _wgslsmith_f_op_f32(max(global1.a.x, global0.a.x)), 1562f))), global1.c, vec3<i32>(~(-(22826i | var_0.b.b)), -2147483647i, _wgslsmith_div_i32(1i, global1.e.b.b)), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0.a, _wgslsmith_f_op_vec4_f32(var_0.a + global0.a)) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(var_0.a)), _wgslsmith_f_op_vec4_f32(global1.b * vec4<f32>(-1054f, var_1.a.x, var_1.b.c.x, 448f))))), var_1.b));
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: vec4<f32>, arg_3: Struct_2) -> i32 {
    let var_0 = arg_3.b.b;
    var var_1 = ~arg_1.e.b.a;
    return -((countOneBits(max(arg_3.b.b, global0.b.b)) | 2147483647i) << ((_wgslsmith_add_u32(0u, global1.c.x) ^ ~_wgslsmith_div_u32(5072u, 37258u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_i32(_wgslsmith_mult_i32(global0.b.b, countOneBits(_wgslsmith_sub_i32(~global1.e.b.b, -2147483647i ^ u_input.a))), ~(-1i));
    let var_1 = ~((reverseBits(vec4<u32>(4692u, 13228u, global1.e.b.a, global0.b.a)) ^ reverseBits(vec4<u32>(0u, global1.e.b.a, 49571u, global1.c.x) & vec4<u32>(global1.c.x, global1.c.x, global1.e.b.a, global0.b.a))) | ~(vec4<u32>(20433u, global0.b.a, 39713u, global0.b.a) | vec4<u32>(11020u, global0.b.a, global0.b.a, 0u)));
    global2 = array<Struct_3, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(select(func_4(true, func_1(), vec4<f32>(_wgslsmith_div_f32(global1.b.x, -1102f), -431f, 1131f, -1179f), global1.e), firstLeadingBit(_wgslsmith_mult_i32(abs(global1.d.x), i32(-1i) * -1i)), all(vec4<bool>(true, true, true, true))), vec2<i32>(global1.d.x, ~firstTrailingBit(-1i)), ~global0.b.a, _wgslsmith_sub_vec3_i32(~vec3<i32>(_wgslsmith_mult_i32(1i, -2147483647i), -27850i, -28096i), func_1().d), ~(vec2<u32>(global0.b.a, global1.c.x << (var_1.x % 32u)) | (vec2<u32>(4294967295u, global1.c.x) & _wgslsmith_add_vec2_u32(vec2<u32>(global1.c.x, 4294967295u), global1.c))));
}

