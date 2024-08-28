struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<bool, 20> = array<bool, 20>(false, false, true, true, false, false, false, true, false, true, true, false, false, true, false, false, false, false, true, false);

var<private> global2: Struct_1 = Struct_1(vec4<i32>(2147483647i, -1i, 17063i, 1i), vec4<bool>(false, false, true, true));

var<private> global3: array<vec2<f32>, 24> = array<vec2<f32>, 24>(vec2<f32>(-1000f, 1420f), vec2<f32>(-1394f, 1000f), vec2<f32>(-957f, -815f), vec2<f32>(1517f, -777f), vec2<f32>(-113f, -363f), vec2<f32>(1000f, -1090f), vec2<f32>(361f, 836f), vec2<f32>(557f, -1310f), vec2<f32>(-659f, -986f), vec2<f32>(667f, -565f), vec2<f32>(-1087f, 625f), vec2<f32>(1435f, 1828f), vec2<f32>(-131f, -146f), vec2<f32>(185f, 793f), vec2<f32>(-281f, 1365f), vec2<f32>(1110f, 1368f), vec2<f32>(241f, -1466f), vec2<f32>(1519f, -1323f), vec2<f32>(1410f, 1000f), vec2<f32>(1000f, 507f), vec2<f32>(1232f, 1746f), vec2<f32>(-903f, 450f), vec2<f32>(-147f, 1686f), vec2<f32>(350f, -323f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<u32>) -> f32 {
    global3 = array<vec2<f32>, 24>();
    global2 = Struct_1(reverseBits(_wgslsmith_clamp_vec4_i32(global2.a, _wgslsmith_clamp_vec4_i32(abs(global2.a), u_input.c, min(vec4<i32>(-40446i, global2.a.x, -37348i, global2.a.x), vec4<i32>(5737i, u_input.c.x, global2.a.x, -27272i))), ~countOneBits(vec4<i32>(0i, global2.a.x, 28893i, u_input.c.x)))), vec4<bool>(true, any(select(select(vec3<bool>(false, global2.b.x, global2.b.x), arg_0.xxy, arg_0.x), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), global2.b.x), !arg_0.x)), !(_wgslsmith_f_op_f32(sign(1981f)) < -926f), global1[_wgslsmith_index_u32(abs(~33700u), 20u)]));
    var var_0 = firstLeadingBit(_wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(u_input.a.zyx, vec3<u32>(u_input.d.x, u_input.b, 4294967295u)) | _wgslsmith_div_vec3_u32(~vec3<u32>(21687u, 0u, u_input.d.x), ~vec3<u32>(u_input.b, 1u, u_input.b)), u_input.d));
    var var_1 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1585f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -124f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1951f), _wgslsmith_f_op_f32(-1745f - -462f))));
    var var_2 = vec4<bool>(global2.b.x, !(max(abs(u_input.a.x), ~arg_1.x) > 0u), any(select(select(arg_0.xx, arg_0.yy, global2.b.xx), !global2.b.wz, true)), arg_0.x);
    return -894f;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = -25027i;
    var var_1 = -u_input.c.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -648f), -222f)), 1f, -1000f, _wgslsmith_f_op_f32(func_3(select(global2.b, select(arg_0.b, arg_0.b, arg_0.b), true), min(vec3<u32>(u_input.b, u_input.b, u_input.d.x), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.d.x, 0u), vec3<u32>(u_input.b, u_input.a.x, 1u)))))));
    return arg_0;
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(Struct_1(-u_input.c, !(!vec4<bool>(true, true, true, global2.b.x))));
    global2 = func_2(Struct_1(vec4<i32>(24545i, 1i, i32(-1i) * -24073i, u_input.c.x) ^ u_input.c, !vec4<bool>(!global1[_wgslsmith_index_u32(0u, 20u)], false, true, global1[_wgslsmith_index_u32(u_input.a.x, 20u)])));
    global1 = array<bool, 20>();
    let var_1 = ~(~(~u_input.a.x));
    global0 = u_input.d.x;
    return Struct_1(firstTrailingBit(var_0.a), var_0.b);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global3[_wgslsmith_index_u32(u_input.b, 24u)])) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-989f, 1000f))), vec2<f32>(-333f, -233f)))) * vec2<f32>(1068f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-787f))))), vec3<i32>(2147483647i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(787i, arg_0.a.x, global2.a.x) << (u_input.d % vec3<u32>(32u)), vec3<i32>(-1i, -19684i, -2116i) ^ vec3<i32>(arg_1.x, -1i, 1i)), -(~36503i), u_input.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 643f, -970f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(461f, 931f, 785f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(644f, 289f, -750f) + vec3<f32>(489f, 938f, 1562f)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(272f, 795f, 778f)))))), func_1(), arg_0);
    var var_1 = vec2<f32>(var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -176f))));
    let var_2 = vec3<bool>(false, true, _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-1000f - var_0.a.x)) >= 1444f);
    var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -924f) * var_0.a.x), 258f), _wgslsmith_f_op_vec2_f32(var_0.c.zy - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-208f - -1000f), _wgslsmith_f_op_f32(f32(-1f) * -946f)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_0.c.zx))), all(!var_2.xz)))), !var_2.zy));
    var var_3 = Struct_2(var_0.c.yx, vec3<i32>(-1i) * -vec3<i32>(~arg_1.x, abs(arg_1.x), _wgslsmith_mod_i32(global2.a.x, u_input.c.x)), var_0.c, Struct_1(-(-vec4<i32>(2147483647i, arg_0.a.x, -73066i, -2147483647i) & (vec4<i32>(-9337i, 11563i, 1i, -18750i) ^ u_input.c)), !var_0.d.b), func_2(func_2(func_1())));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 20>();
    global2 = Struct_1(vec4<i32>(-2147483647i, u_input.c.x, max(_wgslsmith_mod_i32(global2.a.x, reverseBits(1i)), max(u_input.c.x, -25384i) << (26313u % 32u)), u_input.c.x), !vec4<bool>(!(u_input.d.x > u_input.b), any(vec2<bool>(true, true)), global1[_wgslsmith_index_u32(~5906u, 20u)], global1[_wgslsmith_index_u32(u_input.b, 20u)]));
    var var_0 = _wgslsmith_mult_u32(~_wgslsmith_mult_u32(1u, u_input.b), ~_wgslsmith_div_u32(34133u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 0u), u_input.a.zz)) | 11636u);
    var var_1 = reverseBits(_wgslsmith_dot_vec3_i32(global2.a.yxx, vec3<i32>(u_input.c.x, -82336i, 1i))) << (~_wgslsmith_mod_u32(~_wgslsmith_add_u32(u_input.d.x, u_input.b), _wgslsmith_dot_vec2_u32(u_input.d.yz, u_input.a.xw) | u_input.a.x) % 32u);
    var var_2 = abs(22742i);
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-483f - 1387f), _wgslsmith_f_op_f32(f32(-1f) * -363f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(60153u, 0u, u_input.d.x), u_input.a.wxx), 24u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(1192f, -351f)), vec2<bool>(true, false))) * global3[_wgslsmith_index_u32(~1u, 24u)])), _wgslsmith_mult_vec3_i32(~(~_wgslsmith_div_vec3_i32(vec3<i32>(global2.a.x, -101048i, -1i), vec3<i32>(global2.a.x, u_input.c.x, u_input.c.x))), vec3<i32>(-1i) * -firstLeadingBit(vec3<i32>(0i, 1i, 38796i))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(select(203f, _wgslsmith_f_op_f32(-829f - 1128f), select(false, true, global1[_wgslsmith_index_u32(18476u, 20u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1261f * -144f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-297f - 948f) - 795f)))), func_4(func_1(), select(func_2(Struct_1(global2.a, global2.b)).a, min(u_input.c, u_input.c), false) >> (vec4<u32>(~0u, ~u_input.a.x, 35977u, ~u_input.a.x) % vec4<u32>(32u))), Struct_1(vec4<i32>(13937i, func_4(Struct_1(vec4<i32>(-1i, 1i, -2147483647i, u_input.c.x), global2.b), -vec4<i32>(u_input.c.x, global2.a.x, -4269i, -26250i)).a.x, _wgslsmith_mult_i32(-global2.a.x, u_input.c.x | 24631i), 0i), global2.b));
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(vec4<i32>(0i, global2.a.x, 39534i, 40004i)) ^ global2.a, vec4<i32>(-1i) * -var_3.d.a, global2.b));
}

