struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<f32> = vec4<f32>(1572f, 345f, -640f, -145f);

var<private> global2: array<vec4<bool>, 10> = array<vec4<bool>, 10>(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: bool) -> f32 {
    var var_0 = -(abs(min(vec4<i32>(1i, u_input.e, arg_2.b, -55411i) ^ vec4<i32>(u_input.e, 0i, arg_2.b, arg_2.b), _wgslsmith_sub_vec4_i32(vec4<i32>(-14517i, u_input.e, u_input.c, 19504i), vec4<i32>(-51101i, arg_2.b, 1i, arg_2.b)))) >> (u_input.a % vec4<u32>(32u)));
    let var_1 = ~vec4<u32>(_wgslsmith_add_u32(0u, countOneBits(5575u)), arg_1.x, 0u, 72304u);
    var var_2 = select(~min(~countOneBits(vec3<u32>(0u, arg_1.x, var_1.x)), u_input.a.zxx), select(_wgslsmith_mult_vec3_u32(~abs(u_input.a.yyx), min(var_1.zww ^ vec3<u32>(53761u, 86880u, 20031u), ~u_input.a.wzy)), vec3<u32>(~var_1.x, countOneBits(u_input.b), ~82038u) & ~firstTrailingBit(u_input.a.xxx), any(!select(vec2<bool>(arg_2.a, false), vec2<bool>(true, arg_2.a), arg_3))), all(!vec4<bool>(arg_3, arg_2.a, true, all(vec3<bool>(arg_3, false, arg_3)))));
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(trunc(global1.x)), _wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(trunc(global1.x))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -156f, 1516f, global1.x)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.x, 1000f, -474f, -894f)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 756f, 174f, 955f)), vec4<f32>(_wgslsmith_f_op_f32(abs(-363f)), _wgslsmith_f_op_f32(trunc(-528f)), _wgslsmith_f_op_f32(-global1.x), 1171f), arg_2.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.x, global1.x, 1042f, 411f))))))) + vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1208f))), _wgslsmith_f_op_f32(105f + global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-503f, 1535f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(982f * global1.x), -439f)))));
    return -685f;
}

fn func_2() -> u32 {
    global2 = array<vec4<bool>, 10>();
    global0 = -2147483647i;
    var var_0 = Struct_1(true, _wgslsmith_dot_vec3_i32(~(~vec3<i32>(44930i, -1i, -2147483647i)), ~(-(vec3<i32>(u_input.c, u_input.c, 1i) & vec3<i32>(u_input.c, u_input.e, u_input.e)))));
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-125f, global1.x, -640f, global1.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(919f, global1.x, -1564f, global1.x)))))), 1i, Struct_2(vec2<u32>(u_input.a.x, _wgslsmith_mult_u32(u_input.d.x, u_input.d.x ^ u_input.b)), Struct_1(var_0.a, _wgslsmith_sub_i32(-21648i, var_0.b) >> (_wgslsmith_clamp_u32(u_input.a.x, 5706u, u_input.a.x) % 32u)), var_0.b));
    var var_2 = _wgslsmith_f_op_f32(2323f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(!var_0.a, var_1.c.a, var_1.c.b, any(vec3<bool>(var_0.a, false, var_0.a)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-548f)))) - _wgslsmith_f_op_f32(f32(-1f) * -389f)));
    return 1u;
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = vec4<u32>(16099u, 1u, 55435u, ~1u);
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-589f, arg_0)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(353f - arg_0), _wgslsmith_f_op_f32(min(-371f, -1000f)))))), 305f));
    let var_2 = ~vec3<u32>(select(0u, func_2(), (u_input.c > u_input.e) && true), var_0.x, ~_wgslsmith_dot_vec2_u32(~var_0.xy, ~vec2<u32>(var_0.x, var_0.x)));
    var var_3 = all(!(!select(vec4<bool>(true, false, true, false), global2[_wgslsmith_index_u32(u_input.b, 10u)], global2[_wgslsmith_index_u32(4294967295u, 10u)]))) | all(!vec2<bool>(true, select(false, false, true)));
    let var_4 = vec4<i32>(-45985i, ~(~(-u_input.e >> ((83488u << (var_2.x % 32u)) % 32u))), abs(-u_input.e), u_input.c);
    return _wgslsmith_dot_vec2_u32(~var_0.zw, var_2.xx);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: u32) -> f32 {
    var var_0 = ~vec2<i32>(_wgslsmith_dot_vec4_i32(~countOneBits(vec4<i32>(u_input.e, -2147483647i, -2147483647i, 2147483647i)), vec4<i32>(u_input.c, u_input.c | -13973i, firstLeadingBit(5182i), firstLeadingBit(-1i))), ~15392i);
    let var_1 = vec3<i32>(~(~(i32(-1i) * -9692i)), -abs(min(var_0.x, var_0.x)), -2147483647i) >> (u_input.a.xxw % vec3<u32>(32u));
    let var_2 = vec4<i32>(-1i, var_1.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(1i, u_input.c, 46492i, 0i), ~vec4<i32>(u_input.e, -2147483647i, -30365i, 1i)), ~(~vec4<i32>(u_input.c, -2147483647i, var_1.x, 37364i))), _wgslsmith_sub_i32(~reverseBits(73837i), 0i)) | abs(-vec4<i32>(-var_1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, var_0.x), vec2<i32>(u_input.e, u_input.c)), -2147483647i >> (u_input.a.x % 32u), firstTrailingBit(var_1.x)));
    var var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1515f, arg_0.x)), arg_0.zz), _wgslsmith_div_vec2_f32(arg_1.xw, vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(310f * 908f))))));
    var var_4 = Struct_1(any(select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, false)), vec2<bool>(200f < arg_0.x, true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, false)))), 5097i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)) + _wgslsmith_f_op_f32(exp2(var_3.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x), global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) - vec3<f32>(811f, global1.x, 1167f)) - _wgslsmith_f_op_vec3_f32(global1.xxw + vec3<f32>(307f, -577f, global1.x))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -878f), _wgslsmith_f_op_f32(f32(-1f) * -1710f), _wgslsmith_f_op_f32(global1.x + -475f), _wgslsmith_f_op_f32(global1.x * 1169f)), func_1(global1.x) >> (_wgslsmith_mult_u32(1u, 51462u) % 32u))) + _wgslsmith_f_op_f32(global1.x + global1.x)));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-552f - -367f), _wgslsmith_f_op_f32(145f - 787f), 1476f, 918f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(323f, 748f, global1.x, global1.x) * vec4<f32>(global1.x, global1.x, 1816f, global1.x)))))));
    global0 = u_input.e;
    let var_0 = _wgslsmith_f_op_f32(-global1.x);
    let var_1 = -countOneBits(u_input.e);
    global0 = var_1;
    var var_2 = ~(u_input.a & select(~select(u_input.a, u_input.a, vec4<bool>(false, false, true, true)), ~(u_input.a >> (vec4<u32>(1u, 13231u, u_input.b, u_input.b) % vec4<u32>(32u))), any(vec4<bool>(false, false, true, true)) && true));
    let var_3 = max(~vec4<u32>(87238u, countOneBits(~72612u), u_input.a.x, ~(~59675u)), _wgslsmith_mult_vec4_u32(countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_2.x, u_input.d.x, 34864u), firstLeadingBit(vec4<u32>(var_2.x, 0u, u_input.a.x, u_input.b)))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(45526u, 15864u, 0u, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_2.x, var_2.x, var_2.x), u_input.a), vec4<u32>(53664u, 56249u, 26479u, var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.wx)), reverseBits(var_3.x), 73562i);
}

