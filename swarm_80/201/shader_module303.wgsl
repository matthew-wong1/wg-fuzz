struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_1,
    d: vec4<i32>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 8> = array<vec4<bool>, 8>(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true));

var<private> global1: bool = false;

var<private> global2: array<i32, 32> = array<i32, 32>(-5895i, i32(-2147483648), -1i, 38540i, -8777i, 0i, 1i, -30181i, -24064i, 47051i, -1i, -1i, 1i, 2147483647i, -10078i, 8028i, -2283i, -45222i, 53868i, 0i, 13009i, 0i, 30613i, -42923i, -11297i, -58179i, -7537i, 1i, i32(-2147483648), 2147483647i, -6197i, 2147483647i);

var<private> global3: vec3<f32> = vec3<f32>(119f, 151f, -226f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3) -> f32 {
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1399f, global3.x, global3.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, 583f, 289f) - vec3<f32>(global3.x, 265f, -766f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, 982f))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, global3.x, global3.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1308f, 1000f, global3.x) * vec3<f32>(global3.x, global3.x, -1074f)), -1483f < global3.x)), vec3<f32>(1699f, _wgslsmith_f_op_f32(f32(-1f) * -848f), global3.x))));
    var var_0 = ~(firstTrailingBit(select(vec4<i32>(-1i, -60496i, global2[_wgslsmith_index_u32(0u, 32u)], global2[_wgslsmith_index_u32(0u, 32u)]), vec4<i32>(101375i, arg_1.b.x, arg_1.b.x, -18968i), global0[_wgslsmith_index_u32(u_input.a.x, 8u)])) & ~_wgslsmith_sub_vec4_i32(vec4<i32>(1i, global2[_wgslsmith_index_u32(u_input.a.x, 32u)], 51381i, -8947i), vec4<i32>(-2147483647i, arg_1.b.x, -2147483647i, arg_1.b.x))) | vec4<i32>(arg_1.b.x, _wgslsmith_add_i32(reverseBits(firstTrailingBit(2147483647i)), ~_wgslsmith_sub_i32(32372i, arg_1.b.x)), _wgslsmith_mult_i32(2147483647i, -1i >> (u_input.a.x % 32u)), i32(-1i) * -arg_1.b.x);
    let var_1 = Struct_2(all(select(select(select(global0[_wgslsmith_index_u32(19116u, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)], vec4<bool>(arg_0.x, false, false, arg_0.x)), vec4<bool>(arg_1.a.x, false, arg_1.a.x, arg_1.a.x), arg_1.a.x != true), !select(vec4<bool>(arg_1.a.x, arg_1.a.x, arg_0.x, true), global0[_wgslsmith_index_u32(24074u, 8u)], vec4<bool>(arg_1.a.x, true, true, true)), select(arg_1.a.x || true, any(vec2<bool>(false, true)), global3.x >= global3.x))), reverseBits(_wgslsmith_dot_vec3_i32(select(var_0.zxx, vec3<i32>(-1i, var_0.x, -1i), false), vec3<i32>(-13799i, 2147483647i, global2[_wgslsmith_index_u32(55126u | u_input.a.x, 32u)]))));
    var var_2 = ~(~reverseBits(u_input.a.x));
    var var_3 = vec3<u32>(~(~(~(~1u))), u_input.a.x, ~1u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1262f * -211f) + global3.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1386f * 345f) * global3.x))));
}

fn func_2() -> vec3<f32> {
    global3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<bool>(false, true), Struct_3(vec2<bool>(true, true), vec2<i32>(-36231i, global2[_wgslsmith_index_u32(u_input.a.x, 32u)]))))))), _wgslsmith_f_op_f32(round(415f)), _wgslsmith_f_op_f32(-global3.x)));
    global0 = array<vec4<bool>, 8>();
    var var_0 = ~_wgslsmith_dot_vec4_u32((vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 67983u) & vec4<u32>(u_input.a.x, 1u, 4294967295u, u_input.a.x)) & ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), min(select(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 3085u, 1u), global0[_wgslsmith_index_u32(4294967295u, 8u)]), vec4<u32>(25451u, 4294967295u, 1u, u_input.a.x) << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 70184u) % vec4<u32>(32u)))) | abs(~firstLeadingBit(_wgslsmith_div_u32(0u, 30854u)));
    global2 = array<i32, 32>();
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(427f, -371f, global3.x)))))));
    return vec3<f32>(236f, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))));
}

fn func_1(arg_0: bool, arg_1: bool) -> Struct_4 {
    let var_0 = reverseBits(5212i);
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2())))) + vec3<f32>(1103f, _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(global3.x - global3.x)), global3.x)));
    global3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, _wgslsmith_f_op_f32(global3.x + global3.x), _wgslsmith_f_op_f32(global3.x + -1730f)))), vec3<f32>(_wgslsmith_f_op_f32(-global3.x), -199f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1825f))), -117f))));
    let var_1 = Struct_3(select(vec2<bool>(true, true), !select(vec2<bool>(true, arg_0), select(vec2<bool>(true, false), vec2<bool>(arg_0, arg_0), true), !arg_0), false), select(max(vec2<i32>(var_0, var_0) | ~vec2<i32>(global2[_wgslsmith_index_u32(0u, 32u)], 22690i), vec2<i32>(~var_0, var_0)), vec2<i32>(~global2[_wgslsmith_index_u32(31522u, 32u)] << (~u_input.a.x % 32u), select(_wgslsmith_dot_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 32u)], var_0), vec2<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 32u)], var_0)), var_0, arg_0 && false)), -_wgslsmith_dot_vec2_i32(vec2<i32>(var_0, 2147483647i), vec2<i32>(29876i, 2147483647i)) >= ~1i));
    global0 = array<vec4<bool>, 8>();
    return Struct_4(!global0[_wgslsmith_index_u32(~(~abs(0u)), 8u)], var_1, Struct_2(!any(vec3<bool>(var_1.a.x, arg_1, true)), 2147483647i), Struct_2(all(select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(false, arg_1, true), var_1.a.x)) | all(vec3<bool>(false, arg_1, false)), _wgslsmith_dot_vec3_i32(vec3<i32>(-global2[_wgslsmith_index_u32(u_input.a.x, 32u)], firstLeadingBit(-38870i), min(global2[_wgslsmith_index_u32(u_input.a.x, 32u)], var_0)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0, global2[_wgslsmith_index_u32(1u, 32u)], var_1.b.x), vec3<i32>(var_1.b.x, 1870i, var_1.b.x), vec3<i32>(38024i, 30902i, 27105i)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 8>();
    let var_0 = ~vec4<i32>(global2[_wgslsmith_index_u32(~0u, 32u)], ~_wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(u_input.a.x, 32u)], -40833i, 4899i), ~vec4<i32>(66252i, -22732i, global2[_wgslsmith_index_u32(3989u, 32u)], 1i)), 1i, -44727i);
    var var_1 = func_1(any(vec2<bool>(true, true)), true);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, -1385f, global3.x) - vec3<f32>(global3.x, -524f, 1369f)), vec3<f32>(621f, 233f, global3.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, -1000f, global3.x)))) + vec3<f32>(_wgslsmith_f_op_vec3_f32(func_2()).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -493f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(769f, 300f), _wgslsmith_f_op_f32(-561f - global3.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x);
}

